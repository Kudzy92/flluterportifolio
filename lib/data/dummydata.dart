import 'package:kudzy/models/models.dart';
import 'package:kudzy/utils/AppIcons.dart';

final Home home = Home(
  id: 1,
  text: "HELLO I\'M",
  name: "KUDZAI MADZIVA",
  post: "FULL STACK DEVELOPER",
  design: "FULL STACK DEVELOPER",
  desc:
      "A self taught and design thinking freelance software developer specialising in developing website and mobile applications using Java, ReactJS, JavaScript and Angular and Spring Boot.",
  imageUrl: 'assets/kudzy-no-bg.png',
);
final About about = About(
  id: 1,
  desc:
      "My good name is Kudzai Madziva a both front and backend developer working as freelance developer at the AppHub.I have 4+ years of working experience working as mainly front end , backend developer, ICT support and mathematics teacher in South Africa and Zimbabwe.I hold a Bachelor Degree in Information Technology which is my highest qualification.",
  desc1:
      "I am willing to join your organisation as a Software Developer because I have a passion in coding and I want to express my creativity through software development and I always wants to be involed with technology since technology is changing the life of people around the world. I am flexible to join and start work anytime and to workevery in South Africa",
  img: "'assets/kudzy-no-bg.png",
);
List<Portfolio> projects = [
  Portfolio(
    id: 1,
    cover: "assets/portfolio/anniesdesign_banner.jpg",
    name: "Graphics Design",
    category: "marketing",
    title: "Annies design Banner",
    description: "Black friday banner design for Annies design",
    done: "Nov 2022",
    url: 'https://www.instagram.com/anniesdesign1',
  ),
  Portfolio(
    id: 2,
    cover: "assets/portfolio/oslo_pedestal.jpg",
    name: "Grapics Design",
    category: "marketing",
    title: "Annies Design",
    description: "Black friday banner design for Annies design",
    done: "Nov 2022",
    url: 'https://www.instagram.com/anniesdesign1',
  ),
  Portfolio(
    id: 3,
    cover: "assets/portfolio/venvictor_web.png",
    name: "Web Development",
    category: "development",
    title: "venVictor Enginnering",
    description:
        "venVICTOR enginnering company located in Hillbrow, Johannesburg offers enginnering and construction services.",
    done: "Jun 2022",
    url: 'https://www.venvictor.vercel.app',
  ),
  Portfolio(
    id: 4,
    cover: "assets/portfolio/farmroadhouse_web.png",
    name: "Web Development",
    category: "development",
    title: "FARMroadHOUSE Website",
    description:
        "FARMroadHOUSE is a resturant located in Randburg that sale food online.",
    done: "Oct 2022",
    url: 'https://www.farmroadhouse.co.za',
  ),
  Portfolio(
    id: 5,
    cover: "assets/portfolio/anniesdesign_web.png",
    name: "Web Development",
    category: "development",
    title: "AnniesDesign Website",
    description:
        "Annies Design is furnture shop that is located in Randburg, South Africa offers high quality furniture and furniture reuphostery.",
    done: "Nov 2022",
    url: 'https://www.anniesdesign.co.za',
  ),
  Portfolio(
    id: 6,
    cover: "assets/portfolio/kudzy_web.png",
    name: "Web Development",
    category: "development",
    title: "Kudzy Portfolio Website",
    description:
        "kudzy.me is the portfolio website that shows the services I offer and my level of education",
    done: "Dec 2021",
    url: 'https://www.kudzyportfolio.vercel.app',
  ),
];
List<Education> educations = [
  Education(
      id: 1,
      level: 'GCE ORDINARY LEVEL',
      schoolname: 'Chinhoyi 2 High School',
      location: 'Chinhoyi, ZW',
      schoolurl: '#',
      description:
          '5+ ordinary level passes including Mathematics, Science and English.',
      year: '2009',
      duration: '4 yr'),
  Education(
      id: 3,
      level: 'GCE ADVANCED LEVEL',
      schoolname: 'Chinhoyi 2 High School',
      location: 'Chinhoyi, ZW',
      schoolurl: '#',
      description: '3+ advanced level passes including Mathematics.',
      year: '2011',
      duration: '2 yr'),
  Education(
      id: 5,
      level: 'HONORS DEGREE IN IT (BSIT)',
      schoolname: 'Chinhoyi University Of Technology',
      location: '',
      schoolurl: 'https://www.cut.ac.zw',
      description: 'Passed.',
      year: '2018',
      duration: '4 yr'),
];
List<Experience> experiences = [
  Experience(
      id: 2,
      post: 'IT Support Officer',
      orgname: 'Zimbabwe Open University · Internship',
      location: 'Chinhoyi, ZW',
      orgurl: 'https://www.zou.ac.zw',
      description:
          'Network adminstration.\n Implements computer security measures.\n Offer technical support to company staff and troubleshoot computer problems.\n Review diagnostic, assess the functionality and efficiency of the system',
      year: '2017',
      duration: '1 yr'),
  Experience(
      id: 4,
      post: 'ICT Support',
      orgname: 'Delta Beverages Pvt Ltd · Full-time',
      location: 'Harare, ZW',
      orgurl: 'https://www.delta.co.zw',
      description:
          'Configuring and testing SAP and all Sales Distribution (SD) applications.\n GPS route optimisations and support.\n Offer technical support to company staff and troubleshoot computers problem.',
      year: '2020',
      duration: '1 yr 2 mos'),
  Experience(
      id: 6,
      post: 'Front end web designer & developer',
      orgname: 'Edsonj pvt · Part-time',
      location: 'Gauteng, SA',
      orgurl: '#',
      description:
          'Optimisations of web presentation.\n Client side development with HTML, CSS, JavaScript and reactJS.\n Ensure web browser compatibility for the websites.\n Ensure website responsiveness on every device.',
      year: '2022',
      duration: '8 mos'),
  Experience(
      id: 7,
      post: 'Full Stack Web Developer',
      orgname: 'appHUB · Freelance',
      location: 'Gauteng, SA',
      orgurl: 'https://www.apphub.co.za',
      description:
          'Full stack website and mobile website developer and design.\n Designing and developing front end web architecture.Defining code architecture to support high performance product.\n Troubleshoot pages and SEO performance and optimisations.',
      year: 'Present',
      duration: '2yr'),
];
List<Social> social = [
  Social(
    id: 1,
    icon: facebookIcon,
    url: 'https://www.facebook.com/kudzaimadziva',
  ),
  Social(
    id: 2,
    icon: twitterIcon,
    url: 'https://www.twitter.com/kudzaimadziva',
  ),
  Social(
    id: 3,
    icon: intsagramIcon,
    url: 'https://www.instagram.com/kudzaimadziva',
  ),
  Social(
    id: 4,
    icon: linkedinIcon,
    url: 'https://www.linkedin.com/in/kudzaimadziva',
  ),
  Social(
    id: 5,
    icon: whatsappIconColor,
    url: 'https://www.github.com/kudzy92',
  ),
  Social(
    id: 5,
    icon: githubIcon,
    url: 'https://www.github.com/kudzy92',
  ),
];

