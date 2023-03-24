Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A2E8C7619A
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLMlc7YlirPnvB+GInVt29bJXFxDZ6qJgM5aG9ivK4c=; b=B8dXPI4R/aqXf9
	5rTjUMDL4Hm+ulY/dyHPgxeEMRpwrHWTIvxfNEiEiksPQh+N77l3lsEkRMeojvXet02MMjvBfPsj+
	XQNe78LAFwizW51WBoSUXbzAzCImt+TxlpXJU+rvAVsbc3kPOmr+EmEpyCzL9Uc8B674XbPX9MaKm
	QWepPOn/c3D111jJjjtjx9dzuxiFrug6kBqAU4QJ7xG9Q/gEKGHflFvEIwU7G30kYPwAo5GWHbUW+
	hTrkSPsG2jR9METeLw/w9YaYVoBc7n6lzdKbegresZPLoxZpvR4sBK/bxQi6S7EYTgPAFmdEnqbWC
	afabifS+tVtdT9BEcrbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7Y-003OGM-2l;
	Fri, 24 Mar 2023 02:25:36 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7V-003O6s-1X
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:34 +0000
Received: by mail-lf1-x12a.google.com with SMTP id k37so457267lfv.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+frEJD7jqIJGNLH4G4tDWoCi5qXMfozMayc1Na/pusw=;
        b=zidhzd/n0o+kqcw6Pv4+tTr1IcV2OcbAy1mLYGW3TdAhkCvk/lVXReAFFBpy6CBf29
         eUNlouxGQYVys8EhujNJsNkZwB5YrPH+Pm/51fZQPCvmwNPRc/HVzkHzDBTg3yF8FEE+
         BOUZUjebCYjBgiHE9sTwIXRTT/824vaTwghBY3QTwKO1CArLk7hn26TdF2HKAGA1wKra
         Hv7TNn+B7SUyebP5QFaqTdWHKiosT27yQ0HeIN4xhGB0PwfD/fxos5MKHfLNBhmKRrO4
         GfCJNjwd3Q6pv8gi8xt0XA8mzx2f5qux94R+K4PUpYK7y1vClnd0pkkJJ/Tizf42q/Mm
         d53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+frEJD7jqIJGNLH4G4tDWoCi5qXMfozMayc1Na/pusw=;
        b=grQDR1aXdWhpKicjqC+J0rWQbeUtjbi4mGB287xHC/SAlWcj+8Qy9PB0x8ghhfeEL2
         XpXvPStFXZO7eaFVAQ8H+nucaB7HC54R2Nlo165eUXjIlrKnT0ZxDITllIGusbuXWBz2
         VQ57i8am3EpRza+CwVwlsKGzzHixCho15KgKsbJUHRWntC4o2MkVMvdivQ9hbEKDW8F3
         lQOMmFvNEzOTTnRgdhHmOmPy+c+7avK+tIk1sSSK1oS3WzJ/MU6s410TwYWHIVG2Gib/
         53rsEFI0O+oVrOutKUm2UBqpSaJ6vWIbkIMzDFFd2v3onTHKOpiQEP7ib34oBcZWXv94
         p/Lw==
X-Gm-Message-State: AAQBX9djcjhcNuSrkZH3/mKsNINs0sGQ1Mei0MRFXpUugSmKEd7xtvYU
	lYpQgS3HLFZfhQ6UYTE89pANaw==
X-Google-Smtp-Source: AKy350bzEKEmQSe4JKecZ4kxqM/M1I0Qw0keiJ+obL89lB0Aqdq29et65r+1lmX0p3zqp4TPlCkC0Q==
X-Received: by 2002:ac2:4911:0:b0:4e8:47cd:b4ba with SMTP id n17-20020ac24911000000b004e847cdb4bamr272439lfi.13.1679624732966;
        Thu, 23 Mar 2023 19:25:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 16/41] arm64: dts: qcom: sm8250: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:49 +0300
Message-Id: <20230324022514.1800382-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192533_512990_1D40AC91 
X-CRM114-Status: UNSURE (   8.01  )
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 30 +++++++++++-----------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 7b78761f2041..0b9ca147c1b4 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3573,32 +3573,26 @@ dp_phy: dp-phy@88ea200 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8250-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
+			reg = <0 0x088eb000 0 0x1000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref_clk_src",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
 				 <&gcc GCC_USB3_PHY_SEC_BCR>;
 			reset-names = "phy", "common";
-
-			usb_2_ssphy: phy@88eb200 {
-				reg = <0 0x088eb200 0 0x200>,
-				      <0 0x088eb400 0 0x200>,
-				      <0 0x088eb800 0 0x800>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
 		};
 
 		sdhc_2: mmc@8804000 {
@@ -3773,7 +3767,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
