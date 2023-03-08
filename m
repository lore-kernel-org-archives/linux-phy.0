Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00917C76186
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUK6f49PF0SyteyUKJJCePgq/7ypEy8EicDbkQ4v7AY=; b=ytNgciM93nA3B6
	kpL34Nl4y8hpm6jYlTiqQEr+6xEAgrUJjIYYDXKus/TVNq48CLMwbPMD6Ai8JHnYtVfNgHfamocG8
	nJYI/QDhwIOZlotd1FM3kzMqd4tg9aC/PzbSlcoCKvHfLTjXxPuXykk1u48vM+U6qDrwoxvrY5hn8
	A2eCp7iDuVEuJp9ZPSK58rqFVV24/c9H2ULdAbyOfKsFTthYzX00j/BGEJEEa2DfE8mI2bub4/eYD
	HT09VFz5viBVOwVivnBWoQndciDRCVZGubJRHiETar3nfwOWuRHLhvMQFPm3hINVySe2wAn9Rik9J
	gnJJ8y8F/S+Ce97S6NUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6n-003xiM-DG; Wed, 08 Mar 2023 08:25:13 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6k-003xfL-MW
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:25:12 +0000
Received: by mail-pl1-x62f.google.com with SMTP id ky4so16976471plb.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yjf3s2TyGH/y+9CG/Fm2q4b8eA0ln6/5386V6jiDwps=;
        b=S4csL0AFz9Q8BpY56T295R/66sbYxsEYPViYEZxKxvR7pWoQSDV1UmUErdiwfN6B6b
         DzGYFqkj5rFWvfYm3SP7+vP8vLKvObNofzzQX2iRRAm8CCxl/LwP26irLW8VabWJWLtP
         alugDw4gcyy8XLZZFsBy+U+DVkDy3bT6nlzBe+ParDXCv3P7W5C4fOP3HijTiixC5aWN
         XXXZrY+VhETVPLG0U5OQqsPaCHjFPmgfkRxTk/EHq5ZaLNwkjeXMP3C8BhKRb1aka9+7
         rc7roPaDBeZ5RBtrncbkXWn6/kk3/+vPLGr6jBKzqBXHfvs/fwLr+0eAAdJFYRjIMd8c
         1NEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yjf3s2TyGH/y+9CG/Fm2q4b8eA0ln6/5386V6jiDwps=;
        b=JSXukLoRLa1O/FYtVMnkxB1llr+Y5ErLSw6V2F7P7D4PFOmGmRgmmaR/9dkcZufLMH
         vHJXUwBriZfxOoy1HZ/tQ+H0MjSzjXQ2JTs7J9mJZPSdGqMENXefFIoR/JJvZxHvph6/
         N+UyZqAH4JtjTQQHXyUV2rsDwT/rAeHZRkGwI1Uug1YEK/u8oskLh8sB9EoC4Ru4XE8a
         vnuIrQ9IFAxrTql+6tPQoixhrW7Uli/YyBU8OV9W1xjBzDDvSOTvbeXv5a9xitU9WlTe
         0APwkjQXov9pmaLyxnx+C9UKW7U7sZ3CuIfF3+CVSMeDr28Z0h/+v0VqFrcklcrfTijC
         f0Sw==
X-Gm-Message-State: AO0yUKWlEMPCnSimpOImNLtMNR0UtCwpH6yug1dvInhB+fbLUOOqG/fZ
	hFUUhVJA/cY/9oPUx0+vR6vI
X-Google-Smtp-Source: AK7set/x/Tt/Gaf7cyi7yIYio3Lv8+0KLkcs+FxHic0Ne0UGCi8t1RDH7aRoWDm/p5Xwxbhqgd+K9w==
X-Received: by 2002:a17:902:c10a:b0:19e:7b09:bd4d with SMTP id 10-20020a170902c10a00b0019e7b09bd4dmr15605996pli.47.1678263907564;
        Wed, 08 Mar 2023 00:25:07 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:25:07 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 08/13] ARM: dts: qcom: sdx55: List the property values vertically
Date: Wed,  8 Mar 2023 13:54:19 +0530
Message-Id: <20230308082424.140224-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002510_773732_A884A816 
X-CRM114-Status: UNSURE (   9.29  )
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

To align with the rest of the devicetree files and the relative properties,
let's list the values of properties such as {reg/clock/interrupt}-names
vertically.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index 9dabb94eafbc..286fa92da428 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -393,7 +393,11 @@ pcie_ep: pcie-ep@1c00000 {
 			      <0x40001000 0x1000>,
 			      <0x40200000 0x100000>,
 			      <0x01c03000 0x3000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "addr_space",
 				    "mmio";
 
 			qcom,perst-regs = <&tcsr 0xb258 0xb270>;
@@ -405,12 +409,18 @@ pcie_ep: pcie-ep@1c00000 {
 				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
 				 <&gcc GCC_PCIE_SLEEP_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>;
-			clock-names = "aux", "cfg", "bus_master", "bus_slave",
-				      "slave_q2a", "sleep", "ref";
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "sleep",
+				      "ref";
 
 			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "global", "doorbell";
+			interrupt-names = "global",
+					  "doorbell";
 			reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
 			wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
 			resets = <&gcc GCC_PCIE_BCR>;
@@ -434,7 +444,10 @@ pcie_phy: phy@1c07000 {
 				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
 				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen";
 
 			resets = <&gcc GCC_PCIE_PHY_BCR>;
 			reset-names = "phy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
