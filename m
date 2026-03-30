Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB8B610D14A4
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 12:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1xoRzYsE7RX3caeDqP03gAq0lrhGRIuM9Sdgg82I0M=; b=fdQepTbTgcHDes
	8Y7QmsmcZf67FC6T6XjqWdWIzOJaQPaJN8edYfCj+rBR4Je1Kwt6fc3iAJr6R8cca6PUVR8Pc5TYB
	JSZ3BAOnPpjRciOENUb8VLvoQW4ofrRDZ0PSU0J3ofYKoudVJb8V4e8ZNeYHNHpd99MBQZ21JD+/F
	PnISpjxqDzFhtjl8ME2uwMxoEXbjvBAzfhXDNbvpR2j/879U5Xm+DD3cvS30SD8IboIfY2VKQjkgD
	g4MA/ornMv8GpP1vIE0nU06aGEPD/duApL01vk15d70/TkZwG96y6C8vOjVxngn/FTDfql+T0/sTh
	Fg6lS5UvMyvr3GxDoJ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BL1-0000000BD7W-2zRz;
	Mon, 30 Mar 2026 12:03:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BL0-0000000BD7O-2L8z
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 12:03:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 84E41600CB;
	Mon, 30 Mar 2026 12:03:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31E8FC4CEF7;
	Mon, 30 Mar 2026 12:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774872201;
	bh=6rGfrEd7z0om+/8Eg1iaTxQn0X+cJxlNGLuxFE1DC0k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tKbA9FX3bQnMvq28DJdJFIlUDQ97waRpWk5wHoypnrirkiYLozRGRBGOWiCBZnzPt
	 Iyr9C7YAWqWm9cV2GbXZJA/20Nu+lp7oMCBgid0p/3PH6z5ZJ56F7fg5OYkHvgQC3x
	 VEFiDD6yNO4WtmZ2N7Q7wqbL0Cf+7Mzgk6063AvhHryA+5i2sFl7CakNgJMC4gj24z
	 lJbjBsQRgr3U9X6KCMHBbCHFVCNDhq6uP0RCx0RtkWm0BwoucR48gcmRGtMoAkQGPR
	 1mzO/e4HAOmyTZgE+/HUSX66pifxjrKHDib3534K77aeamIt4raa8vN3othKczeWmH
	 fMo/IjByXuqZg==
Message-ID: <f2a70c77-f00a-479e-a662-64aa359ddc9b@kernel.org>
Date: Mon, 30 Mar 2026 13:03:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
 <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
 <RAPaPhpxA39W0ykm-Cr1KaDiJKpRqdQTXUeEmt5mQn4lJBHEGaIS010ejjmhUYEBsHjzrTX41Ek9zLU2bae_YA==@protonmail.internalid>
 <76ea03d0-d41b-4880-a48c-06570eb089ed@linaro.org>
 <0101d8bc-1ae8-475e-bb9e-cc1e16db87ec@kernel.org>
 <6d5ebab6-3c4e-4a1c-9578-6e926cbd96de@oss.qualcomm.com>
 <jm31MCQxrDbbf5WzmGa4xB-Qr91ZClFN9-AenTxBa0BtCGq29Rf_ydChxtWcrnbHSbkUII3eAXPK4auAprPYtQ==@protonmail.internalid>
 <gcu6qzsoff2fox3nbytegyikajn65ae4ekowcn7bs4x2k53vao@rykmxndzzhlu>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <gcu6qzsoff2fox3nbytegyikajn65ae4ekowcn7bs4x2k53vao@rykmxndzzhlu>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 30/03/2026 12:49, Dmitry Baryshkov wrote:
>> // determined at runtime
>> csid_n: csid@1000000 {
>> 	phys = <&csiphy_0>,
>> 	       [...]
>> 	       <&csiphy_n-1>;
>> };
> I think the bigger problem is:
> 
> &csid_L: {
> 	phys = <&csiphy_M>;
> };
> 
> &csid_N: {
> 	phys = <&csiphy_M>;
> };
> 
> aka split mode.

Depends on how you model it.

It feels like a philosophical as opposed to an engineering debate in a way.

The CSIPHY block is defined as one thing - is split mode one PHY or two ?

You could argue it either way BUT one strong argument for it being one 
PHY is - voltage rails, input clocks etc power the block.

Sure there is an esoteric mode called split or combo mode but the 
hardware block itself the thing we usually call the PHY lives as a block 
diagram as a discreet entity.

So I think split-mode really is more like

&csid_L: {
	phys = <&csiphy_0 DPHY>, <&csiphy_1 CPHY>;
};

&csid_M: {
	phys = <&csiphy_0 DPHY>, <&csiphy_1 CPHY>;
};

Recall the debate about a mux is because CSID may connect to any CSIPHY.

csiphy_0: {

	clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
		 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
	clock-names = "core",
		      "timer";

	operating-points-v2 = <&csiphy_opp_table>;

	interrupts = <GIC_SPI 1 IRQ_TYPE_EDGE_RISING>;

	power-domains = <&rpmhpd RPMHPD_MX>,
			<&rpmhpd RPMHPD_MMCX>;
	power-domain-names = "mx",
			     "mmcx";

	vdda-0p9-supply = <&vreg_xyz_0p8>;
	vdda-1p2-supply = <&vreg_qrs_1p2>;

	ports {
		port@0{};
		port@1{};
	};
};

csiphy_N: {
	clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
		 <&camcc CAM_CC_CSI1PHYTIMER_CLK>;
	clock-names = "core",
		      "timer";

	operating-points-v2 = <&csiphy_opp_table>;

	interrupts = <GIC_SPI 2 IRQ_TYPE_EDGE_RISING>;

	power-domains = <&rpmhpd RPMHPD_MX>,
			<&rpmhpd RPMHPD_MMCX>;
	power-domain-names = "mx",
			     "mmcx";

	vdda-0p9-supply = <&vreg_abc_0p8>;
	vdda-1p2-supply = <&vreg_def_1p2>;

	ports {
		port@0{};
	};
};

IMO split mode is a special mode of that hardware block, not two 
individual PHYs.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
