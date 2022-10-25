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
    /// Логика взаимодействия для ListAcceptingClaimsPage.xaml
    /// </summary>
    public partial class ListAcceptingClaimsPage : Page
    {
        public ListAcceptingClaimsPage()
        {
            InitializeComponent();
            OACDG.ItemsSource = DBEntities.Getcontext().OrganizationAcceptingClaims
                .ToList().OrderBy(x => x.IdOrganizationAcceptingClaims);
        }

        private void Ref()
        {
            OACDG.ItemsSource = DBEntities.Getcontext().OrganizationAcceptingClaims
                    .ToList().OrderBy(x => x.IdOrganizationAcceptingClaims);
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (OACDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите предприятие для удаления");
            }
            else
            {
                try
                {
                    OrganizationAcceptingClaims organization 
                        = OACDG.SelectedItem as OrganizationAcceptingClaims;
                    if (MBClass.QestionMB($"Удалить выбранное предприятие?"))
                    {
                        DBEntities.Getcontext().OrganizationAcceptingClaims
                            .Remove(organization);
                        DBEntities.Getcontext().SaveChanges();
                        Ref();
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            OrganizationAcceptingClaims organization = OACDG.SelectedItem as OrganizationAcceptingClaims;
            VariableClass.IdOAC = organization.IdOrganizationAcceptingClaims;
            this.NavigationService.Navigate(new EditMunafacturerPage(OACDG.SelectedItem as OrganizationAcceptingClaims));
            Ref();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
