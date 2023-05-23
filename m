Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59913C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEj/w5kTk4sJF8X1SCBJ2qlaOxYD8+cJd69e7AnIrxw=; b=bCndR56dtF/1SH
	9PyELkUyUCI17dpZCZW9Hcu/WGjuknFn/KssYiN9zEUZX2DDEeezjnbLOpZpJWg2XA7DwFCB7cb28
	TD/b0UA1tc61HquneYbpQCKdhR+8CI1ZP61Ja8XisS98oFhwBSOyRWi8oJqMBnvKNNahX9IhSJI89
	yZbf8H3h6CKtot6UPTEXq8MvCxoDlnPimuWlDegNCeq7FN3NE6+p7GfhbRx8+s0wPB9agloo+4DxH
	D5Hlu4ec4FQFzyO+ZKL2pKv0EtVDn5COJbY02lIw7+JNAcN/OUpb8k04L3GvaNFXWSZcWH7fpL703
	3h+caGPWdD375jZSE4ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfr-00ASfM-08;
	Tue, 23 May 2023 14:07:39 +0000
Received: from mail-lj1-f170.google.com ([209.85.208.170])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfl-00ASbZ-30
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:35 +0000
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2af30a12e84so38657491fa.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850792; x=1687442792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/m36s1I5lLQu5ZfF2EQK7PHYdhhLUzc5VcckZizUzo=;
        b=mJJFj4KKfK5O/1msuEyWitYgeaDaB1H7Zs90/dckpZxPxYuztJHVq+vnyvZCFllpdG
         34o7+tjCwYPvFs/03VQu+Ca74aLQ+yFb04ws0M3HKq+vywg0dMgfXIpwv4SbVEvcByFf
         hTnk3lKNIxvgN8MyifzrzgF/F8IQQ/GStiqlfYbVYFidQguAqIDcnzKySjO/63llzINk
         obdrKIjS3MFPTQNWGzwCxePDQ+PP0v3uL1IGq1+tuVXYdKJ3ATuDSTX2G+Mfo6rY2mgL
         p+Dn+hrpSNcZAZe+qKlEXKS8oONcpJYKHvO5e0ieh47WLn4xVvvuV+Y5W2W8SO0NdQgi
         q0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850792; x=1687442792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3/m36s1I5lLQu5ZfF2EQK7PHYdhhLUzc5VcckZizUzo=;
        b=VMEzslB25zr5c7azHRTESFi00+Py6aSyC1ivshv7dLxGZ4mJcWYvCuJaLTOm7ruN8m
         ASWZuFRtpjUIho7Pt/Wk3BiuqXI4vsn+lqDa5gp/PgS/hflPbyrqh6usFAN4HLAG6xSA
         cBlVqyF+QsWpyYVWJbZYzGcu0fqDcOOu/7mTKBFlEb1GJCum2Z8s9/PixyCbD75XEH+t
         9fckgPvn7aWcdRoPVAOsRFgIH9R8K0b8vGTV2jGfKfZMM9UK3Qwl06qjaossb1oiUEvL
         QUKCBKJPqVM7WT9siGTHBEe6Ou2QYTNG9LtfeHvkSqnmdeWM7ZYHG8WgbWLIG1fz4d7M
         SfQQ==
X-Gm-Message-State: AC+VfDwTmsJfpWLssK4IvDJTkkuLFhatAUrpeW/OeNHRcfQjKPqBeWur
	i7cy9zMERNlg6F7zsJLCAJcFOw==
X-Google-Smtp-Source: ACHHUZ5j8540mbF8AM+pJcRIA5egcAFfY/aeplJNYrDYh9hj0t3OOL1TtsFpB4ravHgVegvwiIsxuQ==
X-Received: by 2002:a2e:9117:0:b0:2ac:78b0:8aef with SMTP id m23-20020a2e9117000000b002ac78b08aefmr5444810ljg.16.1684850792068;
        Tue, 23 May 2023 07:06:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 11/11] arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:22 +0300
Message-Id: <20230523140622.265692-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070733_991744_2967D5EE 
X-CRM114-Status: UNSURE (   9.30  )
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 595533aeafc4..44a67c9274bd 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -741,9 +741,9 @@ gcc: clock-controller@100000 {
 				 <&pcie0_lane>,
 				 <&pcie1_lane>,
 				 <0>,
-				 <&ufs_mem_phy_lanes 0>,
-				 <&ufs_mem_phy_lanes 1>,
-				 <&ufs_mem_phy_lanes 2>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo",
 				      "sleep_clk",
@@ -4064,7 +4064,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d88000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -4114,10 +4114,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8450-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref", "ref_aux", "qref";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
@@ -4125,17 +4123,11 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x188>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x188>,
-				      <0 0x01d87a00 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		sdhc_2: mmc@8804000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
