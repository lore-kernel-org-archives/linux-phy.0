Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B639DC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 16:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SZn3wTV3aGQvtRFnjkrBD9/2C3hX8OeesjRdAJ6tFI=; b=2XBLNgR9txaDoN
	Ie77+d55/3kN1ExMTPCOx1zvhESJPxMFaL3GAlW408JgHQQZcGpkoJ1IuWY6NyQ6b+MWv4t6TS9FY
	GpTIXFys5H31yVCC0F7d6rsX64PAuyFEBU+eLUWObgXH5gAjp1usrLfTKd4edd/hyZKJE2wLeQquE
	ZuY8p0Q++ZxQEX9282kCx0putl+H3Vy1DLp+PoLM8EZnSvAqIBqeHAYOlxpRvHejg2FoY1DThKB68
	mur+fpX28C4IhcMRdf2A/pSdfvxBrZtpGWJ/zWedYpbdj567kiLUXvVaYB1whGyrpFJxFn+cjuG3i
	B7FA57hr8RCZ436vhuyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIB9U-001nR9-68; Wed, 18 Jan 2023 16:19:04 +0000
Received: from netrider.rowland.org ([192.131.102.5])
	by bombadil.infradead.org with smtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIB9Q-001nQE-ID
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 16:19:02 +0000
Received: (qmail 212574 invoked by uid 1000); 18 Jan 2023 11:18:58 -0500
Date: Wed, 18 Jan 2023 11:18:58 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Madalin Bucur <madalin.bucur@nxp.com>,
  "David S . Miller" <davem@davemloft.net>,
  Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
  Paolo Abeni <pabeni@redhat.com>,
  Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com,
  Thierry Reding <thierry.reding@gmail.com>,
  Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>,
  Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
  Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>,
  Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
  Alim Akhtar <alim.akhtar@samsung.com>,
  Siddharth Vadapalli <s-vadapalli@ti.com>,
  Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
  linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
  linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 7/7] usb: host: ohci-exynos: Convert to
 devm_of_phy_optional_get()
Message-ID: <Y8gb8l18XzYOPhoD@rowland.harvard.edu>
References: <cover.1674036164.git.geert+renesas@glider.be>
 <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_081900_757939_409C981E 
X-CRM114-Status: GOOD (  18.75  )
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

On Wed, Jan 18, 2023 at 11:15:20AM +0100, Geert Uytterhoeven wrote:
> Use the new devm_of_phy_optional_get() helper instead of open-coding the
> same operation.
> 
> This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> handle NULL parameters fine.

The patch ignores a possible -ENOSYS error return.  Is it known that 
this will never happen?

Alan Stern

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/usb/host/ohci-exynos.c | 24 +++++++-----------------
>  1 file changed, 7 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/usb/host/ohci-exynos.c b/drivers/usb/host/ohci-exynos.c
> index 8d7977fd5d3bd502..8dd9c3b2411c383f 100644
> --- a/drivers/usb/host/ohci-exynos.c
> +++ b/drivers/usb/host/ohci-exynos.c
> @@ -69,19 +69,12 @@ static int exynos_ohci_get_phy(struct device *dev,
>  			return -EINVAL;
>  		}
>  
> -		phy = devm_of_phy_get(dev, child, NULL);
> +		phy = devm_of_phy_optional_get(dev, child, NULL);
>  		exynos_ohci->phy[phy_number] = phy;
>  		if (IS_ERR(phy)) {
> -			ret = PTR_ERR(phy);
> -			if (ret == -EPROBE_DEFER) {
> -				of_node_put(child);
> -				return ret;
> -			} else if (ret != -ENOSYS && ret != -ENODEV) {
> -				dev_err(dev,
> -					"Error retrieving usb2 phy: %d\n", ret);
> -				of_node_put(child);
> -				return ret;
> -			}
> +			of_node_put(child);
> +			return dev_err_probe(dev, PTR_ERR(phy),
> +					     "Error retrieving usb2 phy\n");
>  		}
>  	}
>  
> @@ -97,12 +90,10 @@ static int exynos_ohci_phy_enable(struct device *dev)
>  	int ret = 0;
>  
>  	for (i = 0; ret == 0 && i < PHY_NUMBER; i++)
> -		if (!IS_ERR(exynos_ohci->phy[i]))
> -			ret = phy_power_on(exynos_ohci->phy[i]);
> +		ret = phy_power_on(exynos_ohci->phy[i]);
>  	if (ret)
>  		for (i--; i >= 0; i--)
> -			if (!IS_ERR(exynos_ohci->phy[i]))
> -				phy_power_off(exynos_ohci->phy[i]);
> +			phy_power_off(exynos_ohci->phy[i]);
>  
>  	return ret;
>  }
> @@ -114,8 +105,7 @@ static void exynos_ohci_phy_disable(struct device *dev)
>  	int i;
>  
>  	for (i = 0; i < PHY_NUMBER; i++)
> -		if (!IS_ERR(exynos_ohci->phy[i]))
> -			phy_power_off(exynos_ohci->phy[i]);
> +		phy_power_off(exynos_ohci->phy[i]);
>  }
>  
>  static int exynos_ohci_probe(struct platform_device *pdev)
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
