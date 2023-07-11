Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3303C05052
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mja5879WSjRBipVHRStXkDvYUnG8GP2KYZqIlL7AtFM=; b=44XHXu0A9jBt/o
	Ed9ixkXk5lgl+TeV0v6oo++ibvxoQQLBvvL7G4j6YYyRiF6C5hm0CPJVwGuCUbJZXchyZbK95sVgH
	nYtdUJaK+c8+HfuT45yXgR90iVP76SwN0N87EajpxaoDVot73VCmkOoj3wTtID5cx9QIMSG07I6PN
	6dzzD/tpbJ0gunnln827i+oTh0TymlvuxWsdoe4S+bNhh9v6WHoldAsnW9ix3umEk5aBnhPfliAvp
	sFN4EPIB8Y9HZtCW7sdNLjSyxFlXXFsLDHkhdM/YZwkRh00zzDI5WmT5bafwDrWtEN/nNnWOOzzg8
	FLAvZLCUTk0GIdKbPd7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEih-00FBst-0s;
	Tue, 11 Jul 2023 14:52:03 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEid-00FBpU-2p
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:01 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so9195328e87.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087118; x=1691679118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EEc51U6MUW0E9UDLNRvePLU7Tl7SvYWxn7zLkIXVfVA=;
        b=VXg3Fj6HcHgb6mr8PyDceNEdy8mX43xllqe5kkVbhx82v0bgoH2BQT4BkMWmVLXRgp
         SZ+MNreUm524yWnz9XhKq9VSjKR1cyMBDFVFQEaRiNMkF6pzmDTxnIR0cpKq/EKXoTP/
         Nadud5dFdDB/OO0S2q8Ivb1H7Z95TDUSsAs3uHHsJBGrbvD/KUk1mHrD6/aKnz6/CYxD
         mJ5iz5araTdRkY5G2Q7/oYUODVD7tp3/D2LzJVZXy1DwUiLTkGFQfqeu/XVIW/x1dmFm
         D19+eYCVU1Akdikif0JWr1nnbTPKcVAHJpCKs6AjBJffNqyGBANRlL/0PxWgwHqemSmd
         WnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087118; x=1691679118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EEc51U6MUW0E9UDLNRvePLU7Tl7SvYWxn7zLkIXVfVA=;
        b=gQspSTrd5tsGmxzJgyci77anXxwRbLgz6tmdxtawY1GoiiIHVcUsyrNQQ5dFOovzZx
         2poDQ++FXymwm2XUdALjB+mzrCKfYC/kc7jHWElTzpQcMli1PDOIKLSIZmMwrkdDSuGS
         KuqWaQKIZn1QOEjjwfjWuaEhHVjo7bAsTL1xz7p70HqXLCtbVlZGqb2U0P8NMy4PSU9B
         Ywe0bIulGLGsnuithVJIV+2DBooUoEKbODaFP9HOsKSdRzGypSHzPbJ9z4c3jfdZt0Ql
         QM2hx14VpShdVqWZ/C+jSHOe7R68Z6/urcOFEUDaDxJlceV4ydXmv6sB62RkgzJu+W+Q
         xiSQ==
X-Gm-Message-State: ABy/qLaufHlkMPJwWHCCyKW2PNk4x7lzxFwU5lXrO5VsOX2TtjgWOktr
	NOf5x0SoFfkGdu/J8IKTkCpYZw==
X-Google-Smtp-Source: APBJJlFP/QyDtKSIps7oI3sqXWSrzmnWnhhlR5Txd1rlhvME1KkrGK11nFDAiNWRUoOmH33wkHjDQQ==
X-Received: by 2002:a2e:3317:0:b0:2b6:cb55:72bc with SMTP id d23-20020a2e3317000000b002b6cb5572bcmr13952300ljc.1.1689087118253;
        Tue, 11 Jul 2023 07:51:58 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:57 -0700 (PDT)
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
Subject: [PATCH v4 05/11] arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:47 +0300
Message-Id: <20230711145153.4167820-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075159_913428_817CF76C 
X-CRM114-Status: UNSURE (   8.78  )
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 7cb9ee2765f7..30a63f4b19c4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2575,7 +2575,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_PHY_GDSC>;
@@ -2621,10 +2621,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sdm845-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
@@ -2632,16 +2630,9 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x108>,
-				      <0 0x01d87600 0 0x1e0>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x108>,
-				      <0 0x01d87a00 0 0x1e0>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+			status = "disabled";
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
