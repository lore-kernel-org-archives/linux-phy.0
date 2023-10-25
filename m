Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B043C25B6E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 22:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zm0JAAizA/WCaHi25HdleXKZ0a+hbsVjtE1jmeBUFL8=; b=5G5bQr6zHI/R3e
	cExv6w3BK0i4OOBToaPUiiV2iAQWq3egg+jTcw51kttdkDQTAiuqwH0tpoPfwkzfkPE/d3RPnuQR9
	5FMAZRbPidVbPvBuKpICI8eCBJZRgFjlG/Hub7t57aiNpcyiLBXNAbj2I5925yoMeP8b+cmt+1MqX
	U8WmigC3CNZt3Sa5dGapLeU//T6cAbnYFUxsx3f8WzOjw0hZ3VBWMOVwvvJXb7R9YBA/FKi83fxzo
	q8G7uzDGvjf7mnlm9wDwhIA3voLW8EZm5Fhm1pTBjipnFoASZVWwGkHthNyNdYEgL/miHn7lTfaXb
	nMomQY0p4h6CMhQTRV2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvmOe-00DFqR-0N;
	Wed, 25 Oct 2023 22:30:40 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvmOb-00DFoD-1W
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 22:30:38 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c518a1d83fso3767691fa.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 15:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698273033; x=1698877833; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbnyjLnhACt82EK09moKdpQ9JIR1p/S627vZZk1uJi8=;
        b=FYUAjz5/H0efpGOi836qp2qVuAV5/Dbsf2tIIm4Lk9AZe4vqrzBX6RjvxsYt2tHUlJ
         VLe0vtgK/DHJV7QyJaAOKy8Cj2SdGZvH09IDCkg0kBNZr8u4kd8/2yWT0jN8kbomHCQT
         bTOU6bdBWUSR7Pj1+3VEEhch2ZnlzCrk4GPPPHx96o0l4AhTomjQBoH4bLXu8ICcZkK5
         fm1pjhYuVx+gRzICy5r6QaSa5Xfpi9+Tmzk1i+2Ey4Z6uX7XBSymQRAzk7t6paKo5eW0
         4DoDTdPfjBzqoWvi06d9HvZWomhKdRHhdUS3OiPhR/Oo9CU9Fy4Y0ttHZVlMEJx4KBp+
         CatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698273033; x=1698877833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BbnyjLnhACt82EK09moKdpQ9JIR1p/S627vZZk1uJi8=;
        b=Qzyfra3awrCcBdjn4KHWY74VOam8IHief4Sai/wdkGlryV6sjIAx0eusJC37X+ttoV
         vxcxVtVnGfQVh1h/KouRBadKqi7QzFdIUjAO6TgiFIk6mRp1oJel/fa96U65w/Xb6g64
         FV3oWTTV3kv1LPMQjf6J66jmHVGAvIDvti14QJ+s4MDxNMaIKl7ZJKhSvlAPvAEBn9wZ
         BQJ/bCCa2VBZtTYe2OpUVmPI8hWETyK5s/+0yKv5RxzIsL2JdA9kDU9vttGq6BPVr8uC
         L1bc+IgtxtHNMRjvBFLLlbQLO42aBP9X+INZR5AgQB4hZue0IYuIIC1CCXExKUaRlvH8
         y5nA==
X-Gm-Message-State: AOJu0YxM5upfBCb6wx2FXjt819RbI6yF1Z3e6jXoBkP118Y9MLFybmlk
	OZeQxSWSpPxhdu+/ExmQSYNyxg==
X-Google-Smtp-Source: AGHT+IFWhzc+3EDDpKagjrjHAak0npWhtBP8vzIn+uXozbMGDzZu5lmHOwLkn2nxFFI8mllzQ6KfGw==
X-Received: by 2002:a2e:a690:0:b0:2bf:f670:36dc with SMTP id q16-20020a2ea690000000b002bff67036dcmr10000903lje.49.1698273033689;
        Wed, 25 Oct 2023 15:30:33 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a36-20020a05651c212400b002bcbae4c21fsm2612543ljq.50.2023.10.25.15.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 15:30:33 -0700 (PDT)
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
Subject: [PATCH v5 3/6] usb: typec: nb7vpq904m: switch to DRM_AUX_BRIDGE
Date: Thu, 26 Oct 2023 01:28:04 +0300
Message-ID: <20231025223027.943563-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231025223027.943563-1-dmitry.baryshkov@linaro.org>
References: <20231025223027.943563-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_153037_504946_99378743 
X-CRM114-Status: GOOD (  13.78  )
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

