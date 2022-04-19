Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 963BCC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 20:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OXgo03sVtujf8U5BZTBab29qSjgN1rhDTHxbsERkwVg=; b=hkus1OS6qE0PGx
	z07/jagxNgbsfYiCtj1amQbTrKs9iHHS+ZMZLWIjCvA99spXRf6eaMHZoZS+HLSPY0W6GbLcn/8Ww
	iNm66gWiVuBvbcsyr5616+vo6EVbj0IrO2lsi7TaeZLDNwIhk8CfsPXoYrAXKjHd/IecK8YgStBmp
	bVrSUBqFr/+VfLlbrye6vLpRZBaZaYVc6EkfoXJuYZNg9ZbRZzSw7dNGVjoX8OLKe1j59HquCk1aO
	b+MHZSKXohg9Cyo289VvSuzFm2SGqX9RqOv6KYBdIEmThih+3oxKbSEGGxHEny+W3Exjv3gRgUExX
	apDhcO0jOQGNUSyyt77Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nguwJ-006DVh-RV; Tue, 19 Apr 2022 20:59:11 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nguwF-006DQo-L3
 for linux-phy@lists.infradead.org; Tue, 19 Apr 2022 20:59:09 +0000
Received: by mail-pl1-x633.google.com with SMTP id v12so16954908plv.4
 for <linux-phy@lists.infradead.org>; Tue, 19 Apr 2022 13:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0ETDPx0UexpMdL4JaVIwnmwwSk5TOGi0t/0oH1NiIks=;
 b=Ou72ds/PMkguxSaaJuyaAXO8qfYGBAYEYhCOCdACo3QLflSWruXiHjOAkIaao9zrsk
 dARfC65+kt2tPxLzjE/Gj5e7Lgp8atpyoQpNmsmH2fPep0VttZ17xq5vzeLb61l/7LUP
 50J5HMFLSO52Dsyw4lcVLLpbBFyC5gSRh5bdDyFzDI/g51tchX7BCvi4qk/zKi6Y5bOD
 kFaIGQRyYSePyCrdUTbYiXmfu7IOx8+hc0WDB00U2dXMpmyANPsPnoTGQrtIbi9kzdfh
 NMo109iMrH4Av/PBJdb2ju0JRz7plh+VoWT4L1IxA52bueKTZQdQeGDpng325Zz1Y+AP
 WjVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0ETDPx0UexpMdL4JaVIwnmwwSk5TOGi0t/0oH1NiIks=;
 b=AoUlxs6b5vcFAGSYYScI2z3cJJ2ckCOmnSxEzLUj0F76e5NWlSVjoo0MEfo17hi1qU
 lYedGkHuTSKO3ng8jf/+C8SRmEHJ1L1dylljjOlYBciLi2GpteIVtvantXw+QjNqNCbP
 f77eTZ+CaFBoBxS64vSMPDkVJVtSJ8hSYhfF+JFlCMx2cIKmo6n8foOHW43mRGFBd3Wj
 Urk+fW4PXqSnpDjX2c8BHMKnsqQSCmADZj+jegobI2KS4EaZOCJEvpGuOWCIaK4biW3A
 K7YLiR3NIy9t6jsfv2LlP/lKLO1jw2+RHYAdnA5pW4LywyppxS83isV0/SLEZMO/5f24
 iKGA==
X-Gm-Message-State: AOAM531vnxnnOECBCigKPBTT35bOVlbWdjFYj2pdQHc6NG8nkayx4yxj
 /++UlNcTXik8Y2/ACt5dVe60ekBS4DeQLw==
X-Google-Smtp-Source: ABdhPJxjpKJo7gVFsLStPnTDzbXVPLwFGFvz90IgUgstbZsBWFBckrDw6TwgH8hIkp7aUjaR3SsXaA==
X-Received: by 2002:a17:90a:db16:b0:1cb:9ba8:5707 with SMTP id
 g22-20020a17090adb1600b001cb9ba85707mr551671pjv.32.1650401945806; 
 Tue, 19 Apr 2022 13:59:05 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.97])
 by smtp.gmail.com with ESMTPSA id
 u25-20020a62ed19000000b004f140515d56sm17215938pfh.46.2022.04.19.13.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 13:59:05 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org,
 konrad.dybcio@somainline.org,
 Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v2 1/1] arm64: dts: qcom: sm8350-sagami: usb qmp phy node -
 add 'vdda-pll-supply' & 'vdda-phy-supply'
Date: Wed, 20 Apr 2022 02:28:54 +0530
Message-Id: <20220419205854.1269922-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_135907_775443_F0EEE80C 
X-CRM114-Status: GOOD (  12.82  )
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

As suggested by Bjorn during review of [1], the 'vdda-pll-supply' &
'vdda-phy-supply' supplies denote the power for the bus and the
clock of the usb qmp phy and are used by the qcom qmp phy driver.

So, its safe to assume that the two regulators are the same as on
the MTP. So let's wire them up in the same way as the MTP.

In absence of the same 'make dtbs_check' leads to following warnings:

arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
 phy-wrapper@88e9000: 'vdda-phy-supply' is a required property

arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
 phy-wrapper@88e9000: 'vdda-pll-supply' is a required property

[1]. https://lore.kernel.org/lkml/20220228123019.382037-9-bhupesh.sharma@linaro.org/

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: konrad.dybcio@somainline.org
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
Changes since v1:
-----------------
- v1 can be found here: https://www.spinics.net/lists/linux-arm-msm/msg108467.html
- Fixed the commit message to read usb qmp phy instead of ufs phy (which
  was introduced erroraneously in the commit log).

 .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index 90b13cbe2fa6..238ac9380ca2 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2021, Konrad Dybcio <konrad.dybcio@somainline.org>
  */
 
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sm8350.dtsi"
 #include "pm8350.dtsi"
 #include "pm8350b.dtsi"
@@ -75,6 +76,27 @@ ramoops@ffc00000 {
 	};
 };
 
+&apps_rsc {
+	pm8350-rpmh-regulators {
+		compatible = "qcom,pm8350-rpmh-regulators";
+		qcom,pmic-id = "b";
+
+		vreg_l1b_0p88: ldo1 {
+			regulator-name = "vreg_l1b_0p88";
+			regulator-min-microvolt = <912000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6b_1p2: ldo6 {
+			regulator-name = "vreg_l6b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1208000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};
+
 &adsp {
 	status = "okay";
 	firmware-name = "qcom/adsp.mbn";
@@ -256,4 +278,7 @@ &usb_1_hsphy {
 
 &usb_1_qmpphy {
 	status = "okay";
+
+	vdda-phy-supply = <&vreg_l6b_1p2>;
+	vdda-pll-supply = <&vreg_l1b_0p88>;
 };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
