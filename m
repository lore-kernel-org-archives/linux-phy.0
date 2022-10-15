Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D20EC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 15 Oct 2022 16:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsWm0o0zQXqVrZMxJWdyhBbawxbMUXSRHI+bUh6biVE=; b=de61/LpH4EUe5R
	hb1IO2Al0E8WohZkxv3pInYVcBTcifvMVKCli12PPQzPq0FDwOJ34ajIrXx/lVVnd6fz2zUujNRng
	E/ZApMI0KS95fI14aLKZIa1mVRpHVaWf4MTUATngoqG+T4DPWkUt7BpoHNF5MjbdS2UtY7RTfHhdi
	FPLsuCXA3Op1JdwC1fQLmaMe9KiooyMbWhhkO1q74r0QR+JU5DH5P2XD3l3L6wCMbVJTSEuZDPjiJ
	2oWVafUMfRnKzpxXc0tuX54HgbNms9xPRBD/QV0FSUm/X/3fGBTzk0+IvmJg0jV4POLpg4Gqvrhs7
	EPdiu3EGlT3HdlyczjcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojkA9-00HGAG-Cr; Sat, 15 Oct 2022 16:37:25 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojk9y-00HG8R-L5; Sat, 15 Oct 2022 16:37:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 24972B80AEA;
	Sat, 15 Oct 2022 16:37:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 708C0C433D7;
	Sat, 15 Oct 2022 16:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665851830;
	bh=uBgXXwi9mq1hGYM24KHB/LA4y7CvSaQDWZCJOLwjDkc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=uf4JvNmFaQHbMmIS9+znxbdCByK1M07kKU9zSTKZHy58+JM8rC3FBdpxZsaRTydK4
	 9JuwYWjy8UuVEv9NKa5d9hvn2EGJKQVDxp5ee9u1nHx0ljL8XOe7xOSYBcBR37y/K9
	 cqfzCi05daR4XCL4OzowPjhth5NPC1PlK4naNfSVfhvbZWK6EORBLMPZU2047dL39/
	 mSpeCVRVKCFFh1CeVQzxQgDlnh+7wE/Spra9f9UB8/yY4Oorrk8SeiBMuW0aHQVG0F
	 vh0snCzLTtEZpZ3FyuMkSlYDhGDR5OIV5XaiaeyUd4dKLGch30ySZ2EMbYL1CrBBFg
	 XLFX806V9jXBQ==
Date: Sat, 15 Oct 2022 17:37:31 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Cosmin Tanislav
 <cosmin.tanislav@analog.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Nandhini Srikandan <nandhini.srikandan@intel.com>, Rashmi A
 <rashmi.a@intel.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Sumit Gupta <sumitg@nvidia.com>, Mikko Perttunen
 <mperttunen@nvidia.com>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Joakim Zhang
 <qiangqing.zhang@nxp.com>, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Remove "status" from schema examples,
 again
Message-ID: <20221015173731.0a5acc4d@jic23-huawei>
In-Reply-To: <20221014205104.2822159-1-robh@kernel.org>
References: <20221014205104.2822159-1-robh@kernel.org>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221015_093715_027636_4E53CAEA 
X-CRM114-Status: GOOD (  18.64  )
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

On Fri, 14 Oct 2022 15:51:04 -0500
Rob Herring <robh@kernel.org> wrote:

> There's no reason to have "status" properties in examples. "okay" is the
> default, and "disabled" turns off some schema checks ('required'
> specifically).
> 
> A meta-schema check for this is pending, so hopefully the last time to
> fix these.
> 
> Fix the indentation in intel,phy-thunderbay-emmc while we're here.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com> #for-iio

