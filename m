Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D244C44501
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 09:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyB1v8o3DQTAUjNycZYLyC38q+lyc+6pAYhV+xY4CSE=; b=SgWRUjx5jbh11O
	5TZ6+bs4bHMUSD3W1rrCyOR5ybJNylUpStk/C4L3ozG4SibNkpLsaXfA++sVpi1CZSjPGeatzqfh3
	8+z5rPZwJCls2g64Ghk6EaRuEuUKjuBzAu12KbOUocILIE6ax3bHRE15sepCDlfd5/HK5Hn9QZsko
	rGAbl3O1lPHgiNTN8d4X0cAaXfvLdCxR1Wo8onwH9CO6hdih9ibLbi7VKv4bGgkrV3WDlW/0WW4PE
	wfemhG7Kqm+GIcJuZHoGFp3n4bG2GJ1G1NZlwLgL2Q9Gd4dq2SqUPk/8EitEDwUuayRyVXRx9PhQR
	ZFLmcrdLVKbYXzTxh/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viU5X-000000059Tj-35J5;
	Wed, 21 Jan 2026 09:01:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viU5W-000000059TZ-2Opz
	for linux-phy@bombadil.infradead.org;
	Wed, 21 Jan 2026 09:01:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To
	:From:Sender:Reply-To:Content-Description;
	bh=NMqXaBypb0WBXHJTyi+aPcqDbwbn87z41uyVs0QpgrA=; b=n4HKAdtPfc9cD2RdMLwBFK/8Zs
	ykAZAy5eJhVKpHB7LLkDcpHqg94181Ino4G147nkmlmd3wN0e7wnons8IWKztEYGxceMVylnf/Tkt
	1cZmwfIoMPGleOeupwZBxSc4QnZHp6o1fHZyuIYsX94xpKUeZaiVpeXfl+lCb+FOfHeIghXipTknx
	7vzVj52PzXZtgcccEkPomKw4oogpc4kVhNHsSuxPWhquBgNYrmfTn1tK05p3OK6A2hU8awl/oE7nP
	6cD6kG0pBPV4uGICk/tgqtqQntSAIWYRxXjGqzKO4aJcrSQkM3LdQz+j8O0IWrqDARtlbq92o/ip4
	H0143inw==;
