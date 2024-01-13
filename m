Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB76AC47DA9
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TiBJnFHfKJCGJiETmXzzeowYJ/D+PfzpJ5kDrIOaBug=; b=q8UfEoVzyXePQn
	CLhhwX0h/xjW72T3f3spU2zh0WUoZlAh3Ic7AfOe67ZrSvxeWtArB+sN2w+EHFrfdpOxDFJr3OgKr
	5myxGp2I07QRVCNiXvszh299yU8W5ajhqbGhOfMmSs/cFJUTwNM2nMVM2Hh8fMvsE5r3SIBYe9nYX
	7HJwmwl5Amlf/JS5JGvAnEqMZUh/b72IPTypnb1TwGQei0I4mHiX+NWIoI6TbF0a9IzQyNMfB+93h
	xP/k86yk1h/Wo7fEe6ht35RdSU70wOGsQNvYce6ZAb5sqGoDSLnaFZ085srMYHx54ZOVbKoUcrH3h
	WyRRIz+1vzMwCZnXl2Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnI-004Zj8-1O;
	Sat, 13 Jan 2024 05:42:56 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnE-004Zen-2v
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:54 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2cd7e429429so40791941fa.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124570; x=1705729370; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z5irpYM5MTpJq3VqIMDtY9CGRoQJVYlNPi44Y66fgdM=;
        b=BfB4YKscjdleHG/WjEObMm0oUzF30/bnvRJD+PL3xgqILB5eeiABAd180s+lC7kC9m
         a9VaLld7KZXAhnBp4Je6j5oQoag3uoCfCAe6OU0S1pI4CisWBwYrG8nwyoww6rri2RP2
         Hmjda2rS0iEx32gnr78V6+agaZqehwZxiyit8H1BeIqzmFOKN+vAL1GI5mmBO0fZVChS
         7T5kyoyCc7yuO86+FmywHdCAWAC4qePzszYBDtOTPpUlHQ2/CbnQmL2OaLmAaLMbJity
         aLqN4cmRTrpPhQMA5pYH9/RaJtbcMoiM7p5SqwW/Tb3PJ3eS0RcOmoLVtJ/QLKfjnPob
         N26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124570; x=1705729370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z5irpYM5MTpJq3VqIMDtY9CGRoQJVYlNPi44Y66fgdM=;
        b=fqmw2HsQoW9OTdn7xryZGz8eTD9hIdJu+FP1a6pgtItCCWtYMdFGsqZg3MDqZle+FS
         tJeSmKuE61neMvl2H4PQTdUAOLpz7OSBpHtRn5BKrQtHIGupX4DKqKaAYPTUkqBzC0WV
         kl4mLvlLDDDXnzV5vZrPxzAW6aiYPgM045dd9tOrX3wmH9TFXDu8rydb1mge5zl7X1PI
         Xl5KW7vpwPgSdKlO5gN7dqsM0t1lIjDyxexftINuOTDzBikaiQjjVzXAY20S2EsOkJld
         xAsiR3pZvVb0LpE4sjSVH2nBMSEBnca9TG96frEoLcbpBYz25yFrcy65sfYKTe6dEX4E
         B7PA==
X-Gm-Message-State: AOJu0Yxo9qL2U2E0rWXZV4FSq161GX8oq5eeAwPuLKsMV0XbSloWTYtj
	JZnshmOwvByjEp996qlnn1IV7ixOaVu/gA==
X-Google-Smtp-Source: AGHT+IHgLTCBUBb+cumPz42qHGnYZI45jV8ou7S+J/ZocJ/9+xC5j1fd9zLANoBkfFDBc7IR9hb5Vg==
X-Received: by 2002:a2e:98d4:0:b0:2cc:fe03:4360 with SMTP id s20-20020a2e98d4000000b002ccfe034360mr1325938ljj.24.1705124570525;
        Fri, 12 Jan 2024 21:42:50 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:50 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:47 +0200
Subject: [PATCH 10/13] phy: qcom: qmp-usbc: add support for the Type-C
 handling
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-10-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5166;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=vrGMpxrK0VSYVpeyxHuCQp6gFuTsIdr2EtQDlSiiH6Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLR1IiCvPDQIJxTk7qswUkejvN9Hk5ieoTCU
 gqFwEGaw1OJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0QAKCRCLPIo+Aiko
 1QJuCACb3srGHjAYjlfjgCSx4EPBnhy083HxD8b9m48H5Z32tNkKO13DRO4gTl/MF3ksLubXKua
 omVVcyFbxskE0BPiR1Y+WG73f600A+K9/WDgGEK1V1FnadjjDzM+EHoEEucYm5GdeLGVZbAEodc
 wU3GV2vD/wAsk8iukiphskvHhdAbwe1uwrwGVwvnLXpmiuyzvV4t2lS978vN8V0Up/1aHdQ1qWE
 lVu85OoovoHHrQMEFnW4TsBKCMskSOEhwklhCdYUuDfdU+QYp9lKlECPfanmWSjXJvwcQPSCOR+
 Mnb6fqHrZWMxBs/MeJ6Fm2ks5c2C7/a7nuTks+YR0pPAKhHq
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214252_951018_E94956F9 
X-CRM114-Status: GOOD (  19.78  )
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

