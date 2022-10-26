using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
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
    /// Логика взаимодействия для AddAdreesMAQCPage.xaml
    /// </summary>
    public partial class AddAdreesMAQCPage : Page
    {
        public AddAdreesMAQCPage()
        {
            InitializeComponent();
            CityCb.ItemsSource = DBEntities.Getcontext()
                .City.ToList();
            StreetCb.ItemsSource = DBEntities.Getcontext()
                .Street.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            DBEntities.Getcontext().LegalAddressMAQC.Add(new LegalAddressMAQC()
            {
                IdCity = Int32.Parse(CityCb.SelectedValue.ToString()),
                IdStreet = Int32.Parse(StreetCb.SelectedValue.ToString()),
                HouseNumber = HouseNumberTb.Text,
                Building = BuildingTb.Text,

            });
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Успешно");
            NavigationService.Navigate(new ListAdreesMAQCPage());
        }
    }
}
