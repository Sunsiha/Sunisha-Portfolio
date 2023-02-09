class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? androidUrl;
  final String? iOSUrl;
  final String? webUrl;
  final List<String>? skills;

  Project(
      {this.name,
      this.description,
      this.image,
      this.androidUrl,
      this.iOSUrl,
      this.webUrl,
      this.skills});
}

List<Project> PROJECTS = [
  Project(
    name: 'Simplify Careers Candidate',
    description:
        'Direct Hiring is transforming the talent sourcing industry. It means organizations can use a digital '
        'platform to go direct for the talent they need. Get hired by top companies '
        'save on time and reduce your spend. DSaaS.ai is a unifying end-to-end talent cloud platform that combines a job board, a'
        'pplicant tracking system, and the best features for external workforce management, contracts, payments, etc. to give you '
        'everything that needs to find the suitable job and manage the end-to-end lifecycle.\n\n'
        'Features:\n'
        'Register, Build a Profile, Manage your profile, Find & Match, Apply for matching jobs, Dashboard Analytics.\n',
    image: 'images/projects/candidates.png',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.simplifyvms.dsaas.ai',
    iOSUrl:
        'https://apps.apple.com/in/app/simplify-careers-candidate/id1599698432',
    webUrl: 'https://candidate-dsaas.simplifycareers.com',
    skills: [
      'UI design: Figma',
      'Mobile: Flutter, Material UI, Cupertino',
      'Web: React.js, HTML,CSS, Material UI',
      'Backend: Java Spring Boot, Hibernate, JPA, Python, Django, Node.js, Elastic search',
      'Database: MariaDB, MongoDB',
      'Git',
    ],
  ),
  Project(
    name: 'Simplify Careers Enterprise',
    description:
        'DSaaS.ai.enterprise meets the needs of businesses wanting to source top talent directly without '
        'the hassle of hiring contractors through agencies.'
        'Direct Hiring is transforming the talent sourcing industry. It means organizations can use a digital platform to go '
        'direct for the talent they need. Hire the top talent, save on time and reduce your spend. DSaaS.ai.enterprise is '
        'a unifying end-to-end talent cloud platform that combines a job board, applicant tracking system, and the best features for '
        'external workforce management, contracts, payments, etc. to give your business everything it needs to find talent on-demand and manage '
        'their end-to-end lifecycle.'
        'Using our AI-powered platform you can reach a bigger audience to hire the talent you need faster.\n'
        '\nFeatures:\nFind, match, screen, and manage talent.\n',
    image: 'images/projects/enterprise.png',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.simplifyvms.dsaas.ai.enterprise',
    iOSUrl:
        'https://apps.apple.com/in/app/simplify-careers-enterprise/id1607819897?platform=iphone',
    webUrl: 'https://enterprise-dsaas.simplifycareers.com',
    skills: [
      'UI design: Figma',
      'Mobile: Flutter, Material UI, Cupertino',
      'Web: React.js, HTML,CSS, Material UI',
      'Backend: Java Spring Boot, Hibernate, JPA, Python, Django, Node.js, Elastic search',
      'Database: MariaDB, MongoDB',
      'Git',
    ],
  ),
  Project(
    name: 'Docty',
    description:
    'Docty allows you to access remote medical assistance and guidance directly '
        'from your mobile phone or via the web. You can speak with a qualified doctor for care, advice or '
        'diagnosis through our video call system with emotion analysis.\n\n'
        'Features:'
        '\n• Permanent access to a network of general practitioners and specialists (Including Psychiatrists and Psychologists) so that you can consult when you need it.'
        '\n• Symptom checker powered by artificial intelligence (AI) that allows you to analyse most common symptoms in a matter of minutes.'
        '\n• Live video consultation with qualified physicians and healthcare specialists. '
        '\n• Analysis of emotions during your consultation because we consider that your state of '
        'mind is just as important as your physical health.\n',
    image: 'images/projects/docty.png',
    androidUrl:
    'https://play.google.com/store/apps/details?id=ai.doctyindia.patient&hl=en_IN&gl=US',
    iOSUrl: 'https://apps.apple.com/in/app/docty-digital-health-for-all/id1577088463',
    webUrl: 'https://www.doctyindia.com/auth/login?returnUrl=%2F',
    skills: [
      'UI design: Wireframe',
      'Mobile: Flutter, Dart ',
    ],
  ),
  Project(
    name: 'Moonlyte',
    description:
        'Moonlyte is the best online freelance services platform for employers & freelancers to connect & make it work. Moonlyte is India\'s premier online platform for businesses and '
        'freelancers to find and transact with each other. By bringing verified freelancers and businesses to the table, we bring in a certain standard '
        'of quality so that both parties can interact with a sense of security and ease.\n\n'
        'Downloads: 5000+\n',
    image: 'images/projects/moonlyte.png',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.moonlyte.seller&hl=en_US&gl=US&pli=1',
    iOSUrl: '',
    webUrl: 'https://www.moonlyte.com/',
    skills: [
      'UI design: Figma',
      'Mobile: Flutter',
      'Web: Angular, HTML,CSS, Material UI',
      'Backend: Java Spring Boot, Hibernate, JPA, Node.js, Elastic search',
      'Database: MariaDB, MongoDB',
      'Git',
    ],
  ),
  Project(
    name: 'Quick Mart Limited Loyalty App',
    description:
        'Loyalty Performance: Collect Points On Every Purchase. Measure Customer Loyalty Performance.\n\n'
        'Downloads: 50,000+\n',
    image: 'images/projects/quickmart.png',
    androidUrl:
        'https://play.google.com/store/apps/details?id=supermarket.aspire.com.quickmart&hl=en_US',
    iOSUrl:
        'https://apps.apple.com/ke/app/quick-mart-limited-loyalty/id1455992612',
    webUrl: '',
    skills: [
      'UI design: Photoshop',
      'Mobile: Android, Java, iOS, Swift',
      'Backend: VB.Net, SOAP',
      'Git',
    ],
  ),
  Project(
    name: 'Toit',
    description:
        'A monstrous microbrewery. Enjoy a tall mug of freshly brewed craft beer and chase it with a meal as good as your last alcohol-induced epiphany.\n\n'
        'Downloads: 10,000+\n',
    image: 'images/projects/toit.png',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.eengage.toit&hl=en_US',
    iOSUrl: '',
    webUrl: '',
    skills: [
      'UI design: Photoshop',
      'Mobile: Android, Java',
      'Backend: VB.Net, SOAP',
      'Git',
    ],
  )
];
