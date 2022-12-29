Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8710C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 19:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghTOYzGsSo0FDX64Ch0mWPvx1vZ9Ap28g+GfcUVieY0=; b=pwQxcJoxfT0yrL
	kJe1MrdG6n6kinJvGtr81K9prj4j3LrgScrm/oCZz+KGdxn68Du8MbczK3OVIi+DfSRWCVRaC0wPQ
	G7nQnHW65wrJpdiS98shLVTTCxF6C2NHxFPDtMdadx8ReEK2Eynz3fgWhPlQjnwLanfFmj6G7RLMU
	Xa9zeN338dM/3MqHnjJ7coZKkmhCCDuZjVdwjP2SZv8y60dqTwhkARm38YoLINqtKoBo8nApPQ1Ny
	Z0ExNxohd+tJnu7kPukvN3fZGvCJg/U/fbq/+sJ0epJpIikzNLw7Bq+mDM9/oq9ZlB018sLA4AWtk
	B5FAd7LIoFI9G3tCyX7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAyEv-0014YR-EQ; Thu, 29 Dec 2022 19:06:53 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAxjO-000pgk-AY
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 18:34:20 +0000
Received: by mail-ej1-x62b.google.com with SMTP id x22so46800379ejs.11
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 10:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qOwNzTdUKlF0YVErH+m4Hrlu8Y/CqgzRzrTuhq10EAc=;
        b=RpPdq2z8ewpQAJ+Pq0zFsE+golr0XOyCeAmQ8xF4SnuhD4fy8ggns0HkMbA9lvQlAp
         aVnP0Dxbo/eGyNh2LUIz/M06a2X1mMCyh9d/nKEIqcueDwVj1n/ADSztLB6cGDJcEtBr
         yeaC241RtYWYMMM2RuU3I0ONfM54CJEgGfnrvMXDiScWPqMn36xAXArGcG4uOFJO77nX
         zJQTj/7gPqJ+P7c++wPIcLhUk2wojbzpnIEn/Ijy4FW4RMuTMc9TxmSE+x3cP2zZ4OzF
         qlIkuB+/1eHikr40668fcd4xOaSd9shwA6grac+jhojdIWVB2HkgGCcn5xJSyUzLcOC9
         4mzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qOwNzTdUKlF0YVErH+m4Hrlu8Y/CqgzRzrTuhq10EAc=;
        b=oQO0S3OrZklZVy+u27EFvGCw6VIni3leWgnb6CZ3CWjh+aSASpPhVVMur9T8tmCAtd
         ttlMfDFq/oUtv0nznhqXmC0nAKQeFyzuqG62+QcUH5IEUF9VEn9+CtDK8+HOAJvF1pdR
         9uSXikNujj3cpqFkhbI2C/V9B+hvuFUEl7H2yq0wWXleAm2IV881WFmvb4jGXrZx1eYY
         UhBMTF6lbFAFqIWJQmCjViNgUdtK2b07YNTbkYmesr8JqTrtVclfnyFMTSjS8VBT1e6L
         Kw6f1iW7aaMZ3ELlmNtyTLxBKp6dG7gOZCsnssGP6J4phcTaz+hv9jrfJ782r0trWSD2
         Xn1Q==
X-Gm-Message-State: AFqh2kq5ZIeLEAv7pwTtA5kTw8u5IEPp7VKY0xmn4PViohumUtsz6GLB
	tMHs8kGw3Wxrvefm3tui0NungQ==
X-Google-Smtp-Source: AMrXdXvVMq4b7/E7hSZxnG5HN5oB/9/neiMONpxkkMMUQmt2TjO7i8r2qUhnlCxDRnksiZpVIL3ulg==
X-Received: by 2002:a17:907:c70c:b0:81e:9027:dedc with SMTP id ty12-20020a170907c70c00b0081e9027dedcmr25356911ejc.39.1672338854528;
        Thu, 29 Dec 2022 10:34:14 -0800 (PST)
