Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1102E8FDB1
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 12:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJcgT97g+mYImcksHE5AnCGV4tj76fhU6N8baYPs0ac=; b=S2wKI9PmnxoUSA
	3G5EZnSfth4ha+tRrUYTnGJwa8v1Zvu7M18hrRiLF/Sy3FhS6CAp7iTNm+12WNGPxxvZAS+7zRtf1
	dRbAq8dNk67F3ooBCSyP4dmw8ns6Sg5t6ddtgrAyq78zR+k+V1s82azWp8SuG4A/NQ81ZODEbdNEw
	/6JzptJyUDp8cMJUM5NgtjdUSIWhlFUdQl14ma4AsAu1yp4HXSPXQh+oYK+1uMX5buCAabH9AQeZa
	EV+bgrW8m8WK8rTJsJYVXvPhSptHZ5mcALFAQodvX2SJ3x4Hm1zBaO6U1lpghH2yN2l5wXvfFIxAh
	8+L/7lOOt+sFq2Ynxc7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaC2D-00000003eSU-1eIy;
	Mon, 29 Dec 2025 12:07:37 +0000
Received: from mail-westeuropeazon11023092.outbound.protection.outlook.com ([52.101.72.92] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaC2A-00000003eRr-3Dw2
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 12:07:36 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=hePovfhe9FEFGqfXp3arXOoD9QmO4bgj1XlcGFM5arFM3GdEZWSHWPZ8CnQ/8m3Ws+avo/ZcApj3OQPbBDJ16XzF4XVcJyX2sbp2tpdzqLVn84XP+TymHQxAaSYxgRq1N6GE2eYLOdRP4IEyO4kyRARQxLTGW3MOld+dj7Nx6v8qq1rz0+ArADvkfYf6yvF5pV1swkOazlYGxSAjeYS/yvLYfav7GzeA+CJ9IQG+LBp1HDV9dt27cWW794075N194YTf4UOAaC9umBaMcCWdQ4iIXGoXyEWRD/nmd3GLSu5je9U7whLQI1O3igRNJZTAcZ5eEMSqwhYPFO7rRs7PSw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzmhDTrhFneRXKQL4soEByjRijb4OKMVJBCWqZcMZFw=;
 b=PJ8YWqLNI0gv+oCU3FASH9uQpIsd2Z/pOUse/z66wQIQMgUXYFZtuQr6pBrKSF4XCJW5XBYXias5Z8VOSRtbedsQVpHerz2OpcWCG8kd1IN3lKtc993Ej5tw2iIWmxpSGpLoPuzORKziYcbGG8QrfKV/AV3U0uuiWIC0fVr1Ak3eG69FqiW2V44o5yVePPmPskgYsJW3l+kSYaXREI9TMm9Ush52N/WpY5mXx/8iPs0W5Y80FfJJbuEb18g2/rAv4jsR1sXyYT0XP2DBJP4RnltsE4xWchRt2pF9bU8KCKKeOVrW74xX9D13E7Lp6IgfmZa2dxeCMdeuFd1PQeLGtg==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzmhDTrhFneRXKQL4soEByjRijb4OKMVJBCWqZcMZFw=;
 b=c6TU2qZh1gx8/QyJ32nhTQWYo1x5D1e+rcKmYVrqn6atjMk8btyQ7kymGvWnQwyWfL+xGVy6ENvIa/kNqlygjfIYv7m3glUJrye4Hv47PyW4p9YJ/NyoWmxLDfs9j9OaMSdGlT1X8ams9syLY23acW1nkm3GPE2hwST/hleVVaY=
Received: from AS8PR04CA0021.eurprd04.prod.outlook.com (2603:10a6:20b:310::26)
 by DU4PR04MB11412.eurprd04.prod.outlook.com (2603:10a6:10:5d8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 12:07:30 +0000
Received: from AMS0EPF0000019E.eurprd05.prod.outlook.com
 (2603:10a6:20b:310:cafe::f5) by AS8PR04CA0021.outlook.office365.com
 (2603:10a6:20b:310::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.14 via Frontend Transport; Mon,
 29 Dec 2025 12:07:16 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AMS0EPF0000019E.mail.protection.outlook.com (10.167.16.250) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4
 via Frontend Transport; Mon, 29 Dec 2025 12:07:29 +0000
Received: from emails-9181392-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-157.eu-west-1.compute.internal [10.20.5.157])
	by mta-outgoing-dlp-670-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 7470B80358;
	Mon, 29 Dec 2025 12:07:29 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1767010049; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=CzmhDTrhFneRXKQL4soEByjRijb4OKMVJBCWqZcMZFw=;
 b=IK2sJ1MMblArfLzLRuhtmxNNO7J3jUVXo1Mey6Nhoam3oVIRabqCyzt3KpkkL72BCvNZI
 q3Rz0vFk9AgBYuR+IFdn9nYMfV2JbwsJ8rlKhOfUCCvnqiiNktc8iIu0Z6P05aASEAyD7qY
 JJUm9k3/OCbuCT8nr5ibvjHUdHwLA5k=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1767010049;
 b=p/urV+99jjCS2Zcw20yJ3eEUGdcnvAjfU6jhP/klBWzxFqRCiMCoQQiIo4Lhz9gwmtpp6
 /yuUyKzst/hY9dwRh/Z2BmfrhmAVBE41Ryc80mdy7+mUmxOCGzOd+V3H4Qxk0zIyWFkB2NC
 wOPiZfW26qUzcOu9AqV9E4Q2mw6eiOQ=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=loLwfC5PYs53bmStYTUrfvXBY83g0MXVPEOT4PVYWoFCd8jAq0dB/5DcwPQGty2dCu5khSKHVGIZWbbV5GLRnfPO7ttLQPuQIxOPZRj7iRUZWOi/wCSenKu16LTCivQUXcy1c+e3l8iqzyMn7/Abe9Mrm4SzJ0yH2dPCDaoUrYV+/x7v20L1z7jC/IcyWV0ejASAbthq7g/pJJZxfvnV43Qpul2q+N8FkkIvEyJy95uMM+UdP9bnRuH+qwKQ96peEfVXpQblQO8aDq2pSQXzTM4ZHJBHlPJX0OYPIbWlPITV5AWk55FK/GJvDlOCgtzutk4H8xLNvlr0+E7C6Rs06w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzmhDTrhFneRXKQL4soEByjRijb4OKMVJBCWqZcMZFw=;
 b=uy/kUgs11BQVn25QlkLG7amZ1PgtlNpDMyoDFzcMClp5oj3t4OIfWEMporSmL78/bWh30/ME+IiL/03x+MoRlNA03k/BBYaB/LflbRc1uFykJg6CROTKwrAwsdrORGj2vctEOnhuq9NoDVzVbIYrpJEdmPyiglY1DHk7LrLCoBB6WfQUULoXUrnSYwPfpEc9VZzl+VytJGKY69U2dvJ9huMC+Y9Pib8e1+IE0UF2FFG2NlnivxSXWDcIc8SC6Ofzx+QrJHviaJCrA+G8TTbV/Axy/e2TlXlof1+4wvxjKynIaIdFRHFxoJn6UDDYk5lfJTFqNTUuBM1UDcch6cyd7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzmhDTrhFneRXKQL4soEByjRijb4OKMVJBCWqZcMZFw=;
 b=c6TU2qZh1gx8/QyJ32nhTQWYo1x5D1e+rcKmYVrqn6atjMk8btyQ7kymGvWnQwyWfL+xGVy6ENvIa/kNqlygjfIYv7m3glUJrye4Hv47PyW4p9YJ/NyoWmxLDfs9j9OaMSdGlT1X8ams9syLY23acW1nkm3GPE2hwST/hleVVaY=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PA1PR04MB11530.eurprd04.prod.outlook.com (2603:10a6:102:4e1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 12:07:17 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 12:07:17 +0000
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
Thread-Index: AQHcafvjRT5zKouON0q90YQR/1KWr7UtgcmAgAsf64CAAAGsAA==
Date: Mon, 29 Dec 2025 12:07:17 +0000
Message-ID: <3ecb905c-f01f-440a-84ac-5688220d54ae@solid-run.com>
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
 <CAMuHMdXjAS6HOYy5=uxcK0RZL5X6agRoHG67QUw4xh5+ovZaJQ@mail.gmail.com>
 <fd901bba-3203-46c2-b282-c5ad04128fd3@solid-run.com>
In-Reply-To: <fd901bba-3203-46c2-b282-c5ad04128fd3@solid-run.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|PA1PR04MB11530:EE_|AMS0EPF0000019E:EE_|DU4PR04MB11412:EE_
X-MS-Office365-Filtering-Correlation-Id: 048233ac-e84f-42eb-7408-08de46d2d70b
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?dU80SmlDNzlGVVZ4RFpBTFN5aklmQmVYM2pwbk1mWU93L3B4RVRsR1p0RSth?=
 =?utf-8?B?TDRaNEJaZXdjQWpEQlRVbXJYK1VlVnd3SzFwK3F6bmFsWTJ1eGdTa1gzZXJK?=
 =?utf-8?B?RnBoYzdSN296YXo2Y2Z0VzVNT3ZHck9aUHZjcUErajQ3UlFURTZCT29ER3Jt?=
 =?utf-8?B?bzJ0VytjaDNoT1Z5bVFDSWd1QzRxTHBQVlBXSHZmRDdWd21NZS84K0xqYXkr?=
 =?utf-8?B?aVE2TnMyOFpFdXVZcmFxazhLRit5cmVrSG5BWkpibUVKalhRQkE4MnJjalBP?=
 =?utf-8?B?Wkh2c3IwN2RibVJTT0RYMjk5Ky9aNnJPeWlVK2ZIZmQ5MnVZTU1RTXJTZ2Zi?=
 =?utf-8?B?K1VPUjcxa0J5ZTlUMGEzSklKNTNUbTMwOCt2dk1KNjd1dkZveFppVVN6WThT?=
 =?utf-8?B?L1pSeE44ZDRrOVZGVVNxd04wK2FIVXRnOERScStZYXdpZVlQK0VIeXdlVVlp?=
 =?utf-8?B?eGcxMVVIcHdqNFJoU09uQzRESXlGMTg2QitmVFQ5M2ROTkpIQ3pqUkNoUXhs?=
 =?utf-8?B?N28wRFhWSmdNOHR4QllTcGdSNHN2RytIZEFZU1ZDTUJzenJCbEdwWjI1QXVM?=
 =?utf-8?B?dmhaa255VFFzTFJ6S2ZsZERadWcwbnVROXowYTExL2JBVzJqRG04VkRIUkla?=
 =?utf-8?B?NTc4ZEQzQ25rTXpOMkdVdURRbWo1Q1ZIb0U5ZzFhK2lucWkwN3BVYkpLc2JF?=
 =?utf-8?B?cUFaRTE3RG1tYVdpaWRjR05zYWN0dTZRS21OL3l5Z1B6NmowZGFEL2NyUU50?=
 =?utf-8?B?ekUvVzJlRjNWcVlCUUpYY2tBYnhPVWRyS1hYOVQ3VUJLZWVza21JYzB6c05w?=
 =?utf-8?B?ODNiVnlJR3IrMElqUzNpR3Y0cExHbC8wMUpCYWUxZVVrUjJoc2t2aFNQVXdQ?=
 =?utf-8?B?OG01cEVMK1JhSHhnL0xjcHlFK3NDazlJTENLSWprNnFFOVFRMUdUUXZ1aXEv?=
 =?utf-8?B?U1FQTExHVlpYMkFFN01LL0FTQ2tCdHBtRUR4SldBMkdBRXJCTnRUZ2VudDRP?=
 =?utf-8?B?S2tuRE44cFZHb3RWWU9PblVJcTIxeGJ1UTZiaml4dW04REh3ekhKZW5wc05i?=
 =?utf-8?B?RmJzQU1OV1NvWWxDSjdzemJ0MlVWamxyQVpYbVU3WHowT1J1ajdtMStsZFZq?=
 =?utf-8?B?ZHBtR0ZobEJhTURERDV1Z0NZRnVpS2xrZFZQSGNNKzBsK1paWC9UY2Q0TERr?=
 =?utf-8?B?LzdrMTNlL3pTaHE0YkVHOGsyUWhnM0NyRWZ3M0JLcmhCQUVodmZISGNBeUhs?=
 =?utf-8?B?d08zNFo5dTRPV3RIRWJhYkkwYU5McWZHMSsvUXIzS3crUkl3a2NKUkZwTFhX?=
 =?utf-8?B?Q3FubWZKdHJTT3E5Vk1mTTZPOVBNTXJvS3UvSU5UUnZIRkRDaTFwblM4RTRZ?=
 =?utf-8?B?RU8zdnZCUDVnejFlbHZmc21HMkNvanBoZmtzcThBNTVPTHhUbExydFJIK2lU?=
 =?utf-8?B?Q0RpNlFtZlhFcENmSURnRXBuSUVYNm1iTFZvUmZRV2xrbnJiK292dldpT2R5?=
 =?utf-8?B?d2krTEcvU1VEWG9Ib2FKSnNtZFJwNFhuWWFJYi83RjI1OE5ZZmgwV2h5bjYv?=
 =?utf-8?B?Y0ZiTnhncG1tcmJqVFViM2lxTjlYU2NLS0p6Y3lMblVaajE3WnNqWmd3OE5F?=
 =?utf-8?B?RzU0b3NQLzdSbjRKV2lwdGtNdHRUMDh2YkFtN1hnTVVCTTRnNlZza1JJSDdP?=
 =?utf-8?B?MXc3dWNhdmplcEh2UCtPVDhnZTE1NWhEVFczbVRkZFdXOTR6OEszNGRyWk1x?=
 =?utf-8?B?TGoyZ0wvT09SRk9BYStpSWliMi9LOTAwbTNDd29RTTBIME1GcklqK1lOenB5?=
 =?utf-8?B?V3BNMnV1OGNtV0Q0UWlySlprcG1KVHhsbk5BSTh5NEkwT0lrU0dQeVlIay80?=
 =?utf-8?B?bStZTVhjYUFBeWhhYnZvVlhEUFpmZGgyWmxpL0tmZjR6TkJCZldOZXdPbjFB?=
 =?utf-8?B?OXc3cVNwS0hxcVcxWkwzZHpzZG1UUStYam1CK29TemdyQ0ROenRoUCs3L1BN?=
 =?utf-8?B?OXhQY0xYcUJtdGZJSVZ4enQ0VmVoZ1l4cmRzeUhEUm56YmxmZE52c1RKQWlT?=
 =?utf-8?Q?JJTRDH?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <F2BAC406E4F96A4AB7E62D835ACA5AF3@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB11530
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 76760639fbcf4e5aae9e635c9860127f:solidrun,office365_emails,sent,inline:90947a8010ec37c6cdd57d1ec71ea2fc
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AMS0EPF0000019E.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0b4bfddb-169d-47f4-3faa-08de46d2cfb0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|82310400026|1800799024|35042699022|14060799003|36860700013;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlQxWE9sYVNEa1pTWWdyOGVCUnFzYms3K1J6UUFnNDF1UHJReER2UTdtS2w2?=
 =?utf-8?B?R3JDNGxZK1NqQUg1ZDR5RHlMUG9jSW1pd3BrQXdUNEdGbDh1UkQyVVpXRVR0?=
 =?utf-8?B?Uktic0t2amVMRFp5eGYwTGZTSC90c2JWRDVEYWNpUFExNEZsV2xwUFcwekhh?=
 =?utf-8?B?cTVlc0NmbWpDek5sVENQK2tsUDRiMk5hY2MwWDhDQWlQMEhVOGdBbzBiUG4w?=
 =?utf-8?B?QjdKQjNWTkI0eC96a01aQnF5QkY3REtqMVI2UnQzeURBcHVrUHpReDRBV3B6?=
 =?utf-8?B?bWZTa1p4QmUxaE5PN0ZoS2J6TThvM0JxNER6R0UvQXRxc1ZEQTBtNmh3bjZi?=
 =?utf-8?B?ak4zR0ZnS1pIcVkxemhLVmZNTmxpd0g0UUR3c3dBSzdGSWZYWjlkbkV5bVBp?=
 =?utf-8?B?L1RONCtnMGdsM2YyMTlubVI2c3dEd1B4QWlwQmI2djNMaExlNHgwMjQ5bWNt?=
 =?utf-8?B?VWhlVTBSbEdyZHJNbmdMRnc2U0dOc0xMN2dtbmxWOHkvK3FlOGRrMmlTTWtZ?=
 =?utf-8?B?cnZOaHQ2TEEwSTFSampCbTc3Z0JDZ09pY2N2NWN4T2tWdU1FWDliY2dIYlI3?=
 =?utf-8?B?L0FDWlBhTStJNUVrbjNJT3QzaVZYb3RIOW5GeURzakV2UnMxRENYQzd5azUv?=
 =?utf-8?B?aVR0Q08velpNL1ozQWF0SjdwaElnWmplQkZZVFZZV3FzcXdTRUdoZURpK3Zo?=
 =?utf-8?B?Wk10bFUrSnh4bnk5MUFKNklvam9yYzNqZHBFNTZkWWx3UzlQQm1kMzloYjZS?=
 =?utf-8?B?NStYTUVxUS9LNUthc003eTJLemJ2RVFyM2x4c2wxazFTM2FPWXBnbE9uT1ZN?=
 =?utf-8?B?c0hZcU5keHBINzJneG1NbGkxZGpLOE5IUG9nODZlbHVzQzUwV1FkTkFaYVkx?=
 =?utf-8?B?R0dmUUhIVnZLMno0SDFBcU5GSW1mUDBZbVlrUEhMemlUVHBUbTllQk95MWF5?=
 =?utf-8?B?dzlqUjNFN25Da2toSS9EWUJCNzhaZGRmellNVE5BOWw5MGJHdWdNSi9zWCt2?=
 =?utf-8?B?THVvWmhqRjVSc2NieDV6ZHhONDlheEExR0NwTWtRTG1Ja3FPZjUyMFNWVUkx?=
 =?utf-8?B?ZlNSb0t3QlVZQWRsSzIrVW5OZS92ckdvN2tOSDU1N3VVZXhOeUY3YU04eXN0?=
 =?utf-8?B?TkZ3L0RINTlkcmNpR1Z2UUkrQlZwYTZIN1FFMlgzUmM5VFJKaXFvdkUrQitD?=
 =?utf-8?B?VlVOYVh5UGJSKy8vWlpQdmpFb1hmcEZrSFdIcmNsOEt2dnBMT2ZBNnJEM1lu?=
 =?utf-8?B?ZmR2ZWlWOFVmeXBJTHp2eXdvZDdxS1hHUTQ4MmlhSG5oWjkyanF4aU1NLzVr?=
 =?utf-8?B?ZVcxWWIvZWMzSUJwakpjTVNJY3poTHRQVm9ad0xrU0tJNlVKOVl6YW4wdVlH?=
 =?utf-8?B?NUVNc0V3M1VVVytPMys2bFpUMHRtKzI1emorNk8yMmVZSnJ0RkFWNDZ4TnRL?=
 =?utf-8?B?VkhYaGpJK01aY3RIUDg1RGVxaVZNeFAyZ2ZMOVRPZmhuVFFEQmxKMVRUTVBi?=
 =?utf-8?B?SWs1bExTTEdFZ0luWXZVMitsVHN5WVdHYjY4YlU2Y1laVURzRS9NK2EvVHFl?=
 =?utf-8?B?ZXUzdWJFREF6RTlMWElHRGlBS2E4ZlgxN3k4cEFBbXB1RXlDMUJ4OGgvZFJm?=
 =?utf-8?B?c253U1RxenEwK1pSYkUwVmVhZmFpTWU5U1ppQ3pQTzUwVFVqK2xWc2N2bzFT?=
 =?utf-8?B?VXNzWXFHSEhQV0drNmlEN1hvQWtmVTViOHJjUEtKbmJaNENFVGFLQnp5dUZt?=
 =?utf-8?B?dURlMkFVbHlKelo1bGlRV0IzUWFtajJPSjdVc2ZVMk02QzFxcDlyNE9vQWxv?=
 =?utf-8?B?ZkVNanZtaXpFN3JxMXRNNkNLblpJZ0RZRkQwWXRUSEpTVENFSzgyS2gxTDZl?=
 =?utf-8?B?WjJHQUJNUCs3SFp5dGhJSnVGN2xIOWlxcStIR0RLR2hZcnVsRWl0SktRamN0?=
 =?utf-8?B?dklhWXl6UWhmR1Z0NzdweStDOStVZmlhLzFCSTY1M3FUZmQyc014ODY3cjJw?=
 =?utf-8?B?TzMyTk9PY2dxZStsbTR6QmRrZFEyWEptZHlCREpWa1lrWHM2aXlMNXNBSENi?=
 =?utf-8?B?aVBXQ1dDb1dqZmE0blVObHhTVFNkaE5RajB3SjBMUURhWVB2TUdLYWdjZ3JC?=
 =?utf-8?Q?tXBw=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(7416014)(376014)(82310400026)(1800799024)(35042699022)(14060799003)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 12:07:29.7091
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 048233ac-e84f-42eb-7408-08de46d2d70b
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF0000019E.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB11412
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_040734_957202_C3F1A573 
X-CRM114-Status: UNSURE (   8.36  )
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


Am 29.12.25 um 13:01 schrieb Josua Mayer:
> Am 22.12.25 um 11:08 schrieb Geert Uytterhoeven:
>> Hi Josua,
>>
>> On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
>>> In-tree phy-can-transceiver driver has already implemented a local
>>> version of devm_mux_state_get_optional.
>>>
>>> The omap-i2c driver gets and selects an optional mux in its probe
>>> function without using any helper.
>>>
>>> Add new helper functions covering both aforementioned use-cases:
>>>
>>> - devm_mux_state_get_optional:
>>>   Get a mux-state if specified in dt, return NULL otherwise.
>>> - devm_mux_state_get_optional_selected:
>>>   Get and select a mux-state if specified in dt, return error or NULL.
>>>
>>> Existing mux_get helper function is changed to return -ENOENT in case dt
>>> did not specify a mux-state or -control matching given name (if valid).
>>> This matches of_parse_phandle_with_args semantics which also returns
>>> -ENOENT if the property does nto exists, or its value is zero.
>>>
>>> The new helper functions check for ENOENT to return NULL for optional
>>> muxes.
>>>
>>> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
>>> property presence check") noted that "mux_get() always prints an error
>>> message in case of an error, including when the property is not present,
>>> confusing the user."
>>>
>>> The first error message covers the case that a mux name is not matched
>>> in dt. This is removed as the returned error code (-ENOENT) is clear.
>>>
>>> The second error message is based on of_parse_phandle_with_args return
>>> value. In case mux description is missing from DT, it returns -ENOENT.
>>> Print error message only for other error codes.
>>>
>>> This ensures that the new helper functions will not confuse the user
>>> either.
>>>
>>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> Thanks for your patch!
>>
>>> --- a/drivers/mux/core.c
>>> +++ b/drivers/mux/core.c
>>> @@ -542,11 +542,8 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>>>                 else
>>>                         index = of_property_match_string(np, "mux-control-names",
>>>                                                          mux_name);
>>> -               if (index < 0) {
>>> -                       dev_err(dev, "mux controller '%s' not found\n",
>>> -                               mux_name);
>>> -                       return ERR_PTR(index);
>>> -               }
>>> +               if (index < 0)
>>> +                       return ERR_PTR(-ENOENT);
>>>         }
>>>
>>>         if (state)
>>> @@ -558,8 +555,10 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>>>                                                  "mux-controls", "#mux-control-cells",
>>>                                                  index, &args);
>>>         if (ret) {
>>> -               dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
>>> -                       np, state ? "state" : "control", mux_name ?: "", index);
>>> +               if (ret != -ENOENT)
>> I think the non-optional variant should still print an error message in
>> case of -ENOENT, else this has to be duplicated in all drivers using it.
>>
>> This is typically handled by having a non-printing core helper function,
>> and having printing non-optional, and non-printing/ignoring optional wrappers
>> around the former.
> I would prefer letting drivers use dev_err_probe.
> Silent helper functions can more easily share code between them ...
>
> If this is a strong preference I can rework the error behaviour and modify
> the relevant mux_state_get and mux_control_get.
Thinking further ... The main issue is that the core mux_get functio is quite
verbose printing message for each error condition.

Now I have silenced the ENOENT case - because it should be silent for optional
muxes.

So ... actually I propose to update direct callers of mux_get function,
and re-add error message specifically for non-optional variants in case of ENOENT.

>
>>> +                       dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
>>> +                               np, state ? "state" : "control",
>>> +                               mux_name ?: "", index);
>>>                 return ERR_PTR(ret);
>>>         }
>>>
>> Gr{oetje,eeting}s,
>>
>>                         Geert
> >
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
