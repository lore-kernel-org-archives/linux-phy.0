Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05FBC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 00:55:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D1956136F
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 00:55:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D1956136F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUhTdcQtCSXBHS7iqBbJ0Xs2uZ9NAsJM2DTWkUBjGuw=; b=P9CRg5lQ0GYrlb
	tBqkSzlK2ERyn50VMQSRH+FToRhOBkym03zZG/IkM70wHavYzYzUUrFmegcalZsiUeqqie2cc4nu8
	gtZ9yYQbq3EecgR5AmoQdwq7eW+Bn1GsEaMXbtwo7IucewhfGE1NrEddG9Ga9T/BUrr3uB6zsPu06
	JO0zfPNpg/jGK+/Hvn2OGfLfOgxf+phMpdVFa/GJ7IFUk+Dtc90J/R1H+o7UIBZhOoIO1RGlZ/oNB
	xxpgFsbmmtzWO7mFWOvxmn4uRPd3np9o5rGBQ1v0O8Fe1QKNyN6wLG4st521G+NmAr8MsbikfovjK
	Qcm07hNF4ZV64PHs/YRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdipo-009OC5-Lg; Fri, 22 Oct 2021 00:55:00 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdipk-009OAI-PM; Fri, 22 Oct 2021 00:54:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J5ilri06Ruy8vI2LYhBLfm28lvD8zcJDVTeQ7LTk5xS6vX8PQM514d2gQsLzzAePqHtrIoiB8g7SSTdmU7E10R6sfMshFP4qbkALoFI2+tvRP6/0zG28v33xKJcD4yQXvBX7hKKB+STZlPUphpmIPmBX2qtnraQH5XFS1v597cRt3Gbi3+yu98egIj0mhn/FOiHFIJPLlg1rKJB8HTvAMzszYGcs34HB2GNm/2wlDcApDsl8Kuoqu7y7LME9QKCtPN1B3XXIag4tBFzzhBcglofITiHx//2fFV8Dp7MzWt7LXlVwb/rtU5qL2triIk9W1pipp0axJoeKbIV70EUMgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tyEXoSWvSv9LVIHSm94bx2wPq2YmfJkkmlj1Af8vrrY=;
 b=Pnl6VM50H0baPUTtSfGNrqbPpKn4318iZ+DiC7obvCilCQoC7/5WeVR+u3EtnldR/zIFw4hJfn82kWRcXUyiWRoDd7bVv+YOquIdhqW1xF03RAx5jyfsXtE++ZP7J3vdFWuaYwUPd+KuGmA929D9caK2w79s0we4yDnTtX/Lx6fw8CalrZoUombGS3+It7o+StX2ModbbEwl0hmskO8l9y/oftPOLfTVyKgGgktxEKISojxFMARsvmV6yuoagfyYcl/DQDNLZOkLEZ4w3P0MNrseaRglvC37FER81KJAXYXh0v9fPkLzckpyMO8DiTjgT7M0JpaHZnSSNSZglv4sXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tyEXoSWvSv9LVIHSm94bx2wPq2YmfJkkmlj1Af8vrrY=;
 b=MEiI0KpZCRUzam9l5o43AYvb63meNZuJp4eNmYQ41suYK8Cm0esMwfgrvsRgrlmojM75TI9MqZbgosgXpxIpEPL43zuh6FFkQI1CYRYhOGIknQPxMmJASftd+hh7w7gkTwZPgSGiosjZvUngYeVLtiGfImBSCMRNkmaPPclNP+U=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB9048.eurprd04.prod.outlook.com (2603:10a6:20b:443::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Fri, 22 Oct
 2021 00:54:53 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 00:54:53 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "tharvey@gateworks.com" <tharvey@gateworks.com>
CC: Lucas Stach <l.stach@pengutronix.de>, Kishon Vijay Abraham I
 <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, Rob Herring
 <robh@kernel.org>, "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 Shawn Guo <shawnguo@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Device Tree Mailing List
 <devicetree@vger.kernel.org>, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
Thread-Topic: [PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
Thread-Index: AQHXv0hnD6WN1xW1r0GrwUBjOXYAL6vdqtsAgACSWeA=
Date: Fri, 22 Oct 2021 00:54:53 +0000
Message-ID: <AS8PR04MB8676330408A6E18D35D003CB8C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-6-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU192BCiVQ=UwXgVCgCMA7tqcAQXQokyh5bO08a+SycOzQ@mail.gmail.com>
In-Reply-To: <CAJ+vNU192BCiVQ=UwXgVCgCMA7tqcAQXQokyh5bO08a+SycOzQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 721e7da1-bbd7-49a7-fd23-08d994f68f1e
x-ms-traffictypediagnostic: AS8PR04MB9048:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB904816CC9354654A573754048C809@AS8PR04MB9048.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NQE293c9ednFeV6hA0l8s0pS3sLkXICuck4PStDdNkfUY7ESPFMuzgn5mUCo8I8C/7hZ6rhC6mfLt3t3jSBbMD70PMP22Kvc/nwpMFOkk1+e2AfwVy2NRdSonDGD5sAOch3ph0DkPl6UXo4XIgMZaenQZuG/OhMja9mhCEl3l/ksIWbJq03lI/+WP+QZzrjBCAWtNhvV/WGDNrc5tQ+RrTxfZkx9qtX5ZUaJUMP84dDuvzwmrIAsmL2jkl28iPdzA+lY4/8xELFfIlJvg+st3ODmVkXLwr7gCvrYlN77sG0+jYqFwwWyFK4OySfbzXVT0xIUgTh86lAG5D9jO13AJqctvVnOQvyP6OQaaXp1FBOtjZpP1GymCdip9AtlbhHIzHFdK5VMhxcxsepmEbsl5rh/UPEmrvafa2Mr+oIc3vY+BwzHnWEKHaihP8oS4LEUZA7WfC/pQ7aNtTCvMIrV8vuGBw9ct2wVP2NGJTWYpRzRiSF+SFjjUxSZA9vqs2CtmRgOI96mUMszvkIgrkZ/ExHkSdofYEhJ5upASV3pHrPElGp+oZXz+iVWmeyiwgN+832V9S5UqojbO+3PXMBPn2/cT3oajzGr3bxGcvzMUxRsn1/YSA4Y7XG/wpwMdEBzGjoW8bLsKDw0hTGeBOAgcZI1xiprNosZi28Au843BwiH8fncrZ8ZiQqbAafXTJeRdrJn0K9mqUjUz1yrDbyXgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(33656002)(8936002)(8676002)(2906002)(5660300002)(71200400001)(7416002)(38070700005)(66556008)(76116006)(186003)(83380400001)(66946007)(66476007)(64756008)(52536014)(6916009)(26005)(66446008)(4326008)(7696005)(122000001)(6506007)(53546011)(508600001)(86362001)(30864003)(38100700002)(9686003)(316002)(55016002)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDRyTk8rbDVzQkVSQi9WcFlOV2FvNWdoczJOcXg3R3JWQ2p0TE5ZWGhuWUhJ?=
 =?utf-8?B?M1BKQ0EwWEJkcEpHMmw4Q1ZtRTdFOGRFbzBpSElSK2VtbHZCdWJkSjB3NDU3?=
 =?utf-8?B?SENITlY0U3dla2UwNWYxYTVSaDNiRzZ2OFFqK2VHMzd3OVI1UGlvQWluQlBU?=
 =?utf-8?B?ak9hZUZ2MUJTUGZ2a2MyNnE5akFRNis5VmM3USt4THA4Zlpvd0pHTG0vQk50?=
 =?utf-8?B?WFJ1dVFTMDFLeVM2ZjV4TTF5RWJiajJITkl6c2JZdURUV3FTQmYzSlY1Tndh?=
 =?utf-8?B?WkZWRXEvWjQ1dWRhY3QwbTZ3ODBaaEVZZlJHc2JJd3h6d3ZxRVZjeHJRMExR?=
 =?utf-8?B?d1Q4Tnowb1RUam5SYkNRaEdBM0J0UklGNHBLWTJSY3Q4Z013WWtrUEVYczlu?=
 =?utf-8?B?ejdvM0Rhcnd5WEpJT3FkMGQ1UEdvaVYramlVWWI1VzNqRU1KK0xtOVR4eCtB?=
 =?utf-8?B?aXFjaGVuMXYrT2cwUG4xeFZTU2tHY2RXSS9XYzRiZTI1a2FSOUR0b2JYOWJt?=
 =?utf-8?B?TjhJTFhqaGFEVHZndWZCTUVLL0ZjcjVjSkdNb2JhNUV5dVNsRitQMVh5UmU4?=
 =?utf-8?B?YVczamNzWE1rOTU2WjZENkdDYm9qMGJOdGdzRzM4dUJrZ3ZwL1JzYjduUkdv?=
 =?utf-8?B?bHBFMXdHbFJvVDI3Mk4yUUF4QTF1dnJVWEFEa1pHS2RsMTFiYmdQNmZnNFZO?=
 =?utf-8?B?VmlSVmVMVzUyTkxWZ1cvckVXaVJZbENaeXZoNmUraW9pVitZbmNDOENIOGZN?=
 =?utf-8?B?YUo0eURacVEzdmV4T0Ezdzh6VFUzQ0tFOXJtTUNNbXdjV25vQmFIdVJLTGsv?=
 =?utf-8?B?MUhkVktaSHpYdmRTaEk5eTFNOXFMUEhreVE3T3JGUnJpWHR3ZGZDL2Nhb3ps?=
 =?utf-8?B?bW5HTHdoVm9FQmV6dUc5MEZ4dXlxK0RyYWpIKzNWUTMvQWJBSW1tSTA4QnVU?=
 =?utf-8?B?M3VrdXJObS80b28yOXZuRERwak9BM2l2NnV2WUZ4V3ErbmY5MmFuNDJYQnBh?=
 =?utf-8?B?WDE3a3VFTWJ2L2E0QzkxL2JzSmY3TkRkZkY2YlFHS05kcHZ3NVhxcTRhSVpw?=
 =?utf-8?B?YmxxbWpTeGprWXR2KzFDcVZXdllEYTV3d2NTeTVxS1hrVjEvT0xoYzFpUENQ?=
 =?utf-8?B?SDlWYXZPWEZjUzdpTG5hc0JxYldQNTVqcnptWVVmQzNQdjNNYXp4Q0dCb01s?=
 =?utf-8?B?VktMZkFGT081NHhySzhsbHRtMjVXSjc2bk91aVRJOTZ0bTFyc0hXVDBHQnZt?=
 =?utf-8?B?WGhObjJhN0FiYlVYejB2VXhXa2tUSEtVeTBNTHBuZnBBbC9JQ1pybmF1Tmdm?=
 =?utf-8?B?L0FRTlUrd0pZWk9iSC9lcG5COFJ5Zk9EZjF6WmlQMnE4VktwY0tTaDJPM2VL?=
 =?utf-8?B?ZVVoWFMycGhZU2VWMnJCaFJvb0NsOENnZUE2c2ZIaXB2aUozREd1YnNDRnlu?=
 =?utf-8?B?aWZtMkJGTlNNQjBCbHZSSWF2RlZTNnN5bWFmQ09HbWwzMCthdmgrUkpkVzNU?=
 =?utf-8?B?dXFiZEI4ZU5KVHBZUGRXY2c4UFRRQjZFZjhueE9PTm81b0JsVXdoVThOQWVZ?=
 =?utf-8?B?WUlBeTJsZVk4bTB0MWU4VVpmdmZjN1JVNW9GWjNSQTFLaFgvck9hUTNJb1h6?=
 =?utf-8?B?NURGV1pWaHhVbjJVYW5wYkw3QVVLWCtDOWFjRjUrQUZjU3pzZUZ6ckt4N1o5?=
 =?utf-8?B?WEUwdDBJY1diN1F4anpEVlJmTVQ1bmpEQ2dDaXcxQ0JmQThZRnBOV0ZKWks1?=
 =?utf-8?B?eGZaaHVnbFNvV1B1OWhJU3JWcUE4M21KYVRNS0lkcnJiTWk2b0tVWHJPVFdi?=
 =?utf-8?B?d3h5TmNPZk1uVmV0UzFkMXpoQmlyTDJYK21Kc1pTWWg1NDlQNytPTFVsUHBC?=
 =?utf-8?B?dC9PMVpTNnEyUXkzNVVuSjNhd0xMSE0va2hDN2lsMkt4amFGSytlZktsbnhN?=
 =?utf-8?Q?6xZeIU1hYGw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 721e7da1-bbd7-49a7-fd23-08d994f68f1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 00:54:53.3305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_175457_045283_67447AA1 
X-CRM114-Status: GOOD (  28.06  )
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
> From: Tim Harvey <tharvey@gateworks.com>
> Sent: Friday, October 22, 2021 12:00 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>; Kishon Vijay Abraham I
> <kishon@ti.com>; vkoul@kernel.org; Rob Herring <robh@kernel.org>;
> galak@kernel.crashing.org; Shawn Guo <shawnguo@kernel.org>;
> linux-phy@lists.infradead.org; Device Tree Mailing List
> <devicetree@vger.kernel.org>; Linux ARM Mailing List
> <linux-arm-kernel@lists.infradead.org>; open list
> <linux-kernel@vger.kernel.org>; Sascha Hauer <kernel@pengutronix.de>;
> dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
> standalone phy driver
> 
> On Tue, Oct 12, 2021 at 2:06 AM Richard Zhu <hongxing.zhu@nxp.com>
> wrote:
> >
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
> >         help
> >           Enable this to add support for the Mixel DSI PHY as found
> >           on NXP's i.MX8 family of SOCs.
> > +
> > +config PHY_FSL_IMX8M_PCIE
> > +       tristate "Freescale i.MX8 PCIE PHY"
> > +       depends on OF && HAS_IOMEM
> > +       select GENERIC_PHY
> > +       default ARCH_MXC
> > +       help
> > +         Enable this to add support for the PCIE PHY as found on
> > +         i.MX8M family of SOCs.
> > diff --git a/drivers/phy/freescale/Makefile
> > b/drivers/phy/freescale/Makefile index 1d02e3869b45..55d07c742ab0
> > 100644
> > --- a/drivers/phy/freescale/Makefile
> > +++ b/drivers/phy/freescale/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)       += phy-fsl-imx8mq-usb.o
> >  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)      +=
> phy-fsl-imx8-mipi-dphy.o
> > +obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)       += phy-fsl-imx8m-pcie.o
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
> > +#define IMX8MM_PCIE_PHY_CMN_REG061     0x184
> > +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_EN  BIT(0)
> > +#define IMX8MM_PCIE_PHY_CMN_REG062     0x188
> > +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_SEL BIT(3)
> > +#define IMX8MM_PCIE_PHY_CMN_REG063     0x18C
> > +#define  AUX_PLL_REFCLK_SEL_SYS_PLL    GENMASK(7, 6)
> > +#define IMX8MM_PCIE_PHY_CMN_REG064     0x190
> > +#define  ANA_AUX_RX_TX_SEL_TX          BIT(7)
> > +#define  ANA_AUX_RX_TERM_GND_EN                BIT(3)
> > +#define  ANA_AUX_TX_TERM               BIT(2)
> > +#define IMX8MM_PCIE_PHY_CMN_REG065     0x194
> > +#define  ANA_AUX_RX_TERM               (BIT(7) | BIT(4))
> > +#define  ANA_AUX_TX_LVL                        GENMASK(3, 0)
> > +#define IMX8MM_PCIE_PHY_CMN_REG75      0x1D4
> > +#define  PCIE_PHY_CMN_REG75_PLL_DONE   0x3
> > +#define PCIE_PHY_TRSV_REG5             0x414
> > +#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP 0x2D
> > +#define PCIE_PHY_TRSV_REG6             0x418
> > +#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP 0xF
> > +
> > +#define IMX8MM_GPR_PCIE_REF_CLK_SEL    GENMASK(25, 24)
> > +#define IMX8MM_GPR_PCIE_REF_CLK_PLL
> FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x3)
> > +#define IMX8MM_GPR_PCIE_REF_CLK_EXT
> FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x2)
> > +#define IMX8MM_GPR_PCIE_AUX_EN         BIT(19)
> > +#define IMX8MM_GPR_PCIE_CMN_RST                BIT(18)
> > +#define IMX8MM_GPR_PCIE_POWER_OFF      BIT(17)
> > +#define IMX8MM_GPR_PCIE_SSC_EN         BIT(16)
> > +#define IMX8MM_GPR_PCIE_REF_USE_PAD    BIT(9)
> > +
> > +struct imx8_pcie_phy {
> > +       u32                     refclk_pad_mode;
> > +       void __iomem            *base;
> > +       struct clk              *clk;
> > +       struct phy              *phy;
> > +       struct regmap           *iomuxc_gpr;
> > +       struct reset_control    *reset;
> > +};
> > +
> > +static int imx8_pcie_phy_init(struct phy *phy) {
> > +       int ret;
> > +       u32 val, pad_mode;
> > +       struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +       reset_control_assert(imx8_phy->reset);
> > +
> > +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +                          IMX8MM_GPR_PCIE_REF_USE_PAD,
> > +                          imx8_phy->refclk_pad_mode == 1 ?
> 
> Hi Richard,
> 
> use the enumerated type for the comparison above for clarity:
> imx8_phy->refclk_pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT
> 
> Also, this is the configuration that makes my imx8mm-venice boards which do
> not use CLKREQ# hang while waiting for PHY. I am setting in my dt:
> &pcie_phy {
>         fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
>         clocks = <&clk IMX8MM_CLK_DUMMY>;
>         status = "okay";
> };
> 
> The NXP kernel woudl always set this bit to 0 which makes my board work.
> 
> The IMX8MMRM documentation appears incorrect here:
> IOMUXC_GPR_GPR14 bit 9: GPR_PCIE1_ PHY_I_AUX_ EN_OVERRIDE_ EN:
> {GPR_PCIE1_PHY_I_AUX_EN_OVERRIDE_EN,
> GPR_PCIE1_PHY_FUNC_I_AUX_EN}
>  2'b00 External Reference Clock I/O (for PLL) Disable
>  2'b01 External Reference Clock I/O (for PLL) Enable
>  2'b10 External Reference Clock I/O (for PLL) Disable
>  2'b11 External Reference Clock I/O (for PLL) output is controlled by CLKREQ#
> 
> How is it they define this as a single bit then give descriptions for
> 2 bits? Something is wrong here.
> 
[Richard Zhu] The descriptions are not correct, please ignore them.

> > +                          IMX8MM_GPR_PCIE_REF_USE_PAD : 0);
> > +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +                          IMX8MM_GPR_PCIE_AUX_EN,
> > +                          IMX8MM_GPR_PCIE_AUX_EN);
> > +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +                          IMX8MM_GPR_PCIE_POWER_OFF, 0);
> > +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +                          IMX8MM_GPR_PCIE_SSC_EN, 0);
> > +
> > +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +                          IMX8MM_GPR_PCIE_REF_CLK_SEL,
> > +                          imx8_phy->refclk_pad_mode == 1 ?
> 
> imx8_phy->refclk_pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT
[Richard Zhu] Got that. Thanks.

