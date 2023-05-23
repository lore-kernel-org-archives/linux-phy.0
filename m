Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83F6EC7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1ZLetIh5bOjJtC0J/BEcRB0V86+iPTLH+xQoSlECZ4=; b=Nawf5VJXLgQrbs
	HPPKItpyetcJR3jYAm61ZTHUG4F6iFbkWBY3VdVOnynNSyJ98lyCFOdt7iQfjZ2AjiBPJK1RCo9O3
	1C1LXW7LBijCl5c3q8OYoDyZCjY2tQ3xYCpx9bvFMyn2oaGRj8sLdDVgEOyKZRz0akTo7gOd4XXoT
	5xk4OxfcHMKxpB2PnKRYgywvsBp6tAXgT5bXsUlZAf9e8NR28T7RWxOvst9oEjjrcrIV6srU5plq9
	4PZsxgC7RAisU+2cfMhI8CpPOzB/SwHZlMLBZQCNIlLRUkAqaIuQlH83U8zWMbdl5eHH/koL6CE60
	69r3JOyWn9/ZzAZj6ySA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHx-00AOm6-0b;
	Tue, 23 May 2023 13:42:57 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHw-00AOla-01
	for linux-phy@bombadil.infradead.org;
	Tue, 23 May 2023 13:42:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JRCcVx5yqkWjx+j8HRIisuUziAvNRbEhBQXvfMXuZd8=; b=A4e2vcHGmeuwyjj+kNDatSUmxK
	RyWTPYoywRMwI8WKT6QdTk1FQOXas8TjMNs6vB/fQwruuxAT9osA3Mg3un3P3J7YFgy9FS7FWm+Zs
	1h/52+YDwmM6ol2xbvtze+QVCKxwgDHs/KiFyXgSShq3wkARZ1u1GRnOIv5MLDNVT8qz3ASF6RUNg
	Ch2VOKIAxLQhzZCs2A0Zx5hBzb/tR4TyjCidcSS/a046YVkA5mcPy3RioRxMM3/qykmgr47frWDYL
	tQNvWcIk8bpvF4vATSDbaKM5jcCMU5ABymswMOdY1Gj50tGA1GEEAS7ZBExza5kUKgPTG4OxKBtsi
	BTWIEelQ==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvx-003Vy2-02
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:11 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f37b860173so8028151e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844106; x=1687436106;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JRCcVx5yqkWjx+j8HRIisuUziAvNRbEhBQXvfMXuZd8=;
        b=iJC8cOHW0X4kvVER7XhLHnQWxkC+jbzri8i0MSx1FWzm1j3TgBoKJEus10S6ncpEAK
         DZHgtbe5CSmiS1kT64zbTG4hR6qrLUvhfvpstMG0lUjREEOQbg6NnSHZLHPM+cx/8VZa
         0k5wf8cRNQEmr3gnjDbgqS9mV0/+AU8YkvOYxkQShYze+C455NHKiS3vFFgyBRYjzUp2
         ETvYqSNmMRncJhyLTNm3pI2nWj3zzRDQaFijvBKyBZQtynIE90HbTb4jtKT9xCF54p3G
         ReLH6SmJ7a/4A2aOI4UaYI4RKs4PLNkiEM0lc3Q8NK/pVbL4EegKUnYepXO+PObstRho
         BVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844106; x=1687436106;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JRCcVx5yqkWjx+j8HRIisuUziAvNRbEhBQXvfMXuZd8=;
        b=HPUBLCkzF9DAILQqbhH5dpScTvVcvvRx2Waa3jBN2hVpq40ZcMtML2ENIGIKnnoiJc
         Mb1L4NHwOUbHRI+Qd9Xsx2qNJ2pMCLocp+G0s+yfx+GacRf+h012UULQLahdLgGKnpVe
         h5JDVavQYJUfyWaTMoDdbkLItBhwlhDHpqrYXSrDNEcXnyZ3s42cPRSphxsssCT3oGF3
         Z8nHgQQmPGOGA/vXW9ObrBZIPfG5whSRM/t0/EGVXnY0LIr5YkP98M5d2TG4IShY8QxO
         ayBOdCXk1hl7rPKKr0DQHvQ0iNbG92gKa/mcI9obR3Qv9sSzwbcnWFy4Q8intt7lRK74
         ShSg==
X-Gm-Message-State: AC+VfDwO37gyCsdey6aYYr2WnTkv9ttVU82XZKqSybYfbZ3DTmKJQH3b
	2O+M25KweEOtxajih7r/WvQjBA==
X-Google-Smtp-Source: ACHHUZ5vlFenZbIB+tk6w5Wm9JFARuGQkoC34ibzwpD/wshwINCjNKESlnZMABksaf1XUycVFfSF6w==
X-Received: by 2002:ac2:5a0a:0:b0:4ec:a18e:f985 with SMTP id q10-20020ac25a0a000000b004eca18ef985mr3960269lfn.13.1684844106606;
        Tue, 23 May 2023 05:15:06 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:06 -0700 (PDT)
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
Subject: [PATCH 11/15] drm/msm/hdmi: switch to atomic_pre_enable/post_disable
Date: Tue, 23 May 2023 15:14:50 +0300
Message-Id: <20230523121454.3460634-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_131609_382387_0691FDE9 
X-CRM114-Status: GOOD (  10.03  )
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
