Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA87C44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4z/9XP8Gm09JM/o3ofYlfJg6u1SieLjegZMzbVfqYqw=; b=XjO6iitt4uS3qt
	gfiwRjoWx/T7RyQxTOvwE9NFRl9BaSMRviuUFpy2s0doYwPCDwy8cl47Uq5VVmF0ByZ8/5/EeoGBr
	IZt/PZbf3OoC3elGixpHEdrZYs/2ukGp+3tK6r8y5XndRQh30osOJdgMvhMWlMBL/50QFvt4XzAfc
	aI1c9rvk9Ih739WlfLDqz41ujTZ93dONq/ttzw8jpGcmjDENGB3ed4SguvHpDnIkQPECM1wZtOks5
	+JOId8yh2zNJlYSd/SkwAjbx4RIZwoDMlrUKJ2TjrLO+S2taw2GPk5d1tczu6FC2+a+cFVl/0tnf+
	gaHxlQW3ig6JCGD/x2+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmX8q-0000000BvM7-1JBf;
	Wed, 22 Jul 2026 13:37:44 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmX8n-0000000BvLY-3t20
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=bMw0V9fb9Cp+8riohawi3qSk/wwI8ylTID223oQ0L1g=; b=ta/98/TEYyf0q1+SEh5aEx1Aj0
	zh3MlbSwfks7tWo0hY0HJvC2Dq1gIPa2laDN6K6qW7V8xsOFnZvn6Ut1OzX2QB8OA9x+4rMVi3NuG
	5USqsMfvcYPOmH2dwoVIxaUpF7D7QR3o90fIM3PSSnb6cQXwDdJBamWQcTMkB44n12S8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wmX8f-00DdWe-MY; Wed, 22 Jul 2026 15:37:33 +0200
Date: Wed, 22 Jul 2026 15:37:33 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: kr494167@gmail.com
Cc: ioana.ciornei@nxp.com, vladimir.oltean@nxp.com, vkoul@kernel.org,
	neil.armstrong@linaro.org, davem@davemloft.net,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: fsl-lynx-28g: propagate PCVT enable errors
Message-ID: <59053559-8590-4d7f-808f-bff1bbea09e7@lunn.ch>
References: <20260722033619.10647-1-kr494167@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260722033619.10647-1-kr494167@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_063741_972290_362E67C1 
X-CRM114-Status: GOOD (  15.73  )
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

On Wed, Jul 22, 2026 at 09:06:19AM +0530, kr494167@gmail.com wrote:
> From: surendra <kr494167@gmail.com>
> 
> lynx_28g_set_mode() currently ignores failures from
> lynx_28g_lane_enable_pcvt(). It then updates the lane mode and reports
> success even though the protocol converter may remain disabled.
> 
> Propagate the error and leave the previous lane mode intact so the caller
> can handle the failed reconfiguration.
> 
> Fixes: 8f73b37cf3fb ("phy: add support for the Layerscape SerDes 28G")
> Signed-off-by: surendra <kr494167@gmail.com>
> ---
>  drivers/phy/freescale/phy-fsl-lynx-28g.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> index 38afcd081a2a..1fe406adc83c 100644
> --- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
> +++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> @@ -1003,7 +1003,9 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>  
>  	lynx_28g_lane_change_proto_conf(lane, lane_mode);
>  	lynx_28g_lane_remap_pll(lane, lane_mode);
> -	WARN_ON(lynx_28g_lane_enable_pcvt(lane, lane_mode));

A WARN_ON() produces a very noticeable splat, which will aid
debugging. Just returning the error code makes is easy to miss what
causes the issue. Maybe the WARN_ON() should be kept? At least, i
would add justification to the commit message for removing it.

    Andrew

---
pw-bot: cr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
