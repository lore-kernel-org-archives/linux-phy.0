Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF869C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 07:09:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A17E0611EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 07:09:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A17E0611EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzJZRtW4kBVe4+IPpCwFeIeRg3fgnaLRkxjh72zUYJc=; b=zEhOqLRxHujuXA
	2sGqWRSaZjI2T7dshB4JjCyvQ01pgfVuL4M3BBYJ2qTNa6/ZSBualO3Ho/nkGopsrdjYoS2+6XYVJ
	osS1BtdAjMtDs7VDaTllSEAQ7mTQVZQa3cHjZnAkhsWGahKpFnkku/81EAw1l4Ky9HNUMn4nAkwfw
	Gox2g25ju3XYRW7tVIzLkQWx6NkZelYt9WfM2afS5EcaeeQBk2RK1ALvBdYc6iE6rqQo3q7IwDkdf
	puct5smL/BobJ0p9xtQilQDHcjJv/MPTJrwHEkksRy1DZocU43lvpdDR0r7VsTECVmsivUXDLr1FR
	eKqInkiMMSE8BuAnpVRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV7Er-005x0n-7x; Tue, 28 Sep 2021 07:09:17 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV7El-005wys-0M; Tue, 28 Sep 2021 07:09:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SL18wOIxpH24sciy+wgBKPx7KmcvYhKBEqjX1KPeIvS9pVTYLJmKUOq9j1sXd2M7VBaEuaU29HQ2vg+V3++ijq2iPbEIRWvc1h8O6UJyb2r/L4mk72N77C2LSwLZl1nZxEAGZTTgMvxoUbepy/WBWMFsGTuiVgm22jCulJcVwdutZeK/Blw6B9Q7tucVCWdLMUnoOjj6Okw0at0CZtT9pO+HtrFSkU0YfN/Pi7Nz1EnxY19JSaJeQ7kzEO6ibfeKcicn/Og6LknYXmd2/espQJVWrGmsdPgAkQmm2nKn92JuguPcUKztStZPKXqVxmhtwf9KFzwXsG8NeChO/5U/Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=JByAqPHkw9yezZAWOqBOmztkV2jjhvnTybXVqlBY/Oo=;
 b=QySgVWOaA4/n/ryGqyWJDWCbthMa6AYQ4T47diVvTAcnqHMEM53EBbrfC4vaKAFz6GESAaNj45m3s62S0iTtpfNqtTqDCUx5Aw8uZbcp6tMaCB0/lGvUOZfvEYkJSJGiUYI5iZRG8OcmANT/z5LBjuwedYwpusJ5/qvTAezDRX1Xetucwwo4o2xjhsiS994qdh12v3Xm1T64N0fckvzVzrtK8muQjWu1GCXpdLDPZjzHewa9G0ZI4jB13kEXxxPLiFfxMGzWUXvvtv1cq+P2SeoUu3+HY1WMufVNp1tftlZYUThGl8WFQby0W9ZiSen9WkpN/YtcQcCha/2hchjesw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JByAqPHkw9yezZAWOqBOmztkV2jjhvnTybXVqlBY/Oo=;
 b=V0vwW5sB7zY0oVSsPCDpcqoZ4ZPoEKTTpzQNHd6L84abO1Ay7pMuaS1esqQ0ioFhUEDrxNzFji7Odb6pLpiFlf5XTPpQ6TwhKV9dlnp4L7ffy+J5yO8LPynxkVf+UbDY609a0Ukl1n8lt+JJhBttxENbP67p7I/+FqJcpkwVjO0=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8436.eurprd04.prod.outlook.com (2603:10a6:20b:347::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.21; Tue, 28 Sep
 2021 07:09:02 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2%9]) with mapi id 15.20.4544.022; Tue, 28 Sep 2021
 07:09:02 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v2 4/4] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
Thread-Topic: [PATCH v2 4/4] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
Thread-Index: AQHXsq0HhF6yRyTcX0y5FNA+YMuOOau3kiEAgAEsbKA=
Date: Tue, 28 Sep 2021 07:09:01 +0000
Message-ID: <AS8PR04MB867694A628587150731B57D48CA89@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
 <1632641983-1455-5-git-send-email-hongxing.zhu@nxp.com>
 <c9d57b1fb86173cc7ccbd391af4b18aaed6cd1ac.camel@pengutronix.de>
