Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F9C6C001DF
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHZW6FNt40FIJVTVtJoCKOMEN6mQPp4rXnEzlXvTYsQ=; b=wqOHEK+Dh6zHSX
	RV3CxxF2P/HToi/nlo190TCaHSI7DX/IEIIHaDAMil1CjnGwE+D7VG9TJSkBQsucL2MB02fphlHrr
	BHyqnQ0yDdbZOwSfTcepd9pK6OVCihcTtGTuo6EttKxIiLwWUijgCl/pudLVdi7ws3sNwFMX72vHj
	KsqKKHuw9DQY8SdAU/IfIqCEOPxYqOs/R/oBztFvuK0P6sa0tb+LKfP/2qlVDXDVSnEBlLTZ7fFNk
	+FYGQIRgIl54DmnKqneYMhJ7sG7b92HCUT9aeiceBeCxU6/JM0cKDknGD6WXUsu13MJOhYHSU5+9V
	/GkCHFbBwbswO7EOqnuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbL-00FCXX-1C;
	Mon, 31 Jul 2023 10:58:11 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbH-00FCUl-2v
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4fe1344b707so6886884e87.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801085; x=1691405885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yVXbtATOlv9r7FRIIM9zZ7w+bYow1bQ9kVe2bdTz2cA=;
        b=o+Kg3kwtURVIMSRrVDnPjrL7oA4bpw7iiYPoWzj9MYWbgsyYyeK5S7miWNUPL+1xNK
         nR0vvNQK9cL+vOVx35i5650UMZQD3TJVlmv6kfBAiossrljVnIbt7dUSCKzDvhXmZVY/
         UjNIAMiYjur3UtrcByxBZSKa2RExVmFBPu/hzU806BxSeSwbqiXk9JWESdY8AEkJ64ny
         O5twfiYJI87dSYM9MEj0NV5AKV6j7axMwGglbHL2CcrS1CeGBYv37fZkNETdvF4MxyOZ
         nKjKj2P4+otbJEuAzIFaK1Ov3Z5+mVPdSA30yBvI9w8IHA4Y4uNhOUFeolLPLJNo4SoH
         1/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801085; x=1691405885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yVXbtATOlv9r7FRIIM9zZ7w+bYow1bQ9kVe2bdTz2cA=;
        b=hq6cvPqlAQn54RW3y1nIgcBMm8YIuHJ156HhSCvhEaPuDhgywB+/JE5zanvK4U9BZv
         TordYXGFGJLRKi+OXqfzkcYIU3aWK10sjM13HWdRUCE7noOaRYJMefUPreQ/h77/Nik0
         VTSAcQ/WiXwZBpGaeO69JbkFQgZyJLxM5DtVP0KoFrFFnUkWaY/LEvWsKVc8nY3LxVfT
         Uf3DffClclQrQ4Iowkaxsg3q7aXmE9HFQM7EvJixAYR28XuhnXkruEg6sbMkzqM1D5cg
         f6zdHCqvEK7ddmjfBtqQg4kDv0deJ25rhFApLgwA5fAaR37eRIhwog/EDiKzDmYtDRTU
         phdw==
X-Gm-Message-State: ABy/qLbIkRoDhgibeQFOW3NIOdj8EiI/p4CUxqX4JgWYlNV4YCWOrsrM
	n0wOBngUU8929xBrgIIjzbm7Xg==
X-Google-Smtp-Source: APBJJlGBCV+JruM+QKL1AGHE4fUCuY8SAuNG4AlaqQegX/6TQWppaM0tMSI+9lLLQuPa3B7aTVASvw==
X-Received: by 2002:a05:6512:2310:b0:4fe:c4e:709f with SMTP id o16-20020a056512231000b004fe0c4e709fmr5960008lfu.20.1690801085654;
        Mon, 31 Jul 2023 03:58:05 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:05 -0700 (PDT)
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
Subject: [PATCH v2 06/13] arm64: dts: qcom: msm8998: switch PCIe QMP PHY to new style of bindings
Date: Mon, 31 Jul 2023 13:57:52 +0300
Message-Id: <20230731105759.3997549-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035807_945671_E3495C3E 
X-CRM114-Status: UNSURE (   9.26  )
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
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 30 ++++++++++++---------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index d0af22fa63f2..94921e75f8c2 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -926,7 +926,7 @@ pcie0: pci@1c00000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 			num-lanes = <1>;
-			phys = <&pciephy>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 			status = "disabled";
 
@@ -956,32 +956,28 @@ pcie0: pci@1c00000 {
 
 		pcie_phy: phy@1c06000 {
 			compatible = "qcom,msm8998-qmp-pcie-phy";
-			reg = <0x01c06000 0x18c>;
-			#address-cells = <1>;
-			#size-cells = <1>;
+			reg = <0x01c06000 0x1000>;
 			status = "disabled";
-			ranges;
 
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
-				 <&gcc GCC_PCIE_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_PCIE_CLKREF_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk_src";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>, <&gcc GCC_PCIE_PHY_BCR>;
 			reset-names = "phy", "common";
 
 			vdda-phy-supply = <&vreg_l1a_0p875>;
 			vdda-pll-supply = <&vreg_l2a_1p2>;
-
-			pciephy: phy@1c06800 {
-				reg = <0x01c06200 0x128>, <0x01c06400 0x1fc>, <0x01c06800 0x20c>;
-				#phy-cells = <0>;
-
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie_0_pipe_clk_src";
-				#clock-cells = <0>;
-			};
 		};
 
 		ufshc: ufshc@1da4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
