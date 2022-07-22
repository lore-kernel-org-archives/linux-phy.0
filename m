Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3CEDC43334
	for <linux-phy@archiver.kernel.org>; Fri, 22 Jul 2022 12:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTc0SpJjX6/qRpWqHVOk/YSDJwcY5EgyC790VMMpHyQ=; b=TGfuDqQGcSkRUR
	l3D6P0KNcM1Z9OLUxVBlX03XrSNvPMDCGKF2jCXY7TKw4SM52twFeAQXks4ruttKapSpdnakSkTuX
	Iyjo/c872cXIPI/yZ3E+R3Z3W2id8l1xz+ytyTg4eYFwzgHk/TkHj0qAmPRkxMKILd4rRo2a/uLH8
	loPiDXjTA/xQ39UxVpDgD/crVhyuOLhysqKXl6YwB+3bUhMx1OWFXjmmwX8HiHGeLorufXjD+rEzV
	XZXDGegrAZoHwvKT4fp1f9VaBgb0yFb1he6jGdRa1uD9wYFTrC/G4iPqLDLsrPJqUioaAuoXRDpmX
	nCMVOi/UFMGUnFTOEjHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oErym-004PLC-B9; Fri, 22 Jul 2022 12:42:04 +0000
Received: from mail-db8eur05on2062.outbound.protection.outlook.com ([40.107.20.62] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEryW-004Oym-9p; Fri, 22 Jul 2022 12:41:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+U5VuEhAMIjtBgi9kvNnzy90uSP1PG0yyL0U6GhEnsBnn64aF77dinKmBME5vt+KpkOFiS2Ym7tvskKo6wnSd8ljpIUOT+/IV7hIlUz75AGu7lai8WoBZp48bVHob4nnEoUP6deYfeeIF/1tkj0hu3MPHn9JrZ5nHBEfcaB1qDt7+UdaLAD61cmjtY43a2krWHMbIk50jSUFw5i+ssFmYdk1B3O5oh6TaDO+Xh6FEB3Q8FlGopRDrWthmBz3cBTXbrGGQe167d1iPWnZKXMcgNVnXUOx/Zi/jVMbJJ+bhCWOmWsKuxJKq59qKwPdmd++/OXevRk0l9vQEr/gd/GTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5CtmxDYE1NcR5x5AeY2UuVY3z8ujVP2ZJO75M/4djA=;
 b=fO+LURSXRSLluaVAT741gsJBHo5FdlivDGv+XGC6++JRq8o6f3150R9yjjCW4xsYVW/BT4HtwUo8JuHqT1UV0W+G1KJj9/dIhFFqnShOgVuvKLc+OHGrdtCz+N9JJh7vAkwkeh3Gay0w/ymqiQfQ6WngNnQ3ZLHLgENpiYcL4q7+TyPgI1cmDsp4FqLYrq79C0iZEDSvndjSD0I7Uruu2sY7ZPdenof8D0FGnnLkVoh226h8tep4lC8FXGka7mc15a6azjAanHFDxkZIj4Wpx5G+lnYv75o9SRCmHqZsLqWZXmuPasS3kQKV78wMs0z3+eA/9vwSvKS9QxQPwUzR5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5CtmxDYE1NcR5x5AeY2UuVY3z8ujVP2ZJO75M/4djA=;
 b=iZen1UMScTLt7F+PZDsKMLWO7Kv5pSnYlsWlfAXAXKMehcX7zJD05kny3oIhCN23yRQFVcCmfrupGR0P6LROkb082lOgS2J6WnWnFwD5a7lUk8FqYw4Xr7zsoEwKDopttIEH6dABE/jdk5B7Vby4xfBK3AcR9oN//gwZjjb5qcQ=
Received: from VI1PR04MB5807.eurprd04.prod.outlook.com (2603:10a6:803:ec::21)
 by AM6PR0402MB3688.eurprd04.prod.outlook.com (2603:10a6:209:22::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Fri, 22 Jul
 2022 12:41:40 +0000
Received: from VI1PR04MB5807.eurprd04.prod.outlook.com
 ([fe80::1df3:3463:6004:6e27]) by VI1PR04MB5807.eurprd04.prod.outlook.com
 ([fe80::1df3:3463:6004:6e27%4]) with mapi id 15.20.5458.018; Fri, 22 Jul 2022
 12:41:40 +0000
From: Camelia Alexandra Groza <camelia.groza@nxp.com>
To: Sean Anderson <sean.anderson@seco.com>, "David S . Miller"
	<davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Madalin Bucur
	<madalin.bucur@nxp.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Leo Li <leoyang.li@nxp.com>, Rob Herring
	<robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Vinod Koul
	<vkoul@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: RE: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
 bindings
Thread-Topic: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
 bindings
Thread-Index: AQHYmJdO9OJQL8uRzkOwnuesK8wAT62I4DBggAAfFwCAAV64UA==
Date: Fri, 22 Jul 2022 12:41:40 +0000
Message-ID:  <VI1PR04MB58076F8E57D04F5F438385DCF2909@VI1PR04MB5807.eurprd04.prod.outlook.com>
References: <20220715215954.1449214-1-sean.anderson@seco.com>
 <20220715215954.1449214-47-sean.anderson@seco.com>
 <VI1PR04MB58077A401571734F967FAF12F2919@VI1PR04MB5807.eurprd04.prod.outlook.com>
 <5f32679a-3af3-f3ba-d780-5472c4d08a81@seco.com>
In-Reply-To: <5f32679a-3af3-f3ba-d780-5472c4d08a81@seco.com>
Accept-Language: en-GB, ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d206c661-dcd1-4423-4017-08da6bdf869a
x-ms-traffictypediagnostic: AM6PR0402MB3688:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  Wq/vq5oC3CUUdMoJq6X0PgJyGAU/cjsWgrVDrwcWJAdHXBThvOi2TiRkYqBGrLr+rFaJaobfpbT+Hhqy3idlha51jqV0nLasG1ZFMFHaEORdzlmJ3jtJ3OqkRuEQxw/DKA8z0gTDQMHtepkaJQG++4GBXD18TZ1b255c/oeyMWAZn/VCJ/w4mmoiE94H70V7QPqCjgcqx90ItQ1vKokBYuPXJ/MFrVXW02RS2KwapBd2yIlulzhlfBLhRPVVwFLZUwUqfFFtjWioOgQ/OPy47dId26P3X5TPM2oV86VRAHbmkeLsacKr+FcN1sxh+gF34QXHOMXxoEyDAG5in435XvYRigaN7Jh/3ZmmaO58vsqc4RXRhF83NNElG7AWV2WAZtWe7Ya1XXpO9UCDrGw9ddVbK/QvMW2xFshEaNfLIeibq55iE/9UpWdmATpF+XqXWSrUHuzUK1cXhFvCIHshU2OzA7/ZdH2KbXi93/sjz1MhWDPzRePwaqGOrdu5zWdE/b2ZGXcQTMSgg4HVXuXuyXRrITPij72LJW6Jm5hUPY4OPRs8FbwkEEJgom7UHrsTvx/cpedTGLHxO9xdFldXtsNHQMuCXH/gNONUczrVAMQyxgK2ah7f3m5zVITUDdUcJxzI4WfeaS/qupCFxMFH+UA811lCxg7Y3vQZkhiFUAEUcbpuVsPfk2bs0C3m8f/m2+RXMS1V9sfIJBuy6SPrC8yA5VhLJAZwZHyGxkNYgS8tnL3KHTU4lGXMr81XxMgpW7vDdAGHhqXNkCpt5Eb8BcIC5tcYiOYt2rgwnV/h173MIZniUZh8FfCP5cNW0Phz
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5807.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(136003)(396003)(39860400002)(346002)(376002)(122000001)(66946007)(8676002)(76116006)(66556008)(55016003)(316002)(4326008)(38100700002)(71200400001)(66476007)(64756008)(66446008)(38070700005)(54906003)(41300700001)(2906002)(26005)(52536014)(5660300002)(9686003)(186003)(53546011)(6506007)(478600001)(110136005)(7416002)(33656002)(86362001)(7696005)(8936002)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?Rmhpd2Q0NTdWakFLVlhhdmdrdzVQT1E2dW5xQWpMWDBOMHZ6eXB4NkYzUXpw?=
 =?utf-8?B?cGJsS3VGUWhlUnZNeCtydEFsbmFQYkduWkpWUmpIUW43Rk9oTUIzUW5UMlRv?=
 =?utf-8?B?L2Q0YjlFbER1R05tOUhycXU4THRvbEVxQ1o0ZHhwekNmZG9iQ2lRWVAvOW02?=
 =?utf-8?B?Vnc1dUhOUkFSOHJVYXBwZkZZWXR1WEwyb2FRMytwYjd3YWI0MGJncFJNVWV4?=
 =?utf-8?B?R0Zvd2huOUIyY0l5aDArZ0kxOGp4aTFjZFB2bTAwY0EvekxrRzlLcEFoMjZ3?=
 =?utf-8?B?VlpYUUVobGk5MWFKaWwxOWZhd0tmSE9yclVEUnNkbUp1MHBZWGhJOUhXRU9G?=
 =?utf-8?B?cmVOWC9jak9KWWxUVG40TGcrb0hDY1l0VTN0bDlHOFJmVVBpdVVybDNZclgy?=
 =?utf-8?B?Yk1GK29rWkJtRGRCc1U0YkJmWEJsaWdKbjdKT3FlWkxVQy8zWjRXQnFra3Fw?=
 =?utf-8?B?SE90NStZZnV6SmU0ZUgwM213b1MreEJXWDYzRkErZmpVTlhON1lMcU9aYmI0?=
 =?utf-8?B?TTRua1UvMFZ6MjlaanUyQ2RTMWVRbnp0ME84OGZWV01qSnR0eTUzQUgzZmhv?=
 =?utf-8?B?TjA4NUI2Z05NaCt6V1NBelIvNGRFazFlaGoranU0Y0JwcXFGaGU5VTdpc0tX?=
 =?utf-8?B?YVg2SUk2dlU5bi8vVlV2Rkp0cVJEQlMvcWF0cnZEaWdSVEFGUmxUMkZpNnFh?=
 =?utf-8?B?cXRTWmIrQi93VHJBditmK1cvNVRJeUk4K0FldUxSUUFYTDdFcVVJR2pnbytP?=
 =?utf-8?B?b1BEZGVlN3RxL0EydWMwZUFhK04wY2V0anhzTkNxdVRVOTkzT21zTVZzeFc3?=
 =?utf-8?B?L2h2elJvN2o1czFCand2MjVUaFFHREYyQzk2WU8zK2p5MnJ6TjU5cVlrVjFw?=
 =?utf-8?B?VEZhby8vT3UxbzlSZ2MzUDhXZmZOSEF6VEhTdzZvaGFtWFdvSXVVbWhQSVFS?=
 =?utf-8?B?a3RMYndiVGFjak1WN0JKalU2MTVaRmVJSmRmeU1FSmFBVjVKejlndEdkU0gv?=
 =?utf-8?B?RkZJMmpoZUFQVXBna1pzWW50Vjl6YVFnMGl4VDRNem51UVlqL1c2U2VxNUdL?=
 =?utf-8?B?QW45YjNsemVPdk43a0k0VElaRUJHQVpEQXJjT2MyN2N0MHVlZEVzUWtidmVu?=
 =?utf-8?B?RTErUXJnR2pSVHU2eDlVYm81emRmaCtIaTdYWFllRGZZeXFBZ2o4OExDeU1G?=
 =?utf-8?B?bnppem9EWEdPbERMT1hzNnprTnZXdlNHQURYZC9PNnRMR05nRFl5SGhXZ0Fk?=
 =?utf-8?B?V0F1MEIwbndJeXh3NXMwcC9YbkpKR1lJQlBpbjJKR3VyNE05ZkJkcmRZdjhT?=
 =?utf-8?B?cFdRQmRSN1V5aVYwVlcrRlNNMWJ3UEU3ZTBiUmtvdGxWL2ZaZ0U5bTBFb05F?=
 =?utf-8?B?RWNQOEp3N3BiS1B3bFArcmljakZXT1UvZ3lmekRJLzhYbEIwOUQvMk15S3lL?=
 =?utf-8?B?bVlBcGh5dHEzbmtVdXp0alhKM2lJMDlnWE9QM0FSZnVaOG5sdE9rekFMNHVo?=
 =?utf-8?B?WHMwNW1zRzlPMTBWQWtsL2cyTVA5eDBNMlZyNTVCWnN6bDMyT3B0TERldWps?=
 =?utf-8?B?YVBmUVpRUE5Jb0J6ZjFsbHd0SVF6R3NaOTFqdnhWcklWckY0ZS9qOTdKdFI1?=
 =?utf-8?B?K0hKZ1gwU2JXZ1B3VHdmNWh2RWRVRXJKb2E1RDZBeHNiNXVrYVVlRFNWZ3NJ?=
 =?utf-8?B?RnNVdmF3UzlPUVZXUkdvQTJqc2t1aVFiejZ1WWpLd1hPNGhPdUhianBNb1R2?=
 =?utf-8?B?UHNST1hmZ01uNGdFclRSSmY3WEFma2Y3VS9IRmdMUDdtOVVpZklqaHNuNkx3?=
 =?utf-8?B?blNRTFZidUFsK1QrY0dZY3QyYXk5cSsvRDFrRDhySzdKU2tnRGk0RlBDQndH?=
 =?utf-8?B?ZEY2ZGJ5QlZZKzgvNHZiQ3JUMUFYd2lzMWdlUzRqRUVEb1VZNElaQlVYTG4y?=
 =?utf-8?B?VGYzK3Znbis4RDRRaExxcCtpdjV4RC9uWkEwM3d6Ym9mOHFmbkxNU0NGUk0y?=
 =?utf-8?B?bjFXZEl6T21xRUo4QTBCR2l1S213SjA4VU8wQ2k3TzJQeUY4L1NIeFpucytu?=
 =?utf-8?B?ZldSNC9ocW1NSThqMGdlOG83TmVqWHBWSng3bm1ZM3FYRTMwUEpnMlowVlBI?=
 =?utf-8?Q?mhucO7okOOVdj8IAo1WOErAoj?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5807.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d206c661-dcd1-4423-4017-08da6bdf869a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2022 12:41:40.6012
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KfIrc3bnMmzcDKDeUbtCXgoPhEUwYRhGyLH2YTIMpbSX7DsGRWSyLvF6lWESc6ub0yJbqt2sOEFSW365EegZNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220722_054148_390857_4311838A 
X-CRM114-Status: GOOD (  27.33  )
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

> -----Original Message-----
> From: Sean Anderson <sean.anderson@seco.com>
> Sent: Thursday, July 21, 2022 18:41
> To: Camelia Alexandra Groza <camelia.groza@nxp.com>; David S . Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Madalin Bucur
> <madalin.bucur@nxp.com>; netdev@vger.kernel.org
> Cc: Paolo Abeni <pabeni@redhat.com>; Eric Dumazet
> <edumazet@google.com>; linux-arm-kernel@lists.infradead.org; Russell
> King <linux@armlinux.org.uk>; linux-kernel@vger.kernel.org; Kishon Vijay
> Abraham I <kishon@ti.com>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Leo Li <leoyang.li@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Vinod
> Koul <vkoul@kernel.org>; devicetree@vger.kernel.org; linux-
> phy@lists.infradead.org
> Subject: Re: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
> bindings
> 
> 
> 
> On 7/21/22 10:20 AM, Camelia Alexandra Groza wrote:
> >> -----Original Message-----
> >> From: Sean Anderson <sean.anderson@seco.com>
> >> Sent: Saturday, July 16, 2022 1:00
> >> To: David S . Miller <davem@davemloft.net>; Jakub Kicinski
> >> <kuba@kernel.org>; Madalin Bucur <madalin.bucur@nxp.com>;
> >> netdev@vger.kernel.org
> >> Cc: Paolo Abeni <pabeni@redhat.com>; Eric Dumazet
> >> <edumazet@google.com>; linux-arm-kernel@lists.infradead.org; Russell
> >> King <linux@armlinux.org.uk>; linux-kernel@vger.kernel.org; Sean
> Anderson
> >> <sean.anderson@seco.com>; Kishon Vijay Abraham I <kishon@ti.com>;
> >> Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Leo Li
> >> <leoyang.li@nxp.com>; Rob Herring <robh+dt@kernel.org>; Shawn Guo
> >> <shawnguo@kernel.org>; Vinod Koul <vkoul@kernel.org>;
> >> devicetree@vger.kernel.org; linux-phy@lists.infradead.org
> >> Subject: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
> >> bindings
> >>
> >> This adds appropriate bindings for the macs which use the SerDes. The
> >> 156.25MHz fixed clock is a crystal. The 100MHz clocks (there are
> >> actually 3) come from a Renesas 6V49205B at address 69 on i2c0. There is
> >> no driver for this device (and as far as I know all you can do with the
> >> 100MHz clocks is gate them), so I have chosen to model it as a single
> >> fixed clock.
> >>
> >> Note: the SerDes1 lane numbering for the LS1046A is *reversed*.
> >> This means that Lane A (what the driver thinks is lane 0) uses pins
> >> SD1_TX3_P/N.
> >>
> >> Because this will break ethernet if the serdes is not enabled, enable
> >> the serdes driver by default on Layerscape.
> >>
> >> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> >> ---
> >> Please let me know if there is a better/more specific config I can use
> >> here.
> >>
> >> (no changes since v1)
> >
> > My LS1046ARDB hangs at boot with this patch right after the second SerDes
> is probed,
> > right before the point where the PCI host bridge is registered. I can get
> around this
> > either by disabling the second SerDes node from the device tree, or
> disabling
> > CONFIG_PCI_LAYERSCAPE at build.
> >
> > I haven't debugged it more but there seems to be an issue here.
> 
> Hm. Do you have anything plugged into the PCIe/SATA slots? I haven't been
> testing with
> anything there. For now, it may be better to just leave it disabled.
> 
> --Sean

Yes, I have an Intel e1000 card plugged in.

Camelia
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
