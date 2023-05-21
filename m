Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C77C7EE26
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4Dq6ctt/h3Uj3rIkrsFnHIxZmCjN2fzbUjjPmARG5E=; b=OJ5JJhiUReya0r
	Y7WaPH39qw8auq/InRanuOsXSiUNGj64n166kLgJ36NqOzvI5SNPVGEPuUKNb1GBp+mAHecYwCX8R
	HYtLaEzxRYxy0YqWVe3D99LIY9KbnKT+TGgKEbGUobDTburDrGcPib+LNKVMqDdtwDRnEZ51H/I20
	38oDGNsx6kdXGP2c+DdEBs90y+w9SSNWLg+OU0Bz8laBQUQWP6L4jV5mo1Wk34vrNpJ3ga7rv0AnM
	P9JkkB3WXDWk6jUgFz9fdiJhgL5xIDcAZ9Cx95uSXJAICkrfnufNyVMl2U+N+b2qT06t95wEkkM7G
	cDUQAtnmjxFMWJ9KLkkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qrW-004isi-1g;
	Sun, 21 May 2023 21:45:10 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppA-004cvJ-1y
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:42 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f3b4ed6fdeso1791957e87.3
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701517; x=1687293517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qEd5aRZcblmvyovy6XBo3UP3UrwNyl766kcTf3FoCzI=;
        b=GPdfXU9BGMlDbOLV3VTQgyLenO9bA/6TjNpbelheLDfE2YzD0Nz0n8NDS3TWBQdesb
         yRw/9lYJKCwW2xz3XDUxhh7A5R4ZsaF8a0C/q4qz4pzbFCW5hL9nBcbqSbTaIkpUoRQP
         2i5HaNG9SFojW3ytTA+soiLiWusyXL00JzXw+B+QqaCo10mkYZ3z8nEyS3qDN+q2Yj4l
         IyIMVbjLZf8Pjju4EYbH+RkGZibDRB3QophkljWnaGwf245DOojwSddFzQ7uoP39+VVd
         Z68vwo2ljFTgbN6X6UMNyIMS7ux49d4o3oY/5/n3l1Mo8flFNHHDlr7YOBkCPEG7S17Z
         ts3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701517; x=1687293517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qEd5aRZcblmvyovy6XBo3UP3UrwNyl766kcTf3FoCzI=;
        b=je5vHbJFvHwPAJsZ1IiX+fm930W2bVDMuzHFIS8vmpa/5aDRmT0+rG5qOwOcQaY4FI
         7BnWDboH+JPi2HsNMBKQkjGaH8wLAfALDNRRq8vRKrMFVi5d1qUpO+sodhEDvk/rH2oW
         MV7um0O3SNDqFit1wQw0P7a8xyB2BE9r7OsYpD1USQqF31EoG/nFQM194UEGqAWDD5V3
         j0shyTWCo5Fh7lWzm1aq7N3nrXZNEzzBjoQgAeDGKpA1xXHx+vXsAawPlXJC9df0FMUI
         SF66V4g+BHIknxm0Ny0F6eW4V7FrHHzaYq8S4aSgh+OywBUt1XqgoJaGX2NHJHhOxJ3C
         UNJA==
X-Gm-Message-State: AC+VfDzIQBlM3M9UwWZ7HM2knBbLAOz4KTL7V002bUH2tpx191zjXWFO
	qMPvB04pi8v6P6b6P9vFp4FGQA==
X-Google-Smtp-Source: ACHHUZ6JujLJRMd05D4SiIm/3GUQkEmlQknMso9xKifylodq08Hvw+PdAvGUOWVMvDbOg+NT3G8skg==
X-Received: by 2002:ac2:5217:0:b0:4f1:4051:d77b with SMTP id a23-20020ac25217000000b004f14051d77bmr2854849lfl.60.1684701517791;
        Sun, 21 May 2023 13:38:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 03/11] arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:26 +0300
Message-Id: <20230521203834.22566-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_133840_649787_5B91DA96 
X-CRM114-Status: UNSURE (   8.82  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 2b35cb3f5292..2b65c608a57e 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -726,9 +726,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&ssusb_phy_0>,
-				 <&ufsphy_lane 0>,
-				 <&ufsphy_lane 1>,
-				 <&ufsphy_lane 2>;
+				 <&ufsphy 0>,
+				 <&ufsphy 1>,
+				 <&ufsphy 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -1993,7 +1993,7 @@ ufshc: ufshc@624000 {
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-			phys = <&ufsphy_lane>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 
 			power-domains = <&gcc UFS_GDSC>;
@@ -2046,25 +2046,18 @@ ufshc: ufshc@624000 {
 
 		ufsphy: phy@627000 {
 			compatible = "qcom,msm8996-qmp-ufs-phy";
-			reg = <0x00627000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00627000 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
 			clock-names = "ref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufsphy_lane: phy@627400 {
-				reg = <0x627400 0x12c>,
-				      <0x627600 0x200>,
-				      <0x627c00 0x1b4>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		camss: camss@a00000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
