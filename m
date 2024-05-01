Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E85C19F53
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwS4dRdNHKg7e7Sh4e/QhkncP75duV8fnT3bj8KbLpc=; b=N4iaaLri64TIGF
	btMlgLx3y9fcE7FIOIHNvosl3AObpdHPvjETDkl0834XbFvkakBchjuOyy2aGsTsnv1rKeTaDOPdD
	HOv1aZo0m8QsDBV7pUkops+nQ3G21zAQUrHSPtSQm/VnD7wMr3Og8YPPnYLBNu1wXecdypxRxgaEi
	vzCP2wQxzWTzycvz70XafQ+6qJdtbeBwR9vc6c2oNrqxeGTwLi5hfhwFW/JLbhhxzlz2ZPHTAYxVI
	toCCoXS+g030pNlAeqsJuw5Um6RtAOcUsXrYp0NrlrB18t8snPjeeWta0m2GCPJ2WcRE9LlobvgYH
	VbQu+6gLg6DUuCRISgeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21ak-00000008XXH-3ZgE;
	Wed, 01 May 2024 04:29:14 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21ah-00000008XUj-22gw
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:29:12 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6ee575da779so1215015a34.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714537750; x=1715142550; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lS+64DkLIQ8nbNaGoMXOJ1Gbc+Q4ngs9pfz0WhHIiSc=;
        b=P2S/JCyGuNorb5e/En7Kjnz9lhc9R9ViqoK/3CJKL6zPlsN3eDQwO+sbgqAKPLPpSa
         QToWjdmGm3Cnn6kVla1DS0lp0Weo86E4qLEah4YrapA4a6BcJi0Rlt9OSMWr+DSfX+q7
         0kkA5MJDy6Ammle/HFayyI0/YGxYm2K3tIWHF3+CPMUcaQJfiXJD1IkWeGeNKVgp0KLF
         TRPYuvA/ChH5SlpAZSOtb/cJiFnuLU0Jfuv8bN1c2HAWbMnRC5EmrO6wRxv294vXtq7+
         5fFVCUJGVg42s6I8AoHz8niRMKeiNtI80HF9TOe2kqvvlZsX1a5bzqWp7KJi5Ow7BI9D
         OXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714537750; x=1715142550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lS+64DkLIQ8nbNaGoMXOJ1Gbc+Q4ngs9pfz0WhHIiSc=;
        b=BjGLTjnkcsAq+scRQZHKSq84mRoWCpKW8GEIcEFucRtMCUB+nuUZ2sfI8L33UO5zqz
         6J+UWMp/kz6Z6sGU89sgYRyVI0Uxh2Z6SnXCFx324ebz2PHyM2eL6+0cyWFXFNM+5Z75
         SV5hCDCh8fgKGzaUEPT72/Im9v7bU/S0dOPTVLIv6Ihloaivb6iNJFi/1c/TWxti8S0k
         H4IpJoHdYxzvUKYGLaZJGzHiBSSjYxaFlz0NucgsOMjehtGtDXr/VRS1fnLgETGSEXq4
         +n3RN7jYhn+WaQcKIt/u3bmrP4b3ZFURDPaVkwxNhjjAXIAielWBgYnSilTRCjlmhALK
         KoTw==
X-Forwarded-Encrypted: i=1; AJvYcCWmPX9cj0cq1a3qbfltFVGCvjjgjo2UedPbQlJlru5h+4EcWGh0DywMMRTJpPTiL3Huqy4Riju3LoMeeUIhdsLuQUkDKZgmU1XAR5aBbQ==
X-Gm-Message-State: AOJu0YwJEimoiAGy9bf23xNi5CsyA/QsqawruILXkw1fxC+DNGcGV76l
	OJfd9gyEXzeZPD+VJSyViTnNvmjN/L6g483sqBbT+0gTkW3fZcoJ
X-Google-Smtp-Source: AGHT+IGIrAKyP/bGpH/Jtpq/owhHBsB2H5z0Uq8LIuVBmhtjxaoJpsLgICttbWudaLL6KNIRsTBjMw==
X-Received: by 2002:a05:6830:100f:b0:6ee:575b:8dd5 with SMTP id a15-20020a056830100f00b006ee575b8dd5mr1499213otp.20.1714537750061;
        Tue, 30 Apr 2024 21:29:10 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id do26-20020a0568300e1a00b006ed6dc9fd54sm2719058otb.25.2024.04.30.21.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:29:09 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v4 RESEND 8/8] arm64: dts: qcom: ipq9574: add PCIe2 and PCIe3 nodes
Date: Tue, 30 Apr 2024 23:28:47 -0500
Message-Id: <20240501042847.1545145-9-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_212911_601098_AE7CCAC5 
X-CRM114-Status: GOOD (  12.38  )
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

On ipq9574, there are 4 PCIe controllers. Describe the pcie2 and pcie3
nodes, and their PHYs in devicetree.

The pcie0 and pcie1 controllers use a gen3x1 PHY, which is not
currently supported. Hence, only pcie2 and pcie3 are described. Only
pcie2 was tested because my devboard only has conenctions to pcie2.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 178 +++++++++++++++++++++++++-
 1 file changed, 176 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 7f2e5cbf3bbb..c391886cf9ab 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -300,8 +300,8 @@ gcc: clock-controller@1800000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <0>,
-				 <0>,
+				 <&pcie2_phy>,
+				 <&pcie3_phy>,
 				 <0>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
@@ -745,6 +745,180 @@ frame@b128000 {
 				status = "disabled";
 			};
 		};
