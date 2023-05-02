Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 226E5C7EE23
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 05:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTpp5r+9Gcxw/gNZjPvlB859V0y8LfWIrmaumsRhapI=; b=LPshCsAVOop543
	Bmuz4GnUsYE8QTP3ogdEBmf+CMpTc9vb6fMLn+zHKf7E3GP3GX/uLaD2V9+h6l6viJhPDIKYxWR9r
	MfrlMUQx6ggY9wT6KUipGSHgnNJ3HGyGR3Jbo5vAscBAxBfo38pJTSa6cwvyrS+4sTmattr5Vfvo8
	HqwqIycAEmtJG3aLpcdzOkVjHp9VOcyx6y8k5w7UzBeRSsNAOHd9jEM2qRTxA3jH9jygKScqXAeyB
	T0EtQ8sTvSsP0dMy27QCI3MYyVrUdE/GoebO4vBohvUH9fquzeOrwMEbRA0YwPPCVzny9R5i5St26
	tdxNM5hor2YWE3xu4t6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptigH-000DGz-2U;
	Tue, 02 May 2023 05:36:05 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptigG-000DGI-0B
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 05:36:05 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1ab032d9266so11067515ad.0
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 22:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683005763; x=1685597763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=edN7qaIOGdbnADlJ0Za45tNBUjQcf3QWA/Qw0dQ45yM=;
        b=mbSJ/YcOiWfiHJiSwetG4Uyb8PfIu5NJKI5uN7ZH/BxYAAOKCJn/P0Ibiwxvr4tCo6
         SMppJDUQhHtfiQW1gV5abzMhqM+0AsELVcNjn17uqMrugZdmFFWTt2izNlNJZC4PAhSB
         cURIJiZSwENxEg3Dq0odypOKDkLbNU0BbLp71oSip717iIh+LJXFggq9sYREr7tThp2b
         WxxBN84w+qqgLk66mBa/kgBorKwlUdTR1PWG681P6eGC/+JEXbbXQUb65WI8WkGnK+N8
         SNSM1tlPQTtCuDxFxcazIMTAygLZD5YFWlG+8cR5Ok1lT8qJfPDbve0SIsd7iMRfGBqG
         tWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683005763; x=1685597763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=edN7qaIOGdbnADlJ0Za45tNBUjQcf3QWA/Qw0dQ45yM=;
        b=G+aTruBNUKVsXLOiBCRuoRG0WYImQDYniOCevn1j2jLPKpLBi9zSIcAvu9y8YYISMI
         gi+scSP9bBYWYpPlhaH+7hHRgpxhy4F4qER8uXAPRJepOWb9xs27pSTQQNeU1z2PYQIW
         m1rNQj6cViGx6SmxY96/aFgbm9iTiS5K8l/JWBwWWk+4NxJCNIUmWi4iqEP7ZmMJxksv
         SArmzXVTaodccXi5zaptwY6x2aQ5UngdFX4LsKokcf2o2pkJgjZDNLGs1vb4BTmALVvi
         UeH2EcIM1e2n4BM/sd4Uh+a4WzdQkvUUThZ72E4cUzrVg0Ab69nXYkN726lLvGdHrGk7
         6iOA==
X-Gm-Message-State: AC+VfDyMVv5X3JqzTTUVor7BpvRfegYCABLi5pVEgvpqHvYCNcR+eRE3
	Q2/+CYdxOWgOieR6HiSsfJHxzg==
X-Google-Smtp-Source: ACHHUZ4uCcjnIN5BkTvMD/ido4dsMQ8WEdpomR/CkUHWXKLUDDl05Z9zLOxThJusg1Or3tLLh/KoBQ==
X-Received: by 2002:a17:902:c782:b0:1a1:ca37:5257 with SMTP id w2-20020a170902c78200b001a1ca375257mr14444834pla.7.1683005763545;
        Mon, 01 May 2023 22:36:03 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id j12-20020a170902690c00b001a6a6169d45sm18870369plk.168.2023.05.01.22.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 22:36:03 -0700 (PDT)
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
Subject: [PATCH v10 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Date: Tue,  2 May 2023 11:05:33 +0530
Message-Id: <20230502053534.1240553-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_223604_094732_67BE7E1A 
X-CRM114-Status: GOOD (  10.17  )
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
