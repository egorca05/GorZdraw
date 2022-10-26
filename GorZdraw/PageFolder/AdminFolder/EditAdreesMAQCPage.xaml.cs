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
    /// Логика взаимодействия для EditAdreesMAQCPage.xaml
    /// </summary>
    public partial class EditAdreesMAQCPage : Page
    {
        public EditAdreesMAQCPage(LegalAddressMAQC LegalAddressMAQC)
        {
            InitializeComponent();
            DataContext = LegalAddressMAQC;
            CityCb.ItemsSource = DBEntities.Getcontext()
                .City.ToList();
            StreetCb.ItemsSource = DBEntities.Getcontext()
                .Street.ToList();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            LegalAddressMAQC legalAddressMAQC = DBEntities.Getcontext().LegalAddressMAQC.
                FirstOrDefault(s => s.IdLegalAddressMAQC == VariableClass.IdAddresMAQC);
            legalAddressMAQC.IdCity = Int32.Parse(CityCb.SelectedValue.ToString());
            legalAddressMAQC.IdStreet = Int32.Parse(StreetCb.SelectedValue.ToString());
            legalAddressMAQC.HouseNumber = HouseNumberTb.Text;
            legalAddressMAQC.Building = BuildingTb.Text;
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Адресс успешно отредактирован");
            NavigationService.Navigate(new ListAdreesMAQCPage());
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
