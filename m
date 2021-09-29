Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 085E1C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A798261406
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A798261406
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbGfezhEVsEqrQbev1UXerz3wWKBb3YbjZoldfearqI=; b=qFc0Wjjf2vxAWP
	KnqiVLGvAOUS6cs7Flwc3uiCzEmZZ4tlkL9l9unjcxcrDmGgKYi/Xgos8gUjps7dnSCP91O3LUWHd
	Yad6WR4DF3aibkk4doI5GfBtwlyONDBKydNc0ZrVw2Y93JmdlXXYff0JpFro7Nyn6UliccpU0eg0a
	6NS5N/xNizPObVfy875HfTn6tCTJSBW84m7ZOrZw3LmTeyykrlBcadPhPwp3pvu/Lq/BWgmOFvxIK
	rc4f3R+XL5p9bLr9qc2nGO4vO0FwkSyUcKZb+X7+ovZiqvesCmo3298jYZ/pwSKnlPdQ3jBLgFRTw
	7DhqI/ZVIe/hgRrU/FZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQVE-009q57-92; Wed, 29 Sep 2021 03:43:28 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQVB-009q3r-Nt
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:27 +0000
Received: by mail-pg1-x530.google.com with SMTP id e7so1324310pgk.2
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SeF7BJ2kfzyMcFuJy1tahUObN4gbIL9fdiiRuZ+6b4Q=;
 b=KXCAU/zWygeg41b6v3T3RvyoXb/WdEEljCV5CbARJ2D7cw9O+w7WW0z62DxMUCzXtP
 4t1mJsjn3egUwmYDY2tvBLoj6IqGmO2oymTziz3rRFVcj0aVHuQu8mQqbkCt6Dq5wlAa
 AqUeJhnG/WF4gwffJJNCA/Zx1brVmmxVIawDsRKReuZJ3xU2wvsi7+AzY2+lszjeZMkZ
 kY7L9eq9affhWG4YNMySMO7quGi0dX8RBLDcIbPDeyaD8bCbMX3VAL0nEUaImVn/Gzkk
 DuCywCtZsamCNo7IZBDO/bLAyt+UL1aZo64SN6R+Rmxooe0zxO/h2Oauw8LdMZw5Jvmg
 +DAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SeF7BJ2kfzyMcFuJy1tahUObN4gbIL9fdiiRuZ+6b4Q=;
 b=FDLdgrazLxQiCEiYj0NzZGmvLVyC0SQQOU2zLxKLDMUc6mWZlNtZyrcrgBOND+gOcO
 XYKA5idnJkw9/jIKH19++t5Qm+no05yiTWYMyPHzvy12jE4k+HAyXPWlJF36IOqdgV3b
 Rig822nrjnjTZ/8LsvYtPcDkjTptb13fK016WTs8dXqm7UOIt9/+uXS44ThfFdq+DHJX
 f9eRWX3eM+1rZJ+JfeJs9T6leSw01wpY/0Zvxor3V6nYEpAwFc/hc4t96rmaVfBwiRMf
 cYcMKlx/IsYYjL3QVmGfdVkPGMNdkib4bQdpXSs/IheOJxiP2ZXPl2jHGiiUfxh+joj+
 yN8w==
X-Gm-Message-State: AOAM533UYq0mZrZyImLkNrRJmkxxjAIMky4NYH4PbGHKgT8gK/79SGXb
 gfPD2pJzCp3pNIOTl+OH907LAA==
X-Google-Smtp-Source: ABdhPJx1vUxti7/4UYmdzW9rLoKWTHIn2tz0AoJQp/DEBrp1eE19HHiM9bthBHfcu4BXU9y8UdK7Ow==
X-Received: by 2002:a63:d30e:: with SMTP id b14mr7673299pgg.454.1632887004679; 
 Tue, 28 Sep 2021 20:43:24 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:24 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 08/10] arm64: dts: qcom: Fix IPQ8074 PCIe PHY nodes
Date: Wed, 29 Sep 2021 11:42:51 +0800
Message-Id: <20210929034253.24570-9-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204325_797964_22082990 
X-CRM114-Status: GOOD (  10.95  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

IPQ8074 PCIe PHY nodes are broken in the many ways:

- '#address-cells', '#size-cells' and 'ranges' are missing.
- Child phy/lane node is missing, and the child properties like
  '#phy-cells' and 'clocks' are mistakenly put into parent node.
- The clocks properties for parent node are missing.

Fix them to get the nodes comply with the bindings schema.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 46 +++++++++++++++++++++------
 1 file changed, 36 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 2e4e1399e276..dfdd3e4a4087 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -174,34 +174,60 @@
 			status = "disabled";
 		};
 
-		pcie_phy0: phy@86000 {
+		pcie_qmp0: phy@86000 {
 			compatible = "qcom,ipq8074-qmp-pcie-phy";
 			reg = <0x00086000 0x1000>;
-			#phy-cells = <0>;
-			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-			clock-names = "pipe_clk";
-			clock-output-names = "pcie20_phy0_pipe_clk";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
 
+			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
+				<&gcc GCC_PCIE0_AHB_CLK>;
+			clock-names = "aux", "cfg_ahb";
 			resets = <&gcc GCC_PCIE0_PHY_BCR>,
 				<&gcc GCC_PCIE0PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
+
+			pcie_phy0: phy@86200 {
+				reg = <0x86200 0x16c>,
+				      <0x86400 0x200>,
+				      <0x86800 0x4f4>;
+				#phy-cells = <0>;
+				#clock-cells = <0>;
+				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
+				clock-names = "pipe0";
+				clock-output-names = "pcie_0_pipe_clk";
+			};
 		};
 
-		pcie_phy1: phy@8e000 {
+		pcie_qmp1: phy@8e000 {
 			compatible = "qcom,ipq8074-qmp-pcie-phy";
 			reg = <0x0008e000 0x1000>;
-			#phy-cells = <0>;
-			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
-			clock-names = "pipe_clk";
-			clock-output-names = "pcie20_phy1_pipe_clk";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
 
+			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
+				<&gcc GCC_PCIE1_AHB_CLK>;
+			clock-names = "aux", "cfg_ahb";
 			resets = <&gcc GCC_PCIE1_PHY_BCR>,
 				<&gcc GCC_PCIE1PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
+
+			pcie_phy1: phy@8e200 {
+				reg = <0x8e200 0x16c>,
+				      <0x8e400 0x200>,
+				      <0x8e800 0x4f4>;
+				#phy-cells = <0>;
+				#clock-cells = <0>;
+				clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
+				clock-names = "pipe0";
+				clock-output-names = "pcie_1_pipe_clk";
+			};
 		};
 
 		prng: rng@e3000 {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
