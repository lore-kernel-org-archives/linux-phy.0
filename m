Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51D39C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 16:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnhnKsD5Hs6kMznm+30ElrZKvc7wPmKEH6FHA+fLcI4=; b=I8sePElIX7p8n8
	WIojgUFhGLFPCNKW2+QnbmJYJJFuhMrjZTbYcqx51cYFryfH90NUQMmx+BBn+0XGKAjlEbktph7Bu
	pVkCodD4zu9K1Z+EvaMfpC5FzK3GoGnXGFXgFlNpZIWYwWXxGnzOBnizI5ZLUeDV8RvqyczkDgS8V
	ywSi4dpxNVryUc5SVDyEDyaR0npQPnvcr9X+I7SbVmwyfmrxrvN/FIQQ8RGozb8ipfX/CfR9QXR3z
	k6Dqpm9myKIoJnm9k2BHlxX7CR6omNyWiivO8E/QCPuZcE8Uup5LuYOozcHIIRoRGbmYVc92IL+is
	3v+waF+jBnh/a8m8VQVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLH-0000000EFnt-3RNC;
	Mon, 22 Apr 2024 16:16:31 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLD-0000000EFkp-3T7e
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 16:16:29 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-41a4f291f9dso9051055e9.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 09:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713802585; x=1714407385; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oegXinPYwwoL2z7AYKNs7tSUYhpriNFMkgsj5BeRMAw=;
        b=FDbxqFTDErqaLw9WAPUdNqkpPt5utnJXJV/+YRD+VrZkFcEwxH82F7qV35BPngM7eU
         tQk96nzmJTEtcBut2kGPquj+QsvGMrNs5mb9Mjls1aifwwCNxpXsPA5CG9wvdQBx0dNK
         u5C+qx8Cep+ZHzuOjdWvKkMDi9KN3RtpaygjGDr5luz5IGxZGRUhFRwWfXze7tbPCtfN
         IT3qqFZURFvGP4+AGATJLrXn1315IvIEnZz5zhx76MzKxPYNniujhvJVwMsr4Z56HwkR
         tiGz2is0jfLXpNF6yAEIllDxWnPzw3O+oQjAoGbXgsNUx6Yv7HjS2ooLxnSr5q50d85y
         pETQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713802585; x=1714407385;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oegXinPYwwoL2z7AYKNs7tSUYhpriNFMkgsj5BeRMAw=;
        b=XNeo9mYid7+Qn4yn1gZVfqlgxf+qurJHFqjRn6F0z2okpvGkRK68597AgXcQQRzGYt
         jKh9XcKyJ2XKDULoEtYqJXu/1vaZU3UFO/w/SBtATv6SuSrQAmblqHmOQhlmvwmYALcd
         PsRAn/32wZukAzOFFpUX3nMuouwfCy/+9GEghgUOPhStBHIA3mUz/o/VpPnaslY8Kmq4
         cy/pLxT9AKQnvmoSOINHzHW2Ej52r9vkM1QRPtR/CGI+gpO6FnL4KQDJPzxH+SvHVkD2
         NSqjpN/kdL/sxUaBkUKDvGH+Lre9NSQXzR0fvO0cQfJGSAWOSWkb59HjvLFCtBXQUxMg
         w59w==
X-Forwarded-Encrypted: i=1; AJvYcCVJwq88Mv4PCGYPgblQw8UxkWxlISYVKgGhWPbV0Y9fUJDGRLxK/qNWu/dgMFAGgcL53/3eDf6IK/qv1jTs3eRmz1ZZbYuE8DR0h2Cs1Q==
X-Gm-Message-State: AOJu0YyHEAD8lEjuFT85X07phnpyS2IO9OgcSNccBRA7c4KbM66llXAn
	74IZd/aNUgRWeb2F352tiOFNS3JYjJjFl492zgxCssGlrBFJpqrfcx1m1Wi1H1I=
X-Google-Smtp-Source: AGHT+IGSQUQfn8YiizXCX0G96buoTLgow78PntJ8E8/Mr8X0ro+Sanyat2q1M625zyt//Gj6wmDfTw==
X-Received: by 2002:a05:600c:3504:b0:416:605b:5868 with SMTP id h4-20020a05600c350400b00416605b5868mr6505304wmq.35.1713802584792;
        Mon, 22 Apr 2024 09:16:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a12-20020a056000100c00b00349ceadededsm12463710wrx.16.2024.04.22.09.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 09:16:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 18:16:19 +0200
