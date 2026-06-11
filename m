Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9E1DCD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAXsKKBYE0hfMcqrfN2BAqQRwSK24pQlmG8ebkjNy/E=; b=O3RWomjOs4CHoo
	mPRw/uGbUuYS63u45+ow7RoqpkuZy4G7f34grzEz9iBQ3vZNqDG3cLW0wt9tFYSt7MBOpqQm65XY/
	IGBZccDs2F75b7qx8OnHr1qGWAF6R5iSHTuxOnlLo9LBAx3UoypBz5pU+v3N86wJYCfNBeWapXzFU
	7w/Ho0SfpbnrkwwvHjkJu8VCuLfkfzvF/pbR63BO7Yg0QzD48q4L3KxRoJIltRb2mxsCWWYSnLRQT
	49+U/iQf7SV8j1KkfmoExN+Hlll/h4e8Kbz2qp8o6at4jNGCDIwA7Vtvurgjz7MXKS1N/FkABVIaA
	KMEdo02WzsRHLTxCc2Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd4G-00000009GFT-30sN;
	Thu, 11 Jun 2026 10:55:24 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd4D-00000009GCK-21Ag
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:55:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TVs/pbTORBoSGxdR1c/YFLKDtsYm5PIYVdO+ZUIQaAY7i0Fq02Jk4sW+Lud5qzrK1bxK5Qf4HxscivB5I5+mlBX4XQNhzjx25WyPmooPxKYw7Ys4mPMk01gXtUlRlwClFpcMC6Yifzd1TWSTShzKIgNaRluu/EATxC3mm1ItBfGeM0Xq+2ujBBi8l+9+VmHBU/USuH8KWmHJhfKhXjVHcyBRSvwBF2QnzF6W8Nsdh4dgjDcswvHVctNA8CQNyrx/k+KErEUWWn+Lsn8iXzsvt+aMEWBQOOePP5pY39OGUymrpn57Cjm0J1thJqKSeejPG067d8Xquxh4Pt7MP8vR5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kkg+EL2JKc5jhu7hozdkheP/olUyTuyY6+nZxM3Zh8A=;
 b=iBacmKnzBtDvHKS5/r9UO1LJJ8YlUJadNNNpT0nrGW65u7255uGtNP/d2Ig3e3svnw/kra/255Km33tNWP0isNMBSzbBqbWME3TQb8P6enIVJ0x2pvsNCTHomr0fccim6PZW83C6hFwByB/NNWvK8YKBXIJpHcJYU0ccGNPfTEiLNLdcHrmIAKQs7FDn/xlG7gXBJX2OIpivMt7koZpMK3xrLQlmgg3cuMv8mfn4sBcbrAAdO4+qehG/Ve5gag+Gfap/2Bfnxig+Np96oH9dLPAN2p+MhBx4hrMm4XPIWwYXRM5zISM0JvVs6wsCo6ceny4yyTwhNYUcxhtmuOn+ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkg+EL2JKc5jhu7hozdkheP/olUyTuyY6+nZxM3Zh8A=;
 b=KA45T222Uc6eSb8WZ/A+/vpdiWK35KwO4P4NtG2WRVLpcfBf8BXLxPQcde38H9aYyvo8WRMYbTom5qlGjq9J3tH0Q9APR+6iNM2+l4CTr2x/7utQ5NALyfWM3Ji0Xqqw+JzgGa8S5wcBLmI2eA2OzF8lHibsr4iZty9byBm1+xf2sriu4hKgTzI1dSDlMBV/EwTfA/bG8DKRwUw/yg+gYxPcik1gqmiV75qNx7+5dazt6XKa3b75M+SexZZspT6nTMj1GZjrlfYma8iKz1k4tVwzvIHFrKRdAbeVSbuzChmA0G2pkeVWL1mut9iiVXToCg8MwEhD3IWQ0NfH+W+IGA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by PAWPR04MB10031.eurprd04.prod.outlook.com
 (2603:10a6:102:38b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 10:55:16 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 10:55:16 +0000
Date: Thu, 11 Jun 2026 13:55:12 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 04/16] phy: lynx-28g: move data structures to
 core
