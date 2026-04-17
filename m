Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D415AF43683
	for <linux-phy@archiver.kernel.org>; Fri, 17 Apr 2026 09:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrRqa4fjwmp7i0LQqvkrlNtYrUBBrn6ICoFPCgGcDn8=; b=NXtL44UaQHw5po
	uHsJ3dgb2S2GnhsPWWmsj4Lm+d2ij5OiO7mjhGpph5tIeHZqWvxdDvUaByhdZHI5ki+gz5n9IuGfK
	2RoudkZ3i4WskyRE+zUFI/H9UaN4JuQAT00uLH4mzEvzWApqcqlID6KJBufi/zfuNUGZIOiw4O97m
	xJgMK5OKHph26QWuwmRu5D6A3jIdyxK0+tm0kVHvr/yas5gV/KS9oFwIPaAJg2e+HlFHXTAxfFHrz
	mWR69bLQCoCdIC2Z1BcUHJpjc+J6Shhe0dsl7knmdTezyt2wpDKwocXwiycbs6yMgTEZvOwJewOTU
	0kDpTdoLK9CKPv7khqOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfL3-00000003k9j-12iO;
	Fri, 17 Apr 2026 09:18:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfL2-00000003k9c-2ZUr
	for linux-phy@lists.infradead.org;
	Fri, 17 Apr 2026 09:18:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 80E0F60138;
	Fri, 17 Apr 2026 09:18:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1FE8C19425;
	Fri, 17 Apr 2026 09:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776417491;
	bh=GaZONsQl/bDnrAap+6+Gg7ZPxw6dUU3qnouvnvzseZg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZJOf9cMC9FcS4X/rJdMA7dbQ+BtGLhQD27FCjhRzddh5f6GaKC6mnG3JwK52t+QII
	 zFFIBK8Q8A/FisfMs4GlHuBOPLcjZ903SsJTz/buCUl7pgYLQVzHWkcftyJzMoKM0G
	 8kIqnpvUP2uM5rSKLKDVoHNLHYVs7WXcsvstgyoNFhGRL7CNZEeFvpUyaZy1NzVAyk
	 67/m4owxdlO6pl48ERRC0MlHqTFk+nwQsOCu7NyX7xKX8Nt8GG880+S/AapxxgXlQV
	 +JoJrSgnw6tDEXUf4EvgCM5WzFr6IPxTMjIILHOXRIkuMik6/lXgMToyXJc2Og1eJO
	 F0BuDfCVRrLwg==
Date: Fri, 17 Apr 2026 11:18:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <20260417-awesome-tacky-coot-e59a30@quoll>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
 <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
 <aeBQRStG3imY0cOe@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeBQRStG3imY0cOe@hu-qianyu-lv.qualcomm.com>
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

On Wed, Apr 15, 2026 at 07:58:13PM -0700, Qiang Yu wrote:
> On Wed, Apr 15, 2026 at 09:50:28AM +0200, Krzysztof Kozlowski wrote:
> > On Sun, Apr 12, 2026 at 11:25:56PM -0700, Qiang Yu wrote:
> > > The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> > > 
> > > 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
> > >    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> > > 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
> > >    follower to form a single 8-lane PCIe Gen5 interface
> > > 
> > > In bifurcation mode, the hardware design requires controlling additional
> > > resources beyond the standard pcie3a PHY configuration:
> > > 
> > > - pcie3b's aux_clk (phy_b_aux)
> > > - pcie3b's phy_gdsc power domain
> > > - pcie3b's bcr/nocsr reset
> > > 
> > > Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> > > 8-lane bifurcation configuration.
> > 
> > Do you describe PCI3A or PCI3B or something combined PCI3?
> 
> I describe a single x8 PHY with resources from both the pcie3a and pcie3b
> PHY blocks for x8 operation.
> 
> > 
> > > 
> > > The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> > > requiring the clock-names enum to be extended to support both
> > > [phy_b_aux, pipediv2] options at index 5. This follows the existing
> > > pattern used for [rchng, refgen] clocks at index 3.
> > > 
> > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > ---
> > >  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 53 ++++++++++++++++++----
> > >  1 file changed, 45 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..14eba5d705b1956c1bb00cc8c95171ed6488299b 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > @@ -18,6 +18,7 @@ properties:
> > >      enum:
> > >        - qcom,glymur-qmp-gen4x2-pcie-phy
> > >        - qcom,glymur-qmp-gen5x4-pcie-phy
> > > +      - qcom,glymur-qmp-gen5x8-pcie-phy
> > 
> > That's the same device as 5x4, no? One device, one compatible and this
> > suggests you will have three PCI phys in the DT - two 5x4 and one 5x8?
> > 
> 
> It is not the same as the 5x4 PHY. In DT, we model three PHY nodes:
> phy_3a (1x4), phy_3b (1x4), and a separate phy_1x8 node for x8 mode.

OK, that's what I wanted to hear. And that's what should not be done,

You should not have a separate node for the same hardware. First, DTC
will give you a W=1 warning, although warning itself should be moved to
W=2.

Second, the warning tells important story - same hardware is described
twice.

You only need phy_3a and phy_3b, so only two in total.

phy_3a could have resources of phy_3b OR could have a phandle to
companion (follower) phy to fetch resources from it. I don't know yet
which choice is better, though.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
