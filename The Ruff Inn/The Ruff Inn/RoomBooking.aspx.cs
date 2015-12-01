using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace The_Ruff_Inn
{
    public partial class RoomBooking : System.Web.UI.Page
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        private SqlDataAdapter adpt;
        private DataTable dt;
        private string connectionString = @"Data Source=claytonr1.db.5867809.hostedresource.com;Persist Security Info=True;User ID=claytonr1;Password=Interface1";
        private int weekendNights = 0;
        private int days = 0;
        private int roomNumber = 1;
        private int discountNumber = -1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    conn = new SqlConnection(connectionString);
                    adpt = new SqlDataAdapter();
                    dt = new DataTable();
                    cmd = new SqlCommand("SELECT Room, Price FROM GWIRooms", conn);
                    adpt.SelectCommand = cmd;
                    adpt.Fill(dt);

                    for (int row = 0; row < dt.Rows.Count; row++)
                    {
                        ddlRoomType.Items.Add(string.Format("{0} {1:C0}", dt.Rows[row]["Room"], dt.Rows[row]["Price"]));
                    }

                    Session.Add("days", days);
                    Session.Add("weekendNights", weekendNights);
                    Session.Add("discountNumber", discountNumber);
                    Session.Add("roomNumber", roomNumber);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, ex.Source);
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        protected void ddlRoomType_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionString);
                adpt = new SqlDataAdapter();
                dt = new DataTable();
                cmd = new SqlCommand("SELECT Bed, Jacuzzi, Fireplace, PrivateAccess, BedName FROM GWIRooms JOIN GWIBedType" +
                    " ON BedID = Bed", conn);
                adpt.SelectCommand = cmd;
                adpt.Fill(dt);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, ex.Source);
            }
            finally
            {
                conn.Close();
            }

            roomNumber = ddlRoomType.SelectedIndex - 1; //ddlRoomType.SelectedIndex is 1 more than row number in Rooms table. (Presidential index in ddlRoomType is 1. Row index for Presidential in Rooms table is 0).
            Session.Add("roomNumber", roomNumber);

            lbxAmmenities.Items.Clear();
            lbxAmmenities.Items.Add(dt.Rows[roomNumber]["BedName"] + " Bed");
            for (int column = 1; column <= 3; column++)
            {
                if ((bool)dt.Rows[roomNumber][column] == true)
                {
                    lbxAmmenities.Items.Add(dt.Columns[column].ColumnName);
                }
            }

            Charges();
        }

        protected void calCheckIn_SelectionChanged(object sender, EventArgs e)
        {
            if (calCheckIn.SelectedDate < DateTime.Today)
            {
                lblCheckInValidator.Text = "Check-in date cannot be before today.";
            }
            else
            {
                lblCheckInValidator.Text = "";
                WeekendNights();
                if (weekendNights > 0)
                {
                    cbxWeekendNights.Checked = true;
                }
                else
                {
                    cbxWeekendNights.Checked = false;
                }
            }

            Charges();
            calCheckOut.Enabled = true;
        }

        protected void calCheckOut_SelectionChanged(object sender, EventArgs e)
        {
            if (calCheckOut.SelectedDate <= calCheckIn.SelectedDate)
            {
                lblCheckOutValidator.Text = "Check-out date cannot be before " + calCheckIn.SelectedDate.AddDays(1).ToShortDateString();
            }
            else
            {
                lblCheckOutValidator.Text = "";
                WeekendNights();
                if (weekendNights > 0)
                {
                    cbxWeekendNights.Checked = true;
                }
                else
                {
                    cbxWeekendNights.Checked = false;
                }
            }
            Charges();
        }

        protected void rdoDiscounts_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("discountNumber", rdoDiscounts.SelectedIndex - 1);
            Charges();
        }

        private void WeekendNights()
        {
            //This method determines how many nights of the stay are weekend nights.
            DateTime startDate = calCheckIn.SelectedDate;
            DateTime endDate = calCheckOut.SelectedDate;
            TimeSpan dateDiff = endDate - startDate;
            days = dateDiff.Days;
            Session.Add("days", days);

            for (int i = 0; i <= days; i++)
            {
                DateTime testDate = startDate.AddDays(i);
                switch (testDate.DayOfWeek)
                {
                    case DayOfWeek.Saturday:
                    case DayOfWeek.Sunday:
                        weekendNights++;
                        break;
                }
            }

            if (weekendNights > 0)
            {
                if (startDate.DayOfWeek == DayOfWeek.Sunday || startDate.DayOfWeek == DayOfWeek.Saturday)
                {
                    weekendNights--;
                }
            }
            Session.Add("weekendNights", weekendNights);
        }

        private void Charges()
        {
            discountNumber = (int)Session["discountNumber"];
            roomNumber = (int)Session["roomNumber"];
            days = (int)Session["days"];
            weekendNights = (int)Session["weekendNights"];
            decimal discountRate = 0;
            string discountName = "";
            try
            {
                conn = new SqlConnection(connectionString);
                adpt = new SqlDataAdapter();
                dt = new DataTable();
                cmd = new SqlCommand("SELECT DiscountName, Rate FROM GWIDiscounts", conn);
                adpt.SelectCommand = cmd;
                adpt.Fill(dt);

                if (discountNumber != -1)
                {
                    discountName = " (" + dt.Rows[discountNumber]["DiscountName"] + ")";
                    discountRate = (decimal)dt.Rows[discountNumber]["Rate"];
                }

                dt = new DataTable();
                cmd = new SqlCommand("SELECT Room, Price FROM GWIRooms", conn);
                adpt.SelectCommand = cmd;
                adpt.Fill(dt);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, ex.Source);
            }
            finally
            {
                conn.Close();
            }

            decimal rt = (decimal)dt.Rows[roomNumber]["Price"] * days;
            decimal wt = weekendNights * 10;
            decimal subtotal = rt + wt;
            decimal discountTotal = 0;

            if (discountNumber != -1)
            {
                discountTotal = subtotal * discountRate;
            }
            decimal tax = (subtotal - discountTotal) * (decimal)0.07;

            lbxCharges.Items.Clear();
            lbxCharges.Items.Add(string.Format("Room: {0}", dt.Rows[roomNumber]["Room"]));
            lbxCharges.Items.Add(string.Format("{0} nights: {1:C2}", days, rt));
            lbxCharges.Items.Add(string.Format("{0} weekend nights: {1:C2}", weekendNights, wt));
            lbxCharges.Items.Add(string.Format("Subtotal: {0:C2}", subtotal));
            lbxCharges.Items.Add(string.Format("Discount{0}: -{1:C2}", discountName, discountTotal));
            lbxCharges.Items.Add(string.Format("Tax: {0:C2}", tax));
            lbxCharges.Items.Add(string.Format("Total: {0:C2}", (subtotal - discountTotal + tax)));
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionString);
                adpt = new SqlDataAdapter();
                dt = new DataTable();
                cmd = new SqlCommand("SELECT * FROM GWIRoomBooking", conn);
                adpt.SelectCommand = cmd;
                adpt.Fill(dt);

                int numberRows = dt.Rows.Count;
                int reservationNumber = 200;


                if (numberRows > 0)
                {
                    reservationNumber = (int)dt.Rows[numberRows - 1]["ReservationNumber"];
                    reservationNumber++;
                }

                DataRow newRow = dt.NewRow();
                cmd = new SqlCommand("INSERT INTO GWIRoombooking (RoomType, CheckIn, CheckOut, NumberGuests, " +
                    "Discount, Weekend, ReservationNumber) VALUES (@roomType, @checkIn, @checkOut, @numberGuests, " +
                    "@discount, @weekend, @reservationNumber)", conn);
                cmd.Parameters.AddWithValue("@roomType", ddlRoomType.SelectedIndex);
                cmd.Parameters.AddWithValue("@checkIn", calCheckIn.SelectedDate);
                cmd.Parameters.AddWithValue("@checkOut", calCheckOut.SelectedDate);
                cmd.Parameters.AddWithValue("@numberGuests", ddlNumberGuests.SelectedValue);
                cmd.Parameters.AddWithValue("@discount", rdoDiscounts.SelectedIndex);
                cmd.Parameters.AddWithValue("@weekend", (int)Session["weekendNights"]);
                cmd.Parameters.AddWithValue("@reservationNumber", reservationNumber);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, ex.Source);
            }
            finally
            {
                conn.Close();
            }

            Response.Redirect("GuestInfo.aspx");
        }
    }
}
