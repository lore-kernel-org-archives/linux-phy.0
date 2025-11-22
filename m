Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B4CDCFD2F0
	for <linux-phy@archiver.kernel.org>; Sat, 22 Nov 2025 19:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjEzZ4f41NjxNjoer3A6eLUqB+wsKZ8PcSBUsHZUoCI=; b=stIkM6n2IGTVmF
	H0+ecQThH3/hse4wyvqxbGaP3sUGl3P00I52E8IPf3cR//o8pJZKutcOK9Rg3Q8/ddNlqRkUMO9RH
	plYR0LAa9jzJ+CVTK2MzZMiqPMALX8zrLI+XGIxMqnH2V6HVitqNb6v5csyzJk0VlykqoYEqUg1Gs
	Xh2AdmJNI/Tt5g9MfGVRozstL1hW+4IWWkbOufoQLTcPbGwaQKRN14Jsq7CLAUay9aScHy6Up38hv
	CORoa7DOY+AJd0MZ9oj7Dl7YlFYxLttYzTdYXDhde21cxKemfXybC1nOYrAcxj491rtDTdrdyLyR1
	LdVqyN/7e9/rDBZOzoMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMtND-00000009pSL-0Bl8;
	Sat, 22 Nov 2025 19:34:19 +0000
Received: from mail-northeuropeazon11010041.outbound.protection.outlook.com ([52.101.84.41] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMtN5-00000009pHB-0hlB;
	Sat, 22 Nov 2025 19:34:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CERt2CnJEC5Ydl3k0kvB4368D1XElsIkod1+sAXGmkbIHkaNTyP3bV3tI/4sTWJVB6ae77Zx3Jyj3E4arkamWhmWPhR4vuWpyRtrc2AEez+cuzlRhxZ/Wu+7Ff5ooXoGcGK8MRc3hObieq0dM+yRkYl6ciAx99EqJU59ldubA8bNugz1uGWFE+GQzHD0pezJ6lSLNoefmsrrwkNAZa+clqT/05Z1jhNBGP5dpqTq5Qv2Bt+Ya0R4VaauqxA2MgREFiqZkcUaP2fNgSze/qbZj+zwBV3dpsMl5wQGbxcuDi0+/CDH27TRoJR91I483ShZOTklXrR3N/ZAGZ0CVvQNgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aC/ZMv1bNjW/zf8GrihDCoLrK0spQbT0h6SSzN1TQog=;
 b=vI2rOZML1y1mvfEpCcWZlQHz3eOoP2GEgPn2Bhy/fOOas2ENJgyfuX8CMuTKv/AXmI4kIHus8CS4WIfSMcqGKhMcvKKMBrwxD7k+x5h1d9hPU9YBMnbVx8oQYICG61Tqt5sHIdtAK7YV7uT8i8A0M+swi2Ex+EDwm13vy9bwZaklbotcmyId3ijLzIB8yKTyZviGnE0DY/pA4hs/PpRIuIykQDGAew0daeWoVRQ+OYQ8WYNU9RALG8BaWw37LQDTwaHIgExoAcWOt+o/xcbHpJ+9gj0MCCT+SiJAHNPnOORaJXmROckYziETzYQbdL6wQHz2ozSp8Z1s+TezPGBMDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aC/ZMv1bNjW/zf8GrihDCoLrK0spQbT0h6SSzN1TQog=;
 b=cqj73uJD5XFSvSQlRwwcLfCuaKABpyteyMj9q/n04CnRMmr2W0r9P4VGYG7oOOcu8/nvFniiw5UzRQuM9HvMP5chQjLQIUaT/KQEg4iDSKhgceigtCbm8kZfrdPWUdkAVK4IkJgMhulmwpcjj41j3KOuQGFMP2K/pZoFx8eBh2LQbRD3czk9GnKNw62+L9qwpLkM+0RXiAhEPzb2q7kCQTI827F+NMJPAie3FBdThgi6EzD0E9IlxYcqvMTDFj4oKVr2LMn87Yqh03HnJXHDbq0IODfIMWAoS8sWroUkVcDyOThXmdfD6r8V9yeawRSuCViNd+lXDrKaelz27/dTxQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by AS8PR04MB9510.eurprd04.prod.outlook.com (2603:10a6:20b:44a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.15; Sat, 22 Nov
 2025 19:33:59 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.011; Sat, 22 Nov 2025
 19:33:59 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Daniel Golle <daniel@makrotopia.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Eric Woudstra <ericwouds@gmail.com>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>
Subject: [PATCH net-next 2/9] dt-bindings: phy-common-props: create a reusable "protocol-names" definition
Date: Sat, 22 Nov 2025 21:33:34 +0200
Message-Id: <20251122193341.332324-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251122193341.332324-1-vladimir.oltean@nxp.com>
References: <20251122193341.332324-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0010.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:17c::20) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|AS8PR04MB9510:EE_
X-MS-Office365-Filtering-Correlation-Id: 45f7c517-1761-41d8-e39a-08de29fe15cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|52116014|366016|10070799003|1800799024|19092799006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tm8vbVdUMXkrQU1mYTM1QU5OaEt6ZTJ0Yi81SUVlTUhVUDFSTWNQWS9ObWhF?=
 =?utf-8?B?aG5ibER5TU5nakpMSE9pMjA3RW1LR1dzdm1KejY0ck0wdHh6T1dsallGTjlu?=
 =?utf-8?B?QW5tMDFOdFIrRVVVMkZuQ3ZaZWdrTERaYnhxOEQ1Vmo3NUVNQ1R0RjNNU2ZU?=
 =?utf-8?B?eDRuWCswdTBac1RFbU5tS2htVWFydTlaNmZZVGxYZjJ6NHFVeURCd0cweWg1?=
 =?utf-8?B?dWFIQmk0NGIwd1dKQW5Sa2xLdWliSWc3M2JXU2pCdkQ4VHVNTXVENHppM0Za?=
 =?utf-8?B?NzFlWVBvTlE3bzBzbzgzT3NuZDBxY1ZvVGV4SnFsYmVvNDFnM1F4clRDaGFE?=
 =?utf-8?B?Sm5sTy83MkplcXpub1Q3MnBKYno3bnVrZHdLbUpGQzNPN1VvMUVLaHY5UHE3?=
 =?utf-8?B?MnRLdndkaW1CVU1sVkl2Q3QxQ3oreEpSVXlZdElIajZpRlVKRHJ1UEF5QzFk?=
 =?utf-8?B?L2x3VTlreW5PdGh1UXcyV2pDT0JZZmlyZ1NTNkVGQTBkcHE0akZFWEovNmNZ?=
 =?utf-8?B?aGJNeDhWZ25KYzBvL0ZTN1NlS25MNEQ0bDEyNFZDTzFVR2RZU0VjZ213d2tk?=
 =?utf-8?B?alRvMXRYUGFRSFRnZkpvYkVwWEltamQ4a1lrajhrOG5PQmRmZ3lXVkRLTy9K?=
 =?utf-8?B?UUFIOTdSQTMvMkNXd2tpTlJTcDNvSGNZZkRsVzV3Z0VsWXljOHNnWEROMWg5?=
 =?utf-8?B?OTFqbDg2YkJSZnpwdUdac3dnL3dXakNSSGkrTG05eTJocDRoSm1FcnpwYVZq?=
 =?utf-8?B?NTN3UG40VlZVWFdaWW94VFl3Q1YvaXBYOC9TOXpRS1hoOUUxOWo5K1R5RjJW?=
 =?utf-8?B?VTE3QUs2RCs0YWtSNURSTUU3R2l6WkVmV29IWXJKWkFOaGFaSVY5amxUMWFQ?=
 =?utf-8?B?bk5yc2ZBY0hYc2d1aXdWay9UZnZmRkxnQ2YzRlBwUXBPT05vZVBNQ3IyMndP?=
 =?utf-8?B?NUFVRmt6UGIxMGpmK0ticFBSU2VlR2lyNUJCd0ZxN3B0WE1saExpaG9HZGxy?=
 =?utf-8?B?UzZLSHp6THlCRkpuNVZtR3JEQzdNamZ6M3FpWmRha1VMUElZSmJCTUJLaHBn?=
 =?utf-8?B?MFQvemJOY1BzOEgzZnd3L0w4bVYySWloQ09SMnRMVXkvem04bS9FSjYyT094?=
 =?utf-8?B?cXBxRHJwNHB5Q2I0MzE5dG1tYzY2RlFJZU93clZSc0JPVHQ1NkEraDZPN251?=
 =?utf-8?B?ZE9Qc21kbmUvUFVpTXBlNTkwWWxlTXlXRVV6SGl0L1l5bUZ2QW00SGdNenln?=
 =?utf-8?B?ajJwandhRXdFaTJlVGNKWnl5OEhlWlZvaXI3aUFkWCs3NEhMRUM5U1NCTExW?=
 =?utf-8?B?alErcm9LOGxZOTRnd0N2czRUS1MvWS9QSWZ1dzFpZWVOUDZySzNySU1XWm5H?=
 =?utf-8?B?QWNISm9ZWG5oaHNsbkdGeStXRytDdGFBbFVoR1J2WVZtYVVSbXpuMjJVeS9w?=
 =?utf-8?B?SFVwY0FPbTBORk1QN0I3ZXNJQmdsNkM4VHZmelZ0N3ZJRDZEZXZleXhwNDJt?=
 =?utf-8?B?ZG41U0Z4elFKbkRjYk12OUlabHN6U0ZBYWpuS1c0VDZJc2JUSUZQTnVxa1Rw?=
 =?utf-8?B?OXNYQk42QlZ0NEJtMmp1VVUxRk02SVlrbEIwalkrZUV3SEJucGtmeUVYbUJ1?=
 =?utf-8?B?VE54UEcrdnB2allWMThyMjBmU1g2aGZXcUhvQ0IwVUJwUGpEWGhXd0JYNU5x?=
 =?utf-8?B?ZXg5VGV0TTJ4eHQ5anlhUUMxREYxNlU5MVVXZzhMYnQzRVNhOFhPN0FORTRJ?=
 =?utf-8?B?dWJHbDMzMlZLSjJQYmp1OFNBcDI1c3FGNStTd3FxQTFZMVFCNFFiUURzQkxr?=
 =?utf-8?B?MmdEa3FsS2NRcGNVdUFSUGJLRmQ4YzUzMEhCdTBucEdYQUJ3S0JZOUxKME4r?=
 =?utf-8?B?WHZEVHRMR0plZSswREt3Uk4xZzNYSmx6bGJ2WHl3VklDYkJHM1N2N2VwV1lx?=
 =?utf-8?Q?WsmTHs/Pv/DstxTeP0oUIiXJqlmXen4U?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(366016)(10070799003)(1800799024)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWplWDFRZDEvYUg3RVJ1cWh2YmZKMmd6eVJrUzcxRDFzZjh3bGpteld1WFBl?=
 =?utf-8?B?WDJ2VkVBMW5ZTGxNTzJSWk9pZ3BWR002Zi9Kampmeks5c1Q1b1V0YUU3L1gz?=
 =?utf-8?B?UldsRWZuWmdFaUdkNy9XUnYvekFJeDU0Tyt5ei9XSnQ5WUxYVjQ0Q2tzd21F?=
 =?utf-8?B?QVIwZWtSay9meDlURTlMV2U1S2xLbnptTHFFaE16UjczYjJTVVNXclZ2ekpt?=
 =?utf-8?B?eTRZekMxc0Y4YVZoV3U2NlNIV054MHhDL0hPVFR3OENJNDFReHdDWTBvL1A1?=
 =?utf-8?B?RllBdWpSaHUvbXJaQzhkQm00NTJIWjFiUDhEdmpGckVJYzFXYkltQ1lrVUNz?=
 =?utf-8?B?UWFCQi93SjJicTdZejNLaDJ0NmdTRUlXYkpoSFk4QTEyNHVqS3RvMGhQRjY3?=
 =?utf-8?B?VVp2YXVBSTVRTlRPRjNwUVA2YWl0WDBlOTFYaW5Sem1ldHZ4WnBGVk93eEhm?=
 =?utf-8?B?cFY2L2hnTXZjUVdiUDVwbnpJZ1ZKUGpKQXF1SEk5RFZRZ0U2WEk3MUFkbXdw?=
 =?utf-8?B?Uk5BcldERlJETElpOEExOTAwa0VUSjRZTzlENnYwUUgxSjNzRWd1dnBrdE4r?=
 =?utf-8?B?dXFvcFdINnZLMDJxVDdhWDR2dXNwV3ZpTkpQVGRXdStqRTNZaVhNN0Qvb1cy?=
 =?utf-8?B?WjYyM1FVZEUvYnB2b1pCK05vWFJqem9taldaa3B0OEJhcXRWK2tZTndlZ1N5?=
 =?utf-8?B?NkZpYWswMkFkVUVKdFc2MUgzbTdUWHhtZFFjWXJoODJMNm1xSEdrRkhZa1By?=
 =?utf-8?B?R1JmWFIweFdyN0xsMGNrRURoSUthdUJMZDgyN1RQSmJrS0hvMWJIWFk0OUNl?=
 =?utf-8?B?VVhkbzZRS0psMWlqa1VtVmxBc0lWYTlBWUVhNzh4T1BkMDUyYnBCSHBaSWhr?=
 =?utf-8?B?amcycllaRElJci9SdlJPRFJyVVVlRGNRd2ZRSHBEVmZyMzMwN1lmZ1VjWGZl?=
 =?utf-8?B?aG84aFNMdHcybElhck5YMm8wNEVUYnk3ejRGYTB0NjBjNllLSFJ1WVdLWjZJ?=
 =?utf-8?B?VUY2bzRENlNBeTR1bzN6S2NjOTVUeUZGWmxsN3hLWTEyT2E3SWMrbVFPSlJ6?=
 =?utf-8?B?ZjNUUjNGZFMxQXdxLysvNGJXUjVEM01ONlhnL1V5cHk3MTJNZG1CeDdyRlpL?=
 =?utf-8?B?b3kyb3JPNS9keDNCV3c4bVlBaThBL09tZDNGT0dFWXVQSXV0VVRNOEJCYUo4?=
 =?utf-8?B?Vml1eVVBZVI1Q0U2c09UUmFKa1BjOFB0Vk9WRTZGOXRMS201d3NVUjZ1U25O?=
 =?utf-8?B?ZXcvRkhvdFRqK3RuTXNvb3JRSnk3ZXhHbVFkNlF6UHV3dkdLQk41bDNJS3hR?=
 =?utf-8?B?aVdYdjY2NWtDNlBydE82aitrcmZxZCtyN3BXS1pPbElMcC9lUHQ2U1hIMGJx?=
 =?utf-8?B?TE9heUVFMnZUNE5vNGVZaFJ2ZnBrYTJkbXV1UVgvcWs3TmlJVXA5WURBR1dU?=
 =?utf-8?B?V1BTRytEdmR0MlAvU3FQUmpzdldiOG9wRDM3R2MwY0FzUm5ubEl0MzdIa3lx?=
 =?utf-8?B?cUlpV2Vhb2htU1hreE9sM2lmekZHSnhsMThNT3o4Y1liN2cyUFNuUmZTWnc2?=
 =?utf-8?B?WDYyVXhPdVFscjBtMmtUMEpwcVl4UkMySXIwejkrTUU1WXdxdDhHTkhTa3Fz?=
 =?utf-8?B?Q1E0OTRLR1pPVE9UYWxTcTlzNzdUK3FYRWRVbVBmNExaREp5SjU5SnRkY3RT?=
 =?utf-8?B?TCtSU0FwT1NoTHU2Q3lmTmc1OUxuY2x3VDZaV1VzWnE1aEkrZTNtRld6Y1FQ?=
 =?utf-8?B?My9USDJReDN2T2JWd2RBNkRpa3NzUnBLTE1BUUF0RzlpRjZCbjdEajFwNE5r?=
 =?utf-8?B?R1NjNTdVbGx0TkI2K3Nkc09kdmxBM1ZFV1ZVZldRM1RNcWNiM3VNUENLSGRt?=
 =?utf-8?B?S2dSenhkakIxdVlDMTRlNW50QUZWRzVOZWtDZnB1c1pvRmIxQ3N3bVorUVAx?=
 =?utf-8?B?T09ZVlVmb2F0R2UxalFzNml0eFpiQit3dzZiOFZWa3JqSXVBdlp4WC82MFMx?=
 =?utf-8?B?QlRyYTRRQ0wzRUF5Q2dtemR1RG1NQUoyQUw1RzBQVkVmUTZ0cHR0U2U5MnRo?=
 =?utf-8?B?L1FSaVlEYndRam1MSmxrWjlOODgySkZqQVhneG16Q3NiSlE2NkJjdVVFUHM0?=
 =?utf-8?B?QTlLcE1VcmRlQkVsbkM3aDdkaE1ma3pLQUJ5TFlKYyt1QmJGV3lTZVErWWVs?=
 =?utf-8?Q?Ax9hRcJWtuqlCtRG7jQrB/8=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f7c517-1761-41d8-e39a-08de29fe15cb
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2025 19:33:59.8635
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /4ar3aX0pFz8af38iADLW5yPZ33YpWeRVO5fyZMQtiDGxuGcoLIB4RLpfNkiq1wzqf4lwdCoi9QUTHxOpnbfdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9510
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251122_113411_218636_241F3BDE 
X-CRM114-Status: GOOD (  14.39  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T3RoZXIgcHJvcGVydGllcyBhbHNvIG5lZWQgdG8gYmUgZGVmaW5lZCBwZXIgcHJvdG9jb2wgdGhh
biBqdXN0CnR4LXAycC1taWNyb3ZvbHQtbmFtZXMuIENyZWF0ZSBhIGNvbW1vbiBkZWZpbml0aW9u
IHRvIGF2b2lkIGNvcHlpbmcgYSA1NQpsaW5lIHByb3BlcnR5LgoKU2lnbmVkLW9mZi1ieTogVmxh
ZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4KLS0tCiAuLi4vYmluZGluZ3Mv
cGh5L3BoeS1jb21tb24tcHJvcHMueWFtbCAgICAgICAgfCAzNCArKysrKysrKysrKy0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktY29tbW9u
LXByb3BzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1j
b21tb24tcHJvcHMueWFtbAppbmRleCAyNTUyMDVhYzA5Y2QuLjc3NWY0ZGZlM2NjMyAxMDA2NDQK
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktY29tbW9uLXBy
b3BzLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHkt
Y29tbW9uLXByb3BzLnlhbWwKQEAgLTEzLDIyICsxMywxMiBAQCBkZXNjcmlwdGlvbjoKIG1haW50
YWluZXJzOgogICAtIE1hcmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9yZz4KIAotcHJvcGVydGll
czoKLSAgdHgtcDJwLW1pY3Jvdm9sdDoKKyRkZWZzOgorICBwcm90b2NvbC1uYW1lczoKICAgICBk
ZXNjcmlwdGlvbjoKLSAgICAgIFRyYW5zbWl0IGFtcGxpdHVkZSB2b2x0YWdlcyBpbiBtaWNyb3Zv
bHRzLCBwZWFrLXRvLXBlYWsuIElmIHRoaXMgcHJvcGVydHkKLSAgICAgIGNvbnRhaW5zIG11bHRp
cGxlIHZhbHVlcyBmb3IgdmFyaW91cyBQSFkgbW9kZXMsIHRoZQotICAgICAgJ3R4LXAycC1taWNy
b3ZvbHQtbmFtZXMnIHByb3BlcnR5IG11c3QgYmUgcHJvdmlkZWQgYW5kIGNvbnRhaW4KLSAgICAg
IGNvcnJlc3BvbmRpbmcgbW9kZSBuYW1lcy4KLQotICB0eC1wMnAtbWljcm92b2x0LW5hbWVzOgot
ICAgIGRlc2NyaXB0aW9uOiB8Ci0gICAgICBOYW1lcyBvZiB0aGUgbW9kZXMgY29ycmVzcG9uZGlu
ZyB0byB2b2x0YWdlcyBpbiB0aGUgJ3R4LXAycC1taWNyb3ZvbHQnCi0gICAgICBwcm9wZXJ0eS4g
UmVxdWlyZWQgb25seSBpZiBtdWx0aXBsZSB2b2x0YWdlcyBhcmUgcHJvdmlkZWQuCi0KLSAgICAg
IElmIGEgdmFsdWUgb2YgJ2RlZmF1bHQnIGlzIHByb3ZpZGVkLCB0aGUgc3lzdGVtIHNob3VsZCB1
c2UgaXQgZm9yIGFueSBQSFkKLSAgICAgIG1vZGUgdGhhdCBpcyBvdGhlcndpc2Ugbm90IGRlZmlu
ZWQgaGVyZS4gSWYgJ2RlZmF1bHQnIGlzIG5vdCBwcm92aWRlZCwgdGhlCi0gICAgICBzeXN0ZW0g
c2hvdWxkIHVzZSBtYW51ZmFjdHVyZXIgZGVmYXVsdCB2YWx1ZS4KKyAgICAgIE5hbWVzIG9mIHRo
ZSBQSFkgbW9kZXMuIElmIGEgdmFsdWUgb2YgJ2RlZmF1bHQnIGlzIHByb3ZpZGVkLCB0aGUgc3lz
dGVtCisgICAgICBzaG91bGQgdXNlIGl0IGZvciBhbnkgUEhZIG1vZGUgdGhhdCBpcyBvdGhlcndp
c2Ugbm90IGRlZmluZWQgaGVyZS4gSWYKKyAgICAgICdkZWZhdWx0JyBpcyBub3QgcHJvdmlkZWQs
IHRoZSBzeXN0ZW0gc2hvdWxkIHVzZSBtYW51ZmFjdHVyZXIgZGVmYXVsdCB2YWx1ZS4KICAgICBt
aW5JdGVtczogMQogICAgIG1heEl0ZW1zOiAxNgogICAgIGl0ZW1zOgpAQCAtODksNiArNzksMjAg
QEAgcHJvcGVydGllczoKICAgICAgICAgLSBtaXBpLWRwaHktdW5pdgogICAgICAgICAtIG1pcGkt
ZHBoeS12Mi41LXVuaXYKIAorcHJvcGVydGllczoKKyAgdHgtcDJwLW1pY3Jvdm9sdDoKKyAgICBk
ZXNjcmlwdGlvbjoKKyAgICAgIFRyYW5zbWl0IGFtcGxpdHVkZSB2b2x0YWdlcyBpbiBtaWNyb3Zv
bHRzLCBwZWFrLXRvLXBlYWsuIElmIHRoaXMgcHJvcGVydHkKKyAgICAgIGNvbnRhaW5zIG11bHRp
cGxlIHZhbHVlcyBmb3IgdmFyaW91cyBQSFkgbW9kZXMsIHRoZQorICAgICAgJ3R4LXAycC1taWNy
b3ZvbHQtbmFtZXMnIHByb3BlcnR5IG11c3QgYmUgcHJvdmlkZWQgYW5kIGNvbnRhaW4KKyAgICAg
IGNvcnJlc3BvbmRpbmcgbW9kZSBuYW1lcy4KKworICB0eC1wMnAtbWljcm92b2x0LW5hbWVzOgor
ICAgIGRlc2NyaXB0aW9uOgorICAgICAgTmFtZXMgb2YgdGhlIG1vZGVzIGNvcnJlc3BvbmRpbmcg
dG8gdm9sdGFnZXMgaW4gdGhlICd0eC1wMnAtbWljcm92b2x0JworICAgICAgcHJvcGVydHkuIFJl
cXVpcmVkIG9ubHkgaWYgbXVsdGlwbGUgdm9sdGFnZXMgYXJlIHByb3ZpZGVkLgorICAgICRyZWY6
ICIjLyRkZWZzL3Byb3RvY29sLW5hbWVzIgorCiBkZXBlbmRlbmNpZXM6CiAgIHR4LXAycC1taWNy
b3ZvbHQtbmFtZXM6IFsgdHgtcDJwLW1pY3Jvdm9sdCBdCiAKLS0gCjIuMzQuMQoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
