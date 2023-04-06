Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C866BC77B70
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 19:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru3sFyS0guFoBISlRStcmZDOz4nV7EDfOCHimq8swDg=; b=WfZ7Yb7CQcYo1O
	L2xuTdvD0h3B/51mRVe+zFNTj0etGrgjQCD7xoTlze6lbvkwu+z33o3mpjWHA4iDlteQy6SpNvUk8
	ZT7L7q9Q12BwIPvNCIkzEH/yw1jlv8a2SKs95Ph4eocWdtGct76D7G2+Ncqdnf3AkILn2t+hkKp73
	Qq+5nYtYJy4C3qgVSVOuDoqxE5BQ6Pi6EjEYqVH9mZ2qe1BK6EMVmcUcuhrHlYwFXa15SJNKtoyH1
	0Sr21ebbv1JPqjlrCITgfsSYaZa87TEuhc8EGyx2904ILvJBtkep9eIs/qckAeQhgrowzuuve1edv
	qGjs/9no8iUkTWcBBzZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZr-008QlO-1P;
	Thu, 06 Apr 2023 19:47:23 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZo-008Qih-00
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 19:47:21 +0000
Received: by mail-wr1-x429.google.com with SMTP id r11so40598101wrr.12
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 12:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bXUDVofzbruFWvxInSCiMp68YTGp52NFTniah4vjDOg=;
        b=Qv+otAu1UfAjM8GTfhZEGFrwdb/8qT2pvcgo690fxcFpH1NtoSCCLqrLCH+95AK3G5
         dJ9eKBgEjSk78VYJTFtG5aL09U2/LBG2NT1RvXGLUqlmuLZTMmfa5deMmidpGId1PK0N
         gDBUxbLgfuUCKS8/uiFL73C3JsW/hfKHDkSJj3wmKtsOPyF/hyZXppammwV3RaSzQkfN
         KyKfIpMNCfEJ8uo448tqUTXAlL5VFaJ+L6DsDOIKIC3TUkSXx5uBI5j7fWRo20jfE6ZO
         HBForh6qpZNiT8uAi2dvGJubQVTkiiVEZzPXYxeENYMz63JRe9gKEzIs3Cg4MuJybc/F
         5HRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bXUDVofzbruFWvxInSCiMp68YTGp52NFTniah4vjDOg=;
        b=6H9rdvAM3Id7zXqKqFMNKrCmGO/zMjbRilCiZbNSC2EUNp14laEamdSGX3dS9WKZtn
         VIK4luTtJ4tbDSyY3bPRmkN3a5glOSbrGA7RNFw6Y8eqKjU5zOrjRjUy0LLxejdODzyP
         PNN5752luAb2Ne9VaZtpwfKTVpUdk8w+xlPgeLYn9I+lKkvGCe4h8ZzecrJ3Z8btwwtz
         dIDdsixdqmS9OgQ51IBvZ+JVLef/zVHZ+WjX8tEV2fhtPQ3oBsjRyuegiyU7vc5gBruS
         MqYQnGHhAEeBZTCPxChPcAC8pDkJmcQYcDFxhP/Ya85q9rARC5t813ZZG5KZq8xUKql+
         pn1A==
X-Gm-Message-State: AAQBX9cLHD1Mo3ZUVTYgVZzNxbqsmIGwcwA97qrN2BRG+MGss8/OihLN
	7xnZyXQ1J7pofI8J/dGwVDlN1MUYoYjSEYefpH0=
X-Google-Smtp-Source: AKy350YplvG0jP1fW81hi9f7EU3fuyxwRIfuj0elPEpyP0tkNZz4BYSplTmw7FvRhC7WQC6CNjZAWg==
X-Received: by 2002:adf:fe03:0:b0:2e5:26eb:bd1b with SMTP id n3-20020adffe03000000b002e526ebbd1bmr7466331wrr.58.1680810438846;
        Thu, 06 Apr 2023 12:47:18 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 5/5] arm64: dts: qcom: sa8775p-ride: enable UFS
Date: Thu,  6 Apr 2023 21:47:03 +0200
Message-Id: <20230406194703.495836-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406194703.495836-1-brgl@bgdev.pl>
References: <20230406194703.495836-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_124720_054180_4A707904 
X-CRM114-Status: UNSURE (   8.32  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the UFS and its PHY on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index f238a02a5448..2bb001a3ea55 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sa8775p.dtsi"
@@ -20,6 +21,7 @@ aliases {
 		serial2 = &uart17;
 		i2c18 = &i2c18;
 		spi16 = &spi16;
+		ufshc1 = &ufs_mem_hc;
 	};
 
 	chosen {
@@ -426,6 +428,23 @@ &uart17 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
+	vcc-supply = <&vreg_l8a>;
+	vcc-max-microamp = <1100000>;
+	vccq-supply = <&vreg_l4c>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
