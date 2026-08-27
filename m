Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B764C61DC4
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 15:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOripSYTRkzSB8kdZ2Z3PqiXG/2xj0q2d2tN71QI5So=; b=sF3klEnI4ng8VR
	4dtI77HMncAdL7m0WKXEBCRuV6ZTrwN8eCC7AOOhrW15ARKmXLeA8zMXO01jMyLxK5tS9EVRREICH
	Rjj8KSS4QTvDgSn1olS5RWsSzZRgJpVrIfFDMKXHvbmVw5qm4nO0g4NdOt6P9XUlsuHMN25EHCH93
	9r7XpfL+2hhAnulQc+fXnmnW2N/6RsYTE9xDw11nlgnk8ji5GYXL+8efN+1pr1wWrUIbIoFtjp9oo
	ZEl/HY2HlsUvZdD4C8U/zFy/Ji+0Eztnrl4/HhhEt2R/5bjwRy/44Cf2w+dLI1nNXMQtE8ozkLj8W
	BufnSTNj7Wexmg4yvkOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzcOU-00000004HIc-3Mu2;
	Thu, 27 Aug 2026 15:51:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzcOS-00000004HIT-2edf
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 15:51:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 167AD601F2;
	Thu, 27 Aug 2026 15:51:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D99531F000E9;
	Thu, 27 Aug 2026 15:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787845913;
	bh=aovq1KkciW0KDIYSdKHZRe3g2cVVyF8GtFj742+JzQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BxEiR5+9bnkkKD7WsnInpGQssDcg+5I44XpMJJNvkD+t8EzRlWK+gMhEKfuWVK5aC
	 TI5LRHxPfyRrIGhgsXDlKneH9BMurbymrhO60lXVjHf+x2aFsPMx7LzWvWqRt8U8LI
	 2duPLcdn91mVYO/OYPMXFpDk7I9zkqSTYLV6hwFh6nyqh592sgtPORsoWUxseBndaM
	 z+T6YBaHBKtvdujXi8xDC7/cvAikMaJGTvj9ich6BmoLyKEV5HpuroDXHvNZ83554Z
	 KFTB29RgoeiIYlq6K8/XGwPHhqMG511gxTtW46IbMBtJMiRZkgos1JsnZiKHFBf+GR
	 FUzbjQyev9Epw==
Date: Thu, 27 Aug 2026 21:21:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: omap-usb2: add explicit PHY comparator API
Message-ID: <apBdFetctMKBH-iT@vaman>
References: <20260722053618.602702-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260722053618.602702-1-ivo.g.dimitrov.75@gmail.com>
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

On 22-07-26, 08:36, Ivaylo Dimitrov wrote:
> The existing omap_usb2_set_comparator() API locates the OMAP USB2 PHY
> instance by calling usb_get_phy(USB_PHY_TYPE_USB2), assuming there is a
> single USB2 PHY registered in the system.
> 
> This assumption no longer holds on systems with multiple USB2 PHY
> providers. In such cases, the global lookup may return a different USB2
> PHY instance, causing the OMAP driver to perform an invalid container_of()
> conversion when accessing its private data.
> 
> Introduce omap_usb2_set_phy_comparator(), allowing callers to explicitly
> specify the OMAP USB2 PHY instance to associate with a phy_companion.
> The new helper validates that the supplied USB PHY is an OMAP USB2 PHY
> before accessing its private data.

Well the name can cause ambiguity with old API. Second I would like to
see users of this API as well

> 
> The existing omap_usb2_set_comparator() API is kept unchanged for
> existing users.
> 
> 
> Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> ---
>  drivers/phy/ti/phy-omap-usb2.c | 32 ++++++++++++++++++++++++++++++++
>  include/linux/phy/omap_usb.h   |  7 +++++++
>  2 files changed, 39 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
> index 1eb252604441..ac31b693fce7 100644
> --- a/drivers/phy/ti/phy-omap-usb2.c
> +++ b/drivers/phy/ti/phy-omap-usb2.c
> @@ -70,6 +70,8 @@ struct omap_usb {
>  
>  #define	phy_to_omapusb(x)	container_of((x), struct omap_usb, phy)
>  
> +static int omap_usb_set_host(struct usb_otg *otg, struct usb_bus *host);
> +
>  struct usb_phy_data {
>  	const char *label;
>  	u8 flags;
> @@ -113,6 +115,36 @@ int omap_usb2_set_comparator(struct phy_companion *comparator)
>  }
>  EXPORT_SYMBOL_GPL(omap_usb2_set_comparator);
>  
> +/**
> + * omap_usb2_set_phy_comparator() - associate a comparator with an OMAP USB2 PHY
> + *
> + * @omap_phy: OMAP USB2 PHY instance
> + * @comparator: companion PHY providing comparator operations
> + *
> + * The phy companion driver should call this API with the companion PHY
> + * implementation containing the callbacks required by @omap_phy.
> + *
> + * For use by phy companion drivers.
> + */
> +int omap_usb2_set_phy_comparator(struct usb_phy *omap_phy,
> +				 struct phy_companion *comparator)
> +{
> +	struct omap_usb	*phy;
> +
> +	if (!omap_phy)
> +		return -EINVAL;
> +
> +	if (WARN_ON(!omap_phy->otg ||
> +		    omap_phy->otg->set_host != omap_usb_set_host))
> +		return -EINVAL;
> +
> +	phy = phy_to_omapusb(omap_phy);
> +	phy->comparator = comparator;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(omap_usb2_set_phy_comparator);
> +
>  static int omap_usb_set_vbus(struct usb_otg *otg, bool enabled)
>  {
>  	struct omap_usb *phy = phy_to_omapusb(otg->usb_phy);
> diff --git a/include/linux/phy/omap_usb.h b/include/linux/phy/omap_usb.h
> index e23b52df93ec..96f9792c6ce6 100644
> --- a/include/linux/phy/omap_usb.h
> +++ b/include/linux/phy/omap_usb.h
> @@ -15,11 +15,18 @@
>  
>  #if defined(CONFIG_OMAP_USB2) || defined(CONFIG_OMAP_USB2_MODULE)
>  extern int omap_usb2_set_comparator(struct phy_companion *comparator);
> +extern int omap_usb2_set_phy_comparator(struct usb_phy *omap_phy,
> +					struct phy_companion *comparator);
>  #else
>  static inline int omap_usb2_set_comparator(struct phy_companion *comparator)
>  {
>  	return -ENODEV;
>  }
> +static inline int omap_usb2_set_phy_comparator(struct usb_phy *omap_phy,
> +					       struct phy_companion *comparator)
> +{
> +	return -ENODEV;
> +}
>  #endif
>  
>  #endif /* __DRIVERS_OMAP_USB_H */
> -- 
> 2.39.5

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
