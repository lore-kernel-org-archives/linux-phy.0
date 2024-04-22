Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E5CCC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 11:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+EMdQzdvtNV5MPOkByQO2VJK1lZO86/FfIt8gyno4Qw=; b=IWLCvd4V+dzUE6O/Zyl2ojPWJx
	fsCZ40f1A8PUrn84m95LZTPy8LXpQnnH7ed9QsK9nwKSTgEgfrMtXoUkowIMMHXq0G6bpgIM5H4JS
	T9TwjfBDkopKD6QVyjDw5vrM9KmDZ36tsMx0xRDMPuIE12GiOgH4c9tl3W6C2FLZSJeZ4yBrEtBhZ
	DMTjN8TFVhcBPFJxfSxfQz+jMCBKWO55B0+IxaCl7B44YdeV8iGZx852we9IIfszwj8yvayDyPCDo
	awYy7o557KthxyuyG6Icy9u63yodovZY6Iqtikxc9IHYxhV6L0QKfucldo1t80tLCZwQNr+URuzaU
	fB6ZXlow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysBs-0000000DQJR-16wF;
	Mon, 22 Apr 2024 11:50:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysBo-0000000DQGy-3sch
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 11:50:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E5C0D60EB2;
	Mon, 22 Apr 2024 11:50:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B58C32782;
	Mon, 22 Apr 2024 11:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713786627;
	bh=zIsEFBhzD+ZLEO1S9a4Cy+7IngF0zRAtRSaUbuQMgQ0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=bpEmg+5mn+onj3b66rqHoJKYf13F+mBQn6j56G+3+iyAuuian6f5TSaJcbAPMG1JX
	 h3ICYktXKg5hhzHsUobwLyzm46KYj5mn37dGf9FFoWTDdqK+lPjdhhAvKVDDOhPN4b
	 yIEc4HifqRQGw1bVR8PnS62Q7maQYpNVXDERrDhq3RmtCGKLlD4Psr7CpOe8IVeRId
	 chXylBwNAE9yPunHZywdrdU4Jabixsg0lSV58u5n0ZWZfu0RGQ3twcBvfI+6Kre1oz
	 0Nly5z40HFKG2t7ZGyopobEAg/fpFPLCxZLCZJMz0r0asFp+IwUB4vZfgCqVQB7HHe
	 Q8jhbsXjv6P4Q==
Date: Mon, 22 Apr 2024 06:50:26 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
Message-Id: <171378646293.749182.6639047187760279527.robh@kernel.org>
Subject: Re: [PATCH v3 0/3] arm64: qcom-sm8[456]50: properly describe the
 PCIe Gen4x2 PHY AUX clock
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_045029_094747_F497AAC4 
X-CRM114-Status: GOOD (  19.44  )
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


On Mon, 22 Apr 2024 10:33:10 +0200, Neil Armstrong wrote:
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
> "PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
> is muxed & gated then returned to the PHY as an input.
> 
> Document the clock IDs to select the PIPE clock or the AUX clock,
> also enforce a second clock-output-names and a #clock-cells value of 1
> for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.
> 
> The PHY driver needs a light refactoring to support a second clock,
> and finally the DT is changed to connect the PHY second clock to the
> corresponding GCC input then drop the dummy fixed rate clock.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Changes in v3:
> - Rebased on linux-next, applies now cleanly
> - Link to v2: https://lore.kernel.org/r/20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org
> 
> Changes in v2:
> - Collected review tags
> - Switched back to of_clk_add_hw_provider/devm_add_action_or_reset to maintain compatibility
> - Tried to use generic of_clk_hw_onecell_get() but it requires to much boilerplate code
>   and would still need a local qmp_pcie_clk_hw_get() to support the current #clock-cells=0
>   when exposing 2 clocks, so it's simpler to just return the clocks in qmp_pcie_clk_hw_get()
> - Link to v1: https://lore.kernel.org/r/20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org
> 
> ---
> Neil Armstrong (3):
>       arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
>       arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
>       arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
> 
>  arch/arm64/boot/dts/qcom/sm8450.dtsi    |  8 ++++----
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
>  arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
>  8 files changed, 12 insertions(+), 46 deletions(-)
> ---
> base-commit: f529a6d274b3b8c75899e949649d231298f30a32
> change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd
> 
> Best regards,
> --
> Neil Armstrong <neil.armstrong@linaro.org>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y qcom/sm8550-hdk.dtb qcom/sm8550-mtp.dtb qcom/sm8550-qrd.dtb qcom/sm8650-mtp.dtb qcom/sm8650-qrd.dtb' for 20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org:

arch/arm64/boot/dts/qcom/sm8550-qrd.dtb: clock-controller@100000: clocks: [[41], [42], [43], [44, 0], [45, 0], [45, 1], [45, 2], [46, 0]] is too short
	from schema $id: http://devicetree.org/schemas/clock/qcom,sm8550-gcc.yaml#
arch/arm64/boot/dts/qcom/sm8550-qrd.dtb: clock-controller@100000: Unevaluated properties are not allowed ('clocks' was unexpected)
	from schema $id: http://devicetree.org/schemas/clock/qcom,sm8550-gcc.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
