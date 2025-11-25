Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D4C8D0E6C4
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=43T1YC08AoZjt3//n6BZQ9Ui7dC/SIg6lvBaRpzJ4h0=; b=PXZ4pnJVTHUSrO
	C9U0dHqbDRhJ07y5yZg/mk94ZQVgS1sgW+pctqew/vFlUGFB4w4A/5b05YK2AZ5fTgJSunhir6YGS
	TorJGjDU7QzHcsCfRLKXU/hkbTJFPN5dmCGnJy2Ib9OI3A4GBF11pQHKWogze0HzSxEpEIpLCtgjy
	IcgF9LoNWSUDHGhaajA3G1sp+YBfKBojch6GIxfThpRk6FzHTlOBtoSNSSHlKB5hJelQN2dmPd7Do
	ihnXzFIsF8xBbKAb8RKTWXWLJrCTvAYmh7SwmiWaoEeI9EA6VSWR1jrvS91HV9+qOD52jH9g4uQul
	Jd32j1TUhAjX3VZPbKCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYG-0000000DF36-3amb;
	Tue, 25 Nov 2025 11:49:44 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYE-0000000DF1D-3lCV
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y1emZ4qhaDzAgQRI25BgVyoLp8SwROZqJsSH6aciGurVjFJsQD8MKYTaUUIMbzxwZzyFyUL+eKXn8Rkehx0+2XoAt4WURMJ6bHBoM+lUfJesKqD5J/fhWTpCLqpIXFZ97RHVAPp/IcLjcMF54T0DwyBRoEM1X5e1jfHdxhen4HzZFw/PC7851RTxJxv1SqaH/fm3WJDNDpFnDedLy2udh3Ua7KlCTUSbMoPnP7BBoz8djNQhPV9wBbjF9lryN4ptQNHywyapzZ+sdIQtVEU421MC9cHi1nfDaZreor/R3891onMG/BZr7fHhFJ7UEg95x11qXgHjM1zusl5vhiwWlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1rYEbTTXH6h610uN+Om0CDpZ/xLSJU8AZiGHf3hvx7c=;
 b=NhsXymQj57UIsSfDeTNFWXyyTxwTyRrUd2OnTCXvuUQtyB0iYvpzJkbMDH0OmlQKN+dxmsOhJ1DCENlrK77MFV4imTaoNy0uLjyd6WsM4gL937X3FxHJwZggQMYxEMrSo7r9chZKjLV0VrOAXPdux0JKOljEdreQd0AInsp824ag0FeQgYrfA86NnnlZoxrF16knsbF2KLHWNk+CmRjpuL9JcWS8m7ZHpbi1UvGqIS4cEJnjGhzsXQBYVDoi6ePBPmLzoSqZj9nYJkfHqprzxePDWp78hxh+g4rskS66UJ5GJCm2OqzT7zb4cOBWYuxxXqFFTfV8wRrnHvt4mZIxSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1rYEbTTXH6h610uN+Om0CDpZ/xLSJU8AZiGHf3hvx7c=;
 b=EfSgzJd/ctpkzba7DxOTIl1SJ8uyf9fSCol8VZoAdTiy2AjtCWd4DUkbZ1VXVL6waMgAbJQ8SuIisdmp77Ihpq0il6VBmWVdRNp5ELcSuKqe/Ya1/t+oT8aJEEhs/LwPJEw/cBDvrCv0PaV3sfhmUtqorDu9HQtMcteIV1tFGhkrhagOw8NjVPcXwsxr6gcvrj9KEm9KhroSju7QZrDV+EfzHRZ5e1QpVkeoXn6z9M75qNfMFDp6Wnj5qpwCqRMvm3Dw7k5TExh3x/l0RM05DIlKVVGpdh8HvM8VeSS3lsk0KghONVXwgez+bHeH2MOgXs9kkdyoQ69uziG3oLZQXQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:36 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:36 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v5 phy 00/15] Lynx 28G improvements part 1
