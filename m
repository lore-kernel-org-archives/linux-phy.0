Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA75CD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 11:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4b9iwfmopWxq69iWRmFD4K7nYEggZjzFHvJAwnTMZnY=; b=mOl7MHgqFDmeZR
	DMN4ZdRQHKJHUa0VhAWo7ND5XqtocVtlAmzD9jF2Etvll3RYEsA24C9cavU6GRwbm50BzB9RozOBI
	eZ2NbOMjOtq2VTMsCMfoiDuZCFMH9gzeNYC3gl9Ha99GCAYWfuZYBNCYlV1u+76MtGfn8XH4IRWFt
	zlIoo+jWjj0wxhKFmbe4KwDvStk0q9cqns1zrXUrMbBeNbNftXGm8D6Ojks/IE4/UNXb1tNL8Kw3B
	aPaogq3bPkzBSUtCLP8KKRuhkCUsQZZLDxlGJ6+jm9phJr5NtCK4S0AhrkWf/fgRGUpohowPuxC82
	4dVAYeNzr87tCDSSZw3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdwA-00000009L8N-3Nx7;
	Thu, 11 Jun 2026 11:51:06 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdw6-00000009L7Z-12CX
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 11:51:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oXc1sege80A3XTmSdv6LFI1ZV2a+zG6AaeAVoLgSZIfowSaBZdJifzdqUi2+E7z0SFgN1d/7Tkn9+kvg3JDIRCDjzm9cdEteuUE9h7aSFN6mPSXlLd2CwSQXe8+wDBz/Jqdhr0f8YFhN0FjlBqvQuYLdaxoINJIvIG6OABDXLFbFerBDwT/Tsot9jsObwJLnzDgP93N/smT1VnmLKUiMty9A6LHeNx/NZn40zG4fTbGyRdDhDRNH0rLrvdJmFxOOnWKc6YRjZLLuS7F3I5L/kG8s/fUZCazBXtCp3iuY0umL+Z7Ta8Sdy3EUmytcrMUlVoR5pRm6VDZ4etjs3iGhyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xCWFw2ChSeIk6JKAjS7zyfj2mwIl91aB7XzsuO7jDSw=;
 b=Br38EOO0KlG4ss2/bC3Gz/O3bS8gzjhuDYKMCCzVProp+LsJw+LsMVLQRm8E5vagDSSV+PXup3m8+QZPkYq8su/amtaJznINSbsBLCF4oU/Oum3be8KlgKXRRUS87bobX+T8D34Jp6vyiloKRTT1hlcwOJECkfAEbSPJ0vlxG7+VjAG221BrbglI6ZcOdZ04kFWh1fwQUf/CDyYJUQ55UHRstAgg02apoFiHJI63HYFxSk+WYdPjmpD2QLPVo31QdVkoU5dKEUIB0s0Fmw12h6TUUicp+xA3qmy+FTvkzD/znudKJrjUGO5v1Dsj+a+edLl70qRepqyX2Seb+Z7ohw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xCWFw2ChSeIk6JKAjS7zyfj2mwIl91aB7XzsuO7jDSw=;
 b=B8awhxRPkveWyIWyhe4BRPdyNqAYFwu27ph97PZq4SgMeoqt3j1R/5QdV4XdA13nBRVYDvTp+woJWmEChqSJqLF9FNnSFmFE5lBlqEYTk3utFrvnzv86suNtxKQE8Ru0a9yTgQVlX4Cc9QBAdMuYNU5bJWYrXiHtwDoq7Zl31tJK0RinjSC9NrADlE+qgrVPXJDYDtFhymEU8mMRTf3fOD9xUFRGieP7iV8JcEH4OIYZF12f9jM/+xOE36qOjq5/WGkYx1e+/l5yV5y/vhp7YZagAnVOaCVCcMO83ePHbutxysc2dGK/zNuU5DY5IS2e7DX9Hfx2ZIlHtLfDVGAiPA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by OSMPR04MB11296.eurprd04.prod.outlook.com
 (2603:10a6:e10:93::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Thu, 11 Jun
 2026 11:50:57 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 11:50:55 +0000
Date: Thu, 11 Jun 2026 14:50:51 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 13/16] phy: lynx-28g: improve phy_validate()
 procedure