+
+		pcie2_phy: phy@8c000 {
+			compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy";
+			reg = <0x0008c000 0x14f4>;
+
+			clocks = <&gcc GCC_PCIE2_AUX_CLK>,
+				 <&gcc GCC_PCIE2_AHB_CLK>,
+				 <&gcc GCC_PCIE2_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie_phy2_pipe_clk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_PCIE2_PHY_BCR>,
+				 <&gcc GCC_PCIE2PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "common";
+			status = "disabled";
+		};
+
+		pcie3_phy: phy@f4000 {
+			compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy";
+			reg = <0x000f4000 0x14f4>;
+
+			clocks = <&gcc GCC_PCIE3_AUX_CLK>,
+				 <&gcc GCC_PCIE3_AHB_CLK>,
+				 <&gcc GCC_PCIE3_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie_phy3_pipe_clk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_PCIE3_PHY_BCR>,
+				 <&gcc GCC_PCIE3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "common";
+			status = "disabled";
+		};
+
+		/* TODO: Populate pcie0/pcie1 when gen3x1 phy support is added. */
+
+		pcie2: pcie@20000000 {
+			compatible = "qcom,pcie-ipq9574";
+			reg = <0x20000000 0xf1d>,
+			      <0x20000f20 0xa8>,
+			      <0x20001000 0x1000>,
+			      <0x00088000 0x4000>,
+			      <0x20100000 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+
+			ranges = <0x81000000 0x0 0x20200000 0x20200000 0x0 0x00100000>,
+				 <0x82000000 0x0 0x20300000 0x20300000 0x0 0x07d00000>;
+
+			device_type = "pci";
+			linux,pci-domain = <3>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <2>;
+			max-link-speed = <3>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			phys = <&pcie2_phy>;
+			phy-names = "pciephy";
+
+			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 164 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 165 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 186 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 187 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE2_AXI_M_CLK>,
+				 <&gcc GCC_PCIE2_AXI_S_CLK>,
+				 <&gcc GCC_PCIE2_AXI_S_BRIDGE_CLK>,
+				 <&gcc GCC_ANOC_PCIE2_2LANE_M_CLK>,
+				 <&gcc GCC_SNOC_PCIE2_2LANE_S_CLK>,
+				 <&gcc GCC_PCIE2_RCHNG_CLK>;
+			clock-names = "axi_m",
+				      "axi_s",
+				      "axi_bridge",
+				      "rchng";
+
+			resets = <&gcc GCC_PCIE2_PIPE_ARES>,
+				 <&gcc GCC_PCIE2_AUX_ARES>,
+				 <&gcc GCC_PCIE2_CORE_STICKY_ARES>,
+				 <&gcc GCC_PCIE2_AXI_M_ARES>,
+				 <&gcc GCC_PCIE2_AXI_S_ARES>,
+				 <&gcc GCC_PCIE2_AXI_S_STICKY_ARES>,
+				 <&gcc GCC_PCIE2_AXI_M_STICKY_ARES>,
+				 <&gcc GCC_PCIE2_AHB_ARES>;
+			reset-names = "pipe",
+				      "aux",
+				      "sticky",
+				      "axi_m",
+				      "axi_s",
+				      "axi_s_sticky",
+				      "axi_m_sticky",
+				      "ahb";
+			status = "disabled";
+		};
+
+		pcie3: pcie@18000000 {
+			compatible = "qcom,pcie-ipq9574";
+			reg = <0x18000000 0xf1d>,
+			      <0x18000f20 0xa8>,
+			      <0x18001000 0x1000>,
+			      <0x000f0000 0x4000>,
+			      <0x18100000 0x1000>;
+			reg-names = "dbi", "elbi", "atu", "parf", "config";
+
+			ranges = <0x81000000 0x0 0x18200000 0x18200000 0x0 0x00100000>,
+				 <0x82000000 0x0 0x18300000 0x18300000 0x0 0x07d00000>;
+
+			device_type = "pci";
+			linux,pci-domain = <4>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <2>;
+			max-link-speed = <3>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			phys = <&pcie3_phy>;
+			phy-names = "pciephy";
+
+			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 189 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 190 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 192 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 192 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE3_AXI_M_CLK>,
+				 <&gcc GCC_PCIE3_AXI_S_CLK>,
+				 <&gcc GCC_PCIE3_AXI_S_BRIDGE_CLK>,
+				 <&gcc GCC_ANOC_PCIE3_2LANE_M_CLK>,
+				 <&gcc GCC_SNOC_PCIE3_2LANE_S_CLK>,
+				 <&gcc GCC_PCIE3_RCHNG_CLK>;
+			clock-names = "axi_m",
+				      "axi_s",
+				      "axi_bridge",
+				      "anoc",
+				      "snoc",
+				      "rchng";
+
+			resets = <&gcc GCC_PCIE3_PIPE_ARES>,
+				 <&gcc GCC_PCIE3_AUX_ARES>,
+				 <&gcc GCC_PCIE3_CORE_STICKY_ARES>,
+				 <&gcc GCC_PCIE3_AXI_M_ARES>,
+				 <&gcc GCC_PCIE3_AXI_S_ARES>,
+				 <&gcc GCC_PCIE3_AXI_S_STICKY_ARES>,
+				 <&gcc GCC_PCIE3_AXI_M_STICKY_ARES>,
+				 <&gcc GCC_PCIE3_AHB_ARES>;
+			reset-names = "pipe",
+				      "aux",
+				      "sticky",
+				      "axi_m",
+				      "axi_s",
+				      "axi_s_sticky",
+				      "axi_m_sticky",
+				      "ahb";
+			status = "disabled";
+		};
 	};
 
 	thermal-zones {
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
