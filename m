Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 560CDC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHiykQXu0UxIGxulVysBPbcGR14uyFc89Bs9lW3dVF4=; b=nMik23EuVjBnJb
	nbKrJo0Ztd+hNS+F4pSUMxBFfuWYZvew5552OZ+CmA8dI+FxSyKPwOLrnTz6Hvdm2379YZWmxKqcR
	hqsiO7/Hf7KziGU/lBOLKIasgn1ltl62h0sy4gwSZ62ZnjWYsZ9zpONUpTXf5AD8N40MmtatW8eB6
	AKVX7laXQy8d+rRBzpBykbPVOMuYXLy76O8FbjsJ78zJxhwyOPzFrDPidivR5qZcJ4/DEleAhlwM0
	tRoA3J55V2nAp6LZV542le5Xk/w/RcahKMQObH0xnXW/Y7OPqkKFh4lNV961s7v0Wb5qcQapmRUhN
	y03uEFgBKzolcZNnsrJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWH-00EeR7-OI; Fri, 11 Nov 2022 09:40:17 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWE-00EeOx-Go
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:40:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2C89FB824B7;
	Fri, 11 Nov 2022 09:40:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AC53C433B5;
	Fri, 11 Nov 2022 09:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159611;
	bh=pwJld/NDv6EFSXj/8bGWt2JYworcFl8ayZrNG0RBYVg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BvB545SeJo3aPXhqnDqx0vrS5nZIUtHJdsgjeJ/QP+3YW3m4h9CpN9abDWqpFNTk0
	 HrR9sY3Z4gLQFP76NW/irY5vUP/YPJRd3UPBcRxSxor/L/Cu0x7OYotvUjkxNIVddj
	 d9PZ2na8SyjAzvqzL/WJn/kxv7Nxzeo7sZPwynAlfC9Uewpa0lRuKPes76SB9+ho/e
	 jy6pZa6GKjL5OQAFiBDMERdvzvqJTk4I4m+p9KV8q48pwvc/yyudz2Sk3M4x4mdzNI
	 NmGnmVlNyPgWiqVhXOOos6J4Y3dyNn1wqsvmgbpcfNZ1G9h6XVFU3BFKIOc0WNjxmM
	 LL7tGhslsAjpQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQVj-0002xl-D6; Fri, 11 Nov 2022 10:39:43 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 3/3] arm64: dts: qcom: sc8280xp: drop reference-clock source
Date: Fri, 11 Nov 2022 10:38:57 +0100
Message-Id: <20221111093857.11360-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111093857.11360-1-johan+linaro@kernel.org>
References: <20221111093857.11360-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014014_762847_3D1A82A4 
X-CRM114-Status: GOOD (  11.76  )
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

The source clock for the reference clock should not be described by the
devicetree binding and instead this relationship should be modelled in
the clock driver.

Update the USB PHY nodes to match the fixed binding.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 985138b6adac..531cd68a80ea 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1595,12 +1595,10 @@ usb_2_qmpphy0: phy@88ef000 {
 			reg = <0 0x088ef000 0 0x2000>;
 
 			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_MP0_CLKREF_CLK>,
 				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
 				 <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux",
-				      "pipe";
+			clock-names = "aux", "ref", "com_aux", "pipe";
 
 			resets = <&gcc GCC_USB3_UNIPHY_MP0_BCR>,
 				 <&gcc GCC_USB3UNIPHY_PHY_MP0_BCR>;
@@ -1621,12 +1619,10 @@ usb_2_qmpphy1: phy@88f1000 {
 			reg = <0 0x088f1000 0 0x2000>;
 
 			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_MP1_CLKREF_CLK>,
 				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
 				 <&gcc GCC_USB3_MP_PHY_PIPE_1_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux",
-				      "pipe";
+			clock-names = "aux", "ref", "com_aux", "pipe";
 
 			resets = <&gcc GCC_USB3_UNIPHY_MP1_BCR>,
 				 <&gcc GCC_USB3UNIPHY_PHY_MP1_BCR>;
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
