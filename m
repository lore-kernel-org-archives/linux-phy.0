Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D79EC54E41
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eerzSBOBZABz2kNiyy8TxpeWJG8mWKlzChxaxJwlgUM=; b=iYI6DN7HB7GZ3v
	ESfdu4f0rLgqSevnPcxjHVr5KnSGtdKT7z71QiQGeI8gMmcTNqqoCPyiwp+rcj0KfKH4FCT7P83JC
	niEEN7QAp+gBMgCoOlatjC1/6qL14XVZmDSd4SocI52+gnECWoOUwnm9UYVCuVi5+yA4u4wYAcfY4
	SYpyK8p6ikD/ek88/skfpxOmHmkDMjh/ic932luI614aXaFfHv4lBj0KdFA8oZSKLz/xsD4bN1uDA
	RnCPZH4JiHo7pi2ZiMSm5MlfAD4fDwQTkEXGnv8TxjKD78gsdNkxcG5tKSgPQTMcymLKn8E3/vkmV
	Y8eBvyhxv08IlHXR0e2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg8C-0000000DbKj-0BqN;
	Thu, 29 Feb 2024 13:07:24 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg84-0000000DbGm-2Uiy
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:07:18 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2d220e39907so11389891fa.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212034; x=1709816834; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NKmGfxd/NVrK3oICkt9QzVVMEnc4HPhnKzXpPWZI9wc=;
        b=FTV+F//B3XVixW3Ne77H4z0UIIEpkA9xKT5Nm4pqJryclZlG+JUpmRQCB5N21aRVqU
         IC68uucPv5yL7SnQ240XmVJpmPBhwd+NbVW8JcZ1/vUBzZFcJo+VVXhLH0oGstC9A4M0
         34bmmSLoW2w7WgeFc0UYhUBcE5uCRf/n6yW5h3uu0KCrBI9QegxK07ZHbss5mMbDXii4
         f4pDg+CnBfnwtqcnuDdPRCbpPYwZ9+IHHbnCGF3jzpj/WpSWbpiR3adwg8tS6bnb0hUd
         CbsyM9gHpiCnavSon/Q5/qk5CkLNTawC9V+GFjEO+vGQrGf01II0MqjuVqHNNK/Y14i6
         sFWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212034; x=1709816834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NKmGfxd/NVrK3oICkt9QzVVMEnc4HPhnKzXpPWZI9wc=;
        b=N2T/DuNwkkn1eW5wYgC7NRVb9WbOCL4/drF68YfdOEKmcZwUAyZlb0QZoh7WeR+RJX
         stPlZz+nQ2hhxSQcKm+BrZS0mZ+nACuuza+LWK430rdVlQAkChUHbhEdqQtTeqcDohYR
         1bGLQ5XdIKU7EvrfqLTvFnnzEn4OUEbSvVV3aLCpNvdqVQVSasJqiFUArbn+h3lR5Hdx
         oEzyDCL5b6nCzJ5hkWld2LmbTTLGctS9zkeZzOmPzOMz3u0atUgxOvLW6SrbEG29YAcq
         9mbBdzdUhuIl4cgAukjJMQoNoXh4MX9vCesvEAA9rI74ThlPU/SWCVDQomRRsAAn5Clh
         KZ6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUeoNsz2uHJWDS4S8n1RXK5G9RO9nxMJA/VEKEWnta88mO1gpSW6Z5kB9j/V/9zqtUUi8toLsmC4nDGm8uFGHJTiLPLLNFsVplVwViy6w==
X-Gm-Message-State: AOJu0YzkNCYmMNjg4uXFowRG0SrfzEZLbK9UBYMjF40tS4AgPAR4mvPu
	uEED5ZOmes8MM5sYRCKzq2rOls7dwotArYk2jozA6shll9G9eb4duuzxEFT2Gf0=
