Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EAF1C74A5B
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RJaN1m6RMI08RJaqBzdpqKgDsxQRDYvTXv9jwMmlvs=; b=KUcwrHye4n6frL
	nEjXtVMCkC2tvG6Py4XEl5jhFO3B2yIdhGJ/35AxuO/pW65k8o+Z/hKQrzuLRxJmm45595HZtwB/9
	BLCoDbUIlvDMHA32eQoucrLnlcEvwIhEJz4+6NBAHRNNjdsQPxjvRXAKVBsUjKTIsTAfE1jEzJuMf
	tiWxfT8fgVAwh2xj1uzeCfnVxxxF1/dR6z3VlT4GmXSYPGB7ijLD799piyuN6xg6KN6jphDZT4i6k
	kLahn58BqEAdAfAFwbeZU3zkTvl2lpdPZmDgo2st91MeRnw7JQowjl8j41EO3+9Yfd/Pjir4uoA60
	U0joje2/KwbSbLcLDbsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7X-003OFM-0l;
	Fri, 24 Mar 2023 02:25:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7T-003OCp-2e
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:33 +0000
Received: by mail-lf1-x131.google.com with SMTP id y15so399015lfa.7
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBuZta5bx4eleAmsyKmGQolqPLvUuwRhOsGhTxdmFD0=;
        b=J7RXpcJDgzZI4gmh+1w0/uTsvNfstYAqn2oxJlmHUZfmgWNNg2jdJE5uMrHIIxAprr
         yfJaUYyPwt42kaPJppeg8KpFec4ky12V2/8Nkccoi9WBWCcwL3ghsZhdyymsV8+X44h8
         uBHd2s1nXEbO/qotTroZjY0XGrXXiFrTWrYVSNhydAvc9Yw8Sr+kBJE7gBAWXe/HdvAR
         VBjmI1fIcXRDqIYOkBcgj8f3xP4vDlK0WrdMHdkql8eVcAZ/gVtPFxzrBkfFy0M7kqi+
         x/w+9sHv5RapEvq1pgCERcXcosfOQG3Hm1Te8KjAGAxiqjCrRFhkTexBBkad2RtFpkLr
         qArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HBuZta5bx4eleAmsyKmGQolqPLvUuwRhOsGhTxdmFD0=;
        b=q8UNE6C7AzH5gj95GbRzuruNMjtoDwOO7NKZqfg9R2DNeRqiayhBob+f/h83EhztBJ
         kcIDnw8MbzxlDbLbPuq1RzFURGPxFlF8l6zz1n2DhWKHzkbpVCAjG6P6AKU/4N1U8JM4
         xm9oGs5lvUZEZZOfjCWH+dITKmv5rjmjd2ATYsFz4b6uZOpsqWj1uzZwZWjTp5Be0IO2
         afqNNREdC5A+2/59DL7iwxVOuRa5VNPdfRCGDcGIp2M3lqG54xzTlnHGc2tAkdnE7brs
         cHjtsY2g1VQn5wjTx+o+Zu9kc4Rhon5JjBDyDBcm3tpGqYT1Qa9n+CgVNri5twvwAJrm
         VUYw==
X-Gm-Message-State: AO0yUKWQgp5lZ4RJFLkf1s9J3D3WOImZvlqOxflMG23bDoGoozzNNBoc
	tG4JrCb8ytWiQNjYZq/JGilpFw==
X-Google-Smtp-Source: AK7set/SbBK1mUZcF0Hmc6J/vGMkv8cFVtTx/zzMsonuJoAa8GIuEHHJKunuISnaL9oV/iYxEiefAg==
X-Received: by 2002:a05:6512:3191:b0:4d8:86c1:4785 with SMTP id i17-20020a056512319100b004d886c14785mr2300816lfe.26.1679624729508;
        Thu, 23 Mar 2023 19:25:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 13/41] arm64: dts: qcom: msm8998: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:46 +0300
Message-Id: <20230324022514.1800382-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192531_855704_44379695 
X-CRM114-Status: UNSURE (   8.46  )
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
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 31 ++++++++++-----------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 09b222f363c2..2ccf28d8e223 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2032,7 +2032,7 @@ usb3_dwc3: usb@a800000 {
 				interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&qusb2phy>, <&usb1_ssphy>;
+				phys = <&qusb2phy>, <&usb3phy>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
@@ -2041,33 +2041,24 @@ usb3_dwc3: usb@a800000 {
 
 		usb3phy: phy@c010000 {
 			compatible = "qcom,msm8998-qmp-usb3-phy";
-			reg = <0x0c010000 0x18c>;
+			reg = <0x0c010000 0x1000>;
 			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+			clock-output-names = "usb3_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3_PHY_BCR>,
 				 <&gcc GCC_USB3PHY_PHY_BCR>;
 			reset-names = "phy", "common";
-
-			usb1_ssphy: phy@c010200 {
-				reg = <0xc010200 0x128>,
-				      <0xc010400 0x200>,
-				      <0xc010c00 0x20c>,
-				      <0xc010600 0x128>,
-				      <0xc010800 0x200>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_phy_pipe_clk_src";
-			};
 		};
 
 		qusb2phy: phy@c012000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
