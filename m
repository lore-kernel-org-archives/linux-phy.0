Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C87EE7E0C0
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 10:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyVHAre/jtujboTxGZ4dDijpVUOjYdqos6rwjLTOI7A=; b=j+vxsjjPN/sT3F
	G+JYNC0yz7th7q9JRopWQgWGLYxt3rx6r+80b9G841t+mXUFSg0gKxQiIsWnSmZR/uwWdEzhMhDP8
	LWLm7zO4QR6W1I/0d121TPxfkNmG6vaqFQcMLeOm7/JYfhqNnmkqbvcgjLiZ9wtazni9Rh4SfXF1w
	7vV6xj17PwGbb+8rRuNoswuvTWTK4njgTOiww0L94nLnlof0nyMvrogPKafZjSITAlTT6huLimIy+
	Gu3CimA+PecIrteKj0N7AY793amPVubWlrUF3Z0gbCSF0mHuqgDc1CnjuXUjxeBXleeGPjIwXR7iX
	HTz1xI4TRmcsupd/Pq2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpOOo-0000000FEn0-15zB;
	Mon, 09 Feb 2026 10:21:46 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpOOl-0000000FEmf-2vRR
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 10:21:45 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=EcrSlbcB+OlgLHvKKyUVqrNDGhHyqdLyYOTyhdLzj6mCBbNu8NMVTLbnaOQxLiNATnCB4dDoHUEjYEmfq2Pz9pjfU169YmIZhUXzaKC8LYuaw0vbOCPLbXX5J0od0gWY3QxwddPSEH6ilyjMxZ35xHyEGhv/sOMJXg7SejYTFx5vJ47RmDzIyurDejKQ6EOAW3d3PKfsj+TD2N+IvPaPHaM15pia6PbeP2+9RVN/GgfoUpKA52K/gxwSp0aCJBpoki4ymDJx5VAgwSWxToWrUVBx0prKhnAMzPGxmIriNvKWYQqTKJApPz9xbq7IegQZtfKzVyGjDXKZlA3njxEwnQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s2d/vylR/Lv4VRCWy1cxfwtj0T7MCFwry1McvGcVVo8=;
 b=DdUJOkNIYBQxgc0JqNfYTIbGT8s6cEQI4GjTGzabQBxmSQ26h0KNEp+WVfdUM/RUWyBp0hkNZI9UFZBvPWyoq14G8uTjnDUXZICLzkiIo6th0uFicunCcphA3UT1g8q63Zzow07F9mCFfIjJmiuenW1LmLDVdpEXETU/tC8IexGeSBjQhm/RoVni28VPhH9W9DqCMGLBqys5MtcYn4et1peh5kVzGlO84VRtU9YUewId25M9naZEwpNG87IQa8/Z33pTDMbhgFz6BmADBjfmiZjbXgHPPjJri5btNg/xI39GtcvVLlgqola1L/cSaQSvePSurnwGABd7GsvCxm9pxQ==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2d/vylR/Lv4VRCWy1cxfwtj0T7MCFwry1McvGcVVo8=;
 b=FDFBjhPBoVWtpAghf/uLj1/mh9uHaenzicT6GogEiQoUcxir4WfHtjzMrvEpT6m41VAkU3rNC5AsNysIZ0XNA2WLEclJiXfAEgiRJo+LQte0c54oyU8KyPSkxUOF7dSc+iUF4wh4WpvYXEp4BPGXpooLKmiX0oculZXpZFeWC/o=
