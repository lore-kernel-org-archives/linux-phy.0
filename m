Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D95C00A5A
	for <linux-phy@archiver.kernel.org>; Fri,  3 Nov 2023 23:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0+n2Zv+toKWkEb8N0wqU2zasKsOoB/Xtir8Ftga56U=; b=sCbRg+MV9Vf2JY
	ES+bq2NgIocSXOMFPFilkqr7Ko2rMWUknr3YuveiXg2CMDxZjQtSu6TAE53HNjSeWBc6TMVNHPuUi
	J3xWKRoCkUdkcyLHM/gPQWodxGkeD+it4KxQLhhMQPn4XCfi+7sNrlRtyYmI0nyCuKKYM+fuOvjui
	cUI3M1F927CMDWitOMTk2Fv7N91Jr96svi/YB/K56ydcEbL7nBYXcFsFBtTct3bjT24EwSGg8VL29
	OrLh0sp9bffuNhMHIPTM//eskMeH6aA8ijLBzvITFKFz+fbCJK6axsKU9LwTlfbROCQxIZez6Qcm2
	GXN0Xkviy7JWy29zLQwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DG-00CIOc-15;
	Fri, 03 Nov 2023 23:04:26 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DD-00CIJe-1S
	for linux-phy@lists.infradead.org;
	Fri, 03 Nov 2023 23:04:24 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c6ed1b9a1cso34519051fa.3
        for <linux-phy@lists.infradead.org>; Fri, 03 Nov 2023 16:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699052660; x=1699657460; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RMc9DJrhHFukjQ0QSTQddBGYIHrkhtn026KunSVyHrs=;
        b=JK6sX6AOaNrtZXusF4yql11FhQkOu9aVGpPHdCTKnI8/MWJh19xH0bvkBE4cc4FsrF
         tYiauyoewEKnq7AvJkUPW2QhqTBjTpfjRMXdKjwxQzlTKy2/6Qgo0qqgLfI7jSpP+hTy
         z02Fu5OxYBPDhKBDNWU+oGfIRAeAdR9g1LQMXTjAtlkkWFpw6NfQeOutI7nx1DEFyHcd
         AaStOUGbrKH3Pho/UqorhpGjyP+GL92AkS0qhsotELRzkuWLR+lSa5R8UkHIPc2xRbpH
         otmDUcvhW1yXjwSsZHE/m0zQY6DKHBLgNmeItyymbQvp8h0w/J6GCGS9I7g1MnuLDYIv
         w4Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699052660; x=1699657460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RMc9DJrhHFukjQ0QSTQddBGYIHrkhtn026KunSVyHrs=;
        b=r3nhTqKBnv9TNNTRcshRB9chwr8K/XZBTB9avm40K1uP+7QYahv9tsobjkjzwYgNED
         AAeY1fHpycRDxMRCM6UK0t1rk5oIKw6QI08RmFLKOzvcKeDdXowjxPEElyDc6yFXHp/k
         J8I8r4wCsZBEvpxkyMipkCewAMVLNe7VVj4tpKWTd3MBWxHNQ3pBus87LHymXAktjU9y
         2HPx4otVLuOKUSAhqbf421P9Pjc9awXfx9uOUybT50ahNMevAbFIWNRJF0+N/HzVnnTi
         WPDZdyJnEXMYazlq4lPEVoBEOQH1g6WaAILhsvoE8veduHhw/lntej4J4FcUZ8G8P738
         y32Q==
X-Gm-Message-State: AOJu0Ywe5jqOtXAFwG9WleIxa+TdkoJr069jda3Uen9YURqcfwlRQbCj
	aRfP3mSBxYGxhmTV/v/zrfgTSw==
X-Google-Smtp-Source: AGHT+IFZ7oB8PJ8HIVCwttUFOTPFsyuly9xwudtCOZ+IkVYj1zJZPMykPCji5igqCU5JxU9LfDeAiw==
X-Received: by 2002:a19:5206:0:b0:507:adc9:a739 with SMTP id m6-20020a195206000000b00507adc9a739mr18412890lfb.37.1699052660610;
        Fri, 03 Nov 2023 16:04:20 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id s16-20020ac24650000000b00504211d2a7bsm329919lfo.297.2023.11.03.16.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:04:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH v6 6/6] usb: typec: qcom-pmic-typec: switch to DRM_AUX_HPD_BRIDGE
