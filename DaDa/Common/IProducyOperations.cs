using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DaDa.Common
{
    public interface IProducyOperations
    {
        ProductInfo GetProduct(string id);
        ProductInfo[] GetAllProducts();
        void SaveProduct(ProductInfo pt);
        void SetImage(ProductInfo pt, string imageName);
        void DeleteProduct(ProductInfo pt);
        void SetCatogary(ProductInfo pt, string catogary);
    }
}