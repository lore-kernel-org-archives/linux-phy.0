Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ED52C0729B
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 07:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTCTdP4L+9LGBWDdHe9Ms55SZ7bPN9AghMc5XT7A1Xk=; b=Z9iAU7esClqmJ1
	qRN15X2Fw+7bfQdD3pT2O+OH4LH/NpXWJI2KbtF0F6RowoovjZuIuN2qsD/z/RgFjOC3q0xTJvu37
	50X5wPLxSAYyL39yURpgwRO4dDO1gjlWhuZV6plIsg4y4fxFCJGh8L7M5x/DZgnB+sVZ4Ej1/S5g/
	uc/Gpe/Fb48kRfQoRm4lQE8q0FiCUNaIT+W3o4qsdMOBtMJZytA4GMH5ceoBcSOr8wsRq19tf3WYf
	sGo6x4IrBNBw7YpePL0PqoLRP/6+qeUxAEaY/kwZMOio35v4YpRAX/BlORfP/PihXN9b34ZJTE5+d
	L0MjBRuo8n/gOoy0kKiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNBs-00EIXs-2G;
	Mon, 31 Jul 2023 07:19:40 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNBp-00EIT5-1O
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 07:19:38 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b703a0453fso61025071fa.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 00:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690787974; x=1691392774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aArr+Z0OOAMh7dLqu6+G5gaqEsgGaXff5br4Ze76jN4=;
        b=QVfPUkFINU++0UtYQJu+LcaKoI23bnJHqonbs2+f9RPgXDiPa2zZCxyyDWMiOK8XgS
         eV3HuY1x2nwBsf/f4MyS7RR/aX5eQivolz3unvkSfM6vN6eQhkaDpIo3nJoGzU3rq9BY
         IAsS2den+Mma8f35wxGnjHUsh+XyUGhKEux0QNLCU8WuHyyto4x9dcxQ6HqqjSLMVjJ+
         w+SPpUpfYROjzjMpsfoyOml3VkL2CN0SnejVxK1uZrMNQWpTi3Eg7IHyPF70Xcqm7qjo
         6sokl3IVWRLwc7dPuowSPknTT6N6q0wE/ju/beFOVOUvxdGZuhwKm9yUVvEoe7juBWY8
         gKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690787974; x=1691392774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aArr+Z0OOAMh7dLqu6+G5gaqEsgGaXff5br4Ze76jN4=;
        b=JlV49UsDplTWqXrJZgNF9c+mGxyyxSaEPYZcdMbLUXD6UQb9n/FQ2+Nx7+UtuYmOjE
         GKir8x7cNUNm4Q4OX+Bk+oTJAkvrZAmx+JCPvin4NVI7w7BdPYL9X/ob6YlQHY3Cu3gU
         rttr9WPP8KixXIKTyI7aF7VR39CAd1bD+zP1L1Kou2Rb6141W+Y7TV01AtjPOJW/y5Io
         3FAO8sqCqAeK06OaMeEgAVP/dBAG91YNVagz03Or7am/ZnmF1mfRN91PV8Zx+4i7NQcL
         jdfKmutfCcG8yStTU7lZarsk9nUymI65sTjW0k7lb2Y4X5jht4E7omJigPSV3t6nmzlZ
         dqbA==
X-Gm-Message-State: ABy/qLbOIIE3raXlvRruvsigQjV/Y1CDZSNyyZfHIe9HCWZTPgMMACuL
	xQbmFzAK/yMXeUq4S1QKUvJa6A==
X-Google-Smtp-Source: APBJJlHIL09yD+cpaKj4AkcHas75MqVJTUzMeOhlJXyOtc3pfudP9xHd2NG0vOKt1b+I26sAEFyLGg==
X-Received: by 2002:a2e:9d96:0:b0:2b9:e6a0:5c3a with SMTP id c22-20020a2e9d96000000b002b9e6a05c3amr1494502ljj.48.1690787974573;
        Mon, 31 Jul 2023 00:19:34 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c4-20020a2ea1c4000000b002b71c128ea0sm2413267ljm.117.2023.07.31.00.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 00:19:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH v2 3/3] usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE
Date: Mon, 31 Jul 2023 10:19:30 +0300
Message-Id: <20230731071930.3928150-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731071930.3928150-1-dmitry.baryshkov@linaro.org>
References: <20230731071930.3928150-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_001937_481339_38B0224D 
X-CRM114-Status: GOOD (  14.67  )
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

Switch to using the new DRM_SIMPLE_BRIDGE helper to create the
transparent DRM bridge device instead of handcoding corresponding
functionality.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/mux/Kconfig      |  2 +-
 drivers/usb/typec/mux/nb7vpq904m.c | 44 ++----------------------------
 2 files changed, 3 insertions(+), 43 deletions(-)

diff --git a/drivers/usb/typec/mux/Kconfig b/drivers/usb/typec/mux/Kconfig
index 784b9d8107e9..350a7ffce67e 100644
--- a/drivers/usb/typec/mux/Kconfig
+++ b/drivers/usb/typec/mux/Kconfig
@@ -39,7 +39,7 @@ config TYPEC_MUX_NB7VPQ904M
 	tristate "On Semiconductor NB7VPQ904M Type-C redriver driver"
 	depends on I2C
 	depends on DRM || DRM=n
-	select DRM_PANEL_BRIDGE if DRM
+	select DRM_SIMPLE_BRIDGE if DRM
 	select REGMAP_I2C
 	help
 	  Say Y or M if your system has a On Semiconductor NB7VPQ904M Type-C
diff --git a/drivers/usb/typec/mux/nb7vpq904m.c b/drivers/usb/typec/mux/nb7vpq904m.c
index 9360b65e8b06..c89a956412ea 100644
--- a/drivers/usb/typec/mux/nb7vpq904m.c
+++ b/drivers/usb/typec/mux/nb7vpq904m.c
@@ -11,7 +11,7 @@
 #include <linux/regmap.h>
 #include <linux/bitfield.h>
 #include <linux/of_graph.h>
-#include <drm/drm_bridge.h>
+#include <drm/display/drm_simple_bridge.h>
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
+	ret = drm_simple_bridge_register(dev);
 	if (ret)
 		return ret;
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
