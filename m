Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32339C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:41:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECA4F6146D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:41:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ECA4F6146D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=marvell.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36X2/TKdWhamY2lc3oYmqb7TcX82A2ILWw9cDbe2oss=; b=to+zrMd4/LQFu3
	3IltlP8HQlCRBb10pQadgFRg7Ve81YfXfsfCOGtJDObhlVpcsH6b5ROD6ha0fTRhQzG5dKcFDhy86
	lQyESaIfBY5ICHjJFBb1hGJRjhG8mxn9LYpSANxnIQvQ6QWhmtIV8rv8H0NgrehHvJb0VrDZxPYmZ
	2jDhDJEEcvqsg7k+oDyj6am2iehq6o7HEb6cnZ4Ly8V3xUXMGWcDah+YFW5XgyTcsqehOxpHL4MJF
	/v2yRnRtZ81QZka1b/Q1nZF4206UaGHiP1TMGd4yZHQkbVD5lqqjt1NuFhsjZCZGOSzOGLkUS2Ux+
	Zdt3FOu+aBen0h4k9Dxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1SPA-00Gkri-Fr; Thu, 08 Jul 2021 11:41:20 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1SOw-00Gkpf-55; Thu, 08 Jul 2021 11:41:07 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 168Bb8Qv003216; Thu, 8 Jul 2021 04:40:59 -0700
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by mx0b-0016f401.pphosted.com with ESMTP id 39ny0g8b5t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 08 Jul 2021 04:40:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ct0uebo7pOa/Mn3Mjk42ScpdeW0suH9tt/lUD0ce0bAJ5NBelzDCy9b2cK/FOTUrhPrrBiF8AALlsg/w/O4JHezbhFsmNSkAlEZR5r8OxqTIqXj8AeAWiN39DNdCxEyW43Yonx/6SdgewnNdb9VY1hlBTVCvyPCDZXozLKAHuXQ87hjb8fHnQTwiF+cEAEmAvDkCyGAD3207VoKA7m4T1TO95ati4MoTJuX3C2aoMUgcowAYvZ7HLC0sKOc/3dH6UBv/l3YtXliyHqPnQiDTutDvrxbPYMbM+EqWGzug04lHsL3TL6IKs+S3McdTigxb5jo+w/wMRiefbTZ1DusBqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1dZdoL6BwWT53pZGgOY9z6HYJn9jza5gsw5Y1TKUp0=;
 b=CZ9pyl6Cj8/42E1TyJbGf0FyYn1bPIT7h2PWJXgLT6Is+mVHOz+JK786zhnjd6Isq4ScZAZeTGBKNthfNNXCh2AIkxSlmgDcBNCROq9Eh5DWd/qmyrhjXgh/Iv8MbCmNHhTffqkvkvF0tJxZwW/0G9kyk6/KE0AY2v/2hxiG2c5jCAR3PmXXlhWBxftCb/J5Ws6rXCU1OFJF5SY8UsIkWf7iSl+AYoD3uzmg/wQyofVBk1GYE4VW5csapIrbaZc9yL3zTz0u6frYRlKwdbr7xozEZdzfRaunJGU7KBXexlJ9qcvMBu9oqDhGokPoNM2xitTedEkeSbX7c96KqEVKDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1dZdoL6BwWT53pZGgOY9z6HYJn9jza5gsw5Y1TKUp0=;
 b=oHXAiWBgR8Sw5qf7BUEkIGMmF/fRnMBPF8+QfWKcOhPzoMujPJ4XCWjivM68Xu+aEM960L/IE0NU6cK+ixgtiWHdjtAlvB73x1kQaWgaTqLPmAK06JSe3z3kDbBWOXistYeCwYimB4qfQfb0Ozes0KT09DKt8AMOuT6gwdKwogQ=