Message-ID: <ejyiihwfyjbkhotjo7ie2jsods6ky2wycpvkftjopln2yti5zo@vnhsonwglate>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-14-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-14-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR2P281CA0062.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::20) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|OSMPR04MB11296:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a4ca984-a68a-41e8-1a1a-08dec7afb1fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|1800799024|376014|23010399003|56012099006|4143699003|3023799007|11063799006|18002099003|22082099003|27256017;
X-Microsoft-Antispam-Message-Info: dREEv6EC5cmWtW7Ssr1/G7pjLoRjE7mCsXVL17m+ZWI/VR25Qunscj/k7KlAVL426gEXunzxLPgGij/q6bmkfltMZLzwu6SVHkIoAVGUBNMb+sy8cictLjNX8hF25BC+Sr7yEVsKQBBwXqltxGFFK45+1fPcVzQ+63RKQKtSk33t28RKtTTTbg3v28YB9gGKPLU/ygws0FG2UbIydjb8Rk2iR/QmFEN4tj9w2Atc3R3NnkL9d+6Ai+Sw9SKfR9WptGVLlQIYd1F6ZJsJipq6H3gp04g7V2avPA6Z6QZ0Wpk4EzcCbBBCrHfZCQZShalOJAIQ/EdnTueQGjpuAYaKj2dIDV/RGK4VA1domjnvn7E5KYSXl2Y1U3V8eHtG6guhXZUGGLU79UrVUxVG9pPQ1rnEPJu0I6+3gSJFY5CodHxaIXkYcLmGc7XXOtDp/lrTqn972PS4nfoCO9G57i4B7XRlndEjBOO2rHg8Kaqu+itRGonCYRPGlqajN/JGO6GU3CCyNSe/Sp9+m3zp4XtOVGhEwKldRuhXg8FTuzN2uWEJ6qgCkR2cdK+NvjWRuOjP7CpxAkIMZPvjox2jkbPMooMIBWct7kVD8E+CfrObKLXHzGaicNgt867IWlRqsfqRkP7UePc3KJUX0AQINVfJn4BHdesMhQPV5znEKEmLE9Uq17VHLr3CKKESIZTLUuE6D2LkEkA73zFftW6/UtgDEJIcSXtIYJAH7tjG90/pYoNubPmK3f49bJoLWKDmXslT
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(1800799024)(376014)(23010399003)(56012099006)(4143699003)(3023799007)(11063799006)(18002099003)(22082099003)(27256017);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AD35O1KiWxB0AA+tprlJbnQxeU9Pent+AFETYALumrEnGhRQ5lrOdoOsMgIM?=
 =?us-ascii?Q?yjegBhT0jfFIQKCoVgZYPVK4Ewy7UsB4xrgkvfGuGKxrnyM5qpY9Yxye4EfV?=
 =?us-ascii?Q?pC/LWyVVy9wKCrAIsOTKC560H9IrYtlL+Skbiz3zo9r/+lyGggCV/m90zINN?=
 =?us-ascii?Q?og/iqtqsemefjG/oLnITsptzsXNajNOkvWIiK1uJAwXEZ2gECC1lkXEindZm?=
 =?us-ascii?Q?PVb4Q98nJhtX3xotwzyFVagS+lufFzSUYvhaCAdera5/Hbxra7B+XV+CpUAr?=
 =?us-ascii?Q?4xNdkfotE/HbDpkT5NYnYBSn+IUtkX352I8HwycdlkFj/ek39wVAfzYVdEqM?=
 =?us-ascii?Q?KNeeM8ZMfZt/mhVn7HcAIO5WQbZmQ0X+8Hcv6RUJsZGHG6fM6elKCeGAuLbU?=
 =?us-ascii?Q?WqZ3gldv6uQyJJJsZqWxFw/Xxjir/4IMf4MqJn9wEGgYaMF/l76UelY2CBEJ?=
 =?us-ascii?Q?6WyAk8wgczXKkB97JYmq5+PYeLLzeWm88MA522J2pMlL0xRS0NsWjpTeA0Rs?=
 =?us-ascii?Q?udz+h4eGILTxbpvva45Yqt3awDrOBScybYEGiVLfThu2FMp7cb5hZ8w/lGM1?=
 =?us-ascii?Q?ABDhYdfr6a8gwi6UMILSh6k+66BnhQ8yjjYF24BkMOx7I3jL5tK6DrAxmtJk?=
 =?us-ascii?Q?MoHT7LvRysxldwNFEUKcQOaPXEj0UySuoBT3MeV490znnX2CCahajjKU97xb?=
 =?us-ascii?Q?JlfM0WeSbX69tdXPQQN6daold8mvN4R1xuoRhfX3QviYyYmT/H5oMeqw8i6O?=
 =?us-ascii?Q?f3MitM40A1ic5xB8P6WOBK0/uVay6Iak7Gd0cKZpAIfzL9QD7YRHWPCfnR/R?=
 =?us-ascii?Q?Fgitv25liqxc2gtIriRo18czJs16XFGBAhk+WUxvswa2kMqKs31jQA/WqRI3?=
 =?us-ascii?Q?j+LZGUL6Qf6HvFwnB+/pXGqOIkHOVZOXm44tWNWCrtlXcnsNQu2uWi2Qh5tB?=
 =?us-ascii?Q?BixMeNMaoQdTwj3nJsXuVeIYq5YKwMpnwtyStZYH8ewNI9Td9CZEbmvUk/j2?=
 =?us-ascii?Q?VdRAikhsMAyY+XTbUof/aCemXUoBZm0BQJMPp1WFXyfJ/JnvchiJKIiLhhMu?=
 =?us-ascii?Q?1Pg3lmVWU+0U+o2SSfbdLX88ZkuDbKuiX32e4BqEA9B45XC6bUqnrOjewkCG?=
 =?us-ascii?Q?01w3YaYhPJUG5viD8mQQ0rgWsQ813Ms2m1B9CB2vL0dGdjFXhFMrYvx3NgCP?=
 =?us-ascii?Q?Vqfr/k7dcITV/WPhKNoevr55XvpOyd0XhJ2ueH7wANAA4Zj/biDSrctD8L9u?=
 =?us-ascii?Q?offsqeIFrIdGk2YuVlhiLX1stJtMpjv2a9hrQDrO56JRp0FzcDIvwRB4or72?=
 =?us-ascii?Q?IzEixD9KsWVkKZZMTs4YEPRAjAgbaafDs8/3+giTD++r11GjHTJo2lPllUnC?=
 =?us-ascii?Q?M/OnMfdEVY6MyRoFiV32rEhGWI0Mnh4jaV1nM5xRHzCVbS+dK4lRih3qGaI4?=
 =?us-ascii?Q?ZVptRymWQnTbJmbMkwrY88NNkQLEQmeWSLxI/7hej6IfRKSKh9m4prb+3A5b?=
 =?us-ascii?Q?dimQIv3my2bD7MpwwTQx2ri+iREw2wbPMbcwO1s2yDceiPR/1INAQ2UzrC1d?=
 =?us-ascii?Q?ste07avuVguBVZoNDAfHba6xA7NNHRNBLktb5LgyJF+hMBhn58Kp/RhEdt2p?=
 =?us-ascii?Q?g90igjposY7KrAT/ZCYfwF+2WDmgr0mpk95tp6BewcxyAhlGbxxKVp7myGsb?=
 =?us-ascii?Q?NKzIASw1q4FF+aicAk9vm98NzEHIwHnJ5+veqfbgyTJxY35BueZyv0QO26Mx?=
 =?us-ascii?Q?/2p+Nx9Y4A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a4ca984-a68a-41e8-1a1a-08dec7afb1fa
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 11:50:55.3255
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ijtC9/h/CmgDc/rNuOFZ+tiesBp3HUIEG0B+CBugWLG95VW8aFfsP0hUUmrcNihMXoHbEyRFE2u+AfHzRZHTWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSMPR04MB11296
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_045102_293899_3B117C0C 
X-CRM114-Status: GOOD (  17.66  )
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

