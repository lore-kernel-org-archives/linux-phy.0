Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FFE8E63F38
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 08:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3QJJdtYndv4w3pAKjlBfx58sqaxR+/vEoBulbpvD38=; b=rIhEnSL9kVO025
	BQgN7P/z2XqIVEelf/DCenZndKuz2oZ8JhMOhm9tctttjO3JBJ1QjyBPOgzqoOMR6xHl0ACty5nX6
	SeSFAw8TctxY2VB1inn40ciXuX2feXEo1zNHUooKa++7XJCGdEpDHgDPpvkKcguQK+M1qmuyJMfvc
	r7GsXKY9wRBO+37CE2h2vsu6+90zsIvIAeIlm81p7Q3FjnO1dnbSahphjXUmB2ciSbfLAI99t64U4
	7F2FNw567VaedY1g9oV7+kGIsSz4hi/j6M2u0FzeVi/c4HguhPfw13jPP3NNAfqeDeMlNNpd5nuL9
	3Z8xn+BW/fZehPxNwSxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrtpe-0000000689h-2v1J;
	Mon, 16 Feb 2026 08:19:50 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrtpc-0000000689M-0XlK
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 08:19:50 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ffVOwTLo5eXsOC9fCe4wzug5bWI55bNDyBLNBNq65hYgycwY4MnjUagTvUe8WqQ0ziqscVEvkNcZNWTl0zvaog94wpl5ZwORO+TzWCxVorA+pNGh0O/ggdhqZDuS/Hj6m0IB5FO/mhVfE376BeZHOPsabEeDq6FapQ6KNdDdq/nmpqFA9KEqt+iIBl8wv4XIZPj3B7jCcoy8i3/7QgNoe/61Ei/Bb08ZobKBXBlh3jzUR3bSOsH0ua4lEj5C5GpTHUohuVKgcpOvebq1kS/sUKQ/Q3hKF9wucfA7PcU3kWxBYDzoRaEiFZnDs03L/v0PX5OYd7N4n1tIk9/ghM8YBw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QVI2KTwPS7kMw/1p7xetTl0i2J+N/urUa904C2DVq9M=;
 b=jAZndEvsUeaoHvLE6a/XkvUxTvdCRChW/8U95maEn+XnKLz6Sj/b0VDvKNmAoATmxfV4BuSI6AEJoPOcCFFlAK/a8YMCqAM189Ynvydjbabc3b5Nug8n9qWldOD+10LbFCiKTUFr9HdKf68dPOvOnvWqqEv2qM/ga56T45puj8EMdyvx94XGnpH2j7boFKMrn1m0UzqwQoS8kXbsKmWZTepvXhly0gzs2KQDDGytiXihXS5gEd8F0dZoPXlA8gH1H/2UgQu3rlF9ox33aReC4wzM+VXjKItY316VlQREaalB0u3nIMwfcNYjtt3uAXzAFeYer4ZyZ0PRz1uT+9ob5w==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QVI2KTwPS7kMw/1p7xetTl0i2J+N/urUa904C2DVq9M=;
 b=hxEoSRs/we3JAp6hSllcHOQpRueYdhAGH+UIYUVuC4CFVdMwQoe/ua2bdsU0hC6bO5te4efPkkABk/CRBeHRyQZxiFQZIiLCvnPOvKsdL5CXl/JDNtsKjogrxjLwcoeSNN2XuKtsJTTr3lT6yeCBcIQXw1j/NCsycZuKnO4HqTQ=
