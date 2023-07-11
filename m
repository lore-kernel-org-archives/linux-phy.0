Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93BCCEB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFoHGW5AN3Kzv+33ARkMAXSa9W0x2UFNTkyYcKd+hKg=; b=SFIWLFNuxKv+SG
	EI3Gp8D1Nx0KsPlnK54QsL44uMcZDjN/w9QzY1HTJ6NpsjZnwRZFTes4VRpCm2I43Pg1cAAM/24TJ
	kIKl29SXDStgRbhGho9GJbh40jhDQtmV4ZpNS3Tyolc6ZkCL4lhGqFEVhLTNtArs0j3XigpkllDSN
	SRCdDV+fLXCfJ8mM4KEWg6ynfv01qQByhWpc08m1wuRQNw4KznkSIXD8bNdOCuJMuNWCuH+4gpyvx
	iUysjPotPHAYcdqhjxo1MuWyy6kfvYJb3mY0GrlZ36TM9BxtGNnfslnmVrcxq29ZcJ6bzd+9WpCZN
	uY1jJDN5cbDv/y8dQG/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEj7-00FBy6-0s;
	Tue, 11 Jul 2023 14:52:29 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEj3-00FBxO-3C
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:28 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fbd33a57ddso59727345e9.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087142; x=1691679142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/zY2p5xdMVqrCjkFARaSfy/vLH3cSeudlbKmwhfUXY=;
        b=bvpZeeYMV9PKMQkqk+w6mYMRuL5ef01+GMIz7V8+3zbsE6fhh3aa8hfiLz3fRGtjyh
         bazyQaaOrlYBLPzLjTRpviakfAVGe8QivzC8qjBTx2+2t62Lgtw0q0C503oksFjVnJsc
         o3jkAhwGwOJjOvA6ydy7n65i/F+4YfsNA3sUQwLEX33qn0z1uaq/HZ4TFh6bnuWIo4Nn
         uDr30C5TW3vtnD/O51GzkCKAfUMK5yOk4UwGvaKs/GZDkX9+xLbuwOrLdTTxW3bvvBGR
         PBnRs8emE55pMymWFmyTBJdF6QgHLB/NLgpCsu4j1llIykObg9pj7vaAyevWSwzBEJdZ
         zgUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087142; x=1691679142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W/zY2p5xdMVqrCjkFARaSfy/vLH3cSeudlbKmwhfUXY=;
        b=P2ecazCA824QaRa2GedH8M3vgaFsvIOKQs5XYae1GESVyJQtvixRA6DLmgrlnhtccp
         kOSco6uJzcgFpkA/tfhDClzqf2l4YJqJXNVfggDZx4lvqhyGMKQUODt+oxaRm6j0MINJ
         xSBc9Ypgntn8V1/ZtEAFiSHr1WgrBOD5o5BSEExnCR/8zIcQJWhX2ILznB33l9Dz9HTB
         fYS0CfwIUvRUoTq97XU3MdxMmNvpynEhIYS+xiuJ1CWM4XzBD/OW5NhdCjxgXF8XsL7m
         wcqZgiBAAcWB7tAvP1yM4XTYkCTDig3M51j718lDnEuS88B3AVQZVmEdUf0A1qGBTB/Q
         9i5Q==
X-Gm-Message-State: ABy/qLY12MGuX96k6IOBUskAptf9bv0WlPNDmPe3gznoqfMqoYPNydTh
	l3spN+5E7sP4uKu0dzLv5fxZbGxN9/NWHtI0hB8=
X-Google-Smtp-Source: APBJJlG89ZJXJB8kt7+9pb6TYq52mbkWiEuchd/5rVy79zBEP3gicjxMVg5XSj0V3E+qcIV4IZeTgw==
X-Received: by 2002:a2e:9e16:0:b0:2b7:1f96:c234 with SMTP id e22-20020a2e9e16000000b002b71f96c234mr850679ljk.45.1689087121809;
        Tue, 11 Jul 2023 07:52:01 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:52:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 10/11] arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:52 +0300
Message-Id: <20230711145153.4167820-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075226_031859_8B3D36B3 
X-CRM114-Status: UNSURE (   9.02  )
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
index 557a3d8e889b..45111e20e265 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -673,9 +673,9 @@ gcc: clock-controller@100000 {
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
@@ -1675,7 +1675,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -1719,10 +1719,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
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
@@ -1730,17 +1728,11 @@ ufs_mem_phy: phy@1d87000 {
 
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
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
