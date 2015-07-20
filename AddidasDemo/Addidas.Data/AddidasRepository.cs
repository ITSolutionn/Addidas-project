using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Addidas.Model;
using Addidas.Common;

namespace Addidas.Data
{
    public class AddidasRepository : DataAccessComponunt
    {

        #region Methods
        /// <summary>
        /// InsertUser
        /// </summary>
        /// <param name="UserRegisteration"></param>
        /// <returns></returns>
        public int InsertUser(UserRegisteration UserRegisteration)
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("Usp_InsertUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("name", SqlDbType.Text).Value = UserRegisteration.Name;
            cmd.Parameters.Add("Email", SqlDbType.Text).Value = UserRegisteration.Email;
            cmd.Parameters.Add("Password", SqlDbType.Text).Value = Utility.Encrypt(UserRegisteration.Password);
            cmd.Parameters.Add("Address", SqlDbType.Text).Value = UserRegisteration.Address;
            cmd.Parameters.Add("Country", SqlDbType.Text).Value = UserRegisteration.Country;
            cmd.Parameters.Add("ContactNo", SqlDbType.Text).Value = UserRegisteration.ContactNo;
            cmd.Parameters.Add("IsActive", SqlDbType.Bit).Value = true;
            cmd.Parameters.Add("IsDelete", SqlDbType.Bit).Value = false;

              
            
            conn.Open();
            int resultCount =cmd.ExecuteNonQuery();
            conn.Close();

            return resultCount;
        }
        #endregion
    }
}