Date: Tue, 25 Nov 2025 13:48:32 +0200
Message-Id: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f8fc6e3-a9d2-42d3-8025-08de2c18b4d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2vrsnJ1lnRBZ0XYXMdPOFj7/dDU0iN/v1gQxxQ+hv5c7c5MkPWendIdTdNrT?=
 =?us-ascii?Q?WtktyAw89fn9Dka1TvLu0yPtgdTpqKcYmYVAGulVYADMBA0MHk/ZadmMD1I6?=
 =?us-ascii?Q?00IHzj+QeaTCXdfuptGmLxM0chsYES8y1YADG4FeYkYah05zYaSAXVw7blYu?=
 =?us-ascii?Q?u+7bzLY+G/WZHVKQ9Ct1HeEjQEjAfU3sFMvzeHwP52YVmfigfG46iGl82WIw?=
 =?us-ascii?Q?TbVUcTfm5JDrY6oTlAciADsxf1I/sDx2d/bJRB4sIO0dU8o8+PNLZKt1WxKy?=
 =?us-ascii?Q?HxA4v+QK2d7h3YkR3X/x+y5wImQd+T6OrbcxOIb8r+N4m+fAQVWVQ9pnJGQo?=
 =?us-ascii?Q?7BXMzZhg7TbLcG6MG9slM+kOhoI/qsGERCJt8Ben9UEQ655nulSsFIo9NdMs?=
 =?us-ascii?Q?FZLlljilCgN5/rwcAupxXtXowJQn62F06ynJsrfcr6wKvUuIkkpkJbNJA/Q4?=
 =?us-ascii?Q?LMjROkLoUnEqJyogabk7+UhCsLne0IN3X6wuMADR3M3K5q3SK1VCDgFJ9+Kx?=
 =?us-ascii?Q?0bYgywuYe8mPqHUtU242Mh0mlyeIi6fAGmLOYeWV5BHVrU6kXuzyhBDRWytn?=
 =?us-ascii?Q?H7aEGdB/LsfPQQaUX5ET6aGy/bL4fXHvThYuwWrzsJscQxmIliVZLdp5wEYu?=
 =?us-ascii?Q?t6kN3eBdq/zcW/eZ53gBqh/JFvAXs12HH0dIAi8pH3cXvqFS5QQiDSeNnwhE?=
 =?us-ascii?Q?mYiTbeLMMdzdYYeHv0p3POpKQY8uKw50/52QlZyFfiWDWc91dk2ONF2XLLiZ?=
 =?us-ascii?Q?gKYkiRrmpZGsmHHsjiaCRv2dGEJbfBbw8fIt5cPgI+xptOU5VUz2LtBuztTf?=
 =?us-ascii?Q?E6jlJa0UfEoH1x7WLRgSLu0oKrdbj/ogluqcEmo3lRtGkAhe4jOzehQ2PXuL?=
 =?us-ascii?Q?tFLR5py1JbPxL0APhWBl1LCH94v5WBdw58hAK4q58aXzpR3tJWy3Z3Vxt2j0?=
 =?us-ascii?Q?JypClFf3IidU4HVCHNEVHbfKiOeePHACZ1H4oDhOHKRM4lgMfP4kW4F793R7?=
 =?us-ascii?Q?wjNppglVmMMeVVOKjJ3irQ+lR+RzKlwkYm+0gtAWtCsZQ3aWeW6szL1pCRal?=
 =?us-ascii?Q?B9YU2UuXfK3TWuSYO1b6/BX8Nb7O7Ug9wpdUCOPWF+zPkzq6qT4Jgnn7k6jp?=
 =?us-ascii?Q?nCDSQevX1sgJB2/Yug8HLcsdGS3VeB9c/HTa0fTAnpzd386JuJpxU1muBPGr?=
 =?us-ascii?Q?zMsmqceaEq32g2inyhJ1YEYzwnDa4L1a/Fk8gH6vC+r0AFMfO0CorYJpMyN8?=
 =?us-ascii?Q?oVgyT3UGlDW7UUkUt8wSrQW4Tfc5EWw3GYoQy1SSAKVNsbQ+gbSPOekWBw3h?=
 =?us-ascii?Q?G8rAGQ58xcS2Pp9W981U/jbhlcezHubihVR8PovI3bIEThFRgCUKhnvwQfYS?=
 =?us-ascii?Q?0oQPOvbicksE2cjpZPaR1G4Q31Toqj9WWv5Wo66Z5FzQRyY/8yjbopM1A5f5?=
 =?us-ascii?Q?UqFUAPO1/wmUkIxbD9D6miGcpmSKIU8RL790fIVmLCZNOoDnQxlAHg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XwWYk/yK+dvgM6Uk5x8kUsueTnwpxvwKtlgYsAhIcjnV0r6iEHRpYedH8FP8?=
 =?us-ascii?Q?jOXalvLSoK041AuqVxl90q4wed/3ieOdwOZG06pQ0voQp6a/boPWwJ6jxfzf?=
 =?us-ascii?Q?BD9XB8jRVhaKkpHxIhWfK7UQMYuXv35HE0ppbWNXR75/OYoVbtsGBu/jw7Ex?=
 =?us-ascii?Q?J6UJbT4hWGH3Rx2vMFWHwdqd54MimgalR/I0oLs+SvM2RQlhzgl7DC7Dna5c?=
 =?us-ascii?Q?XlEWHrU1n0yg6F/1rpIY8ttDwTUfI43u0VErAHbvSMPmXpPTNEOf7raeg7lr?=
 =?us-ascii?Q?ECOLpfjK+p+eYPfMu66S0Y2qN1Yiu8ID6JfNwAcu32Ma47npxnUESB13suo4?=
 =?us-ascii?Q?pyDzwK97fywv+srhkpi3QHOECojGEk3ORRFh8FqoafBpozDxYV1L6qTF3t30?=
 =?us-ascii?Q?or+ytxbsywcig4hN8AjkaQiCJ+GRRDwnbGf8Zs+kVydL42ytxKhmWPH/WtMb?=
 =?us-ascii?Q?JL4yvRJbA+KPThSrZQT88hD+7Em7ThLACu8Y5S/f1hsSM7xoW09sfctXTDU1?=
 =?us-ascii?Q?jAlyZ2JLI24oMhmGrMjbgzx6gupsI7Mwm+xJJABOUJMVqGBOOcuU0gW7De/D?=
 =?us-ascii?Q?Q8OmzJ886YS0JG8+DFcWmyrmYYGESwkdF9U731GUqDvr54BnA/WQNBrFqsR4?=
 =?us-ascii?Q?Tzkdk9ifW8601nlT1unEIYGhlTdCtwPr7XS+GB/pDI3Irqg8gmqsxjdGvb/z?=
 =?us-ascii?Q?UYIwDzVKXIJfCdPAeKWX7v1ICqqQT/bgJrIuIhFafsD95d9uZij9UpU1XsrQ?=
 =?us-ascii?Q?ZvzH1jWPjU2e5iV14ItDWDUQNM6EsA8mzeSPaGMM5ZTWFK3jKdWC30PdTHkZ?=
 =?us-ascii?Q?KqaTOr1AKVPQr1y4EhOy1Kpu1tkGFCkzQJNNTnkd+GUv+3ftLQm4pWeVys+t?=
 =?us-ascii?Q?JnygmzORmgMkbm6nFPpFkwwVSwxMdKaGWDgGwoLoVfaYIaqXfKQTII/av7IF?=
 =?us-ascii?Q?hdOPE56wfzUorGlljw4dlz0csZY0qHKA7x0ag2rAfACFVYXAeomoxp3aHOwE?=
 =?us-ascii?Q?ddJBG5Qqli+COLBY3tMYL2sUdsPD6SBXwO/RkKSgZeeR+tPMUt7hmOiV4Lp7?=
 =?us-ascii?Q?bwM2QKwX4fzkaOALxl7Jnmy1j9reLK0T3siryfC1oP/C6MiwIk1Ue6UN79zP?=
 =?us-ascii?Q?/oRDyLcG+N7nEH/m8I2R6cQs7B1XNeEwdvuZyARqTqmF1YTE/g45nw2T/Dj5?=
 =?us-ascii?Q?7+3MyuKs6kSTwPnRNYzQLVU7HgTVvyxETYxF5aoaXA/WDoiDYuyb1wULXJWX?=
 =?us-ascii?Q?MiAQvx+XUuG59viNWSoGZ+IbFTOJNowdzfwZxcq9A+dMOL/O8JtKCQfiN632?=
 =?us-ascii?Q?v/26r0TO8dEAXuV2pS6bfr0JH++M2TztGnFYsTlus97LJexpfSqXHt7zetCk?=
 =?us-ascii?Q?2XZZJEYPiFlPcB1lw9kJiUvQBJLdM9B84ljgnb5Pedd6XB8sVYJE8JMUOnji?=
 =?us-ascii?Q?VF6JcdZ3dY2XO4oP1EfvhXcRGdOekzEOqtwbs3C2zUuz3Hxi2JqtJyWC+t3K?=
 =?us-ascii?Q?S8Cd3dg9ydwtDYSA+3vfyT0EsBCFsxduqxxQVw9mYVGACbXJXaSutvSTI7Ew?=
 =?us-ascii?Q?iG764zqKMEA0q0CYhattDPmbj0DjaFYITkiBmnoJatU9RLYEYQyAje0dBNFH?=
 =?us-ascii?Q?ciNYiq6JNApF0ONQNUm+/uI=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f8fc6e3-a9d2-42d3-8025-08de2c18b4d3
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:36.0427
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LlE4JhSdLLb4zbv28v3UFezdu8c4EO/ht+A92jfSG9jZpUb7xuW1EYJh4NJzY+wk7X0PPeSesu6Cr7Vyn+wGrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034942_957293_CE089817 
X-CRM114-Status: GOOD (  14.58  )
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

