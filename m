Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED98CA0FE1
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 07:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yw2mWo9QGzD5qIaRVoBA5hxlB86T7u5aTlTxiyzK75o=; b=TBc8mGDAG0JZex
	6hDC8U4IAxv7pBYz7WrhmQHssoTmHQtwggx9Tq83ldGq2RR+oiM6Oe/aqRSMp2sip/GtSX/NpJ/NJ
	8+d2ZwgTVJlxdQRwQtCDKXQEf3gHylMt1h0lSletYZhXLpiHNEsfpovD2fTaBK2/wgyinjh7txWkK
	OAzFO7tPlXgM1a7ATpn8nGlEjX0LDMRXelEh0NXkDOjn4aKFfJEy8ENiLocJebLkGX8S5dnFksBJd
	khH0yLIhBCRSJHrxgGpIYXXjC7TI4NQB/P5KXPs/rjVNASBKA6lpqPWwJMfxklbZJV1RaEv98TQbM
	NJUUtsWNC7C0WnzzCftA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqRrf-00000007CUW-1NUO;
	Mon, 25 Aug 2025 07:43:39 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqRDS-000000076cA-1ETo;
	Mon, 25 Aug 2025 07:02:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qgKN4lKcrnUaVlKOkHA2Fjf+/7H/frLyma7+nhMUJjoqvBZOc5rWEsZkkHqH5zpJsrUNoDz20QkZz2mLCTbiFEUEVaj3+HYNpuoPR4AJ0TGx+PcgnI6n0y7gJJsvHsUzAEcqWrJWCaSYTt7wjBWO8g9X9/5p94FwP0q6qwgjoKqMSS9W9Q5AzRIOQIgchsTRhspKXMBkQRf7Os8LI2ehz+wtyim+mXfbUoFwnT6WIdtI2Gq+u9XCWETNsB+NIrzyKSNEDOSbeozcMhAhcYWsTQ55G4O5xsfXOqp/rD7+0nMYTxtKmu/i/4iRs3aWAyNfW052R/efqwSsSzwsLA/E3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sg1mCBVjrV/ea9bWQfMds5PJVjIvz+mFUd8wJSv2G0c=;
 b=Q59OYpOCWy1BxJwSVCf7FtcISXYqPRso1Dj7HmKARIHVvUsbFn5iKq9X+uNGUdclG/RpMH/ovpJe1QRz2B7e2xXG7Mj1TILbplruE7/VeiyMU9Vu4chGHIpUspi1y6rqaT7KO49wFwryBwwivZEPJKkqedCTgPzCE6mdldLkOE7VuyRJojjfnBFuh4XRJAnMsuylI+Wil9W69W/OArmo0DCrJ8c5gzPIpRUJHFxdg2eBJwPoRuom2ZQMwEaQhQprAc06qrmijhjCGDTrtgt/OxMx7cHBoGGblzIGi8DnySTLftZqyUD77Etzn1edrRZG4p5FMH/omOrv1cvcaHjOIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sg1mCBVjrV/ea9bWQfMds5PJVjIvz+mFUd8wJSv2G0c=;
 b=TIukRtx41/04TQy/kq82zNi/OQBS+1lGx7yUI/K1RFM26ysqzSl5z5K8bJLY+ScsgmJL2sATAX8NDdmp/DwIqqtWbvHG6HPUFX6Qf3giDZoXFvnS7V0xlTN4ASHWF0uoyJ05oyfa93n9Q1Ibe1OqZccuHlPDwyeTkIdrFrHnqboxVn4CIppBdHNatr331oqZlb6/UsxDgDWHbD6foe06xTqXq9kLqWhvZhKgW+WkUafSVxR7l/xOMN4KMTp0JAsfUIk79VSGhX6wGePE1JZAOC4IhMdYgijeJpqDO7rH1m32ATPVj7zE/2Y7DbH5IN4HaHsl+ouuftZ/CpMt9TJzpQ==
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by VI2PR04MB10217.eurprd04.prod.outlook.com (2603:10a6:800:228::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.12; Mon, 25 Aug
 2025 07:01:58 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630%7]) with mapi id 15.20.9073.009; Mon, 25 Aug 2025
 07:01:57 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Maud Spierings <maudspierings@gocontroll.com>
