Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED3BCEA4FBA
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 12:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnaDvWbu5yD5SCXzoCBluwc02G8ARDmFlys1iOXCuVY=; b=abn9aoqEOY/A0z
	ZFUvG3EGkD9QgiHaFA1tpNdnnyrNFHKCZsC4Iug/wOCdADdaUrEHIzlynJUEick2bscQyF9B1JCsp
	yZ/M2zz4Vzh7bMQQ3laNOtbpzvDODhI/XdZgh9G3xyTpsh3uHOlWNRMVGRv8AkqACpNQppmiw0tRU
	inrsf7PcXIqo6sHQfpbJQKWDI5TEHRr9GniFWSnFJ4mw9PDDOmDWAjOxuK89X9M1xeiYzQFLOzNN7
	An/cu3EVCi+CHXlBr4zdJpmb3kcsTMEHwzWBR02wlR+oM4K+dMDiYSorUUMMW7zUxHjDC7GEp4Jy2
	BjD5NyF4vUP6oLzHiDpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuVX7-00000000Ji6-1sj9;
	Mon, 23 Feb 2026 12:59:29 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuVX4-00000000Jhb-2AFU
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 12:59:27 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=UWrvvqvCugTW8mKgWRp/Z6mG2Ad4pc1siVJWr28mMxYjEFL9J3XDT6YEE4AdXNQIsn7V5EBtXHsiHKekdQ/vPN9VaHnK95MHHL/5Ni7d/YKSRz3TO4UkLklOA8FZoBDtGFYFMX7SVZZybdwJrDYvYqTQnOwOTcBoWBOKFurZIZzNqXDWYy0NsSrJGHGJacpRYokinvji6IbBFVbPSg/m7huyl3WOzd80LbuQGbKKHIhYHB226sZXbe3DTRxmyrG42pE2twrS/+wOO2rQKGxXpCVcyml8TEpf3KnGS0G0iJI+xgPkfS+6RSd1phfhW6fpOa4boiIVVhGaR7EIixn2RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x+BDpn3K8f159ewePo5Z7B54dUe4gv18JarKyfG6e9U=;
 b=lt8u1mjZ9nJB4tu8v6Pp6pguYp4U+Ny6OLrlIifwYlHAg9drm/qm6LKvj0JCw1gFzZNyA171tWdtqRK/RwHcTIwxvZihT/Bi3ljUcJkQiZi39mqZBZt+bWWT0olajuN6CxVotCSkdmvk5YKuWr7OmPH2GltO5gJ3CDpiNqg2Dofx5dTfW3ukWDHFCVExLTy0RdwpKBYm6dd3uEP7UbX6FeGVKNZ5Bg2t2UXUFQtst9bKvX3YSRP/syDoAtVKyT7rbZzqnBpsS84PcxlTf1249ahlcIvkXzYKoKE0YW5n6vNX+pQ1vOn7XTljycwflrmiKtcfpPwaXrJsF17jvbTQ6w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+BDpn3K8f159ewePo5Z7B54dUe4gv18JarKyfG6e9U=;
 b=nrHwyAiXC8nAhPFYaOQgHVFZorAqlUwhoJgUXGZHcodg/B3Z2+5+EYD5CJnz0Yy0a2ZufcQ80S6OKWsV3HpU/c0PVLL7K3uYcH8sJllniQUl9YOviL3jOkqvk2dUe/9eiEzp/QSkRhSiutUU3Jl6xK9cPVQv2YKy9c3NVP4acrA=
