Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE6DC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 01:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nxk237xHoTBuCZACa/ms2bRP/ALGzaXnf5bOS954+0=; b=xFgdF1oiJbmzJu
	DGhFaeKb/E6fNgN8L2V3RJIfFl55ULBwZUbdEh7+N3Vr7FnZPgoNgeczRotawGupP0A2elGqMVxS1
	fDCNyOhFZvD3INSci5V0b8GCq7bLJn8CE+0PzGhbnXD/KO6kSu2+5QhuPWAslFXqmqs7gibLJYQco
	soW7/eQ1PNPzaKlPFnlhyR+EAhMPdbYC8YN4tr1Ti4EwDacTHdXqzZcSiNZF0ytQgOyjClN8CoAzf
	sjIDWk9NGUWybSxrdrf2F9kV1241/4fAkJJwVwDc8ePVChP5QDB4DLwKWSeODffVG74vg6mJpGDMm
	feZPHII3EvSpTnNg2iiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngcL4-0010Uj-LP; Tue, 19 Apr 2022 01:07:30 +0000
Received: from mail-vi1eur05on20620.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::620]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngcKu-0010Pj-4L; Tue, 19 Apr 2022 01:07:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQPxRp8iZzxMUzdZg6YDW7f0Nbp63RgVrWFHv7RZTMK2QMTER2eoHy4tdpTSiIBb9pEvmnvckTc6pJIpsljayrLEWO7l4D6Rz+ibiGxNFpAcsEm8RVPRrEs+z6hq/5NPc3CvadsnweglIQ+aK6ZANCPUB1ERQna1fiJL7cRXxXEgzv1hkUeGO5y9VvwYdn7BZPPjl0gnblCTKAth6xkeWVU/jAICdaxHMW8NP+jlMunSoH7pgryZRgoQ0RgvsCMtCA7FWfWC89TZy111PNxB0GSQG7giml97JToohc6mzaWIUt3grnFN/TapXGxDqlvQZ/gQN2hqARM67qacCdAOUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oslkYcgQ48zUnKLesDh+7ZOPuZ0okPDV5oPLB5C+n30=;
 b=Dhg5xAWoTgq0yl3T6ffQEy2RuGYtvASonwr8m0GPZiECASxxe+1oJMGSioSA+I3QXbqfLr6j/333kf7Ph0YLUjp9Q0c7pNyokv6G2i8Oy8N2qIHr1ZYcDNEE3nj0BLCQgReso3fUeoiAW41whszNizwGJLGO9QtOCC0CxEnVbZ78XyypEdf5Dnt+FPxh+niGRqJSRfzznqNjNz9cMlOsoarO6fT3H8u6Dm1wGyYfkQWp2CBDQITpzCndrqpu8Bo8/g4ixmA0paE4OSn5SP8lmfphnisgbT5C5vuv+xmNRKMljekMkylRiwGOvSAk0IdmfoTmEs5F96mpJ1zK5OYNyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oslkYcgQ48zUnKLesDh+7ZOPuZ0okPDV5oPLB5C+n30=;
 b=kOGoCGQ0ihKK169HgyeuWeODWSeLSUXnSwxpe3eAHVmTqYZgr7kFZOHPQlfYGGwU1VCiDMuCNNCUKdm3e5zq3ZY8HpvnRpmANbayPlPr+xZ6KSfSUwWznFANJrpbJRuvwkgrJNcIIFQMdd0VFXzJMLDsGFUCo71rQOmgyhTmDYk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by HE1PR04MB3291.eurprd04.prod.outlook.com (2603:10a6:7:18::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Tue, 19 Apr
 2022 01:07:17 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.026; Tue, 19 Apr 2022
 01:07:16 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm
Subject: [PATCH resend v8 1/5] drm/bridge: nwl-dsi: Set PHY mode in
 nwl_dsi_mode_set()
Date: Tue, 19 Apr 2022 09:08:48 +0800
Message-Id: <20220419010852.452169-2-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220419010852.452169-1-victor.liu@nxp.com>
References: <20220419010852.452169-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2P153CA0023.APCP153.PROD.OUTLOOK.COM (2603:1096:4:190::6)
 To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8bf39387-859e-435b-acf7-08da21a0f21a
X-MS-TrafficTypeDiagnostic: HE1PR04MB3291:EE_
X-Microsoft-Antispam-PRVS: <HE1PR04MB32913CA1D9C8BF5219AE665398F29@HE1PR04MB3291.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nL/pFJA02ZzuemXlJL3P1PATUtkJ5u/Lf4RIBp49gjaJK5t7us6zygQe56W2GUIqDJwBlk9bKc4XdqxQXdtYTsgtTScHdavchI47QBZY6LKOhyfPlKiBLupq/URltnYi7buWQ5G9oDDoZJHggB/5IxMBwPPijc4rvfPMzYZghpjuHWs7GeJGiFRNwMcEOmb4JGv2Zw3E/eUlPkclWLDPfVebO/5JmF7hTuiHGkm1g/e0vbhhPfjcbzlrMLzCMo/g+eIVBEd+du2au9TAzK62uuoE89EmeSTxPYpwFCOHhtLrsnipRBnoq+O9NsyfKqlvMrXcuXlkqkond/O7pKEdQkBwei02h72ydCGkWB8KGuKXZUwrCtiLI/+0V6qLGq6KuDxoAHBiGqzVvQ3YXsE6CgNxME3N91mq/xD4vadB9VsMCejbDPqM2+E40uYEgaBuHuuM3Bq5siFvgXUPYRKROta+VjE8gYgJ6yFRAW3Sz/2NiVzfJu92mRQnBH8ndatG4dLx7PoxxQ/8HgE04Xr55a4blRoxRYP8eT9YWXRKCMcdHLDhhBBLqgDsgCY8gnRJtxPiFmvDfduIvRbqSLYL3fFubNDmdWbb8pKkfTjWeZpmsyw9Bei1331AkkWkzAcjCCx6sjc140B164N59OUgu6GX5rfs9jHASAU3cIM5qHoCX7blo38gUMPfbf105ennBGzFAc+Pj3nImUC3tm4qZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66946007)(508600001)(8676002)(4326008)(86362001)(6486002)(36756003)(52116002)(6512007)(6506007)(6666004)(316002)(66556008)(66476007)(2906002)(26005)(186003)(83380400001)(2616005)(1076003)(5660300002)(7416002)(8936002)(38100700002)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVdOQkNOZVFhMjluSXJieEdvSmUySXJ1VjNqcks5bmhrc3U2d0g0UWlHMitm?=
 =?utf-8?B?Z0UxOFlaek1PQ1dYOW9QTEk1ckJ1UGVnVEpwVHBoRDdXTVl0YmsxaHAwWVFn?=
 =?utf-8?B?VXBoMW02Qnp6MnU0UGdtVHFaTjcxa01DZ3JrTGJPeEJDVDJVRkdPMm54VVZr?=
 =?utf-8?B?SUNEcEhjK3lLeXpJbGdCVTloZHlJcTVZcFoyYTROOTF4V2lGd3liZ0lGQnQz?=
 =?utf-8?B?Z1pjVHdUZFpGT0pIOU1xRTFoY04vekN5WnNvSkdVWHROVmMvUVZJNy8rUFJo?=
 =?utf-8?B?UDVQM21uQnNKNFZrS0pTMnhLRjlVZWhiajZpcmVMUjZXYVVkVmpDWnhkMzJh?=
 =?utf-8?B?QjQ1QnIrMFl6VzAyZlozYldFMCtyVkpUNTNWQ2pCNm1WeVovNDA0OXg2VDV3?=
 =?utf-8?B?MUVoV0tUUHBXb0tyT1NuMzI4UmpUVEFBYVI0cFljdjNVNFlINmlndndKcU94?=
 =?utf-8?B?QVFxSEZPeWVWNXYxRjNLTjdhR1RhVDNpS0xNZ2dRVnF0NE94b3JUakUrYW1W?=
 =?utf-8?B?VVJBOEZpaEhkaVpPNnR6NzVqQ01WVWV1TmthR0tyTXRHUW92UVlLcCtzYjVY?=
 =?utf-8?B?aysraUlFRnpRU1JJM0tNaFRJRlUzWEZldHplWitOYjljZFl6TjRJVkZZOVJa?=
 =?utf-8?B?cUpiZk5NeitqK21XZVhPZldkZ1VGK2tWNkRoaHB6WGdGWm5uaGJwdWRFMHFz?=
 =?utf-8?B?YUhiM2pYeFdyMS9xVzFGSWlZQzY0TUl3MTRLOHJyYkV3ZzI0QkV6QTlSdnFp?=
 =?utf-8?B?dFh2cE91M2hPREs1OHdhVTlYbytEVzZWVjZCNlFIQkFvTXdKQXNDVXovb2Jw?=
 =?utf-8?B?bm5kSEdCY0ZwQXRJeXhuQUdFeE5mMlRCQzVwZ2NWa0xtRHp0UnY5a2xvaXBs?=
 =?utf-8?B?MU5FMmRsdDJKWHpUZUFtQm5YbW9nNU5RSDBTMGlJY09uM2tqa1ROUHBvTmN2?=
 =?utf-8?B?UHlUMUh2c2NhRGVhaTNEMFVvalhYUENRTmhkR2ZTMnJLRFRybHJHZmVyZmkr?=
 =?utf-8?B?bkJ2MXk5ay9QZmRrcjhjcUVlSzYrOFhaTFY1eEZhM2tnWHQwMFJ6L2pDMXZx?=
 =?utf-8?B?RGZnYk9lT1hwUCtpRW5CaWEvNFNkNDBjRFBDVmJpSEFsamxvWnAySTQybi90?=
 =?utf-8?B?bUh3cUV4bjZkclpxZVV6L3FUZ0doZ2JCYUppKzZ5TDRXNnRrbktoaUkvbFU3?=
 =?utf-8?B?VkY3a2F0RnREZ3M3YlROVmFycEdUQ3VQWXNkWm94aENwTjFTSU9VMU9JeHNB?=
 =?utf-8?B?NzF1OEkxODY3eVNLTUhucitFeVlCenVpa0JDQ3NCNWN6eVhzWXl5NlFJREQz?=
 =?utf-8?B?S1kxY2hBeEtVdXBaTHlNcTg4K2lURk9NajNLVjNON3h3dHZMNnlmN1ZmV1Vy?=
 =?utf-8?B?MWZBbncrUno5b3RWS3Rac1hucC9lckZodEc5QkVSSmJTeXN4cHQ1aHdBWDQ5?=
 =?utf-8?B?bVFOY2YvV0c1THd4NDBOVVRZTUNlRkEzRE9jaGIxNXkzNjA0Y2xLbFJXbnpt?=
 =?utf-8?B?QWxLZUNhZzZ1b2xMajIyQk40QXRTUjViZDBGVG1XbW1UYy9IY3hNOXVrNDdw?=
 =?utf-8?B?UjRvYjdSM3pDRUF4ZnorblJrQnV1L3dYRjZpaWFDTllVeXZQOTY5ancrTjJ3?=
 =?utf-8?B?OStpQlVEdHNTVXhpenhReFNHeWhqZnN4OFU2dWRNeUdxKzRpOEdSS0VwYTlq?=
 =?utf-8?B?UFFaMWVyWDdNVVBMT00zRlhHditGWjRSWmhXQnBnVXZSNDViRUVyR25McFBM?=
 =?utf-8?B?a1p0Y0dRcUZTS0VpVXdhbFJhT0x3SGdjUVdMTHVnQ2NscUlqZ0RJRFVPdjFj?=
 =?utf-8?B?WFQwZEJLTDZpallVT1VFdGpTLy9tRER6VFNNTlI1d3RoNHFwMVU5dGwyZDB1?=
 =?utf-8?B?VE1FMGFSeXduRUFLUjhQcWtmR2VDcHNJTkl1L1VnMWgrZlRDUXB2TTlYcGRp?=
 =?utf-8?B?SCtFUlFsdndSb0V5TVNSMkVrOGVUaXRCQWdaZjV5cU1HVEFNMWgrZFlxSTdG?=
 =?utf-8?B?dk9uVnJYVmZST21McDM0N1FwZDQwMFVncFoyZGdLMkU1TVV5aWRkalpaMWNU?=
 =?utf-8?B?cnRmaDVObkMza3FGV3NZMkVPQ1Y3b282KytBdDNZWndsK0ViWkJlZEpHUndn?=
 =?utf-8?B?dEFhc1Jyby9nTGIvQlZRUGlXTzNSU2dKQTIvYjc0Q2p1MDAxL0lVcTdyMjdN?=
 =?utf-8?B?TnczTHp2TmV2U21LL2c1T01ldXRSRTdYZmRMWG00dVNPUHJ2U2xRaXhMNGx3?=
 =?utf-8?B?aUpmRWtsWUFGUm05Si9rN2dwcmk0YU00T2ptWFpVUXFFVDBWQ2J3WTV5MGZ4?=
 =?utf-8?B?YXBLZXZVRklacitEcEJTV2JWZGtxRUM3anp2MkpUajNLNXJTTDBxdz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bf39387-859e-435b-acf7-08da21a0f21a
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2022 01:07:16.8227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HLRPclahNG4QUxk7/OJ9RbHl+rWD3isTjXQ8yDJ2+o5cC1Kc+myJyHxpzVp5UWRO9R9hJY7JNN9Zlipv8Fu31A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB3291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_180720_214060_FA87544F 
X-CRM114-Status: GOOD (  11.83  )
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