Date: Sat,  4 Nov 2023 01:03:09 +0200
Message-ID: <20231103230414.1483428-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_160423_490181_09E3F5E7 
X-CRM114-Status: GOOD (  14.40  )
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

Use the freshly defined DRM_AUX_HPD_BRIDGE instead of open-coding the
same functionality for the DRM bridge chain termination.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/Kconfig                |  1 +
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c | 41 +++----------------
 2 files changed, 7 insertions(+), 35 deletions(-)

diff --git a/drivers/usb/typec/tcpm/Kconfig b/drivers/usb/typec/tcpm/Kconfig
index 0b2993fef564..64d5421c69e6 100644
--- a/drivers/usb/typec/tcpm/Kconfig
+++ b/drivers/usb/typec/tcpm/Kconfig
@@ -80,6 +80,7 @@ config TYPEC_QCOM_PMIC
 	tristate "Qualcomm PMIC USB Type-C Port Controller Manager driver"
 	depends on ARCH_QCOM || COMPILE_TEST
 	depends on DRM || DRM=n
+	select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE
 	help
 	  A Type-C port and Power Delivery driver which aggregates two
 	  discrete pieces of silicon in the PM8150b PMIC block: the
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
index 581199d37b49..1a2b4bddaa97 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
@@ -18,7 +18,7 @@
 #include <linux/usb/tcpm.h>
 #include <linux/usb/typec_mux.h>
 
-#include <drm/drm_bridge.h>
+#include <drm/bridge/aux-bridge.h>
 
 #include "qcom_pmic_typec_pdphy.h"
 #include "qcom_pmic_typec_port.h"
@@ -36,7 +36,6 @@ struct pmic_typec {
 	struct pmic_typec_port	*pmic_typec_port;
 	bool			vbus_enabled;
 	struct mutex		lock;		/* VBUS state serialization */
-	struct drm_bridge	bridge;
 };
 
 #define tcpc_to_tcpm(_tcpc_) container_of(_tcpc_, struct pmic_typec, tcpc)
@@ -150,35 +149,6 @@ static int qcom_pmic_typec_init(struct tcpc_dev *tcpc)
 	return 0;
 }
 
-#if IS_ENABLED(CONFIG_DRM)
-static int qcom_pmic_typec_attach(struct drm_bridge *bridge,
-				     enum drm_bridge_attach_flags flags)
-{
-	return flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR ? 0 : -EINVAL;
-}
-
-static const struct drm_bridge_funcs qcom_pmic_typec_bridge_funcs = {
-	.attach = qcom_pmic_typec_attach,
-};
-
-static int qcom_pmic_typec_init_drm(struct pmic_typec *tcpm)
-{
-	tcpm->bridge.funcs = &qcom_pmic_typec_bridge_funcs;
-#ifdef CONFIG_OF
-	tcpm->bridge.of_node = of_get_child_by_name(tcpm->dev->of_node, "connector");
-#endif
-	tcpm->bridge.ops = DRM_BRIDGE_OP_HPD;
-	tcpm->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
-
-	return devm_drm_bridge_add(tcpm->dev, &tcpm->bridge);
-}
-#else
-static int qcom_pmic_typec_init_drm(struct pmic_typec *tcpm)
-{
-	return 0;
-}
-#endif
-
 static int qcom_pmic_typec_probe(struct platform_device *pdev)
 {
 	struct pmic_typec *tcpm;
@@ -186,6 +156,7 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 	struct device_node *np = dev->of_node;
 	const struct pmic_typec_resources *res;
 	struct regmap *regmap;
+	struct device *bridge_dev;
 	u32 base[2];
 	int ret;
 
@@ -241,14 +212,14 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 	mutex_init(&tcpm->lock);
 	platform_set_drvdata(pdev, tcpm);
 
-	ret = qcom_pmic_typec_init_drm(tcpm);
-	if (ret)
-		return ret;
-
 	tcpm->tcpc.fwnode = device_get_named_child_node(tcpm->dev, "connector");
 	if (!tcpm->tcpc.fwnode)
 		return -EINVAL;
 
+	bridge_dev = drm_dp_hpd_bridge_register(tcpm->dev, to_of_node(tcpm->tcpc.fwnode));
+	if (IS_ERR(bridge_dev))
+		return PTR_ERR(bridge_dev);
+
 	tcpm->tcpm_port = tcpm_register_port(tcpm->dev, &tcpm->tcpc);
 	if (IS_ERR(tcpm->tcpm_port)) {
 		ret = PTR_ERR(tcpm->tcpm_port);
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
