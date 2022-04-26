Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E746C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 26 Apr 2022 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=iQOr/7V9+vnWHE0ulubKGyfUR/U0lol9IWbbaougwsM=; b=dwjBU1WJxcDLCU
	+x3hEmznbSbppfjY2L9/xAH7UNw1ToGWq0SGDN6PAvGE5LK388uWAU1vbS7ea1PLKJ7WaAsG55G/S
	AYq/HklhZA5qrmXJzWLwJ3CdTyhIFeV6VxG9a3ku4h/pAwgrTcnC0Te2qkDRpIFO+YVYHisYdzBs0
	7AcUmLuLRjln/PQOgQwv3oUk3e3d0fmcZvngfbr50RJhfz5abmWbU6ySkUgid+hcJfmqx5DolJXuA
	lWPrMPjpXN1HtZ/etyGT6ChkttnlxHb94qhOLvH/1N5SGzIZnOvnvLJxneANdL+3MFMNBgICG+Hv4
	u/hS1VY97lwKNMlZDcYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njNdf-00FG8i-Pv; Tue, 26 Apr 2022 16:02:07 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njNdB-00FFyE-Mj; Tue, 26 Apr 2022 16:01:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 34702B820FA;
 Tue, 26 Apr 2022 16:01:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEC57C385AA;
 Tue, 26 Apr 2022 16:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650988894;
 bh=V9bqxROuLoIKwO7jBdqPsf9/DBBXipHAZ1xgMxIrwxc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=lZkoCILrM0a540ltNPfzBZw+KIGbs4o67Vfcqb0kEq1d0i/snNsZGdNE1pSmcf0mB
 h/yCk72Itf+O/wLTMqFm3kJI54aKe+D4p/cj1tb7N2+V0jZI9NfMZV/7Ti5nPCe4Sj
 kzzxrWTvu5dDz9ZKFQrwD+p5luJrRL6LeZmddGgW0RIHci4pmO8VQzk1hYdugZSNOm
 1MfYeJ1JfhhAqZZ/nk0yGl3w35hrzh2EkbiaVlrbo4H/T16ki0b1yapu+31ippsUcZ
 dXnjDP3s9gSSOEF96HbzT8CS2uMK4400Q5gUS2RMUsFuuxDEJf78veGXM12WkVsG19
 cfVESoP/NLSIQ==
Date: Tue, 26 Apr 2022 11:01:32 -0500
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
Subject: Re: [RFC/RFT v2 00/11] RK3568 PCIe V3 support
Message-ID: <20220426160132.GA1724099@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426132139.26761-1-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_090138_123645_F500C86B 
X-CRM114-Status: GOOD (  23.53  )
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

On Tue, Apr 26, 2022 at 03:21:28PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This series adds Rockchip PCIe V3 support found on rk3568 SOC.
> 
> It is based on "Enable rk356x PCIe controller" series of Peter Geis
> v8: https://patchwork.kernel.org/project/linux-rockchip/list/?series=634925
> 
> Compared to PCIeV2 which uses the Naneng combphy, pciev3
> uses a dedicated pci-phy.
> 
> This Version is still an RFC/RFT because i cannot only test PCIe-slot on R2Pro
> as the other is a M.2 Key-E where i don't have any Hardware.
> 
> last 3 Patches show a replacement for bifurcation setting to make it more
> useful for vendor-indepent lane-mapping.
> 
> Frank Wunderlich (11):
>   dt-bindings: phy: rockchip: add PCIe v3 phy
>   dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
>   dt-bindings: phy: rockchip: add PCIe v3 constants
>   phy: rockchip: Support PCIe v3
>   dt-bindings: pci: add bifurcation option to Rockchip DesignWare
>     binding
>   PCI: rockchip-dwc: add PCIe bifurcation
>   arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
>   arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
>   dt-bindings: pci: add lane-map to rockchip PCIe binding
>   PCI: rockchip: add a lane-map to rockchip pcie driver
>   arm64: dts: rockchip: add basic lane-map and drop bifurcation from
>     r2pro

Don't just make up new prefixes; copy what's been done in the past.

  PCI: rockchip-dwc: add PCIe bifurcation
  PCI: rockchip: add a lane-map to rockchip pcie driver

I think we decided [1] to use "rockchip-dwc" for this driver to
distinguish it from the pcie-rockchip-host.c driver.

So both of these should use "PCI: rockchip-dwc:" as the prefix.

At least for the drivers/pci/ patches, capitalize the first word of
the subject, i.e., "Add PCIe bifurcation" and "Add lane-map ..."  I
don't know the dt-bindings convention (I would use "git log --oneline"
to find out).

s/pcie/PCIe/ in subjects, commit logs, comments, etc.

Wrap commit logs to fill 75 columns and add blank lines between
paragraphs.  Readers should not need to wonder "oh, the previous line
was shorter than usual; is this one a new paragraph?"

[1] https://lore.kernel.org/r/20210624180723.GA3543267@bjorn-Precision-5520

>  .../bindings/pci/rockchip-dw-pcie.yaml        |   3 +
>  .../bindings/phy/rockchip,pcie3-phy.yaml      |  84 ++++++
>  .../devicetree/bindings/soc/rockchip/grf.yaml |   3 +
>  .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   |  79 +++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 122 ++++++++
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c |  22 ++
>  drivers/phy/rockchip/Kconfig                  |   9 +
>  drivers/phy/rockchip/Makefile                 |   1 +
>  .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 278 ++++++++++++++++++
>  include/dt-bindings/phy/phy-rockchip-pcie3.h  |  21 ++
>  include/linux/phy/pcie.h                      |  12 +
>  11 files changed, 634 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
>  create mode 100644 include/dt-bindings/phy/phy-rockchip-pcie3.h
>  create mode 100644 include/linux/phy/pcie.h
> 
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
