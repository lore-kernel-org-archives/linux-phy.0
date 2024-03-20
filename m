Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7952DC6FD1F
	for <linux-phy@archiver.kernel.org>; Wed, 20 Mar 2024 16:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qzJ89GQfNuo/klyJw4jqF6s5DiQy5sCe7/vdUVawJkw=; b=0jdBhIcRxuKHrw74m/fkPQwq81
	8fRqiO4fezILCO6vrAkHtqSn5RPgK1HYXB+KzKeRv4rNJKXpr3aNEGK/gabcBiXRjYMuWE4FXt+BK
	Xao0qzk5KghsYQ6VDQZySIRaHPIOYE8vY41SF9LTzL/ADAehPeZurxA16s+3CaInbdTZqAFU7OHE0
	/CVQM3fO3SeuaFuR73PlqmmrTJHq54tbrU5roJRZn3iceLqNzuoREq0Jp0Wza07MWW7YNQJ27oezR
	+XzuQKJKTw3LT7fVZVhqDd80RXkDv65Et7PfD4A1ri8LfXy87MYxh2BnQZngfuzfUABbq/16DXOGE
	eKBkcMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmygc-00000000HBd-0VXU;
	Wed, 20 Mar 2024 16:21:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmygY-00000000HAa-2f1G
	for linux-phy@lists.infradead.org;
	Wed, 20 Mar 2024 16:21:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EF2E760FF8;
	Wed, 20 Mar 2024 16:21:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B4B7C433C7;
	Wed, 20 Mar 2024 16:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710951661;
	bh=2voymtzNKPgSxyypqQxc/DFgDi1DnnjPRI/z96JK+Fw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=QM6tYwDaQHd9Iurd/HI8yyWkLo4TSp9KaujfDvMwsMu08q6LeM+qsCajsOV098RXD
	 Ea65qVBhYfxiX8mlXxrKInXjLlSBnUg/T7QUBpsAU4D6jbVfTB6IByYQ5alXfQCvqD
	 aaSLzV3Usb8xEL+4JH+/BcsfxgIVshnpEPLC9G7j5CTnnZMaR24vsoJfdmHFrRYOFD
	 tXLU1igLOnTccV/HEm1p1CfC1O4AXhMIGYWUYyhbAv2oRsKw9HyQ4RZ9Mq5v1qh7gB
	 3vSvdkfPvQ6fX7da+GCDw4fOR/MxNVXOVulEvY52M9kfIpvgI5G5+9s2DWhPojEidH
	 yzcmLl95FJdxw==
Date: Wed, 20 Mar 2024 11:21:00 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-kernel@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
Message-Id: <171095148652.1943238.14315576766364498217.robh@kernel.org>
Subject: Re: [PATCH 0/7] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_092102_786248_947F9DF9 
X-CRM114-Status: GOOD (  15.56  )
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


On Tue, 19 Mar 2024 11:44:26 +0100, Neil Armstrong wrote:
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
> Neil Armstrong (7):
>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs
>       phy: qcom: qmp-pcie: refactor clock register code
>       phy: qcom: qmp-pcie: register second optional PHY AUX clock
>       phy: qcom: qmp-pcie: register PHY AUX clock for SM8[456]50 4x2 PCIe PHY
>       arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
>       arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
>       arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  27 +++++-
>  arch/arm64/boot/dts/qcom/sm8450.dtsi               |   8 +-
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |   4 -
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts            |   4 -
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   8 --
>  arch/arm64/boot/dts/qcom/sm8550.dtsi               |  13 +--
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts            |   4 -
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   4 -
>  arch/arm64/boot/dts/qcom/sm8650.dtsi               |  13 +--
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 104 ++++++++++++++++++---
>  include/dt-bindings/phy/phy-qcom-qmp.h             |   4 +
>  11 files changed, 129 insertions(+), 64 deletions(-)
> ---
> base-commit: 2e93f143ca010a5013528e1cfdc895f024fe8c21
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


New warnings running 'make CHECK_DTBS=y qcom/sm8550-hdk.dtb qcom/sm8550-mtp.dtb qcom/sm8550-qrd.dtb qcom/sm8650-mtp.dtb qcom/sm8650-qrd.dtb' for 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org:

arch/arm64/boot/dts/qcom/sm8550-qrd.dtb: clock-controller@100000: clocks: [[41], [42], [43], [44, 0], [45, 0], [45, 1], [45, 2], [46, 0]] is too short
	from schema $id: http://devicetree.org/schemas/clock/qcom,sm8550-gcc.yaml#
arch/arm64/boot/dts/qcom/sm8550-qrd.dtb: clock-controller@100000: Unevaluated properties are not allowed ('clocks' was unexpected)
	from schema $id: http://devicetree.org/schemas/clock/qcom,sm8550-gcc.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
