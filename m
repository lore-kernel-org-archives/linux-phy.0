Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FC89C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jun 2022 12:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuepzbfcvvZDqEzCS//2vqQxgaDYwWbn/yBn1npACmQ=; b=n6LzGxsVOK1khj
	5qDQUygTWGxKcTWENvF/PmBmc5U8B0swAA5Rp4nax7C6iiq+UFsjre6AGZYgvSDb64Dwi9w92MIKD
	dpZpniF7CVE9W33vrVsf9uKUVB7rNo6w63T1N+e/fnd2MdP13dDcYWGjb5IpSpGZKth0+4YWJzcp9
	NpNt9c+fPFg+oRC72YvFHZpoyBOThAha/YWVDexEs21QFrO6/ErSmBqm+3/ATedAVq/4Hyaz/teeX
	elTYbEj8rP9zf2HlsPh97Xw2+dDCbRafquMqQ1JT25NeDUftbXRJX9nMYx51goI7DmwDMPdlAxMEr
	zvuOF/5jO7t3Xz64gPOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2XzT-00BNzC-UJ; Sat, 18 Jun 2022 12:55:51 +0000
Received: from mail-he1eur02on062e.outbound.protection.outlook.com ([2a01:111:f400:fe05::62e] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2XzH-00BNwf-Og; Sat, 18 Jun 2022 12:55:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z2Q1sZnFP1SZiuxmFmnqxfFn3riuqv7uBZn8RqR4YmD1kHDcXF61ne3NAWpvPwUPu8sDGEiWwXdf+6zxI3icwmbPodVCHj0o3jiMpqS/3bDZqWEbDdEDx6Tw+HTRmKZtgwnD8fHHhQNN5Vg9EUylgReEiPRqDPPi06tD8SFbNWxq6BhZYrUNwkEMFNEsmhjya/gcuFnSCQtQWU/imji67t84kOHGc1cj6tfzdTezr7fXozR9KzBdAOLo13sRhj/f9gJdxCSFkO7yvUo3l3U+WyoZuWhrBCkvilmDk0C+twoEp9Uo1W9uc7IhBWB1HOPkwAkImKhrkTJ7lXVADcQ/VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+j+mf2q80DWY0SFcU7s6mDbffd40dVFNkxK9c0rutc=;
 b=hrhRgJ60+PouhTAckyIZC03RF0BFo+YEbJtVGayHf3Yx71tyDGsWCrKLkPbhvp6U3grsHPe07eQ/jGucErRaERJdbnYVyI+yKyveHTcL/cfqKEMNiOnXwTel6MPOjuXjDUt2aIDdgjdVXE69Al4OPRcOIHf+pkEZSxnme8eSoSz83GyAFd10nvvEioSfczKMMNf4qPgOF6t/1+YjwLMDMjtxdqMqnIYTlRARC5gaV+61ew8uLDgFxaVhBm+BxRY5lO2dEMN1AMw6zPS1J7o3flOAU0UHrVoOghhNjJ/8ZhujGJ9yh+K2AQRfh4uWcYmhmurjO710eIhbbcwa3AMYlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i+j+mf2q80DWY0SFcU7s6mDbffd40dVFNkxK9c0rutc=;
 b=cnzbt6grmXmL/0tBjhC6GzUzuFu3AAjRpDkTKp1mrVdOQrYzwcjfWkSgg/Cy9YZ4QoqNIPjoO26iYDL26GhuHSSflBk7fYqJhDpUewSoVOEho/qlG0jGzfK8qHoBT/hH3g7GkNxeEkdezM8Wjz7//Fosx3/wA92xvrDMJJggDlM=
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com (2603:10a6:150:1e::22)
 by AM6PR0402MB3336.eurprd04.prod.outlook.com (2603:10a6:209:12::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.18; Sat, 18 Jun
 2022 12:39:47 +0000
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::38a9:5af1:f798:5527]) by GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::38a9:5af1:f798:5527%3]) with mapi id 15.20.5332.015; Sat, 18 Jun 2022
 12:39:47 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Sean Anderson <sean.anderson@seco.com>, "David S . Miller"
	<davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Madalin Bucur
	<madalin.bucur@nxp.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Paolo Abeni <pabeni@redhat.com>,
	Russell King <linux@armlinux.org.uk>, Eric Dumazet <edumazet@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH net-next 03/28] phy: fsl: Add QorIQ SerDes driver
Thread-Topic: [PATCH net-next 03/28] phy: fsl: Add QorIQ SerDes driver
Thread-Index: AQHYgomLcMHkDxvWHkew8AbWa8wBda1VF4jJgAADnzw=
Date: Sat, 18 Jun 2022 12:39:46 +0000
Message-ID:  <GV1PR04MB9055F41AD598F85648B54EE2E0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
References: <20220617203312.3799646-1-sean.anderson@seco.com>
 <20220617203312.3799646-4-sean.anderson@seco.com>
 <GV1PR04MB905598703F5E9A0989662EFDE0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