Received: from DB8PR06CA0037.eurprd06.prod.outlook.com (2603:10a6:10:120::11)
 by VI0PR04MB10997.eurprd04.prod.outlook.com (2603:10a6:800:267::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 12:44:00 +0000
Received: from DU6PEPF0000B622.eurprd02.prod.outlook.com
 (2603:10a6:10:120:cafe::43) by DB8PR06CA0037.outlook.office365.com
 (2603:10a6:10:120::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.21 via Frontend Transport; Mon,
 23 Feb 2026 12:43:58 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DU6PEPF0000B622.mail.protection.outlook.com (10.167.8.139) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Mon, 23 Feb 2026 12:43:59 +0000
Received: from emails-1298201-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-176.eu-west-1.compute.internal [10.20.5.176])
	by mta-outgoing-dlp-834-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 64BB3802AB;
	Mon, 23 Feb 2026 12:43:59 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Mon Feb 23 12:43:52 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NI58yVYRWlSCPqW3QjSx2C4it9YaYos4Vi1YcgIuFVSVZPWlpdczdluYz8eEm4BsLRo1qiE4/u3XvieIp3SGT8gK20jeiILDWduinPLkIVV9VWUgmlYLE43rHNlicbGw/namJQ+5m1cBPALbt0+XXsLDniEwT5hbPpf4w+Tgqc9GHfs7heehqasXXBDG1PcgtyBY1DyqwGQpnuEeS5ak52923RM080uGx4OlKlxf2LQT8nPSIV6hbxX8pYAIYLltIILH6GxFV3LD2zPkGc5MI/jS7LlUldMnM6w//6JJPIe7eEFzi0Z+xCJ6p/t2fdotXu7dD3lVhdZtJl6lK0HiDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x+BDpn3K8f159ewePo5Z7B54dUe4gv18JarKyfG6e9U=;
 b=DEoBav5Mi8wWGP2oQ/hOEkQYgnTdaNwdfFl3OUhoOQSMOOoKi6XhGP+jZSw2nxh9ddMt+BgVtoaxDtOPULMiGNmIj0HtrlqVNvy4EYOMiJZn5gZXHqOMTz7slPgxkIey3g5smxcz500KAWmkIOscKVDN0uG3Jg77J755cljidTiw/+AnlfVWr2fAqwkdAR35MF38yczQl+9yUWgB7JI4+OIxGlYOzqz9ro7HNFdrXhQa0zo9p7hYIZmon2P4uy4YxdGUS1A2V9Me82hc347jLDD7HcnAI6n2xKV0QZGlZPVRH1HEnVF1iNVGXnnJPa7Rvw9t1wJDgGBxDJiXjuLVyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+BDpn3K8f159ewePo5Z7B54dUe4gv18JarKyfG6e9U=;
 b=nrHwyAiXC8nAhPFYaOQgHVFZorAqlUwhoJgUXGZHcodg/B3Z2+5+EYD5CJnz0Yy0a2ZufcQ80S6OKWsV3HpU/c0PVLL7K3uYcH8sJllniQUl9YOviL3jOkqvk2dUe/9eiEzp/QSkRhSiutUU3Jl6xK9cPVQv2YKy9c3NVP4acrA=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by DB9PR04MB9818.eurprd04.prod.outlook.com (2603:10a6:10:4ef::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 12:43:49 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 12:43:49 +0000
From: Josua Mayer <josua@solid-run.com>
To: Andreas Kemnade <andreas@kemnade.info>, Vladimir Oltean
	<olteanv@gmail.com>
CC: Geert Uytterhoeven <geert@linux-m68k.org>, Marc Kleine-Budde
	<mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul
	<vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin
	<peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman
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
Thread-Index: AQHcmREPlBYTghYn+UKFA/cQGR2iuLV/TKqAgAABVACABbnOgIAAE38AgABjJgCACtOIAA==
Date: Mon, 23 Feb 2026 12:43:48 +0000
Message-ID: <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
 <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
 <20260216092914.kmvl7aep7dantcsd@skbuf>
 <20260216162406.0121dd91@kemnade.info>
In-Reply-To: <20260216162406.0121dd91@kemnade.info>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|DB9PR04MB9818:EE_|DU6PEPF0000B622:EE_|VI0PR04MB10997:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e4f7a6e-5c4a-402a-47c0-08de72d9375c
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?Ym16WFZRV0FXclJVYmFWNEMyTll2U1NFNTJXdjRCVm9Fai9jMXA4SlVOMWNa?=
 =?utf-8?B?TXhpWERzd0N3TlA2YVVTbXhXVFk5WGY4aEhNYlhVNldlQzh3YU9VcGxXSnFU?=
 =?utf-8?B?cnVybVozU0d1MUh6cUhXaVA2TzJyS216WVFOVkRxY1FEcmRhdE1NNWFKc3lk?=
 =?utf-8?B?VnlzSlR2M3UxNi96dWUwbFhjTmNmTEUzMm1TYURTZ2tMMTF0VVVaQ1FJc2ZR?=
 =?utf-8?B?cElFbXV5OUhrdDl5SGJRVUQ3dGtIZzFvNzA1d1VTUmgyYkI3c1Rad0ZxWHpR?=
 =?utf-8?B?dzBmeEhaNG0xWjkzeGJ2TFVDbTJaemxDandCblpQL05RbzZyelFxWGIxOW1W?=
 =?utf-8?B?UHRxcnBkT256YitaNnJieXlYeXBrenQ3Ym42bzJNYnZ6OEZMd2N0UjdvSlhn?=
 =?utf-8?B?d2d4d1hQaEVrZ2FXOVB3U05ieUpIWTdnSFluWU5OVVE0YVBDNTFTTEw5SFNI?=
 =?utf-8?B?blZWQ09Ca3B5WGNIYjhHaG9XVEhseDFzelNyZS8rajFKdEJuL05mcTRWdlZz?=
 =?utf-8?B?QmV2ellSMzBydWtObjArc2t6QmlZVEdmK3U2QXBtV29sSEpIV3lVSW5wZStT?=
 =?utf-8?B?bjNLakRqV3pMZ0pGOGwrMUc0QXNxVldRdGUyWGErcmZsZmxZbitvS09FY0dP?=
 =?utf-8?B?U3FVODM3RHIvLzlrd3lIa3ZuSktoL2dVRFVUTm5kdlo4THAwc3FzVWFvZWF1?=
 =?utf-8?B?bm5jaWN2Z2ZkQVJSTHpSL3VhSW83d0lLelhzbDF5UzBXNFVubjdUUDNjT0ha?=
 =?utf-8?B?QXpKWEhpaGFxa3dXOFNzMVpYWGxOcy8zRk1WUkxBUldiVit3eTF2TmNkcGc5?=
 =?utf-8?B?bHRkeVN6WG80Si85YnNmWkFkc1l6cUg5Qm5yTTVzRHpPS3c3c0JIRUNkVXl4?=
 =?utf-8?B?UGhuckVPbktvRW85Q3pwdUUrRDFqZUV1K2pWb0F6R3I4Ni93RkVIaExQbENy?=
 =?utf-8?B?b0V2U2NZZ2NYY3pHelp3QU15T1NWOXFyOXRlNzl5OTZvQ1dkZXRkOUMvWm5v?=
 =?utf-8?B?MUZDS1dMTDROMXB6UTNXMVZkNi9uS1FjVkptVGNLVWxUOS8yMjhDdmloMFU0?=
 =?utf-8?B?Y0Q3UVhQNUd4MG1MRVJqemIveDJ6WGdHNkRPYWdnTHdSMnhyYU4wR01uRDdI?=
 =?utf-8?B?U2hvZHlBbXU0Um9ZVm8rcG8xejJnR3I2eDRWc2djL2xpbXZ2L2ErQjg4Yi9h?=
 =?utf-8?B?eXdXZVJIdDMxcGxUM01hekZlR0lrTDBXSWtkUUIzMjBYdndjU3hxenhSSEh5?=
 =?utf-8?B?eVVocEo0Nmh0YjRraHIyOUtOVWFsa2ZrT0hGUlZYOUpxVHk0UGVESFl1b0Va?=
 =?utf-8?B?V0h6MCtLbjZWQ1o0bDhmS3djb1hzU0VOdzlyQ25aQ2I5UEpPeWRnQndtOGNp?=
 =?utf-8?B?bUE3bUdmSlh4OTVOWThCL3BNRnRkOTJiMzU0UFJsL083TytPd2ZYTENjQ3k3?=
 =?utf-8?B?U1k0SXBCbUNoM1dYUUo4WkRnYXZCallhR0piaThFWDV6eGR3SlkwcWg4NWJ3?=
 =?utf-8?B?MG9mcE02ZXZoRmJVUC9OTkdEdlRZWU9GTytLM3V3TkVoVzIxcDRkQllVTVlF?=
 =?utf-8?B?WTNGSGVJeTVrZW5hVXRLM1c5cnpvbW43Y2ptRTh0Z3RoZmE3UGQ2NHQ4ZkRB?=
 =?utf-8?B?SGZiTnJmNnlVRFhQUE56V3FXcGdWTmJHbnZaU1ZLcTBlcC96UVdzeWh6UUUx?=
 =?utf-8?B?VnZuVHhIQUZMUGJUVUx1dWRaK2ZDMEpqM0lScXhEeVlYVkcrNUNOMHdxSUVB?=
 =?utf-8?B?bUkvaWdOMEFoaUN3c0lXeFhWTlVIbWFoY2pMOU5CQXQxK09ydzVSbmczcUFi?=
 =?utf-8?B?VnJuY0ZDbnN5Y0VOWDNOa0lnN0QxQnlwRGs0Vi9zVlNseUpkaTdneFRDeEhm?=
 =?utf-8?B?WUVsMlFjU2RXeXRMcjM4SExCTzZJMzB3U2F0eC8rOUJvUXVOZStsalUxbTVH?=
 =?utf-8?B?bWFIR3V3TmlmaE1JVm5qcEFrNjdKcGMzY1BWTkxmYncvREZMQkdIQmZVdkFP?=
 =?utf-8?B?blUvbjRTNFkyQXVYVk5KbEszcFRZckdaNjhrckhSTThFNFJtTEZSYVBRbmhk?=
 =?utf-8?B?ZFRIY051V05QWnp4UnhlMHQybVh3STZMaXNXdFU0cFJnODVRbE5YYjMwd3Nj?=
 =?utf-8?B?aTZqTkYrZEc0Z1BOS2toK2RkcGk1OUR0TUEyYWI3YjU3NXd2U2FPZGRXdWRa?=
 =?utf-8?Q?K2BdCsJyQuTPflEbuvd215A=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <2AD722091647944EA8B33C56E2E7711A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9818
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: f3988f1111384a4fbc4393466b321259:solidrun,office365_emails,sent,inline:355d9431707635984c7397a32b135fd6
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DU6PEPF0000B622.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: b77dbe00-8e70-467a-d509-08de72d93102
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|36860700013|82310400026|14060799003|35042699022|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0F6TkFqVW1nZHNNYmN2RWx1emtpSkZCMDdNMmM1TGtPU1kzWmozeExvUElK?=
 =?utf-8?B?Q21FamoxdkROM29WQUdyakJTRUVXdHNSNE1lQldmb3ZzbWJWendseHE1U0dG?=
 =?utf-8?B?b2J3ZDB3L1VFeUw0Q0hqR2IxVHEwcVYvV1ZmczhaOHVydm1MZUN4Z1FxUnVm?=
 =?utf-8?B?UzJOZjg1dDBGNG5wODZRelB3ZWhMekNkejVkUWN1czNOalhxcUFQdGo1ZnBN?=
 =?utf-8?B?bWNSLzZpL01sN0ZSZWVrWitBNXJzR2FOenViMXJzS2JYK0Rqd0hBaVB2VkFj?=
 =?utf-8?B?Rlk2WnhtYzVtN2tPRkFZaHF2TGRBMnJPMVYrT2dxeURUM21zei83MVJYUjcx?=
 =?utf-8?B?RnNSUkNOQVFEOFNTaHZsUjBZSlZHSDAxd0ltOTBrM1MzRTBVMkg0cWpqMSsr?=
 =?utf-8?B?a0pkR1lpNU4vazAyNWZiUkV5TitvUktBMnpNOHIwZWF0VU16OGFKU3lGUGJw?=
 =?utf-8?B?U25kczh2VEMrNTQyU3pkQWhEb3lVT0k2WFBiTUt6TDdFdHVxc2t5RUpsL1Ux?=
 =?utf-8?B?UFZKaUhQRktOWDEzMHRRdWFDODF6L0VCSUZkVGpZenNXL3RGREswNnFyekZw?=
 =?utf-8?B?RkJpQ1QvcGhreEErQ1JxczJKZ3p2blFxZGlMV05zQ3ZaNnJRRUIyWXUwUXFT?=
 =?utf-8?B?SDM3eE45VnBFeUVpZnppa1lxaGd4alBoK0x3MUdwYm1SWW9qMUpIam93RU1x?=
 =?utf-8?B?a0ZScTEzUWY2YkZXMGRpYStYTDlQNFo1cERkZ29yUlQ5d1FXKy80MVpIeHNz?=
 =?utf-8?B?UVJ0YnhKbitVZTJ3MXljTDNBclcyTkdUV2JUOEpZSmU0L3QzbXJKeGRhYno2?=
 =?utf-8?B?WTZISzBFVlhGSlE3NE05Q1JaeS9laWIxUzF1OHloRWFFOEtGVWE2eHpSNFZE?=
 =?utf-8?B?YWdLQnNEZjdWZVR2R3JwRmhYNHdEWjJsVDRaTFRSekJKSndCMHd1WFZYdFZa?=
 =?utf-8?B?Z3dsaTA1ZGR1NE9hTjBMZjhpdmRoajQxbFVjdVpwaXJIL01QU0dZcVR3Vjkz?=
 =?utf-8?B?cTZqZ1k0cnFpQjFrWFRsV04wWmRETWpWT1JYOUpsWUlRSngvUlRONHQ2V3FZ?=
 =?utf-8?B?a0V5UEJXOWM4cGhEK3JHcFJaVmI4WUNIOEhlSVBiWFZEVXlyOTI2aVZjdEM2?=
 =?utf-8?B?N3JkdEdYTS9MOTEzYzdMVEZaODB6aEhJVmY2UWdJRXVhR2xLZy9nY2xrUjha?=
 =?utf-8?B?QU1rd1RZNGRHdUphSjJ2TDhkdWorbjd2SDVHcnAzYzhmdXRSSS9MVGhXbUQ4?=
 =?utf-8?B?WW1rNVNWR1BVaFdYbmdvRDhwLzBzS3ZLWGNzZWdERERydFBpTHVkWnYyTENS?=
 =?utf-8?B?R29kazhiNGpYYldhRVcyNmx6dlIvaVZJdklWTVV2QitydnNOYXRyL1JRTTVM?=
 =?utf-8?B?Q2hWSVE1N20xOEQ4THM2N21BaTJ5RldwWFphS243a2dzWjdIWExLYWQ0Nk1l?=
 =?utf-8?B?ZEpZWFhVd3NDZmxldDYxMnRYV0cwWXdWMThqaERxZlJDeG90YkJwb1dHSzlL?=
 =?utf-8?B?SlA3ZHRRMFZIQm5taFo5Kzc2QnFmbFZrVXlvbVM0MGlhVDBEUm1LNjdNZGY0?=
 =?utf-8?B?aWFhU3lwYnhjSytjQTlJYkNaWncxNFk1TE9ZWEdNZTdkMDlPNVZjblVJYWVU?=
 =?utf-8?B?OTdtQXY3a0NDQkVVVE5ERlNYOWdpRnRMdjQwekh3clBZL2dHOUR0WHhyUjZX?=
 =?utf-8?B?OU1PenJ3My9NVGtocVdMenFpd0tiQnFaakdxSURsdER0dS83S2VzRWNmOHRB?=
 =?utf-8?B?bzdFZ2JHYTlDaGQ0SG5hS2xxRHlGc0VIcW1XRFNCNEQ4OXFnSmIra0JHYmg5?=
 =?utf-8?B?ZmxCdmg3bmUzMXBWRWVpMk1xM3dhem5qVmdualpTU1FTQWFXWnUzYmxaVWNl?=
 =?utf-8?B?Znh4ai8zMTQ5OW9ydzE0bDVPVHFDTFRLK3kyZUNraUNUZHVlTU5sbDREWVJ6?=
 =?utf-8?B?UGJ6NWxvK0pQbC9NMlhwMTM4N3NwYWJGSld3aGJtNXNlQVkxMnpCQ1lxUEkv?=
 =?utf-8?B?cHRUM2RQd05SVlJMblVtdkFVTlNBZXF1NGo2Vk9lVXlvaDlqdVEvbFpxd3Jv?=
 =?utf-8?B?eXJSOFNZVTFZQU5QcVp1cU9ReXJOV1luTG53YnJ6NFN5V0VRRU9FdUhaUktC?=
 =?utf-8?B?cmJ3MGZoTWh2RENodk5rK3V1K2wyY2pvVnZVYjB4SzZrU3lzazRrdEYzV2FQ?=
 =?utf-8?B?aUdOTitRZVlpejJZWWFlUGNHNkNUSDJac2UzcnRHL0hGOXh1S3ZwVURuM0xZ?=
 =?utf-8?B?Qjl5SDBkWU5QUDlxNWgwOWowL0Z3PT0=?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(376014)(7416014)(36860700013)(82310400026)(14060799003)(35042699022)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: QJRId4gh2u4J+D9cWFUT4pQdGiWMZG6EPXZM4IOxCgjPQiqkduDS2VRTjxbKPzWMiDXNysV2dzU0LURJlMKcpflbouJ8CqcOmtS1wD2CAQy2EAPXo7d5IgWl/s2vRk4VW3IT/W7eXDtwSznQXMxHNGpB9DAcfwS9bq1kVHwgzj8DJ0D//lNWYsfK5HxERAvr0ohK5W/kHL+uwj9zc4lA6Z8qFcuuD0MVeciV/9gM7oPG/jSyF3xHeXiC8gqlIKFM+6ehbxQ/t4mko17YazE3lHfO+rY8NfoUpuHNXBmpssC1PUEwyDqA50oSe8/EwRnpcu7yntZ+u7AhynLc5mWycpz4yNUVGOHCuERibA/JtKh/9DI8ty5RT1yN2BfohmjmGn3NaKx71Q/+Glz+es9sFD6qglzbN2GfpuMZcepji7u+yWVO7CpGNKaT2asvDhzm
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 12:43:59.5038
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e4f7a6e-5c4a-402a-47c0-08de72d9375c
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DU6PEPF0000B622.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_045926_726691_6DCD9CAB 
X-CRM114-Status: UNSURE (   4.33  )
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

Am 16.02.26 um 16:24 schrieb Andreas Kemnade:
> On Mon, 16 Feb 2026 11:29:14 +0200
> Vladimir Oltean <olteanv@gmail.com> wrote:
>
>> Hi Josua,
>>
>> On Mon, Feb 16, 2026 at 08:19:27AM +0000, Josua Mayer wrote:
>>>>> In the future, when you have a series with cross-tree dependencies,
>>>>> please try to think of it as individual mini-series for each tree's
>>>>> 'next' branch, and specify clearly that you need stable tags (to be
>>>>> pulled into other trees).  
>>> I don't really understand how I could split my series up to avoid this 
>>> issue.
>>>
>>> Due to the fact that one (and now two) drivers implemented local
>>> mux helpers, to undo that an atomic change must be made tree-wide.
>>>
>>> Meanwhile it must be avoided that while the mux core helpers are being
>>> tested / reviewed, that any tree adds another driver-local mux helper
>>> like appears to have happened here.
>>>
>>> Note that my patch-set did go to linux-phy@lists.infradead.org list, too.
>>>
>>> The second challenge for this series was that mux framework is being
>>> enabled only by drivers Kconfig "select" - and not possible by menuconfig.
>>> This is e.g. responsible for being unable to test =m build with arm64
>>> defconfig - and lead to it only being detected through kernel robot
>>> x86_64 allmodconfig.  
>> To avoid this, a combination of developer due diligence + maintainer due
>> diligence is probably required.
>>
>> From linux-phy perspective, there will be some automated build testing
>> (which did not exist at the time of your submission). This would have
>> caught the 'hidden' devm_mux_state_get_optional() call present only in
>> linux-phy/next, when testing patch 2/7.
Excellent!
>>
>> But, to work, the build automation needs to be able to apply the entire
>> patch set on linux-phy/next. So expect some pushback if it doesn't
>> (hence the recommendation to send a mini-series to linux-phy first, and
>> request a stable tag).
It would help immensely if there was a way to get the patches renaming
driver-local conflicting helper-functions very early, before anything else.

Would this sort of patch be acceptable in linux-next now, so it can make
it into v7.0-rc1?

If not then that mini-patchset would be the first one I shall submit after
v7.0-rc1 is released.

Then I can treat the actual implementation of the devm_mux_* helpers
as a second standalone patch-set.

And finally patching all drivers with local helpers to use the new global ones
can be patch-set number 3.

Any opinions on this?

> I do not think that is at all the duty of the patch submitter. I think as
> long as every dependencies and side effects are documented, it is IMHO up to the
> maintainers to decide how it can be merged best. They know best whether there
> is any danger of conflicts in their working tree because that is an area 
> where people are working on. Especially this patchset is around for months.
>
>  In MFD where it is
> more common practice to have cross-subsystem patchsets, once acks from
> everyone are there, MFD Maintainer creates an immutable branch with a tag.
> The maintainers of the affected subsystems pull it in. 
This seems like an option, if I can get the patch-set (or a partial one) ready early in the cycle.
>
> Regards,
> Andreas
>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
