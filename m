Return-Path: <SRS0=OBTU=OO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16CEFC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 02:08:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BED5860F6F
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 02:08:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BED5860F6F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuzmWFM3Izp7RgvCYW9n+tQ2twCAuRJwS3bVvX4B2ZI=; b=329JOggt8+I6Ro
	sHKVeZouwdcQbcJD0kijKWW3CsUtUHKJl+ClVwJF+H9WAc9ZXZgXqzbqnZH1oRLcdgquYJr9dN5Mj
	Fr6e2v1J/FUiYTgJGRNIYOD7YrzMx4TkPbKXU3XJeX+IlU+/KWy7okr+u7KnwVNw9KS2QzEc62iHO
	LeiVizUAunyjhvZcFGyk8pNEjU4lAPEiYxs+xlJhipVEMVHRIUbIZ4E2KsiBE7lgNVkuC9E6WAlmZ
	kDshUIUU+zCLUOlPttZ+V5eqOhb2dC2sPSj1dQg/W0oMKO5XnJkOxVmGIeNNdklpvbAnq7sfnXV+c
	UcRV2cryrtv1urnyytSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTae2-00CtsK-Ab; Fri, 24 Sep 2021 02:08:58 +0000
Received: from mail-eopbgr30051.outbound.protection.outlook.com ([40.107.3.51]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTadz-00CtrJ-Bc; Fri, 24 Sep 2021 02:08:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hdDQT1/fdRUAd3FSTyPEgpqg74zCLAHapxcSHfbaAozUepSDCGiwfsgJRd6weml6OuIWK2/OsJKAjUf4p81S0wwXmFo47E2kR8xfpCFwdCIDIrB3GEk0zgQzkDoXOI61qQUyvaBCaIKzauH49hFm6XzAPQbHkdHodYORexqX6RSh6i8/T0tuWXjdog13vefiRaC/CA6bhVI/O6LvYMhmJFfhRPX7/+btyEYPMQ1a9+sfDz+gilO1jTMZIO3AWnLP0k8fKbH9P2uUonM+CfZBuP8fmbgzCYdhMTMHcf53wE9nzJSpXhplbI+Sc/rzJ6B/Gs0eEV6XXajNmQ9OcGqieg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=UpWs0WA6+EpJ7LgURUeDNuUzZHiCkEz31d7FQ8McC+M=;
 b=KMwoyKAKD7oKXgmOL2gaC7CY7ftHPRKp07bEh8/u3+jsiH0YgEzGbgjDw3UR81KOQY3alWpsJinOE/3DUEgdczmuc1EXH5KixtEP3kqf3BZ5rdB3g7d0e++qwmIeQyriZ7f/GFuMj2ODZ80bcnjdm8ulOy+nl4B46Y54wQjDedVD+IKiv7sqOFkeNtXmb53tZOG8GBjEDHyTmb+jiEgn7xum8XlDo1smeqP4Q4K+GDHfNWivO9osCCOzjUAAyQzcXdPMhFUkCbn3bhDt/odV7tMd7SZ6VfxCs/YinxptHaJVLsZ10cim+teuyXk7cKSuwZJkxihfOAYANDdpfH6VDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpWs0WA6+EpJ7LgURUeDNuUzZHiCkEz31d7FQ8McC+M=;
 b=n9UB5wI+A7+F59OUxZFgvfY5o5UFp6rvEmBPu1M1SQNKJ1Sbls3E/cKvmNQoHsgGClE8tNogB28kskkSjUWH81GwDUWrSGi+Gd3QgUb2Hw69PAEDWvQAHrDUYgForJQi7ZpZ3DaQsitYLqB5YDPR5v9J/R0TJCpdZk7pQisMuS4=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8530.eurprd04.prod.outlook.com (2603:10a6:20b:421::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Fri, 24 Sep
 2021 02:08:47 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2%9]) with mapi id 15.20.4544.018; Fri, 24 Sep 2021
 02:08:47 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Rob Herring <robh@kernel.org>
