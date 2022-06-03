Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A4ACCA473
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=CzeYAim3/SVwe0TX7s1VpwH3aGlZenkxhd7o+MMbT3Q=; b=rD+ueDDkxPlTbp
	L10uW4937+csGhDOa5XoxVUxKCBKrvp64n0Damb6pepz1wuD5KdJ4ZX40ttSOL25FNlBq5U4yS7nM
	cllgPjMGB5OUlQ3Q/yqxnnlVVKsOyXGLBCIqBKfGw9YfbS/tNNso4JrRSHEbIPxlJKfRW4/r4i3pO
	RY4TjaPFCV/BbX98P2uTrSFPaXQuxxpPv5rZd5lpfElkRkdaKz1FTqvaSxVb2gDE6yW8js+sA8BZZ
	cGj2lKX/LJXdLpqY0w7xe3trnjkN6JU+U5Qe9qfv19GE/MksD6ksLn7qiDPrncqfAqTIIbYVhqWiP
	ly49IgT2RF65Yeb39S7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx9rV-0087EU-RQ; Fri, 03 Jun 2022 16:09:21 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx9rT-0087DT-5k
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 16:09:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 63769B82291;
	Fri,  3 Jun 2022 16:09:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF3E3C385B8;
	Fri,  3 Jun 2022 16:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654272556;
	bh=9XDqZH7lKMypp0xEWeC0uCWAmpLurZw7YA9gs7/cFME=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=lOnBJhZMF960+5MB1wXCaFBswhFih5K6XyC3STZC/40lQ414CeoIq03ECPFdsOekJ
	 i3iKetKWPwMOUDMiGL4YJKYtveSRD1A7UzFol1Wvgbc+vTxpwn7hWY0pdmL9bXjMD+
	 MFl/5yCcM1ktib7s8fHzW6hGzRdYQHinjXASR7mFYSMdboKI6ZG9oPfvYEz2kXZgPL
	 IdwZobgynLNeeduuBwwAHv4gAkNTqetRbhItA5f5SXzPsg15ldXaVHFowth0MeoXSJ
	 xcwcb6G+pCNsmBj8DmDHjd5OlP8KeKtYSSGBC6Le4VT2lmu4MInto7ZwONEqIgp5Ad
	 lehsaVkAJ/e3A==
Date: Fri, 3 Jun 2022 11:09:13 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
	"lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>,
	Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>,
	Dongjin Yang <dj76.yang@samsung.com>
Subject: Re: [PATCH v2 5/5] MAINTAINERS: Add maintainer for Axis ARTPEC-8
 PCIe PHY driver
Message-ID: <20220603160913.GA80202@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603024347epcms2p48d01596e10b251bec077581a6c609c48@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_090919_611955_2FAFB4F8 
X-CRM114-Status: GOOD (  15.84  )
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

In subject:

  MAINTAINERS: Add Axis ARTPEC-8 PCIe PHY maintainers

to put the important things first so they don't get chopped off by
"git log --oneline" and similar.

On Fri, Jun 03, 2022 at 11:43:47AM +0900, Wangseok Lee wrote:
> Add maintainer for Axis ARTPEC-8 PCIe PHY.
> 
> Add Jesper Nilsson <jesper.nilsson@axis.com> and
> Lars Persson <lars.persson@axis.com> as Maintainer for these files.

s/Maintainer/maintainers/

> ARTPEC-8 is the SoC platform of Axis Communications
> and PCIe phy is designed based on Samsung PHY.

s/phy/PHY/ to match other uses.

Rewrap all of above to fill 75 columns.

> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>

Obviously we'll look for acks from Jesper and Lars.

Also would be good if Jesper explicitly acked the fact that his
existing "PCIE DRIVER FOR AXIS ARTPEC" entry also matches the new
pcie-artpec8.c driver:

  PCIE DRIVER FOR AXIS ARTPEC
  M:      Jesper Nilsson <jesper.nilsson@axis.com>
  L:      linux-arm-kernel@axis.com
  L:      linux-pci@vger.kernel.org
  S:      Maintained
  F:      Documentation/devicetree/bindings/pci/axis,artpec*
  F:      drivers/pci/controller/dwc/*artpec*

> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d4d4aa2..cd6f75b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1864,12 +1864,14 @@ M:	Jesper Nilsson <jesper.nilsson@axis.com>
>  M:	Lars Persson <lars.persson@axis.com>
>  L:	linux-arm-kernel@axis.com
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
>  F:	Documentation/devicetree/bindings/pinctrl/axis,artpec6-pinctrl.txt
>  F:	arch/arm/boot/dts/artpec6*
>  F:	arch/arm/mach-artpec
>  F:	drivers/clk/axis
>  F:	drivers/crypto/axis
>  F:	drivers/mmc/host/usdhi6rol0.c
> +F:	drivers/phy/artpec/phy-artpec*
>  F:	drivers/pinctrl/pinctrl-artpec*
>  
>  ARM/ASPEED I2C DRIVER
> -- 
> 2.9.5
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
