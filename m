Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9642D3F077
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 14:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=akvhw1djUPhvJdYPwgVmNK/ZOSYwAU+HkKl8GZszMSU=; b=iLv5N1w//Mc9CVXCmvcjEHNBdG
	Eldjd1n5/O5+W4wo5X+NMgV3tBLnODvdbxCPu0dDrCRry903bzEzM83JghbNvZviD6Dl9UQkNAsjl
	akaNDTtpOhoTaFJ9lDqZtA517j0GoJsIn/vEgHWpdiLj47Pyop+lDRRjiKGyd70YDNgaBMSA/9o/m
	oDKgUnQPWImheZeYYOdXboK4DNu9zVeG7OmS6ZwGQKtUrnMeiYvXx+vI4P7br0E9HFcjRp85msWEs
	SjkypXdFy9vi3SlwbsAJtxq/pHB6/ojbDqkajoReeJdcOASWqJlc8nY6mKt3SJSLDolTmbPkM/3cT
	dPQBCBYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl6oe-0000000GCZF-1dWw;
	Wed, 28 Jan 2026 14:46:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl6oc-0000000GCXp-0fP2
	for linux-phy@bombadil.infradead.org;
	Wed, 28 Jan 2026 14:46:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CbCOoPUKEGpa/SNTxRE1Bn/yoR4zpZTjgoQPj1ZrPrs=; b=ZhSPyYfAbIYnwWWGXeYEJz9eZi
	O3ZlpL3vFv3/k4byYlRGDujuxlEgSV5jrfd4dJY0mEzHWFVQxBSvIVO+ahyRKXXSmhNktZ1rd6kSg
	Eb2Fo37YTj8Ns+3WWmQpr0lmefUZFd1aW7c0EtRHg86JusNVLbhVbFdfWyKisADmnMLH+NtaKnb9p
	86hizqVBYIk9UNi9IBpg1pXFe2/XKbL5N/ijGSLCWShKZTCWgDt4vIG5G/TPeNcqKgTWiLmtV+8t7
	/eTmNLPkEmai71YMFC5w7j4fX18V98xBxYfoADFDCS5KnT5HdETM9+6WQb5n2YCsxJ3Tn68aPdMo+
	hI9al1aA==;
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl6oZ-00000008ksS-186z
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 14:46:41 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Ee3Pakrw5bfPIVPeH7AUWNIKZe9dhilHVqk80nz7XggbfP40rWIl0xVaxQjl1IjDIQes2Rhw3TUhv7OmwWtVA6E1yk+9Enp6OayYTHM/7aaAsjVrLxc7naNqdLwY5zf7PDqPy9tWkXRxnCJOEHHyoTf7c+LJMkCa1rDDOMIQx7axSnCd4xMRSGC0U1T+RfNf1xLGhOe+XZDvGY4F2KgOKqNkLABZMnzFEVLqXhwCqA/2sdChCTfxBhNTVTxit95f1WiEZCknJRNaxvOI9xTbWMcOS9iOh58Vlz5gO+zXIo0yfz/76paKr71/cP9QEDRzUm+ZPZ7+G4c1N86XXCvziA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CbCOoPUKEGpa/SNTxRE1Bn/yoR4zpZTjgoQPj1ZrPrs=;
 b=KIPNe0HvLvLbo5XY65ggaB8YFpFwVKK3rjqJAOs1Bca0jJ7r2pb5r6wiy5fKMuomQZGTpF72KHhMM4MDToXaxu49UMpSvMM4ZiS6KRxGB7f0/dE36ckEulXLtvUZlrEeZ+do3dNYnEsYuFx6Tz3tMkO+7QND6cAIprG6cDgYl+TKZhUZiXLs+2JhTSeY/gd/o7JphJq+omKy/0tjDW8Kj0zFM3pRiZkt8sxM+daDyDxhCOMzi6ujY6KlZjp4nhn8hnICIHNZ9eMwhhsR4IBDN21hdD6ymS4Cr4NnFw4ls/bhWet9cpZm8pIzDgJjcNqBgbZL8BAiAFjb4CBby6WXZw==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CbCOoPUKEGpa/SNTxRE1Bn/yoR4zpZTjgoQPj1ZrPrs=;
 b=HvpIY5YB+PyR9EKw+UzIBp8wAR9GxA1W9HSgKWbGIcuBxQaJHB6jLU2eZ4jc7nvP8qanAml6aYwSflDdhjjA1NfWjS4qMDvSJ7qJ3Kyjt9Wzy+O2C2b0T/HowHY4m9VaEtOfJRiMEoZuSj25jQWn7sOE9FkI5eNfuI4DyDmsjaI=
