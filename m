Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E848C4167B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 22:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MHBn+ol96pq7JJ0hNb7+JriN0LOBhBdQRhBcsMAwMw=; b=F6UqS4EVAtYr88
	YalQ121zS2oll9xGI8Y2G5+Xmlq7l6d4Agh4t9ScSj0Z2336ztW3s/42KnF26VgQhedZl8hkUanBM
	sFn65VN+GLCaZkdxHNk3D650j+ntKJ/qO78kpqaMe3ywFzmc8nJsqm8DS3Eg/XbcMrp+SKHS5+Us9
	Ta9QkID1LLg+1K5akeuqXVER1ejo/Q62b6tm6n0gTtQsrnFPhtVq9Xat5WyVms5/RqloXSztJf/sN
	g81pp16+nYa6gpi+a1jNhswXZG9OPv36HuwOmoFAk60d/rx+nRU/1DITB7EHi1lNtQsDZWdL+S6Iu
	oUnHqrvxlXuqwAOpmMLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAIOA-00Gq4t-Jh; Tue, 27 Dec 2022 22:25:38 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAINy-00Gpzz-4V; Tue, 27 Dec 2022 22:25:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 113C42F4;
	Tue, 27 Dec 2022 14:26:00 -0800 (PST)
Received: from slackpad.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC9FA3F663;
	Tue, 27 Dec 2022 14:25:16 -0800 (PST)
Date: Tue, 27 Dec 2022 22:23:30 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org, Vinod Koul
 <vkoul@kernel.org>, kishon@kernel.org, wens@csie.org,
 jernej.skrabec@gmail.com, wsa+renesas@sang-engineering.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 5.10 1/7] phy: sun4i-usb: Add support for the
 H616 USB PHY
Message-ID: <20221227222330.5ebdf780@slackpad.lan>
In-Reply-To: <530561e9-9ef8-7c8c-8e73-838c86a92266@sholland.org>
References: <20221227203512.1214527-1-sashal@kernel.org>
	<530561e9-9ef8-7c8c-8e73-838c86a92266@sholland.org>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_142526_654336_57B71546 
X-CRM114-Status: GOOD (  28.98  )
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

On Tue, 27 Dec 2022 15:58:16 -0600
Samuel Holland <samuel@sholland.org> wrote:

> Hi Sasha,
> 
> On 12/27/22 14:35, Sasha Levin wrote:
> > From: Andre Przywara <andre.przywara@arm.com>
> > 
> > [ Upstream commit 0f607406525d25019dd9c498bcc0b42734fc59d5 ]
> > 
> > The USB PHY used in the Allwinner H616 SoC inherits some traits from its
> > various predecessors: it has four full PHYs like the H3, needs some
> > extra bits to be set like the H6, and puts SIDDQ on a different bit like
> > the A100. Plus it needs this weird PHY2 quirk.
> > 
> > Name all those properties in a new config struct and assign a new
> > compatible name to it.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > Reviewed-by: Samuel Holland <samuel@sholland.org>
> > Link: https://lore.kernel.org/r/20221031111358.3387297-5-andre.przywara@arm.com
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > Signed-off-by: Sasha Levin <sashal@kernel.org>
> > ---
> >  drivers/phy/allwinner/phy-sun4i-usb.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
> > index 651d5e2a25ce..230987e55ece 100644
> > --- a/drivers/phy/allwinner/phy-sun4i-usb.c
> > +++ b/drivers/phy/allwinner/phy-sun4i-usb.c
> > @@ -974,6 +974,17 @@ static const struct sun4i_usb_phy_cfg sun50i_h6_cfg = {
> >  	.missing_phys = BIT(1) | BIT(2),
> >  };
> >  
> > +static const struct sun4i_usb_phy_cfg sun50i_h616_cfg = {
> > +	.num_phys = 4,
> > +	.type = sun50i_h6_phy,
> > +	.disc_thresh = 3,
> > +	.phyctl_offset = REG_PHYCTL_A33,
> > +	.dedicated_clocks = true,
> > +	.phy0_dual_route = true,
> > +	.hci_phy_ctl_clear = PHY_CTL_SIDDQ,
> > +	.needs_phy2_siddq = true,  
> 
> This will fail to compile without b45c6d80325b ("phy: sun4i-usb:
> Introduce port2 SIDDQ quirk"). However, like Andre mentioned in
> reference to the devicetree updates[1], we were not expecting any of
> these patches to be backported. Since you already dropped the DT
> portion, there is no need to bother with these two patches either.

Well, definitely not for 5.4 and 5.10, since the essential pinctrl and
clock patches for the H616 were only added in 5.12, so there is no
point in having USB support.

I don't know how useful it is for 6.0, but having both patches in 6.1
would make some sense, since it's an LTS kernel. The H616 SoC became
usable in 6.0, with the USB patches being delayed back then. And it's
only those two that are missing from enabling USB support, IIRC.
The DT part is not really relevant, since you can always use U-Boot's
DT (recommended) or the DT from any newer kernel.

So from an user's perspective, it would be very helpful to just have:
- [PATCH AUTOSEL 6.1 12/28]
- [PATCH AUTOSEL 6.1 13/28]
Personally I would support this, since it makes all H616 based devices
much more usable with next year's distribution kernels.

I don't know if this fulfils the stable kernel rules, though, since
strictly speaking they don't fix anything, but add (USB) support to a
new SoC. Then again they are little risk, since most of the code is
guarded by H616 filters, so wouldn't be used by other SoCs.

Cheers,
Andre

> 
> Regards,
> Samuel
> 
> [1]: https://lore.kernel.org/lkml/20221220000115.19c152fe@slackpad.lan/
> 
> > +};
> > +
> >  static const struct of_device_id sun4i_usb_phy_of_match[] = {
> >  	{ .compatible = "allwinner,sun4i-a10-usb-phy", .data = &sun4i_a10_cfg },
> >  	{ .compatible = "allwinner,sun5i-a13-usb-phy", .data = &sun5i_a13_cfg },
> > @@ -988,6 +999,7 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
> >  	{ .compatible = "allwinner,sun50i-a64-usb-phy",
> >  	  .data = &sun50i_a64_cfg},
> >  	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
> > +	{ .compatible = "allwinner,sun50i-h616-usb-phy", .data = &sun50i_h616_cfg },
> >  	{ },
> >  };
> >  MODULE_DEVICE_TABLE(of, sun4i_usb_phy_of_match);  
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
