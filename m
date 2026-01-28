Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 522EED3F076
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 14:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeUXZVLGn8qYoL14zS1uq3vO7opELLkwGkeuDe42te0=; b=wHIJ7tS+r6autI
	+7bXOWaEsNjRRHfo/m1IZvSQsfGbHWOsUV3qgYlzAr+lQTgMwEOYsn5Zqz0UK/NjftpzsMtjQEGYA
	d7MzkqaIr6NF8hT3pbW6F53JIo8c9cV6U78qfhzA7gaZj5lUInsp9Wn4jka0n8no6Ck7I27yYC5SR
	QccrUfLWnm8LWN8j575DTCJlu63wp6A70rrXckBFUDtT9Z2O09VfmIScsNFHN2T2EdqqRBUqZICY8
	QWACpVkLsBkYqIvq1lu+XEfCd6RljcSIwvEZg/fPil6XU2bRIwWj8Hv2r2MaCn1+Bxp7lCnF4Gco1
	YZfSmEDKNpN+QEll8ddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl6pR-0000000GCkK-0EfJ;
	Wed, 28 Jan 2026 14:47:34 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl6pO-0000000GCj2-1kR0
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 14:47:31 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=g0Pky1haehM2HQo1sgnrk3RZCoeYQ1G91GYEaOHHWKZnK5lAPInIkkFSyJ0LYyn7YhxwpMwl1E8omIuxpBsrB6M00D1/w5rPVir5siVPCt3FMZnISDsaTgaAxmTuA8KKj5rymu4vUWhdXE87w4KKoNd/O0GGPsuCAheIj57jgdP1xbeTJPvSuNgqvYk5J+c6h5oE3Y88/8f3UwUijyRQLQsyXkdH6/0rPNIQetR5djNiaASwV5Cs6dQn1mo2rMZOjdpXu3yIy68gYDgbUSMBQULasAnqfW3NacgzzdiNWRvMOJn0ezmkgDAN7nRlbIa+/PJGhvFdBtgNeumofMyBxg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Otms1jsPQnVY/sXpuxHcrZlTAGjoPXpkfcaQQPIdit0=;
 b=xCUGeM9plgsnEtE/2zDw0XjgFu9uNyQQGhECr2/tFl2kL8JeHYJwI7g82BaAHmNK0Nz5MiZr8uXoh3lEmap+Z5qnTZF4TTLVWK65yd0+0T8nbXYTja1Y2nXbCJR7vfbpIEvHcrnmzNpc7lSYeSFAE2xxmhMjn7ostM9gdbkxfgfrK7h/yNxS/0IrTZ76SYmKXq3L4ec2M06TydK4Adc2os4tXws6Y5hBHMGvLoYvVSxiXHXCAKfyhgwCbFbAXfXop9GYdZnuceJSb7/rmJ7ViaCmS2v5bwlbZedLRP3N/oUWSapNNzr0SK86dkmXUsbe8ckW5sJItmA7PtcDszkjEg==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Otms1jsPQnVY/sXpuxHcrZlTAGjoPXpkfcaQQPIdit0=;
 b=izLMhp0IpUbY8peN99iD0tglD9e0Gn7BCfdfdQH/TRA9NtVs424dwlgucG6bwYyQc+zVZFsunqylA/o0tBqHt7sNS+PSSZUtO28jjIvV584D59f28POj+yvPCBk0RxQPrQuHd1vt3jbcAO0XUAQHte6KCOTG5VEmMptpFV0+yG0=
