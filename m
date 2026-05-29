Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01288CD4F54
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 12:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WdZ7igu+22dW/OFXQv4UvhRjmiJlF3Eq5fNzCMSIpgo=; b=lhd+Xk471dtff6
	ngTL/4VOPC5EFUWGNDqyDtxsE7JgzQEJz6X0lsdCGchCYY93PI0Gol/JGtyo3fxQgBC+/vSMXV3Yg
	TuOpCspao9lUCVgMxBuFW9rVTH+sONgfXDSYYJMPCs8JHj92BL6y/J8BXanydBED7933h+hfTNnJ0
	6NJ9Uj6EeP7YuMXvPct0nGE+7xeYqUyxzOqB7G/vV3GnJMEKcBC7S+kdRW1mHEJVYGXa58kjV8B3I
	DThxVIxWEMu7m4Q9QhVciBs7NR4b109sE1+YH8SR3NPka9bJg3t/Q/85DMOndYWGI4rXKopm3Slpp
	atzEvPz6HtIJpKTLlPzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSwQ0-00000007O91-35ug;
	Fri, 29 May 2026 12:34:28 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSwPy-00000007O8Z-1zEy
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 12:34:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AmeCl+/YdO8cGkpaznMT2EZwnWgf1KYx2H3RcLi666J4rjZlO00iD5p10gDqiLIQRg/y8Rbp20Z5fltDH8eLFBQTrp8AFhc/ZhPPLIwGWYxTuPomvbUgcIYu+ldFEIcD7Ti+3LR+ANtacpNM2CIE6X3kaHmuR7tAo8FNhEVazIBLgyxPq5tDaq36++p6C0onXPE0oPcqFXRkhnI94rU2K+/BDl4PhPQI6glcK7HDO6dWvLmjjWMDpvg///GX3YLg2dvrtVQHGL9NBSxUihSHnKFPG8CHT/kHTmb6lBPP/9vXvoeIiGswDyo/j24TUWztaohLYEEHOhgQFk0cgCPAJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xby6GeTeWhE9c6qdiENhBN7bC/CzKfT8ZcOsDmV7aOA=;
 b=eBrkpNUqnjjvbl8fd7n9L6eqXoonqwGo1zdZIGXvcoN2Il2TF0JT+0/GbDiEvLNGmfSDJCePb/82zh1NyOebWIeZ2vIIFpQiVZMrA41AlAgmd5m78cpUv1GadGdCt0KhCEJ6gvS8CrU/+1WH+BC8C2gpYUUNivFB68uGDCWGFLhqZ56MTr5lgtrXBMvOPN8C+VPBAHfnG3spcQrc98xCDV0N1oltG+SubpblVfLWBfaXEB9eRZ/FdMEiF1juzetwgm15qHU9G0gJgsXfz+2WQ6GCHXYhKbrBvhYHS9n9huaoV++hpNgGdlrc/0aH8U+9k7/eYKLM4DuGAijD9OggKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xby6GeTeWhE9c6qdiENhBN7bC/CzKfT8ZcOsDmV7aOA=;
 b=R0LCvcxl2KjZGHroisbEIwbNRELuAgqgLyETv74l/f884uF6KYV6lz1mN0yJk3UaHolOv9vSmtw2vsGWZ6gyj1/tiRoE629msEVv+30JFIu6aUx2Lxx0jbyRqS/E7ox2XYysnyV17gSrMnk/WrIpyo0aNz79iniHMcGl5JF0Hz4S0ozPNVpmGG7GwyxyKJmmrf/5brnAg67Fjxez59sbl71kDuuqZv/i+Aaira8voQihJTIIf86NrbfvEJemRsTQ6BnkGu2MBG24PIJYdwiVTQjte7ATzB1sn57wQuUyM3/9qzUAeJI/0UwhObZXvNDay1ymXaD5Ll/JREVsuk/qmw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8307.eurprd04.prod.outlook.com (2603:10a6:20b:3e6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Fri, 29 May
 2026 12:34:18 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 12:34:18 +0000
Date: Fri, 29 May 2026 15:34:15 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com,
	vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH phy-next 12/13] phy: lynx-10g: new driver
