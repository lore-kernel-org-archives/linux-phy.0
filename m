Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E29AAC77B6D
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93fzgMN+Blewajmd6z4QmMmr4DwW4l2G1JH7sPr0anc=; b=BmeiEQd1eWGp7i
	NYbjL0hO8f+KR1rd2xT9km1kQK77diipvMqaqkD3NVFvAJIOVrFC73ZBDzeyHHOHyIYT6BvNcKC6i
	vq0r4ge8X2MP2qsPKXLxXcB1t2bc29slYfzxMI4ctGCLJT67Z7brVrXpctx97Pzz1ZhIcAzEMMq2x
	uiW8zn67JjjB5YVfEvbnEpESHOQSEZ8Gv6B94Zbvp0cDuXWNE404P3Jh/SejJ39mzMl6xwOPznx8Z
	+F1EALrZ1h8l3Irlat4IYfutp5EHfzVNDQCy/TiuM3+HHlViB7TjPip2kzNaaBnWCMkNBT6rJxome
	D9BdeTSKfEkTsFKcKkeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7U-003ODd-1n;
	Fri, 24 Mar 2023 02:25:32 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7Q-003O8B-1b
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:29 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y15so398968lfa.7
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S//svcMTmbPJf2Mc1sOCS1xdMUaPthiAfHh3SNxinoM=;
        b=zTRwWLW3y81vbbCporqoXBlptN4nU6v4gd1D6Fi+u9E1CzoE51t0Ulb5sGgr+NzKjX
         1gxnpSBwNYGHJqkR3hqz20IjmOuv/4G4oNc8TRD8PkXUpGr2Cz7FVz7i78XfNEVtSmA9
         VdBIK3idJrCpeyGsLUfpFGT60Qg5KLJNR3rftVtmX+PaxMM7LeStpfhJI+dM24B87+/Q
         /rcmsbJSHqJAbLot87Kx8OAuR08wCNn1hv+UaSeAS6/zwMCSmQXhn5Du9taRlfyVdqKm
         Vk2inb5slA1JHhH7/LX8JNQXpknLNr47CBfxGLiMu0WVGb1p7WwpRMmcYotMED9p0mZo
         xbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S//svcMTmbPJf2Mc1sOCS1xdMUaPthiAfHh3SNxinoM=;
        b=OgwXZlSJqEKInzNm9FPU4Hh2/BQ6jsyEN2kxBS0T+Jx4jk0alsZXURP9QybA+PnNmS
         y23N7ghdPEP78f0gqzDqXeBrBU//82wtXyJejtmu0sYBzzY/OLaJmhngSppmj9jLy6ov
         cC7b2WvuI2NtfGrYxX4rnT4Khzk0dpnXy/Iu0FXC7xABmACOeDgAC0WAKWXICPTTckI1
         vfg6Zxfx+AKpvpNJ8oDJDgdabwKVME+szJv1M333ZqG53VnsSPSUN5QgapZCPkPrNF+D
         QZtQMruuv7s+SxJNYu4qpodkkV+FI7KMMaZVnk7zFi8B1ai1Xxxvcoum/QPdqIkD33t1
         ii4w==
X-Gm-Message-State: AAQBX9faVSlXbbaokwQAawSRUHwzWsVu+gpTxlwcnEjDkTCSM3zocsS1
	B6KnL3r//DgZvNVPine3a87edw==
X-Google-Smtp-Source: AKy350aeGCKm4Ik9mgDexfeAJz/J1rh1SghUZ0VwqbXgHbaXvzyuaXaUSlaltF8iQlTaGe8l215SWQ==
X-Received: by 2002:a05:6512:48a:b0:4b5:1545:222b with SMTP id v10-20020a056512048a00b004b51545222bmr241281lfq.47.1679624728032;
        Thu, 23 Mar 2023 19:25:28 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 12/41] arm64: dts: qcom: msm8996: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:45 +0300
Message-Id: <20230324022514.1800382-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192528_546700_F0148E79 
X-CRM114-Status: UNSURE (   8.37  )
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
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 32 ++++++++++-----------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 4661a556772e..a811095fe93a 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -725,7 +725,7 @@ gcc: clock-controller@300000 {
 				 <&pciephy_0>,
 				 <&pciephy_1>,
 				 <&pciephy_2>,
-				 <&ssusb_phy_0>,
+				 <&usb3phy>,
 				 <&ufsphy_lane 0>,
 				 <&ufsphy_lane 1>,
 				 <&ufsphy_lane 2>;
@@ -3003,7 +3003,7 @@ usb3_dwc3: usb@6a00000 {
 				compatible = "snps,dwc3";
 				reg = <0x06a00000 0xcc00>;
 				interrupts = <0 131 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&hsusb_phy1>, <&ssusb_phy_0>;
+				phys = <&hsusb_phy1>, <&usb3phy>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,hird-threshold = /bits/ 8 <0>;
 				snps,dis_u2_susphy_quirk;
@@ -3015,32 +3015,24 @@ usb3_dwc3: usb@6a00000 {
 
 		usb3phy: phy@7410000 {
 			compatible = "qcom,msm8996-qmp-usb3-phy";
-			reg = <0x07410000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x07410000 0x1000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
 				<&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				<&gcc GCC_USB3_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				<&gcc GCC_USB3_CLKREF_CLK>,
+				<&gcc GCC_USB3_PHY_PIPE_CLK>;
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
 			status = "disabled";
-
-			ssusb_phy_0: phy@7410200 {
-				reg = <0x07410200 0x200>,
-				      <0x07410400 0x130>,
-				      <0x07410600 0x1a8>;
-				#phy-cells = <0>;
-
-				#clock-cells = <0>;
-				clock-output-names = "usb3_phy_pipe_clk_src";
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-			};
 		};
 
 		hsusb_phy1: phy@7411000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