Received: from AM0P190CA0010.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::20)
 by VE1PR04MB7440.eurprd04.prod.outlook.com (2603:10a6:800:1b2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 08:19:40 +0000
Received: from AM3PEPF00009B9D.eurprd04.prod.outlook.com
 (2603:10a6:208:190:cafe::1a) by AM0P190CA0010.outlook.office365.com
 (2603:10a6:208:190::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.16 via Frontend Transport; Mon,
 16 Feb 2026 08:19:09 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM3PEPF00009B9D.mail.protection.outlook.com (10.167.16.22) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Mon, 16 Feb 2026 08:19:39 +0000
Received: from emails-6538875-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-134.eu-west-1.compute.internal [10.20.6.134])
	by mta-outgoing-dlp-862-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 084E1802E3;
	Mon, 16 Feb 2026 08:19:39 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1771229979; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=QVI2KTwPS7kMw/1p7xetTl0i2J+N/urUa904C2DVq9M=;
 b=n6MM3Fk5iVktHwGCMjrVcrGQDEHwfNiFtUrSGekxiFlK7n36aCmhKqRkIVJynxnca/ctH
 5KZwDPr2Q4pr/HazxRQuxudXn72ZqZG5EQ1lfYCP8rPKi4k6L/2b9DRIYXCgHB0ePso4PIr
 DFbgpZTH9iZ1WRw2YolWNpFsv9ShqEc=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1771229979;
 b=GynPLI7fcuPiBCRuX9GyCI4sfWdXmBtA3LKZYzqF1h4HyMQHASFwqdaKN+QsLI+3pe5xv
 Ru/dWgMjVAIMeMoleaxkiUnDf/9tcHT5YLdc3/PdIcb5R6JzbqA7YkodOMEyUzQApPWTrAP
 OHnzs6YmTMMFMhtt1GE4Bb6KLIMjE0M=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mhZiWhKptMMLfTcWzYixo3iR9Z8w1waYnQgs22GdHQD9MG8+vUwI2UxafBaO3dzTWG0DkeCo5WvAEbXNl/dr8+lDdS5VAqmDtDhOSbcUcd1JgYtFxeBw12QT6sbysTsUHTFkQ83oQZMn7MrCviaO8VITwezugYF1iabvY6Kx0jF8sQnuKQ7gxUI0A2/bpoQKFTk6spuwCP5Ppn/xh2L4wkxv3RUwdcIlX0RukP7daRE1On4e4KGIWoazRok+tuFPEbM5sKq6HCE95OZAC3DUAC/dF+fGsdKkLOrzUvtHqkyQJHF2JgLe67/0fHYtsjocgpbMcYXve6EDdYi5HdEBjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QVI2KTwPS7kMw/1p7xetTl0i2J+N/urUa904C2DVq9M=;
 b=fxk2reQ8M8qTd/CPreiRt+Lqj80zwT6hzewGfdw9spCiMweJ0sbk0xqMkZWJ1CqiadBoWAhloOyhnDvoql4t8tKDZZkhyW1zoAI/Q+2Aq76XA2h8biZw/eUFZXc1h1eo+2nJjaC3SLz9CH2yWmSB5VU84A+Lhp+7+ZkoOPkuzM5vf9MVcHjxO77siIU6762g21m7VGnv75p3PxzyqB8omM4MHpuaoNSuv/qOk9IFWTnpPYCEuYdSAxTbNm8CX6IEwq9IiQp7tDW6t8ovWftFH8c/7ElNUVn9FyacUQXrx3pSEhSLeDzw1Ia15k6COZBcngGeUKVf/PMlTN4/ZnGl6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QVI2KTwPS7kMw/1p7xetTl0i2J+N/urUa904C2DVq9M=;
 b=hxEoSRs/we3JAp6hSllcHOQpRueYdhAGH+UIYUVuC4CFVdMwQoe/ua2bdsU0hC6bO5te4efPkkABk/CRBeHRyQZxiFQZIiLCvnPOvKsdL5CXl/JDNtsKjogrxjLwcoeSNN2XuKtsJTTr3lT6yeCBcIQXw1j/NCsycZuKnO4HqTQ=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by VI2PR04MB10739.eurprd04.prod.outlook.com (2603:10a6:800:273::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 08:19:28 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 08:19:28 +0000
From: Josua Mayer <josua@solid-run.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Vladimir Oltean
	<olteanv@gmail.com>
CC: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, Aaro Koskinen
	<aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman
	<khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony Lindgren
	<tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R
	<vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson
	<ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven
	<geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang
	<wsa+renesas@sang-engineering.com>, Yazan Shhady
	<yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, Mikhail
 Anikin <mikhail.anikin@solid-run.com>, "linux-can@vger.kernel.org"
	<linux-can@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-omap@vger.kernel.org"
	<linux-omap@vger.kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Thread-Topic: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Thread-Index: AQHcmREPlBYTghYn+UKFA/cQGR2iuLV/TKqAgAABVACABbnOgA==
Date: Mon, 16 Feb 2026 08:19:27 +0000
Message-ID: <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
 <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
In-Reply-To: <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|VI2PR04MB10739:EE_|AM3PEPF00009B9D:EE_|VE1PR04MB7440:EE_
X-MS-Office365-Filtering-Correlation-Id: aabf3499-a5a6-4301-fbcf-08de6d342132
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?blh2UE1xMncyQVdncHdqejcvdURxblBxREI3KzBPdk9OeEtqMWVSVXY5N1h5?=
 =?utf-8?B?VjhFNHpJbmlaNHo4U3RDTnp0cEx5VzVxalNiNU5IQjRpYTBmSFVDeUlERlZV?=
 =?utf-8?B?VzBKbm9RR2JHeEpwYjlkL3A4cW02OTZhVG41SkRqanVFVEdsMHBxM0tFemh6?=
 =?utf-8?B?RjFmUUNDS29GOHg0cFY5NklqVVpSMDYrL2hOUHA4QVd4ZTJNMmRyczF1Qzgv?=
 =?utf-8?B?N2J4N3JhaEJ3QXk5N0NTUVNkYVFZZGVuU05kbkZ3ZUt3OXdwd3lNTS9VOC9a?=
 =?utf-8?B?Z0F5NWpraWliQitMZnFHQWdGWlpwa0dJUWhLRTNxL2VRNldjYlBsNVhVYWZK?=
 =?utf-8?B?Q2dwWmFlYnZyVTJhOS9PcVpkUWk4SiszNTkrNitkeHcrY2ZiWElnb2puVUxn?=
 =?utf-8?B?OFM2OVc0OXA4Z0c5QWh0QWt3OWVmNDZFMWFBZTAyelUzMEVKTkxJKzVWNGxT?=
 =?utf-8?B?ZkljTm4xbHVQbjZtWW12UVk2UVQ1Q2VOVURkOWlkVXVwOFArSEtZdWVuZG9R?=
 =?utf-8?B?WDVQVVBBcitHc0NhUm5aam5OckdJZHZ0anE5RGdudzlDbkY3c0NFZFBPa0hp?=
 =?utf-8?B?UWVmdDlXcndsWWZBcmVEY2tUWjJiQmo0SFhlaHlQMFJHWGx3M3dZREhEKzc5?=
 =?utf-8?B?aldRa2FLb0VuTmJPeTFuU25JTWlEOC9zUVNwdEVkdUhRK3BsQkNuTUJFbE55?=
 =?utf-8?B?enVoQk92T3dlVGwwYnJPVzdMMXBCZm03bTZmYjUxU2EvSnZXeEUrYWl6aFNz?=
 =?utf-8?B?Wkk1ZUdiUHBYNlJWa29VRVZ6VmN1aE5PVlIyekVsQmJEa3FsUUVZRUZlcXBv?=
 =?utf-8?B?UkZkT3FSTWVibDVVMzVjQTNnTEpQYzh2UkNSazV4WlF5bUF1cElVNExSSTBN?=
 =?utf-8?B?RlozL29xMlVBdEdrdmlsUDRCU3E3UlBINCtIZnhHM013VUordVhHSmRmbUx6?=
 =?utf-8?B?UWlpTTRpbnE1eDhxSENIaUFsTG50NkU0eXBpNFExQXJ4VWdYR0F2U21weGky?=
 =?utf-8?B?dnpIQ1ZSVitPRDNLaTlzYkFFK1dBaUhxZFdGL1ZPcStwZW5ZWm1jVko0RWgy?=
 =?utf-8?B?SlVnM3VDSHNXMEI0RlVkZDY4VFpDdzJXSmtQMW9yVkxzbTdmbXJsZGVxdHZx?=
 =?utf-8?B?U0FZNFA1U1crWWVrVXhkTTh1cmpJVHNEYlBOQ3hxN2IrZU1GSi9TaTR5aVY1?=
 =?utf-8?B?UFhKZlRtTWluUXI0THlYSENFNzI3Z2loVnY2eTBGUThyZUdabXp6Y044U0dK?=
 =?utf-8?B?SEsrYjY3NDJIUFNuQklZdTY4Mk9KdEVJZHA1WlZpWEJXR0F1OEMycHBSc1hG?=
 =?utf-8?B?OFZaemIrTU9mR0lKWDAyTWxNcUtLMVhpSmV3NCttTEROL0J5NGJWR2hqRXFR?=
 =?utf-8?B?aE5NbGVRazR6S25mMVBqK1VXQldWSXRKcTE4YmlCSkpHQnVNTVJkaGV2aDVq?=
 =?utf-8?B?MlhJdENtMzZ3aERiZDVHL2xHc2xzdVBPWnk0NnNPaHBhL3FmY0xTS1dJOEhI?=
 =?utf-8?B?QytZZGZYMFJRNHU3amVlVkkwdFNXdEU5RSt6NEVrMEEvM0NsZU5aaW1YdVRJ?=
 =?utf-8?B?WXo4VWJlSllGMzVLczJzVU9mNURic0EyaXRTbm1BNWdGT09lTDFIMFo4Rzlx?=
 =?utf-8?B?MHpzTHkrOHZsTm13V3FTTXJBN0tHNWc3NUxEcHd4eXdRei84UXpDRGE5M3FS?=
 =?utf-8?B?TEpuU1AvbHRSY3RLeWNIQ2RRcldJR09ZcldoM1VxRmluSk9WaWNMUXVETmZD?=
 =?utf-8?B?SEhhQ1hyQTF0NCtCckxwck5JdnMxUkdCMTZjSlhVUFMxZmk5RGdocVBUejB4?=
 =?utf-8?B?RHN4T0FZYnlVUzlLYi9BeFZCdmdJd285dlI3M2htbkU4NFdQNjR1WUl4UlBz?=
 =?utf-8?B?KzhMdzlHVUdnQVdRcWRITmJQZ1ZQTWZDZUd6MHp0Tlp3K2xZWEN1ekp6aTEv?=
 =?utf-8?B?aDBQMWtuNy9KWlc2NlREcmdWbk8zQS9hSXI0Ty9IUkpyQnJPQkxicEFYVnZ3?=
 =?utf-8?B?eDBZSkF2NXFtbEMzOEtXOXZ2UkNhQUNDUzUrNmZrNGZlK2R5VG95cWxmd2Yw?=
 =?utf-8?B?eS85QjNCdytVMHErMmRwTkpwU1FaOHZBcENDbkxyM0ZHRWVsdUZGUnlrcjB6?=
 =?utf-8?B?cGx5WG1ycFJ3RnBVTkZoOW9tZDNXN2dTQzBucjlxMHlleEVlL2pzNXNZdnY3?=
 =?utf-8?Q?t0rmP7goo6wphrnf7g/Q1ag=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <F46D7B5D059C984E8A15804A3621BC1A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10739
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 7546c8e625f44103abec821b691c85aa:solidrun,office365_emails,sent,inline:c0852e679e960787a3120466a88f665d
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM3PEPF00009B9D.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6f994d8e-173d-4b18-0027-08de6d341a3a
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|35042699022|82310400026|14060799003|36860700013|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTZqY0s2emtjSnN4dXlKelBHRXdjZFdiL0djR2RqMnhiSHBiRWNLRktQVGZt?=
 =?utf-8?B?MURSVzNOMnFCUHFMcmxuTC81ZDREakhwZU5HZXNjS3lqSEZvRUxXUnREeHdt?=
 =?utf-8?B?M2t3djVNeU9kcC9yWGs0UUpmNFNtR0lqQ1JoTGlRVWZmTXM1bkFEOG9DZ2NM?=
 =?utf-8?B?NDdNNlYxVXNmcm1mRk0vT2RKaGJEQ0NmWUhEVXdtbGMyRS92cEZyV0puSFVG?=
 =?utf-8?B?SFdibGV3dExLaEJLWHdTSFlDNlpSM2VzQTlyUEFtTEkwWWZ0QVA1Y1ZVMWFH?=
 =?utf-8?B?SFFzNEd6TlhTRUFxaHFyZXIzT1JIbm01K0s2d21CK3VwcjdDd0FCOTJhZDJT?=
 =?utf-8?B?cW8yU1kzM0twT2lFU3RjS1M3bXlzZ3A2eTNxdXgrQ29FVFp2TmhLS2pSRmJ6?=
 =?utf-8?B?bW95S1h6SEdua0tES0V0M0ZIMjNqdDJEOCtZVFpsUXZVSlhKTDkybGNJdGVi?=
 =?utf-8?B?QVhQZDNyZFRhTW1qcm5lV1dOYzA3Q0VhdmpvL2JxQkpSZXNlVHBLV0cxd0sr?=
 =?utf-8?B?SHFYVStucXoyaTZISEE4ak5JUEtaZ0g3Z1l5bVpPaTNyQnU1NmVRbFpET1N3?=
 =?utf-8?B?QjFhYU9ma25IVFdDWkUyVkFIMmFRdGZTOVNDQzBSVlBWZnF1L1l4eXliMmN6?=
 =?utf-8?B?SzYzZEg5Q3EzWFJzTTRyVmk0QWM0Nm5hUzhJVGNpL2U0SVMwVUllZ1ZkMWZD?=
 =?utf-8?B?TDRSMnZ5NDVSVW15ak5VVDFlTjcvVCtXc2ZydU1DRkh1VU9STXRRc2x2NXBz?=
 =?utf-8?B?MUhPTnJuZEVlc2dVWk5pTEhyd3h4T09kbDlKZ2JZTTN5Q3ZzNSs2N2syYXpu?=
 =?utf-8?B?OTlxbEVTcmFqR0pNUzVqVlUva0RlQ0c5ZlAxT0NacGRZR1RvL2pIa1NodzNK?=
 =?utf-8?B?RklYd1NWQk9XVXNXMTRXR0hjd3A5OGxmT2Z4MTVPZS9vWWdYMkczZEFHblpI?=
 =?utf-8?B?QzhRemtZanA0TytMSHRtc1NNU2NZWkUwUWRESnlEbUxGeisxNXNadGcyTjJ6?=
 =?utf-8?B?REFuUXJrK05vbWtWSWlhalR6OCtZSk4zTG9lMUlhZHhhbUlIZDJwWjBsVk5u?=
 =?utf-8?B?N21YcmhzOEw2czhQVlZ6RjhUVG9TbUJYb2NIWUQyUzk3b3hldVhwQ1NHU3o1?=
 =?utf-8?B?bEs1dU8xS3dGQkU4dnNjWGxiaEtxVE1EZTNyMzlwK2w5MW1rR3ZRZlIweW1D?=
 =?utf-8?B?M0JGRmc3cEVESDJhb0k0MThDTkFmbTlWL1FBdksrZnZjemQ3UFhqQjljZkls?=
 =?utf-8?B?cCtRaEJra2o3ekNWQUxWZmdPRFQ2SytOWHF0SHNvZElZUFdkN0F5dUxWY1hM?=
 =?utf-8?B?SEx3eUJsdW9LL2M0dEw5T3RFWDVsTmsrOWlOaVFpMG9qMHdCRnhhSktaWGpW?=
 =?utf-8?B?cWJ2NWVaQlkzb3RwVW9aQmZtRGIvSEovRGNhVUdtOGRkODF0RkN3ejVHaU5P?=
 =?utf-8?B?V2ZmWno5a1MvU094SU8rOG41ci83UXBjNytuSkErR2JER2RKc0lZcC9IN0cz?=
 =?utf-8?B?ZitVTGJFbkVnV0d1WXM2bU1zZGZSVjhlWUgxMGxzRERQZ0dJei9DaVJPU1F1?=
 =?utf-8?B?UWthUTBMRm00OFI4bU1CUmtwMXJXS2NEaFJsZmI2RnducDZJT3RzdUFXMWlH?=
 =?utf-8?B?MXdYZjJ3OG1PalBSMGswYlJrRzdpaHhRTFdvSFhPQzhsakxxY0F5ZXhycG83?=
 =?utf-8?B?dkFmZ1RmbXBJeTNHS0xnZXpxZ3N4djZsOHFIdzFwWno1RmxacDVYamFUY1J2?=
 =?utf-8?B?NnFSbHlhWkI1MzM3YkJrdWM0T01RWGRSdlJRSzNUMFhLTXM5WHpvcHkrU1Mv?=
 =?utf-8?B?OFJkcDAvTFVlZGE3am5yc3VwTjJGZTl1dGJwM0J3Z1ZhSUdOWGpoVGhkNEhI?=
 =?utf-8?B?SEpwZjRQVm8rRElPZWZMVnlucUJQaDRXNURaU3lHUjNNK01ONHYrMVhvOFZ6?=
 =?utf-8?B?WmhOdHBlbk01cjJOUkdXQjU4TFZPbU5LL0dUQkZkVStVMCtwbGY2eEFCNktj?=
 =?utf-8?B?dE5ibDdJaXVRdWlVdC9PNUI5QlFiZ1dqZEh2M1FXWEIvaEUwNWVjNDZUUmJo?=
 =?utf-8?B?VmZOTG1LQ0g2bUJSMmwveXBuNERHSWxQdzUxS3hBM3IzTjF2TDR4WGxLSk90?=
 =?utf-8?B?c3ZVY0N2QmdvclhYVTdISEpnQmw4RkhyeUhXMkVvRzRMUEhTUXdVYWt5MG9v?=
 =?utf-8?B?L1NyNzU3OHlTdzBxaFdjYituaEpXMUNFSmlXQVR6d3R4a3g2bExJR1YzaWFZ?=
 =?utf-8?B?VU5OaWR0dDRpOENWQjltN3RMUVlnPT0=?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(1800799024)(35042699022)(82310400026)(14060799003)(36860700013)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: lAjmAvMF7TrbZEVmfg5Fa1uEWLBRqwGIFtPljlLtNj0kZLW7h8fJCLrMMoEMmH0ehuowcR+hr3EtrEgvbwP3ss0/vfIeMrFJepvTkOyxjv+BEEBSOrBamfD/pUfVT9dpm7j0AEhuOnh1BGQcmIo+YbSFnY72vb/4oFD6RAcBa9ycO5Dv4UMiV/dHUMz7oOaFXjGpGViUX5AUP6+10NvnqcamSyxNICNzgOxAEhVbJCUpRuZ3KCFSV4o68eUXl6CJdD4pVAxW+iLBAoPOghPK44b8AKebvy+GR58bZrvTJAw/x3r3rxkZBTb5JvH6IrWV3oBzv6zcYWvrAzUsU3skpw3gT3MSx83sbREZdvIFmtYCR+m1YXlz269KRpyhZHq+lcJHuGKpC49p6bXhcrap5CpF1IERXdKEe4jfBKzXEPUSe+u/f2glnYc2EXsM8uC1
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 08:19:39.4860
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aabf3499-a5a6-4301-fbcf-08de6d342132
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM3PEPF00009B9D.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7440
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_001948_341407_84D17016 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
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

Hi,

On 12/02/2026 18:53, Geert Uytterhoeven wrote:
> Hi Vladimir,
>
> On Thu, 12 Feb 2026 at 17:48, Vladimir Oltean <olteanv@gmail.com> wrote:
>> On Sun, Feb 08, 2026 at 05:38:56PM +0200, Josua Mayer wrote:
>>> Rename the temporary devm_mux_state_get_optional function to avoid
>>> conflict with upcoming implementation in multiplexer subsystem.
>>>
>>> Acked-by: Vinod Koul <vkoul@kernel.org>
>>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> In the future, when you have a series with cross-tree dependencies,
>> please try to think of it as individual mini-series for each tree's
>> 'next' branch, and specify clearly that you need stable tags (to be
>> pulled into other trees).

I don't really understand how I could split my series up to avoid this 
issue.

Due to the fact that one (and now two) drivers implemented local
mux helpers, to undo that an atomic change must be made tree-wide.

Meanwhile it must be avoided that while the mux core helpers are being
tested / reviewed, that any tree adds another driver-local mux helper
like appears to have happened here.

Note that my patch-set did go to linux-phy@lists.infradead.org list, too.

The second challenge for this series was that mux framework is being
enabled only by drivers Kconfig "select" - and not possible by menuconfig.
This is e.g. responsible for being unable to test =m build with arm64
defconfig - and lead to it only being detected through kernel robot
x86_64 allmodconfig.

>> Telling maintainers what is your expected
>> merge strategy helps avoid making mistakes.
>>
>> For example, if you did that in this set, you wouldn't have missed the
>> fact that in linux-phy/next, phy-can-transceiver is _not_ the only
>> occurrence of devm_mux_state_get_optional(). There's another one in
>> drivers/phy/renesas/phy-rcar-gen3-usb2.c, and that should be also
>> handled in order for trees to not enter inconsistent states.
> To his defense, the one in drivers/phy/renesas/phy-rcar-gen3-usb2.c
> is a recent addition.
>
> So this is yet another case of "convert all current users" (i.e. those
> present in the typical subsystem base, typically *-rc1), with new
> users popping up in -next in parallel, which happens all the time...
>
> Gr{oetje,eeting}s,
>
>                          Geert
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
