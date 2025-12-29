Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF17E9272A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 14:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PG39jx3xVzmTvFKH5h82bIeM9cq29v8sSNzYlU8I5Qg=; b=OMpUkCECPvjkHIEF/7y7L/0xz/
	jLFGB/iY6Knim+qkmffAaZNWTbpeoR7vsp6wqU/T9Z5FCLEloJRG7jxU6OZr/yEP2/++Xe/fW+uH6
	bEf2t3fWCKlZfxCuQD4UZDBvRiRhaT62PELuWOK2ilWHk8rDpIju+EYaFyf6oK44/OgGFAC62itZe
	24wRg2AypFrbkguuVF62bKCwCLG7IhfJlHipktMsgq9u6Q6UkgvqmwcYk0fjF2qNrWZ7Ojca2DGZV
	Q4rjZnp4cfff3ePnISjOHdOp71n2Sh14qzFulLxxbBHAlDi0yc1nYuR5Xy5ZPTdxb2tFNUFok3Ppq
	kTDlGErQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaEEC-00000003mZh-10tz;
	Mon, 29 Dec 2025 14:28:08 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaEEA-00000003mY0-1t3A
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 14:28:07 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=xRt+rMcG3hrjnTaYXhlCM3DthTPREVMfdBJ8r8py/RCms9x+/hFwPAIB1g4tLxprG8spMVZe1Egr2IYqz1tVjes6cb9ENMJGxGJunvRoj257tgL78Nxy2dFQZ5S9U7FNGy3em0vEo7nEQwSpvJHXvYziaOilvOhNLonq5g4gGCvkb1kkvd9euKGdORcv4GGlTD0GyiKmgqzm4i8wLTHKJIfngvsAlmZD3ETeqFt6ZywbQNvY9QVDDTryDkapCrf3Q7kE8LO1Awi/n8M3JZoFCg/k1Ab8W1cDV55piNuHqjUd666z09Mb4VHSxu9HWJaqYhqKVhRNw9H23OT/lzD26w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9AAuWmpq0f12820kqaoUBSmEEGNtdrVUgaK+Q/Ce7Ww=;
 b=upPoqdQQAFV1TN7RY3i83GcW1sQNtCmPXOecvcoRKBxxV5TKoV9WqBRvFxSYkyoZNcT2Vz1202CzndBRcMl3nLGYAD2VgwvIAleJ5pqKSNFwRRo6e3zhRCW7S6ApjCIJCqGncLj9DhoAPo6b3rRcBA4QOwO9cPJ/gcPL9CmNhQLXKjbP2ytYqAX7CcuVFvE6pkfrHi0J2IDTRLPvjwelnDFBu5nIIDMGs5wQdVtOXBITtlRAATPPzHSbAdH4tc45UjLb0BZBcq542g2BsW6g+ptq4KujyCC4RPVtOBanxYkezrSZ0bQouBGk4l5P3n4NzVlGWmZgu2GdQ49ZL9FNnw==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9AAuWmpq0f12820kqaoUBSmEEGNtdrVUgaK+Q/Ce7Ww=;
 b=hDZYEYhzp03LeGaCBPQzOArlEeVPkOzreNbP+DDG1rgAY8EhYRpZL0//vCVIMPw84iY5qq1G7Znn5Lj3Vq9zLw1JQQXjoaOEuu9pIkpI+3Pf3TdgG4VLIM8EfXEheqyVN+YpGIx0rDgM0/D/guCwzW+FNv6pn2JpoJ5fNPq88Fs=
