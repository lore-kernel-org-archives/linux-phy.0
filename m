Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82973FC5926
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZR+gpo+ZDoFAROWlVy7ehqBXPEek/a6m12/hi1khnI0=; b=ZrX+UUFxCLTlAK
	9VTqDLd+iel5DSDJTsmdBDu8lcJLJ8FTWUZmzOF4wnuhHGyx5LudBPieRYHrTdEwNoxxjczbvR6Z8
	kPMgkeF+nsLmaNsFbIWL89svGX2PRWYydqKC605Yri61IeyGQxoH3qIDBgc11RsFohAB0sYP1WQjr
	iwYObnrg6lXDtaZ24EbRkCBGS9oVv8JrBIKM5paOXiqebpWR0MQvFZKHxMuKcgVWVT1+aJcVSaBIE
	+VCl7jWzj1lvXcBlAMaXPgPukavUxiPfjomqEVy+aD9w59gFcIvt89XpDFHafDO2Rat2iOA3/HKbW
	5UDauXEM4ukwQLgx+/nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYtX-00000005x0r-15jG;
	Thu, 26 Feb 2026 10:46:59 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYtU-00000005x09-2nqD
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 10:46:58 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=SqbAerMzGznv9nKQBP9pa9YA0+5DRQhjEX0eTaGORR8+zO3YUbvqRcZfuovQYZCo4r1NPPFw5ov+O4tWpQfB39HPFPaZ8nze6JixTSxSrAe+nKEIgpvUsqygS/IIDO1AYlOH/tYxcbhDTriXdfnYtAq4Ab7OM4wU1zvu3zhWKn5yj3Eg2LSZMgsxOZ1JEwlNL2lzycVHZsNA7g86BFtL+wbostuYepEPWdr6dQjZqNsLISTIeTJGIMgs5kkVj44tbBI2xZ5klUWkT6HeioZtjNnabO/+fxdeAFGtnLXR5QohZFHcrsVItNJeQ33nrOjxxQXIdxAiCN0+luydKo9E/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0pwG+159oC52uyGuGHgk3fpaLAmroqVjBj/1NuxMjTE=;
 b=LWT+o4bqV493GU5yoxDyn+gFAYS6+pdfF3wv0rqfvOM1dENq44+ZoMV5tGYaIZfONauuWHTP/4nftBXMOSyXd1NRI/K/uy51CZ9NEm/AJy4WHr8HuNdcf03TNYPavx6sE7nTfu3uyGjzKK5kzKHe/Iv3xvQLMHdQq3/RPZR7UaQNHK1U7WtL8sV+5r1H+B+BXYWkSm87JM7KpO1BY5MD/1DdxhJj4vV71jyIay+fAfBuO7jkAT2wxL8EGz/KVYpaLZJEjSr1+eqghyCkA0dzvIJtEs6vOS7/QjWEszFd09qsZzu/dsiWMcaCYV7m1sfhmt3bDT6V6i3F6gNJUfxPEw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0pwG+159oC52uyGuGHgk3fpaLAmroqVjBj/1NuxMjTE=;
 b=bYU3G+Z5xP3xoWMduw8agPDFkB2rDrMtjecWxTSNTtFA3cvBC5g64eQPb3PzQANJ95ED4SwB/fWFkie4UhVpnNoug2stnkCO0F7GhjJG1eN7/acoqmWXUWRK792UXUA1dLVByFOym2cbS1ExdvObn54bglMCBjYI8ybWr4qQMWA=