In-Reply-To: <c9d57b1fb86173cc7ccbd391af4b18aaed6cd1ac.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d67883f-f6e6-49da-e530-08d9824ed9c3
x-ms-traffictypediagnostic: AS8PR04MB8436:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB843696A226960A14EC706FB78CA89@AS8PR04MB8436.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CXDlW13KqCiEzbMXzZdNhUxTYc3apR5klcDTi+JILuzuPYgHZ4QpAe7A0dIdZks9S9EuDU3MD5CT7pThbaVgeVMbuverB3vxeC1gpQ/govueTty+hO6vkFbqqRRNbXXDx3gs+59KiRjpz58hJaqjtsM5huzV+Gn/ppnx5vVYi0tgKRbGY0UGD06nZiwmGNOYDjmH9pDVpT3OvvDFUYR8lsh7qGb1Qcb+9f4U3l0uwD5HlIbjb26RbWKed5UwEE23XeoDEEuX/fQpzddlx/+73DbqeirQNezb52BAvI7fhGypo8FwleKuopIIx7U4IVh4C7uNVrruaZX2RIv0SuQwz2MnEpOS3PlvALPHbujKKr7Gg3rCTMQdVBDYzyokCBbitGZVE78MMkhWc03rI+rP7QmWFKt1Kp8l4GPGjvkeVO31eFv22+8J1csIXPUtyU5dnK3kUva0jEYPFItMP+sS73xif6s9nK1/VsFBgOfl/rfjjmphRJYuFD9E1cq/CzqYtWrtWyZoJRNjt/IV2r30FaliqoBvY4Xv+qNPsl/zW1RHICwLFM6uxPiicDNlVqDOQn8oKa1jk88kSUecEqDgJbrP226J/rfHy7wPOLKRiP9E4eoMLG0Bw18SP5ZnjNtr7NGmh+KwFfqDxFLe/6gDbhZxKjcV3jdEreM0n0KLovFF7zbMDEXP3vmcpulaLFIc0bKJshOf730Nv8+hyNc2sw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(8936002)(5660300002)(26005)(2906002)(52536014)(83380400001)(186003)(66446008)(66556008)(66946007)(316002)(53546011)(6506007)(66476007)(55016002)(76116006)(122000001)(9686003)(64756008)(7416002)(71200400001)(33656002)(110136005)(54906003)(8676002)(38100700002)(38070700005)(7696005)(4326008)(508600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ejA3NWF3czdCQThXMEJONHNKNVVuendRdUZYTis1SEZoK09HNEVzeVdIQmk4?=
 =?utf-8?B?dmVRTVI1VmI5aXZRa0I3SkRKdEdwQnYwTENVREdCMjM4cTFDc29tenVkSjh4?=
 =?utf-8?B?RmczYzJWMFljWW1pRXZ6ckhXUk5yZkF6MGFLMTRQTXJDZlRhcW1qWkNQa1Rt?=
 =?utf-8?B?dTI5RFhrVEdTNE5wcWVVMDNpSDJkQWw3eGttcGhZeDUrK3g0V3BrUU5nSVNx?=
 =?utf-8?B?cURyallDR1VOR3VPMnFjNlg0SWwvang0ZXdtWW9MUkFGUWQxZ2sxa0V2enp5?=
 =?utf-8?B?YUNPZHFLei9NRVVmQTdzN2ludkFUbm9reXdrTXg1T05NdUR5WklFTHhxRXhz?=
 =?utf-8?B?dUYyeE9oTUVlVEZzZ0dHRGswZmdUSnZsZ0hsY05iSlJsS3JoeTdYL1M3b3pL?=
 =?utf-8?B?V1FsUldEK2x2blJZQk1JK2dwNGowWUZjc3B2R3czbmpXaThVd2RzaG9UYjFw?=
 =?utf-8?B?SEJHdW4wNzRIUHNDNjdId24xTlc2V3M4WTlNSENmVjZNV2RkWmwyV1dNV292?=
 =?utf-8?B?NVo3L2Z6NFFodXJHRDMxZ0hNR3pVaUU3dXo5Vlh4V21DWm81SitaK1Y4UHR1?=
 =?utf-8?B?YUVETHBKdTNXdlpvVGY4VFZ6ZWhBSmVSYjlhaytsTFNzT0RPdkVXb1Mra1Bk?=
 =?utf-8?B?OVVhcnBrMHg4NE1mNFpNWkZTVHpDZEJ6TUUwZ2J6TmFHbTFaeithTFd4SXc3?=
 =?utf-8?B?ZTRGOG5GeW1UVDZYaGdyR1RwaUUyWjV2WmVHeWVDQitISUZkREdOTjlCVWxk?=
 =?utf-8?B?U2RTb3hiQUZ3eUowdFpVZFV2ekFkWDg3dEdQM3pXUE85VFlHZ2NJTmF2UHNJ?=
 =?utf-8?B?Nk04VjNsdVdrVkJ1b0E3R1pVSUVwcXd3U0pvVUtiWmRSOXdIQXFlZkk3K0Qx?=
 =?utf-8?B?UlVrSXZSY1JPTUsxUSs3bVltR2RqbktVOTFTY0JHVDhIb2FzRHgzc2VTNUtx?=
 =?utf-8?B?QldQcm1MTXRPWGpaUXQxMXUzaFYyVExUM3hRVUpWR2IyQ0FXR3E0M1M1Q01C?=
 =?utf-8?B?YThzTXY3ZWVEdlRoZjBKeUpsUGMxdUJCOWtGSkpUWDU1ajhSSU56ZTlsL2xu?=
 =?utf-8?B?b21adDhTcm14RFYyeFA2ZFg1cHU0ZFJQQTUzWGFIWW9uWnozK1pkTkVVV1Vn?=
 =?utf-8?B?cFIzMmcyeklma3VIUjRHNjFkTTdMOTlhOEs1Ykl2SFRuVTlzUjh4MEE5YlZF?=
 =?utf-8?B?T1dCcXFUa3oyV2dER1RabklUUW5OR0ppQkdmOFRmQTUyZFJXb3d5NnR4Zlp2?=
 =?utf-8?B?dThxSkpscEVVaVdzWFJsMTZoakUvUTV2Z1hQSlhCVk1hcktXcTMwb1BkdXJn?=
 =?utf-8?B?OXloUkVPSEhFYnFuemR5QWdDclYzVGt3NWprMmZ0a3psbVhUd0lpSWhJZVBa?=
 =?utf-8?B?OGpYb011RUQvZ3NGdVhvaUVmWVRwUjVpTW81RXRLQU9KNjc1OFVFWXh0ZHpt?=
 =?utf-8?B?b1YyMTY0M1RmT3lUejlPbGJIajdsMFRuUkNwNVlKMktvYkhlWmFkYnN6SE9Q?=
 =?utf-8?B?ZGV0SVNzTjRmTGJsd2dZVHFpVTQ1ekU1NDMvajJwUFp0RkxRWklMWUNDTUFG?=
 =?utf-8?B?T2dwS1djTkN6NkF1NXZXeWRWdXBjNFF4OEk3T2lJcy9nVFFXbEs2bitFTng2?=
 =?utf-8?B?cXBrT21xMkpTSnhwbWlYYWE5bjdqbzgrbEwwRGtxM2s5S2NwOHFyZmJGT3dy?=
 =?utf-8?B?QlNBcDBISm9rNFZRSWJmZWk2UEdvYVB4TXZkOGtYYUNadHhGd0ZaV21mcjg4?=
 =?utf-8?Q?R1RVCwiKt3TXUYr8qheEnWTZHhtFOOWCr2Qrb0B?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d67883f-f6e6-49da-e530-08d9824ed9c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2021 07:09:02.0566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ohb6lHS7QCFdgsiNJk3IQDywLhF/gaBs/qN+T51nMHbgPdhFZoggjepdq1tLGGKoZz7naLx2N5ohfZ7LbwOZ6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_000911_341866_0CAEC558 
X-CRM114-Status: GOOD (  36.20  )
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
> Sent: Monday, September 27, 2021 4:43 PM
> To: Richard Zhu <hongxing.zhu@nxp.com>; kishon@ti.com; vkoul@kernel.org;
> robh@kernel.org; galak@kernel.crashing.org; shawnguo@kernel.org
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v2 4/4] phy: freescale: pcie: initialize the imx8 pcie
> standalone phy driver
> 
> Am Sonntag, dem 26.09.2021 um 15:39 +0800 schrieb Richard Zhu:
> > Add the standalone i.MX8 PCIe PHY driver.
> > Some reset bits should be manipulated between PHY configurations and
> > status check(internal PLL is locked or not).
> > So, do the PHY configuration in the phy_calibrate().
> > And check the PHY is ready or not in the phy_init().
> 
> I would really like to see the PCIe controller driver side of this also, as it's hard
> to review standalone. For example I'm not sure if some of those reset bits
> should also be driven from the PHY driver, even if they are currently hooked
> up to the controller driver.
> 
> Also I think the IOMUX GPR register handling belongs in the PHY driver, as it's
> configuring the reference clock routing.
> 
[Richard Zhu] Sorry to bring inconvenience to you. I would send out the v3
 patch-set and the i.MX8MM PCIe controller driver patches after I'm back from the
 national holiday tomorrow(about one week). 