Message-ID: <20260529123415.pmeau3f33zwj6caw@skbuf>
References: <20260528172404.733196-13-vladimir.oltean@nxp.com>
 <20260528182030.9027B1F000E9@smtp.kernel.org>
Content-Disposition: inline
In-Reply-To: <20260528182030.9027B1F000E9@smtp.kernel.org>
X-ClientProxiedBy: WA1P291CA0003.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::6) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8307:EE_
X-MS-Office365-Filtering-Correlation-Id: ebd462a7-7c11-4403-9e5c-08debd7e9a2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|19092799006|10070799003|1800799024|366016|18002099003|56012099006|4143699003|3023799007|11063799006|6133799003|22082099003;
X-Microsoft-Antispam-Message-Info: JyAUxlmIooMpuXPXIpsGMkeahkqqXF6IH9CegcIR2bikXDEIdt7wn73X0TNPJ9rVMGu+wMyt4vBUekYBseIt/0iTaUQF8D93tXiKrEgY0/7KyNfcDDKuEiPwV5B+nAkGpg0VZEOl0Os2S8f8k+gZfHmDMSH6JGT94fipdOpHmOyyd5ByY47Hd5WIspn2GjopohwO7nFRAudw3KMOlnj/E+15pVY1CXhGKvH1+m9wLpTuvrw/azlLctICWRBykPwoHmi67HwUNru3726cJ81K0qjRZVwz89XBF5kc9Cy5iYlBQOPfcevKq1q9eEO2RsT08F62YsD516yCcmxLl2vTBpralmDR++d/WaKadgIQe5LmIM/F2xa5M3+B2+xxlDexiOb1JImKt5sFK/zP1RigPRqOrlsSiVP4ju7dq4BC9cUC8g7c4eTkWfSuPxuHSxHMi3JWmL/HMIkBE5QsT3rI/GOX0e16JVP1wCajGfusVOBZYBB+8xuBsEmHdxNiUARm8jLcnlfkR8/BdPpdoKhTv2KfWXeTec4f0JgEWwSuagDWe0gl/4UAz7Hssf60XSFfFyd92Lb7VgRwQhQUIawP9i6SKPbjQMp+Uz9GtjfI8to4pLegiXz19VEQPTEqbRFJtvvx78Y8itFKsh4FaEmTfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(10070799003)(1800799024)(366016)(18002099003)(56012099006)(4143699003)(3023799007)(11063799006)(6133799003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?urDZHE4TI9HbBPjBqvDX8VyvpTboUqcIg66EOCO1l0PRE/gi/AR/dAvrt2?=
 =?iso-8859-1?Q?dOuO44FGziiNVvA3MXCY1o26StMPU3BtLJgt+84PSdSjBbbGo9QQDoiz9X?=
 =?iso-8859-1?Q?S1sHvYsCtE9ry9kCOBMj1NC+hO9mi6yWJpGGmY9KqiobT57NxeUEh3DvNq?=
 =?iso-8859-1?Q?6d6QVi56hgxTlyzshSBrSkrJKDyX+nLVZiDH4Aba1gaxTyEP7Rrz7m+N9p?=
 =?iso-8859-1?Q?GoQO6CD6AVa6VpIeWdcjNKNBfZkkl+m46w4pPP4CYLSl6RKLPLs+Gvm5Ug?=
 =?iso-8859-1?Q?TJfKBWcRzI3eILmTdsQ5py17/74KlVv9cFfwvDBmlD54DrXh6Cq+83MRaW?=
 =?iso-8859-1?Q?CG5v1CCVLiJLFGRTPCs7uxS6fDLHx/uL4PbdetAgEo6hf8l/7PV1O7KgS1?=
 =?iso-8859-1?Q?qWzETnNv9n6pV4UloI2DFvRsqPTc7Zn4VMZel90IQ41AQ0Ig8HkUFI0E11?=
 =?iso-8859-1?Q?fp5QDW3JaTnq7XdyA31/byLhGPWt1Td2DmvnZ8O4G1hwmVHAmnFMg7rRqH?=
 =?iso-8859-1?Q?OEVkAfObb6PYRapjtcjx+m8q30Se7DexMxufuU01TnrzmaIqzB/xdF/f+k?=
 =?iso-8859-1?Q?B7+LLyipyUbDSImgXBKqhdxH/mJtMYsvxMTuODFC8Q9YryGZG2NXtDrkox?=
 =?iso-8859-1?Q?bXOoEp/2voqMigD56JN6rKTCHOl4ylix5uAvVA60kOiXzA0KjM9iAhFZnN?=
 =?iso-8859-1?Q?v4sW4DvnsauMtR1EL6a0jp0YwLGkCE2x2QVcdC/sQh+7kOCJZTiHTY6aSd?=
 =?iso-8859-1?Q?cGSclLW9wN3+AjgDflObFzXHIXfaT4v+eMH4qa2uqJcYXLcVQwY3/pe3Tg?=
 =?iso-8859-1?Q?GOa7bWixA9MAfBVBFyhh0zxsK69tGVRZDlebCJ6R3vsVbe4dpihVEQQcU7?=
 =?iso-8859-1?Q?AU2eZ7OMkXwhd6yAl3wZ9I7y+/P++bTSNYJnB8pqOsi/AilkbOIgssgrMm?=
 =?iso-8859-1?Q?L2RddTBjcto7B3/qjZ5CzsoU9h0PxQT5OCUJZmkLh2Y/wwkdCdEuu2xFLk?=
 =?iso-8859-1?Q?T0dqQpmHvzJqTWaG9r9I9zRwh9ZaXkKj3esPjUh3t7yVSojmMp8NfqwAQX?=
 =?iso-8859-1?Q?AeheP/wMIbBf8GBpeT2pS3PUz45bVVXaRovv6vS/HDQYp+7tUVk8r6ZFY0?=
 =?iso-8859-1?Q?pVZJkwVsrr7x9FBkLpqIBmFw5ukITkm6aHJArnVHdC7kCN5DBf659tpUuG?=
 =?iso-8859-1?Q?sAi63YTClNSKpgBqcx05SqbwwxdfyqrefR9Jcp+S8BIuBAGIhpBbx/bk+0?=
 =?iso-8859-1?Q?Eo16sUx5JclxsEufMtVBH6gF9IaUGzASnXkQTRq3VfTJr7Q6L0K8SBUU5e?=
 =?iso-8859-1?Q?2tGrqVeUEbHzADX4UWZiGUzoZXBZg35vjFf2z4E+3xCPLI9ztw9BDNwOig?=
 =?iso-8859-1?Q?jm9ImHJgheMqI+YUoXEUwk/FP6mLHXEepHcM2Ip1BENQ/pDkVc85wlKwfT?=
 =?iso-8859-1?Q?C4XqzQbb0jjaKrcOa2MfZS7s/po3GEEglHz/dUTStLQYOhViQCHIC+b2RM?=
 =?iso-8859-1?Q?5nXjLSbWvgOHKN9QOpUktg+o5sz4Flp05vtJ6nuZ7ct9sQ4e2SlNWk5gDZ?=
 =?iso-8859-1?Q?6sbCT63fYUD3MzUgj3PQOcCyTnIfD2N+5zVoyVfXJQWAcZmiGGjz22nWpz?=
 =?iso-8859-1?Q?Fx8FeVNh6po002ND93OyizRj5YUX55SxlCldqb2M6uz0dw/FwWy5aEc1k/?=
 =?iso-8859-1?Q?Gy3ZQpzsnoed+wbzC9nq7ns/Fe+PkQShCP0ndO0VIeu4lBO/He6XiwKYnH?=
 =?iso-8859-1?Q?AiJrV3KCvfAKRvp2WPQod/rCWW2M+uB8ibqUszw/Cd9ECxirj0iE6+X8ab?=
 =?iso-8859-1?Q?QasQu3w/Wm3arC1p6klWE+cbel5QNWabUVcc9TYyNYJP677aMUG9S7yb48?=
 =?iso-8859-1?Q?cc?=
X-MS-Exchange-AntiSpam-MessageData-1: bzrDSLC5b2rrAW+VkzliHbI0ocDycZMV514=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebd462a7-7c11-4403-9e5c-08debd7e9a2c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 12:34:18.4736
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MwLD3nsRLRQzkcn47rKFBB6gfESVupcmyHSMlg8cNaJbDXDs6gAhf94hoc3lGHsm4FbWRgZbO0KOuYZymJ8f6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8307
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_053426_664034_E0699E3E 
X-CRM114-Status: GOOD (  38.63  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, May 28, 2026 at 06:20:29PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 5 potential issu=
e(s) to consider:
> =

> New issues:
> - [High] Lockless read-modify-write operations on the LNaGCR0 register cr=
eate a data race between asynchronous CDR lock checks and PHY configuration.
> - [Medium] The return value of lynx_10g_lane_enable_pcvt() is discarded w=
hen called inside WARN_ON(), masking hardware configuration failures.
> - [Medium] The return value of lynx_pcvt_rmw() for the CR(0) register is =
completely ignored, masking potential hardware failures.
> - [Medium] lynx_10g_validate() incorrectly permits transitions from LANE_=
MODE_UNKNOWN, which are later rejected by lynx_10g_set_mode().
> =

> Pre-existing issues:
> - [Critical] The delayed work priv->cdr_check may unconditionally re-arm =
itself, leading to a Use-After-Free upon device unbind or module removal.
> --
> =

> commit 8617183053a524e1cbc4453e0e8f8e478c4cf8ef
> Author: Vladimir Oltean <vladimir.oltean@nxp.com>
> =

> phy: lynx-10g: new driver
> =

> Introduce a driver for the networking lanes of the 10G Lynx SerDes
> block, present on the majority of Layerscape and QorIQ (Freescale/NXP)
> SoCs. The consumers use the Generic PHY framework to reconfigure the SerD=
es
> for requested link modes.
> =

> > diff --git a/drivers/phy/freescale/phy-fsl-lynx-10g.c b/drivers/phy/fre=
escale/phy-fsl-lynx-10g.c
> > new file mode 100644
> > index 0000000000000..28b0823574684
> > --- /dev/null
> > +++ b/drivers/phy/freescale/phy-fsl-lynx-10g.c
> > @@ -0,0 +1,1319 @@
> =

> [ ... ]
> =

> > +static void lynx_10g_cdr_lock_check(struct lynx_lane *lane)
> > +{
> > +	u32 tcsr3 =3D lynx_lane_read(lane, LNaTCSR3);
> > +
> > +	if (tcsr3 & LNaTCSR3_CDR_LCK)
> > +		return;
> > +
> > +	dev_dbg(&lane->phy->dev,
> > +		"Lane %c CDR unlocked, resetting receiver...\n",
> > +		'A' + lane->id);
> > +
> > +	lynx_lane_rmw(lane, LNaGCR0, LNaGCR0_RRST_ON, LNaGCR0_RRST);
> =

> [Severity: High]
> Can concurrent modifications to the LNaGCR0 register corrupt its state?
> =

> Since the priv->cdr_check work runs asynchronously, it could call
> lynx_10g_cdr_lock_check() and modify LNaGCR0 at the same time the PHY
> framework calls phy_power_on(), phy_power_off(), or phy_set_mode(). These
> functions also read-modify-write LNaGCR0 without per-lane locking,
> potentially dropping reset or power-down bits.

This is why lynx_cdr_lock_check() acquires &lane->phy->mutex prior to
calling priv->info->cdr_lock_check() (lynx_10g_cdr_lock_check). The
concurrency is blocked, this is a false report.

> [ ... ]
> =

> > +static const struct lynx_info lynx_info_ls1028a =3D {
> > +	.get_pccr =3D ls1028a_get_pccr,
> > +	.get_pcvt_offset =3D ls1028a_get_pcvt_offset,
> > +	.pll_read_configuration =3D lynx_10g_pll_read_configuration,
> > +	.lane_read_configuration =3D lynx_10g_lane_read_configuration,
> > +	.cdr_lock_check =3D lynx_10g_cdr_lock_check,
> =

> [Severity: Critical]
> This is a pre-existing issue, but can the delayed work priv->cdr_check ca=
use
> a use-after-free upon module removal?
> =

> If lynx_cdr_lock_check() unconditionally re-arms itself with
> queue_delayed_work(), cancel_delayed_work_sync() during remove might wait
> for the current execution to finish, only for it to queue itself again.
> After device memory is freed, the newly armed timer would fire and access
> freed memory.
> =

> [ ... ]

I asked an LLM to look at whether cancel_delayed_work_sync() protects
against attempts from the work to reschedule itself, and it looks like
it does.

  The disable count is incremented at the very beginning of the
  cancellation process and decremented just before the function returns.
  Here is the call chain in kernel/workqueue.c:

   1. cancel_delayed_work_sync() calls __cancel_work_sync(work, WORK_CANCEL=
_DELAYED).
   2. __cancel_work_sync() immediately calls:

   1     __cancel_work(work, cflags | WORK_CANCEL_DISABLE);
   2     // where cflags is WORK_CANCEL_DELAYED, so this includes the DISAB=
LE flag.
   3. __cancel_work() performs the increment:
       * It calls work_grab_pending() to claim the work's pending bit.
       * It calls work_offqd_unpack() to read the current state from work->=
data.
       * It calls work_offqd_disable(&offqd), which increments offqd.disabl=
e++.
       * It packs this updated state back into work->data using set_work_po=
ol_and_clear_pending().
   4. __cancel_work_sync() then waits:
       * It calls __flush_work(work, true) to wait for any currently execut=
ing
         instance of the work to finish.
       * Crucially: While it is waiting, if the running work function tries=
 to
         re-queue itself (like lynx_28g_cdr_lock_check does), the
         queue_work logic checks this disable count and fails the
         enqueue.
   5. __cancel_work_sync() performs the decrement:
       * At the end of the function, it checks if it should re-enable the w=
ork:

   1     if (!(cflags & WORK_CANCEL_DISABLE))
   2         enable_work(work);
       * Since cancel_delayed_work_sync passed WORK_CANCEL_DELAYED (which d=
oes
         not include the persistent DISABLE flag), enable_work(work) is cal=
led.
       * enable_work() calls work_offqd_enable(), which decrements the coun=
t back
       to its original value.


The LLM then makes a note that since commit 86898fa6b8cd ("workqueue:
Implement disable/enable for (delayed) work items") from kernel v6.10, a
new disable_delayed_work_sync() API function exists, which as opposed to
cancel_delayed_work_sync(), does not increment the disable count just
for the duration of the function call, but rather, leaves the work
persistently disabled, such that no future attempts to queue it from any
context will succeed. For this case, though, cancel_delayed_work_sync()
vs disable_delayed_work_sync() makes no functional difference, since we
just schedule the delayed work once during probe, and then the only
other reschedule source is itself.

> > +static int lynx_10g_lane_disable_pcvt(struct lynx_lane *lane,
> > +				      enum lynx_lane_mode mode)
> > +{
> > +	struct lynx_priv *priv =3D lane->priv;
> > +	int err;
> > +
> > +	spin_lock(&priv->pcc_lock);
> > +
> > +	err =3D lynx_pccr_write(lane, mode, 0);
> > +	if (err)
> > +		goto out;
> > +
> > +	switch (mode) {
> > +	case LANE_MODE_1000BASEX_SGMII:
> > +	case LANE_MODE_2500BASEX:
> > +		err =3D lynx_pcvt_rmw(lane, mode, CR(1), SGMIIaCR1_SGPCS_DIS,
> > +				    SGMIIaCR1_SGPCS_EN);
> > +		if (err)
> > +			goto out;
> > +
> > +		lynx_pcvt_rmw(lane, mode, CR(0),
> > +			      SGMIIaCR0_RST_SGM_ON | SGMIIaCR0_PD_SGM,
> > +			      SGMIIaCR0_RST_SGM | SGMIIaCR0_PD_SGM);
> =

> [Severity: Medium]
> Could this mask potential hardware failures?
> =

> While the return value of lynx_pcvt_rmw() for the CR(1) register is check=
ed,
> the subsequent call for the CR(0) register discards its return value. If =
the
> register access fails, the error would be swallowed here and similarly in
> lynx_10g_lane_enable_pcvt().

This is intentional. The reasons for which lynx_pcvt_rmw() can fail are
not time-variable, so a single error check is sufficient. If the LLM
looked at the errors being propagated it would have seen they are
because we were unable to get a protocol converter for the lane mode,
which would be a code bug. The "potential hardware failure" being masked
is a hallucination.

> [ ... ]
> =

> > +static int lynx_10g_validate(struct phy *phy, enum phy_mode mode, int =
submode,
> > +			     union phy_configure_opts *opts)
> > +{
> > +	struct lynx_lane *lane =3D phy_get_drvdata(phy);
> > +	enum lynx_lane_mode lane_mode;
> > +
> > +	if (mode !=3D PHY_MODE_ETHERNET)
> > +		return -EINVAL;
> > +
> > +	lane_mode =3D phy_interface_to_lane_mode(submode);
> > +	if (!lynx_lane_supports_mode(lane, lane_mode))
> > +		return -EINVAL;
> > +
> > +	if (lynx_lane_restrict_fixed_mode_change(lane, lane_mode))
> > +		return -EINVAL;
> > +
> > +	if (lynx_10g_lane_mode_needs_rcw_override(lane, lane_mode))
> > +		return -EINVAL;
> > +
> > +	return 0;
> > +}
> =

> [Severity: Medium]
> Should validate() explicitly reject transitions from LANE_MODE_UNKNOWN?
> =

> When a lane is initialized to a non-networking protocol, it defaults to
> LANE_MODE_UNKNOWN. This function permits the transition because
> lynx_10g_lane_mode_needs_rcw_override() returns false. However, when
> lynx_10g_set_mode() subsequently calls lynx_10g_lane_disable_pcvt(),
> the underlying get_pccr() function returns -EINVAL for LANE_MODE_UNKNOWN,
> causing set_mode() to fail.
> =

> [ ... ]

It seems reasonable to reject transitions from LANE_MODE_UNKNOWN in
phy_validate(). First and foremost, the lynx_10g_proto_conf[] registers
will most likely not be sufficient to transition a lane into a supported
protocol. Only supported <-> supported protocol changes have been tested
and should work. I will add a test both here and in lynx-28g.

> > +static int lynx_10g_set_mode(struct phy *phy, enum phy_mode mode, int =
submode)
> > +{
> > +	struct lynx_lane *lane =3D phy_get_drvdata(phy);
> > +	bool powered_up =3D lane->powered_up;
> > +	enum lynx_lane_mode lane_mode;
> > +	int err;
> > +
> > +	err =3D lynx_10g_validate(phy, mode, submode, NULL);
> > +	if (err)
> > +		return err;
> > +
> > +	lane_mode =3D phy_interface_to_lane_mode(submode);
> > +	/* lynx_10g_validate() already made sure the lane_mode is supported */
> > +
> > +	if (lane_mode =3D=3D lane->mode)
> > +		return 0;
> > +
> > +	/* If the lane is powered up, put the lane into the halt state while
> > +	 * the reconfiguration is being done.
> > +	 */
> > +	if (powered_up)
> > +		lynx_10g_lane_halt(phy);
> > +
> > +	err =3D lynx_10g_lane_disable_pcvt(lane, lane->mode);
> > +	if (err)
> > +		goto out;
> > +
> > +	lynx_10g_lane_change_proto_conf(lane, lane_mode);
> > +	lynx_10g_lane_remap_pll(lane, lane_mode);
> > +	WARN_ON(lynx_10g_lane_enable_pcvt(lane, lane_mode));
> =

> [Severity: Medium]
> Does WARN_ON() discard the error code returned by lynx_10g_lane_enable_pc=
vt()?
> =

> Because WARN_ON() evaluates to a boolean, the actual integer error code is
> ignored. If hardware configuration fails, the system might proceed as if
> successful, incorrectly update lane->mode, and leave the driver in an
> inconsistent state.

Intentional. lynx_10g_lane_enable_pcvt() fails for the same reasons as
lynx_10g_lane_disable_pcvt(), reasons which are not time variant.
We already checked lynx_10g_lane_disable_pcvt() above, so there is no
reason to check lynx_10g_lane_enable_pcvt() too, and complicate the
control flow.

> > +
> > +	lane->mode =3D lane_mode;
> > +
> > +out:
> > +	if (powered_up)
> > +		lynx_10g_lane_reset(phy);
> > +
> > +	return err;
> > +}
> =

> -- =

> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260528172404.73=
3196-1-vladimir.oltean@nxp.com?part=3D12

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