Received: from AM9P193CA0004.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:21e::9)
 by AS5PR04MB11417.eurprd04.prod.outlook.com (2603:10a6:20b:6c8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Wed, 28 Jan
 2026 14:46:34 +0000
Received: from AMS1EPF00000046.eurprd04.prod.outlook.com
 (2603:10a6:20b:21e:cafe::50) by AM9P193CA0004.outlook.office365.com
 (2603:10a6:20b:21e::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.8 via Frontend Transport; Wed,
 28 Jan 2026 14:46:31 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AMS1EPF00000046.mail.protection.outlook.com (10.167.16.43) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3
 via Frontend Transport; Wed, 28 Jan 2026 14:46:33 +0000
Received: from emails-3759714-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-155.eu-west-1.compute.internal [10.20.5.155])
	by mta-outgoing-dlp-431-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 404D9806E9;
	Wed, 28 Jan 2026 14:46:33 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1769611593; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=CbCOoPUKEGpa/SNTxRE1Bn/yoR4zpZTjgoQPj1ZrPrs=;
 b=Ne93m8SbO4i4sZQRft3TznWaDa9zoSgIAUFFL9wQe/iJ1MlDWLmLGZ2flBo3P8DHfL5nt
 tBeuydOqB/kSxTtNixGxVLAfJ5n/1XA/vpqWqPrICrtq54s6IzqGkjN07SpL9n8l3flhlqz
 kJrBgTYwaJWdrBwAbDVMCamSYtNNHj8=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1769611593;
 b=EwRtaKCQulo4se0gIir7p9Pj4C/kLYRtJlCGddsvnRlHDwOofiN1eK50COOsYr+RbhQDY
 OadTXzu12xFlRCZdufX/w8M0XC2Skw3kBK8UkdFF/3NSPE71ExqGAMOHTn/jduq/oR0r9KJ
 J8hC4XtBMYjoizXB/QfKdqDf1LU7RJs=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HAFtenrkWBu4fUJvPiRBstU0ZeXN3DiE6b0Ubrn9aSiPDvi9NIVOieWDQcOOG7R32LnV6tOevKRAd1or8esUR+SunbQfbTL194Cz/rF5KIqKypYQ79R0Sasql9BSJ2QfZ5nEoRO29ySDsElUupxfWhTL+TmD0Ff/En+vihtYGet6Mr4v+CRJO4hmaBjcSbPv06L+EJjKp8HwLTpySXP/jVQ8VXEPc07svupCsDSXYkS6ZB85JfPZrKSRCMCGnJWqK5Y9TwmE0XB//CoumZae1sadUsVdpx1VEBv2fj6Ri88b05yNPDUJVtdvdmRFCEUNnZ/DcES6APjhjsX6IZEjWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CbCOoPUKEGpa/SNTxRE1Bn/yoR4zpZTjgoQPj1ZrPrs=;
 b=Oe99lrUWS6Q9/y7oii3J1Qf1PWI3qUswCnU5f65I8RXY8vPhcAd6R8+767wK57yiLqBzO22tr+jq3Rt6W4C2dfXqMWn9RpRPlGQ66I7suv69sxMUA4yw9s4SwD1CTTu2cAYeqD87g0nIgml0BklnX+e5LpgM47qDmlZ7p2sdR9CXPqRap66FPiuAYqehmrJLRVrgaGtPQ5edySwNeFJda7zzD/H7icO7n33UfGvFm9ZAQlx9oDOqFvhEhKL0naGDlsntJix+gOMnsYNtQ6c3XWa+UwEXStritDxHRFUfpfC5LJrisowXxpkbxIBcxrjiV39LyigAnDXNw1zDXl8SIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CbCOoPUKEGpa/SNTxRE1Bn/yoR4zpZTjgoQPj1ZrPrs=;
 b=HvpIY5YB+PyR9EKw+UzIBp8wAR9GxA1W9HSgKWbGIcuBxQaJHB6jLU2eZ4jc7nvP8qanAml6aYwSflDdhjjA1NfWjS4qMDvSJ7qJ3Kyjt9Wzy+O2C2b0T/HowHY4m9VaEtOfJRiMEoZuSj25jQWn7sOE9FkI5eNfuI4DyDmsjaI=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PR3PR04MB7289.eurprd04.prod.outlook.com (2603:10a6:102:8a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 14:46:24 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9564.007; Wed, 28 Jan 2026
 14:46:24 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Wed, 28 Jan 2026 16:46:11 +0200
Subject: [PATCH v7 3/7] mux: add help text for MULTIPLEXER config option
Message-Id: <20260128-rz-sdio-mux-v7-3-92ebb6da0df8@solid-run.com>
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
In-Reply-To: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>,
 Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>,
 Jon Nettleton <jon@solid-run.com>,
 Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.13.0
X-ClientProxiedBy: TLZP290CA0006.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::16) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: PAXPR04MB8749:EE_|PR3PR04MB7289:EE_|AMS1EPF00000046:EE_|AS5PR04MB11417:EE_
X-MS-Office365-Filtering-Correlation-Id: 01f633b9-9694-4ac7-a1ac-08de5e7c080a
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|52116014|7416014|376014|1800799024|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?TktXdnZFZnNtZnV6K2ZWSmRGaXVpY3hQNFZtVkR3QlJtRUs3bzZxQVB2ZjJY?=
 =?utf-8?B?VTVxUXZQM2V1OUhtQXI4S1FMcXNHZi9zeUNpOGx2NG5uL0NkZ3hFL3dlNEpy?=
 =?utf-8?B?U0FCQlpxQ0hrc1d2L1hES2dMZDNObE9PQ0J6Z3JXZEFta1JXNlkvaDllazMy?=
 =?utf-8?B?TVlaaDl5c1RrakNBUnJsL2kwaURyY2ZpWnJCeTc4VCtjblRnSWNVZHNlTTd3?=
 =?utf-8?B?QnJlT3ZzeDZpQUg4SkZlUi9YdzExUS85NldhMS95elNDaEhzb05HRGpaUUVp?=
 =?utf-8?B?RloxL2xOYWNkWEdkeWM3ZytteDZiSVhDNlZUcGFDd1FVVjlJalZIRVI5ZnIy?=
 =?utf-8?B?emFETEJnQ0FIazNPdmRSUlVuVUp5UnJDVGJGQmJwTGk3K3oxVDI2di9lLzlY?=
 =?utf-8?B?c3Q0eXJUc0lSVUhYWENtYW5pb3VNRS84aTBJb0d3SjhSQUwwZ2Z6NmRsTUph?=
 =?utf-8?B?dVVxQW9yQTJKSkF6TkpEZWZIZTI4YkEwczN0VWRLRUU4MCtsdVJ1bE1qNmcz?=
 =?utf-8?B?a0NZb0JRditJUEU5UVM4RzlvK0NETkErKzlMMnJpQ0lGejREWUhialluOE5z?=
 =?utf-8?B?emxjTnBxencxUHhBb05nM09JcEoxMlNmNU94LzArLzR5ZFN0WFN1V3BQWnA4?=
 =?utf-8?B?TUduQmVNSm05L0pnMGxVQ25NYTRQOGFCbWloWHlndTZrVmpucmdCSnJiZm9O?=
 =?utf-8?B?Sk1mSDNNZDE0VFR0TXVhUTlJNmU4R0Y2L3Y1eEtBQW5TckJkZjRZSGpxMFBj?=
 =?utf-8?B?QmVLQ1p0dnEwMWJtSmgzNitJeU9BOXFFOFB1WDN3elJhSitZQ2xINHBuN1E5?=
 =?utf-8?B?T3JqdFk4Q1FTOW5Lb0ZWVnFySUhIMXNkNi9OYXRRWlRCc2pTaDI0SHpDSzU0?=
 =?utf-8?B?R2I1d1lBVy8xOWJLTFVBY1dnMnVsVVZIVEJjL04vWDc4TWVyYWszdTBTdG9G?=
 =?utf-8?B?RnNMWFJHeXREUUVRbnVnZGhGOXkzQVBjR091cWNUd2V3dytJeTdQNmV5NG51?=
 =?utf-8?B?akkweFdGdVFXdUpyMi92SnRvelRwZUtIT1JCOXFEZ254bDZRUVdkaUd3eTdK?=
 =?utf-8?B?T1Z1bjdPb2JzOGRLdTg0T1pWVVVSZDBncFAvWE41aEJrUURCTXI1cFkyRGRH?=
 =?utf-8?B?NmdneFFvMkRTTkZxc25kTWlmL3Nyd3dFT1dTaGFBcFlDdDVQTzFVTmZBcG5O?=
 =?utf-8?B?SFBYbE01bWJlTHJDb0o5dkZFL1dmSHhUOHdsSFhHc0tGWnNhUUVlS29zS0o3?=
 =?utf-8?B?K29BZkpJc2Y3Rnc3MCtIM1A4a05hbUJoTTc4RngzSERHK0FORW8xU0JWaCtE?=
 =?utf-8?B?MkxDUmwzTnQ2dkZPYi8rTFZBbUhtOUgybG1mQ0UwaXNNc0p2K3BBVi9Eck15?=
 =?utf-8?B?OXpiMWlCckxRL0R6c1dUTUtqTWVWMGk1bnRNa1NRbmQzQXpOcHVoZk8zTlBh?=
 =?utf-8?B?Q3YrZGEveHJGRjVOY2UybDVhM1pCdGpVTDB5c2E1cytrMU8vcGJqZmJSTjZZ?=
 =?utf-8?B?T04xYU9DMzBHdXZaMTBWZG9wY28yTTkyRW9OR0UrRkdZVVQ5SHlnOHk5TXNj?=
 =?utf-8?B?N0JnNlFaRTJHMitNVTUrRC9RM3oyQzIrVGx6NmQ5SDhHSUVKa3p4YkV4VXFz?=
 =?utf-8?B?Uk9WRW1vNFJWVkMwQytEMmhTRHA0dUp5cDI2aEtRb1dESjl0MGJkTWY2WEoz?=
 =?utf-8?B?Nlp2VWtHYW1iV0lJT21rOGlCQXlDZkZHODlQMzFQcGdIVTRoRDlDTkF0cGNZ?=
 =?utf-8?B?SXFqNGRuaVNvcTJ6YXQrRlgrUHd6TENxOFl5LzBzMm5VaFN5NElyN1JPQm5J?=
 =?utf-8?B?eXp6NlIrYTdWcVI1b25MZlRqazlCbzN3NGR1WnVtdGRQcE0yRitZTGN5aXB5?=
 =?utf-8?B?NC9rT2ZLaHRpZWdoMFlzNUpvMHZIbTRaOFdLME1HdG91RS9JcnJCVkJwZkdL?=
 =?utf-8?B?OXd0QUU4eXpjelJ1MGo2RGllL2Zwc3F0eVdtTkNkaXlCT0xCSEE0OUpZWG1L?=
 =?utf-8?B?TEdteCtNSURPS3NRNWRERVE2TUlMeEJ5WFNmdGl6b0lDNUlzeEtjSXBESE1p?=
 =?utf-8?B?Y1lxc1NVeDkyN3hqK3RmKzhPSXh1RVZ0dnBsYWtqcG90TVlIQkVndHJBN2ZK?=
 =?utf-8?B?RDE1QnJiYk51ZW9aRXEyblkwTC9TSkFUMzhMVG4vYnE2dzYzc0huRUZLeTM4?=
 =?utf-8?Q?HeJQCFcZ3G9eX2pZ7oomweQG12CiCh/7GWgMPbWxc2QT?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(7416014)(376014)(1800799024)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7289
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 98ab54e507d14019bf9f0b8da16bc937:solidrun,office365_emails,sent,inline:5c927907a0056d3547fa923b049e9e5f
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AMS1EPF00000046.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6295da8a-87b3-4b72-bdd9-08de5e7c020c
X-Microsoft-Antispam: BCL:0;ARA:13230040|35042699022|14060799003|82310400026|36860700013|7416014|376014|1800799024|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEpXM05XUWZxQ3cyMzdtUGRPaWp5bU1PdkZYNnZXWThZZzV2empDVFdkbnZq?=
 =?utf-8?B?WHNnaGF5NFJXVXhUa0E1U0paQ3Bzd3J2UkxBZGFpRDQ1SElQeHJ2S3FyUysr?=
 =?utf-8?B?UnJ2TW9YRzduS2pGNExYNmlHeUdlbnBpQ1Z5b2kzQllwMUhscG54cnIzWkdF?=
 =?utf-8?B?ZGdhdWxKSDdnUU82UmgyTW5FQjRQYU5OU2RaNGhNUWxhT3ZMWkI3K3BienhO?=
 =?utf-8?B?WG5mSjhDNEdPbnNRaFV5RzEvSG1SK1lmblJWaDV2dFp2SWNSSGEvSUliazBu?=
 =?utf-8?B?QUZsOTBrRk1DY3ZaS2M5UXI4cUs5b2VxMWlMV2VaSDdoc0JKS2JpZUtxeXJI?=
 =?utf-8?B?NmhHRnpkaU1DbzA1OGRCKzNXbDJQOURHTDU0WjU2MXNCdTQzSko5b3VFaFlQ?=
 =?utf-8?B?ZDdxUnB2bDc2dit1VEh1UTRPUHcyQU1CZU9DeDk1azhWZEhaWlFYT0xuZWZJ?=
 =?utf-8?B?emxDQVE1S3d4RExwSUYrU0dHcEFLVlJOaDZndEtBVTVwT2NIM2c1ZHJpNDkx?=
 =?utf-8?B?TURZYjBUSFBwTEhKYWdqZnYvNG15dUN4aXVMRXE1UnlLek5sb3hXTUlhMEhM?=
 =?utf-8?B?c1NYR1ZJckpLRjZkbzBRcURhOW4vd2tCOVA3M3FkR2xycm00UFYrN2psTXpi?=
 =?utf-8?B?dUY2R3N2ZmREZStZUk1zeWRObmowaTJVa3VVZEMxOVVISTBwZGFMY0dLaHJH?=
 =?utf-8?B?dWJJaEkzaHZuaTNCaGFCSnJ5STBhaExjR2VDUXYwMkR5eFpjNHJ6eVBtNHRF?=
 =?utf-8?B?UjV3Q20zSEtodWhWWHdWUTF1L1RyTDBtMWNVSUhFNXNIcnlXa2pLd2hGdUxQ?=
 =?utf-8?B?cWVEMmIrM3ZTVTYvUlBBVDhnMXBieFA5ZW9mRGpNcTJhL3YrVWt1QXdVeTh3?=
 =?utf-8?B?R3ZMSllNMlFsRFdPNm9mN1BnSnVFTWN4eDV4ZEtZQjFOWjRHV1NEeEtNbEpO?=
 =?utf-8?B?VmFQbkErT0I5TjUyZitsQ2ZHNmtMenF4N0Zzb2dKVmJFOUFZU3BWUkl4R3Nw?=
 =?utf-8?B?bkdWOWZoR2tsVmliU0dWbk80bmdhQXV6U3hCZjRHSVkvTzByUUd1OUNBblNR?=
 =?utf-8?B?cEllcXFFcWlCSWpqVnVCQStWMXptSzJzeEkzdzdjWVNqdlIwbk9IMWFqeEh1?=
 =?utf-8?B?MDBJYzc4SVlPdDlkL243NGdBb3RWUXJ1L0EvZ0hPK1NIZUpMaFIvcU1QSnlZ?=
 =?utf-8?B?L2ZWd0dBK3NzWDk0ajFJM1hzRDk1ZmtwczdRK2hFdkNZR05oemxGRi9GbCtz?=
 =?utf-8?B?WmFwT25ObGZ0ODhYMmJUTnB5V0FKWFlhU1B6RUVJT0hVRmx2YnVnUkk5SHBB?=
 =?utf-8?B?ZFhTZWV1WmVXRVExRm1oRmVyTXRweTlKa2dPZXZTWFNYajRGQUhGSU01dHdk?=
 =?utf-8?B?RlJJR2R6UEcwcDk4dWRVb05jZjFhMTBkMW1mV0JmT1ptbVNUekJtNVBOc25r?=
 =?utf-8?B?OFJtZ1F4SmJKSVg2Y0dwVklsQlpjbW5TZlpiMnkzeGNjVlUrWUlrMGx4ei9q?=
 =?utf-8?B?QUtNRWIvenhaa2xraEFBOFd0dzdVVVh1WHlQeDE0ZVZ0K1U4TFJZYzczM3Ft?=
 =?utf-8?B?Z1JhcmpRM2N5WXFkblhkYlh5eDhqbjlqbnVKQzIwQi92VGR5K0xsbkNLaHVS?=
 =?utf-8?B?aStOUFRQdkttODdkNk00T0VPZy81VERJQUxIT0h6RW9hdHZUWUFTbUZwcThx?=
 =?utf-8?B?TklHd2R6RnFDU3dpeVdibklVa2RGUlNpT1RBdWpWR3puQ3h3YXR1OXNHNHZ2?=
 =?utf-8?B?T25DTExBZFpjOHU2VWJCQ3F5cnJyVzdzWXJZbHhtbmk1cmh6d3hUb3FHS0Nq?=
 =?utf-8?B?ZGppMjJzSUpUaFlLS2M5K0NqbFJZc2V6bGY0RkFrekRMZkQwQjJLMy9qcWxL?=
 =?utf-8?B?MHdLRGpTRXZXVVhlVkxWQk1pNms3anFlSE53UjVPbTV1Q3p1UFBrdlBDa2dv?=
 =?utf-8?B?UXVHT1RQN2Z4SHZxTEp4V3ByKzU4SlBRQ25WSDBMMjhQcDRJVW1ZeW9HUWc1?=
 =?utf-8?B?MjVITjN1NlNNRUhwc1NwQjBSMFhuK0V4bzkwUlREbllLTWQ2b3A2TFN4R3By?=
 =?utf-8?B?WU5OQ25GVW5pOXFTWEsyck0yL0NoUXUrYXVOajIxYzRyTkNlTFRzZno1REZT?=
 =?utf-8?B?a0pjYkFDYXBMSStJRnQvRFNPMHFLUVJyMW9DNENGb1VTbjRvTVJKY1R0Mmxh?=
 =?utf-8?B?RVVBNkIxMk5NZ21IZ21rd0pMRktrTjd2N2tEb3QreUkyVC9KT3kxRGxvS292?=
 =?utf-8?Q?CxOuRz0cZgC9ugK9Np79HCEtD17t1cXWKfCt6wW6sE=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(35042699022)(14060799003)(82310400026)(36860700013)(7416014)(376014)(1800799024)(921020);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 14:46:33.6074
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 01f633b9-9694-4ac7-a1ac-08de5e7c080a
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS1EPF00000046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB11417
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_144639_516150_7132A116 
X-CRM114-Status: UNSURE (   6.66  )
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

Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling this
option thorugh the kernel configuration without explicit "select" driver
dependencies.

Select it by default when COMPILE_TEST is set for better coverage.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 drivers/mux/Kconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
index c68132e38138..e31c46820bdf 100644
--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -4,7 +4,13 @@
 #
 
 config MULTIPLEXER
-	tristate
+	tristate "Generic Multiplexer Support" if COMPILE_TEST
+	help
+	  This framework is designed to abstract multiplexer handling for
+	  devices via various GPIO-, MMIO/Regmap or specific multiplexer
+	  controller chips.
+
+	  If unsure, say no.
 
 menu "Multiplexer drivers"
 	depends on MULTIPLEXER

-- 
2.43.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
