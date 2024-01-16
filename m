Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED1EC3DA79
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYTstmRkqcem2ksC6xYwKdVMvSouDmlwp06eKv7aiHE=; b=gnNuDfpiD80jel
	8rAtQHX7G44/zcBQH/tSa9BEQNnpEWL15Bm/CUeuKt2UMl+7XmVzPiGtA8TOOh8+DjkxQB20I5q5O
	/s8+vyJ35RweFvaV4M5D/DSXlHfAZUYJtwL0SWL0sWk7AINDsyEOtBxtCkr8gt0gUnwDrVqAL2RTU
	FltQySsx+NzURjUFiAi865pU3oFqlisHcNLfSzOCkaRDn7q04ntWW3S4p/uRbLthYHwYuqcbDnFzU
	lCap+wzjycPbnOOZPiZdh5qqkIGoCunw9H/Hvl6S02EgtqmGBy7XqORC122tn1IrUKQWAB2IriIwY
	SFTOYFvbKolFnm+DdKeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz7-00AeCP-37;
	Tue, 16 Jan 2024 01:11:21 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz4-00AeAm-1i
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:11:20 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2cd0f4797aaso99834801fa.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367477; x=1705972277; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RStsOu+xacQMgJbS/MXyR2aPxlxf4VUezrxj/3wNsBo=;
        b=z25oC2pywTCT852LANF8cz9dBCdmXCpgAhfweqHBjL/1pAsOcOXItXOPe/6hRTx1Be
         rtO6sr6V3Y4a2HPgX7tjSndPsIgZNKO0Ah9wUh2dp0s3iD4KmN+NSyxcSOy0A+i1PSui
         iOCHu4e+/cufhdrSvTEXy0ylFAoCpXYOCl5kw/8nAj2K8uXLeCw9MRomo94/FA8641dn
         F15FwCqpiYIpAdgYplylV03liOOOzkyeQ5pE6q4m2GSd+FG8IKWCsRD4Oa2U0t0VjRT6
         Du6VD0ga3hdR/59laTPCw8RGzINQ+eQHlNmuFjC15vC9a8PsrgQG+dtmbO4Miz3XyBW3
         QIkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367477; x=1705972277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RStsOu+xacQMgJbS/MXyR2aPxlxf4VUezrxj/3wNsBo=;
        b=qwRLb+3p1/eoKA3pXeElvVTZrQqbLHSbA10/rZOyR4b7DCrGDj8sM4a1QxsmINcRvv
         dQzIYVT2jPLm1qFiW26DOPDvmB9pybc3bUadS8fpHjTj91T5PODpkgmeaenWe/QoZ6ey
         BhpezMFwQc5l7oFbbszYi6jRV91draHeQ6sItdgWc1TuaPEGCI9QyTTAenGEJ16bqWzf
         yYSjzACGOB1EoacSYI6Cty3gWpOG0y2wXQHaVe1IbjrGNGiLrft/xPXNuJ6GOauGeuhF
         Xx2rGWev6HPwmCJRvECYj7WHqD8I7aUDNDG/jJehvqfqaGwKtERE/8RNQREp5TG6DM1f
         Z9BA==
X-Gm-Message-State: AOJu0YxeSD2HI6QHz0dy4sOtmdee0BNnpw6yS391XIXpLt7kk+bHo8Wh
	MnUW6pWSQW7gpztyRFFutMZ3XzTKv+UFgQ==
X-Google-Smtp-Source: AGHT+IF9QTTC5raiMne+yAWfQBinTWrTQZS+iMZiQlovjnYcHgehvOq/I4moxnNElTukvTobtkTSNg==
X-Received: by 2002:a2e:8e68:0:b0:2cc:6d87:9a91 with SMTP id t8-20020a2e8e68000000b002cc6d879a91mr2614457ljk.72.1705367477059;
        Mon, 15 Jan 2024 17:11:17 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:16 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:10:57 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: sdm630: add USB QMP PHY support