> ---
>  .../arm/tegra/nvidia,tegra-ccplex-cluster.yaml    |  1 -
>  .../display/tegra/nvidia,tegra124-dpaux.yaml      |  1 -
>  .../display/tegra/nvidia,tegra186-display.yaml    |  2 --
>  .../bindings/iio/addac/adi,ad74413r.yaml          |  1 -
>  .../devicetree/bindings/net/cdns,macb.yaml        |  1 -
>  .../devicetree/bindings/net/nxp,dwmac-imx.yaml    |  1 -
>  .../bindings/phy/intel,phy-thunderbay-emmc.yaml   | 15 +++++++--------
>  7 files changed, 7 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
> index 711bb4d08c60..869c266e7ebc 100644
> --- a/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
> +++ b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
> @@ -47,5 +47,4 @@ examples:
>        compatible = "nvidia,tegra234-ccplex-cluster";
>        reg = <0x0e000000 0x5ffff>;
>        nvidia,bpmp = <&bpmp>;
> -      status = "okay";
>      };
> diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml
> index 9ab123cd2325..5cdbc527a560 100644
> --- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml
> +++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml
> @@ -128,7 +128,6 @@ examples:
>          resets = <&tegra_car 181>;
>          reset-names = "dpaux";
>          power-domains = <&pd_sor>;
> -        status = "disabled";
>  
>          state_dpaux_aux: pinmux-aux {
>              groups = "dpaux-io";
> diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml
> index 8c0231345529..ce5c673f940c 100644
> --- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml
> +++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml
> @@ -138,7 +138,6 @@ examples:
>                   <&bpmp TEGRA186_CLK_NVDISPLAY_DSC>,
>                   <&bpmp TEGRA186_CLK_NVDISPLAYHUB>;
>          clock-names = "disp", "dsc", "hub";
> -        status = "disabled";
>  
>          power-domains = <&bpmp TEGRA186_POWER_DOMAIN_DISP>;
>  
> @@ -227,7 +226,6 @@ examples:
>          clocks = <&bpmp TEGRA194_CLK_NVDISPLAY_DISP>,
>                   <&bpmp TEGRA194_CLK_NVDISPLAYHUB>;
>          clock-names = "disp", "hub";
> -        status = "disabled";
>  
>          power-domains = <&bpmp TEGRA194_POWER_DOMAIN_DISP>;
>  
> diff --git a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
> index 03bb90a7f4f8..d2a9f92c0a6d 100644
> --- a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
> +++ b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
> @@ -114,7 +114,6 @@ examples:
>        #size-cells = <0>;
>  
>        cs-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
> -      status = "okay";
>  
>        ad74413r@0 {
>          compatible = "adi,ad74413r";
> diff --git a/Documentation/devicetree/bindings/net/cdns,macb.yaml b/Documentation/devicetree/bindings/net/cdns,macb.yaml
> index 318f4efe7f6f..bef5e0f895be 100644
> --- a/Documentation/devicetree/bindings/net/cdns,macb.yaml
> +++ b/Documentation/devicetree/bindings/net/cdns,macb.yaml
> @@ -203,7 +203,6 @@ examples:
>                      power-domains = <&zynqmp_firmware PD_ETH_1>;
>                      resets = <&zynqmp_reset ZYNQMP_RESET_GEM1>;
>                      reset-names = "gem1_rst";
> -                    status = "okay";
>                      phy-mode = "sgmii";
>                      phys = <&psgtr 1 PHY_TYPE_SGMII 1 1>;
>                      fixed-link {
> diff --git a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
> index 4c155441acbf..0270b0ca166b 100644
> --- a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
> +++ b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
> @@ -92,5 +92,4 @@ examples:
>                       <&clk IMX8MP_CLK_ENET_QOS>;
>              clock-names = "stmmaceth", "pclk", "ptp_ref", "tx";
>              phy-mode = "rgmii";
> -            status = "disabled";
>      };
> diff --git a/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml b/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
> index 34bdb5c4cae8..b09e5ba5e127 100644
> --- a/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
> +++ b/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
> @@ -36,11 +36,10 @@ additionalProperties: false
>  
>  examples:
>    - |
> -     mmc_phy@80440800 {
> -     #phy-cells = <0x0>;
> -     compatible = "intel,thunderbay-emmc-phy";
> -     status = "okay";
> -     reg = <0x80440800 0x100>;
> -     clocks = <&emmc>;
> -     clock-names = "emmcclk";
> -     };
> +    mmc_phy@80440800 {
> +        #phy-cells = <0x0>;
> +        compatible = "intel,thunderbay-emmc-phy";
> +        reg = <0x80440800 0x100>;
> +        clocks = <&emmc>;
> +        clock-names = "emmcclk";
> +    };


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
