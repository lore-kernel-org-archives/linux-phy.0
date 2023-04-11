Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46841C76196
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qseqSvAaMLeVUxlwZhTYEZw4f4NGv3k+PaEFi6lr1+Q=; b=hUVAsI9BlVFsfU
	AUD/A3wyM/t58vZ7eUlItIHj4LedOXNPfu7Y98OMUPk8C7/hnMODy3njUfP1B+ii1c4w3PlucbOkM
	Z3zHFWCFcI3OhIUzvKXwH8BGe4aq9fZssclyp21ji5yEskQoB1kPrb6VqcB+K/9txKxqsC1P8qluD
	rwwcqyVXaGE8CKs5jCpQd6pDqjpNiPeKf1EQ5mjbTgv4wEiMk+Em4S6gafSrTP45exvm7dhFin4sy
	rs6+ZPA/BiLnaQBiEhmxTVpXWjXb8PRTmAhXyHhaZ3MqMBXyD2BIr+TxlUOdhBwRSBEKKSIFqaQWd
	XPJI2uqT2m+LK82X3e4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDgC-0003aK-31;
	Tue, 11 Apr 2023 13:05:00 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg8-0003Wi-1Y
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 13:04:58 +0000
Received: by mail-wm1-x32b.google.com with SMTP id i8-20020a05600c354800b003ee93d2c914so5724671wmq.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 06:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1681218295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jC6gWh/93zTyDqTCTM2LE5tDkTpbOI5ydojvv7gVZxA=;
        b=FFCPUtV2Lhbi5fQvjeIDIR8Qg/uJ/rl9m+UeCwBQTVM4lkw1j9B+ZpUeZ6gDN9B0uS
         5KYFuGOrfu30VupuAu3H3BT4zFFj2fo4YnCOMS94hGmzRtWbUaevbONsQYJhFZ2K4P9X
         L/nKMZc4qzDqDbJSKMCbVwiT74/tyLf1IDhYwNoVGTBX3FfTleMUmDJ+X3a0/Ds+fXw8
         6hXszRubOP119xDL6FbpP8/1iwy5ixar/TfWolzTcqPXDIGuUrUteyXffTqCwC/E32e0
         flTv2fTqn2e4oht+v5shjskCYLvSETVjg+KpbnXDFJtk3DRy0oV4jCvdM/AIo9b0kCt8
         xDiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681218295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jC6gWh/93zTyDqTCTM2LE5tDkTpbOI5ydojvv7gVZxA=;
        b=wEcMgzZMdnGgP8z1DInQ2wrvYgDJ4NIyM9/XU3DsnQ209iPIXOyum5VdojN95RPO1P
         hrCIJyX2B13rbU6paJR0g1udHnUADJ2C4BEK2A2+E3gDdnFHSGYbFLxZtiwu/rUpBbR/
         jhEOBPBonBj+TVg+D8wx2Jn6ya3s/R5ls5VKs6MXy3SV/vs6aMWG8W0a0QrSZ6u7mnmH
         8QiaOjZKpAj8Ci8E+JgoEClP2k381RXiLnc4ms8xHX2B5DBbBK6hdhC64Z7ppTy8zPOm
         Y6j88PH/hci7k1kwgLoSZr63gLfQ2uq3bnqJTAzy5t03iNLK8A1MYwWaFA0wdxYAcyTR
         e0eQ==
X-Gm-Message-State: AAQBX9eG0qZbLoEXAJUiuq0u7WL0G8K7+J/2UvwbzDVEp9QksvKaP9+4
	75GDvtRybI5RnUqewadcZF4Fvw==
X-Google-Smtp-Source: AKy350Z92G2IhtFFM8sPmnrWvnbsC166u3rxSYJBKLJmnUOC9WEFR1kTpLmES+RFg8ATH3kOBYYeCQ==
X-Received: by 2002:a7b:c419:0:b0:3eb:2e32:72c3 with SMTP id k25-20020a7bc419000000b003eb2e3272c3mr10768600wmi.22.1681218294957;
        Tue, 11 Apr 2023 06:04:54 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a099:fc1d:c99a:bfc3])
        by smtp.gmail.com with ESMTPSA id t6-20020a7bc3c6000000b003f04646838esm16921301wmj.39.2023.04.11.06.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:04:54 -0700 (PDT)
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
Subject: [PATCH v3 5/5] arm64: dts: qcom: sa8775p-ride: enable UFS
Date: Tue, 11 Apr 2023 15:04:46 +0200
Message-Id: <20230411130446.401440-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230411130446.401440-1-brgl@bgdev.pl>
References: <20230411130446.401440-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_060456_535176_81279566 
X-CRM114-Status: UNSURE (   8.54  )
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
