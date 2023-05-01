Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A31FC77B73
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4XVwkYgktxmPcqafy4LWeFd3zy+tB1z/WQfKLzj5nA=; b=dkm72tSrCvZ7wf
	GN7tOYsiinwpSO414bVxnyz8ch+9vhBY7aArRpdhhqViS0UlasRxppi7kyLp+y8mrA6wWBWXaNlsz
	am5BtraJ3s7PlWCD2ZRUsPHbA4lkcv5JjlxYTrXXapX5g5ll1bWYf8Eru4+y9IMM+zxZqDFal1m0Z
	kMaPrIoU/RKnUKUNAQAKFJOoALbIplCUD9UFgnT9yCDV2CqDqRsZ8xAjQhS2JFS3955Gwe0h8kw6V
	b9H8JtDfvSzgHV4Gr+nQVL/G7RNNFFQ7BtQuLKfy1lVVeG72gy1gktBRnDtOx1/7TP+YuV4RQb+s0
	XunC9sNubhKxEL32ubzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ8x-00GgKs-2d;
	Mon, 01 May 2023 19:25:03 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ8u-00GgGn-1Q
	for linux-phy@lists.infradead.org;
	Mon, 01 May 2023 19:25:01 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-64115eef620so29010952b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 12:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682969098; x=1685561098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4KAh8wuSkuj+2XFnMn5E/sCgNnm5at5pl9Xs+VcK78=;
        b=OSkZqpdCuB5QWuNR04PgAmPEUjH9lrIt/8fHZtFsxK6vBVPRXLd4xCaiYatmE0t1lY
         sHJgTma5blWeCx9jiv6iZ/vhSVZEsJ1cnrrk+vVCAejaTAtI0yOoHjwSD1BslP0VbdTs
         hXxmXFB4z5xpaTEOzQDhnk/n+JNzBgqBl7u/VNha4MzUxTT62hSLc1wUylvtuy0En5FI
         jFWlLjbCJWgIq1JQNz8/HIbA6vetMbeWwdwl01MpUXYaMqLSvz36HTY5UbPTAU6SFWOd
         RrN+V3ohUtwO+3LheR6pnf+lLPzZ0SOIeyeTDXnxsFRREFFXch6oVdrbVrENEy4JP6bi
         xHoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682969098; x=1685561098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4KAh8wuSkuj+2XFnMn5E/sCgNnm5at5pl9Xs+VcK78=;
        b=aOEHlZ0PK0w63fkbGOOiCyJgpZC1Th6IM5aOK1H6ddueOzIa0qrJ6y9x+UsrWhlevB
         d44t3tB5fYZgKgTr+VE6JcOS+qQzrLFQEMcGYPigmSa1AUJqwr6JnSV74bwxkEI7UJU/
         CxCRl7J+VroS9QRMixI9MmFwKbvaxapA9VcPc7YU9T46CIpjDSLQTwlspKJHViN8VkP0
         prMW+XT6vZTVuHQO7/jvnEQD1a/Ab89jrqRoseoDW69mwSNYYQeDf4QtJfdN1XiArjbq
         glUO7oWVZJbWtCLtO9BZS+QHwLt8coSwsi1hftyZcXiN0jDQ+WPX58qMOGU5LJBM25Gk
         7yjA==
X-Gm-Message-State: AC+VfDzrmM0RosqNcrQIgB9UnqzwD4wz8ua1oLAiDArMD13hDgtP9tb0
	CNahSGssSF7+kZ+ohvv8cU/vMA==
X-Google-Smtp-Source: ACHHUZ6hgRXCvo7LQ2F8otRYZ2S2Y+KzvKEUcN3KvrlvdvTsfKjjzXRbjioBkjMw8muC7f1jBJ2BvQ==
X-Received: by 2002:a05:6a20:4420:b0:f2:b0:68e8 with SMTP id ce32-20020a056a20442000b000f200b068e8mr21999070pzb.3.1682969097966;
        Mon, 01 May 2023 12:24:57 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id 189-20020a6304c6000000b00513cc8c9597sm17459144pge.10.2023.05.01.12.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:24:57 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v9 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Date: Tue,  2 May 2023 00:54:31 +0530
Message-Id: <20230501192432.1220727-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_122500_477201_61066838 
X-CRM114-Status: GOOD (  10.02  )
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

Add USB superspeed qmp phy node to dtsi.

Make sure that the various board dts files (which include sm4250.dtsi file)
continue to work as intended.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index a1f0622db5a0..75951fd439df 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -242,6 +242,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 631ca327e064..21d00b0295a1 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -661,6 +661,31 @@ usb_hsphy: phy@1613000 {
 			status = "disabled";
 		};
 
+		usb_qmpphy: phy@1615000 {
+			compatible = "qcom,sm6115-qmp-usb3-phy";
+			reg = <0x0 0x01615000 0x0 0x200>;
+
+			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
+			reset-names = "phy", "phy_phy";
+
+			#clock-cells = <0>;
+			clock-output-names = "usb3_phy_pipe_clk_src";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		qfprom@1b40000 {
 			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b40000 0x0 0x7000>;
@@ -1111,8 +1136,8 @@ usb_dwc3: usb@4e00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x04e00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb_hsphy>;
-				phy-names = "usb2-phy";
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
+				phy-names = "usb2-phy", "usb3-phy";
 				iommus = <&apps_smmu 0x120 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index ea3340d31110..81fdcaf48926 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -306,6 +306,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