CC: "a-govindraju@ti.com" <a-govindraju@ti.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
	Frank Li <frank.li@nxp.com>, Bough Chen <haibo.chen@nxp.com>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "kishon@kernel.org" <kishon@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-can@vger.kernel.org"
	<linux-can@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "mailhol.vincent@wanadoo.fr"
	<mailhol.vincent@wanadoo.fr>, "mkl@pengutronix.de" <mkl@pengutronix.de>,
	"robh@kernel.org" <robh@kernel.org>, "s.hauer@pengutronix.de"
	<s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>
Subject: RE: [PATCH 2/6] phy: phy-can-transceiver: Add support for NXP TJA1051
Thread-Topic: [PATCH 2/6] phy: phy-can-transceiver: Add support for NXP
 TJA1051
Thread-Index: AQHcExoSUnxd0gULoE2wg5azTlggmbRuREkAgASxoKA=
Date: Mon, 25 Aug 2025 07:01:57 +0000
Message-ID: <PAXPR04MB8459009CF8AC91D3F71060E8883EA@PAXPR04MB8459.eurprd04.prod.outlook.com>
References: <20250822-can-v1-2-c075f702adea@nxp.com>
 <060439dd-3df8-4d0b-8957-83b75dc13537@gocontroll.com>
In-Reply-To: <060439dd-3df8-4d0b-8957-83b75dc13537@gocontroll.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8459:EE_|VI2PR04MB10217:EE_
x-ms-office365-filtering-correlation-id: 2ba2a6a7-e36c-4594-6b34-08dde3a5481c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|19092799006|7416014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bFBkWitCTUdYRXcyN1krMmt3bmV1eVdSQWFvZkNVb1daYytTMXhXcFQ1dlNu?=
 =?utf-8?B?akVFZFFjdkcxbEZmNmFGd1U5dGxxQUFHZ0dJSkNmQjR6MVoyVjUwZTkwNEtl?=
 =?utf-8?B?QXVDZkRBa2V1ZnA3YlhLdUUrV1RXdEZHdGtYYjQ4a04xM1BBRXlWQUhaVldm?=
 =?utf-8?B?UGJMWmlQbVBId3JpUmJ5SHRXZU9kcHhBTXFUTE5RanRXbzhvV0R4VWNBc1NZ?=
 =?utf-8?B?eXpVMlhiUXVJdFNycmdmbjVMc1BXR3F5YytRdXlkK3dNdFNsVDcxOGc1YzZS?=
 =?utf-8?B?U2c3VUlWYmwwTVRRd0Z6bTA3b0FubnVUWSsvYitNMlRwT25OVDk2aktsU1Fv?=
 =?utf-8?B?WWl5WURpZVltVi8yblBxTkI1WHlMWGFKejJqL09hdDRtbGJBWCtLY254M0po?=
 =?utf-8?B?NmhHNE5ZR2pKMGZFL0plU3BmQmplQi91MWhkMzBuUXhqOEh1OXRiUEVFV0w0?=
 =?utf-8?B?YkdsT2RORkI4ZDdEWFZZQXZ3bmNXNmdhZE5Yb2tQNW5hNTQyVFRSRUYzWDFv?=
 =?utf-8?B?ZVZSUldPOVZjOUxSTUZzS2QyR1dHNUo0dktNblBudmVjSnRGQjV1NjMwQ0h2?=
 =?utf-8?B?ckh3S0Mrc3g4dUV5RndSSlNQL0xyQjlMQjI2Zkp6NEJCL1d6V0N3dVZadzJ6?=
 =?utf-8?B?Smx2YmdNVDVJVlV6eGprZ0F3dThyNjd3aTl1Z2NNT3FoTXdYdDA5YmtvTjBo?=
 =?utf-8?B?VnQ3M0lHcjBxN0hLQ1Q3cTZMWjNTR0tyR0UxcmxoSW9JRStMNVBxZ2F4M01v?=
 =?utf-8?B?VXBPMEpmTnNjblRmYk5xK05yQUgwVy9lS3lEM0hQMnpEOTh2dk1YN2RkOWg5?=
 =?utf-8?B?Q1RQV200aXN3M09KTEMwUVUvQ1loT1R4SGhjc0VCU1BNblV1VTZZTGR1Mkdj?=
 =?utf-8?B?MmJjZnR0am9wSGQ4TjlnYXQ3LzhFNWdHcktRTkhtd1NCaGxGNGFRTGdXdjBX?=
 =?utf-8?B?ampRUTJxSm5OQmc0QUJNdjB6c2hrWUxBUEl0MHFKdlRhakFHcTl1RVdMVFNR?=
 =?utf-8?B?alVjVFlBL2NRUFRGbUVsLy9tc082aGMrVTErVGR6S09CVUJzZnIxVk1Xd09l?=
 =?utf-8?B?RG1ZbXRYOWpEMC9ESFY5V0E5MmtySGJvYWFJckxsNjFxbk8vZUdBbFFzRjlW?=
 =?utf-8?B?ZExteGZhLzVpY3pMWWQvemppQ2R4SzFCRCt4VW40SkZ1V0trYWloQXBQWHRL?=
 =?utf-8?B?Ky9TWW1aSmtJYUpXSjI5TGtKNlg4ZWxOd1FHVHNoK1U3WGpibytKcWFhVUpu?=
 =?utf-8?B?NURHSllZUEM5b1JuRnZGWGNsTWFkaVp4SCtsTUFKeldJais2SnNpaE9mRVk1?=
 =?utf-8?B?Qmw0alFvWXBlUzlTMUdaa1Q1QVpuaHhhSnZNWjIzLytZSmFmajdsOHJuSG41?=
 =?utf-8?B?SmUyQzFXZjgyTUY1T1hhL1F1V3FCWWsrSlZvUUdXdERUVVY2SmZoc3l6NW4y?=
 =?utf-8?B?QmtkNmJ1cklMaGQ0ejB5dVJKZnd5YjMyR1drZDF6dEg2Qlp2Um5CSFpnN3RZ?=
 =?utf-8?B?R0F0SHRDRkRraEFXaDB4ZXVZLzVvdFVHaERXd2ZzUmpSUFdiMlFJRnI2azVX?=
 =?utf-8?B?K2hCVEMrZ1h1UVUxY09rMG9pSHN6M0taK3RkWUczbzF2c2VIY2VzYmlMczQ0?=
 =?utf-8?B?NW1CMDJ6NlllT2tGM2tYMHRSZS9LRkI5ZWQxVXFza2dOUk5EZ0dib1lxOUEz?=
 =?utf-8?B?LzBIeFpZQ3h5K0RPdlJLQWxDMkV6YlVOT3JRZ0h5VXpzWEEyOFpmMlRoRjh5?=
 =?utf-8?B?TjY5ajB2VHFLVHJ5cWN2bzFReE9nVmhvUExoSW4zOWZYMGpnUjJ6NjBQSTBw?=
 =?utf-8?B?QWxSSXY3RTdmS2RlM3lpZzRHOStwUjBoekw0SXB4S2VQcnZXMlN5QWR0cDE1?=
 =?utf-8?B?WVBLNkU1UlVtaS9sNjNwaytvRWNQaFNBK04vQnVjbVBCR2l6ZXhTMEVtZEhm?=
 =?utf-8?B?WnNZOWRZcTVWSjgvY3B0WFQvTURVTERtOXd0U2dJbzU0TXNKbCtaaHM2Z0tL?=
 =?utf-8?B?TGRCS1lxbTZBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(7416014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V21ZT3B1RWdUWmdqSHRVaXlMQkgrMUI5cUJ1djRmNnN1MGJxL0lYenpHbjgr?=
 =?utf-8?B?MkY2emxwcEVOTFFFNUYwWGw2NThHQjFkM0NSU1RiMDNvT1E0Zis0Y3RjMUdK?=
 =?utf-8?B?eFhCRjE3c084bTdNRWZ1NjdaVXp1NkwwRmIyKzJkeXN2MEtPbTZhdytHSy8x?=
 =?utf-8?B?U3V6R1h3bUpEN282cklnTjRoMVdpV0lJL21YTHFReU80K3Vkc2d2WFliRER6?=
 =?utf-8?B?OVFSY2xBR2xVQzJxbXpYb0RhVEtkYit6VEd5bXhUcGhmaE1jUXAvSlEyS1FY?=
 =?utf-8?B?WGpxTTBMOVZIOWw2REZNZEdQZFVVYnc1czRTZkQyWDQyY1k1R2h4U0hjNkIv?=
 =?utf-8?B?SDVaUnZwTmwrRElKbUU4R2FBczJQRERRYUJKWW9heHE1ZWsyWWNqK3hVQTMr?=
 =?utf-8?B?dGoxRlRVQi8zRUVTSFFPdnJPRlY4aGQ0aHA1VmNOTUZPbXJ5T1dPblp3UjRY?=
 =?utf-8?B?OUFYdEZsZVhFVzZBTTZucW5NSVpyNVlrSUYwNkkzb0g1Q2ZpajFSTVJvZHhp?=
 =?utf-8?B?VDhIdzE3S2xCSTMyM0U1VWU2aklnSHF3OU4xZFlaWVk4Z01WM3RnczZycGwy?=
 =?utf-8?B?dXhYZis3Zzc1YjAzZDNQMmZ3dXR2MjU5WVk3V3RxRitETmdoK0YrRFRqSytW?=
 =?utf-8?B?UWYwN01mYWpDbkxZVkplN0Q1T0h3djJUVHRieHp6UmVyVWcvY0VBWXdtbGs4?=
 =?utf-8?B?NDNKSTFDWDRjeEx5Nm5xNHR5Q0hNL3E4cjgzSFk1cXMvNzdISmlBZC9Ua3c1?=
 =?utf-8?B?WWlDeDlsMmFlaFo3MEJmNEkveHpQTmFMWkM4M1EzZGQ2VEtJLzBUaVlyUUxn?=
 =?utf-8?B?eHI5MG95T0ZWekp3dTNYdThPUEZiL3Q0cXgrSnFpdlpPcFk1bWhJaXpEbGdq?=
 =?utf-8?B?LzVBR2dwWklsazJuVlIxQlI5VW1Pa0N1bS9PYjljTEVkUTZGVjFTWDJrTHpr?=
 =?utf-8?B?azN6RlpjQ3hWbDBpWkQrK1RGZDdTczI1RFA3blYrSDIwWEtUdVdCMmZ4T0Fh?=
 =?utf-8?B?L3dVSWNYamJOYldHV1BQOGpKbkFHeS9RT1V3ZmdPOWNVZG1uSGlDNmdUNEk2?=
 =?utf-8?B?WU12aXdxUkphNUZJaTRIOFBjVkZlaExUVXFuak5zdGxITm9PK0hvQ25yRHZq?=
 =?utf-8?B?Q3ZDTHRHYmNHU3Awem5LMm9WQTgrY1luS1hQbDl5K3R1U0ZjRG1wbkx4TE9E?=
 =?utf-8?B?VXVaeXVlY3gzdDFxNnNSTXlJWHJsbWF5UmFqSUdkSmhxcTlmOVRIL3pQK1kz?=
 =?utf-8?B?ZmZhRkxxMUdHSFlqS3B0Y3h4cVBndTFHdE9QQzMrUk9lMlQ1UXQ4cnk3OUZn?=
 =?utf-8?B?VnBhdXhiNDlkY2R1WXZXTG9veTA5SVZnMEFWdkkvcDl5a0Z5ZnN6OWVYcFJM?=
 =?utf-8?B?YWphR2dVNGthcFc0V3pHNDZVS0JnRWVMeWpHOGhVMUphemZMbjBDdHFnQ0F3?=
 =?utf-8?B?YzdQWW1RMXBmdFdWRVhtS3RpaEtWdVNEaUhETllLUWNEajJtSnNuUVZ4cWZz?=
 =?utf-8?B?MDBmSFA4dWU4Qk5nUlovNEp5UGlDRU1EOUpQTm4wY0NteEtkVHZqa3p4MVFW?=
 =?utf-8?B?czFuQ2NWRExZLzRNYWd1M1ZiSC9KR3NlTi9NaW10Z2J6VVZCOEZNbFpVcko3?=
 =?utf-8?B?V0xtc3hER3JYcU5PUmkzRXZ2T0hWc3VwcFdOL2F3b0FwL25sOXY1VTMvNDY5?=
 =?utf-8?B?QnE2YWtxL3dFcmFmenZmYTNkNGZCZjNlbHB5K08vclVVWVFVRVVKSGwzMVJN?=
 =?utf-8?B?Nm52WmwrYUF2aEZPaDQvSmdhR01lUUkzV2VLbzkzYWUxQXIvRFBKY3VnTW84?=
 =?utf-8?B?T2cvMWNGWkpxOGh1Q1duTjJtc2JvV05EUzRxRnpqY29lYkcvRlB4aTJUZWxq?=
 =?utf-8?B?MnhUVUplMjdtV1N4TXlSRHhYVGZob3RrTUpkTTR0bXY2Mmh4U1oxRG1tY2Ey?=
 =?utf-8?B?VjNmQ1hqQzRvNnFHQW1XM3YwNG85Ujl0R3RwRTNOR3B3c2IzRStOZmsxVzJx?=
 =?utf-8?B?d05kVmRiSFRldi9YU080UUxnMlFPUXQySXNoajhOMXFpd1Q5RXhoQUhYVjVk?=
 =?utf-8?B?Q1d3NDg2NUhpV0V4OGVjTzM2UzhwcHFKNno3VTV5UkpVZUU0Mk5jaDNMdlFI?=
 =?utf-8?Q?antw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ba2a6a7-e36c-4594-6b34-08dde3a5481c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2025 07:01:57.5390
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fIZyrOZ2c9nrh1Htvwt5QFZpEeFaBolWp80Yl2PhTYv4lugDLWuMU5k70FPYObqNKYVaELpEErBM05QhDpRbHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10217
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_000206_330277_BDB33DD1 
X-CRM114-Status: GOOD (  18.62  )
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

> Subject: Re: [PATCH 2/6] phy: phy-can-transceiver: Add support for
> NXP TJA1051
> 
> Hi Peng,
> 
> > The TJA1051 is a high-speed CAN transceiver which is a pin-
> compatible
> > alternative for TI TCAN1043 with Sleep mode supported.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/phy/phy-can-transceiver.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/phy/phy-can-transceiver.c
> > b/drivers/phy/phy-can-transceiver.c
> > index
> >
> f59caff4b3d4c267feca4220bf1547b6fad08f95..b49371a1272cd8a25b
> 5e2271586b
> > 756103c64f0a 100644
> > --- a/drivers/phy/phy-can-transceiver.c
> > +++ b/drivers/phy/phy-can-transceiver.c
> > @@ -85,6 +85,10 @@ static const struct of_device_id
> can_transceiver_phy_ids[] = {
> >  		.compatible = "ti,tcan1043",
> >  		.data = &tcan1043_drvdata
> >  	},
> > +	{
> > +		.compatible = "nxp,tja1051",
> > +		.data = &tcan1043_drvdata
> > +	},
> >  	{
> >  		.compatible = "nxp,tjr1443",
> >  		.data = &tcan1043_drvdata
> >
> > --
> > 2.37.1
> 
> Isn't this unnecessary as it has the ti,tcan1043 fallback compatible in
> the bindings? I'm still learning a lot so I might be wrong.

Oops. This patch is not needed and should be dropped.

Thanks,
Peng.

> 
> Kind regards,
> Maud
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
