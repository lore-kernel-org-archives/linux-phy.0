Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB363C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 26 Apr 2022 16:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=UNnyE/cuGb4LCj1XUhXL0D0Bm1tBYB5WyI1zuSpCbbU=; b=rFRe9miQB38oi9
	bM4vNbtyg8ETFrbqEqce+25z0Qik2EfHwsFcDOhDFH/C6F7BdK0gCroeh0TvjKavkWALMRpr4I4EI
	RTQ0V58m+9iKovqBYcWWznZw4TLg9BN3ox2qK4eVdl122YmArS60Zj747+j1Qkg2Do/uLpZ5S15qi
	sxaA7vaSUsbSLPl6hCGyjz5+9sOIBqaN/Xnog3g9Fp6aE9PYNZF0lxUB7Rsl0OdMAg/8vW41S2Kor
	9kdm6W9AQc8vLs4icnRmlJEIaNpAcK+gcgl2IjNwxI5MsEUW9HZjEA79jXx+DxAu4k38wnV/cLxm8
	upPEAsuyiJiu2kD5Hy/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njNik-00FHvH-6D; Tue, 26 Apr 2022 16:07:22 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njNiU-00FHmY-0T; Tue, 26 Apr 2022 16:07:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 32B0BB820FC;
 Tue, 26 Apr 2022 16:07:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F804C385AA;
 Tue, 26 Apr 2022 16:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650989222;
 bh=SIWK/mgrwqvjb745XCumZL2zEALgs20U9FUZGDkZgPQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=bDD8Qpj/XMzt4mZm2S8D6NQD6THckGoxgByTgj3daSgFZVM4539iQYEwYMrK9dPlJ
 VzzeBe2gPmT/q0hqRxKMxeJPpG5HsJFHEG0ETh8C+WVHjSGYThzXg12HdWQFbGpsSZ
 r5j+rsaD2/QPUdXOcF5pTsoxNr9iJC72Nfv6cRtmBB+N9epJuH1TGMkD3Fia3caX03
 12JNYyKQCSxnduaISxloJdlOLsUPJ4cTTTMCSwkq/DZPyerS49WLCDqOcHKaPzXG5N
 /PjXCP/1yBHKGVD3GTwpLffVDYC7u/tVov1UaoyVaBRRqPO+AnPMgWk2mdAWv3WFGB
 P+E8ag50dBtRw==
Date: Tue, 26 Apr 2022 11:07:00 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [RFC/RFT v2 10/11] PCI: rockchip: add a lane-map to rockchip
 pcie driver
Message-ID: <20220426160700.GA1731141@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426132139.26761-11-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_090706_392770_7E164C6B 
X-CRM114-Status: GOOD (  33.43  )
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

The subject line should be "PCI: rockchip-dwc: Add ..." so there's no
need to mention "rockchip" again.  No need to mention "pcie driver"
either,  because that's obvious from the context, so just something
like:

  PCI: rockchip-dwc: Add lane-map support

On Tue, Apr 26, 2022 at 03:21:38PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a basic lane-map to define which PCIe lanes should be
> used with this controller.
> 
> Rockchip driver uses this for bifurcation (true/false) based
> on lanes should be splitted across controllers or not.
> 
> On rk3568 there are 2 PCIe Controllers which share PCIe lanes.
> 
> pcie3x1: pcie@fe270000 //lane1 when using 1+1
> pcie3x2: pcie@fe280000 //lane0 when using 1+1
> 
> This ends up in one Controller (pcie3x1) uses lane-map = <0 1>; and
> the other lane-map = <1 0>; (pcie3x2)
> 
> This means there are 2 lanes (count of numbers), one (by position)
> is mapped to the first controller, the other one is used on the other
> controller.
> 
> In this driver the lane-map is simply converted to the bifurcation
> bool instead of direct mapping a specific lane to a controller.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v2:
> - new patch
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 79e909df241c..21cb697a5be1 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -60,6 +60,7 @@ struct rockchip_pcie {
>  	struct regulator                *vpcie3v3;
>  	struct irq_domain		*irq_domain;
>  	bool				bifurcation;
> +	u32				lane_map[2];
>  };
>  
>  static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
> @@ -293,8 +294,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct rockchip_pcie *rockchip;
> +	unsigned int lanecnt = 0;
>  	struct pcie_port *pp;
>  	int ret;
> +	int len;
>  
>  	rockchip = devm_kzalloc(dev, sizeof(*rockchip), GFP_KERNEL);
>  	if (!rockchip)
> @@ -327,8 +330,16 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> -	if (device_property_read_bool(dev, "bifurcation"))
> -		rockchip->bifurcation = true;

Skip adding the "bifurcation" DT support completely if you can.

> +	len = of_property_read_variable_u32_array(dev->of_node, "lane-map", rockchip->lane_map,
> +						  2, ARRAY_SIZE(rockchip->lane_map));
> +
> +	for (int i = 0; i < len; i++)
> +		if (rockchip->lane_map[i])
> +			lanecnt++;
> +
> +	rockchip->bifurcation = ((lanecnt > 0) && (lanecnt != len));
> +
> +	dev_info(dev, "bifurcation: %s\n", rockchip->bifurcation ? "true" : "false");
>  
>  	ret = rockchip_pcie_phy_init(rockchip);
>  	if (ret)
> -- 
> 2.25.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
