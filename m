Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FDC7C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 07:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NY2WpnHdMtR2sngcuXSesknUbBd439IkeAWeIzhmD8=; b=R43m9rsN+3IhpR
	clQQg/ie7PLSKoJgaeJz1a7BbRETK19DDknFOQrPTK6xn3T/S61LtQGI8p/NdCoz3XmCM8w+WxRAP
	jWdS4IqqyPIvqkuKkrbDsEZOy0r+3LY7Is7kTVFS6C/5xQA7a1p2s0dPli3kHcHY3UqZlp0INafL6
	T9XN+/4kF9WNQ6mlu3r9RgTSH5u7ansgpDXs7zOWrmvSo4kPeQ0MbiQWKHK9VZDV3QxKtj3HQgRfd
	1HBzB3aUpMg8qxo0vAvGuNf/xl5kqPlAwztKvU1M4cKX0ukr/dnOpfbImGJ3G8RHOfGoCyKsXCnTV
	pOCbUoUHLfMrhawy3isA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKPq-008Pv0-Pb; Mon, 17 Oct 2022 07:20:02 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKPS-008Pkr-Or; Mon, 17 Oct 2022 07:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1665991178; x=1697527178;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=UBuvRDypJT++mgXI7DOwGnJFcpVZ/gzflYCezJdbRdo=;
  b=JTcAAFeYTp52ynVXfEE5/J5c1K61VGNMUPsl7BIFKN0jhD2GcIyEMtCV
   LpC7cX1XGgpUjLJSF+BSq9PFtfbA2EGo1ldvZVgeQSe9XLa72lVo5c98z
   mUArjlWjGDpcr+QGBo553pwLrtbm+7QD9FxJeglEbpHRqBwN248O7Tf0g
   gJO2AMilJFafN1Td/j41TBXh+0aBIqw/yaFZW5g9dTWxtysp5Oqj0uyGG
   SYiz8maC0zJhOgzLOHZS4wODotjCDus4JHfInKdkE/RMqe18Q5ufN5OpV
   vf+BtX8BF01LYMyNqOUlAW6OhRI+ZedjTQKP1AXrWcqYnMHAgKEj8/8AL
   Q==;
X-IronPort-AV: E=Sophos;i="5.95,190,1661842800"; 
   d="scan'208";a="182465180"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Oct 2022 00:19:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Mon, 17 Oct 2022 00:19:33 -0700
Received: from [10.159.245.112] (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.12 via Frontend
 Transport; Mon, 17 Oct 2022 00:19:26 -0700
Message-ID: <91250148-67b9-d514-6af0-bfcd719fde53@microchip.com>
Date: Mon, 17 Oct 2022 09:19:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: Remove "status" from schema examples, again
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Thierry Reding
	<thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, "David
 Airlie" <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, "Lars-Peter
 Clausen" <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
	Cosmin Tanislav <cosmin.tanislav@analog.com>, Jonathan Cameron
	<jic23@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
	<edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
	<pabeni@redhat.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
	<s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
	Nandhini Srikandan <nandhini.srikandan@intel.com>, Rashmi A
	<rashmi.a@intel.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
	<vkoul@kernel.org>, Sumit Gupta <sumitg@nvidia.com>, Mikko Perttunen
	<mperttunen@nvidia.com>, Claudiu Beznea <claudiu.beznea@microchip.com>,
	Joakim Zhang <qiangqing.zhang@nxp.com>
CC: <devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linux-iio@vger.kernel.org>, <netdev@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>
References: <20221014205104.2822159-1-robh@kernel.org>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20221014205104.2822159-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001938_967900_F1242862 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 14/10/2022 at 22:51, Rob Herring wrote:
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
> ---
>   .../arm/tegra/nvidia,tegra-ccplex-cluster.yaml    |  1 -
>   .../display/tegra/nvidia,tegra124-dpaux.yaml      |  1 -
>   .../display/tegra/nvidia,tegra186-display.yaml    |  2 --
>   .../bindings/iio/addac/adi,ad74413r.yaml          |  1 -
>   .../devicetree/bindings/net/cdns,macb.yaml        |  1 -
>   .../devicetree/bindings/net/nxp,dwmac-imx.yaml    |  1 -
>   .../bindings/phy/intel,phy-thunderbay-emmc.yaml   | 15 +++++++--------
>   7 files changed, 7 insertions(+), 15 deletions(-)

[..]

> diff --git a/Documentation/devicetree/bindings/net/cdns,macb.yaml b/Documentation/devicetree/bindings/net/cdns,macb.yaml
> index 318f4efe7f6f..bef5e0f895be 100644
> --- a/Documentation/devicetree/bindings/net/cdns,macb.yaml
> +++ b/Documentation/devicetree/bindings/net/cdns,macb.yaml
> @@ -203,7 +203,6 @@ examples:
>                       power-domains = <&zynqmp_firmware PD_ETH_1>;
>                       resets = <&zynqmp_reset ZYNQMP_RESET_GEM1>;
>                       reset-names = "gem1_rst";
> -                    status = "okay";
>                       phy-mode = "sgmii";
>                       phys = <&psgtr 1 PHY_TYPE_SGMII 1 1>;
>                       fixed-link {


Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Thanks Rob. Best regards,
   Nicolas

-- 
Nicolas Ferre

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