Message-ID: <3khdu5swrkjxv67mmj6dop2banhliajsugmzwwxznsgkcenzsn@geeqo5fwkyve>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-5-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-5-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR4P281CA0083.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::8) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|PAWPR04MB10031:EE_
X-MS-Office365-Filtering-Correlation-Id: 25ddbc8c-0afc-4892-ae53-08dec7a7eba4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|366016|22082099003|18002099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: X8diYPcr86XqgmsAytRvEfWyROPQq5iixWB34/pNhCs4c0VRYg+rGFVKzSSwJIl1MBLC/L2TX193Jb63hkbL2fsSk4wxjaFM6Kwb9kqByP0EoBKRLUTV0jfUm8o8rQDCduTjQ3aO94oUUbEH6J8zMGc6tbXIHtBjN6kDNXND+Uie+NK+ZoGhPcjUoveRQKnVpS76n0KQjVicihMXS9WnvTJ+JpOKx+SkdPgpsN42sHmLjlYPBInsTf72DgqLtfKuMmbMW2BJlcTAs8hXLRgHOLqHz797h6hAmyZvfftP1DbXWCwv91XRUfq9Sd10Ro6w7k37uTxQNTQuV9+BiZwP2nlmLkIUFdB1qG5aU0hE/Dhcn1a2g074iBXJWvvwDM2l7z4LfMWmZMrA06OzCjoE/7SWZVRRC7d8LfB31kNUCEceC5jQmIwhGSjpv9sXBZFmE87/kdp2up6ZC+Uod7dUT5FEBoYFk1pUn7uxU5IOoUaKuXpUwEJ/IGtnYZVnWVGg7MbXQHyzrs1pudZ02hpfeR9d5sXBzoVesmc2On45SUjO1BNQZTZhiiNoJJuYlGpn7GcAwNUyji3WBaVW91iarrGFq2RKZi9q8GSaqV5BjFfZ+y2WH0Fr17X5WHOlL8ZI73gm1eqWlD+xsa9bK3wPEMWEdTumETFYjayKGGbk6Or/1TN1dFYTzvXP+Jget5pC
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(366016)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5cA8cegMN84v8zHAoz61YeEE1mI/lrCZr0aqCSZq0qVVm1Y0AQbimoA3NktO?=
 =?us-ascii?Q?oXgmHTnR4lUy1Q5rweKPN9BSkRjfWOqKOSzKZbBqOh/ImzszOmSqmgG7rRrk?=
 =?us-ascii?Q?+U4c1lImRi/Z5vWG6Y7zPNkeqGEN3T/k8QeXVasp5g41Xo8Li+15aa2O2kZi?=
 =?us-ascii?Q?YXhtFH+ki2QGMB7Vukwew2IPHpwwDAQH8sTJoUGzH06yvrYK2T64ImFa+ugD?=
 =?us-ascii?Q?Dk1fR5PefIu3i2gJCOQkSvGmj6eJT6yTI6VcO2oXAwFjrdTL9Jf9HEFUc9M3?=
 =?us-ascii?Q?/MMouL/ZdQw7EEdi8I2yIDHT+yPTrSbzY84n1M8wtUrMkdtBAwJC+0vPnoEj?=
 =?us-ascii?Q?XfbsEEvEH72sms0r0uf42kFLsaXDhNUp1ARNMb850sHuUhbubd4tLWeRQtlR?=
 =?us-ascii?Q?ltL+dQgrxTXO2QZZqhZnP9u+UTQcs1Tl348jiWl2Pp+tp6sjhy+AZSHUBCNq?=
 =?us-ascii?Q?LAbV80tqr3KDuvB9QjV993hq4RiAbLzrZT4kpx4udjOSbi6Oo2K47PMtq9c9?=
 =?us-ascii?Q?iz3LbmCR0SOLD3KH3z/jBuTu4UJH5GLy4x8woy7Jtvhc1+VtZV9sHM7LiNtE?=
 =?us-ascii?Q?X2e+DhwglqCLnjQZzITfDwQ1f6lT1SI1KSo53CGyPts6rvhytNm4bZg1dSXx?=
 =?us-ascii?Q?15WL8DWl/Oxhfd8Lr/+/Q6QuTMOQAPl/Jv47wji1p9I3L4auqufQeCbdbX5w?=
 =?us-ascii?Q?Z+7uyOWBvw8WjjzTCUMHKJFjPL/EPddFNBhovSYGDk59wO+KExqwEwoskhBD?=
 =?us-ascii?Q?dsiAg1HVv/tPwJgpy/JLU6FZPCB3IGiUsrEAUC6ZIgp95pxxUJXE+Kr7523U?=
 =?us-ascii?Q?mnOpOs1YLbGnppuxyGj5duOUcWL0TR8gDsigsSCe9LVJ2gpl/9PgVeH8PRqZ?=
 =?us-ascii?Q?nUdwZ3clwTb4D0XZv/zn9JVKvIePn1tnadXEpxdcIqLmcbgSDIURsbhkq3KV?=
 =?us-ascii?Q?moGf5wxJ7T1ceNpwyfggqYJvGbZrO+VpRPI8NXgyaZVQ3BMRFuvaQVODhqDm?=
 =?us-ascii?Q?1RRSBQ8kNyZTDIqZSOkTpdiffHaQiybkBEG3I5YypVD3cGQVhViOamfDSJl0?=
 =?us-ascii?Q?n9+wg8xgtEhwID7kVdzGX5XkloipriH4vYYFZBWYmhvz1mQcXYS1vt7F8ukm?=
 =?us-ascii?Q?SM9KXX4zLJUpQezG50EkXt27NrQS9QzIPZFqbyh6rhK4wr8Qiler1Gel7msr?=
 =?us-ascii?Q?BPPoc/qvFOM01G8e7PHF6SQyubGhWYUf0vG7Mn7tTY/b6mCwN/szqYHopwPQ?=
 =?us-ascii?Q?QpVaWi7sS+3sPaG67IAYKPrhOy1N78UfMvSs4esT/vauZrqJ6gBqbbR4Q8BW?=
 =?us-ascii?Q?Xva6v4N2MzYdJzx+Dth0CIqkxMfks68DUzLQfZoU+7mw1EVvW8E8glpg7GoR?=
 =?us-ascii?Q?OQglRao/mTloV5a3f+6Iyqj4f7h5kK/7eqC/EiRGZ0VPrLIeSb0R0HIIDsY7?=
 =?us-ascii?Q?+gqSsNUkLjGMCpYtbug+WND8LpfuOmaAcH2rk8406qaQLamn/Z76fPq+dp9Z?=
 =?us-ascii?Q?V0B3Lyro81uTf4iepvOliW/a1VXrE6PBpRFI+9ghJ6PU7iMkh6uxTvrd6atk?=
 =?us-ascii?Q?j3AEhx0fN/lguOVNvIULC+0xpccQdLLVyNV+kyR6NDLXNB3nksHe5iOWPTnc?=
 =?us-ascii?Q?6N04ZLPZ5uhdWtu9EJu3Lmd9/c2wQ71rtqyODSALlkGG6iRjiqVnjsTQwcdV?=
 =?us-ascii?Q?fKCWGkKJTkwFseUikHfoKTUAqJjtjMkmVD/uRxMC0Z3IEoQZBoEq836snfmY?=
 =?us-ascii?Q?YMem6/zeWw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25ddbc8c-0afc-4892-ae53-08dec7a7eba4
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 10:55:16.1929
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RltIa3khJUGyGOmPH2ck03xGCd2lUUmqN0Q3t4k5NVmmFW5d/tlRMLDHUV/rzShpZz7Q3LztmU0zfH5Vcc9Dlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB10031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_035521_544987_3CA94055 
X-CRM114-Status: GOOD (  12.55  )
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

