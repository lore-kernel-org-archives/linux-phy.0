Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A4B3C6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKVckrG1ry7v252hpBsFgfFF26CKUUv34/7K3zo3TPI=; b=Ji6DsI6vRE8mGN
	V5yPDm9HM+w4lUWAmu/8OnZ7nBHcjWUdaqK1D3UDWXq0Svn3sugSTq00zxQeyJti3jx4YcWXvmFvX
	aulg2ugXZ5iBehPAJeQezAOcCni1hmLKMXCAdVpKyD4BDbpHvLHhO3n69rQ1ftXOgodDkdK+kQ+4i
	7Tp6884wFVr7CFNTkW6VlC5etMDf2Pk9REZRSJjiUW5kH16aPkJ3IR8QnGdwDbPUZ6KNFi9Weknzg
	OV6KVxLv8zSrzsBF987EGZQ9ATmhDZPpoUv3uEd5uHJtCDLgiGe8srXYxpNIdC85hi+90EdRoOIR6
	QmBlM+YvS+oXhzNBppTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7U-003ODv-2h;
	Fri, 24 Mar 2023 02:25:32 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7Q-003OBG-38
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:30 +0000
Received: by mail-lf1-x12e.google.com with SMTP id y20so423475lfj.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqvYdm/43YvQVXBtNz93LL3IkaXdxCUMKnG048HS57Y=;
        b=yzHXftT9hl6bEcVQVqDzz5NICZX7f/uJ6eUTaQ3J4OboeUv6kRjICsa1Sfmdz5fW8d
         oyhVYLSQE1K9rjCpXNFxu4y3YtVsrw/wM+wOlqp5j95LOV1NG+gEcLaCGYggql6qn3ZF
         gZReUDrkw/X/rnanOVfmj90JtFAjO607fl1Ti60zt0JzQaDJLnF8tXM1ItiUl/OwWz6i
         BpoJjra/pn6aFvzIvl2iX+vQTcxWOsWdB6FXjV72q8eL61yJjSYyR46dz4qOyrFvhehg
         0JOYT2YU+y/YH76IbTi/DNKA6hFYJ21lyo5hHGSLgDMfg6HOfPOk2tL8NRCU1sjgdpsV
         8ehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LqvYdm/43YvQVXBtNz93LL3IkaXdxCUMKnG048HS57Y=;
        b=6XZjcQ+4Sy3ldJ9YIdE7nyFI9+FES1qUpEIUSJqlyX3bhqhb0DVm2I7EUXFaDlF4Km
         SqAu9bobWCfi32i97ZRt6ZSnw7M89k5VgAQRq+/UgmPEi3t78vcMdOhtJsfUO88dul8u
         akeuWcmbV812vx/kdh6ftNhqpcuFal/q6oi44Fjn+YGXnq5UcW2y6tTHRY+ql7qNgP17
         4gbPm0zWlA1txp7O0yeG4BwetBDc8NuMrNS/nCh3vEQKfcWBkFwebYYLySGNI+eVOIDZ
         H7kfkgh65dobHa9QH5xEpUKAmjWx1kaoT137E3J0ZqGc6kmqFG+tAyA3+UZ/vO8fbVMp
         vlTA==
X-Gm-Message-State: AAQBX9dOUh4yEq2KrBW/XfKRwOJbuwXThhMNFIz09dWpExdCIye9gCBp
	2X1LkYMWqClT4K9ZZ+fLxB9T/Q==
X-Google-Smtp-Source: AKy350bEYOis7ki08Z57nxZEzZnPGXnxA0ZUubzpWmH6TtUfaYzvsWnJF3mfFXox2YXySXmFSidWVA==
X-Received: by 2002:a19:c202:0:b0:4d8:56db:1ce7 with SMTP id l2-20020a19c202000000b004d856db1ce7mr283294lfc.12.1679624726624;
        Thu, 23 Mar 2023 19:25:26 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 11/41] arm64: dts: qcom: ipq8074: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:44 +0300
Message-Id: <20230324022514.1800382-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192529_010050_A6EB9238 
X-CRM114-Status: UNSURE (   9.05  )
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

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 60 ++++++++++-----------------
 1 file changed, 22 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index fe37dcdc52c8..e7ac3f886611 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -113,32 +113,24 @@ soc: soc {
 
 		ssphy_1: phy@58000 {
 			compatible = "qcom,ipq8074-qmp-usb3-phy";
-			reg = <0x00058000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00058000 0x1000>;
 
 			clocks = <&gcc GCC_USB1_AUX_CLK>,
 				<&gcc GCC_USB1_PHY_CFG_AHB_CLK>,
-				<&xo>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				<&xo>,
+				<&gcc GCC_USB1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+			clock-output-names = "usb3phy_1_cc_pipe_clk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB1_PHY_BCR>,
 				<&gcc GCC_USB3PHY_1_PHY_BCR>;
 			reset-names = "phy","common";
 			status = "disabled";
-
-			usb1_ssphy: phy@58200 {
-				reg = <0x00058200 0x130>,     /* Tx */
-				      <0x00058400 0x200>,     /* Rx */
-				      <0x00058800 0x1f8>,     /* PCS */
-				      <0x00058600 0x044>;     /* PCS misc */
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB1_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3phy_1_cc_pipe_clk";
-			};
 		};
 
 		qusb_phy_1: phy@59000 {
@@ -156,32 +148,24 @@ qusb_phy_1: phy@59000 {
 
 		ssphy_0: phy@78000 {
 			compatible = "qcom,ipq8074-qmp-usb3-phy";
-			reg = <0x00078000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00078000 0x1000>;
 
 			clocks = <&gcc GCC_USB0_AUX_CLK>,
 				<&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
-				<&xo>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				<&xo>,
+				<&gcc GCC_USB0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+			clock-output-names = "usb3phy_0_cc_pipe_clk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB0_PHY_BCR>,
 				<&gcc GCC_USB3PHY_0_PHY_BCR>;
 			reset-names = "phy","common";
 			status = "disabled";
-
-			usb0_ssphy: phy@78200 {
-				reg = <0x00078200 0x130>,     /* Tx */
-				      <0x00078400 0x200>,     /* Rx */
-				      <0x00078800 0x1f8>,     /* PCS */
-				      <0x00078600 0x044>;     /* PCS misc */
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3phy_0_cc_pipe_clk";
-			};
 		};
 
 		qusb_phy_0: phy@79000 {
@@ -609,7 +593,7 @@ dwc_0: usb@8a00000 {
 				compatible = "snps,dwc3";
 				reg = <0x8a00000 0xcd00>;
 				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&qusb_phy_0>, <&usb0_ssphy>;
+				phys = <&qusb_phy_0>, <&ssphy_0>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,is-utmi-l1-suspend;
 				snps,hird-threshold = /bits/ 8 <0x0>;
@@ -651,7 +635,7 @@ dwc_1: usb@8c00000 {
 				compatible = "snps,dwc3";
 				reg = <0x8c00000 0xcd00>;
 				interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&qusb_phy_1>, <&usb1_ssphy>;
+				phys = <&qusb_phy_1>, <&ssphy_1>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,is-utmi-l1-suspend;
 				snps,hird-threshold = /bits/ 8 <0x0>;
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
