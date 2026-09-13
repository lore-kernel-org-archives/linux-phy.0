Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FE47C88E40
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 07:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyMh8aCXIrRGChKJ/vUiHuPsbKhdtUrkE15vlQSxvpM=; b=QIowdVPVrPiXNm
	LM+bvzVAV7rWOlL3ziUaq0GD//281ec517O45gmPm3nmp4pmRqGUcEgIEbjv8qNrvpL22pLM3APVt
	Eh3QA9BzIwFLDvXzLnTX9glnZYeR0mO8nL0kmgZKJcK7dT/Kry9VaqY6OoIKkvt8TC0NPbScSpWeh
	YajJed+JXGnt8y9Ll0R8JfE8ddMQOGCoNK/iG4aXYhWKtCRDeXjgOxxRw746DJUzT6ubmTke03twp
	vhfIfL7lN3d/noLHaInrnA6xlhqZjqnzT0XYHIrkQx18pWD+FqfQ/MBG8GUQW6fkU3PKSaG3XsHY+
	W+RSoh1WhogNYhEkEWSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5eyX-00000001VOJ-34aJ;
	Sun, 13 Sep 2026 07:50:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5eyW-00000001VOB-3SCo
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 07:50:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3E2A360D8D;
	Sun, 13 Sep 2026 07:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F129E1F000FF;
	Sun, 13 Sep 2026 07:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789285807;
	bh=/vfBaplv3ynsUjvQf48JdtOudWdNUPLDX6cz9N40dxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NQyqepqacY2wTnbV1Q1tXFbycIEo8cp7lLc2CC7si3ixm6N1Dv/EndBL8RCGwikkI
	 qpaGBStF/j16Ocsg4vJJdhhCeunXTxzYlz1aCiFiQrXMHNt96kcLeYTkYJQ+sJTypH
	 n9+808sCaHxi+gSZqpTThxINukKrandZ5LSGN7RyVAG8r469ZpF02XL5wD+wQ5ArWj
	 pa7WaTV8X5klYPMRaGZsY0VL1ijvBRLRchS/w/HnT+CG33hBjbJsWdwCr7Cb1zV7fF
	 RP+UM1NckVZ7HxiOgU10H5BU4bwilWr+LmQiE+hwf7oPM2aU9/G5iULaihLH2F3j6r
	 xADm43avrVrpw==
Date: Sun, 13 Sep 2026 09:50:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 03/17] dt-bindings: display/msm: Document Nord MDSS
Message-ID: <20260913-festive-shrimp-of-strength-10b9df@quoll>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
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

On Fri, Sep 11, 2026 at 09:06:34PM +0530, Nabige Aala wrote:
> +    display-subsystem@ae00000 {
> +        compatible = "qcom,nord-mdss";
> +        reg = <0x0ae00000 0x1000>;
> +        reg-names = "mdss";
> +        power-domains = <&dispcc_gdsc>;
> +        clocks = <&dispcc DISPCC_MDSS_AHB_CLK>,
> +                 <&gcc GCC_DISP_HF_AXI_CLK>,
> +                 <&dispcc DISPCC_MDSS_MDP_CLK>;
> +        clock-names = "iface", "bus", "core";
> +        resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
> +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +        iommus = <&apps_smmu 0x800 0x420>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;

Make the example complete here.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