Received: from AS4P190CA0031.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:5d1::6)
 by DB8PR04MB6921.eurprd04.prod.outlook.com (2603:10a6:10:119::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Wed, 28 Jan
 2026 14:47:24 +0000
Received: from AMS1EPF00000049.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d1:cafe::fa) by AS4P190CA0031.outlook.office365.com
 (2603:10a6:20b:5d1::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.8 via Frontend Transport; Wed,
 28 Jan 2026 14:47:24 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AMS1EPF00000049.mail.protection.outlook.com (10.167.16.133) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3
 via Frontend Transport; Wed, 28 Jan 2026 14:47:24 +0000
Received: from emails-5092366-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-51.eu-west-1.compute.internal [10.20.6.51])
	by mta-outgoing-dlp-862-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 66BBF801A5;
	Wed, 28 Jan 2026 14:47:24 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1769611644; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=Otms1jsPQnVY/sXpuxHcrZlTAGjoPXpkfcaQQPIdit0=;
 b=Qa+ekLZaidLC6uEOZI6mPL8srIch5tSXbffUglq6tmzkmfT5w6ykuNA6g/QAO27gssPfJ
 XkzEdfCJPXhwvsN3mAiqSgyKHTuf28+ts6DgUZ+zU/tGAz3dgLt9zCHpw7C7PkY/2O3Vba3
 qMyI+zQHQ3+eGlXrbNy/lYfDQTQjk4c=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1769611644;
 b=oV8AnET3dH2psDpRQQ6CeS+8IRTW9/Zx1/FjEAolMcqsQGOvM+d+eazClY/Pl6UKVA4/H
 vPL3LcO9AH04DAvYqkGd+2faFMaNi1eZe0ix49RoZpQik0Iu+/8V1X+5E1n5izqjnIPk/H8
 FIqlsQjJBScfrg2q7z8pOUnis164Mr0=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ywtdao1noQUbTy/3wsDxmk8AniacoyQz567CGdV/Z1qznEsFatkja0SQkrb8JAnYuglRB0vTFmJqkZDTO4Q291NjoNYcdqs4NPIv9skr2Xu94pM85eJQw+5HgwUksZueMx1VYxG7aKbj68nimaaBlJZIQrA7x+8riQa4i045IM8fdJQvpj3YGTddUkHEcY8/cSdOJCm8sQRerwuL2fw6Y7KjcvyoGYBrG7hQyM8/mcqzu74bLTjvRuPstm0rk5e2S7pmebH9q/BioJ6b8q0Rc86a2Rk4ZAgSoOF1Exzdo9F00WW0RYvFqpPP7umel/gtGZ+sTkEZG5VQKguC4XLzYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Otms1jsPQnVY/sXpuxHcrZlTAGjoPXpkfcaQQPIdit0=;
 b=V/XHXOor+JdcFrob4crrO9gHZqOEXNEFbq4wkkCg1XqzDgP31Cd6e6m5H2ujnhcHhL9UQKErkQBbRUefgp1ONCfGOk5ntHv3huYJLTBG2ZJQKGL214+NzCh0Q3ZmDGW+GMvBLw16LDxFBQYkh1TYKFQC6oNl2iovvP8i8CHZFMHVIH4MqKEUfofh1Nl2kCSuPTdUOQ1Y5ffTlv/ghrq/8xhFyPzap1KJGZ7NvFkxYlvz60h4rxxjITAgbGW22xnM9Ar0y0uYNQ7AudihGyBr2c2GfjTyyguNP5CHuwX64trYz3lvKLBAeAAaZtnEOZZHQhP3N88BwSxtgpcOQtHDxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Otms1jsPQnVY/sXpuxHcrZlTAGjoPXpkfcaQQPIdit0=;
 b=izLMhp0IpUbY8peN99iD0tglD9e0Gn7BCfdfdQH/TRA9NtVs424dwlgucG6bwYyQc+zVZFsunqylA/o0tBqHt7sNS+PSSZUtO28jjIvV584D59f28POj+yvPCBk0RxQPrQuHd1vt3jbcAO0XUAQHte6KCOTG5VEmMptpFV0+yG0=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PR3PR04MB7289.eurprd04.prod.outlook.com (2603:10a6:102:8a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 14:47:14 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9564.007; Wed, 28 Jan 2026
 14:47:14 +0000
From: Josua Mayer <josua@solid-run.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
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
Subject: Re: [PATCH v6 3/7] mux: add help text for MULTIPLEXER config option
Thread-Topic: [PATCH v6 3/7] mux: add help text for MULTIPLEXER config option
Thread-Index: AQHcirdAQ0eeSZ9ecUyGb3FN9c1f8bVcdLQAgAs/2AA=
Date: Wed, 28 Jan 2026 14:47:14 +0000
Message-ID: <4113f4a2-1f26-4c79-a9f6-c6e7c7282785@solid-run.com>
References: <20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com>
 <20260121-rz-sdio-mux-v6-3-38aa39527928@solid-run.com>
 <CAMuHMdX_rKgfusHP5qVny8OZufU6VAiA6sqg1LP3T2jikSz7yQ@mail.gmail.com>
In-Reply-To: <CAMuHMdX_rKgfusHP5qVny8OZufU6VAiA6sqg1LP3T2jikSz7yQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|PR3PR04MB7289:EE_|AMS1EPF00000049:EE_|DB8PR04MB6921:EE_
X-MS-Office365-Filtering-Correlation-Id: f9d8f4eb-fe46-4614-e9ee-08de5e7c2673
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?ZE5sZlE3Sks3d3B1L0wvOUwrOXhQWEJPcWZrOURtNDNVTno4M2FkN0FSY1RD?=
 =?utf-8?B?cWt4YThLbDA5aEoyOEFkL1psaWNHMU52bWhESGhFVndvQkpiKytKc3IrQ1hG?=
 =?utf-8?B?NjZ3NDloYXVtNDR5KzBWUnRaSDM5Qi9yNkJSeW9TZSs1UGZHdGI2SFp3Q1Zk?=
 =?utf-8?B?K2dEZlFRaFBkYUg1VC9kUmlBVnh1YnVNcHJPQzRmdGxUTkxRNEF6cWhickJh?=
 =?utf-8?B?WE1CZFJUd3pydmtQZTY0enpEY0ZyRVZvM0ZvZExYWTRBNGNDekxpTUc5UHRJ?=
 =?utf-8?B?Z2pnaEpwRzN2TGNNdkY0UERabnJXTnY2NlVXZk1DVzdXQVhmZmdvVlpKT0Mz?=
 =?utf-8?B?S2RHWW9CdTNZU0F2bldXQ1FqdmVldmw3M1oreEd0bzFmOXg5VitJd1Frbm16?=
 =?utf-8?B?T3lyNDZZWC9EQVdsVnAwRTc5dU1COVJKN1o1Z2FRU0hraDgvT0hQT05qOXJP?=
 =?utf-8?B?ZzUzV210Q3dTclRCTW1McXM3OG1CM0dxaHBCdXJYaWZGK3J2Z09RRzRMSDZQ?=
 =?utf-8?B?UXNUU05pUnNNdDlHZTlLVDdNV3lFK1lpajRnYTVWM3ZVbCt5SWdTVFhiNDlK?=
 =?utf-8?B?b1Zja3pWekh0NFdzYzdCWWRDRk40alNoK3M0dDZFQ3BZaXFhRjkvM3ZXcHU2?=
 =?utf-8?B?VVorMHUvQnJwc0l1K3BZT3o2TVd3OVBPN2tORktydXJVU09vQ1NNcjNCTHds?=
 =?utf-8?B?ZThOZmJnYjQyTDhBcmQ5UGtBa1JJZDVRb0ZxYnhDd1ljazVpV0duTVlyeitC?=
 =?utf-8?B?WElwaWIvNlpTaDZTVHFwMzdJRTFEaW8xWU5hbGFIMEREaWV3VDV3M2ZaelJF?=
 =?utf-8?B?aXBLcGhrV1AxZU1yb3laaHJSenJXTUUzRzAzTURKWmppUkNLQVZGNXVDWmFo?=
 =?utf-8?B?TjE4bmtsbTh5UjhEbDY3dkI5OW5XT29nbnlUU1MzTEhsc2xsb3FRUmV5VFJi?=
 =?utf-8?B?eWFpMUNCNXFjQ1d3b1ZZZ2lsSDhIS3Z6Qnk5T3BrZ2RkWjZRaXk0UHNRK3Bq?=
 =?utf-8?B?a2RGelNzc1NTWUpuYXd5ejQ0QldmMzhteVZCUURGK3lZazRqWDAvTjhKTkoy?=
 =?utf-8?B?a0xsRnlMaVdqcUNIckc0VS91ZFNKYTFZc29Jbys2c0hmWEVXT3c5Q1BFd29w?=
 =?utf-8?B?NmR4M2g3WUdTVE5HbE9FUjQxa3ZHUXpOT0lLZ0ZlTVo3OTBVdXV3TFRtYitn?=
 =?utf-8?B?bzhQeEtucFk2ZnpKbkFMOVdkNUg1eUxDM3VoTGg1OHA5bWM3bjRoTkFESldj?=
 =?utf-8?B?UlE1cUlVTEZOQWlkMnFIY1lVQ1JKeWZhSG1tZVh0NUFZR2lKKzlvWWphSEIx?=
 =?utf-8?B?MHluRGFHYkpVSVVMMlQrZ1FpcFZUYjA0eThNODAwOEhqRWljZERVSi9aUzY3?=
 =?utf-8?B?UlNQUDBEeUxNV3ZzRFFLNE5PV2kwa1ZxT2lRWnJBWXgwSnFqYjZBTmZqcVVl?=
 =?utf-8?B?M3RzZ09CUSs0cUgzbG9MYzFPVFZ4ZWV0cUhrU2d3UCtmVnMvK0FYZ3FMSTRB?=
 =?utf-8?B?Q2p1Ym1hTDBaYnlpS3JPZWg1eGZMMGF3SGEvR2lWaDVUamRVMmFJZGZrUzZw?=
 =?utf-8?B?TkFROGtFYjFxY2FsakZmWmdyNGgzOHRvelFGSEZwRnh5Ni96MjExZ2lUR1Mx?=
 =?utf-8?B?bE9XMm41UlNsbHE5OXZ1cFF2YkpaTXJxRVVHb3hGTXpDNjhWU2g2YWc2ZEsw?=
 =?utf-8?B?a084ZmJGN2lxa3FqUTNFRlRmb1dtTzVGUEJ1cGZpODBSekszQVc2a3JFUCta?=
 =?utf-8?B?bTZtc0tYZkxEV1I3a0JTKzQ2WFE5MGpVa3BaSTdFazdhM1haZzBER1BNUXdW?=
 =?utf-8?B?amhoSmJ4ZWJMbUpJUlUyOW02UitWUWx0dWFDWG9MTnlaclltVHhYbXI2cUlD?=
 =?utf-8?B?WmUveHRad1BEQk1XV0M5R0dBbzB1QUlac3E1ZnVqSGdBaGd0ajBOZGFDK1ZC?=
 =?utf-8?B?MmtnOXJ0ZTNLeTVrMmQxR0NsVFJSODJQTFVhQVdkbjd2Z3ZkeGhLdk0yU0lL?=
 =?utf-8?B?eFBwK2FGanV4QnVRNHNqaEFjZXBpR21Zb01hVUtCWTE0TlFPTFc5UnRFWHht?=
 =?utf-8?B?OUY3eUVKWCsvTHpQSER3cko1SW9rTUVKMGMzL2gxSGhEd0F4eU9oODgrY0JY?=
 =?utf-8?B?d0tQWHpabDhSYXdmcGR6K24xZlU0MUwzeFJnNU13V2hWK1RHN09TSmtrQWRh?=
 =?utf-8?Q?hZ+qLo/2nZiOCEZbZOp0v+A=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <11DD4C7BB6DFB24BB813CB56B4F3FB4C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7289
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 2ff52ed70dab416087d10f656be5bf68:solidrun,office365_emails,sent,inline:8ebf7a180bdaa797d4aa91d708dbd0e4
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AMS1EPF00000049.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: cd248110-158d-45e5-2ae5-08de5e7c207e
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700013|7416014|1800799024|14060799003|82310400026|35042699022;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a09sMkpSUjZiZU4wTEVNMmJyN1dGYmJNRXRmeEZZc1NvL084emd1OTdHcHZ5?=
 =?utf-8?B?M3I5ZWpER04yWXZ0WXNHM2xmTnk4d3c4aFpwcC9XZ0VBK3h4L1FKcXFUSVFl?=
 =?utf-8?B?K0x3QXhpSVNWS2ExN3dkMzk1YmhpQ1ZnQVEzQkJHUGVlU0p4S1JUdkk2Tys5?=
 =?utf-8?B?ZG50NmFQWEdHdWw5WU1TREZXTktNSnE2Q3RHL21HYVB0aklpVTdITW5hMzda?=
 =?utf-8?B?L21KRy9xa1d6azhEN1NjSDlJWWpRWk1KNGxOaWNGUEZNOGVMV1RzR2YxWWYy?=
 =?utf-8?B?bmc1ZVdyaTMxZDBEWi9HN3BjNkFXMUxaS1FqY0MxejMrRU1tYjdFcnRRK1hO?=
 =?utf-8?B?SEtxbU1xdm9oY2xQaWJKZGdYYzIvbUdzQldBVEp6d1hyV2ZnOE85V0xiQTM2?=
 =?utf-8?B?RTlWL2MxRDFyaXl0ZXEzZ2haQVp4OWFoZXh4NEwwclN1YW5Wc1NYWmZ1YWIy?=
 =?utf-8?B?Q2k4UFdudS94VDNFOUhrbkNhcXluRUZ1a09WclYxZm9CVG9DZkhDa0kwTmp4?=
 =?utf-8?B?TjdtMmROSUJ2WU5iaTY1ZlJhcE5hS05tWStLRnQ2R2FmZFkvR2R4bThKUFp5?=
 =?utf-8?B?K2xtUGd1OGJhVXczOG9JUDc2bFRyZTVHb2VkOUJDV2VZMXNOVC9oeXBEdnEv?=
 =?utf-8?B?YU5mUUdFN1FobXFLbnVDbi9iby9KRUluaEM2ZmFNcGdJcVlacXRWZ3hsazRr?=
 =?utf-8?B?QzdjakVQY2txRnZJTTRwenlPMkFqQjQvaU02TmhLeHRHS0ROK05mL1dSUjkw?=
 =?utf-8?B?NGpPTUVmck0ySWFJZGhuZUszKzM0ZlBYRlpaK3drNEVlMmhxTWdqeXE1YUkz?=
 =?utf-8?B?OTdZYTRYNGhlekpJd0ZpUXBMQUcrZmt5MW9PMUVnNHlMRkFXSnp2ZC80cW05?=
 =?utf-8?B?c0RPUEtGQXc0WkZnbXBybHJJekpEYUZIVEhYeWNWMVhLd3VOMkovdUtwd2xZ?=
 =?utf-8?B?bmM1VXR5cFF6N2pwOTNHNXAzbGZlb3YwbHFqdlBLWTNCSkRNWXFFQm1Wcmw3?=
 =?utf-8?B?SGZ0SG8zcENsZW83cTIwNGVwOGlNam9rR3RZc0twZnNUbXV2WVZuWGp4cXJM?=
 =?utf-8?B?VlFqSUZJYWJHV2tKbU9JQU05RDhtS2xwR2tCWDArRUtGckpIdW9EUXZXMWZF?=
 =?utf-8?B?bGFDbDlUc0pUeTZZL2dNRVZNeWY5aEppQXFxdWJXdDBncmFVTmJpbUxUZTNi?=
 =?utf-8?B?VkZmRDdoSDNNRTlpOENyaS9LOVQzZmdjZXFKc2dJem5TT09rWHRUeVBUdWhw?=
 =?utf-8?B?bEpwOWJuSzBDV2ZQSTVvekVjL0cvbmdnSHJqUHZscFZlWGtBZFBrenAxc29a?=
 =?utf-8?B?TEZHbHozSTk2M3dybDNVUk9SREI2bkFKUE81cXdPQzJjMVljR3J5M284N3lD?=
 =?utf-8?B?OWhFTWVjdzh0ZWI2VWU0WlZzUXpRTG5oRGxrYVhWVDkvM3Jlbzdod2FSU3Nu?=
 =?utf-8?B?dk1kTVBTb3hwc083VGk2a2g2VlJSenN4UjVteE80M0tzMmZJaEFyOU1SUnFa?=
 =?utf-8?B?VjV5blFIUjdsMFUzNWRnWE1kbkw2R1pkNFZSM2VLdy8xelpkbncvRStMUkFE?=
 =?utf-8?B?NExyb0swOHdxanYvMVEzTUpjd1RRbUxWempiNURaQVlqK0NGOUxPb2FTLzMz?=
 =?utf-8?B?TTdsK0RtOUZuc1pxZ3A2cG9aT3NwZ0VxbU16c0tCcGd0dHFNQUVWZEZjMTRB?=
 =?utf-8?B?SWFaUlRBdk40T09lQlcwUXAvejNjTDR6R3BVdHpndnc0VU1vdDRIQTJpUG5a?=
 =?utf-8?B?UFJ6anBMZHRNRlVvUGF2SHVsZk9iaXByYkovbFQ1YWRCODExbnFucWdkNU5D?=
 =?utf-8?B?UitveGIxV2JYQTRZenE5ei8zVVQ4aW9WcFVMbWpkSTJkbVNRVVg4eWVzTkpJ?=
 =?utf-8?B?R083YUViUnFwYVFlbHlMN2oyMjh0b2hoU2FVcFc1dElwdEFERGpMUTFiOWU0?=
 =?utf-8?B?NVpVWEJtSkxLS0g5VVI5bUJSOWZPU0FJSnBHMTVoTHNFVFJyYjFhZUwxTEQ0?=
 =?utf-8?B?Z00xU0M0c2wyVVI2SUxHUGRrYmEzWjVjaTdLZkJBNGR1dmtHdTlHU3BiSi9a?=
 =?utf-8?B?b1Bmb05SN0dpZkVSNnZkakFlNkFxaEZPQklrd3dkOCt1Vkl3REU2RmY1Y2cy?=
 =?utf-8?B?Qm5YbVRNQ1I1NlhnUnlrUGdtWUsvUllRNU9XZmptbVZaTEJhY2RWK0I3d3Bm?=
 =?utf-8?B?TmFHcDkzY1R0NUx2eEhyTmxmOGhLVzZnYk9LTDRnVjRCbUpLZmNkUjZVYUwy?=
 =?utf-8?B?S2g1Z1M3M3Nkb1VMenFSQzRyMU1nPT0=?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(376014)(36860700013)(7416014)(1800799024)(14060799003)(82310400026)(35042699022);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 14:47:24.6284
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f9d8f4eb-fe46-4614-e9ee-08de5e7c2673
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS1EPF00000049.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_064730_617941_0FC98110 
X-CRM114-Status: UNSURE (   9.21  )
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

On 21/01/2026 12:59, Geert Uytterhoeven wrote:
> Hi Josua,
>
> On Wed, 21 Jan 2026 at 11:02, Josua Mayer <josua@solid-run.com> wrote:
>> Add help text for CONFIG_MULTIPLEXER to allow enabling this option
>> through the kernel configuration without explicit "select" driver
>> dependencies.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
> Thanks for your patch!
>
>> --- a/drivers/mux/Kconfig
>> +++ b/drivers/mux/Kconfig
>> @@ -5,6 +5,14 @@
>>
>>   config MULTIPLEXER
>>          tristate
>> +       help
>> +         Generic Multiplexer Support.
>> +
>> +         This framework is designed to abstract multiplexer handling for
>> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
>> +         controller chips.
>> +
>> +         If unsure, say no.
>>
>>   menu "Multiplexer drivers"
>>          depends on MULTIPLEXER
>>
> Unfortunately it doesn't work like that. As the tristate has no prompt
> specified, the user will never be asked about this.
> You should use something like below:
>
> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -4,10 +4,8 @@
>   #
>
>   config MULTIPLEXER
> -       tristate
> +       tristate "Generic Multiplexer Support" if COMPILE_TEST
>          help
> -         Generic Multiplexer Support.
> -
>            This framework is designed to abstract multiplexer handling for
>            devices via various GPIO-, MMIO/Regmap or specific multiplexer
>            controller chips.
Thank you, changed with v7


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