Switch to using the new DRM_AUX_BRIDGE helper to create the
transparent DRM bridge device instead of handcoding corresponding
functionality.

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/mux/Kconfig      |  2 +-
 drivers/usb/typec/mux/nb7vpq904m.c | 44 ++----------------------------
 2 files changed, 3 insertions(+), 43 deletions(-)

diff --git a/drivers/usb/typec/mux/Kconfig b/drivers/usb/typec/mux/Kconfig
index 65da61150ba7..07395161dd30 100644
--- a/drivers/usb/typec/mux/Kconfig
+++ b/drivers/usb/typec/mux/Kconfig
@@ -40,7 +40,7 @@ config TYPEC_MUX_NB7VPQ904M
 	tristate "On Semiconductor NB7VPQ904M Type-C redriver driver"
 	depends on I2C
 	depends on DRM || DRM=n
-	select DRM_PANEL_BRIDGE if DRM
+	select DRM_AUX_BRIDGE if DRM_BRIDGE
 	select REGMAP_I2C
 	help
 	  Say Y or M if your system has a On Semiconductor NB7VPQ904M Type-C
diff --git a/drivers/usb/typec/mux/nb7vpq904m.c b/drivers/usb/typec/mux/nb7vpq904m.c
index cda206cf0c38..b17826713753 100644
--- a/drivers/usb/typec/mux/nb7vpq904m.c
+++ b/drivers/usb/typec/mux/nb7vpq904m.c
@@ -11,7 +11,7 @@
 #include <linux/regmap.h>
 #include <linux/bitfield.h>
 #include <linux/of_graph.h>
-#include <drm/drm_bridge.h>
+#include <drm/bridge/aux-bridge.h>
 #include <linux/usb/typec_dp.h>
 #include <linux/usb/typec_mux.h>
 #include <linux/usb/typec_retimer.h>
@@ -70,8 +70,6 @@ struct nb7vpq904m {
 	bool swap_data_lanes;
 	struct typec_switch *typec_switch;
 
-	struct drm_bridge bridge;
-
 	struct mutex lock; /* protect non-concurrent retimer & switch */
 
 	enum typec_orientation orientation;
@@ -297,44 +295,6 @@ static int nb7vpq904m_retimer_set(struct typec_retimer *retimer, struct typec_re
 	return ret;
 }
 
-#if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_DRM_PANEL_BRIDGE)
-static int nb7vpq904m_bridge_attach(struct drm_bridge *bridge,
-				    enum drm_bridge_attach_flags flags)
-{
-	struct nb7vpq904m *nb7 = container_of(bridge, struct nb7vpq904m, bridge);
-	struct drm_bridge *next_bridge;
-
-	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
-		return -EINVAL;
-
-	next_bridge = devm_drm_of_get_bridge(&nb7->client->dev, nb7->client->dev.of_node, 0, 0);
-	if (IS_ERR(next_bridge)) {
-		dev_err(&nb7->client->dev, "failed to acquire drm_bridge: %pe\n", next_bridge);
-		return PTR_ERR(next_bridge);
-	}
-
-	return drm_bridge_attach(bridge->encoder, next_bridge, bridge,
-				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
-}
-
-static const struct drm_bridge_funcs nb7vpq904m_bridge_funcs = {
-	.attach	= nb7vpq904m_bridge_attach,
-};
-
-static int nb7vpq904m_register_bridge(struct nb7vpq904m *nb7)
-{
-	nb7->bridge.funcs = &nb7vpq904m_bridge_funcs;
-	nb7->bridge.of_node = nb7->client->dev.of_node;
-
-	return devm_drm_bridge_add(&nb7->client->dev, &nb7->bridge);
-}
-#else
-static int nb7vpq904m_register_bridge(struct nb7vpq904m *nb7)
-{
-	return 0;
-}
-#endif
-
 static const struct regmap_config nb7_regmap = {
 	.max_register = 0x1f,
 	.reg_bits = 8,
@@ -461,7 +421,7 @@ static int nb7vpq904m_probe(struct i2c_client *client)
 
 	gpiod_set_value(nb7->enable_gpio, 1);
 
-	ret = nb7vpq904m_register_bridge(nb7);
+	ret = drm_aux_bridge_register(dev);
 	if (ret)
 		goto err_disable_gpio;
 
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
