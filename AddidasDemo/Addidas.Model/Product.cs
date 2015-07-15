using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Addidas.Model
{
    public class Product
    {
    }

    /// <summary>
    /// Model Class for Product Category Master
    /// </summary>
    public class CategoryMaster
    {
        public int CategoryMasterID { get; set; }
        public string CategoryName { get; set; }
    }
    /// <summary>
    /// Model class for Product Category Master
    /// </summary>
    public class ColorMaster
    {
        public int ColorMasterID { get; set; }
        public string ColorName { get; set; }
    }
    /// <summary>
    /// Model class for Product Master
    /// </summary>
    public class ProductMaster
    {
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public int Price { get; set; }
        public int Size { get; set; }
        public int Rating { get; set; }
        public int ColorMasterID { get; set; }
        public int NoOfCounts { get; set; }
    }
    /// <summary>
    /// Model class for product category-which product is of which category
    /// </summary>
    public class ProductCategory
    {
        public int CategoryMasterID { get; set; }
        public int ProductMasterID { get; set; }
    }
    /// <summary>
    /// Model class for Product Image
    /// </summary>
    public class ProductImage
    {
        public string ProductMasterID { get; set; }
        public string ImageName { get; set; }
        public string ImagePath { get; set; }
    }

}
