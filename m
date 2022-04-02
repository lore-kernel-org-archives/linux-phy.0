Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6216BC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  2 Apr 2022 05:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83iLNUbPm4s3a2EaZcwYkXiq6ew9NI9kGiHqLx7+6Nk=; b=lexMlvlMOFb2w4
	5Xl8Jc6Q9En6gVqmhOnmOBGqGr9JfGFXl5zU8fF6zDHm95ynjQs5QKPTxhgBjaTro6c5oE+HqJOm1
	fkIByii9Lch7PYLXG+BWqGSMre163pvy8KR827KzFiCMiQtMIg4FzKy7arYJhiLI8B7TCfRuHz9Zf
	FXCTagAYy5D9QWsOBIwle3I4bumz5BHvc5itKB3Vs6bQBmmmirvA1q94/GCxvmg3b/jMWr6MfA08R
	PxOoJuSNzM0l2/7mdikGP7P6VnUQA+KtPlZEyAop0730eV8/hEDTvW3Gm670CgcPjpd246oSJbi0t
	w8Hfkk3EV7yEE+ypt20w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naWFX-0084Pp-O8; Sat, 02 Apr 2022 05:24:35 +0000
Received: from mail-am6eur05on2060f.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::60f]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naWEk-008432-OB; Sat, 02 Apr 2022 05:23:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLR7hqpxBR/fvin7OZsIYvsyhDRXG3Bh5SOoinUYyfarpl01lQHfht1jFeHUfJvNeDlB3QnfGOtJkBEWuR+FAXN7MAR3glgJxniDs5GSMk4SwVMzczaGi8GasvdSXYDZl6aMLp6+8F8poQK9WI6byo/7kaW9Ruf6qXZPV8b5yW4jok1yJxF1kficMXOtC5s7Qh+1cKttSN6yFD/cIkfz7jcNzg/ZInmOKYNHub3CZfEvQqfm9gHyZl6j2pGx6bmkDRqa/24dGwMCGc81NdrCsuZ11ciui0/TjlKjkzBglvo7bomS0zkUPVw2miN8y4/HZFWeHAxR57hhA1LFY6zUjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oGFfS88Z0L9svuW6iyHKRmljyrsYlgWUs4+4IejC1IY=;
 b=kifb6KAOzDsZBjeXAYr5ro4NfiuYCcxcQCQFpdPTQezvAezQxNgpv+iA18/xCKID4KGf/km08m2JpCIaUq6xh2l0Ze1hbs6rN9oOjeVNgmUuoc37Cy2ef8Ni48RYuPgorcMYyNEJLI1vnnjMPeVt+uCNWPvgrcONoRPpY1fPwfjWj2Xa3gHRo27nEsDbqYEKRfxk/cwSvMO/QltumB7R+14912fjZZ10i7iXwnqYUQJtTX8IFnvH9B7y6USZoisp/c8HxPHyLnWgeridoQ5cKohlFKt6uIIztVVl2qgE9DdDKhOskTkbzPUV1EpkNERowC03oRFWAn5Xii3f3fekHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oGFfS88Z0L9svuW6iyHKRmljyrsYlgWUs4+4IejC1IY=;
 b=dxJpuPew0VRKcwF6SGsqQSLwjKZ9nYlXQGtCazPTf+65hs26pSLfJNni3Ytos5BY0nMJ2rjlBPdOMSPKmSpsGRbLJzr1G+6b+Xo4MJkR8DOKz9G3ykYhq4Gr4T3Te9ilpul+kX+xttzm2Zu+G84ynVlkpNDWS9/K9/mA6srOli4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PAXPR04MB8750.eurprd04.prod.outlook.com (2603:10a6:102:20c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.30; Sat, 2 Apr
 2022 05:23:44 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5123.030; Sat, 2 Apr 2022
 05:23:43 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm, robert.foss@linaro.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v6 resend 4/5] dt-bindings: phy: mixel: mipi-dsi-phy: Add
 Mixel combo PHY support for i.MX8qxp
