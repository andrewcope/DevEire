package com.deveire.modules;

import java.util.List;

import com.deveire.model.Image;
import com.deveire.model.Link;
import com.deveire.model.LinkedImage;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.Renderer;
import com.psddev.cms.db.ToolUi;

@Renderer.Path("/WEB-INF/common/global-footer.jsp")
public class Footer extends Content {

    private String title;
    private Image logo;
    private Address address;
    private ContactInfo contactInfo;
    private String copyright;



    public String getCopyright() {
        return copyright;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }

    public Image getLogo() {
        return logo;
    }

    public void setLogo(Image logo) {
        this.logo = logo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public ContactInfo getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(ContactInfo contactInfo) {
        this.contactInfo = contactInfo;
    }

    public static class Address extends Content
    {
        @ToolUi.Note("Displayed at top of Address")
        private String title;
        private String firstLine;
        private String secondLine;
        private String thirdLine;
        private String fourthLine;
        private String fifthLine;

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getFirstLine() {
            return firstLine;
        }

        public void setFirstLine(String firstLine) {
            this.firstLine = firstLine;
        }

        public String getSecondLine() {
            return secondLine;
        }

        public void setSecondLine(String secondLine) {
            this.secondLine = secondLine;
        }

        public String getThirdLine() {
            return thirdLine;
        }

        public void setThirdLine(String thirdLine) {
            this.thirdLine = thirdLine;
        }

        public String getFourthLine() {
            return fourthLine;
        }

        public void setFourthLine(String fourthLine) {
            this.fourthLine = fourthLine;
        }

        public String getFifthLine() {
            return fifthLine;
        }

        public void setFifthLine(String fifthLine) {
            this.fifthLine = fifthLine;
        }
    }

    public static class ContactInfo extends Content
    {
        private String title;
        private List<ContactDetail> contactDetails;

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public List<ContactDetail> getContactDetails() {
            return contactDetails;
        }

        public void setContactDetails(List<ContactDetail> contactDetails) {
            this.contactDetails = contactDetails;
        }



        public static class ContactDetail extends Content
        {
            @ToolUi.Note("Displayed at top of contact details")
            private String title;
            private ContactIcon icon;
            @ToolUi.Note("optional as not needed for tel/email")
            private Link contactLink;
            @ToolUi.Note("e.g. telNo, email adress, facebook page")
            private String contactDetail;

            public String getTitle() {
                return title;
            }

            public void setTitle(String title) {
                this.title = title;
            }

            public ContactIcon getIcon() {
                return icon;
            }

            public void setIcon(ContactIcon icon) {
                this.icon = icon;
            }

            public Link getContactLink() {
                return contactLink;
            }

            public void setContactLink(Link contactLink) {
                this.contactLink = contactLink;
            }

            public String getContactDetail() {
                return contactDetail;
            }

            public void setContactDetail(String contactDetail) {
                this.contactDetail = contactDetail;
            }
            public enum ContactIcon
            {
                TELEPHONE, EMAIL, LINKEDIN, FACEBOOK, TWITTER, GOOGLEPLUS, INSTAGRAM, PINTREST, YOUTUBE;

                @Override
                public String toString()
                {
                    String string ="";
                    switch(this)
                    {
                        case TELEPHONE:
                            string = "icon-phone";
                            break;
                        case EMAIL:
                            string = "icon-mail";
                            break;
                        case LINKEDIN:
                            string = "icon-linkedin";
                            break;
                        case FACEBOOK:
                            string = "icon-facebook";
                            break;
                        case TWITTER:
                            string = "icon-twitter";
                            break;
                        case GOOGLEPLUS:
                            string = "icon-googleplus";
                            break;
                        case INSTAGRAM:
                            string = "icon-instagram";
                            break;
                        case PINTREST:
                            string = "icon-pintrest";
                            break;
                        case YOUTUBE:
                            string = "icon-youtube";
                            break;

                    }
                    return string;
                }
            }
        }
    }
}