Received: from AS9PR06CA0630.eurprd06.prod.outlook.com (2603:10a6:20b:46e::22)
 by DU4PR04MB11385.eurprd04.prod.outlook.com (2603:10a6:10:5d8::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Thu, 26 Feb
 2026 10:46:53 +0000
Received: from AMS0EPF0000019B.eurprd05.prod.outlook.com
 (2603:10a6:20b:46e:cafe::87) by AS9PR06CA0630.outlook.office365.com
 (2603:10a6:20b:46e::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.25 via Frontend Transport; Thu,
 26 Feb 2026 10:46:44 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AMS0EPF0000019B.mail.protection.outlook.com (10.167.16.247) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Thu, 26 Feb 2026 10:46:52 +0000
Received: from emails-4974866-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-107.eu-west-1.compute.internal [10.20.5.107])
	by mta-outgoing-dlp-141-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 4F3C38076C;
	Thu, 26 Feb 2026 10:46:52 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Thu Feb 26 10:46:44 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HdYo0ZHlVe6HkxBwSar1wpS7l/oB9GKO1MGzx06p2jpKoo7woHLrLPPfAQQQzl8EKex/5VMjdJWwH5sh6VRMqlWHV0g64q79FhZAa4SKClwDQVzusRDo8/lz5kgEh89r+XSXQC6iD3gzUr41f7Cs0J0O9eiSrFfPrEMRLcPN+NpRuiuLoXSc+Qk0Q/ot766mcH6GtZI06L26q0SO8zAXxhz06bvfqULA/JV/sKPBc3XOBYKRFdznJWvGEgEF2hykUZRs5ZGoBT7QZUoggTO+WEsVdQ5+xLiGE9XIRTHGHU7BHxq6I1CLR/81ZphOwxYVMx3dYR1KcVxEzYr41EIrgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0pwG+159oC52uyGuGHgk3fpaLAmroqVjBj/1NuxMjTE=;
 b=P9iwuFsEKNP/rtgqfNWvXM0pag0CVEQwMgWm47h//w188QApqwZlvUgLCHu/nQUh2lioK2zkyn0gQjhmAQFPDpdfKOEa1cLkUfxfni8KS2QOG91qBHhDhLjeVioO1MEjmLqaH3g3qr6330s8SUpmdkT0CJJUr+OEkVPxO6bt1aPL41ffsZrQqVmwMeDPeNCN1i+RANMe2tiQKv2Nfmd1rBnGnYffyfCTgWzuaaMfCbwfwifop2XFmACgXEBveQ7dgo91Ie2zs2hW0o2rAKm0MCQy3R56uYHnMWnnC4wXmjr4KOMSOut+AG06UkyehvPOfODx41bu/2Q/tOaA25gVrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0pwG+159oC52uyGuGHgk3fpaLAmroqVjBj/1NuxMjTE=;
 b=bYU3G+Z5xP3xoWMduw8agPDFkB2rDrMtjecWxTSNTtFA3cvBC5g64eQPb3PzQANJ95ED4SwB/fWFkie4UhVpnNoug2stnkCO0F7GhjJG1eN7/acoqmWXUWRK792UXUA1dLVByFOym2cbS1ExdvObn54bglMCBjYI8ybWr4qQMWA=
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com (2603:10a6:20b:408::11)
 by VI2PR04MB10740.eurprd04.prod.outlook.com (2603:10a6:800:27a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Thu, 26 Feb
 2026 10:46:38 +0000
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a]) by AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a%4]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 10:46:38 +0000
From: Josua Mayer <josua@solid-run.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, Aaro Koskinen
	<aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman
	<khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony Lindgren
	<tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R
	<vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson
	<ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven
	<geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang
	<wsa+renesas@sang-engineering.com>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>
CC: Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton
	<jon@solid-run.com>, Vladimir Oltean <olteanv@gmail.com>, Mikhail Anikin
	<mikhail.anikin@solid-run.com>, "linux-can@vger.kernel.org"
	<linux-can@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-omap@vger.kernel.org"
	<linux-omap@vger.kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v10 3/9] mux: Add helper functions for getting optional
 and selected mux-state
Thread-Topic: [PATCH v10 3/9] mux: Add helper functions for getting optional
 and selected mux-state
Thread-Index: AQHcpkq4hCmln3ECsUqvD0K18X6bQrWUzcgA
Date: Thu, 26 Feb 2026 10:46:38 +0000
Message-ID: <ffbb6089-5608-4af8-b318-72fcf3af0224@solid-run.com>
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
 <20260225-rz-sdio-mux-v10-3-1ee44f2ea112@solid-run.com>
