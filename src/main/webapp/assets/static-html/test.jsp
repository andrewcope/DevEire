<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />

<div class="container-fluid" id="people" data-bsp-dev-test>
    <div class="row">
        <ul id="toggle" style="display: block;">
            <li>
                <a>
                    <i class="fa fa-chevron-down"></i>
                </a>
                <ul id="filter" style="display: none;">
                    <li class="active" data-dept="all">All</li>
                    <li data-dept="leadership" class="">Leadership</li>
                    <li data-dept="developer">Developers</li>
                    <li data-dept="designer">Designers</li>
                    <li data-dept="tech">Technicians</li>
                    <li data-dept="specialist">Specialists</li>
                    <li data-dept="assistant">Assistants</li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="row"><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Jeremy" src="http://www.hitcents.com/assets/b2b/people/Jeremy-abb2b518c9af7b5cb2fc319f5aae87d1.jpg">
            <div class="info">
                <p class="name">Jeremy Clark</p>
                <p class="position">Sr. Developer</p>
                <p class="blurb"></p>
            </div>
        </div><div class="person col-sm-2" data-dept="tech">
            <div class="overlay"></div>
            <img alt="Robert" src="http://www.hitcents.com/assets/b2b/people/Robert-43394478c8ab79e330fa5455c5962f63.jpg">
            <div class="info">
                <p class="name">Robert Camp</p>
                <p class="position">Technology Manager</p>
                <p class="blurb">
                    "Self professed geek and repressed gamer. I have an unfortunate interest in politics and a fortunate interest in economics. Computers bend to my will."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Drew-rosensweig" src="http://www.hitcents.com/assets/b2b/people/Drew-Rosensweig-fbeec7178ca441d665dae9729b59bef8.jpg">
            <div class="info">
                <p class="name">Drew Rosenweig</p>
                <p class="position">Interactive Marketing Manager, Los Angeles Office</p>
                <p class="blurb">Authentic Drake Replica</p>
            </div>
        </div><div class="person col-sm-2" data-dept="leadership">
            <div class="overlay"></div>
            <img alt="Clinton" src="http://www.hitcents.com/assets/b2b/people/Clinton-29492fb41a8912b47bcbf50de3271420.jpg">
            <div class="info">
                <p class="name">Clinton Mills</p>
                <p class="position">Chief Executive Officer</p>
                <p class="blurb">
                    To truly be successful in work and in life, you MUST surround yourself with other smart, talented and passionate people. I get to wake up every day with the opportunity to create something new. That's a fun way to live.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Emily" src="http://www.hitcents.com/assets/b2b/people/Emily-7156ba31734e3c5c3e1fbe22508088ff.jpg">
            <div class="info">
                <p class="name">Emily Camp</p>
                <p class="position">Accounting Manager</p>
                <p class="blurb">
                    I know EVERYTHING!
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="assisstant">
            <div class="overlay"></div>
            <img alt="Laurenbarger" src="http://www.hitcents.com/assets/b2b/people/LaurenBarger-558fed4bf668efd288cf93b45dc8aa0b.jpg">
            <div class="info">
                <p class="name">Lauren Barger</p>
                <p class="position">Accounting Assistant</p>
                <p class="blurb"></p>
            </div>
        </div><div class="person col-sm-2" data-dept="designer">
            <div class="overlay"></div>
            <img alt="Shinchow-zhouxin" src="http://www.hitcents.com/assets/b2b/people/ShinChow-Zhouxin-33ed3cb3992f206d9c96d757e6c87959.JPG">
            <div class="info">
                <p class="name">Chow Xin</p>
                <p class="position">Graphic Designer, Shanghai Office</p>
                <p class="blurb">
                    Keep it real.
                    <br>
                    ?????
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Charles" src="http://www.hitcents.com/assets/b2b/people/Charles-683500dd28d876c1ce527fa6215a306b.jpg">
            <div class="info">
                <p class="name">Charles Atkinson</p>
                <p class="position">Omniprise Project Manager</p>
                <p class="blurb">
                    "Tell me and I forget. Teach me and I remember. Involve me and I learn."
                    <br>
                    - Benjamin Franklin
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Russell" src="http://www.hitcents.com/assets/b2b/people/Russell-aed63ac533733f23b109545820e07a1e.jpg">
            <div class="info">
                <p class="name">Russell Flowers</p>
                <p class="position">Programmer</p>
                <p class="blurb">
                    "Experience is what you get when you don't get what you wanted. I am very experienced."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Tina-hanxuan" src="http://www.hitcents.com/assets/b2b/people/Tina-Hanxuan-120b9919f4077db4880904bfaf694305.jpg">
            <div class="info">
                <p class="name">Tina Han</p>
                <p class="position">Office Manager, Shanghai Office</p>
                <p class="blurb">
                    No matter what, we should always keep a little faith.
                    <br>
                    ??????????????????
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Stu" src="http://www.hitcents.com/assets/b2b/people/Stu-99a12bad9b011c3a1197447e1dca33d9.jpg">
            <div class="info">
                <p class="name">Stuart Westphal</p>
                <p class="position">V.P. of Games and Interactive</p>
                <p class="blurb">
                    "When I'm not at work, I'm battling monsters and pirates with my son, holding my baby girl, writing music, laughing with someone, or thinking too much about something."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Nick" src="http://www.hitcents.com/assets/b2b/people/Nick-08c857ab40a971b812b07843bb092cb5.jpg">
            <div class="info">
                <p class="name">Nick Peppers</p>
                <p class="position">Development Intern</p>
                <p class="blurb">
                    "I'm an athletic person, a skilled gamer, and a former fatty here to learn the ways &nbsp;of expert coding from the Hitcents Masters."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="tech">
            <div class="overlay"></div>
            <img alt="Kyle" src="http://www.hitcents.com/assets/b2b/people/Kyle-c8398a7c7dad742a133bed2c59c83d1a.jpg">
            <div class="info">
                <p class="name">Kyle Burden</p>
                <p class="position">Technician</p>
                <p class="blurb">
                    "I have an odd obession with wet shaving products. I'm always on the hunt to find the perfect razor and shaving cream/soap."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="assistant">
            <div class="overlay"></div>
            <img alt="Robin" src="http://www.hitcents.com/assets/b2b/people/Robin-19c79b739d90b6c84bb1d0349bfbe6f3.jpg">
            <div class="info">
                <p class="name">Robin Stiles</p>
                <p class="position">Administrative Assistant</p>
                <p class="blurb">
                    "I like walking through the balloon strings at the grocery store."
                </p>
            </div>
        </div><div class="person col-sm-2 blank"><img src="http://www.hitcents.com/assets/b2b/people/placeholder.jpg"></div><div class="person col-sm-2" data-dept="assistant">
            <div class="overlay"></div>
            <img alt="Summer" src="http://www.hitcents.com/assets/b2b/people/Summer-7ce03486fa514e4dd23eeb301d5efa63.jpg">
            <div class="info">
                <p class="name">Summer Butler</p>
                <p class="position">Administrative Assistant</p>
                <p class="blurb"></p>
            </div>
        </div><div class="person col-sm-2" data-dept="leadership">
            <div class="overlay"></div>
            <img alt="Ed" src="http://www.hitcents.com/assets/b2b/people/Ed-0fd34ea25ba692bcf6e31169eddb6286.jpg">
            <div class="info">
                <p class="name">Ed Mills</p>
                <p class="position">Chief Financial Officer &amp; Co- Owner</p>
                <p class="blurb">
                    "If it wasn?t hard, everyone would do it. It?s the hard that makes it great."
                    <br>
                    ? Tom Hanks
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Matt" src="http://www.hitcents.com/assets/b2b/people/Matt-bf9ddc8e50d697e5975abb0d516e0c49.jpg">
            <div class="info">
                <p class="name">Matt Bitner</p>
                <p class="position">Game Developer</p>
                <p class="blurb">
                    An alright dude.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="designer">
            <div class="overlay"></div>
            <img alt="Annie" src="http://www.hitcents.com/assets/b2b/people/Annie-90d98892dd5d3431ba5040167c55cc07.jpg">
            <div class="info">
                <p class="name">Annie Erskine</p>
                <p class="position">Lead Game Artist</p>
                <p class="blurb">
                    "Cartoonist, Comic artist, graphic designer, etc. Jack of all trades! I only watch cartoons. I adore all things happy, positive, and good! My life goal is to get super powers!"
                </p>
            </div>
        </div><div class="person col-sm-2 blank"><img src="http://www.hitcents.com/assets/b2b/people/placeholder.jpg"></div><div class="person col-sm-2" data-dept="assistant">
            <div class="overlay"></div>
            <img alt="Lauragay" src="http://www.hitcents.com/assets/b2b/people/LauraGay-2d29ab00106a6b150875582f47f4dbf3.jpg">
            <div class="info">
                <p class="name">Laura Gay</p>
                <p class="position">Administrative Assistant</p>
                <p class="blurb">
                    "The way to get started is to quit talking and begin doing."
                    <br>
                    - Walt Disney
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="leadership">
            <div class="overlay"></div>
            <img alt="Chris" src="http://www.hitcents.com/assets/b2b/people/Chris-605dbabc464ca1606e418d687527a66f.jpg">
            <div class="info">
                <p class="name">Chris Mills</p>
                <p class="position">President</p>
                <p class="blurb">
                    "Love traveling, spending time with my family and working hard."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="designer">
            <div class="overlay"></div>
            <img alt="Samuel-joe-xinxin-jiao" src="http://www.hitcents.com/assets/b2b/people/Samuel-Joe-Xinxin-Jiao-fc3062997e0501ae1be744fbc249a5a7.JPG">
            <div class="info">
                <p class="name">Samuel Joe</p>
                <p class="position">Graphic Designer, Shanghai Office</p>
                <p class="blurb">
                    As Heaven's movement is ever vigorous, so must a gentleman ceaselessly strive along.
                    <br>
                    ????????????
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="tech">
            <div class="overlay"></div>
            <img alt="Shontepratt" src="http://www.hitcents.com/assets/b2b/people/ShontePratt-5e4e9b6db99da5cae5a1458ca4a8406c.jpg">
            <div class="info">
                <p class="name">Shonte' Pratt</p>
                <p class="position">Technician</p>
                <p class="blurb">Father, Tech, Gamer, Creator = busy. I still wonder what else can I learn?</p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Chao" src="http://www.hitcents.com/assets/b2b/people/Chao-b152c44255d0237a1b9729b006c4b85f.jpg">
            <div class="info">
                <p class="name">Chao ?Alex? Pan</p>
                <p class="position">Culture and Localization Specialist</p>
                <p class="blurb">
                    It's about time for more people to share the FUN!
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="designer">
            <div class="overlay"></div>
            <img alt="Joy" src="http://www.hitcents.com/assets/b2b/people/Joy-d389beaecacf2cb6ef13090659c714ae.jpg">
            <div class="info">
                <p class="name">Joy Hurt</p>
                <p class="position">2D Animator</p>
                <p class="blurb">
                    "From an early age I have always had a passion for creating. Be it crafts such as jewelry, visual 2D art such as illustrations, or graphic design and animation; you will always find me with pencil and paper in hand."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Bryan" src="http://www.hitcents.com/assets/b2b/people/Bryan-fa5b55bc0a2458bed6cb21bab410af88.jpg">
            <div class="info">
                <p class="name">Bryan Phillips</p>
                <p class="position">Senior Application Developer</p>
                <p class="blurb">
                    A self-proclaimed Chuck Norris aficionado, dabbling in the realm of the .Net Framework. Coding in ways of C#, C++, Java, and Xaml, works extensively in the world of Xamarin.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Andrewrice" src="http://www.hitcents.com/assets/b2b/people/AndrewRice-c03415b56cd00f36e307f4eda8cb5618.jpg">
            <div class="info">
                <p class="name">Andrew Rice</p>
                <p class="position">V.P. of Cascading Style Sheets and Responsive</p>
                <p class="blurb">
                    A mover. A shaker. A real go-getter.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Joseph" src="http://www.hitcents.com/assets/b2b/people/Joseph-60f46f0cc8d2de25a35fa380705f966b.jpg">
            <div class="info">
                <p class="name">Joseph Gieske</p>
                <p class="position">Sr. Developer</p>
                <p class="blurb">
                    Cog in the machine that doesn't need grease. Contra-caffeinated.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="assistant">
            <div class="overlay"></div>
            <img alt="Maria" src="http://www.hitcents.com/assets/b2b/people/Maria-f7878dda3f8195ca52b3ff541ea46a23.jpg">
            <div class="info">
                <p class="name">Maria Burnett</p>
                <p class="position">Administrative Assistant</p>
                <p class="blurb">
                    Ginger, cat-lady, photographer. The whole package.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Cody" src="http://www.hitcents.com/assets/b2b/people/Cody-4ac71e24b65ecc50c56571dab0cc1fe5.jpg">
            <div class="info">
                <p class="name">Cody Davis</p>
                <p class="position">Omniprise Data Engineer</p>
                <p class="blurb">
                    "Wearing a turtleneck is like being strangled by a really weak guy, all day. Wearing a backpack and a turtleneck is like a weak midget trying to bring you down.""
                    <br>
                    ? Mitch Hedberg
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="designer">
            <div class="overlay"></div>
            <img alt="Chad" src="http://www.hitcents.com/assets/b2b/people/Chad-ed90566804215fa9856c2891dec9e482.jpg">
            <div class="info">
                <p class="name">Chad Brown</p>
                <p class="position">2D/3D Animator</p>
                <p class="blurb">
                    "Not only am I really good at breathing, but I also have the perfect amount of leg hair."
                </p>
            </div>
        </div><div class="person col-sm-2 blank"><img src="http://www.hitcents.com/assets/b2b/people/placeholder.jpg"></div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Matthewlester" src="http://www.hitcents.com/assets/b2b/people/MatthewLester-3185c9c6ed2a4f836552b2aa4342171c.jpg">
            <div class="info">
                <p class="name">Matthew Lester</p>
                <p class="position">3D Artist/Animator</p>
                <p class="blurb">
                    I want to put a ding in the Universe through my creative accomplishments.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Clint" src="http://www.hitcents.com/assets/b2b/people/Clint-69bd8071fc81d5125f361a7325bcf2a9.jpg">
            <div class="info">
                <p class="name">Clint Waters</p>
                <p class="position">QA Tester</p>
                <p class="blurb">
                    "I worry what you just heard was: Give me a lot of bacon and eggs. What I said was: Give me all the bacon and eggs you have. Do you understand?"
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Macy" src="http://www.hitcents.com/assets/b2b/people/Macy-4588720ec118fe38edb626770ed3c006.jpg">
            <div class="info">
                <p class="name">Macy Mills</p>
                <p class="position">Director of Strategic Partnerships, San Francisco office</p>
                <p class="blurb">
                    "Dreamin' it real every day in San Francisco."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Jon" src="http://www.hitcents.com/assets/b2b/people/Jon-26dd074bf5db2eb350ff5757d684af5e.jpg">
            <div class="info">
                <p class="name">Jon Peppers</p>
                <p class="position">Sr. C# Developer &amp; App Specialist</p>
                <p class="blurb">
                    Xamarin MVP, and expert in all things C#; I end all sentences with semi-colons;
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="designer">
            <div class="overlay"></div>
            <img alt="Ada" src="http://www.hitcents.com/assets/b2b/people/Ada-4531d321f1f53212fa770b329959e8f3.jpg">
            <div class="info">
                <p class="name">Ada Beth Oliver</p>
                <p class="position">Graphic Designer</p>
                <p class="blurb">
                    "Country girl with southern flair ? God-centered and stuck in the 90s, love spending my down time with my husband as he plays guitar and I become a master chef."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="designer">
            <div class="overlay"></div>
            <img alt="Joet" src="http://www.hitcents.com/assets/b2b/people/JoeT-340d7de92934e6762ac3d9ee8690bfd2.jpg">
            <div class="info">
                <p class="name">Joe Tudor</p>
                <p class="position">Art Director</p>
                <p class="blurb">
                    I believe life's too short to not laugh at everything, to drink cheap bourbon &amp; to not chase your dreams. Cheers.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="specialist">
            <div class="overlay"></div>
            <img alt="Courtney" src="http://www.hitcents.com/assets/b2b/people/courtney-a9fce6672bd83b068cb6fdd191f0ff77.jpg">
            <div class="info">
                <p class="name">Courtney Cheatwood</p>
                <p class="position">Account Manager</p>
                <p class="blurb">
                    puppies kittens sushi beer.
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="tech">
            <div class="overlay"></div>
            <img alt="Aaron" src="http://www.hitcents.com/assets/b2b/people/Aaron-fbc5154952d934cb70bc405a1ddc8b23.jpg">
            <div class="info">
                <p class="name">Aaron Spalding</p>
                <p class="position">Network Technician</p>
                <p class="blurb"></p>
            </div>
        </div><div class="person col-sm-2 blank"><img src="http://www.hitcents.com/assets/b2b/people/placeholder.jpg"></div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Brady" src="http://www.hitcents.com/assets/b2b/people/Brady-4a365ff79ac61445876e57c08b8bef2a.jpg">
            <div class="info">
                <p class="name">Brady Somerville</p>
                <p class="position">Sr. Developer &amp; Sr. Adminstrator</p>
                <p class="blurb">
                    "A picker, a grinner, a lover, a sinner. I like to play guitar, fix broken stuff, play with my kids, listen to music, go to concerts, and ride my bike."
                </p>
            </div>
        </div><div class="person col-sm-2" data-dept="developer">
            <div class="overlay"></div>
            <img alt="Brett" src="http://www.hitcents.com/assets/b2b/people/Brett-65f5660ba89ce037fa94cca6d2cd4d1f.jpg">
            <div class="info">
                <p class="name">Brett Oliver</p>
                <p class="position">Web Dev Intern</p>
                <p class="blurb">
                    "What we do in life echoes in eternity."
                    <br>
                    - Maximus
                </p>
            </div>
        </div></div>
</div>
<%-- Global footer --%>
<jsp:include page="/assets/static-html/common/global-footer.jsp" />

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />