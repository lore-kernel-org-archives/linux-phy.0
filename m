Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A69CDC001DD
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1ZLetIh5bOjJtC0J/BEcRB0V86+iPTLH+xQoSlECZ4=; b=qh5CC4JoONxn/R
	cglRe9/85cdP++/p9FD+OQl0vZwfJhz/t8VfMyDi6LbQnJqzurBNxWSjRSAUJ/vSuaXZ47W9LUPm4
	t2nxrxjvADZ0ea85LURoD2KW75yXgbUI5uvJKAgSBJ6CMtgf/VN2FBamH/0q9ScWf75DWHKeLS1AG
	dVo63dZq0Zx/3aXam4zgrsthPVeT6LiuGPhQxIDtKjlUZ0iUTcCQRN5CTRRwJh/gAflCfUGxOWIJ1
	L8+0mJPSBKzF9i/bgIWJ51yyO3txIuJxIkoD+EE4UpqyH9SL+TanqND+3a5a3Tf01ao4F7vbOny1J
	au20aLuj6nRI51xROCIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8j-007wAC-0x;
	Sun, 25 Jun 2023 11:42:45 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8c-007w1r-2K
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:42 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f871c93a5fso2827925e87.2
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693353; x=1690285353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JRCcVx5yqkWjx+j8HRIisuUziAvNRbEhBQXvfMXuZd8=;
        b=l03zKow5647+l5uNvEOvclkTiqWG965H4wqbDIqh2y8vH8NEUWgZwEv7r6IlcabhTF
         BoTk1ggbF/1vLmC1qFPlhuDc1FAoVGdAYTgW9JJ6dAdCQiuFRo5X3KXBQ/nlv20OvGSx
         6jEFE9ppAu0hGi4si53AZrSdZOej/zMrh0zhyjBdUeFJc4vyXFCjay6o286oo0kINLy/
         FIxMtHJmVgbdAV/yuVtaMORxNjOcEwpRDVal+J+boSCp+L8XnMmE2LEAR+nLN9p1horC
         RrNCUfyjM2kR7v5rYAXqeAl0ofxT3gluVN7t0zMbuj5SP16YQqRBvOt/WPkwEWwT9KYT
         J/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693353; x=1690285353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JRCcVx5yqkWjx+j8HRIisuUziAvNRbEhBQXvfMXuZd8=;
        b=lww+t+/vSv5D229uIRbHltFeJIJ30kUw+x9OatwT8hBdTu7a3d1rzEaxvqip7jknxj
         K50HTkRgmCjCahBz8jBBwKco2OdW4ddkyjTYIIfBV3bGooMTV2iwWqd46ocSqYgtzDbt
         KuhzZ3ZyNsFkIioiigrYjg+/ozP2tvhZS9+DxFM94/ON9rfV0TdvGlr7nQdyHfCg/6Tf
         P3aZPUMhKiNvba3x212OxbrOest9accd4+I7xbiJyaLjaSywwXTbsjoUXkSU3VWtMRn7
         qqRCHhw5C1jPTAmYau3vlaYIYWNPThzLM0qNY4KrnC2Y60c8zuFNI0+mFTRq5r2rBIoK
         Nw6w==
X-Gm-Message-State: AC+VfDww+rN8WhrQ9FSXlVWdOe5JJ4ouRywgY58cnmzf+kHCkRor0I2Q
	hiXBDpxHijFP3PygymVbY5QtNw==
X-Google-Smtp-Source: ACHHUZ7docs3bpHHggTQnwRK9vZD9G6BzpVgE1c++x/CDmK3D6Xsv/RdHy9EgpRd+K39O/pVejaPOw==
X-Received: by 2002:ac2:498f:0:b0:4f8:6cf1:8163 with SMTP id f15-20020ac2498f000000b004f86cf18163mr12237375lfl.18.1687693353048;
        Sun, 25 Jun 2023 04:42:33 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 11/15] drm/msm/hdmi: switch to atomic_pre_enable/post_disable
Date: Sun, 25 Jun 2023 14:42:18 +0300
Message-Id: <20230625114222.96689-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044238_771625_74BAEB1A 
X-CRM114-Status: UNSURE (   9.66  )
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

In preparation of reworking the HDMI mode setting, switch pre_enable and
post_disable callbacks to their atomic variants.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index fbcf4dd91cd9..f9293f7d8f34 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -128,7 +128,8 @@ static void msm_hdmi_config_avi_infoframe(struct hdmi *hdmi)
 	hdmi_write(hdmi, REG_HDMI_INFOFRAME_CTRL1, val);
 }
 
-static void msm_hdmi_bridge_pre_enable(struct drm_bridge *bridge)
+static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
+					      struct drm_bridge_state *old_bridge_state)
 {
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
@@ -154,7 +155,8 @@ static void msm_hdmi_bridge_pre_enable(struct drm_bridge *bridge)
 		msm_hdmi_hdcp_on(hdmi->hdcp_ctrl);
 }
 
-static void msm_hdmi_bridge_post_disable(struct drm_bridge *bridge)
+static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
+						struct drm_bridge_state *old_bridge_state)
 {
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
@@ -291,8 +293,13 @@ static enum drm_mode_status msm_hdmi_bridge_mode_valid(struct drm_bridge *bridge
 }
 
 static const struct drm_bridge_funcs msm_hdmi_bridge_funcs = {
-	.pre_enable = msm_hdmi_bridge_pre_enable,
-	.post_disable = msm_hdmi_bridge_post_disable,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+
+	.atomic_pre_enable = msm_hdmi_bridge_atomic_pre_enable,
+	.atomic_post_disable = msm_hdmi_bridge_atomic_post_disable,
+
 	.mode_set = msm_hdmi_bridge_mode_set,
 	.mode_valid = msm_hdmi_bridge_mode_valid,
 	.get_edid = msm_hdmi_bridge_get_edid,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