This is the first part in upstreaming a set of around 100 patches that
were developed in NXP's vendor Linux Factory kernel over the course of
several years.

This part is mainly concerned with correcting some historical mistakes
which make extending the driver more difficult:
- The 3 instances of this SerDes block, as seen on NXP LX2160A, need to
  be differentiated in order to reject configurations unsupported by
  hardware. The proposal is to do that based on compatible string.
- Lanes cannot have electrical parameters described in the device tree,
  because they are not described in the device tree.
- The register naming scheme forces us to modify a single register field
  per lynx_28g_lane_rmw() call - leads to inefficient code
- lynx_28g_lane_set_sgmii(), lynx_28g_lane_set_10gbaser() are unfit for
  their required roles when the current SerDes protocol is 25GBase-R.
  They are replaced with a better structured approach.
- USXGMII and 10GBase-R have different protocol converters, and should
  be treated separately by the SerDes driver.

Compared to v4 here:
https://lore.kernel.org/linux-phy/20251110092241.1306838-1-vladimir.oltean@nxp.com/
I deferred even more work to "part 2", to fit Vinod's suggestion of
removing an unnecessary memset() on lane memory into 15 patches per set.
I also removed Cc: stable, I'll handle that myself after this work is
merged.

Compared to v3 here:
https://lore.kernel.org/linux-phy/20250926180505.760089-1-vladimir.oltean@nxp.com/
there are some new patches, but it overall shrank in size because I
deferred new features to "part 2". Essentially, v4 is like v3, except
with a better plan to handle device tree transitions without breakage,
and with the following patches temporarily dropped:
[PATCH v3 phy 14/17] phy: lynx-28g: add support for 25GBASER
[PATCH v3 phy 15/17] phy: lynx-28g: use timeouts when waiting for
 lane halt and reset