Received: from AM8P190CA0022.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:219::27)
 by GV1PR04MB10195.eurprd04.prod.outlook.com (2603:10a6:150:1a8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Mon, 29 Dec
 2025 14:27:59 +0000
Received: from AM2PEPF0001C70A.eurprd05.prod.outlook.com
 (2603:10a6:20b:219:cafe::ad) by AM8P190CA0022.outlook.office365.com
 (2603:10a6:20b:219::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.14 via Frontend Transport; Mon,
 29 Dec 2025 14:27:59 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM2PEPF0001C70A.mail.protection.outlook.com (10.167.16.198) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4
 via Frontend Transport; Mon, 29 Dec 2025 14:27:59 +0000
Received: from emails-4196750-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-157.eu-west-1.compute.internal [10.20.5.157])
	by mta-outgoing-dlp-834-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 0220180426;
	Mon, 29 Dec 2025 14:27:59 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1767018478; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=9AAuWmpq0f12820kqaoUBSmEEGNtdrVUgaK+Q/Ce7Ww=;
 b=ZoKsxCPbk0FwFWOj4lU3ltMWn/w7bFwl8lGNvVLID7IuWnbflHVrw6NzC0gKg8JTG/rhl
 A2Bbe24WovpmjckFya+DhaIxFB4WmV8OvamC/sM9gy2uf+Qrj289f2fiorkfraZM+tBR62d
 LRomt8JpVbZ6BtgpPGOjR7UHXT+W8rk=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1767018478;
 b=HQhMsCasIfRJsbWZycIHfxybtKWYuAS5bmrHNE3wtyUka0Nt++gnE9D4WttnKsA7vQTzA
 vmpr8CzKKdRN0ttqty93QA27eOBx3yI6Clep9ANkofn49dGFNDhS9gVk1kn+HTiqPOPEFxR
 nuGWElQSqFjVBuSPvF4ul+w/D02ccCw=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vruiTnMSQ9VZOEDx15H+gQy9LreTWEBNoY7pzmKYPTS3iIAoPJk4TNs8Goo/Ryi8U4u/fbltUpiaagUQX2HJ+WLipnEHsKbp9ii2OhlzuiaJRtSfVCGrv99aKl5PAUs+IT7REK0ef51AXKNb7IMDWsoL23N8TA3txtEFwLPT+dVC8/4Q4wF2o1/dqNN1arijvnB7khUuxDSD4a4u7yMpZqicfkIfh52VDegDdQstaFxIBZFOXNxhKzKjuoQNhne/ZykQtaOhJBueMT3BR0TY7XzprIRsgKzg3K1iBgjrKxnCBlAEuThYLplbtT9go4ZXqtBMpZl+rIlIBpTYIPeWAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9AAuWmpq0f12820kqaoUBSmEEGNtdrVUgaK+Q/Ce7Ww=;
 b=aw0dRo9Zd4tv4NtH1QnY2CLO250ciMr+h+DD4gZ4yeT7al0/7752J6+w0VJIWFjWb5Xg4Q2aMlTUizWoiE4pqM0jihF/aR4Wz0D6e3pgnPRQYa18hpv4/3+1xayIL1zW/Ldo4SpmNgiEPHpp6aPNYjLPOMTR1mQRssNiBosxpEdmtMFnKRVwvRmPrBgP2Lu+6QWDkPPpMaB0qry3OSaYzHi6ngEtKYBDQOIIyV5HiaRUFqaN6pxIRKD7ovxZ5ciPPw7wA1LzhqdrdvqwOcfmIeVPBJpstmM3hvjEatMp6VUjGKBcTSADa4LbNoUA8KJzz9oAorMMqAq0fnPodkQzWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9AAuWmpq0f12820kqaoUBSmEEGNtdrVUgaK+Q/Ce7Ww=;
 b=hDZYEYhzp03LeGaCBPQzOArlEeVPkOzreNbP+DDG1rgAY8EhYRpZL0//vCVIMPw84iY5qq1G7Znn5Lj3Vq9zLw1JQQXjoaOEuu9pIkpI+3Pf3TdgG4VLIM8EfXEheqyVN+YpGIx0rDgM0/D/guCwzW+FNv6pn2JpoJ5fNPq88Fs=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 14:27:45 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 14:27:44 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Mon, 29 Dec 2025 15:27:30 +0100
Subject: [PATCH v4 6/7] dt-bindings: mmc: renesas,sdhi: Add mux-states
 property
Message-Id: <20251229-rz-sdio-mux-v4-6-a023e55758fe@solid-run.com>
References: <20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com>
In-Reply-To: <20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Vignesh R <vigneshr@ti.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Mikhail Anikin <mikhail.anikin@solid-run.com>,
 Yazan Shhady <yazan.shhady@solid-run.com>,
 Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: FR4P281CA0096.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::10) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: PAXPR04MB8749:EE_|DU0PR04MB9417:EE_|AM2PEPF0001C70A:EE_|GV1PR04MB10195:EE_