BR
Richard
> 
> Best regards,
> 
> Tim
> 
> > +                          IMX8MM_GPR_PCIE_REF_CLK_EXT :
> > +                          IMX8MM_GPR_PCIE_REF_CLK_PLL);
> > +       usleep_range(100, 200);
> > +
> > +       /* Do the PHY common block reset */
> > +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > +                          IMX8MM_GPR_PCIE_CMN_RST,
> > +                          IMX8MM_GPR_PCIE_CMN_RST);
> > +       usleep_range(200, 500);
> > +
> > +
> > +       pad_mode = imx8_phy->refclk_pad_mode;
> > +       if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
> > +               /* Configure the pad as input */
> > +               val = readl(imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG061);
> > +               writel(val & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +                      imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG061);
> > +       } else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
> > +               /* Configure the PHY to output the refclock via pad */
> > +               writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +                      imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG061);
> > +               writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
> > +                      imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG062);
> > +               writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> > +                      imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG063);
> > +               val = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
> > +               writel(val | ANA_AUX_RX_TERM_GND_EN,
> > +                      imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG064);
> > +               writel(ANA_AUX_RX_TERM | ANA_AUX_TX_LVL,
> > +                      imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG065);
> > +       }
> > +
> > +       /* Tune PHY de-emphasis setting to pass PCIe compliance. */
> > +       writel(PCIE_PHY_TRSV_REG5_GEN1_DEEMP,
> > +              imx8_phy->base + PCIE_PHY_TRSV_REG5);
> > +       writel(PCIE_PHY_TRSV_REG6_GEN2_DEEMP,
> > +              imx8_phy->base + PCIE_PHY_TRSV_REG6);
> > +
> > +       reset_control_deassert(imx8_phy->reset);
> > +
> > +       /* Polling to check the phy is ready or not. */
> > +       ret = readl_poll_timeout(imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG75,
> > +                                val, val ==
> PCIE_PHY_CMN_REG75_PLL_DONE,
> > +                                10, 20000);
> > +       return ret;
> > +}
> > +
> > +static int imx8_pcie_phy_power_on(struct phy *phy) {
> > +       struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +       return clk_prepare_enable(imx8_phy->clk);
> > +}
> > +
> > +static int imx8_pcie_phy_power_off(struct phy *phy) {
> > +       struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +       clk_disable_unprepare(imx8_phy->clk);
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct phy_ops imx8_pcie_phy_ops = {
> > +       .init           = imx8_pcie_phy_init,
> > +       .power_on       = imx8_pcie_phy_power_on,
> > +       .power_off      = imx8_pcie_phy_power_off,
> > +       .owner          = THIS_MODULE,
> > +};
> > +
> > +static int imx8_pcie_phy_probe(struct platform_device *pdev) {
> > +       struct phy_provider *phy_provider;
> > +       struct device *dev = &pdev->dev;
> > +       struct device_node *np = dev->of_node;
> > +       struct imx8_pcie_phy *imx8_phy;
> > +       struct resource *res;
> > +
> > +       imx8_phy = devm_kzalloc(dev, sizeof(*imx8_phy), GFP_KERNEL);
> > +       if (!imx8_phy)
> > +               return -ENOMEM;
> > +
> > +       /* get PHY refclk pad mode */
> > +       of_property_read_u32(np, "fsl,refclk-pad-mode",
> > +                            &imx8_phy->refclk_pad_mode);
> > +
> > +       imx8_phy->clk = devm_clk_get(dev, "phy");
> > +       if (IS_ERR(imx8_phy->clk)) {
> > +               dev_err(dev, "failed to get imx pcie phy clock\n");
> > +               return PTR_ERR(imx8_phy->clk);
> > +       }
> > +
> > +       /* Grab GPR config register range */
> > +       imx8_phy->iomuxc_gpr =
> > +
> syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> > +       if (IS_ERR(imx8_phy->iomuxc_gpr)) {
> > +               dev_err(dev, "unable to find iomuxc registers\n");
> > +               return PTR_ERR(imx8_phy->iomuxc_gpr);
> > +       }
> > +
> > +       imx8_phy->reset = devm_reset_control_get_exclusive(dev,
> "pciephy");
> > +       if (IS_ERR(imx8_phy->reset)) {
> > +               dev_err(dev, "Failed to get PCIEPHY reset control\n");
> > +               return PTR_ERR(imx8_phy->reset);
> > +       }
> > +
> > +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       imx8_phy->base = devm_ioremap_resource(dev, res);
> > +       if (IS_ERR(imx8_phy->base))
> > +               return PTR_ERR(imx8_phy->base);
> > +
> > +       imx8_phy->phy = devm_phy_create(dev, NULL,
> &imx8_pcie_phy_ops);
> > +       if (IS_ERR(imx8_phy->phy))
> > +               return PTR_ERR(imx8_phy->phy);
> > +
> > +       phy_set_drvdata(imx8_phy->phy, imx8_phy);
> > +
> > +       phy_provider = devm_of_phy_provider_register(dev,
> > + of_phy_simple_xlate);
> > +
> > +       return PTR_ERR_OR_ZERO(phy_provider); }
> > +
> > +static const struct of_device_id imx8_pcie_phy_of_match[] = {
> > +       {.compatible = "fsl,imx8mm-pcie-phy",},
> > +       { },
> > +};
> > +MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> > +
> > +static struct platform_driver imx8_pcie_phy_driver = {
> > +       .probe  = imx8_pcie_phy_probe,
> > +       .driver = {
> > +               .name   = "imx8-pcie-phy",
> > +               .of_match_table = imx8_pcie_phy_of_match,
> > +       }
> > +};
> > +module_platform_driver(imx8_pcie_phy_driver);
> > +
> > +MODULE_DESCRIPTION("FSL IMX8 PCIE PHY driver");
> > +MODULE_LICENSE("GPL");
> > --
> > 2.25.1
> >
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
