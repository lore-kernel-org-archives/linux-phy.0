Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2373C77B62
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9U2VYesxVkXnEidQig+SwfJ5tsRjcWd9n1VivrvMm8=; b=Vf9xFoTRCZkwA9
	PWaUyEKOV9KeT9wOttP8hr0zW3BtX3uIqHMHOHJPaQCa5SKCtvnxfXS2jOBclwhr5Njy6yYVsoLUr
	0WEFh+7ILVBfPbygf6oFSlk58/D52xuCx9tn15LTyXlFNrA4GcMijfZ6goh4rOSEq8mIfYlLrvxq3
	7pdwtO04RwNQ8fDPd3ZQM8ZweTV3OZrPKHkXorL4s8QXEHCyOZVodxx6/6KaCOR+zF58N3IrHUevg
	BrImbfJ69HjlfaYBaxMygrtLVzHbD2/AwGDIE+LkYdYcnbGPvkwNkzx4JqfmRLILZQwZtOlMdUiv8
	PRPJv0AhGbDOCHxeOgnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9T-003Smp-1h;
	Fri, 24 Mar 2023 03:31:39 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7k-003O6E-2p
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:50 +0000
Received: by mail-lf1-x132.google.com with SMTP id s8so396168lfr.8
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jyV21pkybTMZlIa57CVH2y8JOnNfS0VKEQ8YPK4dmbQ=;
        b=pHPWjnUqGMC5T8p3asbRTNB0CMkqMn5zWRHgY+kdSoR5vCDK3JSey3JGL7wJf07ij/
         1WsqiPTUdilg4Jpqu6atCoLOUwT9oDBHtf9UlRlK810TiSVNCUuRGqgJaSQuSVA3pzdL
         1A5giebpBf2Ytph7w83BRuRmU7T2c+imPHFqhIl/4dQcAzqO8+FNSWtSw5VxXEOcirEA
         WXWvCTaAxS1oZzA95gZe1ocXY2ce58dqL9hFqPoq5DFPSY0iOVvRxgUogGEaYD6AOL6q
         c2AoJYEexJgg+Lk/xst3Y4nD1R4t/oqi8cuPGPISowjkFnrxyolCIvUOjAshwuCLk011
         mT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jyV21pkybTMZlIa57CVH2y8JOnNfS0VKEQ8YPK4dmbQ=;
        b=yCiRrNKLACM4pjEIAoGatyZ4UpZ5KsshQ4uN0CEdGT3MmIQYIjKfgB5/Xv94Z82nWR
         ZCZ8692WF8zTX/FyXUoSMkM1ZvCyCKvT7/NtDATeAhUk6VTeXNsLleedX5gmF5V3lrp3
         cwnb28hcKm4FCvwhfhm0kwCEYQIqFNeqfe0sHJ3inlGHBq3wd+zZ1xjASdZbmbJmJJCM
         /OWEUFzT7EyagQL+GlTNKfY6JrZMULqkerpPmNH2qu/DuEHSQM6MTex0KVcT9frG4bUu
         1fJ+wqK7aXDqFwF1WzzxYb6Xh5VP9nUUV5TtzZNc0NuA47Bac2TCytcwwdL+6VrftIzQ
         TvqQ==
X-Gm-Message-State: AAQBX9f0bCJoPKz1x2uq+nPAfJHJ3dR+x5ftPz/H46GUxiBsuIoSZKd3
	K+0dxfMKLlkiTWbo2tBMLZ3hLg==
X-Google-Smtp-Source: AKy350Yk8c6tRDBxz6XfFexnnxPNLgbeffko2iMHzVECttekJo6LVucGeaiX23Xk+OVVBcWZyhzmMA==
X-Received: by 2002:ac2:446d:0:b0:4ea:8892:58dd with SMTP id y13-20020ac2446d000000b004ea889258ddmr193916lfl.59.1679624748429;
        Thu, 23 Mar 2023 19:25:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 31/41] arm64: dts: qcom: ipq6018: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:04 +0300
Message-Id: <20230324022514.1800382-32-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192548_927147_7EA199AF 
X-CRM114-Status: UNSURE (   8.41  )
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
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 32 ++++++++++-----------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index ff540bfcc062..9a2daab5ff15 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -255,33 +255,25 @@ qusb_phy_0: qusb@79000 {
 
 		pcie_phy: phy@84000 {
 			compatible = "qcom,ipq6018-qmp-pcie-phy";
-			reg = <0x0 0x00084000 0x0 0x1bc>; /* Serdes PLL */
+			reg = <0x0 0x00084000 0x0 0x1000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				<&gcc GCC_PCIE0_AHB_CLK>,
+				<&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "gcc_pcie0_pipe_clk_src";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE0_PHY_BCR>,
 				<&gcc GCC_PCIE0PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
-
-			pcie_phy0: phy@84200 {
-				reg = <0x0 0x00084200 0x0 0x16c>, /* Serdes Tx */
-				      <0x0 0x00084400 0x0 0x200>, /* Serdes Rx */
-				      <0x0 0x00084800 0x0 0x1f0>, /* PCS: Lane0, COM, PCIE */
-				      <0x0 0x00084c00 0x0 0xf4>; /* pcs_misc */
-				#phy-cells = <0>;
-
-				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "gcc_pcie0_pipe_clk_src";
-				#clock-cells = <0>;
-			};
 		};
 
 		mdio: mdio@90000 {
@@ -728,7 +720,7 @@ pcie0: pci@20000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy0>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x0 0x20200000 0x0 0x10000>,
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
