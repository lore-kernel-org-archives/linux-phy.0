Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 207E6C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 15:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTpp5r+9Gcxw/gNZjPvlB859V0y8LfWIrmaumsRhapI=; b=pzvTQhr4y/9hOr
	CqFaLaDY7IWCrOd1cBzRfpCQI0K24mlIMTK+iwCVx4z6g54qcLudhtVaOd5+DpmvuHMBRR4/dnJjA
	3UAQDHL3v7BwVzN2KEKK/gbYJPgaQGb4AdnjljVe5UD3Y0S10eN9tRqa9bFHeOfZ/cGdd8UegrU5+
	NOs4cLnhXzq6nUwVOQ8a4BtlcOMzQLCVPR5LpjXnj5EvfvCVM+1218KWAWUUZyk5RHIvdqY3/7F8Q
	umDKUnJP2qn+nP5OcXceaZzT0ZmBkQp0apuIHJ1gd+YM2NswXaMy8/DKCtDd7RSEN7yPFvjL4vRcS
	5r4w70CQX/TauLa8GKIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywF9-006Bpx-2T;
	Tue, 16 May 2023 15:05:39 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywF7-006Bot-07
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 15:05:38 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-64a9335a8e7so6328109b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 08:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684249535; x=1686841535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=edN7qaIOGdbnADlJ0Za45tNBUjQcf3QWA/Qw0dQ45yM=;
        b=ql3mc7iWO7HzYCFrBJTqMA0qrLzxTjB+1EL5xeFyf0b/R2S4q4du08BTr2yB112wXo
         3AWxoyI2hSqzsOhwh0k99ZCBqHq321WPwN8PvRmclrHaUkiEnyQeRlc89X02YlaUE2fF
         NmOAwlQEh+W5+vSth2TwBiBY7lpX12rGGmoQrCi3cLN2KwyeRFWbzzhu9Hp5nJEeKL0G
         qRtMQg/jkqevVxvTDpVpInpWRjnlA9gHaPe/zD93Zd6TqrFvAdsBTjEP6mhkTi+Q7nWP
         PCIN6WZWaUBB2SsRbZGrx404aAUR+t9ASXA/epk6321278a2TMSSNaorOK9u1DB9PTDD
         tyMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684249535; x=1686841535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=edN7qaIOGdbnADlJ0Za45tNBUjQcf3QWA/Qw0dQ45yM=;
        b=IySr6FHTRGdWQgEOjqIh7mt8vLLXFZdfg82X7hALHpBl2Z9I+kjlTyZNKeQ3o4tvtm
         pnSWyfQQjTAVZASgOipUhbTxR3JPwwOosbxuF7CBR5KbEnSOn+xZat5OYd6bvKzAGwu6
         A/r45n6i987wSTzZkkZLaee7fH+ptvmGpO0xmve3IAAqF9b6qvDDTCHS1mEpvmoxtWaw
         u9Dftc3apmH6X3+e5vtVwwBJVQA1U4wvBjskw6tiYIkpbn4HSdrh7Cdffbzzr9U3aWSZ
         acyRFf+A22alk4JmxvslqdF46sODiylllqaYs9oeaR07qTno225w0ERE3D1K6GIzwCkc
         QsMQ==
X-Gm-Message-State: AC+VfDxlVWW8fEDJbhURf9F3u6FXBkpTt3f9wbBpOjgCoxTsEfP+pwGP
	5sYylWi7FrNUM17AL+zub6CtGA==
X-Google-Smtp-Source: ACHHUZ6ZKoPafL80L0bWiLtvPaKnmUG8APSA7qi0BQL2BwGpbFrEcLoGLzFOYLZpzzk1K9noOEXi4g==
X-Received: by 2002:a05:6a20:6a29:b0:ff:df0d:a6fb with SMTP id p41-20020a056a206a2900b000ffdf0da6fbmr32721597pzk.28.1684249535552;
        Tue, 16 May 2023 08:05:35 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:72cf:f5c9:ba94:6b85])
        by smtp.gmail.com with ESMTPSA id h1-20020a654801000000b005302682a668sm12817164pgs.17.2023.05.16.08.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 08:05:35 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v11 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Date: Tue, 16 May 2023 20:35:10 +0530
Message-Id: <20230516150511.2346357-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
References: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_080537_080034_2871C7BE 
X-CRM114-Status: UNSURE (   9.50  )
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

Add USB superspeed qmp phy node to dtsi.

Make sure that the various board dts files (which include sm4250.dtsi file)
continue to work as intended.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index a1f0622db5a0..75951fd439df 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -242,6 +242,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 631ca327e064..f67863561f3f 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -661,6 +661,31 @@ usb_hsphy: phy@1613000 {
 			status = "disabled";
 		};
 
+		usb_qmpphy: phy@1615000 {
+			compatible = "qcom,sm6115-qmp-usb3-phy";
+			reg = <0x0 0x01615000 0x0 0x1000>;
+
+			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
+			reset-names = "phy", "phy_phy";
+
+			#clock-cells = <0>;
+			clock-output-names = "usb3_phy_pipe_clk_src";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		qfprom@1b40000 {
 			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b40000 0x0 0x7000>;
@@ -1111,8 +1136,8 @@ usb_dwc3: usb@4e00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x04e00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb_hsphy>;
-				phy-names = "usb2-phy";
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
+				phy-names = "usb2-phy", "usb3-phy";
 				iommus = <&apps_smmu 0x120 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index ea3340d31110..81fdcaf48926 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -306,6 +306,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
