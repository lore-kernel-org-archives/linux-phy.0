Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB5A9C7EE22
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 08:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T52M4Cn0Cvx3a5DCmVLrw4Cs1E34UXdY4sLAXg1lsTY=; b=JJTEU9ua65SBpD
	3G/Eo3zBAT1p1wabiV13UBUE4blcuiiMv+o5yTmaYhTbTLWZoErJSmV1ntyYWSBQcQUTUU4YYljVd
	SLt7dhdEn7xbNKTSzdZfbMkTSOONkRGOZU2YFV0fld0rEiV3Utlm6TqJUVyA5KMphZH+lS/8dJVkJ
	ic0WcdcS5xFCT4DyJPMUF/Mf88uV3FLHR31uCPpxpUOjzkfRrb43bDhmumP4JxDG411jF7UzAbh4a
	q/T+SrNL8BmPVUGebytxu8XaJxYDwzwJS4a3Ikvvpc22IfRAcOEDKzctpJX8yJgeEgHNGPH3rwdM7
	r4AUg7hEBJQQopDUma1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwgD-0001mR-1b;
	Mon, 08 May 2023 08:57:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwg9-0001ls-3A
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 08:57:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 96E71611B6;
	Mon,  8 May 2023 08:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E934C433D2;
	Mon,  8 May 2023 08:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683536228;
	bh=Meh1xApQc6QmTSta1gO0+RVCqEAE22ANCjwMLkHa9uw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q6RKEAml9+DeDNWX19AHwf4Mft837x6caaqvjSRx1PxYR8qxLnyGAMNNZlffItVMt
	 P+9EAX4Y1a42nN6458dqcKgtgcamfp05H5XKjNup5NzTLElDHsTyyFhIISuuKyO5sD
	 8iFJ22+PK02zWmFTxowxLoQ20TUGcqWx2YJIORjk2im8sVw5KhDSPUAM1UFiiSh52O
	 A82jitYfZoByAKxjDk6cwd1fvgFFPRDbb04/5oruplz3txQCF9oY/vvUuf5eaPnTM2
	 71W9Kh2ud4j3kvzVgi+Eg5i1D2HCKVqVBVF6SZfbONYCkPJOIemBcSXXa9xpdMMn8a
	 dIwRn7XOXXmKQ==
Date: Mon, 8 May 2023 14:27:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Haotien Hsu <haotienh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, Wayne Chang <waynec@nvidia.com>,
	EJ Hsu <ejh@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Fix use-after-free issue
Message-ID: <ZFi5XzPjez3lrY49@matsya>
References: <20230504055446.2039372-1-haotienh@nvidia.com>
 <ZFN3lvjjn9Xu-vRl@orome>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZFN3lvjjn9Xu-vRl@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_015710_105783_6399CA42 
X-CRM114-Status: GOOD (  28.08  )
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

On 04-05-23, 11:15, Thierry Reding wrote:
> On Thu, May 04, 2023 at 01:54:46PM +0800, Haotien Hsu wrote:
> > From: EJ Hsu <ejh@nvidia.com>
> > 
> > For the dual-role port, it will assign the phy dev to usb-phy dev and
> > use the port dev driver as the dev driver of usb-phy.
> > 
> > When we try to destroy the port dev, it will destroy its dev driver
> > as well. But we did not remove the reference from usb-phy dev. This
> > might cause the use-after-free issue in KASAN.
> > 
> > Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
> > Cc: stable@vger.kernel.org
> > 
> > Signed-off-by: EJ Hsu <ejh@nvidia.com>
> > Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> > ---
> >  drivers/phy/tegra/xusb.c | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> > index 78045bd6c214..515298a9a433 100644
> > --- a/drivers/phy/tegra/xusb.c
> > +++ b/drivers/phy/tegra/xusb.c
> > @@ -563,13 +563,6 @@ static int tegra_xusb_port_init(struct tegra_xusb_port *port,
> >  
> >  static void tegra_xusb_port_unregister(struct tegra_xusb_port *port)
> >  {
> > -	if (!IS_ERR_OR_NULL(port->usb_role_sw)) {
> > -		of_platform_depopulate(&port->dev);
> > -		usb_role_switch_unregister(port->usb_role_sw);
> > -		cancel_work_sync(&port->usb_phy_work);
> > -		usb_remove_phy(&port->usb_phy);
> > -	}
> > -
> >  	if (port->ops->remove)
> >  		port->ops->remove(port);
> >  
> > @@ -832,6 +825,14 @@ void tegra_xusb_usb2_port_remove(struct tegra_xusb_port *port)
> >  {
> >  	struct tegra_xusb_usb2_port *usb2 = to_usb2_port(port);
> >  
> > +	if (!IS_ERR_OR_NULL(port->usb_role_sw)) {
> > +		of_platform_depopulate(&port->dev);
> > +		usb_role_switch_unregister(port->usb_role_sw);
> > +		cancel_work_sync(&port->usb_phy_work);
> > +		usb_remove_phy(&port->usb_phy);
> > +		port->usb_phy.dev->driver = NULL;
> > +	}
> > +
> 
> It's a bit difficult to tell what exactly changed because of the
> additional move. The move looks correct because this is only valid for
> USB2 ports, but I think it'd be easier to review if the move was done
> prior to the addition of the ->driver clearing. Or perhaps a mention in
> the commit message would be nice.
> 
> It's obviously up to Vinod and Kishon if they want to see this
> clarified. Either way is fine with me, so:

I agree changes need to be clarified, expecting updated v2 :-)

> 
> Acked-by: Thierry Reding <treding@nvidia.com>



-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
