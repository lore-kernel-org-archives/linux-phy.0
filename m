Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1130DC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 04:30:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A10256115B
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 04:30:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A10256115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRuSsOLkVrtW6WGvYxbRxbAUqQ7ZcpoQc80RqTx3vF4=; b=agCBF0qVK336Wf
	uerVJADTwgn7w6fsMwClm7BodXpiCcW0Ya9/f9f1kjSGG4btCXiN/oiG2WAHKHw8QbRUibwYsTqcC
	yEohQGPrtZdl8Z4Nt4AJxHSsqioEimEYWweA5Gtir2PltlnTjMcSWRGg4vVGtWVqscyWrx8tCSJgq
	gLMIa6KEvbNbYyTJbn2yAb5meYYKBdTQ1lL+H3N1ITjyqTc3wsEyURG2G0R2lusMHWBtpGAQDHNoE
	1k/g4Vvsvmj6ya/fLZT0e5Znf+qY/BAVrE+A7DrOs+CqUHFrEhAB4g0RqE4Gi0qQDkK42nA/ScE65
	k5MRjCo2kdINMu83rNpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdmCK-009iHT-4d; Fri, 22 Oct 2021 04:30:28 +0000
Received: from mail-eopbgr10062.outbound.protection.outlook.com ([40.107.1.62]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdmCB-009iGS-K1; Fri, 22 Oct 2021 04:30:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQt0YptT2285OjD43HTmEVg6F7mMvXewk/X4cNF+NzbrFNadE1slZoRSxYykugx7cVV5CiaeRtj1ANucygRWqoqbJAc1c9cWcAO1l9vUqmfUHlUJZOHlzTE32QHBtQXS/wBDr+VHWXQnPdfl5842+EIIPHM4aCYYpZBbPMEDc+soOPjUjdq9rt5cVk3rb7jGCXgjAp6bLuZBxD3Ba8HSWPtc4Nx9cZruFzLS04x7AXrpzlw9tTZ8JyouN5Rh9Lk/J+2lsr3YtPnySrkWI5cAbVLPJaFRTK4Yat9WFxdz0JUf4/OJTDlPQF0ElLegSYsmCrKz8f/h1R+17uZaObyJPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N57cP8yAuv8Z8ClstyPMDIJyWGyKjGM0boLuRBUNuC4=;
 b=kmVY7KOnzyPkyMubcLGrZ8Y4WPUyPk5HTZOdFC6w1dlLLJ3b+hdFHMzVt1UgqJ4HeTTH3bLbMnrCKaRh3oMwoWUHaHviiHBXe40E1wZfcv9OT12ry54/FbVPPHcbosZ0+g3kNZXprU0RDcjzuUUHb3ycRCZEsC1iFSG2d3GyKRPskTlCXoFMWJx1+OL5wAW8FHF1KZFnDf11bu+d2n/ut7LCv5ISWOMVCMD9MWp1iNDZ7UNYAm1vQk+lGJi8E+6Gn1qfbQaXM4bPp/M4Exog9QPLqOtB/DdDHi2pIjmgz5AVpOuh71PrDppPCjSl+mJGXkzoyXmKgkT9x0v9Kr7TyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N57cP8yAuv8Z8ClstyPMDIJyWGyKjGM0boLuRBUNuC4=;
 b=jz/FosVq3jVNrdtwkeVkPo2dvZDftZt4TSpUgYLVBtME7mbN0dnA2Wf0TA4LAfZBe7sI6rq7HcS6hs7dbxmlA7vs1f35VSgZVqUJxPcmykt4jc/FQpOrAutK9NY/EsrAtQ83YYoF5jBn0p8xw6Uk1VBdkwh8R7dmXtknwAR5DD8=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8642.eurprd04.prod.outlook.com (2603:10a6:20b:429::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 04:30:13 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 04:30:13 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, "tharvey@gateworks.com"
 <tharvey@gateworks.com>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
Thread-Topic: [PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
Thread-Index: AQHXv0hnD6WN1xW1r0GrwUBjOXYAL6vUbfkAgAnmn1A=
Date: Fri, 22 Oct 2021 04:30:13 +0000
Message-ID: <AS8PR04MB867663E9186D1CBCFC14BDD28C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-6-git-send-email-hongxing.zhu@nxp.com>
 <b01729b54f43c300307fbf71ac8ad7c973e81f34.camel@pengutronix.de>
In-Reply-To: <b01729b54f43c300307fbf71ac8ad7c973e81f34.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b05eb03f-a64c-4006-c716-08d99514a406
x-ms-traffictypediagnostic: AS8PR04MB8642:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB8642585638D85C5AC8177C578C809@AS8PR04MB8642.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2YSdHsNy6qmzyEAb4yVWTzM77l9FEiUmjX6z04JEAG6uNhz92JHzLlwaKuA5p84673gO49B2G/A2pcw0fF0KF0S1buejWuohLNs6moW7RmDcvxUrj56LSKTGdXM9BfCayOeyJApaZzQXWa6v/j6UpzsefndQEhNSpUetQtDqGOad4gr7Lo5g4iNdMI1QnJ+J/igkmIHVWkvuCb72Ue/0A4rgqhzObnA7uRqlGOvYcxMaYOb0AhywpODNGKlEtPN7inev+a9KbHBmKs2DCpyZJrJQjghlrrTT45SF3c64kWb64S2CRGWbdJXcM25slQfJEzzg6bYZ3urJenIQdlCEV6sVRqx38M+6At9rkZGMFk5TQpQID8DASrjfTowb8Q1JXw94SVXCcbMBgiH8Mj3mlbIgxcHHPmdfHgNMA6BM+RVf8XRfmij5hiIiclRUB1OIFf52hUGCppeQD/ynj+2AEQm3EAiA2go6vH62S9OWHIoQFBD8gRSvniEBB3mijd4mifqUws3pyD7trZznExS4YKMPfQPeDfnXjBCqeL4EjnZ5uB3wTxOQL2oy2xUsZNiQtQiJrv6jm14F0sGfE0Rc6kBSbyxOe7HkwO2cnOj3/gMqppNOxD4HzuYLiXioKg5lpwJhmee52BquORoQr9b0JvDV24YRUybBJilyK41u26t4LOVeEaUzOfumZt3CiSrsT6pAEjATL1dY6gpPDx73rA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(30864003)(7416002)(186003)(66446008)(508600001)(7696005)(6506007)(71200400001)(110136005)(8676002)(38100700002)(53546011)(64756008)(66476007)(52536014)(122000001)(26005)(66556008)(66946007)(76116006)(9686003)(38070700005)(33656002)(86362001)(2906002)(4326008)(8936002)(54906003)(55016002)(316002)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RW5INmE0UDFXUUN6dmtsY0Z5V2MyaXJqYlhEVGxJdE5Dd2VmS0FoTTdKcVVk?=
 =?utf-8?B?VlFURzFwWXR6U0xiS1NncTNSYWlybHp4UG9SaTBkVG5OVGJaZDVlZ0JKKzJa?=
 =?utf-8?B?KzNrRDcrcEUwYnB3Q29qSUpvYW1Yb2dCMUd0cGlwaDBhTUJZM2g3aWNzTTFK?=
 =?utf-8?B?NG9vSnFUaFYzaTJwWTZ4N2JIZDR4eU9jdEhSOGhpcjZ1ZUNjbkxKWktycEho?=
 =?utf-8?B?RkQ2cjVIY2xHMVMwYnNSSHZVanUvdEF6cC9OUGZPa2dndHhNQXQzeDVuemNa?=
 =?utf-8?B?WHFYei9qeFdQTnpoOXpVV05rYWY5aFhoeUFFdFNSemtOeVpSdzVTWDhaOFhx?=
 =?utf-8?B?R3pTL2JscGVlL1BTdWhoN0FPWVlKK2w4NmhMUmQxWisxdklaMVQxWmgwRE1T?=
 =?utf-8?B?OXptR3JIemQxNjNwSkFjRzk3VE1UdXFvWHdSeHpOandRRDlRemNuWFNITXVM?=
 =?utf-8?B?TkdUWXBaTlRMRHRsOWVlWUw1ZWYrM01iOEFGRUxvZjNKWUhwdnZLbWtGV1dQ?=
 =?utf-8?B?d3Nha0phU3EwcE9JeE9ycXd4ME43NTlXTjlkQmxGMi9zUUthdGRoZ1F2b3V5?=
 =?utf-8?B?OCtBejdualdiS05oSzFxaWNrSXFjSDltRnJpMnFRVTVIbklTR1hLbGNIL1h4?=
 =?utf-8?B?dWFydHRIUU5vUXNoYmhEV2l1QlBwQ3ZnV2xWZGU1N1MxMG85alpOSUZyL0JK?=
 =?utf-8?B?VFdjVFRtelpIaVhEYVBSampPdlFhaXVtVlgwMS9NN3RrejFabEdybDUxSTZ6?=
 =?utf-8?B?SjhYZVg2Kyt3enpXTlZpVzM3VjNNd1VRbEVSbkVSamJxejgyNGgvOWRDVWxI?=
 =?utf-8?B?TDEyem5GdnM1ajJ0SkZQTnVqS0FtelNjTk5wc2dIR2NVcTRMYnhzMkIxeE1h?=
 =?utf-8?B?K1pTSXNKRi9WTGZsNEd6TFI1STlUejJoWTFVM0RXOFZnaVoxdWZianBrMHda?=
 =?utf-8?B?RGV5ZitpbU0xSjRGNlZ6Z2RQVURUd25DRm1rOVZnbGJLMVZVam54dmhTaFhi?=
 =?utf-8?B?akdldS9WUUowNHViT2tsZmREdGZFYnBtckExL0hMNTBRNmxPamVVaTNKSy9N?=
 =?utf-8?B?MmVYbFBKdDlRdTR6T0JZczFFKzV6allqRGhSd0c0WDlQNlRsVnZtalMxMnVI?=
 =?utf-8?B?MlNXcnJTOUNqR3ErUkJlclBNeFpNWUFlaDY4MTJMejhmZU90MnQ4S0FYOXRy?=
 =?utf-8?B?UnF1ZnFuekVnaHhYL2V5dnFRWklKR2lkWEorV3Y4R24yQjRwdnVKTGcxdy9l?=
 =?utf-8?B?WTRHMGI1RmFPUTF0VE9ZUVp0dG9PVGhzOGxOZjFKWlRYZkcvVG9GR2hid3dP?=
 =?utf-8?B?MkRNYmNUNkkyV1NCMi8rQ2ZpQUN5MW9EcFZpaW5LUzdaVWRnSlJmeWdqN25Z?=
 =?utf-8?B?bEduZVJTbkRORUdsa3lLdXRCWWNYNENVN083RkpLSTVFRGxjaEtyT3k5WlZG?=
 =?utf-8?B?RzNiSFY2ZzdmYlpwTmNmYklrNHhlTWtSemFBYnpJQnNKclJBaVNSNmtGNlE3?=
 =?utf-8?B?clhUQVVUdkhKSElGT1pESFVNY0JUUkFkNkRKUEJ6dSt0ZTc1QkEzSENGSitU?=
 =?utf-8?B?VEJ0UmNOcFVGZzRDVXYzcmFkY1lWYUR0ZVdYMGVEZXM0T1J1dzZRbzh2Vkx3?=
 =?utf-8?B?UVZtZjFLaHM2LzZtM2wwVmk0RlRkdi9Tb3JVZGQwUVVBWE11SVpTUENHRFUw?=
 =?utf-8?B?TCtSUlZUeEpCdkhYcUphUUZhQjVEck5DZmdFTjEvM2hGbTFxNzJaVUdUUE0x?=
 =?utf-8?B?cFJsRm04d0xja1l1c2V2MCt4dnNxakgwOGlhNlY2ekJvQ2hVWHluMlV6NlM5?=
 =?utf-8?B?cTY1NUZCek9YT2NUaFh3ekdUckNac1ZhSnVRQzY2NUQrVitVOHM4RHpFaHBp?=
 =?utf-8?B?Y1pGbmVSNWNxQzU3MmxOTEhrRmVGWDRDYTZXMEpxbjY4LzJKN2dzaElMVjQr?=
 =?utf-8?Q?Vo/p0tn0mnI=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b05eb03f-a64c-4006-c716-08d99514a406
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 04:30:13.1924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_213019_886104_1C24F705 
X-CRM114-Status: GOOD (  31.08  )
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
> From: Lucas Stach <l.stach@pengutronix.de>
> Sent: Saturday, October 16, 2021 2:56 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>; tharvey@gateworks.com;
> kishon@ti.com; vkoul@kernel.org; robh@kernel.org;
> galak@kernel.crashing.org; shawnguo@kernel.org
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
> standalone phy driver
> 
> Am Dienstag, dem 12.10.2021 um 16:41 +0800 schrieb Richard Zhu:
> > Add the standalone i.MX8 PCIe PHY driver.
> > Some reset bits should be manipulated between PHY configurations and
> > status check(internal PLL is locked or not).
> > So, do the PHY configuration in the phy_calibrate().
> > And check the PHY is ready or not in the phy_init().
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  drivers/phy/freescale/Kconfig              |   9 +
> >  drivers/phy/freescale/Makefile             |   1 +
> >  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 218
> > +++++++++++++++++++++
> >  3 files changed, 228 insertions(+)
> >  create mode 100644 drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> >
> > diff --git a/drivers/phy/freescale/Kconfig
> > b/drivers/phy/freescale/Kconfig index 320630ffe3cd..fb08e5242602
> > 100644
> > --- a/drivers/phy/freescale/Kconfig
> > +++ b/drivers/phy/freescale/Kconfig
> > @@ -14,3 +14,12 @@ config PHY_MIXEL_MIPI_DPHY
> >  	help
> >  	  Enable this to add support for the Mixel DSI PHY as found
> >  	  on NXP's i.MX8 family of SOCs.
> > +
> > +config PHY_FSL_IMX8M_PCIE
> > +	tristate "Freescale i.MX8 PCIE PHY"
> > +	depends on OF && HAS_IOMEM
> > +	select GENERIC_PHY
> > +	default ARCH_MXC
> 
> Not sure if we need this default, but if you want to keep it add at least a "&&
> ARM64" to not enable it on old 32bit i.MX SoCs.
[Richard Zhu] Add the "&& ARM64" is preferred. Thanks.
> 
> > +	help
> > +	  Enable this to add support for the PCIE PHY as found on
> > +	  i.MX8M family of SOCs.
> > diff --git a/drivers/phy/freescale/Makefile
> > b/drivers/phy/freescale/Makefile index 1d02e3869b45..55d07c742ab0
> > 100644
> > --- a/drivers/phy/freescale/Makefile
> > +++ b/drivers/phy/freescale/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)	+= phy-fsl-imx8mq-usb.o
> >  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+= phy-fsl-imx8-mipi-dphy.o
> > +obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)	+= phy-fsl-imx8m-pcie.o
> > diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > new file mode 100644
> > index 000000000000..317cf61bff37
> > --- /dev/null
> > +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > @@ -0,0 +1,218 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2021 NXP
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/delay.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
> > +#include <linux/module.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +#include <linux/reset.h>
> > +#include <dt-bindings/phy/phy-imx8-pcie.h>
> > +
> > +#define IMX8MM_PCIE_PHY_CMN_REG061	0x184
> > +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_EN	BIT(0)
> > +#define IMX8MM_PCIE_PHY_CMN_REG062	0x188
> > +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_SEL	BIT(3)
> > +#define IMX8MM_PCIE_PHY_CMN_REG063	0x18C
> > +#define  AUX_PLL_REFCLK_SEL_SYS_PLL	GENMASK(7, 6)
> > +#define IMX8MM_PCIE_PHY_CMN_REG064	0x190
> > +#define  ANA_AUX_RX_TX_SEL_TX		BIT(7)
> > +#define  ANA_AUX_RX_TERM_GND_EN		BIT(3)
> > +#define  ANA_AUX_TX_TERM		BIT(2)
> > +#define IMX8MM_PCIE_PHY_CMN_REG065	0x194
> > +#define  ANA_AUX_RX_TERM		(BIT(7) | BIT(4))
> > +#define  ANA_AUX_TX_LVL			GENMASK(3, 0)
> > +#define IMX8MM_PCIE_PHY_CMN_REG75	0x1D4
> > +#define  PCIE_PHY_CMN_REG75_PLL_DONE	0x3
> > +#define PCIE_PHY_TRSV_REG5		0x414
> > +#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP	0x2D
> > +#define PCIE_PHY_TRSV_REG6		0x418
> > +#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP	0xF
> > +
> > +#define IMX8MM_GPR_PCIE_REF_CLK_SEL	GENMASK(25, 24)
> > +#define IMX8MM_GPR_PCIE_REF_CLK_PLL
> 	FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x3)
> > +#define IMX8MM_GPR_PCIE_REF_CLK_EXT
> 	FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x2)
> > +#define IMX8MM_GPR_PCIE_AUX_EN		BIT(19)
> > +#define IMX8MM_GPR_PCIE_CMN_RST		BIT(18)
> > +#define IMX8MM_GPR_PCIE_POWER_OFF	BIT(17)
> > +#define IMX8MM_GPR_PCIE_SSC_EN		BIT(16)
> > +#define IMX8MM_GPR_PCIE_REF_USE_PAD	BIT(9)
> > +
> > +struct imx8_pcie_phy {
> > +	u32			refclk_pad_mode;
> 
> Moving this to the end of the structure will get rid of a hole due to padding.
[Richard Zhu] Got that, thanks.

> 
> > +	void __iomem		*base;
> > +	struct clk		*clk;
> > +	struct phy		*phy;
> > +	struct regmap		*iomuxc_gpr;
> > +	struct reset_control	*reset;
> > +};
> > +
> > +static int imx8_pcie_phy_init(struct phy *phy) {
> > +	int ret;
> > +	u32 val, pad_mode;
> > +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +	reset_control_assert(imx8_phy->reset);
> > +
> > +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +			   IMX8MM_GPR_PCIE_REF_USE_PAD,
> > +			   imx8_phy->refclk_pad_mode == 1 ?
> > +			   IMX8MM_GPR_PCIE_REF_USE_PAD : 0);
> > +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +			   IMX8MM_GPR_PCIE_AUX_EN,
> > +			   IMX8MM_GPR_PCIE_AUX_EN);
> > +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +			   IMX8MM_GPR_PCIE_POWER_OFF, 0);
> > +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +			   IMX8MM_GPR_PCIE_SSC_EN, 0);
> > +
> > +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +			   IMX8MM_GPR_PCIE_REF_CLK_SEL,
> > +			   imx8_phy->refclk_pad_mode == 1 ?
> > +			   IMX8MM_GPR_PCIE_REF_CLK_EXT :
> > +			   IMX8MM_GPR_PCIE_REF_CLK_PLL);
> > +	usleep_range(100, 200);
> > +
> > +	/* Do the PHY common block reset */
> > +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +			   IMX8MM_GPR_PCIE_CMN_RST,
> > +			   IMX8MM_GPR_PCIE_CMN_RST);
> > +	usleep_range(200, 500);
> > +
> > +
> > +	pad_mode = imx8_phy->refclk_pad_mode;
> > +	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
> > +		/* Configure the pad as input */
> > +		val = readl(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> > +		writel(val & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> > +	} else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
> > +		/* Configure the PHY to output the refclock via pad */
> > +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> > +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
> > +		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
> > +		val = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
> > +		writel(val | ANA_AUX_RX_TERM_GND_EN,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG064);
> > +		writel(ANA_AUX_RX_TERM | ANA_AUX_TX_LVL,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG065);
> > +	}
> > +
> > +	/* Tune PHY de-emphasis setting to pass PCIe compliance. */
> > +	writel(PCIE_PHY_TRSV_REG5_GEN1_DEEMP,
> > +	       imx8_phy->base + PCIE_PHY_TRSV_REG5);
> > +	writel(PCIE_PHY_TRSV_REG6_GEN2_DEEMP,
> > +	       imx8_phy->base + PCIE_PHY_TRSV_REG6);
> 
> I guess those are at least in part board specific. Maybe it would be a good
> idea to add DT properties to allow each board to specify the actual
> de-emphasis values?
[Richard Zhu] Agree. Would use two properties to specified them by HW board.
Thanks.

