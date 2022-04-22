Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB74BC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 10:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJdFhYvG9Gwd3girG8/66hhrI0pBgJtWrxa8x2C97PY=; b=ZCkSfbzmbZ/9LI
	rLFbu7z8DmPoZuFHY2nNiEgHvlXO+23F0Xfp7xoq3T7Jp89MzkDp66ZS6rfSj8me9kSvMEsnfbpt9
	D804rFbNYu0De1Dh221ZM/k6xQrAv84OdV62SSLnu0hGYi7fsoalJ1SVWOcgTZfhLGdSBCSfYB6HR
	RwZ8Ng3sric0QlnVFh53/eXZrpiMIT337OwdMcSMi4SEzBweZDhw/JjEqEePqHTc8Se3WE7G6zj6A
	dFn9USzokywq60uJ6AINu9qfM+8eIRy4M+reHLpoy2TusbfqP8DdnpFHWSxrkZLnT2XUzZd8m/8GI
	RhRbZXFQxI6NN+5u3Xgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhqC9-00HWTJ-BY; Fri, 22 Apr 2022 10:07:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhqC7-00HWSQ-1m
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 10:07:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CBD4361E08;
 Fri, 22 Apr 2022 10:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34217C385A0;
 Fri, 22 Apr 2022 10:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650622037;
 bh=0yawq57opbcFXdcIH0roNewMtfcjckMA1vUB5NwgbJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ahfXL6IIYcRZR0IorZG5eaC6uXloOgECvMsnb33CugSy6kgDAezyHUi+CMUqRBmyk
 tnS0YM+XdWiHR0vlO1GtvOBczW1aZreIFNJHlBuwwlzRf2Hj28M/Iy+Wo0Dzh120zS
 fye4SQOST9LaV+NK9zQwmAwG7x29nDCG6rHHElggozoDy/nPstosu52kGykPBpSf04
 664MwKKMK40tOU3zv2qLfByYqTQRYUL18MXMaVNt+OThd+oXWZUqLsoGbJ45H9q2EV
 bVJvSp/B9tKvn1dU1Lm8BvGttHm59bVT/u1gHygiOTsMFqIrpiM55gAPbaKo376GoK
 rnDVPvmnFeq8g==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan@kernel.org>)
 id 1nhqBy-0002JI-J5; Fri, 22 Apr 2022 12:07:10 +0200
Date: Fri, 22 Apr 2022 12:07:10 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 2/5] arm64: dts: qcom: sc7280: move pipe mux handling
 to phy
Message-ID: <YmJ+Ti81el2MzsHG@hovoldconsulting.com>
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-3-johan+linaro@kernel.org>
 <55d6e32b-9cf4-384c-1036-1adfb867ece8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55d6e32b-9cf4-384c-1036-1adfb867ece8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_030719_204885_64BCDBBF 
X-CRM114-Status: GOOD (  20.57  )
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

On Thu, Apr 21, 2022 at 01:59:04PM +0300, Dmitry Baryshkov wrote:
> On 21/04/2022 13:20, Johan Hovold wrote:
> > The QMP PHY pipe clock remuxing is part of the PHY, which is both the
> > producer and the consumer of the pipe clock.
> > 
> > Update the PCIe controller and PHY node to reflect the new binding.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sc7280.dtsi | 18 ++++++------------
> >   1 file changed, 6 insertions(+), 12 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index c07765df9303..b3a9630262dc 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -1837,11 +1837,7 @@ pcie1: pci@1c08000 {
> >   					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>,
> >   					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>;
> >   
> > -			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
> > -				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
> > -				 <&pcie1_lane 0>,
> > -				 <&rpmhcc RPMH_CXO_CLK>,
> > -				 <&gcc GCC_PCIE_1_AUX_CLK>,
> > +			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> >   				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> >   				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
> >   				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> > @@ -1849,11 +1845,7 @@ pcie1: pci@1c08000 {
> >   				 <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>,
> >   				 <&gcc GCC_DDRSS_PCIE_SF_CLK>;
> >   
> > -			clock-names = "pipe",
> > -				      "pipe_mux",
> > -				      "phy_pipe",
> > -				      "ref",
> > -				      "aux",
> > +			clock-names = "aux",
> >   				      "cfg",
> >   				      "bus_master",
> >   				      "bus_slave",
> > @@ -1910,8 +1902,10 @@ pcie1_lane: lanes@1c0e200 {
> >   				      <0 0x01c0e600 0 0x170>,
> >   				      <0 0x01c0e800 0 0x200>,
> >   				      <0 0x01c0ee00 0 0xf4>;
> > -				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
> > -				clock-names = "pipe0";
> > +				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
> > +					 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
> > +					 <&rpmhcc RPMH_CXO_CLK>;
> > +				clock-names = "pipe0", "mux", "ref";
> 
> This will not be compatible with earlier DTB files, which was a problem 
> up to now.

That depends. The above wasn't added until 5.16 so we may still be able
to fix it.

The NAK you got from Rob earlier was when you removed clocks that have
been in the devicetree for several years:

	https://lore.kernel.org/all/YgQ+tGhLqwUCsTUo@robh.at.kernel.org/

and would still be needed by older kernels.

Worst case, we need to keep both sets for sc7280 (i.e. like we need to
do with the pipe clocks that have been around for years).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