Received: from mail-swedencentralazon11023114.outbound.protection.outlook.com ([52.101.83.114] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viU5R-0000000Febw-19XN
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 09:01:17 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=qzV+aU3l5FWg76lPA/gFnEezNEyoizsU2ncYCQ/eGpcqY2tJXfvR2SQA5J28aZ2XFe8wbRO9AH9UccuV11cSw5Us0GjYQO3kZIGFbVSnZOfYAMsIeUhhiceRdjoqyaw52KUstmeb5VWn0ohUIoruajkuaj/KGUT6U8O+LM5JLAeAF/4ei56/wDOqOfiTvrJKObUVpnZp+fsHsIzKsDdn8/IawXV1Twh+iLH/ufvmp+4N702VVO16sVr3/u8BR4fR6O08YU3QPNbEdZdSYk3IXUkdFmiE4X8PwHE9KHOR7bj9uwsLLDGnX1VWnk5P14kn/8y990H+amD4VW3J/wW0Mg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NMqXaBypb0WBXHJTyi+aPcqDbwbn87z41uyVs0QpgrA=;
 b=LU4b+k1AQi+5SXbWqAIlCsJodKLsowcaZrl80F3zH27emDwRQHhzhN22tPArZYJ0d3g8/FfFKxyG9KN6s/jzfEquXFm9ydsYPDTdJ4X6y4Uj2sb+txiCLEASmOsGQr3imSk1O3sflwlkPwkykCaMgQp1+dbNC9c8+Ti6kHKneyZegFuFKo8sVasb4IjmAXJJeJhcY6HmXv/6VE6ZgWyA3Hz8Z42GZ1ULwUDgyUgc8HiP2pR/fhZfvRTsodG1zmavdGSl+/MeRDLT2rvcCBDTptXdGhhTRUqsd5kA3gDIWTuqTbcEUywAlMPy39hkXroRpHQQC9sOzJq9WptEvoo4UA==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMqXaBypb0WBXHJTyi+aPcqDbwbn87z41uyVs0QpgrA=;
 b=QStSNOh+zEgaLq31Xwz+1yHOVFi0CgWEbtkSwLlzXca/5TIN20wXRBdXbXer9vxCZDKgOshqfwpEIvAJWisMPPmHILRswZ80fzzjq42G7+fto3nFcMjp3SUuvEdCYvYT8IpQZQCMSa2SadvtgKtSX0ByYqpukCiBvL+Ld25sfEY=
Received: from AS9PR06CA0266.eurprd06.prod.outlook.com (2603:10a6:20b:45f::15)
 by AM0PR04MB11932.eurprd04.prod.outlook.com (2603:10a6:20b:6fe::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 09:00:28 +0000
Received: from AMS1EPF00000043.eurprd04.prod.outlook.com
 (2603:10a6:20b:45f:cafe::65) by AS9PR06CA0266.outlook.office365.com
 (2603:10a6:20b:45f::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.10 via Frontend Transport; Wed,
 21 Jan 2026 09:00:28 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AMS1EPF00000043.mail.protection.outlook.com (10.167.16.40) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.4
 via Frontend Transport; Wed, 21 Jan 2026 09:00:27 +0000
Received: from emails-8668735-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-30.eu-west-1.compute.internal [10.20.6.30])
	by mta-outgoing-dlp-467-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 220D280617;
	Wed, 21 Jan 2026 09:00:27 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1768986027; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=NMqXaBypb0WBXHJTyi+aPcqDbwbn87z41uyVs0QpgrA=;
 b=CShvvRf6nxiPmB89/nF5g4po3EBYVrZJBHPy4owk83VZNKjkW+z7qfdb4uqHw6TvT1q8u
 PB9cfYDl/BrD6nFkBrzy/jZMxmy0u2mg5HM7M/++RT9IcBbo6xmQ4w/9tW4J3bPvjukHFdB
 bLj9Nk59wW1cPsqlsbBFtwCkHr2a/Pg=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1768986027;
 b=G7uL3nC3zxlU8zcitg2KKNm/DC5725MPs71ZgDcOi5ljneGa325azbdaA+g/kLTQLCCnD
 oFVVsEXRvYqOrCPBOOik1m30tvR7CO1zECZjnVPjT69Ww+NUQ9O2s+sKGI+drMge6kHJ6qu
 DGth++AHdSGwqDxYNDHATNSgtscVBc8=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uACswkdkBpnzkyKNtHvar8IRX9NUCYYPT7go8n5lqGNGKpVbL/IAK/BtOsX7UBqw/32UkxYpy43yrSti/eirG9G2ThcLQs5mQeC26q/cpIzQ6Pdhflx8h69SkyCAhAhrHqbFYL5HQYNEGXnNYNBnEZxL/X/eh2n0gTgAzwvgyH5pKk/6CE7KyBZK6F1cTEbgTbXppErBR37163jQ+e1fdIu9er0wcOh06GLlpkPmNW0aU9Crw7ZVsVq/DUedl1YXk51rXXy2JFK9iG/m7qW8XVpK8HvsGxxcYbzqfYcus1yzM+go/XGI5BilQ0gNBnFV3WqiGXLple1j7dVJa592Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NMqXaBypb0WBXHJTyi+aPcqDbwbn87z41uyVs0QpgrA=;
 b=hqCtjULaj1sf/zEqBQK3mvfst+SYc3Q1e8CkbUxMX1iuJlWBX1Rs1WI4I8cMlkYXDErRUMTfJYOZ+CE6bLe3qvhPLj+eZI9uxI0+XluRLE8QXp2wTOJRwgHXshDYfplaEw8cFoiYellDDD05HZRwjKygW/WJ9VuSCcI8BWn63ImRMCXCZDqwm4wDgSAhMkVivnRp6Hj5N5pkUvZmlzTMUtOz5cOmxfAePvZ+cAHflhMozKbj16I15kYyJViCsytk29kRDGqLXDvFtvgetv2fpWVNN22gRm3q10s7y38agJW4DEqQkyO7hohOyepT4jBMutODe3RTRsnzzhVOdC96Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMqXaBypb0WBXHJTyi+aPcqDbwbn87z41uyVs0QpgrA=;
 b=QStSNOh+zEgaLq31Xwz+1yHOVFi0CgWEbtkSwLlzXca/5TIN20wXRBdXbXer9vxCZDKgOshqfwpEIvAJWisMPPmHILRswZ80fzzjq42G7+fto3nFcMjp3SUuvEdCYvYT8IpQZQCMSa2SadvtgKtSX0ByYqpukCiBvL+Ld25sfEY=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by VI0PR04MB10103.eurprd04.prod.outlook.com (2603:10a6:800:24c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 09:00:10 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%7]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 09:00:10 +0000
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
Subject: Re: [PATCH v5 2/7] mux: Add helper functions for getting optional and
 selected mux-state
Thread-Topic: [PATCH v5 2/7] mux: Add helper functions for getting optional
 and selected mux-state
Thread-Index: AQHciGVJHVdDvxtbtUSuVJ6PV8xJ57Va0jwAgAGFqYA=
Date: Wed, 21 Jan 2026 09:00:09 +0000
Message-ID: <04a8bbc4-ab17-4937-8840-893b17114335@solid-run.com>
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com>
 <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
 <CAMuHMdWnpci1v1oQb34_QRtU-P3S8TSormmNudajT0e34EO14w@mail.gmail.com>
In-Reply-To: <CAMuHMdWnpci1v1oQb34_QRtU-P3S8TSormmNudajT0e34EO14w@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|VI0PR04MB10103:EE_|AMS1EPF00000043:EE_|AM0PR04MB11932:EE_
X-MS-Office365-Filtering-Correlation-Id: c91340ee-a19f-424c-fdb0-08de58cb85c4
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?RUVRU29xVGRIOXh6ejloRU1MK2w3MXhYeTlQTGxFdi9ZYW5lb29WRU1wSmk0?=
 =?utf-8?B?Ymt3VlRWUE0wcUxHMkZiQWJmYXJKcGxZcHJCUkwrby85V0RNOENJWkZ1NG5G?=
 =?utf-8?B?NVVmS3RnUGx6K1J3cUJxWFZKdFBQaGpzTTRhdURUUGhsa1hCc0FSUE1sYTFK?=
 =?utf-8?B?VWh3a1FHdFRvLytSNHNvdjRsSnY4dGxGdzJjdjNieVFYUWNOMm82bk5JREFn?=
 =?utf-8?B?Qzl3OEFxY3h0K3BwRlR1dlMvQkZGenNibU5US1l1VjA4Zmg2dXNPbXo1Z3Bx?=
 =?utf-8?B?VGNMQnQybGJIQ3grUUpNZVhaUUVpaFV1eENlTjdWUDBuK0VlbStIM1RuRVBt?=
 =?utf-8?B?cjV3UTdLSDR2YTNZTG4xRGorcmVWR0tIWEN0M0t6S21uQmJZL2JQNWlXOTlM?=
 =?utf-8?B?T1pwQXlzd05JdDhKRjhaaS9MNkRZRGtrdWcwQVBBMk1DUW1scGQ2Rk9LWXRF?=
 =?utf-8?B?UXM2TFgwNUVDbFVva2RFOWJVWEE1QkZhNlVIWG5adVhCQ1FoUkNFOU5SSGZI?=
 =?utf-8?B?WHVFbklyY0FKeFJXRHlzeDh1TURHR241bG90MnZoNUNCTjZoTWxoZnk2aXVV?=
 =?utf-8?B?eWtaUVhQd2YzZ0IweTlJeVAzR21IS2JGbmwzUERBYlRWdWt5UFdzczFwbzFP?=
 =?utf-8?B?R3NpMkppSWxyTUYwZitwbVNRcDEyeUt3cDNvQ1ppVHJTVmQ3WFZ1REZKZzVH?=
 =?utf-8?B?TWxPT0pIRDUzazE5S1JCOElOV0dOQUozU3JnaWRld0VkTlFkejhsRTEwb1py?=
 =?utf-8?B?bzZ6WXdtZEMybDQxbXllZWh4RFc4Zk1FRFVXcURtNHVzcUUvNS9ldGpYWVpB?=
 =?utf-8?B?WHRUSWUzNFgyNlhienp1OEVqQ0U1Ry9mcmFocFlhOHVINys2ZDVKdnl5bmE5?=
 =?utf-8?B?VjY4QncvbXlZN2dYY09hak1pb3FHVFZKQm9QMHgyRW8zS2hyODZKRWZBcWU4?=
 =?utf-8?B?eTQvMGpXNGE3S2JMYkhmdnhpaHpMdWZ5bXFwL1lGNHdJZjVSekl3LzBnZXlY?=
 =?utf-8?B?NDFqVlRyZFpiT1NFV0IwZkJpK0RIRm1XWXlYL1p6cEoxVWNhc0FVVmU4RTFH?=
 =?utf-8?B?WmZyenl1WUJyMXAyNHFGUzFKa250dFcreHo5RkRjY045cjc3ZkF3eWcwbTQ0?=
 =?utf-8?B?UUVkWVJhYW9RMmgxOCt3R2RNYjllcWx3L25OUGpMeThEdC9WKzJEWm5vUWE3?=
 =?utf-8?B?TmxqQ29FdElyYnI4TjBPWEszbkg5citkSytuTXBsakEzN1JoMUpaK0FlZ2Nx?=
 =?utf-8?B?aTJzMkRuRzR6bFppS01LVjVLU0JjV1BHc3E2dWV6cVExUVR3WDRSUXMzaEhm?=
 =?utf-8?B?a3VSNHo5aXVMZ2NjU1BLbUlnclQvVVB0UXR1cWp2anhPMmNRZWpDR0dHU1Nh?=
 =?utf-8?B?WUVvbWdFUWpoT3BoWUplcGU1MmFTeXZCUzQ3RzlEL1VDUkdzNEtMZUFrRWFC?=
 =?utf-8?B?RHlCc1NiYWtvdzh6dHJWcDJwN25kdWFYNVNJaUp2bEpPT2xzRTZEWkdJZlNy?=
 =?utf-8?B?OUdrU1EyUEtRMzcrTzhwNllBdnNDVU0xUlpscVY2Z1R4WG9VWUE2VldxMk9V?=
 =?utf-8?B?YVZsRFlNTm5PVjZlU01EYlEyTUtONFFuOGFneE9wOGVqcjM3cU5qNmJ0UjJE?=
 =?utf-8?B?M3EyRitxYXJBZ3FSeE82dVpVeHNlVEZkaWkwTmxCb2FzRHhxbmh5TGFFZWMy?=
 =?utf-8?B?aUtkbnBjcGdhVmMxNTUwUENiL0pGZTV4bGhUYWNCRDBFUWhzbEFyR2xGOVRh?=
 =?utf-8?B?a05hMjExb2I0SGhLa0NvMjNOTHFzeDJaT2xqajhVRlJmTTBuT2V3L0JtYXYz?=
 =?utf-8?B?MU1ISllCK1MwZGFsSzZyRm1mdnM5V2RPbDRhMlVQK2cxL1Rxa1VtVEZsL0Vl?=
 =?utf-8?B?emZ0dElSK2tqRzJZU0pGWTJYaStOVW1PZDUxRGxaelFqNVdZVHEwTHFyQURH?=
 =?utf-8?B?N3ZhWHJDQ3B5bEMxSXo3WHp6V3EvTXR1WnNoeHBIbU02TTBVa3dCbXBKMHZ3?=
 =?utf-8?B?c1lLSlI4eU5aY052SStadlFZTHJZRHBYdEVYc2Q4S0Q3eWZ3RmdIWXYyZ0Fz?=
 =?utf-8?B?cjFxd2pqZ0NQVGhPWlNJN2JmYlAyQldUR0luNVBVZHhnWWx6clQrUE9lZlk1?=
 =?utf-8?B?MEh3TTZMUnJqbTF3a3RXUnZIVDFWUkFxcjExL2ZXN3JEeVVJTGFlZ21qeUdR?=
 =?utf-8?Q?AoEMxpXW7PxNLIbN9JAfkbQ=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <DE30E7874B640E4BBCA6D32331E34D45@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10103
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: eedf2889ff3c4de1b74badd7aa0be0a2:solidrun,office365_emails,sent,inline:8ebf7a180bdaa797d4aa91d708dbd0e4
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AMS1EPF00000043.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: b8d4da6c-27ed-43ce-e28d-08de58cb7b0c
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|82310400026|7416014|14060799003|1800799024|35042699022|36860700013;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czFaeTcwZDdXeXh4Sk95NmZYZVhCdzhNdW1salZpMlBQUktrVjYwWjgwM0pX?=
 =?utf-8?B?TzVqY3ZVN0xkcUEwNTNENk9mbkdsL2NEeTMreTM5U2VQZVp5TndOUjZ6RUtM?=
 =?utf-8?B?RnJwaFNPemNLOG5XZi96RGhlVWROcTJwbDAwcmR3MG84cWU0dEJkT21ZTTU1?=
 =?utf-8?B?akhIWlJhc3RHTHJPNk0xMldzd25IOXNlVFZxdWo2T2NCaGpOeER1WVI4TXQ1?=
 =?utf-8?B?QmI5U2I5dzYxNXNpYk5tRXpONUtRQThwZVpqa1Q3aVllYjlELzlxeG1UMFk0?=
 =?utf-8?B?VVE1OERNMjNHaUpnWlpvbHIzallxV2dCUWtEdlRQeXNxcTJheVZCaWhFQ1hQ?=
 =?utf-8?B?VlhwYzdpYnR0aGgxcW82M0hUVzgwR0pJWXpoYy81all3MEEwRDN5a0tsZVgr?=
 =?utf-8?B?RDJkVEN0RVFLQkZkVWMraTQ5RHRxdmZsRklORDh0dG0yWlFCNStucE9pUXNB?=
 =?utf-8?B?cmpNazQ3RVk0aHFyRW9YODhGci9ybWpQSXVHNnRJdEU0Qm1pQ0dsdlJMSDNo?=
 =?utf-8?B?WFdMRDlsMWVuKzVOb2xzdXBEUXB5ZFcyS3VGSUthVjBDWURrYzFoWldvNStY?=
 =?utf-8?B?Y09wcDFNZEQrdWlvTTh6b2U3cUJPZzdoQ3crcGFSeVZaZCtQL04wRkpGQWtT?=
 =?utf-8?B?U25ZQ2RJalNwTnBrcnRJd2ppSHZrYmVsZG1CMWFNMFpXU2IxZ25LY1dFamFl?=
 =?utf-8?B?NHoxK21sV29rMzJXcHZXNVlCU2o2bEVHc1FZbitOOTNqZ2xKbHVMT0FUYVV2?=
 =?utf-8?B?TWxqdjdXaC9UdTJOdytvNERVYkZ2U054cE9EVGp1UHJ2eFVDL3U5RS9MV3dq?=
 =?utf-8?B?bmU5QnhsRzRYZEl6L1E2c3Uvb3Rvemh0eGoxNTZYUEdEM2l5eUJaTW5QeTNa?=
 =?utf-8?B?NE5UeFdCVTd5ekpSd3h1a1BnL0FDaDBTWC8rRHNFR3NzMmN5cERpajNUVTYy?=
 =?utf-8?B?MGRjd1FOZ1Z3dTJhVGNVNk42SzBVOGJDY2l5N016Wno4eFpxRFpZT1JDajhB?=
 =?utf-8?B?TE9IYmlkem5aL0NFclBJNTBzNVZQVHZxNWIwMGdjTWtGZE9xMWZpVEw1a280?=
 =?utf-8?B?NFRweHJrc2hjQ1d4bDRqRWo2eCsrMzZsMkZqZVIzWnJJQVZGSytmSUF6OU1k?=
 =?utf-8?B?QjFLa1NaZ0RCS3dvMnlQTHl5NXA2Y1hmMGpNelBlZ3VERm9WNWdiY3RCeHEr?=
 =?utf-8?B?RFI4aDdFcVFQdGpKMVZvNFQ5djJHNWVsKzNoOHIvVWxrYWNRMVZLQkwyOVJK?=
 =?utf-8?B?bzh2YWxLbnpJZWp1Zm9TU1NYT0VyNFVWUlB3YTh4M2lCNy92QTByRUUyYjFj?=
 =?utf-8?B?OTczbWRLTnFRNFZKYVJ4anNndnhxTzh4TkdPTUljU1ZxZkRhOVh2cHlLMExn?=
 =?utf-8?B?WmJEeTl2b3p0bkxVcFlhK2FyT290WVhCeWx1cStBTzFWS3Rva3k3T2VMSTll?=
 =?utf-8?B?eDBRcytyT3VrMGdMMUpaM3pIR0IreXlMdlRBNmdxakQ5aW1tb2d4RWxBZGRZ?=
 =?utf-8?B?TCtjREt1RXBtVEJDZkZ0SXpkVkdpSmEwcXVwS3MrbzZrWk1lNXNwK3FPa2Y4?=
 =?utf-8?B?UmZjNVdSSHVXczlIdnBsVzByREkvVmlFTmF0blk4MlRWeXRRVzQ0aGFBTzRH?=
 =?utf-8?B?VmVtMUV4bEZhNnB4cWQ2a1pYUW5DUnlqbVFXa2RzRzB0bjk4VEhjYXpCNHFq?=
 =?utf-8?B?cDk4SXRBWnpqa3FESG55SXpYKzBIZ2tNd2MxMVNwWGpUTVZaR1hyaUZOS2sy?=
 =?utf-8?B?RDVWTUZUNE54VDI4ZVBVcjcxTDNCcG9LL2Z4RFZmU2JsRGlYZXljRXZuRmxp?=
 =?utf-8?B?ZWlTamlIR0xIMjROZ2M2Y29XVEhNYUxxb2ZFYWxaeFIxL2xhWU52SDhtK0h3?=
 =?utf-8?B?ZEZqL1hVYUZ3YWlYRDJ3azZTUU9RSUM0bDYxVUlWdGRneHNNUGVwRStyOUl3?=
 =?utf-8?B?VXVTOWJORmFzMDIzOUt0eTFOdW5EVE5IclIwb2ZXREdLRWltcXZkdlBIMXZD?=
 =?utf-8?B?M1BGS08vTGIrVXdDWXU1T0RBbGtrZ3FlMDlDZldVRCtYT3B6ZDZMQ1pWVi9o?=
 =?utf-8?B?eUdRaHhLVWRqeEx1OFU5bDdFeFNJL0l1QmQxQkpxbDcyRE9ZU0ZjKzZJcnhq?=
 =?utf-8?B?aUFLdEgwZ1REMVZHWFRZR0N1MEEzS2d4dk95Y2NXb1IvTE13cWFqV0ZWT3I4?=
 =?utf-8?B?cGpZc2JwK05hVk5DSlBjWGZSU2pMK3FKRlM0ZEROUWw4NWNBaEpYeFNtWmE0?=
 =?utf-8?B?Y3Exd3o5eVFJYUptSmh1QXN5RGRBPT0=?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(376014)(82310400026)(7416014)(14060799003)(1800799024)(35042699022)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 09:00:27.7308
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c91340ee-a19f-424c-fdb0-08de58cb85c4
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS1EPF00000043.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB11932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_090113_483833_B5254130 
X-CRM114-Status: GOOD (  10.15  )
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

On 20/01/2026 11:45, Geert Uytterhoeven wrote:
> Hi Josua,
>
> On Sun, 18 Jan 2026 at 11:29, Josua Mayer <josua@solid-run.com> wrote:
>> In-tree phy-can-transceiver driver has already implemented a local
>> version of devm_mux_state_get_optional.
>>
>> The omap-i2c driver gets and selects an optional mux in its probe
>> function without using any helper.
>>
>> Add new helper functions covering both aforementioned use-cases:
>>
>> - mux_control_get_optional:
>>    Get a mux-control if specified in dt, return NULL otherwise.
>> - devm_mux_state_get_optional:
>>    Get a mux-state if specified in dt, return NULL otherwise.
>> - devm_mux_state_get_selected:
>>    Get and select a mux-state specified in dt, return error otherwise.
>> - devm_mux_state_get_optional_selected:
>>    Get and select a mux-state if specified in dt, return error or NULL.
>>
>> Existing mux_get helper function is changed to take an extra argument
>> indicating whether the mux is optional.
>> In this case no error is printed, and NULL returned in case of ENOENT.
>>
>> Calling code is adapted to handle NULL return case, and to pass optional
>> argument as required.
>>
>> To support automatic deselect for _selected helper, a new structure is
>> created storing an exit pointer similar to clock core which is called on
>> release.
>>
>> To facilitate code sharing between optional/mandatory/selected helpers,
>> a new internal helper function is added to handle quiet (optional) and
>> verbose (mandatory) errors, as well as storing the correct callback for
>> devm release: __devm_mux_state_get
>>
>> Due to this structure devm_mux_state_get_*_selected can no longer print
>> a useful error message when select fails. Instead callers should print
>> errors where needed.
>>
>> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
>> property presence check") noted that "mux_get() always prints an error
>> message in case of an error, including when the property is not present,
>> confusing the user."
>>
>> The first error message covers the case that a mux name is not matched
>> in dt. The second error message is based on of_parse_phandle_with_args
>> return value.
>>
>> In optional case no error is printed and NULL is returned.
>> This ensures that the new helper functions will not confuse the user
>> either.
>>
>> With the addition of optional helper functions it became clear that
>> drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
>> Add stubs for all symbols exported by mux core.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
> Thanks for your patch!
>
>> --- a/drivers/mux/core.c
>> +++ b/drivers/mux/core.c
>> @@ -677,7 +707,7 @@ EXPORT_SYMBOL_GPL(devm_mux_control_get);
>>    *
>>    * Return: A pointer to the mux-state, or an ERR_PTR with a negative errno.
>>    */
>> -static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
>> +static struct mux_state *mux_state_get(struct device *dev, const char *mux_name, bool optional)
>>   {
>>          struct mux_state *mstate;
>>
>> @@ -685,12 +715,10 @@ static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
>>          if (!mstate)
>>                  return ERR_PTR(-ENOMEM);
>>
>> -       mstate->mux = mux_get(dev, mux_name, &mstate->state);
>> -       if (IS_ERR(mstate->mux)) {
>> -               int err = PTR_ERR(mstate->mux);
>> -
>> +       mstate->mux = mux_get(dev, mux_name, &mstate->state, optional);
>> +       if (IS_ERR_OR_NULL(mstate->mux)) {
>>                  kfree(mstate);
> mstate is freed here...
>
>> -               return ERR_PTR(err);
>> +               return ERR_CAST(mstate->mux);
> ... and dereferenced here, leading to a use after free.
Thank you for spotting this, I will resolve it in next version!

(along with what the kernel robot found)

>
>>          }
>>
>>          return mstate;
> Gr{oetje,eeting}s,
>
>                          Geert
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