X-Google-Smtp-Source: AGHT+IGR24vSDb8RIrJOJ8Dth9NKC6WKDL2EdYZtE+ndU6zKZmHhEng+l5nObyZHyGbpbWXbNcYbHw==
X-Received: by 2002:a2e:9bcf:0:b0:2d2:b17a:1724 with SMTP id w15-20020a2e9bcf000000b002d2b17a1724mr1553831ljj.19.1709212034383;
        Thu, 29 Feb 2024 05:07:14 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:14 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:04 +0100
Subject: [PATCH RFT 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
MIME-Version: 1.0
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5554;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=t7JWKvorJKpCBAS06JzHB/6hZJNkPjNsbGQugGO0kcQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF8rwodAWtg5N0fR68RXcppecYMYPGcfqo3cu0l
 Q0LGw62JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBfAAKCRB33NvayMhJ0eFBD/
 9wQivhDbwoLkYitiSMy6wkHuR0+EGcXTgcHDVgPvdv9z6VEKGktJY/dH1Ryd8SlLDDrp3TYkjyo57a
 b9I0M/mDpIy/fjO2heYWODYTWZCnxBaImG6OwLesXmugWh11+EDeBgB93yJpOfKN9wpoDf+hWLnwzV
 hQaMRUEIBG/EsrTuH0CMWsEnHeI2VEAD4vSPV86dTGGXZ7OI2avQ3LLHJpliV5iZRFUr/kT/673DxR
 kTrab6/Inm6uh8eu5CTmiI5jDx/LlVoS3GFUR8O+hgns4ExFvJdCe6UIk90kJrkYD6PQUAUaBbIwg+
 KqhmQ5UY5nbxUekM/qd1QzEVyO9rU13L/Ao9Bl9pjcCo5g93WPvX+00d1GIo6Adz3Ug2ofcYd9Ahsp
 e1vAC8ySW+doSYkvyQO9c4PU5DHkD9O6VKaMh3iYUpz2X+TAWElcp2YC8YG1wQCvob4CNj2CGQlOXx
 fW2ZtXkDxbOiUDBozkL67xrJAKZW59nJJCPCfMXltJE1O8O5gj5xbtEKynNNzEwqJJzW7fwKv5stSe
 irfYC4vQYCeTHTvckJtFVhuNBdkWfAdZuRZgwoyCwcIqdMaQm+qO9E4fjgNWhKZbwEZUSa7vpifzVV
 6sn4S9WE7Kpq7dxnZNao6KAqQAACYwo8qKEGwfN8HQ1LqrBoHPZoyFUDx3/w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_050716_707508_0CCD3D25 
X-CRM114-Status: GOOD (  22.38  )
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

Register a typec mux in order to change the PHY mode on the Type-C
mux events depending on the mode and the svid when in Altmode setup.

The DisplayPort phy should be left enabled if is still powered on
by the DRM DisplayPort controller, so bail out until the DisplayPort
PHY is not powered off.

The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
will be set in between of USB-Only, Combo and DisplayPort Only so
this will leave enough time to the DRM DisplayPort controller to
turn of the DisplayPort PHY.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 122 ++++++++++++++++++++++++++++--
 1 file changed, 117 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index ac5d528fd7a1..b5fb6cbcf867 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -19,6 +19,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/usb/typec.h>
+#include <linux/usb/typec_dp.h>
 #include <linux/usb/typec_mux.h>
 
 #include <drm/bridge/aux-bridge.h>
@@ -1515,6 +1516,10 @@ struct qmp_combo {
 
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
+
+	struct typec_mux_dev *mux;
+	unsigned long mux_mode;
+	unsigned int svid;
 };
 
 static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
@@ -3295,17 +3300,111 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 	return 0;
 }
 
