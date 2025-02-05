Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 733C7C02194
	for <linux-phy@archiver.kernel.org>; Wed,  5 Feb 2025 08:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJ8ixb2GOPQxaS3pdmet7uhNiXAQ+bYq1YpmmJIRnzI=; b=GaQ0qmTIOkRGt/
	dyJHvIXoYOjBguYtmGFv64vxwHcsxWLdMiKBIT4O95tfNuVspva0sR6MYTW4EdtceK7ko885waWGc
	snaavLrLInVAVlGBWOfCVxZTzQdB9CgAqxC44dJBoqGU0n5FQjy0pUXRCWUcBnsAPTpDnqT1RjMPn
	OY5FF+btK3Wv0A8QcjrwGNPCNFoHrhuk8ElyybILN5XvCm9CphOgNhHLZperTgb8NvxcN/1ge6EBY
	3eyzofar3udCXyCFqq4eq0iD+ekbvJrdkc7tesndGsJmx8HVkXk0sooRoEc/n5PIisoFEO5XIAxeB
	sHae2sw+6/sYG7r3QHhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfbBO-00000002dRn-3viR;
	Wed, 05 Feb 2025 08:54:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfbA1-00000002d8S-2br9;
	Wed, 05 Feb 2025 08:53:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 217C55C5C1C;
	Wed,  5 Feb 2025 08:52:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFFEDC4CED1;
	Wed,  5 Feb 2025 08:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738745608;
	bh=Mx/hiLYA8u5CZDU8ZLhxLsxACP2y++BBtVO3RiUnK6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kTz1zKwHNJxYnZ+oyxTOsYZQb/B8+nxN/2/NsZL73VZrQ/JqLeMWYB/gQJhOqfelY
	 /bWec1gzKioMF8lfqfMvbXxXDwRaJToqfGKZnyp32/mVa2y96IT9oHHCcLNRmosjVl
	 wQOd0K+331SR9zyx7KF8aNPy/wScoXQ0L4Js2LTIibmvecM4tS+MsGvzIC7CrklEtn
	 gZbzX17jvDSbnHh0ke59sm5PBTRsD5UOWtDZS0RWK8aNOYZcZmKgAEvAa8gpQYglSe
	 TRFuIsKw354zOot0DxAsd3SboMuNaczDUJKrfvUbjcssLUP7GRaheCUj0yvpe3PBqm
	 C+GMZgv7XezzA==
Date: Wed, 5 Feb 2025 09:53:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Vivek Gautam <gautam.vivek@samsung.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Sergey Lisov <sleirsgoevy@gmail.com>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] phy: exynos5-usbdrd: fix MPLL_MULTIPLIER and
 SSC_REFCLKSEL masks in refclk
Message-ID: <20250205-nice-amiable-lynx-a616b0@krzk-bin>
References: <20250204-exynos7870-usbphy-v1-0-f30a9857efeb@disroot.org>
 <20250204-exynos7870-usbphy-v1-1-f30a9857efeb@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250204-exynos7870-usbphy-v1-1-f30a9857efeb@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_005329_704662_55715816 
X-CRM114-Status: GOOD (  15.15  )
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

On Tue, Feb 04, 2025 at 02:10:12AM +0530, Kaustabh Chakraborty wrote:
> In exynos5_usbdrd_{pipe3,utmi}_set_refclk(), the masks
> PHYCLKRST_MPLL_MULTIPLIER_MASK and PHYCLKRST_SSC_REFCLKSEL_MASK are not
> inverted when applied to the register values. Fix it.
> 
> Fixes: 59025887fb08 ("phy: Add new Exynos5 USB 3.0 PHY driver")

Missing Cc-stable and this should be sent separately.

> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index c421b495eb0fe4396d76f8c9d7c198ad7cd08869..4a108fdab118c0edd76bd88dc9dbf6a498e064b3 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -488,9 +488,9 @@ exynos5_usbdrd_pipe3_set_refclk(struct phy_usb_instance *inst)
>  	reg |=	PHYCLKRST_REFCLKSEL_EXT_REFCLK;
>  
>  	/* FSEL settings corresponding to reference clock */
> -	reg &= ~PHYCLKRST_FSEL_PIPE_MASK |
> -		PHYCLKRST_MPLL_MULTIPLIER_MASK |
> -		PHYCLKRST_SSC_REFCLKSEL_MASK;
> +	reg &= ~(PHYCLKRST_FSEL_PIPE_MASK |
> +		 PHYCLKRST_MPLL_MULTIPLIER_MASK |
> +		 PHYCLKRST_SSC_REFCLKSEL_MASK);
>  	switch (phy_drd->extrefclk) {
>  	case EXYNOS5_FSEL_50MHZ:
>  		reg |= (PHYCLKRST_MPLL_MULTIPLIER_50M_REF |
> @@ -532,9 +532,9 @@ exynos5_usbdrd_utmi_set_refclk(struct phy_usb_instance *inst)
>  	reg &= ~PHYCLKRST_REFCLKSEL_MASK;
>  	reg |=	PHYCLKRST_REFCLKSEL_EXT_REFCLK;
>  
> -	reg &= ~PHYCLKRST_FSEL_UTMI_MASK |
> -		PHYCLKRST_MPLL_MULTIPLIER_MASK |
> -		PHYCLKRST_SSC_REFCLKSEL_MASK;
> +	reg &= ~(PHYCLKRST_FSEL_UTMI_MASK |
> +		 PHYCLKRST_MPLL_MULTIPLIER_MASK |
> +		 PHYCLKRST_SSC_REFCLKSEL_MASK);
>  	reg |= PHYCLKRST_FSEL(phy_drd->extrefclk);

This part does not set MPLL_MULTIPLIER and SSC_REFCLKSEL fields later,
but I also assume intention was to clear the fields.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
