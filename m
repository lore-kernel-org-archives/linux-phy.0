Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01709C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ui9JIUGahJWtWhGpAUZDpLbviKcHQuVveaSfLymc84=; b=sR2d163+qlz7JM
	p6JzzmMRRpQoHEl5tloSzDPlbpRvm9ZFht0D33GNd0NRQdIvjfVg4JyYZwdFR2BPa1u6GJ85qUaCu
	RQIWP5t3IeHfT1DoBq/p2P5/UdOpW0VnPVuowwpPcICWfxUAZDvax/G6kWogBfKYDhlUizgWcoPb8
	2CgiGlHRhYCTUekz0a0t1CFx+3zvxDJPAqFAz5OK+vcs8QWuCTyOfS/LDWUjH4MrEvw0tCyq/l1sE
	7MCAyWtDwPVUvOO6Xp8PLUO5IOIxtmuZgcRlXpGX15Wpkr5gEaqvIHtmiS5RDk7k34L0QATAugd2S
	ckpaXl/SFGb9FU5qWPKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfn-00ASe6-27;
	Tue, 23 May 2023 14:07:35 +0000
Received: from mail-lf1-f53.google.com ([209.85.167.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfk-00ASax-3D
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:34 +0000
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4f4b256a0c9so2397906e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850791; x=1687442791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rF3CG5zDOKpmisWvdcFPFdXHG1ABYQ4LUfIuWfFZTBM=;
        b=wGq8+kYHUlao7fSIS3iPPNXEnJab4B/or41dc5a6OXYNeEVnWtuVn6RsRmpZAVg+Eu
         5PimavzpiiV8qxmZNWB0apL8M7sMxjEk1t+oNbUvHzBdDSclJBtrn0qBWlEFm+VI8Buq
         uzzB6KV2g4wk4xj/oClgcXccIFZO+0RongWQsLgU0UrFLO+DX5Ib4X5vyye9qklIF7tM
         DhKaRwH+I54UWxFfdhGNr/Ctndi27vPlQ7lRVWOe4bDMx1zmffkXDoGCxLUhyV0QYeTw
         HUoTaXPqNTG7+j0qt2pBvXd/N/ysPmzspbhfjaLOcabsrZQifetkQcrGJiMH3cTKxe1c
         ya0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850791; x=1687442791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rF3CG5zDOKpmisWvdcFPFdXHG1ABYQ4LUfIuWfFZTBM=;
        b=SBJ2EVOdPlSMArS4S0M7u3LlHu92r5Zw8j9qbxzHRMitHcXxMGZ7qw3RuJklFqZGgR
         uFk+K55eklU53Z9lfVE/hRCqd62WzBelHVvT25rcyBa/NERrzhwtuzsOH40DHj22mD88
         7llrKMeTpm15/68VGiLUiY+8VfvugwIV+bckXcnGqeDyAP++mARZ9eK/fzcPA8kuAyWp
         n9cQcNRsO24qVK3mhwyaqqdFozLhtnpkwtVW2WryZ38E6+P64JrpkSzBbRjFjXeLgfCz
         eLpg1gHssBs+n6WWtRrJu7ptdJtFYoxmVsncxzg/x88pgaxDzdmfLYpUPPJ89lu29JNJ
         /y/Q==
X-Gm-Message-State: AC+VfDwZP1O7VgjMPuBg9O+OGCuAClhL1P/h+Pt8bWM1iFGZ7bbX/RVp
	FjsbM4rnG/iImGiW/0KD+CZzEwP91bsTN4r0JtQ=
X-Google-Smtp-Source: ACHHUZ5q7cSzOYmOdct084k/29Q0wTPfzw/FPS9QOcrVO92A0BEuAb2afHP5Vx3xgW8uSDhXpIFIgw==
X-Received: by 2002:a2e:330e:0:b0:2ad:9433:62c5 with SMTP id d14-20020a2e330e000000b002ad943362c5mr4817979ljc.33.1684850791416;
        Tue, 23 May 2023 07:06:31 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:30 -0700 (PDT)
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
Subject: [PATCH v3 10/11] arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:21 +0300
Message-Id: <20230523140622.265692-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070733_039429_FDF65F2E 
X-CRM114-Status: UNSURE (   9.29  )
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index ebcb481571c2..6173521ff544 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -656,9 +656,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&ufs_mem_phy_lanes 0>,
-				 <&ufs_mem_phy_lanes 1>,
-				 <&ufs_mem_phy_lanes 2>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>;
 		};
@@ -1658,7 +1658,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -1702,10 +1702,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -1713,17 +1711,11 @@ ufs_mem_phy: phy@1d87000 {
 
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
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