In-Reply-To: <20260225-rz-sdio-mux-v10-3-1ee44f2ea112@solid-run.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: AM9PR04MB8747:EE_|VI2PR04MB10740:EE_|AMS0EPF0000019B:EE_|DU4PR04MB11385:EE_
X-MS-Office365-Filtering-Correlation-Id: 05804191-3f11-4594-93c3-08de75245a48
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021;
X-Microsoft-Antispam-Message-Info-Original: OrGt1h74HsfHn80kcPd7+Gw1xKSCX82u0W2pY3OK1DoZq6ICedNaPhGQisCFc/vJH4jxedxEsbHb4xKoV4ZysuYWc4hg1Q5N4RWvISOID6bp+PsZQrtjki9Ph4sO6SrSE6bP1xLHDER1rHHzHLPhXhpIqkW9AwFNl3Aegd+ZvANBX4w6F4m3fCSABNRDfa3UCDakh55Ntl6mQmquoeARNZAhIXtNNFZ95fVSSxCBxCKE3Y+9F/HBJqPO2co8qkdbsuJwwTJmlf36wWq+o9y2OuQpfQqjOl6D2lucOcmnJ9NEvFlQzzpyictNw7WiesxMcHwZjTgKeTzd+etD8Q461/mUGasQMbQ2F9LIUWflZnnB+etfV4LWd9PxgH1kPBsjFuKihk5yH+UhWZ1AkEiV7eOWZCnRG3BuOIGkGhdD4fr+oCoPCL+EqZpI2ozuvoa9Rr3lD0wHvXpSQRVQ+BOVvcjg9FzHXylaZ8PRBlhGX3quPf7qi61ZbGtF34a21wkiCTMZ6XSix7LCf7zmWq+ZIHZRx7+9H/71NZI+bAmk8Jht+MNjZT3RbOCip10vpxrDpROK4MMKD99neqZsF6PTzUt9ui1eqZlf4KPKF3Id6Fxx5GtERWtcPEAsc953BoPUUOt2py4/MUdupoxxt0J9KB/FIG4Pyv+WlsvkU0nhvqZz0u6wO25oQYF7Ag+799ucxVuLlORRcuLPO7RoAguuL8PhexE3nNs7LJiQuwDqep/eQDUs57ofaz23oGXsKhU+hHZqFbT8RKXvNBTS3nRLJ/5kR+RsH+IEup0b0wRnb54AOina4ehmn+mrjAIapAMa
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8747.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <051977E1BB07534BBE208BD2DA57AF35@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10740
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 84b16bd1fce9464cbe213e63e99c02ec:solidrun,office365_emails,sent,inline:8989a1a0ef2b960aa6fa7fc0ff0ec37f
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AMS0EPF0000019B.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 497f1bce-ae39-40c2-77ec-08de752451f0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|35042699022|376014|82310400026|7416014|36860700013|14060799003|921020;
X-Microsoft-Antispam-Message-Info: kJofBDsFjHjrT7u1O1iTxlyi1yL/jovuZk6ssEiReCKjNE3S7BGcPGBN2e1BGco3W7I9r9rR3xq4hnQWw6ooHPaDDMwQyDgdeAyNh/snyetzqEGq2qL7ywPq4cb/7wHGCVsU6Syk7t/Nl3ggewpk8BO0mrQYs0OCbWQ2gUU9X4pMUnblxpkomVc+WhIOz4PFpweG/0xsd4nTqV/XgrJq/maiy+qcYLJg45G2/5NyKsA3UJhUCNElv55xXEsm9i9jLBfKZVsGwEsmrlsrV/7NqLOuLqLKyzMyfjtRSHudmrMtRQ0rfKjpjEUr9Afl/85uvvNwPXKzsL410TTR1NGrGYHrZsPqVr5smt6xCo5yGRd1APOqpN4leYcFAVC2hGna7BxNc4fDBdd4fleSzgdsHQZofUmAh5ufPD22Dtc6RAyZTpyCdCUc4c4jkYwNe/RBy13PhEKXX5xKhgz4/mnccODjBGlTqzuiuIQDihUUVMvxbIAqu6TQWxBubjaiNBw5DdIRUYm+iwYNEYMwcDCs2oMttL6v8Bw5vdBncMHeFp3szRYKi482VnVYzlAZhOPLDqHXN5NqMcLoLprOk4OLEMZpZBLkt5wPmhgqJAIEEGerwcngfQa/kaFi8Rmu6+ZI2MuMkjP92uZl+FeA3m6A6a3ks59FAZ7zjMYCEm5SiIyaIe+g5g/7HPo5HDkm2tZoW8pIn1ZvyQiP22e++2xP6HfYCoREDN7GU2bPvboVuJYsPFq07p4bYnDpcLTtyf2FY3dVimZ63Q2/fVOcwCvXZ64WlpxZQ2sE6Jgx3zPjYyb1CsOEEK458lUxhqrSTm0lYLjSZDaCe8IXyw+KKjdnANdS6dbgc5P90Y4E2jJ09JA=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(1800799024)(35042699022)(376014)(82310400026)(7416014)(36860700013)(14060799003)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 0Av8l1KPhRsK79xywBzxgZPymXGh1MPwWA04sU4YFTg5uysWYNduGQX1jsPsUdBb0HtfLK/Zv/wpwpNHNEqFxPgyzpZdOIb/O8nFToXynkHF3MuaYbvy850Mu/UDYydRAYl78ilyohJn7hESltvM/DZIXgg6ugr9M9RDnBikLQCIZ7u78a64NmE9SGccI1u2RTEpP2TZ0SjqAtEcBGgWM3nQCjQS5D+26udeNFk9SAC5/isMwRyrOEILCpvlASHaFZnf5KcaJmYdYu6ooe+QcR5R2zye9NXsouNSwu9KmuwWBVVGwPtNCWDOWhlTgA94WzhuJDxZTZkwHIxr/TRGnDg0zXt2ypTQGVcE2aP6/L5IcOClqINWHR66V/kanO/iAy8zUvz9YQ4+csngC55Gx9hm2Eq2Yk5dhmbaYijr1EdkhN6znCsXrnzVzohaDrkt
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 10:46:52.6136
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 05804191-3f11-4594-93c3-08de75245a48
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF0000019B.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB11385
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_024656_852755_68CE510B 
X-CRM114-Status: GOOD (  16.62  )
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


