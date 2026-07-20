Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837CBC44520
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 12:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMNewE/STFWtGm9dc+V9QCf4giuLQGYdMFDvkWLRFns=; b=ZktFmHb1mdmI02
	ZHFSyXeemhtLsoLvEeeJ0uytz4RRI3Mp+GsiBRw5ezkoyY+66zceyPcw/zV07B+t3cT9lV9DcJa2u
	pOjsw9QPtFgWmmnz74QbMdt6zKbFF6pEOGrZJ1AB3vH7VgLfgijInVFnD5hnnqQ5AotKqYorZxVYy
	5umm74+ioNt8qNzRSC7PMr5j1oBP6sfrdipQSuw9i1G0JP00qL1oDIlhE0NZueuPfKavI88eoM7fT
	gc4/o7cI6unvAIU4zapNPQav9LvV+vr78vLKPn+tU0cd/KeytxScpR8Mejs6LxtsANqc5KnB0kxdX
	bmp5Ahqqw6SB97F9OoPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmvJ-00000006fxZ-0wgv;
	Mon, 20 Jul 2026 12:16:41 +0000
Received: from mail-westeuropeazon11010067.outbound.protection.outlook.com ([52.101.69.67] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmvH-00000006fws-3SCZ
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 12:16:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tovnvtvffVX8q5SELsE5BniD5vFfn9I67KBqT3ekqsu/BRWpqbzJFO2q3FRpKVIKECXy4f10Ojh+1fNTxj/NmbHcLb5FlQcvh7pt/1fH0NqJRY9ffpAK1/8FZEy6jiE2PNXYJqsf0kNPKaplpZGIQW+hVOiL5PgeR4YvYXqDMmZhbQJME4VufZKatKs3CfoPbEC+nFeXVFbE1TtGR8haG+HeU36cZ+dfRUOibhjYlx3Ncz6E+MX5lmmRo5cgYEssHvvdtlBXnENnrSXht9jhEMg6un95fTSvxAp7f3ezBHiiEO6fjkfJzCvmcTs3J4/GA8RXEKwsm2Ek/bM9syLEQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tQ/CCW/uknPyao+U/i2vsKGTd7PEi4YMFOwexx6jaBQ=;
 b=l4z/IEdujMF/5lYSCIX9z7Y9WKGbNuLUfdI0Tz2attUlDQAhuvQcqB6FP6oY72JiallczYopFaIjq5XaXINQMLYX7lolFJc2dK3TkCMEXDM/TqpaMBU2ySbRadWK296ZGmtQ2z4Mgciei+xeob1JkQo9zqi0+nr9Xaimm0iol/kL1hw3ZBhS9wIypXWlwmI9zZ7OLLSguFgiSbeGvnJzLBNLYZUvOzEhwcz0YW/cM6S1Ml8yr+Mw5dajDL+HKfZjISuwd6xz9Ov6XZ3/0WKY4CUhcHLYp4o4cbYvSSqGf8TqvbvtC3D210PltOC9DYjnxmT2vZ3g3OmdLbXIMeB+Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQ/CCW/uknPyao+U/i2vsKGTd7PEi4YMFOwexx6jaBQ=;
 b=laAkLraajOqCuymmmEn0gGD0QjLwE5FodjYs8qW3EuOjLY/LbSFxBKGoEbUIkQu/QKi9m3+3+0u34IlpTVXhvYRJ/AiL3uVKRkVD2yNLkUbSXylX+rU6+HEeb2Kd8i8UU4WROyTPNmA8sFGy1btBasPNnwYk3wxQaWsoVOUQz+gQqkh7LITuMyd7A8jhNawW0MMpwrfRrP7CyZtE+5nmXytnojeeXpemJ3molEsF0q3eg8l96M4bGdjPl6YJYg/Jrb3Sz/zXSiVP2C87JuKHdOJG8FuRA4omyTCGPcUJiK7gwivMaPHbbAN1TU6cbVznGdXt1bXWBTcLI+PhhIgQVg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by DU4PR04MB10597.eurprd04.prod.outlook.com (2603:10a6:10:581::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.18; Mon, 20 Jul
 2026 12:16:33 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0223.017; Mon, 20 Jul 2026
 12:16:33 +0000
Date: Mon, 20 Jul 2026 15:16:29 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: kr494167@gmail.com
Cc: ioana.ciornei@nxp.com, vkoul@kernel.org, neil.armstrong@linaro.org,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: fsl-lynx-10g: propagate PCVT enable errors
Message-ID: <20260720121629.4uxzmxqfsek4cxwf@skbuf>
References: <20260720101906.80584-1-kr494167@gmail.com>
Content-Disposition: inline
In-Reply-To: <20260720101906.80584-1-kr494167@gmail.com>
X-ClientProxiedBy: VI1PR08CA0207.eurprd08.prod.outlook.com
 (2603:10a6:802:15::16) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|DU4PR04MB10597:EE_
X-MS-Office365-Filtering-Correlation-Id: ed288dcf-2678-48d7-63f9-08dee658bca2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|366016|1800799024|19092799006|10070799003|376014|10067099003|6133799003|3023799007|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: ZwMq1eLpdihwhmnprX+FnXej56WasMKsMmfE+Um0xTEkbSA/F3YZpiT1oCsW7XutYOftaNYyXTXl4aRGTIh4A5BKWw276iwa7pay4IvoScWVbOTESlzVuK6gCNPCwKgpseiEmihWtDs/YLyP3AkpeBGDhrac8reuMbZ1EI9zrbga5ztWSGFpMPasWGu+XtOvatR2vABbXJ7dH6bMPgkwO+HPup7W1zAUQRTaoG9vV6KwKh1XEsHiMtg+iJ5rqgjdVjw8+LJ1GEiDgElKxZe/F7QGg30VGCguizDPCvnFLkWR/coF2yD2gU1H+yqb5SJSnpUZOPfuS5LGT4iNIjjTbsq4uAk8NRLLWJ3xMbNackULyoflRZO/OtorIkOr2FSRm0I4kmimCPbh8OoYnNrwWDSZ1EgVLc7GTLUzsUyCzXVmNyHacBtW6lFpxp4CGAtBOcntXYFoQcNL4vVY8bOYK2J+IjLcN1xc0FvyHBaUxAWIL5Pee8s2X4WllswQTjQEEC1KDg/MMw86A9+z+V23YVHLzEQJccyOEFhXwkenZB5f5gIYsYdKW7DOMlmPcoWyekbPE2Td9OXBQIq/UvL54rMqH6ACtirbQ7/pEOB60crUBdwDmY9X2gTVmY6z2fa5bvXfHzfU52WeuW4C1GtXaigJVzsLgsp/qiudI1Q0p5A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(19092799006)(10070799003)(376014)(10067099003)(6133799003)(3023799007)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HF+Ta8tJJp7ixzSn1UIwSHeSQ++cRJ5zBk3CO8HAhFUt5dB3UzsTyl/kopXd?=
 =?us-ascii?Q?4HJOiaCEslOZ8ZEJ1HIHTJlvZ4OcGoTJZiTGjqg0p+1CRHt/RFb5DiZ0M66j?=
 =?us-ascii?Q?kqbwDLVF0UR2DWLQ7gYXiPC8kRE8cKXw16F7cQxpx5lvTrf2SllxUpupguwH?=
 =?us-ascii?Q?s/6ATy8dOyAeRne2Q98K9KPkZvb/4ZQt24Sr/LA699iMlytLfkRENFsHk5Cq?=
 =?us-ascii?Q?sARs3TO+6Wt8TyKwYhIAa2Do2J80QRyZ7+wo452uv1f2JF0jjcApoTmf0Rt8?=
 =?us-ascii?Q?jRHEHSFDlM8uKVdKIIRNd8O/EzgQFD4HLOu38Is5pcL003YUN4W7+9eugXlk?=
 =?us-ascii?Q?ajIE+uDlNQRdkmGj1b0rMn+W5M+921XhMFCYUo/Zt4Q9fvNHRCzmueQohyyt?=
 =?us-ascii?Q?qewMlcTKZ0x8ZLpv1L4OjcGjUbwG0RcYNZsyWx8/rgnT0qJHUtQUxK1NvlN5?=
 =?us-ascii?Q?H/EymqS4F6YX8Fb/4Szv3JC5mYSZ/aFAnAeZnjIdCBMvstKEcD17nLjhWJ/N?=
 =?us-ascii?Q?R5p7rWgFmUvkQWc0fQhmNN2Bh0DgtV0cpJatClKMbZKXJygO9Eb4/IHKVxqp?=
 =?us-ascii?Q?b2/qmLCxIXebTEJ6wK5mXxlLTUr0paOJEcfsKHNAJmG1wYzu/qHY60NdBe0M?=
 =?us-ascii?Q?yqfz+8aRUXiN0/fRlbRWdX0BrPUchsY7dO/fAR/0+SEsEJU9VW3lRK58oV9X?=
 =?us-ascii?Q?eWLCRn+Qg6l73p0r7keDTI8WUwdzDXS6OYCTCoQ3BBPQHGYL3jGO3UmuPf0R?=
 =?us-ascii?Q?7sq/DIQ47+D0UXGYnDK+k3GM/IMDeHUBbMSJxaTyJMM9EUJkPRI0Z3gD9ONk?=
 =?us-ascii?Q?dPphUYxxXJpCTpwNO5c0cifUWkRIHmvqbu+Sk69o9HH2iWJa5vdahVhTLKek?=
 =?us-ascii?Q?vQUnQHZNGezfIFynEN2QrHXmF+HkriXX6VsTVsg1D2rEh0iFQaW1agikbT1S?=
 =?us-ascii?Q?3bsAcBoSA603FYUq5Y+umdWAMH9HkFx++JahQF0t+OuaC0kaMq+t2wqGS+Wv?=
 =?us-ascii?Q?Ov6O/NZaDimUknR5dz1uwr2X7JIVXOVjP+QC3lP1zDni57um3ZnGo0YcGN3J?=
 =?us-ascii?Q?ktNQiz5Ix4PZd0H3HuriZHmlIwLCF2Nv4pKCr8+Nw6IRX8d20DCnrwx0gcpN?=
 =?us-ascii?Q?coQizSMxb7h4T0rohooqNqyRsQtGAzVjesWSELsJVoliRiNEu+gXx8inKOI+?=
 =?us-ascii?Q?4IrJQTsmMOzaZG7mfIH50l9pKS3cKoxS8e2m8ILOpdD8lFsAhmuHS8SW6lcS?=
 =?us-ascii?Q?l/Atu2ou9ypsx0Tg4CKZVQoWozvr+XZHBn0jDTVDmJOsfNR+GN5faiiYHugC?=
 =?us-ascii?Q?+/2b6+W5Hl0aCzlIlf9Uhs2kxHtZw6aBn86tEoW5rrFajHiOvPaPZ9PtLTVS?=
 =?us-ascii?Q?D1k2CHNr1CWsF/d8qnT1+gtDP7c/9DuWUSKAA3rUtZcapQXkFgvHNvE+8fX8?=
 =?us-ascii?Q?qHVg47eNrNT0r71iu4s8k+qCLDAkTsmh2HFLW9OSv7Hz07ih5tc8vbU8oTnB?=
 =?us-ascii?Q?vFpdrJ/Oupjeziut2MA8hNvZVLb5sz6oX+Ccr0uBSX+8oPeizQ6eGU/Dp96c?=
 =?us-ascii?Q?0he2GGPZe9/eWYpoLnLwn8/o8kwZ/Wrho6JbhVkbt1igIb7b5b4neFSSqL42?=
 =?us-ascii?Q?jl6DyIEDnYRczJIYsgUx2dIvaPheGoebUzTzIvfrfm8Yk4VLwUHjHjDwKbga?=
 =?us-ascii?Q?5N2V1mchOvBax+a6xPo2Hw4loOXZ5H1oY3khiONh3enszuesgDDxZBxCSRxl?=
 =?us-ascii?Q?jhi0T8dLQUozsZkhW4e4/dIJQhVVDKSP76X2a+MfNUbVgxkB0WTGtRhkfTPN?=
X-MS-Exchange-AntiSpam-MessageData-1: 258JnEajEsnO0g==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed288dcf-2678-48d7-63f9-08dee658bca2
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2026 12:16:33.1297
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xGUZTGXUCyyztY67+PX4kTteaXO5cZidX6o3IUnZxIuu8Lnl5qn8LkWVzgHM6To0/hSCi3w2CrL1+SOvmXaLLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10597
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_051639_885133_4DEA4A77 
X-CRM114-Status: GOOD (  23.54  )
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

Hi Surendra,

On Mon, Jul 20, 2026 at 03:49:06PM +0530, kr494167@gmail.com wrote:
> From: surendra <kr494167@gmail.com>
> 
> lynx_10g_set_mode() currently ignores failures from
> lynx_10g_lane_enable_pcvt(). It then updates the lane mode and reports
> success even though the protocol converter may remain disabled.
> 
> Propagate the error and leave the previous lane mode intact so the caller
> can handle the failed reconfiguration.
> 
> Signed-off-by: surendra <kr494167@gmail.com>
> ---
>  drivers/phy/freescale/phy-fsl-lynx-10g.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-lynx-10g.c b/drivers/phy/freescale/phy-fsl-lynx-10g.c
> index 38def160ef1a..9740b08700c4 100644
> --- a/drivers/phy/freescale/phy-fsl-lynx-10g.c
> +++ b/drivers/phy/freescale/phy-fsl-lynx-10g.c
> @@ -1231,7 +1231,9 @@ static int lynx_10g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> 
>         lynx_10g_lane_change_proto_conf(lane, lane_mode);
>         lynx_10g_lane_remap_pll(lane, lane_mode);
> -       WARN_ON(lynx_10g_lane_enable_pcvt(lane, lane_mode));
> +       err = lynx_10g_lane_enable_pcvt(lane, lane_mode);
> +       if (err)
> +               goto out;
> 
>         lane->mode = lane_mode;
> 
> --
> 2.55.0
>

Thank you for the patch, however you are fixing a situation which will
never occur.

Assume lynx_10g_lane_enable_pcvt(lane, lane_mode) will fail.
It means one of the following functions inside of it returned a negative
return code:
- lynx_pcvt_rmw(lane, mode, ...)
- lynx_pccr_write(lane, mode, ...)

Let's take them one by one.

lynx_pcvt_rmw() fails if priv->info->get_pcvt_offset(lane->id, mode)
returns negative.

lynx_pccr_write() fails if priv->info->get_pccr(mode, lane->id, ...)
returns negative.

Had any of these two functions returned a negative error code, the
execution would not have reached the lynx_10g_lane_enable_pcvt() stage!

The following code path:
lynx_10g_set_mode()
-> lynx_10g_validate()
   -> lynx_phy_mode_to_lane_mode()
      -> lynx_lane_supports_mode()
         -> priv->info->lane_supports_mode() // this is provided for lynx-28g
            OR
         -> lynx_lane_supports_mode_default() // all lynx-10g instances use this
            -> checks priv->info->get_pccr() and
               priv->info->get_pcvt_offset()

already fails much earlier if priv->info->get_pccr() or
priv->info->get_pcvt_offset() return negative (i.e. we don't know how to
handle the requested protocol).

The suggested placement of your error handling is extremely late anyway.
lynx_10g_lane_change_proto_conf() and lynx_10g_lane_remap_pll() have
already been executed, so the lane is reconfigured for the new protocol
and remapped to the new PLL. The "goto out" label doesn't undo that.
This is why I am reluctant to agree with your proposed change - it
doesn't make the code any more correct, it just complicates the handling
and actually makes that impossible case handled *incorrectly* (on
phy_set_mode_ext() failure, you don't expect the PHY to be configured
half way).

It would be very strange to proceed thus far if we didn't first make
sure that the protocol we are switching to is fully supported.

This is why the code has the WARN_ON(). The function _can_ fail, but we
don't need to check more than once for failures on the same mode with
the same protocol, since they are time-invariant.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