Received: from SJ0PR18MB4432.namprd18.prod.outlook.com (2603:10b6:a03:3af::14)
 by SJ0PR18MB4461.namprd18.prod.outlook.com (2603:10b6:a03:304::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.22; Thu, 8 Jul
 2021 11:40:54 +0000
Received: from SJ0PR18MB4432.namprd18.prod.outlook.com
 ([fe80::719e:99a6:7d7d:3db1]) by SJ0PR18MB4432.namprd18.prod.outlook.com
 ([fe80::719e:99a6:7d7d:3db1%7]) with mapi id 15.20.4308.022; Thu, 8 Jul 2021
 11:40:54 +0000
From: Kostya Porotchkin <kostap@marvell.com>
To: Russell King <linux@armlinux.org.uk>
CC: "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>, "kishon@ti.com"
 <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "vladimir.vid@sartura.hr" <vladimir.vid@sartura.hr>,
 "luka.kovacic@sartura.hr" <luka.kovacic@sartura.hr>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "mw@semihalf.com" <mw@semihalf.com>, "jaz@semihalf.com" <jaz@semihalf.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Stefan Chulski <stefanc@marvell.com>, Ben Peled <bpeled@marvell.com>
Subject: RE: [EXT] Re: [PATCH v6 1/5] Documentation/bindings: phy: update
 references to cp11x
Thread-Topic: [EXT] Re: [PATCH v6 1/5] Documentation/bindings: phy: update
 references to cp11x
Thread-Index: AQHXc+wFTD1ll5ywiEmczX9zICr+SKs48aaAgAACQwA=
Date: Thu, 8 Jul 2021 11:40:54 +0000
Message-ID: <SJ0PR18MB44326C0BE0A369406AA01656CA199@SJ0PR18MB4432.namprd18.prod.outlook.com>
References: <20210708112528.3254-1-kostap@marvell.com>
 <20210708112528.3254-2-kostap@marvell.com>
 <20210708113109.GV22278@shell.armlinux.org.uk>
In-Reply-To: <20210708113109.GV22278@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: armlinux.org.uk; dkim=none (message not signed)
 header.d=none;armlinux.org.uk; dmarc=none action=none
 header.from=marvell.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62061354-b883-4d7a-03b4-08d942053eb3
x-ms-traffictypediagnostic: SJ0PR18MB4461:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR18MB4461606E55A5FD4996A38BBDCA199@SJ0PR18MB4461.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p8w8jKvGVQRjaFw1hXAlaxjqGm5trphVwyp+dcbb0Xc6X+cgfN6RBW/A59GCkVn3Gu9P8MgMkWmjoshgO+zkUofIrih3E8MSN/ac/wXunKVd2X4Sw5hU/Q0gyKd8NlGbIkn/4g1GfjpU//cyh9VjMbkI5JVdIfCJ3TxnommT137bgU2LCOboNBm2jxtXC2lQv6449hXJDp8V9g/tMcFrx9rihrJGMLynqfcZOz57n7lhDgvU4oLK5DEeYLIh70MREWx9zeDyRuTmW4nBAa+kloTS6vP+BM7pEtFz1kji4F0SORGOJrfuMoBIYpEOgXWqP9epsnnUYEGdTC6fUhXvo8ihCDir8QSQYBNvk3IDNnbGN9Z7f1dML+k4Gn7OioA95Zn+bS4z+/VEOQJzxhNf4tpFoucfQF0lAwrA1w46Jd6JfXCwuEndIOjjmP3TcDFWjOh4MQssgRR8PGNhdocEbWADm/FsnFKHgPTC3sWMrvY/g5tcxyDrbGnBq/XgVlhK4IOa3qOb5OOYxVt+0bt1NbJANE773vwd3k5w4RRFoqzSK/R4EyOyrO28Q5UNIwJtLqGcCqDxHbZkwjyftPVzKq7aNFKxQnOcq8+fLonYCtPJS9IFLg7f8f0KAMr9TL4wMHdOiunxNWAkXSLHgR964LblPvaZtuW54ROceSiAcDMX+qwdNgmkRWZ5an48O3oXDUZivT5gMqYVCbc09d9SdthtrzBAwzR9y6/1pzXNMes=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR18MB4432.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(8936002)(8676002)(55016002)(86362001)(83380400001)(38100700002)(122000001)(2906002)(71200400001)(316002)(66556008)(9686003)(66446008)(64756008)(54906003)(478600001)(53546011)(107886003)(7696005)(4326008)(6506007)(33656002)(6916009)(52536014)(966005)(66946007)(26005)(15650500001)(186003)(7416002)(76116006)(5660300002)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2Cnc5MujPHFr8hOMyUY2VMpRSwe+F4JMmEuR86cX1FyVbO49Wrqbh1LhHdLl?=
 =?us-ascii?Q?LXRRQeS+JxjTZs5L/lF+5a8QJHQPLKaUI0Nbdba+x6RlyBkMTv0tlB4mBzN9?=
 =?us-ascii?Q?uZwnWxF/z/LRcSwuCgWTgm/e7CoqOPx2h0e6HOoLm6kddzWk1BXFIbVOasob?=
 =?us-ascii?Q?CSnIeMb4NJP/vRS382qJWr/7zOyuv2fnETU3gfg4Jar5w/y7qMZDsZRA18+k?=
 =?us-ascii?Q?DxtHKNzkqZ0G8eihtF8jd9TVIwZDiDEIwCqJH9/SRPYaR+ValrfC/nqsOAbV?=
 =?us-ascii?Q?nKMUHYVZSzI368jZq3lsYxroDTimEgOg7pQ39IqYR8fr/f8nh3r0t15UQJ2P?=
 =?us-ascii?Q?3RTNlAh+V1IUqJ9mRc9K1bAoQyJLfmdKRVbRj3P2g033JpGYZuqEKBF2iPVg?=
 =?us-ascii?Q?+PIXksHVkq9bt+fmcqicC5XUHWGl1sCNIjc4gfAwQzQrHAu0mOjPtheEB6B3?=
 =?us-ascii?Q?1OP97KaqSHi+dIMIOqysDcSrOzn402G9BY5hzcor/ChtRIvVrCwPO6pwxxwE?=
 =?us-ascii?Q?ZhOGLy3ZBUGMoFKILaDve9rKfuIndonM/vngqPR7YjL1oT5x6c2i0YQ4HFC5?=
 =?us-ascii?Q?hS9178FYJ1Q961OPwFqPCnN1xyTA3aEDU/14GflLm2w6JpOWzmI3DBlHyLi1?=
 =?us-ascii?Q?xVzqYKfS5t2Sl6R570D2L4Ze5Ojy32sT902sASB+opCLHPXJXfNMC7zL3uiW?=
 =?us-ascii?Q?LJjQxNABk9mzBQONyeucLNh9Hf3MgsdFZ39mvd+46XRYARPosvqifQ53B0Ld?=
 =?us-ascii?Q?ve519be5ff5bv4OBezh6CJUriS7eZ8iQshr7hUfkkeF3TITP2sjAMfgfw8Uq?=
 =?us-ascii?Q?oxiD4RVM/CPkdmXvMjkk6umbvlMatISMCatqwTobMCaasEqeKAb38YgzJaKs?=
 =?us-ascii?Q?tyUj+KC6lx805G2HwmynKnpBUSu8kBz4IM/sGIP1imOs7KSpjSqhmZ1AYWOF?=
 =?us-ascii?Q?wBDl9pS9GfsEEfIx5h14u6rdueiqvqvxdTPcKA5J3pQJklCUlHE+1ijvlkRS?=
 =?us-ascii?Q?KfS2dGTr/asWeTZ3vzEPcbtlTXMBN/G0+J+7kljEubpD6c7WlJ5rMhbBWDVx?=
 =?us-ascii?Q?l6J+HOFqs7bBmb4MquHDWR+TgSomSEkT8A5lxlaaV3eWqucuTxLCsXCm/GK3?=
 =?us-ascii?Q?nhdjv3RKnrPbg/SfXFEw8mUuXFqzkzME1kKsYv8m5lOx+FoB1vv5DugCnFCZ?=
 =?us-ascii?Q?ew9V4lb/sg4RwZZPD/CQitKmkJP7SFw45iWM42sD2mKVFksaIRqCNQdlN+l7?=
 =?us-ascii?Q?fqZkdxrnh2qXdL4Xwom68pCaf2SaWW/esVW2oTpRqWwGtUq65pKeVd+TLFHp?=
 =?us-ascii?Q?MEw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR18MB4432.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62061354-b883-4d7a-03b4-08d942053eb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2021 11:40:54.2988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4UOvuagX80sukigh8iCw+dCqPVqS2J0hWrqzIlrHx26H33/1Xxc7376Ilw94Kz+OHES5Y69f0e2WQt5fsOEwew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR18MB4461
X-Proofpoint-ORIG-GUID: WjqIhE2YghY-vPkyTrDHm5mZUq7mimXr
X-Proofpoint-GUID: WjqIhE2YghY-vPkyTrDHm5mZUq7mimXr
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-08_06:2021-07-08,
 2021-07-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_044106_355961_49655DAF 
X-CRM114-Status: GOOD (  15.21  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi, Russell,

No problem, we can drop it. This patch is not an absolutely necessary one.
We just tried to keep the documentation clean.

Regards
Kosta

> -----Original Message-----
> From: Russell King <linux@armlinux.org.uk>
> Sent: Thursday, July 8, 2021 14:31
> To: Kostya Porotchkin <kostap@marvell.com>
> Cc: miquel.raynal@bootlin.com; kishon@ti.com; vkoul@kernel.org;
> robh+dt@kernel.org; andrew@lunn.ch; gregory.clement@bootlin.com;
> sebastian.hesselbarth@gmail.com; vladimir.vid@sartura.hr;
> luka.kovacic@sartura.hr; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; mw@semihalf.com; jaz@semihalf.com; Nadav
> Haklai <nadavh@marvell.com>; Stefan Chulski <stefanc@marvell.com>; Ben
> Peled <bpeled@marvell.com>
> Subject: [EXT] Re: [PATCH v6 1/5] Documentation/bindings: phy: update
> references to cp11x
> 
> External Email
> 
> ----------------------------------------------------------------------
> On Thu, Jul 08, 2021 at 02:25:24PM +0300, kostap@marvell.com wrote:
> > From: Grzegorz Jaszczyk <jaz@semihalf.com>
> >
> > The cp11x references in dts has changed, reflect it in comphy
> > documentation.
> >
> > Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> > Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> 
> I don't think it's really necessary to reflect the syntactic sugar that gets used
> to cope with the fact we have two CP11x dies in the DT examples. They are
> exactly that - an example of the usage. They don't need to reflect reality.
> 
> --
> RMK's Patch system: https://urldefense.proofpoint.com/v2/url?u=https-
> 3A__www.armlinux.org.uk_developer_patches_&d=DwIBAg&c=nKjWec2b6R0
> mOyPaz7xtfQ&r=-
> N9sN4p5NSr0JGQoQ_2UCOgAqajG99W1EbSOww0WU8o&m=8YiUSNpFqlwKlD
> nf3QTGe2_zTXQ_qyiXoSj1RIkXuY4&s=JjkSKqB5ZgxxFXzzx098Zw9w2NT28SuQC
> KUItzqNpv4&e=
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
