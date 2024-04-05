Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CD88CD1299
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8Q7kinCVZTX3D8KKzPeHEvC3Szp0lZ1HaSlNuZV5MA=; b=xbqIdYf2iwFe1T
	5B8HPsImQA8UL7R8vqgNY1sRZXZKH/doMXalUQWCBNxUxgx0ZKzdgZVK64jml/VVrvPD0w4Jg71hd
	6owVZCavmhsSrzrnZCFqfjyzCCzqHkm357slOTaP8Eebh/gXDTkPTc/xP0fnWMBg+/r2rw3zE1lqZ
	QmWSwscNY7YBBl9hjhcUL20o6dkUmQPwjNzfAXfxrZFDI5FLq2fRCxCeB1w5L25es1+TzgZ4CSnRD
	vsHIq5NSCkvAqIIWhZC1HW74EinIPnWN7h5wRtwPK34oveBdygIdnn3wKCebUKvRA+tSaxPLMBEjY
	awFWyW5PCxQKjlDx6AxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn45-000000089oC-0KHt;
	Fri, 05 Apr 2024 17:09:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn42-000000089ld-2RuI
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 17:09:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F0DAC618E6;
	Fri,  5 Apr 2024 17:09:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CD8DC433C7;
	Fri,  5 Apr 2024 17:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336957;
	bh=f1kvZGzRe2SXSRDmHY4ReUMQwtDg/dGy62MWDdLbfWk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WYEEQr90KrTbu0rcJ2vk3kkx8nQl2+emnZrsljq8sA3FDapGTh+zx1Z2rrR49oiLV
	 y7DwtCH4DIxhX6XGKABTF4LIyngi5fJWRd/01VPFpst8FRfRJiLoWMtUbrAJgqwa1j
	 dVdFq8ieqGjTawNwtTgINJZCj3cGzWeLJFkjAelB/svo9PZekKomha8WAdIMP7z40A
	 Y+MyuHI9N/mxJxye2hiYlKqxR9v8XYQDP+ZOV+Acs18iZ5HzlIQLKX+4LOSFV2bUi4
	 sM7SbQ9Bb0BYzUfvz4DwUpJ6xIAWNuV2LfNNg6tqzguQ0QM5D3OhS1xC+QAHUKJPxz
	 S7yT20yE2gl1Q==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
Subject: Re: (subset) [PATCH v2 0/7] arm64: qcom-sm8[456]50: properly
 describe the PCIe Gen4x2 PHY AUX clock
Message-Id: <171233695315.304553.592159497575428525.b4-ty@kernel.org>
Date: Fri, 05 Apr 2024 22:39:13 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_100918_818319_651EB5DD 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
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


On Fri, 22 Mar 2024 10:42:37 +0100, Neil Armstrong wrote:
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
> "PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
> is muxed & gated then returned to the PHY as an input.
> 
> Document the clock IDs to select the PIPE clock or the AUX clock,
> also enforce a second clock-output-names and a #clock-cells value of 1
> for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs
      commit: 72bea132f3680ee51e7ed2cee62892b6f5121909
[2/7] phy: qcom: qmp-pcie: refactor clock register code
      commit: 677b45114b4430a43d2602296617efc4d3f2ab7a
[3/7] phy: qcom: qmp-pcie: register second optional PHY AUX clock
      commit: 583ca9ccfa806605ae1391aafa3f78a8a2cc0b48
[4/7] phy: qcom: qmp-pcie: register PHY AUX clock for SM8[456]50 4x2 PCIe PHY
      commit: 5cee04a8369049b92d52995e320abff18dfeda44

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