[PATCH v3 phy 16/17] phy: lynx-28g: truly power the lanes up or down
[PATCH v3 phy 17/17] phy: lynx-28g: implement phy_exit() operation

Compared to v2 here:
https://lore.kernel.org/lkml/d0c8bbf8-a0c5-469f-a148-de2235948c0f@solid-run.com/
v3 grew in size due to Josua's request to avoid unbounded loops waiting
for lane resets/halts/stops to complete.

Compared to v1 here:
https://lore.kernel.org/lkml/20250904154402.300032-1-vladimir.oltean@nxp.com/
v2 grew in size due to Josua's request for a device tree binding where
individual lanes have their own OF nodes. This seems to be the right
moment to make that change.

Detailed change log in individual patches. Thanks to Josua, Rob, Conor,
Krzysztof, Ioana, Vinod who provided feedback on the previous version,
and I hope it has all been addressed.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org

Ioana Ciornei (1):
  phy: lynx-28g: configure more equalization params for 1GbE and 10GbE

Vladimir Oltean (14):
  dt-bindings: phy: lynx-28g: permit lane OF PHY providers
  phy: lynx-28g: refactor lane probing to lynx_28g_probe_lane()
  phy: lynx-28g: support individual lanes as OF PHY providers
  phy: lynx-28g: avoid memsetting lane already allocated with kzalloc()
  phy: lynx-28g: remove LYNX_28G_ prefix from register names
  phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg"
    with "val" and "mask"
  phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
  phy: lynx-28g: convert iowrite32() calls with magic values to macros
  phy: lynx-28g: restructure protocol configuration register accesses
  phy: lynx-28g: make lynx_28g_set_lane_mode() more systematic
  phy: lynx-28g: refactor lane->interface to lane->mode
  phy: lynx-28g: distinguish between 10GBASE-R and USXGMII
  phy: lynx-28g: use "dev" argument more in lynx_28g_probe()
  phy: lynx-28g: improve lynx_28g_probe() sequence

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml |   71 +-
 drivers/phy/freescale/phy-fsl-lynx-28g.c      | 1156 +++++++++++++----
 2 files changed, 945 insertions(+), 282 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
