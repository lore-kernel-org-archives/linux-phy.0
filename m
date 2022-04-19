Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37A49C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 01:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+q23EMwSXtSFk3H15y4ORxzJs2cs+ds98EPlU056FAQ=; b=x9gYHV/y8gVkN2
	jTTA6xl40cgV6gZCMmDBiwaI4qhaLgdyv1Tm6qVfEohnWzVkKodGAIkNpN2N2AEhN2WlK/edXTCmB
	7KwCdb2DDo43u2pCW5gT/6A04FltKxAvQNMgEssjMWWnzw3gseAJ8ziCcpfzz3lKGOPthfIi0oeV0
	Fqn1r57JHLZ0/IfJoGMMKj2lno0j3zu32/NKozUdi0K/6zfi0Mk+q9BkYsMdGjaYy4bNZv2A+ui0C
	fprhY8NNYF/wAMLgUoDas9Z/4I56A3X99I+KDlDtVXWjckKudpF+BGlVbwbiVreQEG5yBkFl1yXGT
	ME9QcT/31tjnnn9wyZUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngcLg-0010l7-Ig; Tue, 19 Apr 2022 01:08:08 +0000
Received: from mail-am6eur05on20600.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::600]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngcLF-0010Yt-T6; Tue, 19 Apr 2022 01:07:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pb69xiJIxX8cFiuwer7SDsuDo+KPLcDch+dmcskpgkY0zmFWxrLNjhWOcwmLlTZedLG12le6bkOyjGWCyJ01p4K+oZWdBd4n2jJPAaQommWT2956Ox1/pWHsW9OhvMFVyzIM03FKasD2YXuQQBCIW7MOCTbZnxr34L8O50rxtIqAXMsUvjoHPifpX1Hxy4vJaSciv1EQ+hFhHJpM18Th79Q4X2nlCG7ptm9m13ckyOf7OV+pa9nC4us+cVJ2ROiWSA0BWDepl31DoiTlyx/qLGO70bx/gRqRRxPwCKMz3ZVfsqpU78yD7+Y8gwQXpIGsWUvrTJpeiQcnlyarusHAWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bwVgVujLCDokFEM7c0bPtR5ihAMPkZO/ohpa4ZORM/I=;
 b=FeuHW1JKxXMFH3+ln86M63blQ9nZmwby/iksz50AVfVnSuYOwyqxtrCK21oCvEdwluXIUX761jX5uahwjS+E5cbZb7tECHk5IzjGLB6VOtXYhy3SgXSaKBmxulPRBJR4MimfgP7CtThqdLLstRZlpjzHiFp36iuwRJ9eqs1ke60ptqCb8FEQ5bPgLSxiOgdcEYlTdBPPPqZNFsHMUVaaikrzACSLavC5Z2Xgbpp5mX9cmT2CxB45K/cdFc2QUD53AVPGWp7FzUD1C5nXEu/SNoIE2DuK+MbiAtCvhwIbtvfmzd46Qk7v6BfR5/WczYXxnxYDU0HE9iB5iuJBLaU46A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bwVgVujLCDokFEM7c0bPtR5ihAMPkZO/ohpa4ZORM/I=;
 b=IKkVgLbahvMCiA0jMyjlpqbELaxutbU9Q9GNdP0+5QAd0hLdQKPoekfuKNfduI9rQ8AMRmGr9poCdimuK81TNyI4W3Ogfs2lAwa0W8r+sF0IfiJ25dOH9TU05cUMQ1lpHClcRlnuboPtGG6ctmWguhHr51b400WRsSv0cJLs3bY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by HE1PR04MB3291.eurprd04.prod.outlook.com (2603:10a6:7:18::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Tue, 19 Apr
 2022 01:07:37 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.026; Tue, 19 Apr 2022
 01:07:37 +0000
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
 robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 Rob Herring <robh@kernel.org>
Subject: [PATCH resend v8 4/5] dt-bindings: phy: mixel: mipi-dsi-phy: Add
 Mixel combo PHY support for i.MX8qxp
Date: Tue, 19 Apr 2022 09:08:51 +0800
Message-Id: <20220419010852.452169-5-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220419010852.452169-1-victor.liu@nxp.com>
References: <20220419010852.452169-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2P153CA0023.APCP153.PROD.OUTLOOK.COM (2603:1096:4:190::6)
 To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e0e9c6af-f83a-41c4-e977-08da21a0fe86
X-MS-TrafficTypeDiagnostic: HE1PR04MB3291:EE_
X-Microsoft-Antispam-PRVS: <HE1PR04MB329187A9300EFC69A18ED02998F29@HE1PR04MB3291.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vAFLN096UYyBJi5aSYP4QfS6/e0uF3o/Y//RhB+j0OLp8Y+eqf9Ge1HPerxo5pDEJm6rOBw+uRcIH7dSXc8+OXILtE0TTZxsmSoYQpN1uiqAxt/orFU+IT0H7diziyrku4mHTG4drnRfz/yLTOmuxOUw3F5i9/4A83qm5yZZ0AcdW9wfDoZ9n1L1WTF219DM+1UsdROYw2coUJUUsAqtRy++q1Jx6FAoDjgsqA3Q5gc0tWykKUZpJYacKhjRP5PMD3fJfhLoidAbZGpCONX8FQ+uyENwNWqjRfSTqy2tzdzIzreGqvxcHZa++0uyvGaEFuJqVgmUjgKw8P1W8Z/bbk3vU/eHWiCt9cOPvFgxC4pkgfVZ1AkM9qJEjLsZAdbyv9OPJFGpLqTH9uTeto6eIoFC8TSm5lOhFj8kxI1Fz4OMTX5Xd7h6WNcPbbh/YyQkdtWZinNVo5QTk7uMCfO2Jma6Tb0l9yUKe+2g5dG0Zcm5r002Z7PaqVLtEvgjeZNviA1Jac1xgU37wwWFCTdFetHeT3M9wq1kkBG360xePx4El8vA3KyquJuHbs8zO/qGDt0q0uYumravhkuuLas67I2JbmpqicStEvke5HuN2jGqeFFtFQVbqYMvt1uDdf8oxvkcsxPC2gHgcdubHGmIfxc8OrvTimhpM4nmS4fd6V04/DhD0p8qO6H/Pz1KyzWGNcZfMxo7WKaLuv2rOcGdMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66946007)(508600001)(8676002)(4326008)(86362001)(6486002)(36756003)(52116002)(6512007)(6506007)(6666004)(316002)(66556008)(66476007)(2906002)(26005)(186003)(83380400001)(2616005)(1076003)(5660300002)(7416002)(8936002)(38100700002)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUFFSEdqYkpCYnVyZ3JySmtVK0JvM0VLKzJMT1lvZ21RaHNjaDErNzVMa2hI?=
 =?utf-8?B?Y3Zac1FoNnFmTWFDeXFkRTNtWHczQ1ZKNnJvUlVoVWpDTHJSWU1JeGNncXRz?=
 =?utf-8?B?cXdET0pqUXRKaFB1aHVET2NCYW5PaCtsUzJ0Z1kxOG9yZUNFM1g2Qy82Qm5B?=
 =?utf-8?B?T1R4OUk1TC9ZZmRLaXFSVmFxaERQWjlmTkFFUXkrZVNHUWRteVFoWVBLSHFa?=
 =?utf-8?B?QTRvTEJkYlk1UnYyL0dUb2RQL2t1dlFSQXRWSk5EVDBpajdOWm54T1B4Z0k3?=
 =?utf-8?B?aWNaQ2p0dGtzdngvK3o4QjNEUGdjSklETnpZRURPSk5RdWN6VkgxYmVDNE9E?=
 =?utf-8?B?dm9vU1V4ZVV0enZXQ1Y3Wno1bStCdlRGRSsyQXIwci9qN1FNcGhYTHZOaTdV?=
 =?utf-8?B?YnB4UWZOQmxCQ3ZEVXhvT1BZem5PcHh6TnByS29RMThwRjBQbkdHckFPUkZn?=
 =?utf-8?B?UU1IVkdISkRubURrSDhpQTFaaC9WVFlrZGJJSCs2Ui9CUHFaVm9KdlJzb05u?=
 =?utf-8?B?cXZHOTVNaUwxcVBZaXBrazUyaFIyZGZFaDNPZ05TS1ZLZmdVRC9ZZXpDVU02?=
 =?utf-8?B?M3FFd3FHR3lDbTl4aEJ0UEJmVWRCMVpPZFNSUkZLYXk3Qko5Q0txVGw4V2pT?=
 =?utf-8?B?MTljeFJ0d3cydDA4eklrQXZhaUVXWTFOSlo4cjZFOWM2aHlGZm9hODFoOThu?=
 =?utf-8?B?K09QK2kreEdwai94MFJSNEQzRWJyaTNMMXR5QnJhOTVmNmJxM0NtMXVoRHdr?=
 =?utf-8?B?VlBpSnd1RC9YL1JCWnFkbUNpSlJSMFY1NjNZVU1aSmZXaUlBaVlnQitFaVlR?=
 =?utf-8?B?d1F3cG1XcUw4WHRBQ2wzK0NJYSsySmhLcCtpL1ZNU2IzTnI1ajI5UzRJc1Mr?=
 =?utf-8?B?TDhtd3dSc0tFYktEamh3TVZseE1rUTRLeEUzdU9aWDB2Y2RxK1U4V1dwbmNz?=
 =?utf-8?B?eDUvTTBib3E4ekFIUGdhODQ5R2VOTC8yTW5HYzJaazdsbFJnay8wRVM3ODQ0?=
 =?utf-8?B?NzZoNGowbFdJT0k3bkRuNW91bzc1SVZISHpWNWcrYXNNZTMzVExQdnkyZFI3?=
 =?utf-8?B?bk9pU0syQ29RWlg4em13OStqN21jbnBDdEdCYzllWmdCajRHTWpMSjdsWEtW?=
 =?utf-8?B?d2wrVTdiQ2xoNVVJcG5WTElFRUdLQWhkRzh4RWNKQm1pMW5zb2UvdE5VbzZh?=
 =?utf-8?B?Uk1pYUpZTkRoTy9wRFlkLzZaVVNvajlRTmJ1WVRqSkJzUldDeW5GWmU1RW1v?=
 =?utf-8?B?Y253cGpRQ3BCM2Z1cWFVY1Jlc09KVHlUeXB6S0lOWFZuc3E3YWtDaFBvcXEv?=
 =?utf-8?B?N0RHOFhDRUVzZmdhZnprbGlsOXI1Y2VUMEJURzlvRWRvcmJxa1pqbjhhYm0z?=
 =?utf-8?B?ZUFLYTJCR2wwR2U0ZzFMUVIyU2VXREhLeS9SQjZJU0x0S1RWZGpBSW8rbUFV?=
 =?utf-8?B?akl3eHpSVWx6MXh4M0V3TTJ0SFZQM0V4eVV1UWg0UnlTUC9qNFFGSExmc2xw?=
 =?utf-8?B?U1pLa28zZDhKcjJVS0hMcnNrczhYZjVuNUYyOTQ0T2J6UHJzUmdZdHRvcEJz?=
 =?utf-8?B?dWxzZzdYbUo2S2pxcXlrVTEveThQU0JCUFlIOHVWM1N4TWYwWDg1OWJqRi8y?=
 =?utf-8?B?Q1Nja255bGtxUkIzMnhpdmVGOHcvaDh4ZjF5MmpudGZaL1ArMU1lTWo1V1pL?=
 =?utf-8?B?QlRORy9xQTFHblV6Uk9yZ0R3RHNLQ1VBM0luY0c5VmVxVVA3cWVFQ2lNcnlI?=
 =?utf-8?B?SExBdnRPdFFwZ3ZhVVRRTVVKa3U4bjU3UklGU1hCYlpvTy9nL3QvR2VtMkFI?=
 =?utf-8?B?SDhySUZGcEhMdVJGbTJkNWwwWEpDYWMwQUg5YVk3QWVDVWVyQ2VEajhqeFAv?=
 =?utf-8?B?dkMxWUxqZDVVZ080K3NLeVI2dVQrZ2FsSmo2UUxWeVNpYllpdGtDYlZJeU9z?=
 =?utf-8?B?eXA3cHVZZWhMV3ZCbjZNSnhYeVBlaW80R1NJSFIyZFUxTUxIeklCV2l2T1dy?=
 =?utf-8?B?VTB3ZzhvY0JaVkEvU1d6S2FxRGo2Y2N1bFAwNy9kUHpUbFNqU0cyU01sOE1q?=
 =?utf-8?B?T3pWVjRUeWVsUVVLZEpJNHN3Q2d0WjJLYlRnY2dBV1l4b2p0cTJrOWQvL3ZT?=
 =?utf-8?B?dkNPR3J6WVJpNkpUZVVWZG9Mdk14bUxmRmE4K05zY3RKeTh0Yiszamh2V1Rs?=
 =?utf-8?B?WWczK0ZTQ3BoUWczdm5kaW1iS1VLYVdkZlg0MjcwUUpXTmp4WHJQTC95aTlJ?=
 =?utf-8?B?SHZ1dno4UnhKcFBrY2JtR2lDU1FQZ29FN2N1NnpJV0szcDYxalkzbW5wVXN1?=
 =?utf-8?B?cUwzZkZISCtpbEtoQTdoTDI4MlVjYUUrc1JKazFoQnppV0JXREJCZz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0e9c6af-f83a-41c4-e977-08da21a0fe86
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2022 01:07:37.7272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NvTQ2BlxzOMbW7hBQNV4+9jqo8AhCPyN+QFeM3MCooEQDoe8PHd/IgdeQDUeDbSNIv9QBXZMfhPnqXUxoXVqkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB3291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_180741_996795_54E0E801 
X-CRM114-Status: UNSURE (   9.66  )
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
LmxpdUBueHAuY29tPgotLS0KdjctPnY4OgoqIE5vIGNoYW5nZS4KCnY2LT52NzoKKiBObyBjaGFu
Z2UuCgp2NS0+djY6CiogTm8gY2hhbmdlLgoKdjQtPnY1OgoqIE5vIGNoYW5nZS4KCnYzLT52NDoK
KiBBZGQgUm9iJ3MgYW5kIEd1aWRvJ3MgUi1iIHRhZ3MuCgp2Mi0+djM6CiogTm8gY2hhbmdlLgoK
djEtPnYyOgoqIEFkZCB0aGUgYmluZGluZyBmb3IgaS5NWDhxeHAgTWl4ZWwgY29tYm8gUEhZIGJh
c2VkIG9uIHRoZSBjb252ZXJ0ZWQgYmluZGluZy4KICAoR3VpZG8pCgogLi4uL2JpbmRpbmdzL3Bo
eS9taXhlbCxtaXBpLWRzaS1waHkueWFtbCAgICAgIHwgNDEgKysrKysrKysrKysrKysrKystLQog
MSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRz
aS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWws
bWlwaS1kc2ktcGh5LnlhbWwKaW5kZXggYzM0ZjJlNmQ2YmQ1Li43ODZjZmQ3MWNiN2UgMTAwNjQ0
Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1k
c2ktcGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9t
aXhlbCxtaXBpLWRzaS1waHkueWFtbApAQCAtMTQsMTAgKzE0LDE0IEBAIGRlc2NyaXB0aW9uOiB8
CiAgIE1JUEktRFNJIElQIGZyb20gTm9ydGh3ZXN0IExvZ2ljKS4gSXQgcmVwcmVzZW50cyB0aGUg
cGh5c2ljYWwgbGF5ZXIgZm9yIHRoZQogICBlbGVjdHJpY2FsIHNpZ25hbHMgZm9yIERTSS4KIAor
ICBUaGUgTWl4ZWwgUEhZIElQIGJsb2NrIGZvdW5kIG9uIGkuTVg4cXhwIGlzIGEgY29tYm8gUEhZ
IHRoYXQgY2FuIHdvcmsKKyAgaW4gZWl0aGVyIE1JUEktRFNJIFBIWSBtb2RlIG9yIExWRFMgUEhZ
IG1vZGUuCisKIHByb3BlcnRpZXM6CiAgIGNvbXBhdGlibGU6CiAgICAgZW51bToKICAgICAgIC0g
ZnNsLGlteDhtcS1taXBpLWRwaHkKKyAgICAgIC0gZnNsLGlteDhxeHAtbWlwaS1kcGh5CiAKICAg
cmVnOgogICAgIG1heEl0ZW1zOiAxCkBAIC00MCw2ICs0NCwxMSBAQCBwcm9wZXJ0aWVzOgogICAi
I3BoeS1jZWxscyI6CiAgICAgY29uc3Q6IDAKIAorICBmc2wsc3lzY29uOgorICAgICRyZWY6IC9z
Y2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKKyAgICBkZXNjcmlwdGlvbjog
fAorICAgICAgQSBwaGFuZGxlIHdoaWNoIHBvaW50cyB0byBDb250cm9sIGFuZCBTdGF0dXMgUmVn
aXN0ZXJzKENTUikgbW9kdWxlLgorCiAgIHBvd2VyLWRvbWFpbnM6CiAgICAgbWF4SXRlbXM6IDEK
IApAQCAtNDgsMTIgKzU3LDM4IEBAIHJlcXVpcmVkOgogICAtIHJlZwogICAtIGNsb2NrcwogICAt
IGNsb2NrLW5hbWVzCi0gIC0gYXNzaWduZWQtY2xvY2tzCi0gIC0gYXNzaWduZWQtY2xvY2stcGFy
ZW50cwotICAtIGFzc2lnbmVkLWNsb2NrLXJhdGVzCiAgIC0gIiNwaHktY2VsbHMiCiAgIC0gcG93
ZXItZG9tYWlucwogCithbGxPZjoKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAg
IGNvbXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBjb25zdDogZnNs
LGlteDhtcS1taXBpLWRwaHkKKyAgICB0aGVuOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAg
ZnNsLHN5c2NvbjogZmFsc2UKKworICAgICAgcmVxdWlyZWQ6CisgICAgICAgIC0gYXNzaWduZWQt
Y2xvY2tzCisgICAgICAgIC0gYXNzaWduZWQtY2xvY2stcGFyZW50cworICAgICAgICAtIGFzc2ln
bmVkLWNsb2NrLXJhdGVzCisKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNv
bXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBjb25zdDogZnNsLGlt
eDhxeHAtbWlwaS1kcGh5CisgICAgdGhlbjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGFz
c2lnbmVkLWNsb2NrczogZmFsc2UKKyAgICAgICAgYXNzaWduZWQtY2xvY2stcGFyZW50czogZmFs
c2UKKyAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXM6IGZhbHNlCisKKyAgICAgIHJlcXVpcmVk
OgorICAgICAgICAtIGZzbCxzeXNjb24KKwogYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCiAK
IGV4YW1wbGVzOgotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
