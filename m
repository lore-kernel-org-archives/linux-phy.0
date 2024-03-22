Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0012C54E71
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 09:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJBxNBFc7UrcvBz7a6TOEuR6a/Cpc8exMdUgxSWyhC4=; b=rX5EaWsN0O21YD
	JXPCeEfq5g8+qnDar+7otICicDgfvPBpVzsmFA1RTGYWPIxHt3ZMPB5RereXshh45Grko7bWKofUO
	GkrGAPrNRPAaM/P3o/+DVPc8MERTM/U5Q9jJnLZi+dK0hnpbm8RwJgqVMxXNcXkbdxSf+HA26YxNU
	PSRYn8oRWJq0zQm4gZgxXKByWIScOIsGUyPYAer1ZpfIHC3P/fPWYhaXWcobOqXPRsFEBS5g0A8MR
	BjrRIJ/yM26CIvy90slHuUGpLl+bl8/KqY2k9wWr2e09vk1QWeZBjG4EbLMfnEW7V/h4eWEUUPJtO
	vAK7KqeGL7/XvD2d2AUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQQ-00000006dYT-2F0W;
	Fri, 22 Mar 2024 09:42:58 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQL-00000006dV3-19OQ
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 09:42:54 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-41477e77151so7543465e9.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 02:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100570; x=1711705370; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hIrecpvZpvUh39wfgMpRJv2qYcilhCHDIPFfNLK1JPU=;
        b=OflnVM88dYLpAFuj1IvEiJu9actqZsqdX0SbHOojjlO6+JT1EodfLsvyXTOdJLI5tE
         P8BW4NeyfTqJ6S50DnfQGmJjTPoK/fNObG0PxRF2tfrz3ia6rvkdADccFOJpdJzB10Ij
         QcPy7Lyxn1dAWWfcaA4CRZPMwmus4dYBQKTjHn7QDPOWHZLteFoIeQF5sfDl2rQsn9IW
         2wpnAAVGa+6h8Mo5mtI83Z8BdPzhjSdZs1kgnaTAz+CJoYHZ1yV+eu/y2pRiSCLE2TEu
         KyGKfCw7Mnbu1Dg3j1tu/Y7O+Hq+xxy9/dyLxJYDs4sZNw8fkMGloFmwYfmz+1L6fe28
         Kgug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100570; x=1711705370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hIrecpvZpvUh39wfgMpRJv2qYcilhCHDIPFfNLK1JPU=;
        b=bkC8lEDxU0GxxduPtco7sS7y9Eqq2McjttmxzEIaVQLTM8A8k/yecijotr1SmLUaL2
         RRFty3kYkCv8lwjyyKp5EHGYAwmIEOXYDdyx/0ABlMdJJFtKaXGTznmJwePdUu87zVdM
         66udahu7/VDBis0AA8f9+gB9cFHoe5s3Tpz4M4SM1/Vqc6JwPh6VHs3itQDs7bqqwRa9
         +7chPrGw4aWLzdOeDgI42UicGX59myeLmuLh27Kx70ykIQgBfRnszZg+oVqlc4PKE8lq
         jgXsF/JfBi8Kty91XBoIspnwRzWPsAGJ20EnlBwULBME2h0FGPzTVjyO/doswQAypvJ2
         ea6A==
X-Forwarded-Encrypted: i=1; AJvYcCUojPpm0hjNIekudi4E8jCcMdVQO11vDW9w6fU4cMIPrMoBeEABxvjj7GWgIKK1UXJ2adSQRyKsqkhhLXhmSOU2zOvLqpYbZuQK5ycgDQ==
X-Gm-Message-State: AOJu0YxWe/e74R0LMAXXQccG/r/cD2H4oKq3rTgAX2J712zW8Mn6iCue
	GURHVPY66SoTXmendkAFqJrdGZPduKk4ej4E+uCHbUUmX6yb1IqU+EA+nWF9TIM=
X-Google-Smtp-Source: AGHT+IH/YR4laTJY735GA4EYAew5kiy6VRPjETSq3xzM+ktpO0PWyYNXP/AclpTevxrLp9EqJhpLxQ==
X-Received: by 2002:a05:600c:5246:b0:414:630:26be with SMTP id fc6-20020a05600c524600b00414063026bemr1249855wmb.31.1711100570233;
        Fri, 22 Mar 2024 02:42:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:43 +0100
Subject: [PATCH v2 6/7] arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-6-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3193;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=0+RdmftpKdoFSVt08YhMwCSmXP/Cp4RuQbNR1jrvu/U=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKTzlkD0PvADy5t8aFhCAlr/2DypGHOPi9Hy/vi
 4sPxym6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkwAKCRB33NvayMhJ0XD1D/
 wKWWuMK5/SyPNJUv1YNYkCMVgwrGw3RmeftpRaA4+fZ10C8otoOgbhF+4Ab8bQXmadCsqDc8Mx/9tx
 DYQj/k4Us7lk36YIx3rGRfsQr5QKfef1XAjlbZJ2ZZrEg//0gczMp1TcmVMxj5t9frmV2dRB3nc4sn
 XFgf2CtpuHzVCem+kJ00lDfeCBl7SpCAn8ABE3t0b7feNrfjY23cGC196e4CRZnIVXu6L/DkXotBa1
 nF/5zQxl0jDTcrxbufll1p8lhssZiwy68Q2ZAUHQgIHWU64jjgHuDhgR6fRSdGB2NpszIDGdwJjmPn
 ltWO9qQbPABe4AQa5k8Cr3x+VqGGTe+Oj6bmPlCQhynr6W+aoxCczCq706reHKB1/ER/KIo80MCb9T
 hy+PDGBoRj3ryv+6xYChLKomRxcPJ8HgePWylTd69+NAToY3DRft4Y0UIcdMWOcbU/ls+6QT8yeODA
 e2lISlSqsoNFXS6hDo4JkhcbMAhNEisyQVs/MOrCQcuuqG7gGCYTYa+1sxuMSvMYsp4DZmdfTdQoZO
 +Pun9rcjzWxlWa4ZixSSVjPSnv4801X05yebt2yLZzs5DGe4GTTRapGaKpqC4EmL5i1/+Rp+q0ZJ1o
 7LzcdMRkLbYGo+N90e0UnMytCt/yOJPqpGRdenDmr/Pvvnl5e7+bYviQr/og==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_024253_359993_A4FBB6B9 
X-CRM114-Status: GOOD (  10.65  )
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
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 4 files changed, 4 insertions(+), 25 deletions(-)

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
index 92f015017418..da3cfa697969 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -810,10 +810,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	status = "disabled";
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
@@ -907,10 +903,6 @@ &pon_resin {
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
index 3904348075f6..c74455dfd354 100644
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
@@ -1906,8 +1901,8 @@ pcie1_phy: phy@1c0e000 {
 
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