MIME-Version: 1.0
Message-Id: <20240116-sdm660-usb3-support-v1-3-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4024;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=vROuTM9nsbcJ2159YURKAEnKyZKiaf/PSfxNouUCVmU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdex4RZUyTpfyKAR0l1z9mtwjfi8RAfh3fnpQ
 i2EL6HKaaSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXsQAKCRCLPIo+Aiko
 1RL9B/4q7I8AvvEE5rhJD8I+RlFZpuAGL8KtxWu/fIt3Mi7wRKBiALt44Pk/zwNDYTCG1sfCKLH
 xDl6ESkv7X5HGAqUwszMQ2qZL/s+lb2Zi5gM7Q2g6qT1MuWK/Wf1El8a9e03GSmUI6zZzOi7cYu
 THZTZY4eyWYEnJt5oo1mfj9dqAI3cMxFamNheWkzzq4FLo4jokTo/yTGCMh+JAfzwvN7B7lomCo
 doPShrWy5ZUX3Kym+yimdeEdatoW8XE3s0YTCGVl3ivVugDW7F9iskso+RMf9bsHG7IKxEw9b04
 mCWxg7B8S/fM8Izmn52q4SgOOYR0O78KC7sG2wWIo8aALEpi
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_171118_572041_572C0044 
X-CRM114-Status: GOOD (  10.89  )
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

Define USB3 QMP PHY presend on the SDM630 / SDM660 platforms. Enable it by
default in the USB3 host, but (for compatibility), force USB 2.0 mode
for all defined boards. The boards should opt-in to enable USB 3.0
support.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts |  6 ++++
 .../boot/dts/qcom/sdm630-sony-xperia-nile.dtsi     |  6 ++++
 arch/arm64/boot/dts/qcom/sdm630.dtsi               | 36 +++++++++++++++++-----
 .../arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts |  6 ++++
 4 files changed, 46 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 2ed39d402d3f..90118f133961 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -454,10 +454,16 @@ &usb2_dwc3 {
 };
 
 &usb3 {
+	qcom,select-utmi-as-pipe-clk;
+	
 	status = "okay";
 };
 
 &usb3_dwc3 {
+	maximum-speed = "high-speed";
+	phys = <&qusb2phy0>;
+	phy-names = "usb2-phy";
+	
 	dr_mode = "peripheral";
 	extcon = <&extcon_usb>;
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index 87d0293c728d..f06a9f0cf97c 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -658,10 +658,16 @@ cam_vdig_default: cam-vdig-default-state {
 };
 
 &usb3 {
+	qcom,select-utmi-as-pipe-clk;
+
 	status = "okay";
 };
 
 &usb3_dwc3 {
+	maximum-speed = "high-speed";
+	phys = <&qusb2phy0>;
+	phy-names = "usb2-phy";
+
 	dr_mode = "peripheral";
 	extcon = <&extcon_usb>;
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 513fe5e76b68..28489fb58b20 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1286,7 +1286,6 @@ usb3: usb@a8f8800 {
 			interrupt-names = "hs_phy_irq", "ss_phy_irq";
 
 			power-domains = <&gcc USB_30_GDSC>;
-			qcom,select-utmi-as-pipe-clk;
 
 			resets = <&gcc GCC_USB_30_BCR>;
 
@@ -1297,17 +1296,38 @@ usb3_dwc3: usb@a800000 {
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
 
-				/*
-				 * SDM630 technically supports USB3 but I
-				 * haven't seen any devices making use of it.
-				 */
-				maximum-speed = "high-speed";
-				phys = <&qusb2phy0>;
-				phy-names = "usb2-phy";
+				phys = <&qusb2phy0>, <&usb3_qmpphy>;
+				phy-names = "usb2-phy", "usb3-phy";
 				snps,hird-threshold = /bits/ 8 <0>;
 			};
 		};
 
+		usb3_qmpphy: phy@c010000 {
+			compatible = "qcom,sdm660-qmp-usb3-phy";
+			reg = <0x0c010000 0x1000>;
+
+			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_CLKREF_CLK>,
+				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_USB3_PHY_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;
+
+			status = "disabled";
+		};
+
 		qusb2phy0: phy@c012000 {
 			compatible = "qcom,sdm660-qusb2-phy";
 			reg = <0x0c012000 0x180>;
diff --git a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
index 3c47410ba94c..7167f75bced3 100644
--- a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
+++ b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
@@ -413,10 +413,16 @@ &tlmm {
 };
 
 &usb3 {
+	qcom,select-utmi-as-pipe-clk;
+
 	status = "okay";
 };
 
 &usb3_dwc3 {
+	maximum-speed = "high-speed";
+	phys = <&qusb2phy0>;
+	phy-names = "usb2-phy";
+
 	dr_mode = "peripheral";
 	extcon = <&extcon_usb>;
 };

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