On Wed, Jun 10, 2026 at 06:19:49PM +0300, Vladimir Oltean wrote:
> lynx_28g_validate() suffers from the following shortcomings:
> 
> - Changing the protocol should not be possible if the source protocol of
>   the lane is unsupported. This is because lynx_28g_proto_conf[] only
>   covers the register deltas between any pair of supported lane modes,
>   but that delta is probably incomplete if the source protocol is, say,
>   PCIe (which is currently assimilated by the driver to
>   LANE_MODE_UNKNOWN).
> 
>   lynx_28g_proto_conf() does refuse changing the protocol if the current
>   one is unsupported, but we shouldn't advertise it via phy_validate()
>   at all.
> 
>   The phy_set_mode_ext() call should perform the exact same
>   verifications as phy_validate() did, in case the caller bypassed
>   phy_validate(). So we need to centralize the logic into a common
>   validation. But lynx_28g_set_mode() later needs the lane_mode that
>   this validation needs to compute anyway, so name the common helper
>   lynx_phy_mode_to_lane_mode() and let it return that lane_mode.
> 
> - Future core sanity checks on phy_validate() will want to differentiate
>   the case where this optional method is not implemented from the case
>   where the mode/submode is really not supported. So we shouldn't return
>   -EOPNOTSUPP from lynx_28g_validate(), but -EINVAL to signal that we do
>   implement the operation:
>   https://lore.kernel.org/linux-phy/aY2lFTIALH7qEJmM@shell.armlinux.org.uk/
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
