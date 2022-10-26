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
    /// Логика взаимодействия для EditAcceptingClaimsPage.xaml
    /// </summary>
    public partial class EditAcceptingClaimsPage : Page
    {
        public EditAcceptingClaimsPage(OrganizationAcceptingClaims OrganizationAcceptingClaims)
        {
            InitializeComponent();
            DataContext = OrganizationAcceptingClaims;
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
            OrganizationAcceptingClaims organization = DBEntities.Getcontext().OrganizationAcceptingClaims
                 .FirstOrDefault(s => s.IdOrganizationAcceptingClaims == VariableClass.IdOAC);
            organization.IdCountry = Int32.Parse(CountryCb.SelectedValue.ToString());
            organization.IdLegalAddressOAC = Int32.Parse(CountryCb.SelectedValue.ToString());
            organization.NameOAC = NameOACTb.Text;
            DBEntities.Getcontext().SaveChanges();

            MBClass.InformationMB("Успешно отредактированна организация");
            NavigationService.Navigate(new ListAcceptingClaimsPage());
        }
    }
}