List<Contact> contacts = [
  Contact(
    id: 1,
    icon: locationIcon,
    text1: "92 Roikrains, Bloubosrand, Randburg,",
    text2: "Joburg, South Africa",
  ),
  Contact(
    id: 2,
    icon: callsIcon,
    text1: "+27 814 050 806",
    text2: "+263 778 472 510",
  ),
  Contact(
    id: 3,
    icon: emailIcon,
    text1: "kudziemadziva@gmail.com",
    text2: "contact@kudzy.me",
  ),
  Contact(
    id: 4,
    icon: whatsappIcon,
    text1: "+27 814 050 806",
    text2: "",
  ),
  Contact(
    id: 5,
    icon: websiteIcon,
    text1: "kudzyportfolio.vercel.app",
    text2: "appphub.co.za/contact",
  ),
];
List<Skill> skills = [
  Skill(
    id: 1,
    name: 'Front Web Development',
    percentage: '90',
  ),
  Skill(
    id: 2,
    name: 'Backend Web Development',
    percentage: '55',
  ),
  Skill(
    id: 3,
    name: 'Mobile apps development',
    percentage: '40',
  ),
  Skill(
    id: 4,
    name: 'UI/UX Design',
    percentage: '53',
  ),
  Skill(
    id: 5,
    name: 'Java',
    percentage: '47',
  ),
];
List<Service> services = [
  Service(
    id: 1,
    icon: supportIcon,
    title: "24/7 great support",
    desc:
        "We offer expert and reliable support at any given time and anywhere to our current and pontenial clients.At kudzy we give you peace of mind during day and night.",
  ),
  Service(
    id: 2,
    icon: marketingIcon,
    title: "Digital & online marketing",
    desc:
        "We provide high quality and cost effective plans on digital & online marketing solutions and services for all types of business.",
  ),
  Service(
    id: 3,
    icon: webIcon,
    title: "Web development",
    desc:
        "We focus in provision of website applications at any an affordable prices with the aim of producing quality and satisfying our clients.",
  ),
  Service(
    id: 4,
    icon: mobileIcon,
    title: "Mobile apps development	",
    desc:
        "We develop custom mobile applications with mordern ui/ux with custom and user friendly ui/ux.",
  ),
  Service(
    id: 5,
    icon: uiuxIcon,
    title: "UI/UX design",
    desc:
        "Designing user-friendly website with custom feel and look with an objective of achieving our clients objectives.",
  ),
  Service(
    id: 6,
    icon: teachingIcon,
    title: "Physical Science & Maths Tutor",
    desc:
        "Apart from software production I also love solving mathematical problems.I also provide free pdf with solutions of the past exams papers from different examination boards across the globe.",
  ),
];
