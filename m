Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54C88C27C43
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caRHxNitEFZaM55ETAJ06pA9XlDBOvFOzgnE5gls5U4=; b=Pe2I7ivUpKvx+r
	b2C7IpO5Jn4q28w40SJMFtCXzDng58DP4jEqWYA3ILAAoQO3jFi3X5TGnHlmyhMHrZXJHT93kf6qc
	DEa6RQUfawyoVoFglmF9YWTJx4tly4Yvl4gFdiwFTB+6q8a/qHdh3c8raUPAx6AzCHBvOe8AXmD/6
	hsAXbdaHFFnJwkKvjq12oR6sSznCoa0HUvrhs4Syk7RSnDgHqiEA70qlyNoRcwT/n2eGeymT/qpyb
	Hr9vpn06MsbQQIt+3fUAv5ItNHiuGUoCbR6lcaBVuN+YBy/u23JlVPTCw/pxbDyFmH8prIqiyPYnj
	CMADI6ha7TzRmLPSN4Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwT-0000000EHLW-47RI;
	Mon, 27 May 2024 08:42:53 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwQ-0000000EHHJ-419i
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:52 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-354cd8da8b9so1721493f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799368; x=1717404168; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YxS/sF3QMS4pEv+lY+qbGlLSEUONW426ub4A6OzdIao=;
        b=cppOpwba0je1HKtgfwC7h9f7KiFyb4VFxql3ocgdBqNGo6n+qT3QAcJH81X5TIhXC0
         era+zxEQidqyCyupUnDiLQ7MuqKedsrn6HiuwfwGYXV3YapnDxYU7iuvmHlIY+iEClcd
         ENJOC3WySqAaVA3FI4AQDvIqLEICX/G+EXvSiRi64B5xqffB8OEodaV0UJh7uWZo/HFb
         f44fbSY8PGftRhZuM/v8AxMnbgCorYJ3YS63dkeV0GgRMT/YPe058KBwjvl/DdhyLdDI
         hAhe2/rYBiocJ8sHsxYZlJ4l85uXdB7Ly2QBiT/NH49+4OCtcDmx2eosKj6ONn54Fwhj
         OA9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799368; x=1717404168;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YxS/sF3QMS4pEv+lY+qbGlLSEUONW426ub4A6OzdIao=;
        b=OXf2UluO++cw6EsbwlyK9EQlgSUz0wRZtZuOks0/4VpT9BxcyW7npt1+MAjP8LONvb
         lj79OEnrXVSvGw/mUhTEw1KbEywF0KyhdNsjGh6UAeF/rgOKZiQL4rFWXZ40GcBsedhG
         c6XUwsOIffuXFm8ARtzehTzT1f836zG3i/bEy+i0+/9RiL/yQjoszvSN5lgnkgXWDtCZ
         d6XflV9lZ12ZCBPnZXwjyAf95eyujKmdEwqmOF46uknyd8PMiHTdA2uv6vEM1COcaB36
         eVZMLWQ6Ne0M8+wFSrCIgMXWqWxnx0KSphnVgOdJXzsOeKXCM9wmNxRZSOINr6WQ67ZS
         GQ4w==
X-Forwarded-Encrypted: i=1; AJvYcCXrKPo/RgO86CadRT1xciNE8nuAtZLRfHK8G1cUpLsM1hIwi/tQHr0OpSFZ3BZ3KUrwYl2mn97HTsjbETQK/JUYmVdPZG6p1UwkEbrACg==
X-Gm-Message-State: AOJu0YzNRKseg5f13CR7Zk+1kKE1FXgRwPdIMzxDSmsyoTX5kau/slsG
	WcfPjG3IQPsC55QOqNI9//4p5kXZPOcYvZP0do9IDeyKqEroyS/3lqsUBhmn9rc=
