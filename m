Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4CA0CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 10:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xANjw6hPaIOzexEZCGFSTCRQdBSwlXG5hp4j2i+Hrw=; b=qUjiVZoNSDwILz
	lx8n6DnXcttyXV/XnepIbVEISOMOhTgu5l0/FivVmEB1BasPG2a54aSPCTrlCU+dQstqdjGo+QxzU
	HtwzUAvDkB6aXROXc3+J39FQGASuT35XsP2kHHtI0xnMjBkQqClfQ0/ABh+K1YZl1t+nPxfyGtc3L
	itG6Hg0DY9STnp5Ko+psrF8Qv0+ZExmM/P4Io7kzDLMo6t8TDPFhtIqjcwFtfHWJuJ6H8supntivV
	vRTcdOnMp5smabZlijBhAPzFkvCX6j0MMNs98Nwl/TMUTAunz7sMJxifkxcWzeiUh1gdO14qCow7W
	U6k741foq1MGt5peXQNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4GkP-0000000AIEC-1q3L;
	Thu, 02 Oct 2025 10:41:17 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4GkN-0000000AIDh-0gcq
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 10:41:16 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ik21gP28j0TsRv+yz0RwQuiiGts7etIf5ieU7dZtHn77EkhTWoyZTu8vi5D0QXwegoFc/zpjtTEJmC43IncHSwB2RQ1sPme8hIdu0BvWHHMgWVbZv6FHXDKbOR8NToaKmt1sEUE/eSB+P9d5fT8+bpPetfN2fVDkCmIUMq5WAXLGiT8+0hkmeKUXk15nTOx4SSQOuqghkkVRWI72soFPZqDeT1Po83/K/BlbGOrDYPWDgysRiV8AXtSeWFoo+pXLtzmXv9IytchRK0wuodeUIRhhGJSLhmTbx8Q40BQ5u3RyvcN6/vCT+9llqDo1bWAbt3YE4AX//KsJE12uAB8usw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmjXfypGUEvKrnIn0RLUCmy6bWjG41Exn1Z/W87Svds=;
 b=MUPc8DeCZlfZHTM5d5Ouu+/3/03umQBjUxlx6HMII+B/G94vsoutMcpHIIhwvzkz59caC2SIquy56PkfB1HZhL3RTBs8kDzuIg461j/YG6yEjZrZYDE5UJKn6xJqxZ1KVV3YeM03taCa0sZqPkZN9zgnazEB11EQCY1C5p0ayCh0sI20s34ebNk1j/stOlNBxX1FizfoFzjT+sP/uK2W6vpCJ5md10k9MWkyfdNhd4UP2PoVUOHijYBlD7eWgrRxi34kdhAqTUPJrD3pp+l2bOQsyQWY4xfJ8pLtITkwI/h0x1cuCoRp1ussZxzSW13PcqdMDDBmF3KSa2wfobtcEQ==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PmjXfypGUEvKrnIn0RLUCmy6bWjG41Exn1Z/W87Svds=;
 b=Jaw+hwKk68/dj9Mjc1K3QDDoLvy27a1Bpa2tszGbQOMuRe+8LU+2FgX2qwWwQQ+TYMc0mJ4WqIPtzWkV1XkaAoyYaFsg4FiGFFQNnxHUrAQQ26xrP6PhrVzLHeB+fCGMlyI5aDrC924Y702c3zCTdNHIATs2AOYaRkkwYqnLRN8=
