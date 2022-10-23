﻿using GorZdraw.DataFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для EditProductPage.xaml
    /// </summary>
    public partial class EditProductPage : Page
    {
        public EditProductPage(Product Product)
        {
            InitializeComponent();
            DataContext = Product;
            СategoryCb.ItemsSource = DBEntities.Getcontext()
                .Category.ToList();
            ManufacturerCb.ItemsSource = DBEntities.Getcontext()
                .ManufacturerAndQualityControl.ToList();
            RecipeCb.ItemsSource = DBEntities.Getcontext()
                .Recipe.ToList();
            SuppliersCb.ItemsSource = DBEntities.Getcontext()
                .Suppliers.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