On Wed, Jun 10, 2026 at 06:19:40PM +0300, Vladimir Oltean wrote:
> The goal is to avoid duplicating the core data structures when
> introducing the new lynx-10g driver.
> 
> We move the following to phy-fsl-lynx-core:
> - struct lynx_28g_pll -> struct lynx_pll. This has some
>   hardware-specific register fields which need to become hardware
>   agnostic (the PLL register layout is different for Lynx 10G), So:
>   - PLLnRSTCTL_DIS(pll->rstctl) becomes !pll->enabled
>   - PLLnRSTCTL_LOCK(pll->rstctl) becomes pll->locked
>   - FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1) becomes pll->frate_sel
>   - FIELD_GET(PLLnCR0_REFCLK_SEL, pll->cr0) becomes pll->refclk_sel
> - struct lynx_28g_lane -> struct lynx_lane
> - struct lynx_28g_priv -> struct lynx_priv
>   - field lane[LYNX_28G_NUM_LANE] has to be dynamically allocated. Not
>     all Lynx 10G SerDes blocks have 8 lanes.
> - LYNX_28G_NUM_PLL -> LYNX_NUM_PLL. This is an architectural constant
>   which is the same for Lynx 10G as well.
> 
> To avoid major noise in the lynx-28g driver, we keep compatibility shims
> (for now) where the old lynx_28g names are preserved, but translate to
> the common data structures.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
