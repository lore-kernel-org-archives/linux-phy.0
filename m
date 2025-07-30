Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4990FC83F26
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 20:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/J2jEOuOgRb/wb/X09ozpL6d46wCQRJpgOpG280l5Lc=; b=BfSTqef3Bv4CnnpF7lEcx3Ve3b
	rRD8eOtCnSQqhQL+zMoP+4V+72086KenQpc8b70ymW6JV0Sga+sKTB4FfqoQ2xPegO2qJ/tKdtni9
	7KDiaTaj1xf0BQcdST9/8i1r9/iF92BmJ9JAdFjaHua68IgE6AkhzrXmp/98oq9aHD+sN+oekSLI+
	8cFW3aTwhhccP9B3qI5Zqqa9TsQFPwoVNiSHu8/3kWZu6MrnnBQDP7kRTb7GgmIiuQuCtaq1UTruU
	w8sXFkudhqWziNh8cusj0PFoS/JtJozx1vv2CA+kV4ChLt55pIEzFPuXSzK77dBNYPFNimnAwZC8P
	ihjyOchQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhDos-00000002Qjh-2vkx;
	Wed, 30 Jul 2025 20:54:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhDop-00000002QjH-2Eyb
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 20:54:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 24730A54F02;
	Wed, 30 Jul 2025 20:54:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 851D3C4CEE3;
	Wed, 30 Jul 2025 20:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753908872;
	bh=B9Knq1s0O26WBoCrK4ngNaXKjfNel1u/fAqF4ihbGHQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=L2Ln6bVt/h0wYsggt/SFzmeV0u0bc1tDHG5anl/9kTHup2cT8AdhbxyFd8vJ2iQ8Z
	 eYJcql0twEt6pEg+F13mmyPSLArY0rQ5yL0g+spZpyPI4RkaBCpEuNZ6JWDoI3Ta0D
	 tz7VQTd/RZhZP3yDdEdRpXdJ+v8O+5S3tYvTs0MW5pHcIIGWO3308B4TuQ2a4IMsqD
	 LXfyNUetI9LCHpNOHQcMDmY0bUVOrpzQUUOBoWP73pHPe/VUjjr1vJArW4j79+tCSv
	 xcrmOPXz68Dvq/jkdnMdIA6sAdvZOphvz9/jPD7ErXiOomRrboVk6JG4wdF9+bx2Xk
	 4SP5IYmlVhp+w==
Date: Wed, 30 Jul 2025 15:54:31 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Taniya Das <quic_tdas@quicinc.com>, Conor Dooley <conor+dt@kernel.org>, 
 Johan Hovold <johan@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, stable@vger.kernel.org, 
 Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
Message-Id: <175390856538.1725252.16820505469946792548.robh@kernel.org>
Subject: Re: [PATCH 0/3] phy: qcom: edp: Add missing refclk clock to
 x1e80100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_135435_712965_8B3C917F 
X-CRM114-Status: GOOD (  14.49  )
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


On Wed, 30 Jul 2025 14:46:47 +0300, Abel Vesa wrote:
> According to documentation, the eDP PHY on x1e80100 has another clock
> called refclk. Rework the driver to allow different number of clocks
> based on match data and add this refclk to the x1e80100. Fix the
> dt-bindings schema and add the clock to the DT node as well.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Abel Vesa (3):
>       dt-bindings: phy: qcom-edp: Add missing clock for X Elite
>       phy: qcom: edp: Add missing refclk for X1E80100
>       arm64: dts: qcom: Add missing TCSR refclk to the eDP PHY
> 
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 23 +++++++++++-
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi             |  6 ++-
>  drivers/phy/qualcomm/phy-qcom-edp.c                | 43 ++++++++++++++++++----
>  3 files changed, 62 insertions(+), 10 deletions(-)
> ---
> base-commit: 79fb37f39b77bbf9a56304e9af843cd93a7a1916
> change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
> 
> Best regards,
> --
> Abel Vesa <abel.vesa@linaro.org>
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
 Base: using specified base-commit 79fb37f39b77bbf9a56304e9af843cd93a7a1916

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org:

arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dtb: phy@8909a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dtb: phy@890ca00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dtb: phy@aec2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dtb: phy@aec5a00 (qcom,sc8280xp-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dtb: phy@220c2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dtb: phy@220c5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-crd-pro.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dtb: phy@8909a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dtb: phy@890ca00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dtb: phy@aec2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dtb: phy@aec5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dtb: phy@220c2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dtb: phy@220c5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcm6490-idp.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1p42100-crd.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: phy@aec2a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: phy@aec5a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e001de-devkit.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dtb: phy@aec2a00 (qcom,sc8180x-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-idp.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: phy@aec2a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: phy@aec5a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-idp2.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: phy@aec2a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: phy@aec5a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-lte.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme-lte.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8180x-primus.dtb: phy@aec2a00 (qcom,sc8180x-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus15.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-crd-r3.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: phy@aec2a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: phy@aec5a00 (qcom,sa8775p-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-crd.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8295p-adp.dtb: phy@8909a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8295p-adp.dtb: phy@890ca00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8295p-adp.dtb: phy@aec2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8295p-adp.dtb: phy@aec5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8295p-adp.dtb: phy@220c2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8295p-adp.dtb: phy@220c5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dtb: phy@8909a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dtb: phy@890ca00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dtb: phy@aec2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dtb: phy@aec5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dtb: phy@220c2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dtb: phy@220c5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus13.dtb: phy@aec2a00 (qcom,x1e80100-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dtb: phy@8909a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dtb: phy@890ca00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dtb: phy@aec2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dtb: phy@aec5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-crd.dtb: phy@8909a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-crd.dtb: phy@890ca00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-crd.dtb: phy@aec2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-crd.dtb: phy@aec5a00 (qcom,sc8280xp-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dtb: phy@220c2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dtb: phy@220c5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-crd.dtb: phy@220c2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc8280xp-crd.dtb: phy@220c5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8540p-ride.dtb: phy@8909a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8540p-ride.dtb: phy@890ca00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8540p-ride.dtb: phy@aec2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8540p-ride.dtb: phy@aec5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8540p-ride.dtb: phy@220c2a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sa8540p-ride.dtb: phy@220c5a00 (qcom,sc8280xp-dp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dtb: phy@aec2a00 (qcom,sc7280-edp-phy): clock-names: ['aux', 'cfg_ahb'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