Received: from PR0P264CA0276.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1::24) by
 AM8PR04MB7954.eurprd04.prod.outlook.com (2603:10a6:20b:237::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.14; Thu, 2 Oct
 2025 10:41:08 +0000
Received: from AM4PEPF00025F9B.EURPRD83.prod.outlook.com
 (2603:10a6:100:1:cafe::42) by PR0P264CA0276.outlook.office365.com
 (2603:10a6:100:1::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9160.17 via Frontend Transport; Thu,
 2 Oct 2025 10:41:08 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM4PEPF00025F9B.mail.protection.outlook.com (10.167.16.10) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9203.1
 via Frontend Transport; Thu, 2 Oct 2025 10:41:07 +0000
Received: from emails-8403457-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-72.eu-west-1.compute.internal [10.20.6.72])
	by mta-outgoing-dlp-670-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 6214D804F4;
	Thu,  2 Oct 2025 10:41:07 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com; arc=pass;
  dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1759401667; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=PmjXfypGUEvKrnIn0RLUCmy6bWjG41Exn1Z/W87Svds=;
 b=IerDUp80yhEwcjR5KE1o9dSVgPiS/Jwscuk8XKopAJB2zRk3FCegMVVg/0DYowI/S/WwO
 iBWqgzXAtgIJNlmtaN48d0cU4vnQk+lAAiefgdEd12T906E8EnF9UJz5R6SPRgGjzLdLkZw
 l4SPlifEMzb/m8Z/MyMBpJxtMhkKRMQ=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1759401667;
 b=JMpJzymLc24HjNfhYEJfG1TUIu6m8EhHKV3hR0hyYRT1UBLYWQu/l2Z7MZmhnXA1YkKI9
 TjSIoaV+oa6fzI+N/+DlJoDSOCXT7sj7XcwPOdNzNxd11RIja54AwBAeAczfyf3GifW/sE+
 uW5++CwZw2aGwe4p+/98jc4e/M/VB9c=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iBW9M6vVMnr9BlH5AqWAocC6s2v6M8TzQ72I6M/BpFoc0OkAxYABjS93S/WOOvuwBwbaXqXi3E75iVLD03f8tC4lHrJscnkZW8/VnRgTeSeQ+wPw8OqlIFLQDwAO/VcRwyY+nMuz2nnaVmeiCJliuczxEVBIOVBBsF9R8rcRgrVUY+vMhRxK8/UtS0T7UST9FlBI/jHykaS+9JDZL9W9J7Ze6FxSEuZKtefVD7rCsAklIfrZIYtQMtkm3T46acgmA9KhGyhpeEloFxS9mUh0rzaYZH8+OTBAbYehMvn52z1tEPGAHbzSXadYnoMOlKRSCroqPS2mIgc81DT+6eIH6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmjXfypGUEvKrnIn0RLUCmy6bWjG41Exn1Z/W87Svds=;
 b=Ifx+z1vuerCkIa14Leng+UOzDABw7jo+dMuMypw6eex7Y+lEDUvIUXjPhN1MHkxL82dcO75vt7Uvts0xhuojU3abPwK4y8w4CHfWTXMFJPkHfjIrKg8ugGHaCn2pBylMpBpRocuckzfwDsujyz7hJbadAHP8Ewzb7K0wyaYs/MiC8OQw8+NgPQEfpw+S+1X2mlqJL5qI0ckqKOVawbN+v75EZFU9fcUfrni1pn69RR1o3bSzVDOm/SwWl1SwDnKr6dNkWVcUTNodLo743shN2CkjWTA5squDR5u8dNdHAaj8C+vtiMkom4ItKFhtVTPQjpILGOs9pkZ5DDDRk77tWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PmjXfypGUEvKrnIn0RLUCmy6bWjG41Exn1Z/W87Svds=;
 b=Jaw+hwKk68/dj9Mjc1K3QDDoLvy27a1Bpa2tszGbQOMuRe+8LU+2FgX2qwWwQQ+TYMc0mJ4WqIPtzWkV1XkaAoyYaFsg4FiGFFQNnxHUrAQQ26xrP6PhrVzLHeB+fCGMlyI5aDrC924Y702c3zCTdNHIATs2AOYaRkkwYqnLRN8=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by GVXPR04MB10972.eurprd04.prod.outlook.com (2603:10a6:150:224::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Thu, 2 Oct
 2025 10:40:52 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9182.015; Thu, 2 Oct 2025
 10:40:51 +0000
From: Josua Mayer <josua@solid-run.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
CC: Ioana Ciornei <ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 phy 13/17] phy: lynx-28g: probe on per-SoC and
 per-instance compatible strings
Thread-Topic: [PATCH v3 phy 13/17] phy: lynx-28g: probe on per-SoC and
 per-instance compatible strings
Thread-Index: AQHcLxAxTFO6zljK5kGZ1/VoDfm6fLSus+qA
Date: Thu, 2 Oct 2025 10:40:51 +0000
Message-ID: <1ec4002f-6c5a-4f64-8ba7-7f991b0f3f75@solid-run.com>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
 <20250926180505.760089-14-vladimir.oltean@nxp.com>
In-Reply-To: <20250926180505.760089-14-vladimir.oltean@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|GVXPR04MB10972:EE_|AM4PEPF00025F9B:EE_|AM8PR04MB7954:EE_
X-MS-Office365-Filtering-Correlation-Id: d91b8843-3d63-404a-fe71-08de01a0320c
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|7416014|366016|376014|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?TmlzR2RaSURHUjhSMHJuNk43dzdEeWc4SnFXTTVZY25ONXExUXp1K3lSMEpQ?=
 =?utf-8?B?Ym8zUTF1SjZaYWdJZkRLVnBNeUJBOHh5S2padGJzdlpCSDB4OXNqV3QzVERz?=
 =?utf-8?B?YlNJNnozUk9LYzkvcVgxRWVoMHhBc2hUOUNwYkhIUWUzaElOUnFpU2NxWlAz?=
 =?utf-8?B?Z0pNTlBIMTBDVk5GRnpYbTNEMzFBb281cmN4Ukk2QTlMUUEvWG43NnY5RGE4?=
 =?utf-8?B?cm5QMmVjWDdDWDNLWlhIY2tNNWMvU3pBbHFINThHcEZjcFJDQ2k4dTl1Mm9X?=
 =?utf-8?B?OElpNml5bVh2ZHdINHJvVEFLOS9URko5dC8zUTFBWUg5RGcvV1RPUDM2QlV2?=
 =?utf-8?B?Q1h0akFDMzk5dUFTYi8xTlQ2bjA0V0g2WlU5Y0hOVWIvMTB0MmMvRTFIc3lh?=
 =?utf-8?B?dXdwc3grdW8wNDVYT3pMR1dyY1B1bUVxaTJocld6ZU9JL3B6SmFWR08rcjE3?=
 =?utf-8?B?YUFQWkgwMGF0dTF0biswdUpRSzhFTXNYYzlFeCtxZW1sVHZlc0E3NXVkQUcy?=
 =?utf-8?B?ZUJ3VTIyT1Zsdmp0MWt3SDIvSVR4YnJ2NHFSeEdFU29JSjdENEpobTE1K0xh?=
 =?utf-8?B?bVd6OXJiN283U2NqdTN3Q3l1NGVwODJqb0loc0EweEhPd3BTdWROUGFQKzkw?=
 =?utf-8?B?QjVWNGo4SVJrNjJKQVlLYVRZZzI5K2lHQlBDN00rbGVoRFVhdE02Y0J1WlZQ?=
 =?utf-8?B?aXUzOXVZRkRkWTNaQVhQNy9SeThjdFhzblZuUnhhbm50Wi95RWlUanZhOVMx?=
 =?utf-8?B?UkZHRmt0NnhkdUFJc2xjMndxeHRGcEN1RGNLWWZadGpqbjJBektPbFRaVkJz?=
 =?utf-8?B?YUFXUi8welFxWUJxZFQxWCtTN1pnOWRSMVc2R3RxOXVlOU5walZYelg2TmFL?=
 =?utf-8?B?UzViaEVzSmlGaUpvaHEwY3pqd2xYYVo0K3pPaVRMTkZTOU9hUytsb2liQ0xo?=
 =?utf-8?B?blNPOWwzOHJrMzlxM1ZXYUN5WXB2VkZqSWpQOENjN3o3Mkw2K1FpcjBjcnc4?=
 =?utf-8?B?YS9zK0QzeVZIaVFXTTZqWE9NVEZGczI2aG5mc1RzNHhiN0ltYXpIZ2g2a1hE?=
 =?utf-8?B?Z3VERStJeTgwYXZVOG5vSzlSMXQvOCtRSmpMazNVUG56YUlpYm81RG1TV2lz?=
 =?utf-8?B?dk5RUHhjV0VYNERHbjcxSjN5T3hQTjFtN3ZKeXd1TU1HOGYxajhIYVBwem9O?=
 =?utf-8?B?MmUzQWxWL3g1OGhtY0tHTytWOU9uWDlCb2dpcXpiaWU1R2pISnJVZ1M0WVNN?=
 =?utf-8?B?YS9NNWRmdzhtUmh1dkNRQlNTanUrN0dPQU9xNUNwQjF0QlhsWDMweU9UeWdx?=
 =?utf-8?B?NFlBZXZrVVFqbW1jNEVFSU8vUktHSlV6bk5CcG94NDI0Wk93SW9GNnNmanNH?=
 =?utf-8?B?YUwvQWRNaEZuTmxheDJVU1hUWDUxS2VEdm5HenhjK0d6c2Z6YWhrQ2R2MHY1?=
 =?utf-8?B?WWFKSHlKQ0tPRk9ndzU3dUR3WTNMTWpkV0hlNTZIbUNVckxGdzhNcHJ6TGNJ?=
 =?utf-8?B?ckdwczFOek5QaWhOaFFjSzZGbU44N0xIRUVYeXp5cG1Wb0QzMENQNk9FT0lN?=
 =?utf-8?B?MWxaVGpMQUw2YVpISFUrL05WVUkzWkFDUWEvZGY0MWxUczB3Z1JiRlFlOGdx?=
 =?utf-8?B?M3BYSW12VWs3dW5xS3M5em1rUitlc2t4RjNVWm5ya2tLTzIrdFZMOWttSVg3?=
 =?utf-8?B?OWVFVkFoeVp1NHNGWFlzc2x2ODlhNCs4NjdlRGZBelFPeE5IaXRiYVBhNlpM?=
 =?utf-8?B?TTUvTmhmRGl2MDM4bmJQd1dUUGZ4dkh0S0lpSVErb05qZG9ycWhVNGZlazdO?=
 =?utf-8?B?Q24zWkJ1L2hUNTMzekZoejdSc0R0NnUrdlRtRm9yVEZoTXdBZFpPQ3JRZldl?=
 =?utf-8?B?cHhXSmxMbjdqaUt3alNrNzlvSDV0ZDZkUFprbHVSQWZGbmRGU210UExDVUIw?=
 =?utf-8?B?eDJMTWpPbzdBMlFxRjhhSXB6S1pGYUhZd1NiOGkyYlZXT2JXTmpvZFUxVDN0?=
 =?utf-8?B?UUtvNVFKZzFPeEQ1SnViVzlybW9uYUV2Z2h5TWZxV2tjK01PdlNlQ0oxczlP?=
 =?utf-8?Q?w4ABC6?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(366016)(376014)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <8BFF1FC69D4302498AD8E0A2B0E663A6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10972
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 91af60c5b3474d2ca70e509d7309b2e6:solidrun,office365_emails,sent,inline:bf9a76283b6e63aa617259363244be7e
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM4PEPF00025F9B.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: af1c5ca5-090f-49de-d8bf-08de01a0287f
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|36860700013|14060799003|35042699022|82310400026|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGJ6V1ZVUVBLRnNrM3h4Q0phcHhEZnBBVDhTOW1FOWxQSHhtbktMQXNkcjJO?=
 =?utf-8?B?RHYxbHB3SnExY0NHRUZQL0RGTThmVW4vMlFvS0FkblMwNkNGcnNQam1MYStR?=
 =?utf-8?B?SVlIOHVQcTY0VEY4YUEyTWNnY3VBcWUrUitKYks2YTJmcUJYV2ZYZ2pFWnJO?=
 =?utf-8?B?cndJR2tLeFJ3aUtsQjdPZGtVWnVubW5lS0xvQit0MFYwc0NzZXBYeDRWRU4w?=
 =?utf-8?B?eGZFQmk5enVUaTRDLzBJU3o1WndVQ29CU0FidmliTUs1L1hqMkQzMVpmaWJL?=
 =?utf-8?B?REVodFgzelZoYjlPUFlRYmZMMkhuY0Rzd055ZTVRZHp4eUNJVVN6blFRak5C?=
 =?utf-8?B?NDlrV2hsaXloMXJLMVlHYm4zYS9RamNJaDVTSjJSS1VNU2IrZWhCSGRBeith?=
 =?utf-8?B?VXFuTGZKa2F3OUU3bnF4WGxiYmZoSUV4VXRzMXJNMlMxVVE2OTYzMlVCT0dS?=
 =?utf-8?B?U2R1NGVQVTNxV0dNMlBMUmpEdDJQTlRWUnJxNHpWc3FsUEFjaDRoVUhsNHB2?=
 =?utf-8?B?bmJ4VnNScjBmS1NsOGtjQXFWQW9xa3hrZUdld3hmVitIYlNRdFd2K2d1R0tv?=
 =?utf-8?B?M3BUS0NPcGVRTzNBQ1JDY0phMzd1TW90UjR0SCtXQnRYTm5oTXdrQ3lzMmJI?=
 =?utf-8?B?YW9PdXR3NityZDh6YkFQdWdTYXJnRDhEQnlmUGhURUY0eE9adjRxdTFDWmIy?=
 =?utf-8?B?bGZWU0ZOWnVTQytqQUZHeCtkNnFRYlM4QjRZNnRiOEVmdjl6LzBmMkRHb0hN?=
 =?utf-8?B?aFVtNWVTUlRNUE1MV2VnUjEwbGZrUEpxdC84U2xFYTFjczUwRlFpWThaRFJG?=
 =?utf-8?B?Ui9ZM0tzZk01eDIzVUl3Z1ltam1xcXFpSnJ6R3ZodFE3VDJXVjhjKzdrczA0?=
 =?utf-8?B?Z1ZaY2ljdDR6MmZYYTJZY3Viakk1eng2dFFNNmtjeDBaQ2pzTHVEODN1cXJT?=
 =?utf-8?B?QVZlWVc2YVNacEt0OXJYcGRQem1XUHZTYkRGRkJHQUNKWlYxRjdEUkJuRksv?=
 =?utf-8?B?M1ZDa0FxUzEzMGFWSUFGcmh5a1V4RWJvVGRIR1BDQWpZaUsxWHQvRTNiK0M1?=
 =?utf-8?B?Z2FoVlZvNzNJZDYwTjRrek84U2VZVE9Ka1N5akR2R2hlcEs0UWxPUjFSdGZZ?=
 =?utf-8?B?R1lURVh4RGxucnMvaDY3L1VDRU1QYlFxVDBmZ1dqRVFtOFdaTVkvQ3dwZXdp?=
 =?utf-8?B?QURsTWxLSS9RbUkzLzl6c0xRcEhqY2pIYWRCbjlKQkQrZEU3YlRXODFEUXVl?=
 =?utf-8?B?YUUyVjArTkNvKzFSYzlxTWFyem1ER2VNdkkwTi9mYjl2VnhuWjZVeHd6emJY?=
 =?utf-8?B?S2dpNE00ZGMvTVEyWjBZaUdnR2srcnEySHZ1ZGN5NHhKay9FaVFYQzlQeW54?=
 =?utf-8?B?U01ubloxVEQ5Wkd1elErTU44RUo3SnUxNlY5MWx3SHcyQ2xzVGFqdEJzaktT?=
 =?utf-8?B?cjdFekN2SDlSSjRGME93OUpoWW93QXRWOTQvYTR5cTc4SkNWdTJFMjIzNk1K?=
 =?utf-8?B?emE1U2I3ZEYwdmkxWXlzTTVCV05aODNkVWUwMmNIcnpOTTYxRlJNTTFNMWx0?=
 =?utf-8?B?SGNMUHM1SHhvTEhHY2JJWVRHQXh1ZSt1em5NMnF0aVJVaWhPRFhEZitWcUlr?=
 =?utf-8?B?Y01QbW1KMjVNYVdTNmszSVNTSktLYmJENFZxZHgxejFnQmZLU2RZK0hpYjY3?=
 =?utf-8?B?dUpyRzhuNVdjUnBEaGFJZEI3dDNwRGI3VExVdngxaWdQOGo4WnRCZ0k2RWFs?=
 =?utf-8?B?SW4wdEtybWlGc0pjVVpqVXJUVFhzckhHMVNIbTkvVC9qcHBvTUFOUzZ3dy96?=
 =?utf-8?B?RG84SmR2NmxaVHQvUG9ZbnhaaXVDWUJxVXNwSTkyVHE1SGN2ckRJVDNnYkRn?=
 =?utf-8?B?RkliVjMyaTFBSVE0R3JrR2RpK0dhK3ZCd0FoRDIwOHN0VWNYVHpSRjVwRTNF?=
 =?utf-8?B?Y3ZyeUZNUkhDZ2xrVEF4ZDg0YWdKc3ZHbWRQekFTWUkrK3hpYktWZDlld2th?=
 =?utf-8?B?WExqM01yWFN2eHJkSXBNMFVRWExwQjkyVG5XSldsTVVDTEpKUk52Qm1Cbjlm?=
 =?utf-8?B?bVlmRnBLZC8wQ1ZxWmhnMlZmUHYyVlRJQjZCbGRQTW02Vmc1TVlZV2s0a3F4?=
 =?utf-8?Q?uVTE=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(36860700013)(14060799003)(35042699022)(82310400026)(7053199007);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 10:41:07.8398
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d91b8843-3d63-404a-fe71-08de01a0320c
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM4PEPF00025F9B.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_034115_357231_CAEAD1EB 
X-CRM114-Status: UNSURE (   8.27  )
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

Am 26.09.25 um 20:05 schrieb Vladimir Oltean:

> Add driver support for probing on the new, per-instance and per-SoC
> bindings, which provide the following benefits:
> - they allow rejecting unsupported protocols per lane (10GbE on SerDes 2
>   lanes 0-5)
> - individual lanes have their own OF nodes as PHY providers, which
>   allows board device tree authors to tune electrical parameters such as
>   TX amplitude, equalization etc.
>
> Probing on "fsl,lynx-28g" is still supported, but the feature set is
> frozen in time to just 1GbE and 10GbE (essentially the feature set as of
> this change). However, we encourage the user at probe time to update the
> device tree.
>
> Refactor the per-lane logic from lynx_28g_probe() into
> lynx_28g_lane_probe(), and call it from two distinct paths depending on
> whether the modern or the legacy compatible string is used, with an OF
> node for the lane or without.
>
> Notable implication of the above: when lanes have disabled OF nodes, we
> skip creating PHYs for them, and must also skip the CDR lock workaround.
>
> lynx_28g_supports_lane_mode() was a SerDes-global function and now
> becomes per lane, to reflect the specific capabilities each instance may
> have.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v2->v3:
> - reword commit message
> - add some comments regarding the "fsl,lynx-28g" fallback mechanism
> - skip CDR lock workaround for lanes with no PHY (disabled in the device
>   tree in the new binding)
> v1->v2:
> - remove priv->info->get_pccr() and priv->info->get_pcvt_offset().
>   These were always called directly as lynx_28g_get_pccr() and
>   lynx_28g_get_pcvt_offset().
> - Add forgotten priv->info->lane_supports_mode() test to
>   lynx_28g_supports_lane_mode().
> - Rename the "fsl,lynx-28g" drvdata as lynx_info_compat rather than
>   lynx_info_lx2160a_serdes1, to reflect its treatment as less featured.
> - Implement a separate lane probing path for the #phy-cells = <0> case.
>
>  drivers/phy/freescale/phy-fsl-lynx-28g.c | 202 ++++++++++++++++++++---
>  1 file changed, 179 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> index 453e76e0a6b7..1ddca8b4de17 100644
> --- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
> +++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> @@ -433,9 +433,15 @@ struct lynx_28g_lane {
>  	enum lynx_lane_mode mode;
>  };
>  
> +struct lynx_info {
> +	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
> +	int first_lane;
> +};
> +
>  struct lynx_28g_priv {
>  	void __iomem *base;
>  	struct device *dev;
> +	const struct lynx_info *info;
>  	/* Serialize concurrent access to registers shared between lanes,
>  	 * like PCCn
>  	 */
> @@ -500,11 +506,18 @@ static enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
>  	}
>  }
>  
> -static bool lynx_28g_supports_lane_mode(struct lynx_28g_priv *priv,
> +/* A lane mode is supported if we have a PLL that can provide its required
> + * clock net, and if there is a protocol converter for that mode on that lane.
> + */
> +static bool lynx_28g_supports_lane_mode(struct lynx_28g_lane *lane,
>  					enum lynx_lane_mode mode)
>  {
> +	struct lynx_28g_priv *priv = lane->priv;
>  	int i;
>  
> +	if (!priv->info->lane_supports_mode(lane->id, mode))
> +		return false;
> +
>  	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
>  		if (PLLnRSTCTL_DIS(priv->pll[i].rstctl))
>  			continue;
> @@ -687,6 +700,86 @@ static int lynx_28g_get_pcvt_offset(int lane, enum lynx_lane_mode lane_mode)
>  	}
>  }
>  
> +static bool lx2160a_serdes1_lane_supports_mode(int lane,
> +					       enum lynx_lane_mode mode)
> +{
> +	return true;
> +}
> +
> +static bool lx2160a_serdes2_lane_supports_mode(int lane,
> +					       enum lynx_lane_mode mode)
> +{
> +	switch (mode) {
> +	case LANE_MODE_1000BASEX_SGMII:
> +		return true;
> +	case LANE_MODE_USXGMII:
> +	case LANE_MODE_10GBASER:
> +		return lane == 6 || lane == 7;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool lx2160a_serdes3_lane_supports_mode(int lane,
> +					       enum lynx_lane_mode mode)
> +{
> +	/*
> +	 * Non-networking SerDes, and this driver supports only
> +	 * networking protocols
> +	 */
> +	return false;
> +}
> +
> +static bool lx2162a_serdes1_lane_supports_mode(int lane,
> +					       enum lynx_lane_mode mode)
> +{
> +	return true;
> +}
> +
> +static bool lx2162a_serdes2_lane_supports_mode(int lane,
> +					       enum lynx_lane_mode mode)
> +{
> +	return lx2160a_serdes2_lane_supports_mode(lane, mode);
> +}
> +
> +static bool lynx_28g_compat_lane_supports_mode(int lane,
> +					       enum lynx_lane_mode mode)
> +{
> +	switch (mode) {
> +	case LANE_MODE_1000BASEX_SGMII:
> +	case LANE_MODE_USXGMII:
> +	case LANE_MODE_10GBASER:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static const struct lynx_info lynx_info_compat = {
> +	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
> +};
> +
> +static const struct lynx_info lynx_info_lx2160a_serdes1 = {
> +	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
> +};
> +
> +static const struct lynx_info lynx_info_lx2160a_serdes2 = {
> +	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
> +};
> +
> +static const struct lynx_info lynx_info_lx2160a_serdes3 = {
> +	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
> +};
> +
> +static const struct lynx_info lynx_info_lx2162a_serdes1 = {
> +	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
> +	.first_lane = 4,
> +};
> +
> +static const struct lynx_info lynx_info_lx2162a_serdes2 = {
> +	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
> +};
> +
>  static int lynx_pccr_read(struct lynx_28g_lane *lane, enum lynx_lane_mode mode,
>  			  u32 *val)
>  {
> @@ -939,7 +1032,6 @@ static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
>  static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>  {
>  	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
> -	struct lynx_28g_priv *priv = lane->priv;
>  	int powered_up = lane->powered_up;
>  	enum lynx_lane_mode lane_mode;
>  	int err = 0;
> @@ -951,7 +1043,7 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>  		return -EOPNOTSUPP;
>  
>  	lane_mode = phy_interface_to_lane_mode(submode);
> -	if (!lynx_28g_supports_lane_mode(priv, lane_mode))
> +	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
>  		return -EOPNOTSUPP;
>  
>  	if (lane_mode == lane->mode)
> @@ -984,14 +1076,13 @@ static int lynx_28g_validate(struct phy *phy, enum phy_mode mode, int submode,
>  			     union phy_configure_opts *opts __always_unused)
>  {
>  	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
> -	struct lynx_28g_priv *priv = lane->priv;
>  	enum lynx_lane_mode lane_mode;
>  
>  	if (mode != PHY_MODE_ETHERNET)
>  		return -EOPNOTSUPP;
>  
>  	lane_mode = phy_interface_to_lane_mode(submode);
> -	if (!lynx_28g_supports_lane_mode(priv, lane_mode))
> +	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
>  		return -EOPNOTSUPP;
>  
>  	return 0;
> @@ -1067,8 +1158,10 @@ static void lynx_28g_cdr_lock_check(struct work_struct *work)
>  	u32 rrstctl;
>  	int i;
>  
> -	for (i = 0; i < LYNX_28G_NUM_LANE; i++) {
> +	for (i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
>  		lane = &priv->lane[i];
> +		if (!lane->phy)
> +			continue;
>  
>  		mutex_lock(&lane->phy->mutex);
>  
> @@ -1120,24 +1213,48 @@ static struct phy *lynx_28g_xlate(struct device *dev,
>  	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
>  	int idx = args->args[0];
>  
> -	if (WARN_ON(idx >= LYNX_28G_NUM_LANE))
> +	if (WARN_ON(idx >= LYNX_28G_NUM_LANE ||
> +		    idx < priv->info->first_lane))
>  		return ERR_PTR(-EINVAL);
>  
>  	return priv->lane[idx].phy;
>  }
>  
> +static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
> +			       struct device_node *dn)
> +{
> +	struct lynx_28g_lane *lane = &priv->lane[id];
> +	struct phy *phy;
> +
> +	memset(lane, 0, sizeof(*lane));
> +
> +	phy = devm_phy_create(priv->dev, dn, &lynx_28g_ops);
> +	if (IS_ERR(phy))
> +		return PTR_ERR(phy);
> +
> +	lane->priv = priv;
> +	lane->phy = phy;
> +	lane->id = id;
> +	phy_set_drvdata(phy, lane);
> +	lynx_28g_lane_read_configuration(lane);
> +
> +	return 0;
> +}
> +
>  static int lynx_28g_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> +	bool lane_phy_providers = true;
>  	struct phy_provider *provider;
>  	struct lynx_28g_priv *priv;
> -	int i;
> +	int err;
>  
>  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;
>  
>  	priv->dev = dev;
> +	priv->info = of_device_get_match_data(dev);
>  	dev_set_drvdata(dev, priv);
>  	spin_lock_init(&priv->pcc_lock);
>  	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
> @@ -1146,26 +1263,60 @@ static int lynx_28g_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->base))
>  		return PTR_ERR(priv->base);
>  
> -	lynx_28g_pll_read_configuration(priv);
> +	if (priv->info == &lynx_info_compat) {
> +		/*
> +		 * If we get here it means we probed on a device tree where
> +		 * "fsl,lynx-28g" wasn't the fallback, but the sole compatible
> +		 * string.
> +		 */
> +		dev_warn(dev, "Please update device tree to use per-device compatible strings\n");
> +		lane_phy_providers = false;
> +	}
>  
> -	for (i = 0; i < LYNX_28G_NUM_LANE; i++) {
> -		struct lynx_28g_lane *lane = &priv->lane[i];
> -		struct phy *phy;
> +	lynx_28g_pll_read_configuration(priv);
>  
> -		memset(lane, 0, sizeof(*lane));
> +	if (lane_phy_providers) {
> +		struct device_node *dn = dev_of_node(dev), *child;
> +
> +		for_each_available_child_of_node(dn, child) {
> +			u32 reg;
> +
> +			/* PHY subnode name must be 'phy'. */
> +			if (!(of_node_name_eq(child, "phy")))
> +				continue;
> +
> +			if (of_property_read_u32(child, "reg", &reg)) {
> +				dev_err(dev, "No \"reg\" property for %pOF\n", child);
> +				of_node_put(child);
> +				return -EINVAL;
> +			}
> +
> +			if (reg < priv->info->first_lane || reg >= LYNX_28G_NUM_LANE) {
> +				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
> +				of_node_put(child);
> +				return -EINVAL;
> +			}
> +
> +			err = lynx_28g_probe_lane(priv, reg, child);
> +			if (err) {
> +				of_node_put(child);
> +				return err;
> +			}
> +		}
>  
> -		phy = devm_phy_create(dev, NULL, &lynx_28g_ops);
> -		if (IS_ERR(phy))
> -			return PTR_ERR(phy);
> +		provider = devm_of_phy_provider_register(&pdev->dev,
> +							 of_phy_simple_xlate);
Is this really necessary? I believe phy_provider is not needed to resolve phandle
to a single phy, and is used only when one driver provides multiple phys.
> +	} else {
> +		for (int i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
> +			err = lynx_28g_probe_lane(priv, i, NULL);
> +			if (err)
> +				return err;
> +		}
>  
> -		lane->priv = priv;
> -		lane->phy = phy;
> -		lane->id = i;
> -		phy_set_drvdata(phy, lane);
> -		lynx_28g_lane_read_configuration(lane);
> +		provider = devm_of_phy_provider_register(&pdev->dev,
> +							 lynx_28g_xlate);
>  	}
>  
> -	provider = devm_of_phy_provider_register(dev, lynx_28g_xlate);
>  	if (IS_ERR(provider))
>  		return PTR_ERR(provider);
Keep this to have compatibility with phandles to the parent.
>  
> @@ -1184,7 +1335,12 @@ static void lynx_28g_remove(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id lynx_28g_of_match_table[] = {
> -	{ .compatible = "fsl,lynx-28g" },
> +	{ .compatible = "fsl,lx2160a-serdes1", .data = &lynx_info_lx2160a_serdes1 },
> +	{ .compatible = "fsl,lx2160a-serdes2", .data = &lynx_info_lx2160a_serdes2 },
> +	{ .compatible = "fsl,lx2160a-serdes3", .data = &lynx_info_lx2160a_serdes3 },
> +	{ .compatible = "fsl,lx2162a-serdes1", .data = &lynx_info_lx2162a_serdes1 },
> +	{ .compatible = "fsl,lx2162a-serdes2", .data = &lynx_info_lx2162a_serdes2 },
> +	{ .compatible = "fsl,lynx-28g", .data = &lynx_info_compat }, /* fallback, keep last */
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, lynx_28g_of_match_table);
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
