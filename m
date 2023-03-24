Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C09CC77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4XBGj11mQomwZf4Wyx+p0uKoFrNSo5ZzgqkfmdfNYU=; b=hgCDoAYGps0/Ub
	Q4vGfHtwNENR13jPomYAgOL9X2lf3reSZ3v770WREOsfuPVk67HulF5DrSfBCA6B7mgYb8KPK+zt0
	iv+3K4H6BhzZxkqHCVpbJsj+b5OpQM0Mu1pzy8x21F9gwOqGSD7ynxT8cpLEDUiyxcnmtJOm2hEJ/
	+n+ZT9RTGVdRQ9Y/vCdM/U38/O0Q7/oLSxX+7dxL8Wi4Z2RkPqrl0HJkGVACKZhUK2lR42tVpa4WR
	tSo8WDdvq9tOjjxE0gItAheQMwnGg8hkemZoUNo2muNBJvUwzza2w4CS/VR5agGoD71ti2qeceGIT
	vjPZrWv3D1njv8rCfZzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9U-003SnD-07;
	Fri, 24 Mar 2023 03:31:40 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7p-003O6E-1y
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:54 +0000
Received: by mail-lf1-x132.google.com with SMTP id s8so396387lfr.8
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d/gnfsKFbcAyu+OZx2h2K2YsHO/72DkLTZ3N8dlKvBs=;
        b=dJm9nKDwcPwPQ5u8UkiR+ilig2pjarnv5cjfV589TVIk1SLCEy+JT4stpde7wVpQ1r
         YXx5YEy/52a5swh1qDFMuQoS05k1YsB6xXwFS05WxGqsm3Ydprl1c4o6eMA3U68nA3uw
         eWwv5YLW1hdKrJU4AFo9TK6Lo9RBVB8us8ZbMecD/ZXrvNyF9G3KpfByhpzXzxWBlLqc
         reNmbHawGLVvvn+pyYQRne8e1Dybf2Dfj9i0AOLvg1x57Zn4RGrYOcY+fiQoWYJHdfWX
         6XdS1UwkBBOgpoqOCLVwiVFMdZclgayNxMsj5NxXoPvD5qiuwNU5Gs+Ti6NHUOn9E+S9
         IFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d/gnfsKFbcAyu+OZx2h2K2YsHO/72DkLTZ3N8dlKvBs=;
        b=qx4aU3JdHU8V6EF3zwKiCfcxUMqEUTSMQOPE+ha6MDjmS8zJD4RJfWqpdANF6jJVNT
         xriPOFvpsX0HcODGPJb+IuLA+X4/59X/gT8vSmE6M3YTOryJE3jnmvwtrHiIi3pESYDO
         NLaBC91ttv5DkgEs/jCRvLvMvj/fL0K30eddNgoaF+3zQR4j9mGzWCvZBaob4rAlaFj5
         SksKO5s8HfVox+4qjk1Kuv5dgE8FL8DrclT+LCZQb0EhPkRFddUjrpmrQcTiCkh47shq
         gglRiU4edObRJ6CcjWzZDfeaJhkcpXz6wIyk2rzOxK3YciTzy6trS3VWmNGgmThY2h+D
         OvCQ==
X-Gm-Message-State: AAQBX9f0GhgcFUY5wZpYP52oUI2rKnf3dYuOJfN75zAtWD8lOpPQZr6x
	ryOHauFYadaxY5j6Dq37U+ZEtg==
X-Google-Smtp-Source: AKy350bujY7U2l6HRhUWB9tQ1GyvocnORtQs1tjP1kgU5w8AVu3DVjmKftcm9jN9UoAmGOCsiI0kvw==
X-Received: by 2002:ac2:50d9:0:b0:4e0:54a3:4b3b with SMTP id h25-20020ac250d9000000b004e054a34b3bmr242703lfm.69.1679624753182;
        Thu, 23 Mar 2023 19:25:53 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 36/41] arm64: dts: qcom: sm8150: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:09 +0300
Message-Id: <20230324022514.1800382-37-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192553_664852_39D07D8C 
X-CRM114-Status: UNSURE (   8.55  )
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

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 66 +++++++++++-----------------
 1 file changed, 26 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index be10b68893e8..e4ecc0804cd9 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1859,7 +1859,7 @@ pcie0: pci@1c00000 {
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			perst-gpio = <&tlmm 35 GPIO_ACTIVE_HIGH>;
@@ -1873,14 +1873,20 @@ pcie0: pci@1c00000 {
 
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8150-qmp-gen3x1-pcie-phy";
-			reg = <0 0x01c06000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c06000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
-				 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "refgen";
+				 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";
@@ -1889,18 +1895,6 @@ pcie0_phy: phy@1c06000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie0_lane: phy@1c06200 {
-				reg = <0 0x01c06200 0 0x170>, /* tx */
-				      <0 0x01c06400 0 0x200>, /* rx */
-				      <0 0x01c06800 0 0x1f0>, /* pcs */
-				      <0 0x01c06c00 0 0xf4>; /* "pcs_lane" same as pcs_misc? */
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-				clock-output-names = "pcie_0_pipe_clk";
-			};
 		};
 
 		pcie1: pci@1c08000 {
@@ -1958,7 +1952,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			perst-gpio = <&tlmm 102 GPIO_ACTIVE_HIGH>;
@@ -1972,14 +1966,20 @@ pcie1: pci@1c08000 {
 
 		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8150-qmp-gen3x2-pcie-phy";
-			reg = <0 0x01c0e000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0e000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
-				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "refgen";
+				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
@@ -1988,20 +1988,6 @@ pcie1_phy: phy@1c0e000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c0e200 {
-				reg = <0 0x01c0e200 0 0x170>, /* tx0 */
-				      <0 0x01c0e400 0 0x200>, /* rx0 */
-				      <0 0x01c0ea00 0 0x1f0>, /* pcs */
-				      <0 0x01c0e600 0 0x170>, /* tx1 */
-				      <0 0x01c0e800 0 0x200>, /* rx1 */
-				      <0 0x01c0ee00 0 0xf4>; /* "pcs_com" same as pcs_misc? */
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		ufs_mem_hc: ufshc@1d84000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