Received: from DUZPR01CA0254.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::26) by GV1PR04MB10606.eurprd04.prod.outlook.com
 (2603:10a6:150:207::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Mon, 9 Feb
 2026 10:21:37 +0000
Received: from DB5PEPF00014B9B.eurprd02.prod.outlook.com
 (2603:10a6:10:4b5:cafe::bd) by DUZPR01CA0254.outlook.office365.com
 (2603:10a6:10:4b5::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.18 via Frontend Transport; Mon,
 9 Feb 2026 10:21:31 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB5PEPF00014B9B.mail.protection.outlook.com (10.167.8.168) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.10
 via Frontend Transport; Mon, 9 Feb 2026 10:21:37 +0000
Received: from emails-5671083-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-189.eu-west-1.compute.internal [10.20.6.189])
	by mta-outgoing-dlp-141-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id E4C55802E5;
	Mon,  9 Feb 2026 10:21:36 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1770632496; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=s2d/vylR/Lv4VRCWy1cxfwtj0T7MCFwry1McvGcVVo8=;
 b=NG2gGH1ViS3AuHJyCl9wjs7+DPQUszi+B04gqplDA8VqjQFs7czI0GUB9+6SCU7zoIPEd
 8KmCnduHx4nmC0ke1b3rBleoTRSu/YFeb9JdC1mghRAdG0cd7V+7830eQ2nDOjVPqVDbES/
 8SYHhm9PRMbtn2up1ltV3eRtR//V3HI=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1770632496;
 b=gtRkU+nvS8XYWWeOVA7MkPeoUFlBwxFeSIywXNQaBrpVtovsRBHde39Kx66yAbsBtN0Gk
 HPXXE4fUINTyHcwTIEiPUxs7kpuglqszoBWWygu8VNi8DbfANCcmrW2FJ2ysxPlt9yCVZA6
 9a9OUi5u4oapH7uyPwHkTaYb72aJM0M=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZwB8rceAFOwQHKhTkE+6D83tteMUC69RirT9tXO2qGm50s8sviq5nJq3A/T1z2Gurocul33NfVsP1/aoD2cBqSI8raYg8NgbdSeYTAG6aY9nqDoLaBk4wsBtfJ4jo+lJlPg+VDf2k/z4AYodkl+F28+AMmK/FlS2rqwrh9B36caKJeJUspKGMS6AfS/hjHNsUBu/UQlAoHlAOIQMl7xO2mTmwWzcPCOx6086/W3Mc9dt3O3UnWl1acFn+EHOIYn5PDpo1JVYAaXfndTVyVXk5qbwGPWv2izdZm395c8mGOOJOOxZe9UUaHyqgPnnRhRyJm+jux01ZnHZM4zaoYyKPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s2d/vylR/Lv4VRCWy1cxfwtj0T7MCFwry1McvGcVVo8=;
 b=VBvK3mgHa2ercOVqT/q6qG3pW3db0dtZBKcPkwRhJUjuqF4QBuzrYMEngZ/EvL47eQ2XabNe1aVLpkBMuOD3di47hnUxiMaBpCG3ehtQOzDerf6l9VUpoiU/NIrQo6nxX4U8XwFzNBkbRxE+rGmMqcl23zAMCXClQj2yBeE3z5Dj2C6guln753LXO5Q2xeGUs/GnBmmF48mfo9Nm00u0xnGU5AyVF3m7qkcRUhPC7N7jPReCv6nis6No1vlUQB3fKwUBQCQDv8tBKvJyK0CvNMyzWIu9/xsd5gp0/2GsB0exvU+6hVqLyHsxirljOoX41ZZHBOUUfK6ZOpImkgaTVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2d/vylR/Lv4VRCWy1cxfwtj0T7MCFwry1McvGcVVo8=;
 b=FDFBjhPBoVWtpAghf/uLj1/mh9uHaenzicT6GogEiQoUcxir4WfHtjzMrvEpT6m41VAkU3rNC5AsNysIZ0XNA2WLEclJiXfAEgiRJo+LQte0c54oyU8KyPSkxUOF7dSc+iUF4wh4WpvYXEp4BPGXpooLKmiX0oculZXpZFeWC/o=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by VE1PR04MB7423.eurprd04.prod.outlook.com (2603:10a6:800:1a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 10:21:29 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 10:21:28 +0000
From: Josua Mayer <josua@solid-run.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
CC: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, Aaro Koskinen
	<aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman
	<khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony Lindgren
	<tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R
	<vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Wolfram Sang
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
Subject: Re: [PATCH v9 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
Thread-Topic: [PATCH v9 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
Thread-Index: AQHcmREOqpOO6qV7AUmUzlczA9k35bV6IsaAgAAGywA=
Date: Mon, 9 Feb 2026 10:21:28 +0000
Message-ID: <f643cbbb-9e23-4e88-a2a9-01077d466c12@solid-run.com>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com>
In-Reply-To: <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|VE1PR04MB7423:EE_|DB5PEPF00014B9B:EE_|GV1PR04MB10606:EE_
X-MS-Office365-Filtering-Correlation-Id: d744ea5c-15fe-4184-d20d-08de67c501e0
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|7416014|366016|376014|1800799024|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?b0s0MjYxWE5HR09WOUdtWGhvSmZMVmZXK1BSNmIxSmdWMUI4QnFjVmtvSUd5?=
 =?utf-8?B?aTJZeXYwNFlCWEFQUFJpYysxdXpBcFlxZVpHTU1Lc0ZlanZMSkFwZWMrN29j?=
 =?utf-8?B?dFVVTDdPVVhmRWM1R2xRRkhKajhEY0tOQ2hYdkVlT2dGZmlHZWJtcTVoVHRS?=
 =?utf-8?B?Wk41dFZNWjJ3ci9uc1lnUEdTRlY4RncyUTl6R0FRc216S0pMNGUyM3c2WTdj?=
 =?utf-8?B?a3Q3dGl4aHdzc0ZLM2RsYjlqUXE1dnhROXd0WjQ3aEJxOHJyREpkQlV1VFNJ?=
 =?utf-8?B?SU1zSUxWUjNkVlBsTkttbHFPeGxQb0JnamZNQUl6Uk50dEFTVTJZQ1pCTXNN?=
 =?utf-8?B?aG9EUlRiQ3FTV0dTeFFRM1B5VHhMdjJvMXpQKzJ3YVFMWGxINTZEV1hrS2tj?=
 =?utf-8?B?TnRVVHNHSnFWOCswNkZzRDdUQ1JrNGR1RGRjbkZhSnY2cUpDbGV1WjM4ZUpj?=
 =?utf-8?B?bmJEb2FaNW5yV0hreWpaOURTbG4xMGtuSVdxSEIvU2NOMk15R2hKVzhGY1U0?=
 =?utf-8?B?cXl3Y3hlT3lHa0w1SVloUmR4a0NhdUpxNU9KTDFRZ3o5MXVSd29tc0JuOXZm?=
 =?utf-8?B?Q295ek9JSUk5S1kvc2F3N3VaeWxDNjM2WkZLQUxMeTlxak95ZlZuMnp4cXZk?=
 =?utf-8?B?RVNGUUNVWFdJUGsxZk0rQXN4dkFQVVNQZXhHMUNUSFRkN2RVVmtRZDBQOFR3?=
 =?utf-8?B?Y3d5MnRvcXJ4Tm5ZUE1pd2Y3QzY1WU1nTDVIeWRtZ2MyL3NIZi9qRlFQVG9Q?=
 =?utf-8?B?NzEweWpEeE9ndnArdVNQQy9kYnh5d0Z0bExaMVQzS0hnRkFPZ2pNVzdQWDRq?=
 =?utf-8?B?SUNDYzZQNnN2L0JvekFMVkJaN240UUs2VDYzOWRubDR4YlpTQUxzOGtqRklJ?=
 =?utf-8?B?QkJwakw0RHZTSUIwQjBxYWhpVlhhcFJyZEdkcGdkaXJZWWllRnR3OXcvWXVI?=
 =?utf-8?B?SXYvOVFQS1N2M1B3MHJrV0ZncVdtYkVRT3VwQ3dRSVJyYVAvVWpJUzFpU2hK?=
 =?utf-8?B?RUR2Y2ZwWjNtbytMazIrMDZ6TlFvS1hVNk9DT21CdmFWNTU2Ny95Nmtxak1j?=
 =?utf-8?B?aHFLcHZXUHhzWTJEYXhWRkNSdlYvUEEwSk5RS043cjZZd05uRXJSRVBSYkk4?=
 =?utf-8?B?ZHhiMTB2NDRqWlhGVGtDYXhWMUZWN0lmOGoxVWdFVmk0dzNqUGtrM2NTZTNp?=
 =?utf-8?B?cE41NTA4ZVE0aFdwcWUwM1lBQ2RzVVZtNzFoMS8rY3ZRWFlZd3FmTG9QaG4v?=
 =?utf-8?B?R2ViemdNQlpPbE9iZDc0K2EvemxkYlEvSE5ZQU1EM2NremN0cmNvK1FVNDdh?=
 =?utf-8?B?VzZ2MmFYY1V0bnFMMU93R0lMVmo4b2svV3o3L0hGWGlWOEtnNkY0NmVEUDNU?=
 =?utf-8?B?dFFEN3dSOVJHb1p5L25FeUtJWk1xcGhPTExzMXkyVTFXM1dpSXdHdEtXOWpF?=
 =?utf-8?B?aGJETDlZbVFBZFU3UlB4K00wY2VTZ0NtWXlrTitEVHlTYVpwQ25OK2V2eEFX?=
 =?utf-8?B?RUpNaDRSYkh0d1ZSYlJwSW0zdEo1cXJwVWJMSmo0UkdqNVNrWmthNlorYSt2?=
 =?utf-8?B?MitaTTBLcE1iQ1pYQXFjQlVtRUlTejExVmxGd0VtNFQ3UFJkTkM1MWJHaGxj?=
 =?utf-8?B?QU41cklEZlVxdkgxdjZEQmsrYlo3WEh0UzdrcEdsSnN4dnIya1ZLdUlCcmtQ?=
 =?utf-8?B?QkFlS1RTdlR6QnB0YkVVQWVUU0VrMFh6N3lJZXlES1VGUjNxYjFTVklLT3ZM?=
 =?utf-8?B?U2UwNStDb1k0aE4vOFJQcHkxRnJXSHVYL0JvN25nZTZ0b0lHcWV2ZkErWFgr?=
 =?utf-8?B?US9SSzduZUNaZXUvOS8wZmE0SnlSNFMwUDRDbHgrcHA5d0tSUmJSMjZWbCtu?=
 =?utf-8?B?VE02UkRYVFpLK2JaR05yV1hVVm84OFhMN0ZQK0xZK2RaUXBmNDJPcUtDSWpi?=
 =?utf-8?B?UTBUNWZYVmN1QzFhSUowNTZ5M0R4eWluQSt2ZzJndGV2N0Nib1RCVElJcFJO?=
 =?utf-8?B?aTZaUllQV1ErN0FVZ2lDTWptK29zdkxpUHNKZ0lac1RCSGl2TFRoSndyckx3?=
 =?utf-8?B?RHdMVHFRSDN0NU01TGpudkM0L0E1T05ib3JwRWtRWjZ3UityWWpDcThMQnc0?=
 =?utf-8?B?SFJJSjdna0JpRTZ0VEpnb1dvN3M1dldOZ2Y3SXl1K2pYNXBDbWF0NkF5VTZE?=
 =?utf-8?Q?CvjR2AGtQs1g+GAQYkvYIDU=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <E87DAE9BB8C5F54C8EB91E0D5B8584E2@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7423
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: ecd8563f29c748b4835cdb8a226dff30:solidrun,office365_emails,sent,inline:8d66c17a0a0314c4ac1041d9580c006f
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5PEPF00014B9B.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: ba5573b8-d747-4451-7d13-08de67c4fd03
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|82310400026|36860700013|14060799003|35042699022;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1ZMcGI3WVgwT0xyUVhXYWhHbnlHOG5oY0JKbkZ3YUZQdm5qYjF5eUx0ZDBC?=
 =?utf-8?B?bmJ3NWRIc1NnM3RJenVPT0xqaFpkTUlGTjE5UjF0YTQ2dUs2bDNSSmpidGlz?=
 =?utf-8?B?OG05ZTJCcDNQNWlXdzlMWldScFN6ZnhxbFlTRDh5QzVxbGNMaThKUmxVVEdC?=
 =?utf-8?B?UndsYWNjcmh3eU1LVEdkc0FXOGxQbEdLU2ZvU2t4WXdscVZGejdGclRDVzVi?=
 =?utf-8?B?KzdWL01VN2ZwYjdadURiNVlqTjBWUHNqTHE0Y28wcUFJbjNnZlZ3dEV0Tk52?=
 =?utf-8?B?QzlSSXluZzdCbDZhbWtBNXBuUXpoaEVwR2c1VWEzNTJCL01mQTFnRUg2OGhv?=
 =?utf-8?B?ZnY5clJTelJrc2NCa3pZT2M1R1ZsalhyMkQzeldoN2ZCQ3FxNWtGN0k0dTYv?=
 =?utf-8?B?bDFwcmRjd1dJYWdiOUVZT3lvWjBWWFVJZHFjRmFGZFM4M0dqak9zcXcxdDZX?=
 =?utf-8?B?Nk9HOVFhbG1yM2VQc0hrSXg2UmF1Z1pvVEViVExXaDdOUWdZOVNLRldFUUxC?=
 =?utf-8?B?bWwxYXVvaEx1QU1WRXBrenF2MXc1R1BpM212MWZpMXVZc1FVK01ncHlMU0M4?=
 =?utf-8?B?ZFcvTWtYT0E3L2JuM1loTWhFSkp4bXFnRG56WGR4WWtRUFEzOExiVW5jUXIr?=
 =?utf-8?B?eFVlMFFid0tCNjdJeU1IMndmNUVBSmprdkVSVVFuMlJMMWE3aS9qUzM0OXFt?=
 =?utf-8?B?UUcyWDhqSFJBMVh5RUp0Q3lqRzJmVmVBUjc1eiswblNieDg2SVRacVJzRU9m?=
 =?utf-8?B?MVpYTUpVcmVuWkJqeTZXWHNhenNtQTNDVUt6S3VqZmI0eFpsd1BqRVhUeHRs?=
 =?utf-8?B?RDJNbEdUcmp6TWJuZFFhT3NQSWpZZlA3YkptWWRuN2drTlEyOHU5Vm4zLzI0?=
 =?utf-8?B?VG9DSUQwWmtSaGFDZ2hSOEhxMk5EWG4zV2lSUVNXcE4yZ3NvQmhXcjNSODIy?=
 =?utf-8?B?MG1NS2xGQXBzNDRQL0hVV0t5OVAyRTA1cEF4MWhNN1Z3Y2x4QUpCU01hcHls?=
 =?utf-8?B?TDlMK1RPTmYyZ1kwaHVybURHb1YyY2dSM0YreitNZWlEM3ZoOU1neWVqVUtG?=
 =?utf-8?B?Vzh5SzcxMmo3NWwvYmFpcVBFSVNpc3Q1ay9UZzdzNTRuMDg4Mms0cW5XSnZ6?=
 =?utf-8?B?MVR3eDEzNlYrVjlSY2JuY3hPRlFDMlRieDFTNVhNcU9za0lLY1lVbGovOXhT?=
 =?utf-8?B?NmVHRlpyWmZ3T2FFQ29UNHRqc3dFWjNhT3VISmw5VmtjK3R2clUxWklXZ1Yr?=
 =?utf-8?B?bGs0UkpYUnNkd0c1aE56MUN6V01aMlBhbWp3YUZsdytkWlVMN09pa2lyMloy?=
 =?utf-8?B?cFVzRGUzTXlKbmF4YXBNQ1cyTUZSaWJuSlBEYThVZnBLdEt5Vk1WMVA4bVVE?=
 =?utf-8?B?R3puRW02dEF1SVZyME4zc0l6R1dDSzBxNDBrdElpZDk0ZnRlSm84ZFI5clE2?=
 =?utf-8?B?VE93RzB6bWJhaG9YOEpicURNOTFkUkIyMjZ4VXFwMDNjQ1VCK2FTUExVR0xp?=
 =?utf-8?B?TnBSeTRGWTRXQk42aW9DUXVjV1JSUXpmMkJMaUZzc3l1TnNGYlhwcitzMEdQ?=
 =?utf-8?B?ekFMSTUvaWY0SVJmdUxoczNXQytsQ0pJeTY3OThIRkRjb0hoY0lWQlFnNGFw?=
 =?utf-8?B?UXZueUVpTDM4bWJ1T0M3N3dqMFlsTzduRk1lWFFuais1RUtocHJ1U2g4WGl4?=
 =?utf-8?B?QnpBUlprUDZtR1lrVVBxYmpWYVFmVWZJdjVtTDJsUHBjQk9qSXhicEk4UGdT?=
 =?utf-8?B?OGI3bmExVWI3VWVGaXJNcDVKQ09wUXJqYTl0N2NDUVdkbzF4YVZIeGpQUVNt?=
 =?utf-8?B?S1dYVkg1WFlzWVNjQ3FVREVuZ1hvTFl2M0lmQjBIRXBiUWFWa1M1M2xtRHc4?=
 =?utf-8?B?d2VFUWYrcitoQ2NiY3JTd1JtdDE1TkRpYnBQTGRMY2NuKzZLVWN5V1RPM29I?=
 =?utf-8?B?MVMzR1N4WXIvNXE0T3BOY2NPZ3hpaWNYc3hqSTRCSUZ2aUZjNGNLZEJ4bGxJ?=
 =?utf-8?B?RHpiV2NaaFExbFZQVEE2SjNmbHBQUk1IZDNoSFBubDdIaTBtTFFXd3pVbTl6?=
 =?utf-8?B?eWRNTXBqcVlvREVlSXZCWHZtaEJZaDlIelZ6Q0xZSm5pdG80RGdmSjR0cnRI?=
 =?utf-8?B?Y0QzWGRBM3U1NWZMV0NFV0RhVyswdUFOYWVZUllzQ1Y4R0tzbWNLVzFMVGFi?=
 =?utf-8?B?UDhucFM4RHFzQkJEYjYydzFPN0l5cVU4cFFoa2RUeFU5Y1EvWlF4YmQyYk5k?=
 =?utf-8?B?R2tyWTh1OHRXdHgzY2NlNXFybEF3PT0=?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(82310400026)(36860700013)(14060799003)(35042699022);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 6S2bvggONtQ1GCHbyLYqGZC3olnyDdrwioV6d8Rsehp3vxmwKcvbgvIX6qiEoc8Kg4ZwZZzAfURvbYOVh3Nn3K7+GWtPgsocN64xfgOXhpgKYWzFr90EIO/Q6iHmPjoSSed9LicKt4Rz3r1XGPbqefDo65BnOme1WW7q8n8W5nzC4T69em+M3lw/uuh6wTkZ8yiwLy8rYfzA6I1t62ItMfW7pMDgUNzZ0x6l/DOHkQL1DNy8Ut4E4roSQgCt+yOSBIWJCc3+wjf26fHRMuh9/NHIBsr9t7yBpod/G3Db2Bwl2kCEnNQJYxbJFOoUqFJPSILT2GKeMv9HMbttPCQkUiRqcBsLw/CBGBnQlX0cdwAT1KPjToDlay+z0x8EBk+MMdK3Im6cyXR3AV8FU16E6TTtoWx8V6DpKzNJXizm4pukv1VMihV00ewWu/mujIU8
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 10:21:37.0476
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d744ea5c-15fe-4184-d20d-08de67c501e0
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B9B.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10606
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_022143_928525_86885476 
X-CRM114-Status: UNSURE (   7.87  )
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

On 09/02/2026 11:57, Ulf Hansson wrote:
> On Sun, 8 Feb 2026 at 16:39, Josua Mayer <josua@solid-run.com> wrote:
>> Some Renesas SoC based boards mux SD and eMMC on a single sdio
>> controller, exposing user control by dip switch and software control by
>> gpio.
>>
>> Purpose is to simplify development and provisioning by selecting boot
>> media at power-on, and again before starting linux.
>>
>> Add binding and driver support for linking a (gpio) mux to renesas sdio
>> controller.
>>
>> Introduce generic helper functions for getting managed and selected
>> mux-state objects, and switch i2c-omap and phy-can-transceiver drivers.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> ---
>> Changes in v9:
>> - compile-tested on x86 with MULTIPLEXER=m/y/unset.
>> - fixed Kconfig changes so that CONFIG_MULTIPLEXER can be selected.
>>    through menuconfig / .config as intended.
>> - updated trailers
>> - document null return value for mux_control_get_optional.
>> - fix build error for CONFIG_MULTIPLEXER=m, found with x86_64
>>    allmodconfig: replaced ifdef ... with if IS_ENABLED(...).
>>    (Reported-by: Mark Brown <broonie@kernel.org>)
>> - Link to v8: https://lore.kernel.org/r/20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com
> [...]
>
> I have already applied for v8 and it's going to be in my pull-request
> for v7.0 in a few hours.
>
> Please send incremental fixes on top instead of a new version of the
> series, then I can pick them as fixes for v7.0.

Okay, I'll send a minimal patch to fix the build error only in that case.

Thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
