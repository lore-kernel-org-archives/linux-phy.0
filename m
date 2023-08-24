Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 407AEC3DA6F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nY31XDe+98K/xoJyhQZHA6ar/pJJ2IKzDyqoNq1hQ5A=; b=EmFziJTz9lPT64
	lfkzJPVyVI8G7sy3cKv5qwsR0a3NG8YePsxsV8L7Cs8/71Ax1g069i6F5c6r0Pqnz7Y6asvMAHDef
	nWPXGS/g2G9WqA5aK0BPTKRaW4pm4cXn37lETFEpLUk6nUoDJ16VnNuMCr59kYztbZFgkPVMad/MX
	jL75wDS3/3QmtqaKp835I7qDh6KSIWVlCfJSacoXP/Ifz8hHkfqmHUrgSfuTMoyfoG1tlOaUmilXv
	fBgxJnIHZsTjJf7UVNSCdhn0XS7CfFRQrCY7G1myHgMU+tAvluVoxjNfLX2Ru/IFyXr2YFRKsLEGF
	sUl/mMj0tkbjLkJerayA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkP-003owE-2z;
	Thu, 24 Aug 2023 21:20:09 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkL-003oqN-00
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:07 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2bbbda48904so3465921fa.2
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912003; x=1693516803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4jn+eGfxJEl37BPrury0gVQNnPShMnDn2hVA6B9OYqQ=;
        b=EwyQT/zT+GtA8swjPNx2kqY4eWvAG00NsEDW3zVlmhdOrSlAe7t163DAo68yJg07Yq
         bDyN9dOAEYDtBuPOMaNToIoIvvm+bmkp3d5YEuPCOqAjmEGpqzJCOrjwg87NMPmFsItS
         bqyHxiIMIxsua4wLx4ggHwwwbilD1nTXTLv1M9hH/H2xh491/DnROMI3MVwrY9AmuZH5
         XNDjQymStzd+0pzO6Q+KvJiZ6SrerY4y6uHV3d+JznWCkL7gSdfQUW9hJehx6ZYKrCe8
         dtgmitvz2uMfjVOvOcakvC+xcPlkjKm+DOnPRYYez6KgOmRW32G5Fznduyo5rJdrb/iV
         9G8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912003; x=1693516803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4jn+eGfxJEl37BPrury0gVQNnPShMnDn2hVA6B9OYqQ=;
        b=FAd6bubrd4dYafJQnoZJxw4Cwzk9OGZdpI93r2MMjvSF/G/oujOXHwr2zQnot048U2
         ugRoXbcnblBydo+UIDgwFb7hb82ibxp/N0dKcsQp+bVasD0B0hIAhJsNWSws8veREPqQ
         siL1VMFQNpxRiQBtVQuJDPwn58wUXp5zXT0wW1B+85bz0RhsUHedUf37sl+hn7noJYIH
         pGZE0JA1GVUZ3AjI+fpYT0YcZxm2GKgQf7CScpRL6zg675yS2kjuD8AHSZE1mcCWjxuv
         OexU2x7tI0Br0mibPTUTGhSAwl2FiGcQJNFo1qBsvAumslgDiSec5T4xIGctnC5SzgSF
         7RLA==
X-Gm-Message-State: AOJu0YzBdpO2WM4NM3gV5sZMrZi2F6Fxvj8r3GQypj6T7fclX1ugglME
	3eg/3IlE28CvMhVOXDtZXVYtvQ==
X-Google-Smtp-Source: AGHT+IG/J78HFSV552Z19MZKDppGjFrbLXEPQ8wcGREFnlVH+RnIBFKk/qrz9L0BDpciMBaC1IvKwQ==
X-Received: by 2002:a19:7b0e:0:b0:4fb:89e2:fc27 with SMTP id w14-20020a197b0e000000b004fb89e2fc27mr10162873lfc.54.1692912003150;
        Thu, 24 Aug 2023 14:20:03 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 11/16] arm64: dts: qcom: sdm845: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:47 +0300
Message-Id: <20230824211952.1397699-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142005_091812_C4705C07 
X-CRM114-Status: UNSURE (   9.24  )
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 39 ++++++++++++----------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index ef7b6994fdab..686d0cdfac63 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3991,33 +3991,28 @@ usb_1_qmpphy: phy@88e8000 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sdm845-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x18c>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088eb000 0 0x1000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb_2_ssphy: phy@88eb200 {
-				reg = <0 0x088eb200 0 0x128>,
-				      <0 0x088eb400 0 0x1fc>,
-				      <0 0x088eb800 0 0x218>,
-				      <0 0x088eb600 0 0x70>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		usb_1: usb@a6f8800 {
@@ -4117,7 +4112,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x760 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