X-Google-Smtp-Source: AGHT+IHvYNYI+HYZ0T3aH79X8HjHbOAAMpCSMNdGza6OuIPLY6XiVGDoTfX/QWPVjBwhKX7xTtaRfQ==
X-Received: by 2002:a5d:4a0b:0:b0:34c:9a04:466f with SMTP id ffacd0b85a97d-35527055733mr6097723f8f.50.1716799368167;
        Mon, 27 May 2024 01:42:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:47 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:36 +0200
Subject: [PATCH v2 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
MIME-Version: 1.0
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-4-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5577;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=sHniYRJN3UOlGbmTUjhhBF3mhKVX5A4jgOzkdiNthQ8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd+RjMq1ikwOlKvSX0tp1PUo4ij5m+LcWVI8cZ1
 doln6YSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHfgAKCRB33NvayMhJ0R3yEA
 CEgX/83nEyu4aKS5hHCxQY5xF0LaZiBmIIYxauh+xU/qwPYmX4iRcyMX2E2mrqTAiw+kj+mcDEu4pX
 vooy6j8vWgx8x4MLb2CA64VrtT3IEX/IeFVIdDRZ3K0pZURqkV2/ivYxBYJDW1L7gHvY6xK/gEJk7z
 LkKiaDPo8ZWkyfhbRERNEUCASt9jRYaD8S3negkgCRMcbBsX/DztzOzfAa6/pygoYNvTXJKKqs5r+J
 ctT8NLhx/iP9kpZM1c9zTcurNAa6PrFhZKgq6EQn0HKoYeC7NhDD4mqDVabCmGSzPqwCML08QHReEj
 O6uiUl1mKKHZ/cUlRbPXABksK/m1aexFq+yVgkOjRl9NguZA+YuT/pIEl6+8PUTGYrmS3I7GI+zRyz
 4zaRraEkLe6GvMW4owAV8pDs5mRtDShzz/MFE2XQJZ1wH+128QR2wETyvdvJSC74Xu3Aa+fNDnlI4s
 eW0vH896/NV7KHTEdj2wRh7dJQSyk7myac+iowsiIt3e0ym+unhBi8mVzde2ft9tjTJMwg3v4lY9Re
 DKrZ0NfIGrZrQR8KfNxB4e5uiLlTgsVhdCGbD5hC8MHcgA8TIa6SQ1XThyi03x4FimYKNyYla16vCS
 VAvZ3H3qzwny4jlXz8e8o1/GvMq4A/FTuftdosLMWWdMEPXCx1QCxuErz+eA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014251_047576_F4A0F150 
X-CRM114-Status: GOOD (  22.57  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 123 ++++++++++++++++++++++++++++--
 1 file changed, 118 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 788e4c05eaf2..b55ab08d44c2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -19,6 +19,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/usb/typec.h>
+#include <linux/usb/typec_dp.h>
 #include <linux/usb/typec_mux.h>
 
 #include <drm/bridge/aux-bridge.h>
@@ -1527,6 +1528,10 @@ struct qmp_combo {
 
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
+
+	struct typec_mux_dev *mux;
+	unsigned long mux_mode;
+	unsigned int svid;
 };
 
 static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
@@ -3353,17 +3358,112 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
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
+	if (svid == USB_TYPEC_DP_SID) {
+		switch (state->mode) {
+		/* DP Only */
+		case TYPEC_DP_STATE_C:
+		case TYPEC_DP_STATE_E:
+			new_mode = QPHY_MODE_DP_ONLY;
+			break;
+
+		/* DP + USB */
+		case TYPEC_DP_STATE_D:
+		case TYPEC_DP_STATE_F:
+
+		/* Safe fallback...*/
+		default:
+			new_mode = QPHY_MODE_COMBO;
+			break;
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
@@ -3374,10 +3474,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
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
@@ -3609,7 +3722,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = qmp_combo_typec_switch_register(qmp);
+	ret = qmp_combo_typec_register(qmp);
 	if (ret)
 		goto err_node_put;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