Date: Sat,  2 Apr 2022 13:24:50 +0800
Message-Id: <20220402052451.2517469-5-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402052451.2517469-1-victor.liu@nxp.com>
References: <20220402052451.2517469-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2P153CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::19) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac110f71-a519-4e4b-4e0d-08da1468f466
X-MS-TrafficTypeDiagnostic: PAXPR04MB8750:EE_
X-Microsoft-Antispam-PRVS: <PAXPR04MB87502E50EB028F5C9AE401EE98E39@PAXPR04MB8750.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v8aQYz7VRjX28JWtFD9C+5C63G9/zHYLoRv6VCrm3yDJ559u39qu1CFMxH0kt6ePr24siLj/7LT/YHFpWkfs8Rf4UFqQZ64CUmuSWJ71RWsmwRFJsjAsB9YcsvDp9d5Kda4fuQxS+L4lwIKfqQAItzZfuLiywpcBIuYWAXJOjVA5RSVJHpRYi/IoidXLHQ1XHCAIsr3q/9hrymT2xzmibrDjmsUCh5J/E6Ds0As9mW/gUPPEYFTy9bNv+ih3Snlk5zj/4tqUcBgHK9dsKLzACasymI19TRIBxUtYmioJaWi9BCCHmVFdupkUkEA8ewYmY4K0V28ES3Aa53zxPlwblQRaBTIZ4iQfOVQShBwE6Pl8iFaefWEwftHwG2GbNfFS0XmJvHno/uT2cCmx+Ik8xilfHSDlPNjayEr//J6IQLHFV4CVmNX77AIZ3hhuQmsmcYBX/FeyXHB/PidzgZVNK3vqBBwJc5k7ysWnE2dPKWbdztksVc11GkHHucK8klmPCAJrVnMQeUlp1OGDlZ8R9Efp5LMkLahbllJtNmee6bQNsLS9IHO+V8oa1FM5HmMeVHFpIW5f443UOeggrERNbF3KoC8aXIjOv1eRJo2fQ1jFSIchpfpBZFdsiJYlPYJELtL5HmjAiI7WmBcU2KWhO8wLDD+7QmcLNIAj8c11Iz/l/XDi6lFDUkQ7jf7QQr5X/4tx8XcCb5JakGt5oOqkGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(36756003)(6486002)(83380400001)(316002)(6512007)(52116002)(186003)(26005)(6666004)(6506007)(1076003)(2616005)(508600001)(7416002)(8936002)(86362001)(38100700002)(5660300002)(38350700002)(2906002)(66476007)(66946007)(4326008)(8676002)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjJZdUUvNnBRTzR4VkFGUDlxUXgzMzQ4MUtSakpjVmRES1lyZFBuRzVGTFVP?=
 =?utf-8?B?RGNwaGNqR0tKM2xuSFNJcmlmT0wrNWkwczF2bnVaUjNER2QxQi96bFRxbDBE?=
 =?utf-8?B?SXhDM2M5ajRLWnI3R2h3SStDQVRnT1JjNnFJSlZXc2ZzemZnRkZWd1RsQWx4?=
 =?utf-8?B?NkJhcHR3TytYQVlUMnFkNUxJa25reGJiWHRMZGRaNXpSZW5HSlUvQUYycTZq?=
 =?utf-8?B?bFNKV3c4Y0FjUWttVUVZTVpYRGRKcWhIUXFOdXpSQmpPY01IQlN3UWF6V2FG?=
 =?utf-8?B?aUZ5S0JENXdFQTEvSTk4SzY3TEppdGdMOUtUaWVyb3FpcWVpRTQxL3pFUnUx?=
 =?utf-8?B?aVdybFBaMGc4MHNweFlTWUxWSkoyM0h1YnFJcUpNUFQvRnU3YlFncTcwLzQz?=
 =?utf-8?B?bWg5eTkzc29BemhWanU2dStobGZHRUdnWGtTYlY5VEVpc1VHek1nN2hNc2R2?=
 =?utf-8?B?WUU0UzUyRzRBeWZPOXdLbHNQOC9lWExhaUVpMUFRZFA3UkMxS1cxQVdRZmlV?=
 =?utf-8?B?WS9LRWx6YkF3NzZpS0RCdTl2WWlsaXVMUjdVRVdjSGhTYVprdjVBVzBrbEpG?=
 =?utf-8?B?OEswMGt6RTNTSEpSemg3VTdyeThvdzFvRlk3d1g2Y0syVWhEWVhyc0ZLdjZZ?=
 =?utf-8?B?ZnhRcnNBUEE0dElVc3Npby9ETnlrNjdMZGtBZ1hyUnJ5S3QrTXFuM2ZDMk01?=
 =?utf-8?B?M2xQMEZLUUpzRlVTWXQzVVp3ZndZNW9zbU80Nnd5TThHNTkrRk4rSmNDenNk?=
 =?utf-8?B?QlVQckdlcUJxc25PYVFOcUE4WWtMVHlRRDVaZ1NpQkFRMWo0SWNDU2ZuTUg4?=
 =?utf-8?B?R2dOWDJ0OHB3RFNLZjg2N0JQNHZTYkpHcWR5RVd1M2QvckhJYVJVZ2dkSHBL?=
 =?utf-8?B?S2ZiUU43NENkYjhxOVNQZDY4cjE4MU5RdDdERXVneEN1YlhMdExJSGkzNHJB?=
 =?utf-8?B?d0NoK0pXUkZxbTBlWEtTeVJwck5KZ1AyYlNyN1Q2YlpLTXZ0R2NYOFhqcEcr?=
 =?utf-8?B?REIwc3NGbU5OcXFFU1gzOVc0WHg2R1hxMWo1b0p0WEduNXQzZTlncGN4d2ky?=
 =?utf-8?B?eTZGS3c1dTltdjg2alROcGVvdmpJeUVENnJCYTR2UloyR0s4N0ZTdEJSVWIv?=
 =?utf-8?B?MnRjZ3pvcnpFZERTR2lTdWsrWVhBTGJGcXZZMWFSRzYwaHoyM2J2RHVHOXk4?=
 =?utf-8?B?c21sREFFVEt2WE1jMUVYUFZScGpEdFA5M3BjbFhIbnEyd0dieTlrcnYxSFNr?=
 =?utf-8?B?c255NDM2RElpbVAwQnNPV3JFOHBwNVpHNEZoMm1xbnhnSVV2bTZHa2Mwc0J3?=
 =?utf-8?B?YVBjL1lRam1nT0ZMZFZKeHJ4djBoV3VOb3I1YzBOZWJBOEZBZHRSRmJDcGo2?=
 =?utf-8?B?aGs1dTRNcDhhZ3BkMW9zZllYSWVBajB4d3J3NE1BZEh4UUNVYU5jMGNDc2Ex?=
 =?utf-8?B?Q1ZrL2lCS3ZPcU9mWXpPSnhJVFl4dkw1M0ltM1YycjVRQmd3RU04WER6TG9m?=
 =?utf-8?B?Z3pETU9nOG81bVN6M251VnV1YmFQWlRoZTlJNVFHQkw0Ull2N0FMZjluTkts?=
 =?utf-8?B?Z1JQSVBNRXdHb0RGWi9mVFVSb2RyK01hREtIQWthRHQ4Vk1aNjA2TmpDNURp?=
 =?utf-8?B?NlI5eGovbFdqOHRKcSt4T2JITUhjcjcycGpYN05pRStxOWdYS0dFSUFKcUR6?=
 =?utf-8?B?Q0EwVFZ3Rzc1YXlPc1ZQWFhsSFc5aXkzMmZBZkJKWFRUN3FWblkwelptL3Vt?=
 =?utf-8?B?enpCVm1Rc2lVa0ZoN0xJbmwxOWlZQ25qVmpqSklReUNpclM5S0lVd2p5Qkov?=
 =?utf-8?B?U2JySFkzWVNYWmhFQlZhRW10VVNINkZzN21McnNXbENacUFBUGhBcVZOQUlH?=
 =?utf-8?B?eTNsbkRsQnRkREljYld0R3V5OWFPaURrcU9oMUJiK25TRUQyNkcxM2hCeGsy?=
 =?utf-8?B?dVJsTzYydnJwRzFJZ3EreWkwTWZVOEZBeUp4QWM5MUhHZ1FyN2dadnFRMEdu?=
 =?utf-8?B?YUpPNjcwa0xBanBXOHhkdVc5cnVFSDlqME9DMjZJdW1vNFlJWkJING9CbSs0?=
 =?utf-8?B?U1U5UE9oN3VDcGFjd3RmbWNjY1VoSm9kakdKU2t6VGV5cGRVbWpoWlk3TlJm?=
 =?utf-8?B?My9xYk1KemxueFJqYUpFSit0aWltOWs3OWdjcU9aUUovMmtGcTdYY1lxTzJL?=
 =?utf-8?B?UUp4dUFFS3R3Vkt0em9WN09VZ1IxY25Td0ZRQ2RBOXpKaVd3WFJkNVhEQmRY?=
 =?utf-8?B?TWRVNXh2UURSUmxzcDBmYnNVVjdaVEQvSHh4U2ZGeEM2WlFTQWk5dTEybzd3?=
 =?utf-8?B?WGVyU0tzemNKa3R0NkhGMks5YkNuOGYxTSs3Zlg3MWExUlZZcUdaZz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac110f71-a519-4e4b-4e0d-08da1468f466
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2022 05:23:43.8814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OtLo7ln5a8fFDKzM9iRDS4XB6I/Qe2KZhLkdo0JHiUHCsqO4UxU4+rdeuoT4YtpJHpX63CKiGn/55mMCjrPp7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_222346_820941_76EEDAA5 
X-CRM114-Status: UNSURE (   9.34  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QWRkIHN1cHBvcnQgZm9yIE1peGVsIE1JUEkgRFBIWSArIExWRFMgUEhZIGNvbWJvIElQCmFzIGZv
dW5kIG9uIEZyZWVzY2FsZSBpLk1YOHF4cCBTb0MuCgpDYzogR3VpZG8gR8O8bnRoZXIgPGFneEBz
aWd4Y3B1Lm9yZz4KQ2M6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0aS5jb20+CkNj
OiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgpDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRA
a2VybmVsLm9yZz4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KUmV2aWV3
ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+ClJldmlld2VkLWJ5OiBHdWlkbyBH
w7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgpTaWduZWQtb2ZmLWJ5OiBMaXUgWWluZyA8dmljdG9y
LmxpdUBueHAuY29tPgotLS0KdjUtPnY2OgoqIE5vIGNoYW5nZS4KCnY0LT52NToKKiBObyBjaGFu
Z2UuCgp2My0+djQ6CiogQWRkIFJvYidzIGFuZCBHdWlkbydzIFItYiB0YWdzLgoKdjItPnYzOgoq
IE5vIGNoYW5nZS4KCnYxLT52MjoKKiBBZGQgdGhlIGJpbmRpbmcgZm9yIGkuTVg4cXhwIE1peGVs
IGNvbWJvIFBIWSBiYXNlZCBvbiB0aGUgY29udmVydGVkIGJpbmRpbmcuCiAgKEd1aWRvKQoKIC4u
Li9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnlhbWwgICAgICB8IDQxICsrKysrKysr
KysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
bWl4ZWwsbWlwaS1kc2ktcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS55YW1sCmluZGV4IGMzNGYyZTZkNmJkNS4uNzg2Y2Zk
NzFjYjdlIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L21peGVsLG1pcGktZHNpLXBoeS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnlhbWwKQEAgLTE0LDEwICsxNCwxNCBAQCBk
ZXNjcmlwdGlvbjogfAogICBNSVBJLURTSSBJUCBmcm9tIE5vcnRod2VzdCBMb2dpYykuIEl0IHJl
cHJlc2VudHMgdGhlIHBoeXNpY2FsIGxheWVyIGZvciB0aGUKICAgZWxlY3RyaWNhbCBzaWduYWxz
IGZvciBEU0kuCiAKKyAgVGhlIE1peGVsIFBIWSBJUCBibG9jayBmb3VuZCBvbiBpLk1YOHF4cCBp
cyBhIGNvbWJvIFBIWSB0aGF0IGNhbiB3b3JrCisgIGluIGVpdGhlciBNSVBJLURTSSBQSFkgbW9k
ZSBvciBMVkRTIFBIWSBtb2RlLgorCiBwcm9wZXJ0aWVzOgogICBjb21wYXRpYmxlOgogICAgIGVu
dW06CiAgICAgICAtIGZzbCxpbXg4bXEtbWlwaS1kcGh5CisgICAgICAtIGZzbCxpbXg4cXhwLW1p
cGktZHBoeQogCiAgIHJlZzoKICAgICBtYXhJdGVtczogMQpAQCAtNDAsNiArNDQsMTEgQEAgcHJv
cGVydGllczoKICAgIiNwaHktY2VsbHMiOgogICAgIGNvbnN0OiAwCiAKKyAgZnNsLHN5c2NvbjoK
KyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCisgICAg
ZGVzY3JpcHRpb246IHwKKyAgICAgIEEgcGhhbmRsZSB3aGljaCBwb2ludHMgdG8gQ29udHJvbCBh
bmQgU3RhdHVzIFJlZ2lzdGVycyhDU1IpIG1vZHVsZS4KKwogICBwb3dlci1kb21haW5zOgogICAg
IG1heEl0ZW1zOiAxCiAKQEAgLTQ4LDEyICs1NywzOCBAQCByZXF1aXJlZDoKICAgLSByZWcKICAg
LSBjbG9ja3MKICAgLSBjbG9jay1uYW1lcwotICAtIGFzc2lnbmVkLWNsb2NrcwotICAtIGFzc2ln
bmVkLWNsb2NrLXBhcmVudHMKLSAgLSBhc3NpZ25lZC1jbG9jay1yYXRlcwogICAtICIjcGh5LWNl
bGxzIgogICAtIHBvd2VyLWRvbWFpbnMKIAorYWxsT2Y6CisgIC0gaWY6CisgICAgICBwcm9wZXJ0
aWVzOgorICAgICAgICBjb21wYXRpYmxlOgorICAgICAgICAgIGNvbnRhaW5zOgorICAgICAgICAg
ICAgY29uc3Q6IGZzbCxpbXg4bXEtbWlwaS1kcGh5CisgICAgdGhlbjoKKyAgICAgIHByb3BlcnRp
ZXM6CisgICAgICAgIGZzbCxzeXNjb246IGZhbHNlCisKKyAgICAgIHJlcXVpcmVkOgorICAgICAg
ICAtIGFzc2lnbmVkLWNsb2NrcworICAgICAgICAtIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMKKyAg
ICAgICAgLSBhc3NpZ25lZC1jbG9jay1yYXRlcworCisgIC0gaWY6CisgICAgICBwcm9wZXJ0aWVz
OgorICAgICAgICBjb21wYXRpYmxlOgorICAgICAgICAgIGNvbnRhaW5zOgorICAgICAgICAgICAg
Y29uc3Q6IGZzbCxpbXg4cXhwLW1pcGktZHBoeQorICAgIHRoZW46CisgICAgICBwcm9wZXJ0aWVz
OgorICAgICAgICBhc3NpZ25lZC1jbG9ja3M6IGZhbHNlCisgICAgICAgIGFzc2lnbmVkLWNsb2Nr
LXBhcmVudHM6IGZhbHNlCisgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzOiBmYWxzZQorCisg
ICAgICByZXF1aXJlZDoKKyAgICAgICAgLSBmc2wsc3lzY29uCisKIGFkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQogCiBleGFtcGxlczoKLS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
