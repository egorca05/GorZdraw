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
    /// Логика взаимодействия для AddAcceptingClaimsPage.xaml
    /// </summary>
    public partial class AddAcceptingClaimsPage : Page
    {
        public AddAcceptingClaimsPage()
        {
            InitializeComponent();
            CountryCb.ItemsSource = DBEntities.Getcontext()
                .Country.ToList();
            LegalAddressOACCb.ItemsSource = DBEntities.Getcontext()
                .LegalAddressOAC.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            DBEntities.Getcontext().OrganizationAcceptingClaims.Add(new OrganizationAcceptingClaims()
            {
                IdCountry = Int32.Parse(CountryCb.SelectedValue.ToString()),
                IdLegalAddressOAC = Int32.Parse(LegalAddressOACCb.SelectedValue.ToString()),
                NameOAC = NameOACTb.Text
            });
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Организация создана");
            NavigationService.Navigate(new ListAcceptingClaimsPage());

        }
    }
}
