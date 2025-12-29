Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD8D8D3B7E5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 12:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRTcH2XlPhEd2XpbycFmcOojlfGYUx09CnjDZ+bnhM0=; b=g0RL55pe0fdBhG
	nNZk/lHPDvz8JKs+8CKUgun6J10kyuYql6snLxsPmDRQExd2vcZwcRLM6xtqYh3G+GN5qM/QEMuP4
	fFyElE2CtXCcB2z0A9trPKfxXTBoUD7E/d+ON68LivNZo6/ottddYVR7mr4Y/2LDy0fNu4GLM7aWb
	Jol0Tr0JlRAsQoG1rKwXnbpaqydeEwBYLNftKAI99KiG2BXlhRG3bxRM43DgRm22CuPcUtbOxq9rB
	gKiJCmU+zJe/YuLM/OTjze1qtP3GOsKeRoL+mui7CJrQyWg9TEVnokZM7viDb9izPMaoxN8geVLUT
	EQtsLvUCHK0CyFQbCWuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaBwO-00000003eCg-1Kx0;
	Mon, 29 Dec 2025 12:01:36 +0000
Received: from mail-francesouthazon11021129.outbound.protection.outlook.com ([40.107.130.129] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaBwL-00000003eCE-0rKx
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 12:01:34 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=bW44mLgDznML8tzG/UZQBi74ZmEPhIVuLFiSFCssKoMjndU49ZjNzoP08N/UfTTDNmBB/hhA6s508xlDSwoMfu1zkOXzubMaZ85zCNX+BXjAz++X7iZQupvamg2kJ9U9+24JY6QLlAx/LRRQiUJRO0GiLK4ceMh+LXyiNnP1JKqmky/8hD6RwMGd7gQAPIlogsO39N48Wm3uE5HrKnxRtSLWucznAjYcUAJiAmasohaiHV3V/mLO2mMi9Unf8UsYU//zoXeKHhmkDECuhY2LvMpWjGXyhx2aMylFyOOy1n9Sq+RFwKatfmS8wCSDBtIadBJtlb6XBJvDNOxFR3IRkg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZDWcuB1GzVwbhzSL1QVAfGRHdjuyH2iDl8eV04oieo4=;
 b=B9FlYcec7okwKW7t+WJA78nWPugRijw6fraKXyREvmpVjXBLBjgvc8cUhcV5bj7gGo86WFOuhNTgUonbOS2a4t6et90+nAXnRB/zNhKfhY1G/VYRn+psaMUAPzyBgkhTWutwlLNmH2IYkflwHmBcwuoMKjFINWVVrdYda5GT+sinCphrwAWS/K3PtYa4jc+OZzinE8IKd+N7PCpcIxJa4Ek9H1iE72EdcT+ncPNVxex+fBLT5sitc8v6WtuyEOFo1KvxXBi9UgfN1HssPA4A2CNedzuNAvACXgNKYhzhsMR362XQG8HGDNSYagQGoppKTjB120bpuszMHJ4ukuDfBA==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDWcuB1GzVwbhzSL1QVAfGRHdjuyH2iDl8eV04oieo4=;
 b=QHkQQETaccZj1d0dt3Y6UsS20cwI/eNsd0mlw/0zm88QW+4QdO7AxXU3Ic6MomHW0TO1j85/z6X6RG8tE1dgUogtOAa7huqn67eSHNJKc1a7XtUKqeRbb2XjBNNMd3eXxGEyC/0PdBOmqS030tq7vPRlZNRroN3CY4tYgWNFm64=
Received: from DU7P250CA0002.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:54f::15)
 by AM9PR04MB7522.eurprd04.prod.outlook.com (2603:10a6:20b:282::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 12:01:28 +0000
Received: from DB1PEPF000509F5.eurprd02.prod.outlook.com
 (2603:10a6:10:54f:cafe::e6) by DU7P250CA0002.outlook.office365.com
 (2603:10a6:10:54f::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.14 via Frontend Transport; Mon,
 29 Dec 2025 12:01:22 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB1PEPF000509F5.mail.protection.outlook.com (10.167.242.151) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4
 via Frontend Transport; Mon, 29 Dec 2025 12:01:27 +0000
Received: from emails-6921961-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-157.eu-west-1.compute.internal [10.20.5.157])
	by mta-outgoing-dlp-431-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 9FDE38039F;
	Mon, 29 Dec 2025 12:01:27 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1767009687; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=ZDWcuB1GzVwbhzSL1QVAfGRHdjuyH2iDl8eV04oieo4=;
 b=MlMwDNDjRSPxWKZa6BFg1CeKi/IE72ja8ZMaqGPbaub8RIBQkU9iMeqDX6iW+yAfZnpqd
 RtkNNIW5mFzWdPKXod46ctyeUyVv5SuN5Ktg1O4EJparm3Lx8rmqjWvPRxG5qV+PwhTWcXd
 njE0naYRO0HJtIUWtH20kTBidgYf8/c=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1767009687;
 b=EEPa5VcF24NdiHNdi6c5yPGRCiaXkP1JHZFVx6xYWQaUzYn7SRjqrrQ/vRAspwW8dUW68
 RfJYOOCsYXzIDp6487KJNKi+f4jlT9ysDCTmZFgeZnJiqjsuJxODHbpnK2PafTDrrd9vSRl
 CosBU2R5+3TG/9HtkJ5XiU4h7ksLyA0=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=giiF1I5QjHawl9vj7ckHyL4oRDH4eVyvQztrBWz8KwGQI16BQcyCQHp1nZmdPng8kFAffiY/VuQ0j3ffvKnV2WKCYVzV6UUAUksis4beFotxh42xs3r0IfgsSeBAfHKyf5B/RCpIH1SAJwRtEQv+iqk8CYSuq806xqLRvXSXMdn0Ng35kWlstQeitgS8RoOleXr2VHtYtb+eGB37CJurRoFgT3jlIUSHOjtiX6jzCWJ/BeVnJMVA8tSzKOAnFm9hajgB3qdpNvNkhTkRT6BoHwVoFDSrGCTZB1WUerLVGmtP6IDoZbSizJ8MheSqyMLf9Mg9pZZe+yGjVKayUG5wCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZDWcuB1GzVwbhzSL1QVAfGRHdjuyH2iDl8eV04oieo4=;
 b=LUKmj02NDIpC9LQjY8vqFLh/1OfjCkDEjFTisV6kW2nI4IKa0QzoHhSVU34zimidSY7aQlw+XM7+5fQkswewgkz+DT3rQU7xdeJW6gcWEp29OyTVGJE55lwRj9iqPRH1bwUVPRf9kiXnkgp6pdK8mcJskcz2fEvwYFiobkaReycKx0+Rp9WrzEhPocaR2tTnxtIvbUo2TtnK+gU7QlMaMrdjYPf3wTqSgEnTUloECEBt5Ao36HJ5V2S1bNMfHlUJPenPlRoty+2dEtqocCim1V2qRPbPAGz2d8nPXxgIYFu0uSb90dVwssQywXV9Y/g1kCsNUhVCdrUkLEXPt1SJ5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDWcuB1GzVwbhzSL1QVAfGRHdjuyH2iDl8eV04oieo4=;
 b=QHkQQETaccZj1d0dt3Y6UsS20cwI/eNsd0mlw/0zm88QW+4QdO7AxXU3Ic6MomHW0TO1j85/z6X6RG8tE1dgUogtOAa7huqn67eSHNJKc1a7XtUKqeRbb2XjBNNMd3eXxGEyC/0PdBOmqS030tq7vPRlZNRroN3CY4tYgWNFm64=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PAXPR04MB8928.eurprd04.prod.outlook.com (2603:10a6:102:20f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Mon, 29 Dec
 2025 12:01:18 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 12:01:18 +0000
From: Josua Mayer <josua@solid-run.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
	<magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas
 Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, Roger
 Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Vignesh R
	<vigneshr@ti.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
	<andi.shyti@kernel.org>, Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan
 Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>,
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
Thread-Topic: [PATCH v3 2/6] mux: Add helper functions for getting optional
 and selected mux-state
Thread-Index: AQHcafvjRT5zKouON0q90YQR/1KWr7UtgcmAgAsf64A=
Date: Mon, 29 Dec 2025 12:01:17 +0000
Message-ID: <fd901bba-3203-46c2-b282-c5ad04128fd3@solid-run.com>
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
 <CAMuHMdXjAS6HOYy5=uxcK0RZL5X6agRoHG67QUw4xh5+ovZaJQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXjAS6HOYy5=uxcK0RZL5X6agRoHG67QUw4xh5+ovZaJQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|PAXPR04MB8928:EE_|DB1PEPF000509F5:EE_|AM9PR04MB7522:EE_
X-MS-Office365-Filtering-Correlation-Id: 85669d96-8431-45a4-15c7-08de46d1ff4d
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?N2tWTGdFWkF1L0pSbnZ3dTh6MmNvdEpiT2QxNUpHVy8yWFg4d3VNampnSDFk?=
 =?utf-8?B?bFRaTk9ucmNUTTVtK2UwS2Z0NFVqV0EramhweHNaS3pEU2dYek9QTTgxV1BO?=
 =?utf-8?B?d0VzeVNkUENiUmt1dWx4NHhNaXJHaVlPRm1oMzFMUEpOR2haZG1UcThsVVp2?=
 =?utf-8?B?endSUm9pdlF6Slh0YnJhYzV6SG5pOGgrSTFtYy9IaW0zd3dXQ1JqUzhISWRn?=
 =?utf-8?B?ZFRSMU5iaG9VWkRMdzljMUMvVmpzZFRKOG1BMjFUamVnaXZKWjVIaUNTdWtN?=
 =?utf-8?B?TXRTTDZwV1VwSW1DVEFzWE5meU50VGVuNG9vQUJPdFZTMW1rSjcvRUdlK1c3?=
 =?utf-8?B?ZUQ4MmJReFYzN3U1a3V1NEdtQ3NONmJwK1NYT0xJK0o0QUVkRGt5YXJwSW5M?=
 =?utf-8?B?SWZEMkdQdGhxYlVQMVFxbU1xUnRDK3BjaG9JazF5b2pNZUVvZ1RrYzNMS3Fl?=
 =?utf-8?B?Y1JaNHdVWEx2MkRtNEt1c2V2M2xjNlZDZ0ZrV1VLWFRPUE82RCtSVC9Kemhp?=
 =?utf-8?B?MW4wU2E4K3M1S2dnSjBMUDVEU1lNSWQxdktTaU5kWU5Hdjc3YkE1TVViZFJ2?=
 =?utf-8?B?ZUtuMXcyZ09SNkZoRXNIMitkNUxhNjRtMnEycUMrdElyWnJ2clB5bVllV0tP?=
 =?utf-8?B?TlRQK3F6cXJUNzIwVUpRdTN4a2lNSm5QaFp6NmY4d2EzdE0xK1N2ckZ2bVdn?=
 =?utf-8?B?NDZhcHEyT05uMC9KTEltTC92NVFTQTBFN3ZkQjBXZHQ5dnR1clFaSTM2ZXpQ?=
 =?utf-8?B?Wk1kRUtwZzhpeENaTi94R0pGVXdCNXBSdTNzVml3bFJaZk1YS0dBQmQ0MW9y?=
 =?utf-8?B?bzBSOXdQbndKYTAyT1Q5YkZMeXhCSEhTaU9jOEFPb1dCN05YcEtJSG5VUWY5?=
 =?utf-8?B?eFJla3ZGdXJoS2ttY2c2UStqNlYrckFkaXlkb0dvWUJ3OFAxS1VVN3FKTndx?=
 =?utf-8?B?QllBdzhJR3JuZnkyMHdnaWQ2b3QyOStHaC9QVGtnTUYwSDEzam84K0lzQy80?=
 =?utf-8?B?TUhVMEVEbTR6WFdkVkpaandzZzNwcmxCZ2l3NnVldFFoUTVzeElNd3hOQmdn?=
 =?utf-8?B?ZnFMSlYxdFF4NU9qZXhoL01sRS9ENjNJek1ENU1paDRyNzFHbzZxRnR3QjR4?=
 =?utf-8?B?RTBVNDJHSlc2UEY2L0IrMHhGZnEvRFhEM2FZelAwMllNYTRnN0ZJbEM4VXk1?=
 =?utf-8?B?Q0dSMVBKL1FBVU9KNk1RREZsOGZqTzcrUkNMNUZUN0VSeWVMYlNjOENrVU9E?=
 =?utf-8?B?MUJTQ0VPUUUyR05LZ1p6ZVJ2ZXpSYjcvWGFRUW1ZbTlPQWZ1OXNmZmJ0YmhI?=
 =?utf-8?B?MGM0NFJlNkp5L2dyT2N3a1NtZUlQcTZWNHprUTRBeG1uSW1tQWhERGk4Tmsx?=
 =?utf-8?B?TG85SUw4Vy9TbU5vRmRuOTVmeHJlb21WRk5KUmkzWStnOEFoVmhqUldSQ04z?=
 =?utf-8?B?M2MvSkp5RzVhZytVaGd4UmExQ1RJU3JPNFVIS2VGZWd0a0dZQklJM0RHdXMv?=
 =?utf-8?B?TzBaaTVFN0R6SXI4eHBzOTlBSDNqZTJocGV6R0U2M25URFg1UjRWNm0zWHhR?=
 =?utf-8?B?MU1Sc1pmcmtGWmVqaE9yZ2xpWmVEOGQ5N0daWnVzYUlpcjN1dTM2a1RnTnl5?=
 =?utf-8?B?MnV3S0ZkS3pKdDJnSXVtQTdsUEFpWWFidkQ0WHdlVnF1bnVZazVSeEMyd1hP?=
 =?utf-8?B?bWZnaCtDeGpyemRGcCtZUnUvaFBWTXErZVlkS05FUlZrQjdaR0s3c0lhNTR0?=
 =?utf-8?B?a3QzVFd4RUdZRzVNd0M5N29WVnNzSHgvM0UvQS9ieFRTKytwMzdoQ0tFRGJL?=
 =?utf-8?B?Mlg2VzZtUE4zd2hsdkVjbmlaMnpQc2RwSnV4eFI2RTRhN0ltenB6NVpzRHJG?=
 =?utf-8?B?ZjJ2VklQRWpNZCtLdE8wZlBWMlFmTVdpSVNtZ1lKY2tlNmJjR2FGOWkwMW5C?=
 =?utf-8?B?bVByeTN3citKRlZLd1pSY1JwVlBKeklEZkJZUFhBMnI1SnJNNVgwSUNPLzJG?=
 =?utf-8?B?S2hFbzFPem9ici8vM0lsTHVaSTFCLzNGaW1LejZORVlGVUlpcW0vT242M0dv?=
 =?utf-8?Q?AHtzip?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <2CFCA171BD93E444A8B80039BFEE193A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8928
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 03d96c6fa42046308272a8a95c12d81d:solidrun,office365_emails,sent,inline:90947a8010ec37c6cdd57d1ec71ea2fc
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB1PEPF000509F5.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8a4ad613-ad07-43c4-0df0-08de46d1f96a
X-Microsoft-Antispam: BCL:0;ARA:13230040|14060799003|36860700013|376014|7416014|35042699022|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHJwVE5lR3pWQlFybkRPdTNFbXBJUm9UVTlRMENMWWtOR0xEY1JtcTN3TGZV?=
 =?utf-8?B?RlF1RU1SbnFLL3ZtUDNXR3A5V0JITUIrbFMxajZSZ3VlNVF2WkJETlZoYlVU?=
 =?utf-8?B?ckN2RE9Pcm1IaVgxa1N0RExhei9lOW5leFEzVnUzdnhjZ3J4WlQ1ODhWcVlv?=
 =?utf-8?B?R2JiUEp0eEQydmRndUw3T3NKL3lhY2UxVTJZWS9RUjhGWlZEMnF4cm5FM2VB?=
 =?utf-8?B?S3JQSUNWR1JkbytQbldKOEF6R2xhbzExTFFaNXRKbDROMkc4T0V5N1l5UjN2?=
 =?utf-8?B?RHJDaXFBbkVEbjhvWEU0cWJDZktRN3ExdEVHQ2YyTTZBZG1UL2Y1YjRJSSsy?=
 =?utf-8?B?QWdtSW9mV3JWZEhsUDZrbGN6OWsvOGxhbU96OXFKc1BCWlJTKzRmamdWMU5X?=
 =?utf-8?B?VFEyT1E4M3VFLzNwaVNtY0VtRTFsQ1dVdEJRTUhMY0NjN3BITXBxL0lSbEFr?=
 =?utf-8?B?WEVjN2RxNUs4TmVDOTdJOGVzdnlERWUzR1oyRWxIYjNmN0ZHd1dyWEVQVUxo?=
 =?utf-8?B?VkhrcVNHMG85UmhGWFR3L0hlR2t0MTlSTnpLejlqSXA4WjRYN21XVUxla1ox?=
 =?utf-8?B?b0hjVnhWaWNnUU96VlZrMUQ4Qi9OZno4TGVLZjZvZUlvUytOWXU1TVpVMGIv?=
 =?utf-8?B?czNkbC95Z0txTTI4Smk3YUtrTFdpWlVQVXdhdTV0SDR3RFpTcDQ1cDltbm1n?=
 =?utf-8?B?OW42SFg0Qjg3Q3JuRi9BeHMyTWhvVGZOM09vZWNZdGNGZW42Y1ZWOEpzcWYr?=
 =?utf-8?B?bGJNOUx0N3N5djBJMVdhTHMwMzFNK2I2ODRlSUtJU2FLYW54KzJXUitHdTB4?=
 =?utf-8?B?OFRFZTExaGVLQy8vdHlQSVdGNk9QdEpWcUMwNFg1UkFRY2ZEVTdyTWRmZnU5?=
 =?utf-8?B?c3FaSzZwa2FFN2U4YjRmdXhVdXlGR2liYkFFSjR0M1BQZ2J5dEh1c2NlRXhP?=
 =?utf-8?B?YmNIelFueXZjSHNNNVFrcGZ4OHFSNnlqSS9FL0xuTGdBUk04dFpnaGtoaEIw?=
 =?utf-8?B?NkJpSWorMkxtQ1JoUW9CWU9LZGlrV3NORnhKTFZJWVYzY054OHBqbW9yM1JM?=
 =?utf-8?B?N0JHVFkwYjRQQTJCMXBsWkwvMzFxanhxZnprckFGUU1FWGNFSGF2Ni9wK3lk?=
 =?utf-8?B?RkZDTzk3N2tZTnkrdUJTRVZ0RDFMQmZWei93T3pMQW4wMTRWK1kwQ1NvMGJM?=
 =?utf-8?B?RmNaV01KZU93NlBXWGJLSkt2VmhIYVFDL0hsdmFReDM2NmRmTlJteTBCUHdO?=
 =?utf-8?B?SllWbDlzMlFFRmpSaTRFN21hTHlyVUtlWWpUTnV2QVNoTVFZK2o4YlA0TVNB?=
 =?utf-8?B?U25kRXMyM0xDWGNQR1ZlWkFuQm1sbllkRjRzaUVJNEM0cjY4UndQeVU5cVNq?=
 =?utf-8?B?UUFxSnhYYTdaVnJtUGMwdlhJbGk1RmJrSjA1ZlBiZWxmN01uT2dYTkw5bm1R?=
 =?utf-8?B?SzU5YVRyU3QyUTNDSnlyS0dMRjZSRUpUOFhtYklyT2lwNE43TFpVdENYWXp2?=
 =?utf-8?B?eUZlRTREQ25JaFN6ZlZrcFJ5ZGhGY0JGUmptWFNIMGV2RjJSclkyck95ckhN?=
 =?utf-8?B?SUZGclVuQmZLTTNzZ3ZFY1Y5RFNsMTM0Qng3R0dMMjV4SkZSbWpqM3hUM1N3?=
 =?utf-8?B?cUd6OWNPTWZZcjlMbDRURkFocGpBU2lOV2dtRUFoZUY3RERjNUdYQkRibTZK?=
 =?utf-8?B?YWF5ZCs2ZWEybUs0SXNhb0VyWXlOSkxwYmpsVktHeUtuR1VzY1RkazFRL0NL?=
 =?utf-8?B?WDFndnoxMmI1RUNYdHlEc21OV2dEWHJrVHgrbVJvcmtiZHJrbG5wRU00R1dn?=
 =?utf-8?B?NFgrU2JHU3kzekV5U1h1N255NjJUdEc1Uk1hUVFPTG1qWGtaRFQyc0M3NExL?=
 =?utf-8?B?Rjh3aWhDRkdJc1lqNDB2RlVZT2tFUmZ1YjZqNlBhT2swNEpuNVVHVDRlWS9a?=
 =?utf-8?B?alliR2NIcmdzRlV6SGxsSFF1b0hvYURPQllSWVN0MVFCNW45bkZXSXFKOUZv?=
 =?utf-8?B?aDdKeE5JSlR4MDFZVGlkS0lQQjZZaEkyTEFBZDU2dEIvTEtyWEdPNGMyMlRN?=
 =?utf-8?B?elpZMnVhQW0vWnNBazJMNWJjdVVPUTFCR0N2RzUyVy9jYUtmd3NCenQza21L?=
 =?utf-8?Q?FHO0=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(14060799003)(36860700013)(376014)(7416014)(35042699022)(82310400026)(1800799024);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 12:01:27.8101
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 85669d96-8431-45a4-15c7-08de46d1ff4d
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509F5.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7522
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_040133_413290_20291A05 
X-CRM114-Status: UNSURE (   8.47  )
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


Am 22.12.25 um 11:08 schrieb Geert Uytterhoeven:
> Hi Josua,
>
> On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
>> In-tree phy-can-transceiver driver has already implemented a local
>> version of devm_mux_state_get_optional.
>>
>> The omap-i2c driver gets and selects an optional mux in its probe
>> function without using any helper.
>>
>> Add new helper functions covering both aforementioned use-cases:
>>
>> - devm_mux_state_get_optional:
>>   Get a mux-state if specified in dt, return NULL otherwise.
>> - devm_mux_state_get_optional_selected:
>>   Get and select a mux-state if specified in dt, return error or NULL.
>>
>> Existing mux_get helper function is changed to return -ENOENT in case dt
>> did not specify a mux-state or -control matching given name (if valid).
>> This matches of_parse_phandle_with_args semantics which also returns
>> -ENOENT if the property does nto exists, or its value is zero.
>>
>> The new helper functions check for ENOENT to return NULL for optional
>> muxes.
>>
>> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
>> property presence check") noted that "mux_get() always prints an error
>> message in case of an error, including when the property is not present,
>> confusing the user."
>>
>> The first error message covers the case that a mux name is not matched
>> in dt. This is removed as the returned error code (-ENOENT) is clear.
>>
>> The second error message is based on of_parse_phandle_with_args return
>> value. In case mux description is missing from DT, it returns -ENOENT.
>> Print error message only for other error codes.
>>
>> This ensures that the new helper functions will not confuse the user
>> either.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
> Thanks for your patch!
>
>> --- a/drivers/mux/core.c
>> +++ b/drivers/mux/core.c
>> @@ -542,11 +542,8 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>>                 else
>>                         index = of_property_match_string(np, "mux-control-names",
>>                                                          mux_name);
>> -               if (index < 0) {
>> -                       dev_err(dev, "mux controller '%s' not found\n",
>> -                               mux_name);
>> -                       return ERR_PTR(index);
>> -               }
>> +               if (index < 0)
>> +                       return ERR_PTR(-ENOENT);
>>         }
>>
>>         if (state)
>> @@ -558,8 +555,10 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>>                                                  "mux-controls", "#mux-control-cells",
>>                                                  index, &args);
>>         if (ret) {
>> -               dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
>> -                       np, state ? "state" : "control", mux_name ?: "", index);
>> +               if (ret != -ENOENT)
> I think the non-optional variant should still print an error message in
> case of -ENOENT, else this has to be duplicated in all drivers using it.
>
> This is typically handled by having a non-printing core helper function,
> and having printing non-optional, and non-printing/ignoring optional wrappers
> around the former.

I would prefer letting drivers use dev_err_probe.
Silent helper functions can more easily share code between them ...

If this is a strong preference I can rework the error behaviour and modify
the relevant mux_state_get and mux_control_get.

>
>> +                       dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
>> +                               np, state ? "state" : "control",
>> +                               mux_name ?: "", index);
>>                 return ERR_PTR(ret);
>>         }
>>
> Gr{oetje,eeting}s,
>
>                         Geert
>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