-static void qmp_combo_typec_unregister(void *data)
+static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
+{
+	struct qmp_combo *qmp = typec_mux_get_drvdata(mux);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	enum qphy_mode new_mode;
+	unsigned int svid;
+
+	if (state->mode == qmp->mode)
+		return 0;
+
+	mutex_lock(&qmp->phy_mutex);
+
+	if (state->alt)
+		svid = state->alt->svid;
+	else
+		svid = 0; // No SVID
+
+	if (svid) {
+		switch (state->mode) {
+			/* DP Only */
+			case TYPEC_DP_STATE_C:
+			case TYPEC_DP_STATE_E:
+				new_mode = QPHY_MODE_DP_ONLY;
+				break;
+
+				/* DP + USB */
+			case TYPEC_DP_STATE_D:
+			case TYPEC_DP_STATE_F:
+				/* Safe fallback...*/
+			default:
+				new_mode = QPHY_MODE_COMBO;
+				break;
+		}
+	} else {
+		/* Only switch to USB_ONLY when we know we only have USB3 */
+		if (qmp->mux_mode == TYPEC_MODE_USB3)
+			new_mode = QPHY_MODE_USB_ONLY;
+		else
+			new_mode = QPHY_MODE_COMBO;
+	}
+
+	if (new_mode == qmp->init_mode) {
+		dev_dbg(qmp->dev, "typec_mux_set: same phy mode, bail out\n");
+		qmp->mode = state->mode;
+		goto out;
+	}
+
+	if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_powered_on) {
+		dev_dbg(qmp->dev, "typec_mux_set: DP is still powered on, delaying switch\n");
+		goto out;
+	}
+
+	dev_dbg(qmp->dev, "typec_mux_set: switching from phy mode %d to %d\n",
+		qmp->init_mode, new_mode);
+
+	qmp->mux_mode = state->mode;
+	qmp->init_mode = new_mode;
+
+	if (qmp->init_count) {
+		if (qmp->usb_init_count)
+			qmp_combo_usb_power_off(qmp->usb_phy);
+		if (qmp->dp_init_count)
+			writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+		qmp_combo_com_exit(qmp, true);
+
+		/* Now everything's powered down, power up the right PHYs */
+
+		qmp_combo_com_init(qmp, true);
+		if (qmp->init_mode == QPHY_MODE_DP_ONLY && qmp->usb_init_count) {
+			qmp->usb_init_count--;
+		} else if (qmp->init_mode != QPHY_MODE_DP_ONLY) {
+			qmp_combo_usb_power_on(qmp->usb_phy);
+			if (!qmp->usb_init_count)
+				qmp->usb_init_count++;
+		}
+		if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_init_count)
+			cfg->dp_aux_init(qmp);
+	}
+
+out:
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static void qmp_combo_typec_switch_unregister(void *data)
 {
 	struct qmp_combo *qmp = data;
 
 	typec_switch_unregister(qmp->sw);
 }
 
-static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
+static void qmp_combo_typec_mux_unregister(void *data)
+{
+	struct qmp_combo *qmp = data;
+
+	typec_mux_unregister(qmp->mux);
+}
+
+static int qmp_combo_typec_register(struct qmp_combo *qmp)
 {
 	struct typec_switch_desc sw_desc = {};
+	struct typec_mux_desc mux_desc = { };
 	struct device *dev = qmp->dev;
+	int ret;
 
 	sw_desc.drvdata = qmp;
 	sw_desc.fwnode = dev->fwnode;
@@ -3316,10 +3415,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
 		return PTR_ERR(qmp->sw);
 	}
 
-	return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
+	ret = devm_add_action_or_reset(dev, qmp_combo_typec_switch_unregister, qmp);
+	if (ret)
+		return ret;
+
+	mux_desc.drvdata = qmp;
+	mux_desc.fwnode = dev->fwnode;
+	mux_desc.set = qmp_combo_typec_mux_set;
+	qmp->mux = typec_mux_register(dev, &mux_desc);
+	if (IS_ERR(qmp->mux)) {
+		dev_err(dev, "Unable to register typec mux: %pe\n", qmp->mux);
+		return PTR_ERR(qmp->mux);
+	}
+
+	return devm_add_action_or_reset(dev, qmp_combo_typec_mux_unregister, qmp);
 }
 #else
-static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
+static int qmp_combo_typec_register(struct qmp_combo *qmp)
 {
 	return 0;
 }
@@ -3532,7 +3644,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_typec_switch_register(qmp);
+	ret = qmp_combo_typec_register(qmp);
 	if (ret)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