The USB-C PHYs on the msm8998, QCM2290 and SM6115 platforms use special
register to control which lanes of the Type-C port are used for the
SuperSpeed USB connection. Mimic the qmp-combo driver and handle this
register.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 97 +++++++++++++++++++++++++++++++-
 1 file changed, 94 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 21faed7f648a..9cddba30b52e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -18,6 +18,8 @@
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
+#include <linux/usb/typec.h>
+#include <linux/usb/typec_mux.h>
 
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
@@ -381,11 +383,17 @@ struct qmp_usbc {
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
+	struct mutex phy_mutex;
+
 	enum phy_mode mode;
+	unsigned int usb_init_count;
 
 	struct phy *phy;
 
 	struct clk_fixed_rate pipe_clk_fixed;
+
+	struct typec_switch_dev *sw;
+	enum typec_orientation orientation;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -516,6 +524,7 @@ static int qmp_usbc_init(struct phy *phy)
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
+	u32 val = 0;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -542,6 +551,14 @@ static int qmp_usbc_init(struct phy *phy)
 
 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
 
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
+	/* Use software based port select and switch on typec orientation */
+	val = SW_PORTSELECT_MUX;
+	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+		val |= SW_PORTSELECT_VAL;
+	writel(val, qmp->pcs_misc);
+
 	return 0;
 
 err_assert_reset:
@@ -646,23 +663,34 @@ static int qmp_usbc_power_off(struct phy *phy)
 
 static int qmp_usbc_enable(struct phy *phy)
 {
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	mutex_lock(&qmp->phy_mutex);
+
 	ret = qmp_usbc_init(phy);
 	if (ret)
-		return ret;
+		goto out_unlock;
 
 	ret = qmp_usbc_power_on(phy);
-	if (ret)
+	if (ret) {
 		qmp_usbc_exit(phy);
+		goto out_unlock;
+	}
+
+	qmp->usb_init_count++;
+out_unlock:
+	mutex_unlock(&qmp->phy_mutex);
 
 	return ret;
 }
 
 static int qmp_usbc_disable(struct phy *phy)
 {
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	qmp->usb_init_count--;
 	ret = qmp_usbc_power_off(phy);
 	if (ret)
 		return ret;
@@ -900,6 +928,61 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
+#if IS_ENABLED(CONFIG_TYPEC)
+static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
+				      enum typec_orientation orientation)
+{
+	struct qmp_usbc *qmp = typec_switch_get_drvdata(sw);
+
+	if (orientation == qmp->orientation || orientation == TYPEC_ORIENTATION_NONE)
+		return 0;
+
+	mutex_lock(&qmp->phy_mutex);
+	qmp->orientation = orientation;
+
+	if (qmp->usb_init_count) {
+		qmp_usbc_power_off(qmp->phy);
+		qmp_usbc_exit(qmp->phy);
+
+		qmp_usbc_init(qmp->phy);
+		qmp_usbc_power_on(qmp->phy);
+	}
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static void qmp_usbc_typec_unregister(void *data)
+{
+	struct qmp_usbc *qmp = data;
+
+	typec_switch_unregister(qmp->sw);
+}
+
+static int qmp_usbc_typec_switch_register(struct qmp_usbc *qmp)
+{
+	struct typec_switch_desc sw_desc = {};
+	struct device *dev = qmp->dev;
+
+	sw_desc.drvdata = qmp;
+	sw_desc.fwnode = dev->fwnode;
+	sw_desc.set = qmp_usbc_typec_switch_set;
+	qmp->sw = typec_switch_register(dev, &sw_desc);
+	if (IS_ERR(qmp->sw)) {
+		dev_err(dev, "Unable to register typec switch: %pe\n", qmp->sw);
+		return PTR_ERR(qmp->sw);
+	}
+
+	return devm_add_action_or_reset(dev, qmp_usbc_typec_unregister, qmp);
+}
+#else
+static int qmp_usbc_typec_switch_register(struct qmp_usbc *qmp)
+{
+	return 0;
+}
+#endif
+
 static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
@@ -1027,16 +1110,24 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	qmp->dev = dev;
 
+	qmp->orientation = TYPEC_ORIENTATION_NORMAL;
+
 	qmp->cfg = of_device_get_match_data(dev);
 	if (!qmp->cfg)
 		return -EINVAL;
 
+	mutex_init(&qmp->phy_mutex);
+
 	ret = qmp_usbc_vreg_init(qmp);
 	if (ret)
 		return ret;
 
+	ret = qmp_usbc_typec_switch_register(qmp);
+	if (ret)
+		return ret;
+
 	/* Check for legacy binding with child node. */
-	np = of_get_next_available_child(dev->of_node, NULL);
+	np = of_get_child_by_name(dev->of_node, "phy");
 	if (np) {
 		ret = qmp_usbc_parse_dt_legacy(qmp, np);
 	} else {

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