X-MS-Office365-Filtering-Correlation-Id: d6c1c5b2-796c-441b-33b9-08de46e6777f
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|52116014|366016|7416014|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?U0ZjMDRCS3NMZHhHL0IvSXAzTEVtNkIrbkVhdFYvT2JneXhuVjY0Z2pYTE9h?=
 =?utf-8?B?a1piR0RBa2pNRUI5VE1aTVNpcHF1MlpCZm1VSndTZXlrVDZleEgxUDdVeFl4?=
 =?utf-8?B?WGZJSDBUbmtmeTRyK1J4eFNhOHNYQWllbXEvekRnL1ErUWdNeGJtSzJYNXBR?=
 =?utf-8?B?NFJXMG1PTUp5Z1FjR3pscXJ0SzRFWnJMUjFzVUpWbUg1VGJydEw2WHQ2dUhk?=
 =?utf-8?B?UTN6cDFIZXZuTDlpV3RKZHh1S2Fvc2c5VHlxRWVVeUlYbUtSK0NGb0F2aE12?=
 =?utf-8?B?eTZYNWlUZlNzVElMOWdiSkV1YnR3S1NBR1Q2cDRwbFBQZm90TzlWcDFtT0J3?=
 =?utf-8?B?T0UyZjFRVzk1QlhZZkZsTWJsTE85MjJyUnNiSjhYWFZ4VHhHSmJsdldxK3Fw?=
 =?utf-8?B?UWpRc21zSm5CMWMyZzltRXk0L3VGTDg4UjFXeHZpVXA5WWZ2NHI3T2ZFL1Ru?=
 =?utf-8?B?ZzJmTzBFSnNCUkYwbXRhV2xhZGV2QmdFTjdQSTRGZ3hRVGhmeXFveUJhaWtG?=
 =?utf-8?B?d25MOEFJMTJubVM0RGYzcjJMcmlEV3d4Z09PbDRrNHcyeTZYMU1CRkJTN0JL?=
 =?utf-8?B?MitydG96clkyakNBblVyVXFVc1RpaDJZNk1ZZUFkNkZjbEk0UWcyaER5UExq?=
 =?utf-8?B?UkhmYWtNdWxQN3dCMWRGbFVTUTUrdzd5cXEyNDVMQnlwbUpITTQ2cG5FVUF6?=
 =?utf-8?B?UTgwYVY4aFZkd1I5QVZhOTBLZFFrc1J3Ym5ieDBlcWN5RUVzeWljaG9zMVJE?=
 =?utf-8?B?M0lwTnVzMGI4SEJQVFU5dzc2cjlvVklNLzlnVk4vTHFqbnVzNVMxNUJrdjAz?=
 =?utf-8?B?NFZxa0h0bkM2N1RhaFUrcUFFM1AzVkYyOFBXNEdSSlhtSDhwMUNRVS9WTmZh?=
 =?utf-8?B?aEVabnZhUWlEa0RyeWxrM29mbktscENzN0kydWJqZytZKzNsV2s5STJ4L2wr?=
 =?utf-8?B?WmFMd1cxUjhCMDNRWWxRYWw0QzlTdnZoZGRrVmxZa1dHcWZncGttQi9wcnJU?=
 =?utf-8?B?dm1zLzhCWG9qL2lWS1NXOVNMRkpjTXR6aU40eSs4UWtUVXRaQTFseVlvV2xp?=
 =?utf-8?B?aDBmeUhIQWMxbWhxMVpicUk4MFJxc2N4K1RHbGhMcTN6SHF5RmNoc25RcmM0?=
 =?utf-8?B?OHlSbUluT2NIQWU3eVA2aE94cDExQ1FENW1HaDl1SVJvOFY4YWIxb21zVStq?=
 =?utf-8?B?K2ZzcGFHbEY3ZWtVYVQ1bmttbUg4emZ0VmNKMW5FZ0VQVk9LZmg5a3BGQ09D?=
 =?utf-8?B?dVRGUzlya2s0aWQ5SFhJYnRsa1orVk8vd1Y5bUZ5ZWhuSXZEYnI2QXNWYWpp?=
 =?utf-8?B?bkRkR3ZIQ1dPMGFGcEU2Rzg1R20rVTE5QU1icWVYeVZENnpxNCt6Zjg3Z2U5?=
 =?utf-8?B?RHpZZ1ovQjJlZUM3L2dKUTRWRlFSa0VZM3kybXczOWNrRE9ydE9wWGk3MHZx?=
 =?utf-8?B?alpubW1MMXhyWmRYNElXZ0JpSUNrQndLVldQeG1lY1lFcTc2SkZqNFRpYkNG?=
 =?utf-8?B?ZlhoeEJMS3Q3SHF5ZzcrRlM1aUY5TjV1N0U1MUpEbXRVZ3o4LzRTM2RxYjJl?=
 =?utf-8?B?MjdsV25RSmpSYXNoMVpCRWJLNzl6ZlplNXdiZ05LQ3BoZXNkK1pSQmRZanBB?=
 =?utf-8?B?SVR2UlV1OEtpLytMWGtwS1gzTmZDYkN1b0hnZWo3cWxFa1NLR3QyZSswMFVk?=
 =?utf-8?B?elYrczlNQ202Y09nR0pLejIwOEg2REJXOVl4L0d0c0tZZzZnY0kxOS9GdXZF?=
 =?utf-8?B?R25DbUFUYnJiMG9YcWFEU2NhMkJEdmlSbWo5bDFPbTZJdk80d3FmSnRaTERk?=
 =?utf-8?B?UG5QMDdLQkR0MWhNcjhMSnlvTWRuTGxiaUNJcHBJMzJkQ1EzaEw0MndrMjFI?=
 =?utf-8?B?cHZ1ZzJsN1Q1K1VvTUViWXFWdE5BM2FsY3A0TVpGVWRLczNvR29FczRQTmdz?=
 =?utf-8?B?VWVhME9nL3Rwa0FRc3dWQXIvV0ZabE9Sdm03NjMyN2RmMVhZMGpXdWFMOXhE?=
 =?utf-8?B?VWdUQ01ORUdFUTRhOG5lN2VjMUxBeG5DeE80OVM0TlBIRmRmVy93Z2xhb0dj?=
 =?utf-8?B?ekl0S010QVdUZVo1bWkzcXNBZlhDbHhCdmJKQT09?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(366016)(7416014)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9417
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 5582d792e53044bdb2afb48ef6519ca5:solidrun,office365_emails,sent,inline:645ecd6cca06b82d0b30cc7ad8f78726
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM2PEPF0001C70A.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: a07d94d7-18de-4298-482e-08de46e66eb1
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|376014|7416014|82310400026|1800799024|35042699022|14060799003|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2VhbnpZZEpuYWt1ZEpVcFRsUkkxRU1Wc2NrSlVuRTdOVWRBTlF4ZVlsSVk4?=
 =?utf-8?B?ZlBob0JpWjV4TGtiUjgvcFhISUIxMC9UWllDYndrcGxSR2tyaVRKdi96aFg2?=
 =?utf-8?B?S0lpY05YaGNoUHlhN3A4L3RWbGFabGR4L1VUUklBN004a0FOcy9zYjNJbFUz?=
 =?utf-8?B?NlIzUTJDRmF1dW9yYnNlU3krVmpjWDUrM0hUaW5wc2d5ZHVXd0FCSGwxWm95?=
 =?utf-8?B?cXV2VklhdFNOY0s5eWdKQmc3MnJIbGR6b2xWK25nZytFZFZ6dGY1b0xiQUxF?=
 =?utf-8?B?Wm1TbTUwNFRKaEZvZG5NR2FBLzNhZ1BXZ3FiZmFBS2JPeFk3dUpaZHV6WlZJ?=
 =?utf-8?B?K3ZPdm81emNHZzNhQk9oZkp1ZEVUQlROdzJNYXBJcEpHWElCcGFKVC9ONGNy?=
 =?utf-8?B?WW5jamxzSkcyS1IvaFdQQTdiK1JIZGpaVkY5cUJnc05pemJmeTlHNnIwcWkz?=
 =?utf-8?B?ZDdwTENlKy9zdkFTaFBZaStBRTJ3Z2Q3eUNHcTByajlTQmp3ODNJSTZCbFdV?=
 =?utf-8?B?Qk5zTVBXalJ0R2I3eUVOZVZqSWdXOUVURjAyMlRNOU5FNlQxb2xCWVFtVXQw?=
 =?utf-8?B?Y1pjS2gzcElLeWkxY25VdW5rblRhNFNsT0ZnTmgvbW1QbjlQVWtRanQ4TDNX?=
 =?utf-8?B?TTVkdUtCcURINm04QmlUS2JhUkZFckJ3WTJ4TmpYNlNxOWVrc29qTEpoVWEx?=
 =?utf-8?B?M0RYWjJvdkdxRUcrdnZUbTFpa3pWRE82cVVFam5JbTl4cjFmY0hQRW4wM1J6?=
 =?utf-8?B?R0diTlFTeXBMWWpqRkNDS2c5RzVJbHd1Y3BXWlNrazNiNlFjSlVUMnVKR29D?=
 =?utf-8?B?Um5GUFNyNXJ1RkhZODJ1NXBuUGU5amVVL2FMZWgrY1lNczY5MUVLVzYybURG?=
 =?utf-8?B?a2o1bzN6WUVteEdlMDJFWCswTVlZbjliRUtjSTM5VlBodUF1RFo2VkdCUVlH?=
 =?utf-8?B?aTZ2L3lwSWRuUVpIZUhVczZYUXNJVWtvcGlpOWorcnR6blRwMmxUK3E3ZCt4?=
 =?utf-8?B?QnI4NmU0TGpzVk9vNzY5dFpzRUx2aHo1RExrR3FxWlVTaFBhNFN0Sk5JS2Zz?=
 =?utf-8?B?ellwRmlyRHZ4bEswR25nZ1Y5NzI5SXlFL3phSHdwMzF2Zlo2clg0bGlGa2Vm?=
 =?utf-8?B?ZjUyclBHMjlPa2t6aW0zUUVSaEVSS3BHb1dNZitqTEtFN3FjK3Q2QU54aGVs?=
 =?utf-8?B?MktKS1UwODFvZHYrZXlzai8zYVM4ZmZERm9DYkVueVBtM3ZWc3R3OVloTmRC?=
 =?utf-8?B?MVl4UTRyU0grZ1RsdkRicjVSL28xbmFJbGR3RGZNVWRtT3RqUEp4VXBibnhB?=
 =?utf-8?B?a001U0Z1WnJmbEpyWVR2djh2VlBTT3I4YSs2RGU5QUs0bEwyckhRZFQ4RVBv?=
 =?utf-8?B?V01HT0p0TjJNblVNeGVtcTV5a2Z1UHlQQmF2Z2NvYmgyRmhidEh3RUVpTGhy?=
 =?utf-8?B?amt6bXhhVVNyM3dyM3czb0wzS0Y5NElab3E0YlBNTWpFdWpsaEtTQ2FsaXlX?=
 =?utf-8?B?VXJ2ckxYbzJtdFZQcUFMUk1tQ0xpV0tOUG5NdkU1MVFnTktFK2pYbnUzNHFU?=
 =?utf-8?B?V3JIYjRoZWRkVnFIakFFQ3lBVmlFS1NhdHU0bnd1aXc4eEhQSzk2ZlNEbW41?=
 =?utf-8?B?Q05kdTh4OXYyVjZuWWd2ZUtBTFN2NjNnd28wbWo2b0JkK1RXei8wSGlESFNz?=
 =?utf-8?B?Yk5KZDNKcCsvcHpEUlpYVUhpS0M1SHplWDdCdU5Za3NWMnVUTHlVN3NpcUFp?=
 =?utf-8?B?VXJlRmpSRmVGTnNFTzh5TDEzVGNLNy9wYmRTQ1l3bHArR2xhQ2xUenphcTc2?=
 =?utf-8?B?ZnovdFFZRFovTnRCek5YbUZQQW5aYkl3MGtMS2hKaFRRUVlBcC93RTZTdUR3?=
 =?utf-8?B?UlBIYml5blNnbGtmQkEwdWJNY2FRVWNqWUpyemdlQWIwcFdMVnRWdjA2TnJv?=
 =?utf-8?B?bjkrRzBIWll4MWovbHd5cDBqckZldUxoQWE3S0dlcG5mMStFU1FUT0Q2QXY1?=
 =?utf-8?B?ZTlKNUE1c0VPT2NWQm9MY2V1bVZkZUM4ZDhQWnVLMElRN3NMRW9RSGh1RU00?=
 =?utf-8?B?cWllQTFZci9NeFpYWWFGTnhzWnRKNktoT3NjWkZUeUc0RFV3RG1NWkVKTXhC?=
 =?utf-8?Q?CD5s=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(36860700013)(376014)(7416014)(82310400026)(1800799024)(35042699022)(14060799003)(921020);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 14:27:59.3446
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d6c1c5b2-796c-441b-33b9-08de46e6777f
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM2PEPF0001C70A.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_062806_645596_C1AC22B7 
X-CRM114-Status: UNSURE (   5.90  )
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

Add mux controller support for data or control lines that are muxed
between a host and multiple cards.

There are several devices supporting a choice of eMMC or SD on a single
board by both dip switch and gpio, e.g. Renesas RZ/G2L SMARC SoM and
SolidRun RZ/G2L SoM.

In-tree dts for the Renesas boards currently rely on preprocessor macros
and gpio hogs to describe the respective cards.

By adding mux-states property to sdhi controller description, boards can
correctly describe the mux that already exists in hardware - and drivers
can coordinate between mux selection and probing for cards.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
index c754ea71f51f7..64fac0d11329a 100644
--- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
+++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
@@ -106,6 +106,11 @@ properties:
   iommus:
     maxItems: 1
 
+  mux-states:
+    description:
+      mux controller node to route the SD/SDIO/eMMC signals from SoC to cards.
+    maxItems: 1
+
   power-domains:
     maxItems: 1
 
@@ -275,6 +280,7 @@ examples:
         max-frequency = <195000000>;
         power-domains = <&sysc R8A7790_PD_ALWAYS_ON>;
         resets = <&cpg 314>;
+        mux-states = <&mux 0>;
     };
 
     sdhi1: mmc@ee120000 {

-- 
2.51.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