In-Reply-To:  <GV1PR04MB905598703F5E9A0989662EFDE0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2474d637-57fb-4901-a0b4-08da5127a0c9
x-ms-traffictypediagnostic: AM6PR0402MB3336:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs:  <AM6PR0402MB3336FC6418514F4A4A282B75E0AE9@AM6PR0402MB3336.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  xtvk97SskD3UKTEgYqwHvr0HMLKv3iXvL1rL5Lc9aqow0OeqE/+qLKwuBd+s86T0+MoQ/OvkBfHF8Nrv/iHis68U8Q43i0aOWiS+x4TARHizQRI04lmReDqvkJv5SroWJ1slHkFTD+DArhrGrCUrmnlc0sZPkU8LxFLYvQIcmu7d4Yi7CMck8+8530Vc8H7CPFwIPpI6c5dOAKcNWhwjUqwOa4DR7L+2joUHAzhxbR0xhvH2ExtgZQtiU9kpzSE4qdHo9Uq2oBYx+aQfdCV+xFxLmM1uhZavqAHCUx56MP9U+0zHlalznrnPJ/cP4fodL/Om5MscaIxnX7uoDsOJmkhcCkMEL4cysOKC8MlWL9NjsRu6pvvCRTYybuHNGWIKAMIbOAto+A5VTqGMsP4rrNphKUdn6Fyt66CW/U6mS4OqtA5nMyC1O22lCiG35LV6SXLz+HZoktB8WSCak0eISSA4iyznaglea2/KqqLMT2JAyj1EyE3eu0cz3Pre/zz4+L71tUteduaeQWD5BEZd4NOpwH0X7zBQfDKsve17l/Rr2JQfvYoZ4dPmQqV2jVUMeddH859K7Dq5ZSlSAgtp+FU6rrn7A8G900RCpjPWKSDI9GLaCDKsRNg+08vxmhTbpiAPCP7AbwrzMwK60kM1EsIWkwY5olNj3Y7oo5eqO9wK9Z1R++zkc8gkLE6dkBBnPlLHeUt1e2S/geiiZteUjA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9055.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(498600001)(316002)(7416002)(71200400001)(86362001)(52536014)(26005)(9686003)(2906002)(38100700002)(83380400001)(54906003)(66446008)(8936002)(33656002)(91956017)(66476007)(66556008)(66946007)(8676002)(2940100002)(76116006)(64756008)(7696005)(6506007)(44832011)(4326008)(110136005)(122000001)(55016003)(5660300002)(186003)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?cMFH7VUKMjGIEbtorPKctEfMjni+rVkENF/Ah9R5CdHwkPYOd6uQjOLkxh?=
 =?iso-8859-1?Q?PHSZXPd+0xygvBc1+nunBlhrZzxtAcoefdHiI/8/yX53ygiIlO1l6r1VNP?=
 =?iso-8859-1?Q?a6EVdSP9kaHmFGO1/5hqkU8uoFds9NoMc4A7GRI8RWituCnWUOQKNIs+o+?=
 =?iso-8859-1?Q?nNqZQU2eYody7juDW9+WhbM9L5nb+52Fh0lOfar8s5cCp4IpX371oH42pA?=
 =?iso-8859-1?Q?ZzxuoMol2xQJTtyMBIDdJ5Dv/Kh2ohiklsbXmoqho6Mr2YhMnH4dDpKYwV?=
 =?iso-8859-1?Q?wJtr4IUMXHUY/wJgeZl/DQdfTQc6t2ymFUHbZ11AuFkYW/G+OQKGTY3QVp?=
 =?iso-8859-1?Q?bWbeKFcpZt2SUeQSpgUn7E8yc1Q8LUhyoUoxG3qw85RJzBr/C62u97y30y?=
 =?iso-8859-1?Q?ezv/jjADv1ORaAziPrzPPXUgGkeDOH+Hvnw3HzNE1IADfe+QD4eSLua/qO?=
 =?iso-8859-1?Q?Fvc14FU9l6H3hl/8wygtIlNIhZwM1CM9Otq8iWqM2FtBtXIxCqIlJaZlsq?=
 =?iso-8859-1?Q?sMjWSSrCPvkc11Wb2WPB9LGd+x4lrxa/UcM04MH7PbzbZs4BJ7XkHbe+DS?=
 =?iso-8859-1?Q?9NkdzitjHB1RsoqSOCJHNYRnLadQDBD4Me3XvbkjaCi6P5RD/E8KQPJMLH?=
 =?iso-8859-1?Q?QVl2Skx6b6pYioJz+1en6yf9i3qV5PpgubX1hhWkpLptAf6F6TBpDj5VxW?=
 =?iso-8859-1?Q?rfYo5bYG5XPt7VjHiHh/TBmS01+oatBwzltiYsipHvHHfBL0pblLC23NFK?=
 =?iso-8859-1?Q?R+vA02IXP9qLJiQXq4Z8ToWb6OE4P44xU3SVR98iVBEW4aHoGyqQ/8fwR1?=
 =?iso-8859-1?Q?9IWvzGXVsPe2w0ZEFtU8gzChI0Xfzqrs4n1cbMVYC/9io9MZT0ZThF+69K?=
 =?iso-8859-1?Q?5EtTAlA41zpHDf1mvMaH1QO3kZp0je/tzo4WD2/mqJDCUKBssRTB7aFsuI?=
 =?iso-8859-1?Q?S5QHazYB0DVeeSFnaPqrjruzsipNOX3kDnKJ9F2dP/+lWeX5pfgrQ40TKb?=
 =?iso-8859-1?Q?tKWf58mf1C5KrwRlyOfEQYG2i+ECaR6DYlcR1jba19S/9GqWjn/X7WqDSa?=
 =?iso-8859-1?Q?SusoAwPvNTQXLvYOkfxi+FkX0oGoNlq1O11Q1Q+vma3PiD5jIzBsGYAmDP?=
 =?iso-8859-1?Q?hc0wjK1JVMv8C6av1BRwT2lLpNRT2cGoW3Jc6A1SB4vFI5iA7IMKwGS3Ot?=
 =?iso-8859-1?Q?yTLa7EvHLQIvQMl7t62QqVEyheXiQoMFoRQo8XXm7MS/9wN5wX1D2e7fxO?=
 =?iso-8859-1?Q?SbWIpcH3bSkd9BBMnUuHOVT+2h8Y26pj9a5HIFoHwAqGV/m7hPfweR/GJj?=
 =?iso-8859-1?Q?ghONiQveKPlTmRTlwACM1npPf0ymCb6ntNHIvLwuIXwZZ7RYA3FvOZkuDL?=
 =?iso-8859-1?Q?ha05Zt9RotStmTi8amIxhO5d/i+Q45zdWyfJgafCVriPJYFNwxV3k87+39?=
 =?iso-8859-1?Q?fHCF9O0gHQ4IF42VIRVq+StJsB+wenmSobVsOcfioNMAOa0mOaP9rlEFXj?=
 =?iso-8859-1?Q?Qt6HfZEXYXdICjETj4UxBuqHgbmfFa18EjBTWIf7n18Nf9gCGMiBq5DVdJ?=
 =?iso-8859-1?Q?OPNd9y/sC3jDKJumu/zmnJTYoTU/huqK4Mk5iIfK1TFreRIkzUAUaEVB6F?=
 =?iso-8859-1?Q?a1w37A5nRArd8gkHEpl3NNUnfKSvRM2ZDkAdpENQPC4ccDbru7hBXe5Nr0?=
 =?iso-8859-1?Q?FHeXDzTWvKcg/8mUWDUZ4lQMt4qjFmYfFQmzE6EAyBU+H4D3GJMeEmoTsc?=
 =?iso-8859-1?Q?YLOZ40c+Xzh93GHmyIIdhyKvl1wLY2m7q+0S/sCa2hKHgq79l144QX6T6i?=
 =?iso-8859-1?Q?023uM+Qtgg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9055.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2474d637-57fb-4901-a0b4-08da5127a0c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2022 12:39:46.9020
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hosnm66je0JBIlEt2beZKi6T+2A5lKopKvMxxyjNRi77mJGfGgn4x/uQK6VdAGTCkwxqJlTRWzXwD7DNawtAVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3336
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220618_055540_003017_C9288F34 
X-CRM114-Status: GOOD (  47.68  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

> > Subject: [PATCH net-next 03/28] phy: fsl: Add QorIQ SerDes driver
> >

Sorry for the previous HTML formatted email...

> =

> Hi Sean,
> =

> I am very much interested in giving this driver a go on other SoCs as well
> but at the moment I am in vacation until mid next week.
> =

> =

> > This adds support for the "SerDes" devices found on various NXP QorIQ S=
oCs.
> > There may be up to four SerDes devices on each SoC, each supporting up =
to
> > eight lanes. Protocol support for each SerDes is highly heterogeneous, =
with
> > each SoC typically having a totally different selection of supported
> > protocols for each lane. Additionally, the SerDes devices on each SoC a=
lso
> > have differing support. One SerDes will typically support Ethernet on m=
ost
> > lanes, while the other will typically support PCIe on most lanes.
> >
> > There is wide hardware support for this SerDes. I have not done extensi=
ve
> > digging, but it seems to be used on almost every QorIQ device, including
> > the AMP and Layerscape series. Because each SoC typically has specific
> > instructions and exceptions for its SerDes, I have limited the initial
> > scope of this module to just the LS1046A. Additionally, I have only add=
ed
> > support for Ethernet protocols. There is not a great need for dynamic
> > reconfiguration for other protocols (SATA and PCIe handle rate changes =
in
> > hardware), so support for them may never be added.>
> > Nevertheless, I have tried to provide an obvious path for adding support
> > for other SoCs as well as other protocols. SATA just needs support for
> > configuring LNmSSCR0. PCIe may need to configure the equalization
> > registers. It also uses multiple lanes. I have tried to write the driver
> > with multi-lane support in mind, so there should not need to be any lar=
ge
> > changes. Although there are 6 protocols supported, I have only tested S=
GMII
> > and XFI. The rest have been implemented as described in the datasheet.
> >
> > The PLLs are modeled as clocks proper. This lets us take advantage of t=
he
> > existing clock infrastructure. I have not given the same treatment to t=
he
> > lane "clocks" (dividers) because they need to be programmed in-concert =
with
> > the rest of the lane settings. One tricky thing is that the VCO (pll) r=
ate
> > exceeds 2^32 (maxing out at around 5GHz). This will be a problem on 32-=
bit
> > platforms, since clock rates are stored as unsigned longs. To work arou=
nd
> > this, the pll clock rate is generally treated in units of kHz.>
> > The PLLs are configured rather interestingly. Instead of the usual dire=
ct
> > programming of the appropriate divisors, the input and output clock rat=
es
> > are selected directly. Generally, the only restriction is that the input
> > and output must be integer multiples of each other. This suggests some =
kind
> > of internal look-up table. The datasheets generally list out the suppor=
ted
> > combinations explicitly, and not all input/output combinations are
> > documented. I'm not sure if this is due to lack of support, or due to an
> > oversight. If this becomes an issue, then some combinations can be
> > blacklisted (or whitelisted). This may also be necessary for other SoCs
> > which have more stringent clock requirements.
> =

> =

> I didn't get a change to go through the driver like I would like, but are=
 you
> changing the PLL's rate at runtime?
> Do you take into consideration that a PLL might still be used by a PCIe o=
r SATA
> lane (which is not described in the DTS) and deny its rate reconfiguration
> if this happens?
> =

> I am asking this because when I added support for the Lynx 28G SerDes blo=
ck what
> I did in order to support rate change depending of the plugged SFP module=
 was
> just to change the PLL used by the lane, not the PLL rate itself.
> This is because I was afraid of causing more harm then needed for all the
> non-Ethernet lanes.
> =

> >
> > The general API call list for this PHY is documented under the driver-a=
pi
> > docs. I think this is rather standard, except that most driverts config=
ure
> > the mode (protocol) at xlate-time. Unlike some other phys where e.g. PC=
Ie
> > x4 will use 4 separate phys all configured for PCIe, this driver uses o=
ne
> > phy configured to use 4 lanes. This is because while the individual lan=
es
> > may be configured individually, the protocol selection acts on all lane=
s at
> > once. Additionally, the order which lanes should be configured in is
> > specified by the datasheet. =A0To coordinate this, lanes are reserved in
> > phy_init, and released in phy_exit.
> >
> > When getting a phy, if a phy already exists for those lanes, it is reus=
ed.
> > This is to make things like QSGMII work. Four MACs will all want to ens=
ure
> > that the lane is configured properly, and we need to ensure they can all
> > call phy_init, etc. There is refcounting for phy_init and phy_power_on,=
 so
> > the phy will only be powered on once. However, there is no refcounting =
for
> > phy_set_mode. A "rogue" MAC could set the mode to something non-QSGMII =
and
> > break the other MACs. Perhaps there is an opportunity for future
> > enhancement here.
> >
> > This driver was written with reference to the LS1046A reference manual.
> > However, it was informed by reference manuals for all processors with
> > MEMACs, especially the T4240 (which appears to have a "maxed-out"
> > configuration).
> >
> > Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> > ---
> > This appears to be the same underlying hardware as the Lynx 28G phy
> > added in 8f73b37cf3fb ("phy: add support for the Layerscape SerDes
> > 28G").=A0
> =

> The SerDes block used on L1046A (and a lot of other SoCs) is not the same
> one as the Lynx 28G that I submitted. The Lynx 28G block is only included
> on the LX2160A SoC and its variants.
> =

> The SerDes block that you are adding a driver for is the Lynx 10G SerDes,
> which is why I would suggest renaming it to phy-fsl-lynx-10g.c.
> =

> Ioana
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