Although most of the IOMUX GPR bits are related to PHY, but there are some bits are
 defined only for controller. For example, the device_type of the controller, the clkreq#
 signal control in L1SS, and so on. We can't encapsulate all the GPR bits setting into PHY driver.
So, it's better to let controller driver to handle the general register bits manipulations.
How do you think about that?

> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  drivers/phy/freescale/Kconfig             |   9 ++
> >  drivers/phy/freescale/Makefile            |   1 +
> >  drivers/phy/freescale/phy-fsl-imx8-pcie.c | 167
> > ++++++++++++++++++++++
> >  3 files changed, 177 insertions(+)
> >  create mode 100644 drivers/phy/freescale/phy-fsl-imx8-pcie.c
> 
> From what I know, there are several quite different PCIe PHYs used in the
> different i.MX8 variants. I'm not sure if we want to stuff them all into one file.
> I guess we should be more specific here and call this imx8m-phy, or even
> imx8mm-phy.
[Richard Zhu] Good suggestions, I think imx8m-phy is better, since the i.MX8MQ/MM/MP
 have the similar architecture of the PCIe PHY implementation.

> 
> >
> > diff --git a/drivers/phy/freescale/Kconfig
> > b/drivers/phy/freescale/Kconfig index 320630ffe3cd..da078a676fbc
> > 100644
> > --- a/drivers/phy/freescale/Kconfig
> > +++ b/drivers/phy/freescale/Kconfig
> > @@ -14,3 +14,12 @@ config PHY_MIXEL_MIPI_DPHY
> >  	help
> >  	  Enable this to add support for the Mixel DSI PHY as found
> >  	  on NXP's i.MX8 family of SOCs.
> > +
> > +config PHY_FSL_IMX8_PCIE
> > +	tristate "Freescale i.MX8 PCIE PHY"
> > +	depends on OF && HAS_IOMEM
> > +	select GENERIC_PHY
> > +	default ARCH_MXC
> > +	help
> > +	  Enable this to add support for the PCIE PHY as found on i.MX8
> > +	  family of SOCs.
> > diff --git a/drivers/phy/freescale/Makefile
> > b/drivers/phy/freescale/Makefile index 1d02e3869b45..9fd467b58621
> > 100644
> > --- a/drivers/phy/freescale/Makefile
> > +++ b/drivers/phy/freescale/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)	+= phy-fsl-imx8mq-usb.o
> >  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+= phy-fsl-imx8-mipi-dphy.o
> > +obj-$(CONFIG_PHY_FSL_IMX8_PCIE)		+= phy-fsl-imx8-pcie.o
> > diff --git a/drivers/phy/freescale/phy-fsl-imx8-pcie.c
> > b/drivers/phy/freescale/phy-fsl-imx8-pcie.c
> > new file mode 100644
> > index 000000000000..ff47d6b83686
> > --- /dev/null
> > +++ b/drivers/phy/freescale/phy-fsl-imx8-pcie.c
> > @@ -0,0 +1,167 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2021 NXP
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/delay.h>
> > +#include <linux/module.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +#include <dt-binding/phy/phy-fsl-imx8-pcie.h>
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
> > +struct imx8_pcie_phy {
> > +	u32		refclk_pad_mode;
> > +	void __iomem	*base;
> > +	struct clk	*clk;
> > +	struct phy	*phy;
> > +};
> > +
> > +static int imx8_pcie_phy_init(struct phy *phy) {
> > +	int ret;
> > +	u32 val;
> > +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +	ret = readl_poll_timeout(imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG75,
> > +				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
> > +				 10, 20000);
> > +	return ret;
> > +}
> > +
> > +static int imx8_pcie_phy_cal(struct phy *phy) {
> > +	u32 value, pad_mode;
> > +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +	pad_mode = imx8_phy->refclk_pad_mode;
> > +	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
> > +		/* Configure the pad as input */
> > +		value = readl(imx8_phy->base +
> IMX8MM_PCIE_PHY_CMN_REG061);
> > +		writel(value & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> > +	} else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
> > +		/* Configure the PHY to output the refclock via pad */
> > +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> > +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
> > +		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> > +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
> > +		value = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
> > +		writel(value | ANA_AUX_RX_TERM_GND_EN,
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
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx8_pcie_phy_power_on(struct phy *phy) {
> > +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> > +
> > +	return clk_prepare_enable(imx8_phy->clk);
> 
> Do we need to enable this clock when the refclock is supplied externally via
> the pad?
> 
[Richard Zhu] Good question. I think this clock is not needed anymore if the refclock is sourced from external OSC.
I just enable the PLL2_100Mhz here, since when internal PLL is used as refclock, the pll2_100Mhz should be turned on.
Shall I remove the setting and just keep the callback for further extend usage(internal PLL used as refclk)?

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
> > +	.calibrate	= imx8_pcie_phy_cal,
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