CC: "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "kishon@ti.com"
 <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for the
 pad modes of imx8 pcie phy
Thread-Topic: [PATCH 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for the
 pad modes of imx8 pcie phy
Thread-Index: AQHXq29U8Xq0ppHtP0iI4eEm7KofLauweGAAgACtOQCAAJZSAIAAvx2Q
Date: Fri, 24 Sep 2021 02:08:46 +0000
Message-ID: <AS8PR04MB8676167A1A61409BABAD2BF88CA49@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1631845863-24249-1-git-send-email-hongxing.zhu@nxp.com>
 <1631845863-24249-2-git-send-email-hongxing.zhu@nxp.com>
 <YUuDMjBGWfNsMf2n@robh.at.kernel.org>
 <AS8PR04MB86766122EB2D851844FC7D7C8CA39@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAL_JsqJJhSB1ZYUU_nB+U+1yr0kbWQLeO1CUs5PCQ85MEOb=Og@mail.gmail.com>
In-Reply-To: <CAL_JsqJJhSB1ZYUU_nB+U+1yr0kbWQLeO1CUs5PCQ85MEOb=Og@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f03ae80-e40e-4489-8b9f-08d97f003e65
x-ms-traffictypediagnostic: AS8PR04MB8530:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB8530D4D7C97B4690B18C37958CA49@AS8PR04MB8530.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0m7ixz61kxahBc0W91MsAo4WuHsFR3Xwfv+xbyEAdZMZaJRhcDWt8+gHulsIs7VrBnJMkXWOeKDq34aL4SMnd7bm2SLkr9LaE0eiOlKHRjkQBnq46xTjGZQK4YUYW8Byf2GrRkgueQ+AF/Y4Yz7uKymDiMCJ1V3Zi01SHqkCpR5HXSdD/LeMhDolBf1FSQ73RjpO9NZhvRtTa7s2fFevl0rSHCAYCgUjoI0AxgSuzbeenjZdZigEc7qq+I752r2aQSd5nXuIYMUvUtgjEFkNnyQ4kfaOxGNioVgr+etJo4Kn8oUqkC46MD9cVHy+ofK5X4CZN4u5Xr9ASj4MczmONOuqb8YnSmiPMNARm3POEdYqOQzT4R455+84pSV6tL0Se6wnrRXxxHB4v1sqfjptRmZhv4ct059UI5DSQpg+S0TAbpIqvVG4hexjfsBlayVGHbUri/cLqOM6qHB++Uc02JYZr/Hr2kPMpiW7IfDSjKtYB1MaH2SdRVlUxpHXVW+AZ5n9pfL2F0sbDtfxBK+1q3w1VPV7UOvKolFJBW1qsb14052vNW51MinFZ5m7cEjwQ4YH55CtF5aoDqOobd30yAfAJwIbRSKz/nmHBnNUEi73Mql3nRFtriN7/8SYY0HOWUIDKIbRBPzr4Dixxp5KC2IJ0w8ivrq6IP/eZY9sPXKbhmq19Xi2VaD43ikAl+51+2QLvfHVv9ESil99PxPplQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6916009)(71200400001)(52536014)(26005)(54906003)(186003)(86362001)(8676002)(4326008)(66446008)(66556008)(66946007)(64756008)(316002)(7416002)(38100700002)(9686003)(55016002)(122000001)(38070700005)(508600001)(53546011)(7696005)(6506007)(33656002)(2906002)(5660300002)(66476007)(76116006)(8936002)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cG1QMVJRTlhJc05zeXpBS3NtMDJWbnRlQUNTOUk0RE00NGFIOUw5Mno2OGVv?=
 =?utf-8?B?R3NYMlYvTUJHWmRPWi85OTdxRDd4UWZMbGFuUktoRVRZVTQzWEUvZVIyMmdV?=
 =?utf-8?B?bmk0emQxZ2kxcEMwRmJjM0l2bjFGajlkR1Y2bHBDRW5MRkRXSUZHNkUxNmFY?=
 =?utf-8?B?NzNuSHhBUnBxVzYxcHl5akl5b0N4R0FyZFIyYk4veko2SjhWb2ozbDRDeFpy?=
 =?utf-8?B?NExrRS9vYUsrVWlOQnVaMDNIcEdGRU5BcDJSejIwNS9OR3R4YnRaaHZ5bmtp?=
 =?utf-8?B?bW52cTg3QXhqRDFuL2J3bVRVR3FuUlZtMFVkVDJObEpRVit4b0RIVHBYaGVI?=
 =?utf-8?B?RFVGdjRqMjNaclBvdG9KMXpDYW04Zno1TGJ1WmlZYnVJMjA2Y0N1d0N6Z3A1?=
 =?utf-8?B?UjlSQUpBUFBRZ1plR0xjNXp0aHZxL05ka2lyWGc2eVc2c3d2eWQ4MU1Rbndz?=
 =?utf-8?B?NWJYMDBYQklScFNPcWsrL1pITkQ3NXlrMmd3RzAvTjRSMjZEb3ZZbHY4VzdR?=
 =?utf-8?B?Zzk0Q1lIQS9uSG1YNThHNU1NMmh0QVlic3pIYU92ZHVSMUpTSHFHTjdiZlZT?=
 =?utf-8?B?M3JaQmNsb3ZCa2plRytBWXd5WXdNZHZHSFlyT21KQVdUM21hZEorWitZeHBG?=
 =?utf-8?B?SzNGV3VYZko2Z0hQbFpGYjloVm4wL28yeE1sWnBMbCttaXBETlh5dTlPcEFO?=
 =?utf-8?B?UzlHNUU5dEVWOVYwenZKdVd0dFRlSmxMazNWY2ZKcGRzS0pLRFNXaWVFZHhj?=
 =?utf-8?B?My8vWHVBYko4d3FVN0pPalJNWVp6Tmg5aWhLbXNPeEtsVDJ1K0IxSHdheVZo?=
 =?utf-8?B?UERJZ1VPY25PVGVOU1NyWmxOcGpCUU9sb3pZMjdxeUxRSk5rRVFHSWxjRlpn?=
 =?utf-8?B?eE9DWWM1MExraTZCSHBZcndySG1jN3lJNmtubWJ1TnBNKzhXMWdEWnE3L2pt?=
 =?utf-8?B?Y2IxZG5xM01jcHBUMjl4VDdsdERBOFBnK0kwTXJYNTdnTTNPUG9RQjRSbXV2?=
 =?utf-8?B?cGE2Z0YrYVlOcFpHMC9ETnA5dFBVU2d3TElzMVl0MVJvUE1ma28xdVhqdkI1?=
 =?utf-8?B?Y0dwb1EyUzdmQ2dHUWI0VmZucHBFSDZIVHlLdjhDd3FDMkdBS081c0VuN0cy?=
 =?utf-8?B?WlVYTjJjY0haYnpLYmx6YjJrQXdxRDljeUV6U2RPblpLc0xRbnJuUGdFLzNM?=
 =?utf-8?B?Tm1WS21hSng3c1JCSVl5U0l5VUpJM3dOLyt6bDFySVVHbEhtTmR5NjhTUmIw?=
 =?utf-8?B?bHFsZmc1NVR3a3BWV1JXUjc1VUNTYy9qc2RnQmxBQ0xXaHMwM3dqblBPUFJ3?=
 =?utf-8?B?T3R4ZnMrU21jOVBzcDRGQ1hNUFRuYllidnlkUWhFbjNEQ0NkdkV4NWNPNE5I?=
 =?utf-8?B?L3BTZ0gxT01BT2lqbnlyVC9oZHFMb0lXZkVabDJTa0F0a0JtckEyMWdzNkly?=
 =?utf-8?B?TVJMOTIxMk9zbng3WnlFWmJ5TTRnVUFYYThOclVLNzcybjVMWDE1WDhMemNy?=
 =?utf-8?B?SU9ZSloyN09ld05YM2x3NW9VQUJ1eDJqQUpGbkhnVUZ3Y3JrYk9FZFlXU2Fy?=
 =?utf-8?B?akdiRDN5Q2k1dUhiUk9nRXd4REFtZHZUZUlXbkZMcUZ0Nmg2N2xDMUEyMGw1?=
 =?utf-8?B?ZDBpRkR4TGpkMldGZk5PRE95MTFxTFVNU2ZCcUxJemI3WC9yazhoLytLc2lt?=
 =?utf-8?B?VHB4SkFhY1ZndVZ5M0VmRmRyWkpxWTNlNlpsdmV3c1d2L3VoUTIzbjkyWnR5?=
 =?utf-8?Q?+KgeumVN4iK9TWA8MWpwMUpW4+SLwdKhkZfGZYR?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f03ae80-e40e-4489-8b9f-08d97f003e65
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2021 02:08:47.0597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rP5FMvyy4C7t1EdGbojcL6M7E2qOPd4gZNNMm9f/kSI/uuGrVsyf/qghdUmIT55pn6vgMdg3pm5BIGL35XNq2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8530
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_190855_449526_51149CBE 
X-CRM114-Status: GOOD (  26.94  )
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
> From: Rob Herring <robh@kernel.org>
> Sent: Thursday, September 23, 2021 10:44 PM
> To: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: l.stach@pengutronix.de; kishon@ti.com; vkoul@kernel.org;
> galak@kernel.crashing.org; shawnguo@kernel.org;
> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for the
> pad modes of imx8 pcie phy
> 
> On Thu, Sep 23, 2021 at 12:56 AM Richard Zhu <hongxing.zhu@nxp.com>
> wrote:
> >
> >
> > > -----Original Message-----
> > > From: Rob Herring <robh@kernel.org>
> > > Sent: Thursday, September 23, 2021 3:26 AM
> > > To: Richard Zhu <hongxing.zhu@nxp.com>
> > > Cc: l.stach@pengutronix.de; kishon@ti.com; vkoul@kernel.org;
> > > galak@kernel.crashing.org; shawnguo@kernel.org;
> > > linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> > > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> > > kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> > > Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-imx8-pcie: Add
> > > binding for the pad modes of imx8 pcie phy
> > >
> > > On Fri, Sep 17, 2021 at 10:31:00AM +0800, Richard Zhu wrote:
> > > > Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.
> > > >
> > > > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > > > ---
> > > >  include/dt-bindings/phy/phy-imx8-pcie.h | 14 ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > >  create mode 100644 include/dt-bindings/phy/phy-imx8-pcie.h
> > > >
> > > > diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h
> > > b/include/dt-bindings/phy/phy-imx8-pcie.h
> > > > new file mode 100644
> > > > index 000000000000..fe198a0cc12c
> > > > --- /dev/null
> > > > +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> > > > @@ -0,0 +1,14 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > >
> > > Perhaps this should match the dts files license...
> > >
> > Hi Rob:
> > What's the means of the "dts files license"?
> 
> You include this into .dts files and those are dual licensed. The licenses should
> match (or be compatible).
> 
[Richard Zhu] Thanks a lot. I'm clear now.
Would change the license to "SPDX-License-Identifier: GPL-2.0+" to make it compatible later.

Best Regards
Richard Zhu
> > I'm not clear understand that.
> > I found that there are almost similar "/* SPDX-License-Identifier: GPL-2.0
> */" license contained in the files of the /include/dt-bindings/phy folder.
> 
> Yes, licenses are a mess. But what other files in include/dt-bindings/phy have
> don't matter. Where you use this file is what matters.
> 
> Rob
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