Am 25.02.26 um 12:34 schrieb Josua Mayer:
> In-tree phy-can-transceiver and phy_rcar_gen3_usb2 have already
> implemented local versions of devm_mux_state_get_optional.
>
> The omap-i2c driver gets and selects an optional mux in its probe
> function without using any helper.
>
> Add new helper functions covering both aforementioned use-cases:
>
> - mux_control_get_optional:
>   Get a mux-control if specified in dt, return NULL otherwise.
> - devm_mux_state_get_optional:
>   Get a mux-state if specified in dt, return NULL otherwise.
> - devm_mux_state_get_selected:
>   Get and select a mux-state specified in dt, return error otherwise.
> - devm_mux_state_get_optional_selected:
>   Get and select a mux-state if specified in dt, return error or NULL.
>
> Existing mux_get helper function is changed to take an extra argument
> indicating whether the mux is optional.
> In this case no error is printed, and NULL returned in case of ENOENT.
>
> Calling code is adapted to handle NULL return case, and to pass optional
> argument as required.
>
> To support automatic deselect for _selected helper, a new structure is
> created storing an exit pointer similar to clock core which is called on
> release.
>
> To facilitate code sharing between optional/mandatory/selected helpers,
> a new internal helper function is added to handle quiet (optional) and
> verbose (mandatory) errors, as well as storing the correct callback for
> devm release: __devm_mux_state_get
>
> Due to this structure devm_mux_state_get_*_selected can no longer print
> a useful error message when select fails. Instead callers should print
> errors where needed.
>
> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> property presence check") noted that "mux_get() always prints an error
> message in case of an error, including when the property is not present,
> confusing the user."
>
> The first error message covers the case that a mux name is not matched
> in dt. The second error message is based on of_parse_phandle_with_args
> return value.
>
> In optional case no error is printed and NULL is returned.
> This ensures that the new helper functions will not confuse the user
> either.
>
> With the addition of optional helper functions it became clear that
> drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
> Add stubs for all symbols exported by mux core.
>
> Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  drivers/mux/core.c           | 206 ++++++++++++++++++++++++++++++++++++-------
>  include/linux/mux/consumer.h | 108 ++++++++++++++++++++++-
>  2 files changed, 279 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
> index f09ee8782e3d..6033da0a9e17 100644
> --- a/drivers/mux/core.c
> +++ b/drivers/mux/core.c
> @@ -46,6 +46,16 @@ static const struct class mux_class = {
>  	.name = "mux",
>  };
>  
> +/**
> + * struct devm_mux_state_state -	Tracks managed resources for mux-state objects.
> + * @mstate:				Pointer to a mux state.
> + * @exit:				An optional callback to execute before free.
> + */
> +struct devm_mux_state_state {
> +	struct mux_state *mstate;
> +	int (*exit)(struct mux_state *mstate);
> +};
> +
>  static DEFINE_IDA(mux_ida);
>  
>  static int __init mux_init(void)
> @@ -516,17 +526,19 @@ static struct mux_chip *of_find_mux_chip_by_node(struct device_node *np)
>  	return dev ? to_mux_chip(dev) : NULL;
>  }
>  
> -/*
> +/**
>   * mux_get() - Get the mux-control for a device.
>   * @dev: The device that needs a mux-control.
>   * @mux_name: The name identifying the mux-control.
>   * @state: Pointer to where the requested state is returned, or NULL when
>   *         the required multiplexer states are handled by other means.
> + * @optional: Whether to return NULL and silence errors when mux doesn't exist.
>   *
> - * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
> + * Return: Pointer to the mux-control on success, an ERR_PTR with a negative errno on error,
> + * or NULL if optional is true and mux doesn't exist.
>   */
>  static struct mux_control *mux_get(struct device *dev, const char *mux_name,
> -				   unsigned int *state)
> +				   unsigned int *state, bool optional)
>  {
>  	struct device_node *np = dev->of_node;
>  	struct of_phandle_args args;
> @@ -542,7 +554,9 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>  		else
>  			index = of_property_match_string(np, "mux-control-names",
>  							 mux_name);
> -		if (index < 0) {
> +		if (index < 0 && optional) {
> +			return NULL;
> +		} else if (index < 0) {
>  			dev_err(dev, "mux controller '%s' not found\n",
>  				mux_name);
>  			return ERR_PTR(index);
> @@ -558,8 +572,12 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>  						 "mux-controls", "#mux-control-cells",
>  						 index, &args);
>  	if (ret) {
> +		if (optional && ret == -ENOENT)
> +			return NULL;
> +
>  		dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
> -			np, state ? "state" : "control", mux_name ?: "", index);
> +			np, state ? "state" : "control",
> +			mux_name ?: "", index);
>  		return ERR_PTR(ret);
>  	}
>  
> @@ -617,10 +635,29 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>   */
>  struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
>  {
> -	return mux_get(dev, mux_name, NULL);
> +	struct mux_control *mux = mux_get(dev, mux_name, NULL, false);
> +
> +	if (!mux)
> +		return ERR_PTR(-ENOENT);
> +
> +	return mux;
>  }
>  EXPORT_SYMBOL_GPL(mux_control_get);
>  
> +/**
> + * mux_control_get_optional() - Get the optional mux-control for a device.
> + * @dev: The device that needs a mux-control.
> + * @mux_name: The name identifying the mux-control.
> + *
> + * Return: Pointer to the mux-state on success, an ERR_PTR with a negative errno on error,
> + * or NULL if mux doesn't exist.
> + */
> +struct mux_control *mux_control_get_optional(struct device *dev, const char *mux_name)
> +{
> +	return mux_get(dev, mux_name, NULL, true);
> +}
> +EXPORT_SYMBOL_GPL(mux_control_get_optional);
> +
>  /**
>   * mux_control_put() - Put away the mux-control for good.
>   * @mux: The mux-control to put away.
> @@ -657,10 +694,13 @@ struct mux_control *devm_mux_control_get(struct device *dev,
>  	if (!ptr)
>  		return ERR_PTR(-ENOMEM);
>  
> -	mux = mux_control_get(dev, mux_name);
> +	mux = mux_get(dev, mux_name, NULL, false);
>  	if (IS_ERR(mux)) {
>  		devres_free(ptr);
>  		return mux;
> +	} else if (!mux) {
> +		devres_free(ptr);
> +		return ERR_PTR(-ENOENT);
>  	}
>  
>  	*ptr = mux;
> @@ -670,14 +710,16 @@ struct mux_control *devm_mux_control_get(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_mux_control_get);
>  
> -/*
> +/**
>   * mux_state_get() - Get the mux-state for a device.
>   * @dev: The device that needs a mux-state.
>   * @mux_name: The name identifying the mux-state.
> + * @optional: Whether to return NULL and silence errors when mux doesn't exist.
>   *
> - * Return: A pointer to the mux-state, or an ERR_PTR with a negative errno.
> + * Return: Pointer to the mux-state on success, an ERR_PTR with a negative errno on error,
> + * or NULL if optional is true and mux doesn't exist.
>   */
> -static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
> +static struct mux_state *mux_state_get(struct device *dev, const char *mux_name, bool optional)
>  {
>  	struct mux_state *mstate;
>  
> @@ -685,12 +727,16 @@ static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
>  	if (!mstate)
>  		return ERR_PTR(-ENOMEM);
>  
> -	mstate->mux = mux_get(dev, mux_name, &mstate->state);
> +	mstate->mux = mux_get(dev, mux_name, &mstate->state, optional);
>  	if (IS_ERR(mstate->mux)) {
> -		int err = PTR_ERR(mstate->mux);
> -
>  		kfree(mstate);
> -		return ERR_PTR(err);
> +		return ERR_CAST(mstate->mux);
kernel robot found a use-after-free here which I will resolve for v11.
> +	} else if (optional && !mstate->mux) {
> +		kfree(mstate);
> +		return NULL;
> +	} else if (!mstate->mux) {
> +		kfree(mstate);
> +		return ERR_PTR(-ENOENT);
>  	}
>  
>  	return mstate;
> @@ -710,9 +756,66 @@ static void mux_state_put(struct mux_state *mstate)
>  
>  static void devm_mux_state_release(struct device *dev, void *res)
>  {
> -	struct mux_state *mstate = *(struct mux_state **)res;
> +	struct devm_mux_state_state *devm_state = res;
>  
> +	if (devm_state->exit)
> +		devm_state->exit(devm_state->mstate);
> +
> +	mux_state_put(devm_state->mstate);
> +}
> +
> +/**
> + * __devm_mux_state_get() - Get the optional mux-state for a device,
> + *			    with resource management.
> + * @dev: The device that needs a mux-state.
> + * @mux_name: The name identifying the mux-state.
> + * @optional: Whether to return NULL and silence errors when mux doesn't exist.
> + * @init: Optional function pointer for mux-state object initialisation.
> + * @exit: Optional function pointer for mux-state object cleanup on release.
> + *
> + * Return: Pointer to the mux-state on success, an ERR_PTR with a negative errno on error,
> + * or NULL if optional is true and mux doesn't exist.
> + */
> +static struct mux_state *__devm_mux_state_get(struct device *dev, const char *mux_name,
> +					      bool optional,
> +					      int (*init)(struct mux_state *mstate),
> +					      int (*exit)(struct mux_state *mstate))
> +{
> +	struct devm_mux_state_state *devm_state;
> +	struct mux_state *mstate;
> +	int ret;
> +
> +	mstate = mux_state_get(dev, mux_name, optional);
> +	if (IS_ERR(mstate))
> +		return ERR_CAST(mstate);
> +	else if (optional && !mstate)
> +		return NULL;
> +	else if (!mstate)
> +		return ERR_PTR(-ENOENT);
> +
> +	devm_state = devres_alloc(devm_mux_state_release, sizeof(*devm_state), GFP_KERNEL);
> +	if (!devm_state) {
> +		ret = -ENOMEM;
> +		goto err_devres_alloc;
> +	}
> +
> +	if (init) {
> +		ret = init(mstate);
> +		if (ret)
> +			goto err_mux_state_init;
> +	}
> +
> +	devm_state->mstate = mstate;
> +	devm_state->exit = exit;
> +	devres_add(dev, devm_state);
> +
> +	return mstate;
> +
> +err_mux_state_init:
> +	devres_free(devm_state);
> +err_devres_alloc:
>  	mux_state_put(mstate);
> +	return ERR_PTR(ret);
>  }
>  
>  /**
> @@ -722,28 +825,69 @@ static void devm_mux_state_release(struct device *dev, void *res)
>   * @mux_name: The name identifying the mux-control.
>   *
>   * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
> + *
> + * The mux-state will automatically be freed on release.
>   */
> -struct mux_state *devm_mux_state_get(struct device *dev,
> -				     const char *mux_name)
> +struct mux_state *devm_mux_state_get(struct device *dev, const char *mux_name)
>  {
> -	struct mux_state **ptr, *mstate;
> -
> -	ptr = devres_alloc(devm_mux_state_release, sizeof(*ptr), GFP_KERNEL);
> -	if (!ptr)
> -		return ERR_PTR(-ENOMEM);
> +	return __devm_mux_state_get(dev, mux_name, false, NULL, NULL);
> +}
> +EXPORT_SYMBOL_GPL(devm_mux_state_get);
>  
> -	mstate = mux_state_get(dev, mux_name);
> -	if (IS_ERR(mstate)) {
> -		devres_free(ptr);
> -		return mstate;
> -	}
> +/**
> + * devm_mux_state_get_optional() - Get the optional mux-state for a device,
> + *				   with resource management.
> + * @dev: The device that needs a mux-state.
> + * @mux_name: The name identifying the mux-state.
> + *
> + * Return: Pointer to the mux-state on success, an ERR_PTR with a negative errno on error,
> + * or NULL if mux doesn't exist.
> + *
> + * The mux-state will automatically be freed on release.
> + */
> +struct mux_state *devm_mux_state_get_optional(struct device *dev, const char *mux_name)
> +{
> +	return __devm_mux_state_get(dev, mux_name, true, NULL, NULL);
> +}
> +EXPORT_SYMBOL_GPL(devm_mux_state_get_optional);
>  
> -	*ptr = mstate;
> -	devres_add(dev, ptr);
> +/**
> + * devm_mux_state_get_selected() - Get the mux-state for a device, with
> + *				   resource management.
> + * @dev: The device that needs a mux-state.
> + * @mux_name: The name identifying the mux-state.
> + *
> + * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
> + *
> + * The returned mux-state (if valid) is already selected.
> + *
> + * The mux-state will automatically be deselected and freed on release.
> + */
> +struct mux_state *devm_mux_state_get_selected(struct device *dev, const char *mux_name)
> +{
> +	return __devm_mux_state_get(dev, mux_name, false, mux_state_select, mux_state_deselect);
> +}
> +EXPORT_SYMBOL_GPL(devm_mux_state_get_selected);
>  
> -	return mstate;
> +/**
> + * devm_mux_state_get_optional_selected() - Get the optional mux-state for
> + *					    a device, with resource management.
> + * @dev: The device that needs a mux-state.
> + * @mux_name: The name identifying the mux-state.
> + *
> + * Return: Pointer to the mux-state on success, an ERR_PTR with a negative errno on error,
> + * or NULL if mux doesn't exist.
> + *
> + * The returned mux-state (if valid) is already selected.
> + *
> + * The mux-state will automatically be deselected and freed on release.
> + */
> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
> +						       const char *mux_name)
> +{
> +	return __devm_mux_state_get(dev, mux_name, true, mux_state_select, mux_state_deselect);
>  }
> -EXPORT_SYMBOL_GPL(devm_mux_state_get);
> +EXPORT_SYMBOL_GPL(devm_mux_state_get_optional_selected);
>  
>  /*
>   * Using subsys_initcall instead of module_init here to try to ensure - for
> diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
> index 2e25c838f831..a961861a503b 100644
> --- a/include/linux/mux/consumer.h
> +++ b/include/linux/mux/consumer.h
> @@ -16,6 +16,8 @@ struct device;
>  struct mux_control;
>  struct mux_state;
>  
> +#if IS_ENABLED(CONFIG_MULTIPLEXER)
> +
>  unsigned int mux_control_states(struct mux_control *mux);
>  int __must_check mux_control_select_delay(struct mux_control *mux,
>  					  unsigned int state,
> @@ -54,11 +56,109 @@ int mux_control_deselect(struct mux_control *mux);
>  int mux_state_deselect(struct mux_state *mstate);
>  
>  struct mux_control *mux_control_get(struct device *dev, const char *mux_name);
> +struct mux_control *mux_control_get_optional(struct device *dev, const char *mux_name);
>  void mux_control_put(struct mux_control *mux);
>  
> -struct mux_control *devm_mux_control_get(struct device *dev,
> -					 const char *mux_name);
> -struct mux_state *devm_mux_state_get(struct device *dev,
> -				     const char *mux_name);
> +struct mux_control *devm_mux_control_get(struct device *dev, const char *mux_name);
> +struct mux_state *devm_mux_state_get(struct device *dev, const char *mux_name);
> +struct mux_state *devm_mux_state_get_optional(struct device *dev, const char *mux_name);
> +struct mux_state *devm_mux_state_get_selected(struct device *dev, const char *mux_name);
> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev, const char *mux_name);
> +
> +#else
> +
> +static inline unsigned int mux_control_states(struct mux_control *mux)
> +{
> +	return 0;
> +}
> +static inline int __must_check mux_control_select_delay(struct mux_control *mux,
> +							unsigned int state, unsigned int delay_us)
> +{
> +	return -EOPNOTSUPP;
> +}
> +static inline int __must_check mux_state_select_delay(struct mux_state *mstate,
> +						      unsigned int delay_us)
> +{
> +	return -EOPNOTSUPP;
> +}
> +static inline int __must_check mux_control_try_select_delay(struct mux_control *mux,
> +							    unsigned int state,
> +							    unsigned int delay_us)
> +{
> +	return -EOPNOTSUPP;
> +}
> +static inline int __must_check mux_state_try_select_delay(struct mux_state *mstate,
> +							  unsigned int delay_us)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int __must_check mux_control_select(struct mux_control *mux,
> +						  unsigned int state)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int __must_check mux_state_select(struct mux_state *mstate)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int __must_check mux_control_try_select(struct mux_control *mux,
> +						      unsigned int state)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int __must_check mux_state_try_select(struct mux_state *mstate)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int mux_control_deselect(struct mux_control *mux)
> +{
> +	return -EOPNOTSUPP;
> +}
> +static inline int mux_state_deselect(struct mux_state *mstate)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
> +{
> +	return ERR_PTR(-EOPNOTSUPP);
> +}
> +static inline struct mux_control *mux_control_get_optional(struct device *dev,
> +							   const char *mux_name)
> +{
> +	return NULL;
> +}
> +static inline void mux_control_put(struct mux_control *mux) {}
> +
> +static inline struct mux_control *devm_mux_control_get(struct device *dev, const char *mux_name)
> +{
> +	return ERR_PTR(-EOPNOTSUPP);
> +}
> +static inline struct mux_state *devm_mux_state_get(struct device *dev, const char *mux_name)
> +{
> +	return ERR_PTR(-EOPNOTSUPP);
> +}
> +static inline struct mux_state *devm_mux_state_get_optional(struct device *dev,
> +							    const char *mux_name)
> +{
> +	return NULL;
> +}
> +static inline struct mux_state *devm_mux_state_get_selected(struct device *dev,
> +							    const char *mux_name)
> +{
> +	return ERR_PTR(-EOPNOTSUPP);
> +}
> +static inline struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
> +								     const char *mux_name)
> +{
> +	return NULL;
> +}
> +
> +#endif /* CONFIG_MULTIPLEXER */
>  
>  #endif /* _LINUX_MUX_CONSUMER_H */
>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