> 
> > +
> > +	reset_control_deassert(imx8_phy->reset);
> > +
> > +	/* Polling to check the phy is ready or not. */
> > +	ret = readl_poll_timeout(imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG75,
> > +				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
> > +				 10, 20000);
> > +	return ret;
> > +}
> > +
> > +static int imx8_pcie_phy_power_on(struct phy *phy) {
> > +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +	return clk_prepare_enable(imx8_phy->clk);
> > +}
> > +
> > +static int imx8_pcie_phy_power_off(struct phy *phy) {
> > +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +	clk_disable_unprepare(imx8_phy->clk);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct phy_ops imx8_pcie_phy_ops = {
> > +	.init		= imx8_pcie_phy_init,
> > +	.power_on	= imx8_pcie_phy_power_on,
> > +	.power_off	= imx8_pcie_phy_power_off,
> > +	.owner		= THIS_MODULE,
> > +};
> > +
> > +static int imx8_pcie_phy_probe(struct platform_device *pdev) {
> > +	struct phy_provider *phy_provider;
> > +	struct device *dev = &pdev->dev;
> > +	struct device_node *np = dev->of_node;
> > +	struct imx8_pcie_phy *imx8_phy;
> > +	struct resource *res;
> > +
> > +	imx8_phy = devm_kzalloc(dev, sizeof(*imx8_phy), GFP_KERNEL);
> > +	if (!imx8_phy)
> > +		return -ENOMEM;
> > +
> > +	/* get PHY refclk pad mode */
> > +	of_property_read_u32(np, "fsl,refclk-pad-mode",
> > +			     &imx8_phy->refclk_pad_mode);
> > +
> > +	imx8_phy->clk = devm_clk_get(dev, "phy");
> > +	if (IS_ERR(imx8_phy->clk)) {
> > +		dev_err(dev, "failed to get imx pcie phy clock\n");
> > +		return PTR_ERR(imx8_phy->clk);
> > +	}
> > +
> > +	/* Grab GPR config register range */
> > +	imx8_phy->iomuxc_gpr =
> > +		 syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> 
> I would prefer if we could get the syscon via a phandle and make the GPR
> register to use another cell of the handle.
> 
> That's not really important for the 8MM, where there is only one PCIe PHY,
> but if we want to retrofit this model to the i.MX8MQ, we need to deal with
> different GPR offsets for both PHYs and I would like to have this explicit in the
> DT. Doing the same here would be good for consistency.
[Richard Zhu] It seems that this is a good idea.
But I'm not clear about how to do about that.
IOMUXC_GPR module had been defined with 64Kbytes size and "syscon" compatible.
On i.MX8MQ, GPR14/15 are used for PCIe0 PHY, and GPR16/17 are used for PCIe1 PHY.
How to explicit these different offset in the different phandles?

BR
Richard

> 
> Overall, looks much better than the last submission.
> 
> Regards,
> Lucas
> 
> > +	if (IS_ERR(imx8_phy->iomuxc_gpr)) {
> > +		dev_err(dev, "unable to find iomuxc registers\n");
> > +		return PTR_ERR(imx8_phy->iomuxc_gpr);
> > +	}
> > +
> > +	imx8_phy->reset = devm_reset_control_get_exclusive(dev, "pciephy");
> > +	if (IS_ERR(imx8_phy->reset)) {
> > +		dev_err(dev, "Failed to get PCIEPHY reset control\n");
> > +		return PTR_ERR(imx8_phy->reset);
> > +	}
> > +
> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	imx8_phy->base = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(imx8_phy->base))
> > +		return PTR_ERR(imx8_phy->base);
> > +
> > +	imx8_phy->phy = devm_phy_create(dev, NULL, &imx8_pcie_phy_ops);
> > +	if (IS_ERR(imx8_phy->phy))
> > +		return PTR_ERR(imx8_phy->phy);
> > +
> > +	phy_set_drvdata(imx8_phy->phy, imx8_phy);
> > +
> > +	phy_provider = devm_of_phy_provider_register(dev,
> > +of_phy_simple_xlate);
> > +
> > +	return PTR_ERR_OR_ZERO(phy_provider); }
> > +
> > +static const struct of_device_id imx8_pcie_phy_of_match[] = {
> > +	{.compatible = "fsl,imx8mm-pcie-phy",},
> > +	{ },
> > +};
> > +MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> > +
> > +static struct platform_driver imx8_pcie_phy_driver = {
> > +	.probe	= imx8_pcie_phy_probe,
> > +	.driver = {
> > +		.name	= "imx8-pcie-phy",
> > +		.of_match_table	= imx8_pcie_phy_of_match,
> > +	}
> > +};
> > +module_platform_driver(imx8_pcie_phy_driver);
> > +
> > +MODULE_DESCRIPTION("FSL IMX8 PCIE PHY driver");
> > +MODULE_LICENSE("GPL");
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
