Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DE00CD37BE
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 01:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQpi0zXWGQCcCrZoI5GotacWc93DGGvw9+avgJPE4Dc=; b=yC0V50muOIdo8g
	9mEtlhd3JoQ+Wqj8yb2DBZKYSbxSIRgJFpGcT57WfQjuPB68uLHbebLxgqxUkyD/j7L5DAOouGL+J
	M6+3mYYkiPyQborm6lr+vkRLRvfmnzlTId26hw/TlhUcjb1x5s3qR3hgAsv87KKJVyvxHHQiPUL1t
	hecgl8NPpUB6SnU1gVqj1jKaUDAcGhJePD6HZpk6I/CyFO1pGeGVTnXi4egACk+qmhfcxWQdxCrMe
	dCzpUlNispUyv6Hasu4nRfvmJlQY8k66WNBvFwFuj5Rqi4TM2B9zg1DFdda7mK1sNuGYbuNglCecT
	ZxraLAM2CbN5HzdgH8Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMbjG-0000000F9kl-1MtD;
	Tue, 12 May 2026 01:16:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMbjD-0000000F9jD-44U9
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 01:16:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D324E40737;
	Tue, 12 May 2026 01:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA50C2BCB0;
	Tue, 12 May 2026 01:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778548565;
	bh=ACf9F8mIe11uR9zPEzpLlpeJBEkpXvF/E/hQaOiFhrU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OUfhKIfwzuH226iZczHaYhoQACRSH2B1xVSUZfwTCDcXqu92SoJTYAQJG1dAkvSES
	 ZAH9f7JH+WWSt/8oU9itsz8CkbQq3UvEf+kqcvyW618t3fSB2G8G4INL8vq43A9W25
	 bozKFqvXU4Ex5W+9HEkFOfo7uCUFZ2gzoPUe6mYCzlei1Cx9u2uX7ltZZB3M9hrP4D
	 m0/ISBGrpUlo7gTM4fE+cRTWgDzypCL6ZIyHLy0/KEwlJ2nS0t3sFReZ17FXkKFy8I
	 2rBD1NceY8pJzxAnrE9gtu8N5wUV4VFgV4ACZCYZm3Sfhs8hxdB8WV+GxxnFTIoZu/
	 lyuDz4wF/Fpig==
Date: Tue, 12 May 2026 09:15:59 +0800
From: "Peter Chen (CIX)" <peter.chen@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init
 if bus is externally controlled
Message-ID: <agJ/T8nBGWEoblmd@nchen-desktop>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-3-clamor95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260511135703.62470-3-clamor95@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_181608_207424_22AD9587 
X-CRM114-Status: GOOD (  23.09  )
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

On 26-05-11 16:56:57, Svyatoslav Ryhel wrote:
> If the USB controller and PHY are externally controlled, then the
> registration of the controller and the PHY initialization should be
> skipped, since these configurations must be done by the device that
> controls the bus to work correctly.
> 

I find you only control USB controller device add at PHY driver, most of USB drivers
has PHY control, for chipidea, it has PHY control at core.c, would please try to
adapt for it?

Peter

> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/usb/chipidea/ci_hdrc_tegra.c | 36 +++++++++++++++++-----------
>  1 file changed, 22 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/usb/chipidea/ci_hdrc_tegra.c b/drivers/usb/chipidea/ci_hdrc_tegra.c
> index 372788f0f970..593390a818d1 100644
> --- a/drivers/usb/chipidea/ci_hdrc_tegra.c
> +++ b/drivers/usb/chipidea/ci_hdrc_tegra.c
> @@ -32,6 +32,7 @@ struct tegra_usb {
>  	struct clk *clk;
>  
>  	bool needs_double_reset;
> +	bool externally_controlled;
>  };
>  
>  struct tegra_usb_soc_info {
> @@ -312,20 +313,25 @@ static int tegra_usb_probe(struct platform_device *pdev)
>  	if (device_property_present(&pdev->dev, "nvidia,needs-double-reset"))
>  		usb->needs_double_reset = true;
>  
> +	if (device_property_present(&pdev->dev, "nvidia,external-control"))
> +		usb->externally_controlled = true;
> +
>  	err = tegra_usb_reset_controller(&pdev->dev);
>  	if (err) {
>  		dev_err_probe(&pdev->dev, err, "failed to reset controller");
>  		goto fail_power_off;
>  	}
>  
> -	/*
> -	 * USB controller registers shouldn't be touched before PHY is
> -	 * initialized, otherwise CPU will hang because clocks are gated.
> -	 * PHY driver controls gating of internal USB clocks on Tegra.
> -	 */
> -	err = usb_phy_init(usb->phy);
> -	if (err)
> -		goto fail_power_off;
> +	if (!usb->externally_controlled) {
> +		/*
> +		 * USB controller registers shouldn't be touched before PHY is
> +		 * initialized, otherwise CPU will hang because clocks are gated.
> +		 * PHY driver controls gating of internal USB clocks on Tegra.
> +		 */
> +		err = usb_phy_init(usb->phy);
> +		if (err)
> +			goto fail_power_off;
> +	}
>  
>  	/* setup and register ChipIdea HDRC device */
>  	usb->soc = soc;
> @@ -342,12 +348,14 @@ static int tegra_usb_probe(struct platform_device *pdev)
>  	if (of_usb_get_phy_mode(pdev->dev.of_node) == USBPHY_INTERFACE_MODE_ULPI)
>  		usb->data.flags &= ~CI_HDRC_SUPPORTS_RUNTIME_PM;
>  
> -	usb->dev = ci_hdrc_add_device(&pdev->dev, pdev->resource,
> -				      pdev->num_resources, &usb->data);
> -	if (IS_ERR(usb->dev)) {
> -		err = dev_err_probe(&pdev->dev, PTR_ERR(usb->dev),
> -				    "failed to add HDRC device");
> -		goto phy_shutdown;
> +	if (!usb->externally_controlled) {
> +		usb->dev = ci_hdrc_add_device(&pdev->dev, pdev->resource,
> +					      pdev->num_resources, &usb->data);
> +		if (IS_ERR(usb->dev)) {
> +			err = dev_err_probe(&pdev->dev, PTR_ERR(usb->dev),
> +					    "failed to add HDRC device");
> +			goto phy_shutdown;
> +		}
>  	}
>  
>  	return 0;
> -- 
> 2.51.0
> 

-- 

Best regards,
Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
