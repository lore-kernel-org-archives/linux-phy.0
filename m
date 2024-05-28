Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18562C25B78
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 17:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=su0GAuUQlG7wYoDe5iLBNHF8lfjh7p6XErZwAe8VWt8=; b=HqF4+HkpQnmVP14XWmuPJmg1IE
	ibHWZpb32UhxSBPLaeAROXjJcIHUX1tAF/xMJhHb2uKdTc3wH4Anf3GeKKF6I6IUbFzVR3RpzWfJt
	NUZWxV41v30DKcjSWNesoT9ttu9HKhffHvoOdwNosu7ma0BxwErtO2B+uozQGWhOG73BomICW8Nzi
	YS5Ue/Bkb/txuSQMkivHrVgzbAMXKqQW7F413hCknMbMTDTirnX5UDzvZyyLNOqkaau2cq+rofvjO
	5w+/HOM8BPs6JeIlWMmeGekyLuPyJPQYC9kGSxfO143XI42/+xhIp9i/7kkEPe0jHmUa3hjCeYhLV
	LU6O7D1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC0pV-00000001Zjo-3K7q;
	Tue, 28 May 2024 17:41:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC0pS-00000001ZiD-0wMc
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 17:41:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 71C52CE13FF;
	Tue, 28 May 2024 17:41:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66164C3277B;
	Tue, 28 May 2024 17:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716918099;
	bh=/TVduV2ZbhY2J3w1XAChQvYpluvCRq1AayWS8C1G0NA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=qrw1m/MuP3D+0ADSOQl2pR6tl/kLfl5zk/yTvtvHupE8yESkaXuqeVgwVCjU+C9bV
	 QMIqbvEcGL9Y2RW15prtGxmGK3sDZTDoL9hERfT5ZIGw+o4T5QLQY8QIPUwMoDg7ye
	 wX2fiMZvsOxqhm8ZltZbPwpBo/ixOWbTYWD4lHxFlxRB7a+82NIKPJ8wDxc40yy7MH
	 8MKWP7ceB1eYUc6mtMnEViE4R9YNga0bIpkNhjhjvp6R9IhrC5OY8VmODayitW6yCS
	 ZDFLV1haXsatv5BeLeAPvzdkKLbn6Qi9OizxvRoqOQO0crJAiz8rq6sdUCZnzy/jXD
	 QiPNCZrAJhe+A==
Date: Tue, 28 May 2024 12:41:38 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Michael Turquette <mturquette@baylibre.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, Conor Dooley <conor+dt@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
Message-Id: <171691793133.1180499.940663320144175999.robh@kernel.org>
Subject: Re: [PATCH 00/10] arm64: dts: qcom: sc8180x: Enable the USB
 multiport controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_104142_638673_7850F5B9 
X-CRM114-Status: GOOD (  13.79  )
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


On Sat, 25 May 2024 11:03:53 -0700, Bjorn Andersson wrote:
> The USB multiport controller found in SC8180X is used to driver the
> camera in the Lenovo Flex 5G, and a couple of additional USB ports on
> the Primus AUX board.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
> Bjorn Andersson (10):
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add sc8180x USB3 compatible
>       phy: qcom-qmp-usb: Add sc8180x USB UNIPHY
>       dt-bindings: clock: qcom: Add missing USB MP resets
>       clk: qcom: gcc-sc8180x: Add missing USB MP resets
>       dt-bindings: usb: qcom,dwc3: Add SC8180X compatibles
>       arm64: dts: qcom: sc8180x-pmics: Add second PMC8180 GPIO
>       arm64: dts: qcom: sc8180x: Align USB nodes with binding
>       arm64: dts: qcom: sc8180x: Add USB MP controller and phys
>       arm64: dts: qcom: sc8180x-primus: Enable the two MP USB ports
>       arm64: dts: qcom: sc8180x-lenovo-flex-5g: Enable USB multiport controller
> 
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   3 +
>  .../devicetree/bindings/usb/qcom,dwc3.yaml         |  29 ++++
>  .../arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts |  32 ++++
>  arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi        |  16 +-
>  arch/arm64/boot/dts/qcom/sc8180x-primus.dts        |  60 +++++++
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi              | 175 +++++++++++++++++++--
>  drivers/clk/qcom/gcc-sc8180x.c                     |   4 +
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c            |   3 +
>  include/dt-bindings/clock/qcom,gcc-sc8180x.h       |   4 +
>  9 files changed, 312 insertions(+), 14 deletions(-)
> ---
> base-commit: 3689b0ef08b70e4e03b82ebd37730a03a672853a
> change-id: 20240524-sc8180x-usb-mp-4eb278df7ef1
> 
> Best regards,
> --
> Bjorn Andersson <quic_bjorande@quicinc.com>
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


New warnings running 'make CHECK_DTBS=y qcom/sc8180x-lenovo-flex-5g.dtb qcom/sc8180x-primus.dtb' for 20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com:

arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dtb: clock-controller@af00000: clocks: [[41, 0], [42], [120, 0], [120, 1], [124, 0], [124, 1], [127, 0], [127, 1]] is too long
	from schema $id: http://devicetree.org/schemas/clock/qcom,dispcc-sm8x50.yaml#
arch/arm64/boot/dts/qcom/sc8180x-primus.dtb: clock-controller@af00000: clocks: [[41, 0], [42], [122, 0], [122, 1], [126, 0], [126, 1], [129, 0], [129, 1]] is too long
	from schema $id: http://devicetree.org/schemas/clock/qcom,dispcc-sm8x50.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