Subject: [PATCH v4 2/3] arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-2-868b15a17a45@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3526;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=rYxvioeYdrYpFuDiaA9P8FKJ7TkOlkTdAv+95S9xHjU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJo1VxU2ecxpDYSriHYfNiKEKc1H/282dmFjacNo2
 b2qwI3iJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiaNVQAKCRB33NvayMhJ0Q05EA
 CvoavizC5fznewE5XEKnrfZIghet8RQ5aDEKYxrcayZ1d/KAdeFVWdN1v5R0BZloPfPm/kEPYKctF6
 JuZllGgrC8efxtAWG0P4YNB+oxzMCd0f9YXtGD3p3dwctp7HWno9qLIRmrc53T9AnGVtHRZePHEFcr
 bdcLVnPeADtXWzx8QcQp4QWo68OdySBN0kd6il2iae7JlyWQOeq4hTWB14yJAw8T7j+Giu8Ptotn8l
 0zt3XWvtJOOB0fMLIuTrrBHYUdyCEvTRQFb39y/hr7asFUgDHAtcSr+RW5MWrclcSnOSDnKFEPPjgt
 emFBtLLeX0UUP92qG8vZkAfXiU+YOdvF+T1y4gb9mSpHxUjrFYkJ/s2oJSNhQXS4+xwRRp9aRNdjyI
 Mf5k+Y2tqxCae3MJ7LxkipEDqOJHdKXlbK+Ms/lANecUg2IFMWO1bwwEwvUaas0Ps1EmiKBbdauA9d
 KFbEMPxWvFDpERSVMK20Jb2K9MVw1ItJSL7b3KRQeocv+jDat4Ad37I4BeJBmkxUlaN/CykCfEhixm
 E92gozD+DJEJMoeUGE1DOzT+7F43J3EGMgiL0fHWaaXXfwrrLyrcOtMH01KV9sL1PS3Ts5F41e3EXJ
 P7dfH1rxyxOlko3uCYBDURdFNzUXuC8DWjkQKpIt5ZNvbiDPLwdH3eT5GiwQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_091627_915328_F77E04E3 
X-CRM114-Status: UNSURE (   9.79  )
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

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 19 -------------------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 4 files changed, 4 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index 12d60a0ee095..ccff744dcd14 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -979,10 +979,6 @@ &pcie1_phy {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pm8550_gpios {
 	sdc2_card_det_n: sdc2-card-det-state {
 		pins = "gpio12";
diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 3d4ad5aac70f..1fa7c4492057 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -739,10 +739,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 92f015017418..39ba3e9969b7 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -720,17 +720,6 @@ &ipa {
 	status = "okay";
 };
 
-&gcc {
-	clocks = <&bi_tcxo_div2>, <&sleep_clk>,
-		 <&pcie0_phy>,
-		 <&pcie1_phy>,
-		 <0>,
-		 <&ufs_mem_phy 0>,
-		 <&ufs_mem_phy 1>,
-		 <&ufs_mem_phy 2>,
-		 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
-};
-
 &gpi_dma1 {
 	status = "okay";
 };
@@ -810,10 +799,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	status = "disabled";
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
@@ -907,10 +892,6 @@ &pon_resin {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &qupv3_id_0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index bc5aeb05ffc3..143994d1e6ca 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -58,11 +58,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-mult = <1>;
 			clock-div = <2>;
 		};
-
-		pcie_1_phy_aux_clk: pcie-1-phy-aux-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -776,8 +771,8 @@ gcc: clock-controller@100000 {
 			#power-domain-cells = <1>;
 			clocks = <&bi_tcxo_div2>, <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -1928,8 +1923,8 @@ pcie1_phy: phy@1c0e000 {
 
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
-			#clock-cells = <0>;
-			clock-output-names = "pcie1_pipe_clk";
+			#clock-cells = <1>;
+			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
 
 			#phy-cells = <0>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