VGhlIE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBob3N0IGNvbnRyb2xsZXIgZW1iZWRkZWQgaW4g
aS5NWDhxeHAKd29ya3Mgd2l0aCBhIE1peGVsIE1JUEkgRFBIWSArIExWRFMgUEhZIGNvbWJvIHRv
IHN1cHBvcnQgZWl0aGVyCmEgTUlQSSBEU0kgZGlzcGxheSBvciBhIExWRFMgZGlzcGxheS4gIFNv
LCB0aGlzIHBhdGNoIGNhbGxzCnBoeV9zZXRfbW9kZSgpIGZyb20gbndsX2RzaV9tb2RlX3NldCgp
IHRvIHNldCBQSFkgbW9kZSB0byBNSVBJIERQSFkKZXhwbGljaXRseS4KCkNjOiBHdWlkbyBHw7xu
dGhlciA8YWd4QHNpZ3hjcHUub3JnPgpDYzogUm9iZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0Bu
eHAuY29tPgpDYzogTWFydGluIEtlcHBsaW5nZXIgPG1hcnRpbi5rZXBwbGluZ2VyQHB1cmkuc20+
CkNjOiBBbmRyemVqIEhhamRhIDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4KQ2M6IE5laWwgQXJt
c3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KQ2M6IExhdXJlbnQgUGluY2hhcnQgPExh
dXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KQ2M6IEpvbmFzIEthcmxtYW4gPGpvbmFz
QGt3aWJvby5zZT4KQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+
CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+ClNp
Z25lZC1vZmYtYnk6IExpdSBZaW5nIDx2aWN0b3IubGl1QG54cC5jb20+Ci0tLQp2Ny0+djg6Ciog
UmVzZW5kIHdpdGggQW5kcnplaidzIGFuZCBKZXJuZWoncyBtYWlsIGFkZHJlc3NlZCB1cGRhdGVk
LgoKdjYtPnY3OgoqIE5vIGNoYW5nZS4KCnY1LT52NjoKKiBSZWJhc2UgdGhlIHNlcmllcyB1cG9u
IHY1LjE3LXJjMS4KKiBTZXQgUEhZIG1vZGUgaW4gLT5tb2RlX3NldCgpIGluc3RlYWQgb2YgLT5w
cmVfZW5hYmxlKCkgaW4gdGhlIG53bC1kc2kKICBicmlkZ2UgZHJpdmVyIGR1ZSB0byB0aGUgcmVi
YXNlLgoqIERyb3AgR3VpZG8ncyBSLWIgdGFnIGR1ZSB0byB0aGUgcmViYXNlLgoKdjQtPnY1Ogoq
IE5vIGNoYW5nZS4KCnYzLT52NDoKKiBObyBjaGFuZ2UuCgp2Mi0+djM6CiogTm8gY2hhbmdlLgoK
djEtPnYyOgoqIEFkZCBHdWlkbydzIFItYiB0YWcuCgogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9u
d2wtZHNpLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9ud2wtZHNpLmMKaW5kZXggZDU5NDU1MDFhNWVlLi44NWJhYjczNzJhZjEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCkBAIC02NjYsNiArNjY2LDEyIEBAIHN0YXRpYyBpbnQg
bndsX2RzaV9tb2RlX3NldChzdHJ1Y3QgbndsX2RzaSAqZHNpKQogCQlyZXR1cm4gcmV0OwogCX0K
IAorCXJldCA9IHBoeV9zZXRfbW9kZShkc2ktPnBoeSwgUEhZX01PREVfTUlQSV9EUEhZKTsKKwlp
ZiAocmV0IDwgMCkgeworCQlEUk1fREVWX0VSUk9SKGRldiwgIkZhaWxlZCB0byBzZXQgRFNJIHBo
eSBtb2RlOiAlZFxuIiwgcmV0KTsKKwkJZ290byB1bmluaXRfcGh5OworCX0KKwogCXJldCA9IHBo
eV9jb25maWd1cmUoZHNpLT5waHksIHBoeV9jZmcpOwogCWlmIChyZXQgPCAwKSB7CiAJCURSTV9E
RVZfRVJST1IoZGV2LCAiRmFpbGVkIHRvIGNvbmZpZ3VyZSBEU0kgcGh5OiAlZFxuIiwgcmV0KTsK
LS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