Received: from planet9.chello.ie (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id g22-20020a1709064e5600b007c0688a68cbsm9013936ejw.176.2022.12.29.10.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 10:34:14 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Date: Thu, 29 Dec 2022 18:34:10 +0000
Message-Id: <20221229183410.683584-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_103418_417007_8D2F027C 
X-CRM114-Status: GOOD (  14.36  )
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

Downstream has a flag called qcom,dp-manual-pullup which informs the
downstream driver if it should toggle ULPI_MISC_A_VBUSVLDEXTSEL and
ULPI_MISC_A_VBUSVLDEXT.

Downstream states:

"qcom,dp-manual-pullup: If present, vbus is not routed to USB
        controller/phy and controller driver therefore enables pull-up
        explicitly before starting controller using usbcmd run/stop bit."

Working with a system that has both an external Type-C port controller and
an internal USB Hub results in a situation where VBUS is not connected to
the SoC.

In this case we still need to set the DP pullup.

This patch enables and disables the DP pullup on PHY power_on and power_off
respectively if the DT has declared the bool "qcom,enable-vbus-pullup"
effectively replicating the downstream logic to the same effect.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-usb-hs.c | 36 ++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hs.c b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
index 53e46c220a3aa..45c94f6722c66 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hs.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
@@ -37,6 +37,7 @@ struct qcom_usb_hs_phy {
 	struct ulpi_seq *init_seq;
 	struct extcon_dev *vbus_edev;
 	struct notifier_block vbus_notify;
+	u8 enable_dp_pullup:1;
 };
 
 static int qcom_usb_hs_phy_set_mode(struct phy *phy,
@@ -105,6 +106,23 @@ qcom_usb_hs_phy_vbus_notifier(struct notifier_block *nb, unsigned long event,
 	return ulpi_write(uphy->ulpi, addr, ULPI_MISC_A_VBUSVLDEXT);
 }
 
+static int qcom_usb_hs_phy_enable_dp_pullup(struct ulpi *ulpi, bool enable)
+{
+	u8 addr;
+	int ret;
+
+	if (enable)
+		addr = ULPI_SET(ULPI_MISC_A);
+	else
+		addr = ULPI_CLR(ULPI_MISC_A);
+
+	ret = ulpi_write(ulpi, addr, ULPI_MISC_A_VBUSVLDEXTSEL);
+	if (ret)
+		return ret;
+
+	return ulpi_write(ulpi, addr, ULPI_MISC_A_VBUSVLDEXT);
+}
+
 static int qcom_usb_hs_phy_power_on(struct phy *phy)
 {
 	struct qcom_usb_hs_phy *uphy = phy_get_drvdata(phy);
@@ -154,6 +172,12 @@ static int qcom_usb_hs_phy_power_on(struct phy *phy)
 			goto err_ulpi;
 	}
 
+	if (uphy->enable_dp_pullup) {
+		ret = qcom_usb_hs_phy_enable_dp_pullup(ulpi, true);
+		if (ret)
+			goto err_ulpi;
+	}
+
 	if (uphy->vbus_edev) {
 		state = extcon_get_state(uphy->vbus_edev, EXTCON_USB);
 		/* setup initial state */
@@ -180,10 +204,19 @@ static int qcom_usb_hs_phy_power_on(struct phy *phy)
 static int qcom_usb_hs_phy_power_off(struct phy *phy)
 {
 	struct qcom_usb_hs_phy *uphy = phy_get_drvdata(phy);
+	struct ulpi *ulpi = uphy->ulpi;
+	int ret;
 
 	if (uphy->vbus_edev)
 		extcon_unregister_notifier(uphy->vbus_edev, EXTCON_USB,
 					   &uphy->vbus_notify);
+
+	if (uphy->enable_dp_pullup) {
+		ret = qcom_usb_hs_phy_enable_dp_pullup(ulpi, false);
+		if (ret)
+			return ret;
+	}
+
 	regulator_disable(uphy->v3p3);
 	regulator_disable(uphy->v1p8);
 	clk_disable_unprepare(uphy->sleep_clk);
@@ -229,6 +262,9 @@ static int qcom_usb_hs_phy_probe(struct ulpi *ulpi)
 	/* NUL terminate */
 	uphy->init_seq[size / 2].addr = uphy->init_seq[size / 2].val = 0;
 
+	if (of_property_read_bool(ulpi->dev.of_node, "qcom,dp-manual-pullup"))
+		uphy->enable_dp_pullup = 1;
+
 	uphy->ref_clk = clk = devm_clk_get(&ulpi->dev, "ref");
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
