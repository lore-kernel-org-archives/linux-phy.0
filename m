Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B66D9C3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 12:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x+OtBRY3/kWpFrPaLCd10U5jq5Xx5kWflLJjaeJ67nE=; b=nRuFgW2YF69vm9Cm9qSGrENr+O
	uv1CTV4drPWe7nU+syd/rWv1CtB8KYFhDXSISFqvEiwR7d9xAuu0UVJvV6qJf3H9PjgXL08gMDWWr
	9atLL8QX92pkP7EBpXJ4qg69cUQIDXhmPYra+GRFhK0Q5fNFCENzq79o1DJ0aO7q2jmMwmnSZOQJI
	lM96Z83TPnwmxaTwtJoe0JSUbEStBEOx+9G3iC+mtdoSZ985Fw6/zkgYa96Th4+hTM6jbxJxkOrh8
	WwgNB4cFd3jSfjgK+IZMeO6ant/AVACSX/4eSeOnyKKrqKgRGCOSzfIYWAyNMsQLH4l6KIwtHJNiA
	+XxT1HAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKG5m-0000000D91f-24qt;
	Wed, 28 May 2025 12:41:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKG25-0000000D8Mz-3Rmo
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 12:37:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B8C95C4962;
	Wed, 28 May 2025 12:35:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C1EAC4CEED;
	Wed, 28 May 2025 12:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748435840;
	bh=4wndtLFFbNEebfg/C0AU/VLVN5six3gi8aYkQ4FdXMs=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ahn71tbfqHirEZbiqqUG6b+e3sTdM2N9VoVBdSL0ehNSC4w1wTsLWmANNJnPHXSHh
	 nhhYhDswb808IV7zbfH4L4c14LW6bRQF1A4q7XPXn+P7yEYrr+Uq4wIEpDAYLlnlXw
	 qFY6+v+c/8msgA23VGOiAaW+X0e91xBaWdkbPFmnQwY4I3BZ16G/oJyn5Ihn7uLPfe
	 tflaC55nk6v+YJbgceh8y/W8CPG+WHki9h6BhvujCtsYmfxqP5orN2MHgf22lkkNNA
	 lMErMvGtJiHS0MZaaSy1GqfMh6Ot6gmDMDzxbqCTIe+sCZWFnP134Fbvyi/NS1YT+i
	 ABVKGx4tPy7wA==
Date: Wed, 28 May 2025 07:37:18 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, devicetree@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Conor Dooley <conor+dt@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
Message-Id: <174843567392.3636631.15770445244907568991.robh@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_053721_960987_6493FF38 
X-CRM114-Status: GOOD (  27.32  )
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


On Tue, 27 May 2025 22:40:02 +0200, Konrad Dybcio wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> The patchset also includes bindings changes and DT changes.
> 
> This has been successfully tested on an SM8550 board, but the
> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> as expected.
> 
> The DisplayPort 4 lanes setup can be check with:
> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> 	name = msm_dp
> 	drm_dp_link
> 		rate = 540000
> 		num_lanes = 4
> ...
> 
> This patchset depends on [1] to allow broadcasting the type-c mode
> to the PHY, otherwise the PHY will keep the combo state while the
> retimer would setup the 4 lanes in DP mode.
> 
> [1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/
> Changes in v3:
> - Take the series from Neil
> - Rebase
> - Rename many variables
> - Test on X1E & X13s
> - Apply a number of small cosmetic/codestyle changes
> - Remove some unused variables
> - Some smaller bugfixes
> - Link to v2: https://lore.kernel.org/lkml/20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org/
> Changes in v2:
> - Reference usb-switch.yaml in bindings patch
> - Fix switch/case indenting
> - Check svid for USB_TYPEC_DP_SID
> - Fix X13s patch subject
> - Update SM8650 patch to enable 4 lanes on HDK aswell
> - Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (1):
>       phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
> 
> Neil Armstrong (5):
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
>       phy: qcom: qmp-combo: store DP phy power state
>       phy: qcom: qmp-combo: introduce QMPPHY_MODE
>       phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE
>       arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set up 4-lane DP
> 
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 182 +++++++++++++++++++--
>  3 files changed, 173 insertions(+), 22 deletions(-)
> ---
> base-commit: 460178e842c7a1e48a06df684c66eb5fd630bcf7
> change-id: 20250527-topic-4ln_dp_respin-c6924a8825ce
> 
> Best regards,
> --
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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


This patch series was applied (using b4) to base:
 Base: using specified base-commit 460178e842c7a1e48a06df684c66eb5fd630bcf7

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com:

arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-r4.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360-wifi.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r1-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick-r0.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler-rev1-inx.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r4.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r1.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r9.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r2-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-r9.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1-kb.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r3.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-r10.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-idp.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-parade.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler-rev1-boe-rt5682s.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler-rev1-boe.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r9-kb.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r3-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-ti.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r1-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r9.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r3.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-r1-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r9-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-ti.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r3.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler-rev1-inx-rt5682s.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r2.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r2.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r5.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-kb.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r3-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r1.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sm7125-xiaomi-joyeuse.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r10.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick-r0-lte.dtb: phy@88e8000 (qcom,sc7180-qmp-usb3-dp-phy): 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
