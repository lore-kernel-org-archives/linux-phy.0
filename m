Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 450D3E732C6
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1ZLetIh5bOjJtC0J/BEcRB0V86+iPTLH+xQoSlECZ4=; b=B6Ax/cNOpUGZnD
	5uQ/IGJUN8JB/YDq06Guniq3JzFZFJoZAQvy59M8n99ZEyMbxvuHWD9oG4ijWAef7Ntts5nPf24HG
	7XHFKiQfBxYMbuZEIgEKlzvCT40nLmiAMb2xouzIxS0dELQjUAnuzcbG3Fpj5cl4QRjmcKsMT5v66
	8CJKYNG+q37RIpy7XWMOBkdhvcOtio0wAfPAM+nSdlLBqMedaCX48ItxOWDCNThiVLN6+4MNgvB9B
	4JTXym/5KBREdWw5yks/BX2pg9ZLsmmho0p8AWMhAYN1litujiM7JGSkHC2+MwVkLGwLKvY8J6SMI
	+hbT4fdbN60G4qTWlgkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0i-0038aN-2A;
	Thu, 28 Sep 2023 11:16:48 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0b-0038Tt-2m
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:45 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-504809e4494so4785430e87.3
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899800; x=1696504600; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JRCcVx5yqkWjx+j8HRIisuUziAvNRbEhBQXvfMXuZd8=;
        b=w1aq2I6nNO+SAxxOgEPCjR60JFxcF0R2tVDlhW1fsZPldoQgxSJEy7acJUIymvBm4V
         b9UswBcUieBymED/lBHivOCPpdUAyDmCSlZHISbut816/LhsIYJUN/CExxW0io8NmZcB
         hnvT7e/UbcQ4a2aroVaU0fvvCbXlkMgjn7/Ctj1QxYgiFVlbwe6LIiaTw1xV6G+g5+w2
         VORuyi+ULcr4DCJ55xPcfRbpVEBqWYl0tFnKrlpuLTgcnhwwuMubWyf6QJHEgN5Ew35N
         G6b0geXR97pWmm4K5jkc+Ba8tKalDKtDkDiF/MHoHaF6bzj/JZdY75DCCJCx/YK2EUda
         5s5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899800; x=1696504600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JRCcVx5yqkWjx+j8HRIisuUziAvNRbEhBQXvfMXuZd8=;
        b=vzXCDM3pCw857O+D6Q63XylCXtHyRcou/lUZC0LsUmz25S7L0BvF8MHNcS6QUi1aly
         xzxXXhouw3c3ReejYfHQBwKIGkRXrNM4gFm4J309soQ5wUbJdjfJuupeew9PijYiNgtt
         ffLyFPtZHhqlMhnDkdRRjv7TibRtHp1y+f4qKP+Uo7x38IQWECgcF/NPYhgrUVn9S8WJ
         RMwOvnkG+E15hUjJv3bmaQFBpOl6YgsArvw3rgfjNgx4xUI47YUh/PJ9+6c+5DIIXb2X
         V2gkbiSqGOYEiA2TeNkAOTV+NTipmmq6pJ3bOdQkMAGGNsDeRZjml1uYzLJ4/tOccgpK
         Y2Fg==
X-Gm-Message-State: AOJu0YxmLlIvVrY/SXFRClTDUWJS0OZy8vc9uyUrnpPNqW1kBEDKzLs+
	lWdOTI9HyMrcD6dP5WpDGZmLSA==
X-Google-Smtp-Source: AGHT+IHLwo684MahSmAYShlLDvoSRmHtO8mYnv5mhthJNX/V/OPt/lEcKL7/YqjqaMYb1p94sDMhnA==
X-Received: by 2002:a19:791c:0:b0:4fe:8ba8:16a9 with SMTP id u28-20020a19791c000000b004fe8ba816a9mr737263lfc.55.1695899800332;
        Thu, 28 Sep 2023 04:16:40 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:39 -0700 (PDT)
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
Subject: [PATCH v3 11/15] drm/msm/hdmi: switch to atomic_pre_enable/post_disable
Date: Thu, 28 Sep 2023 14:16:25 +0300
Message-Id: <20230928111630.1217419-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041642_021458_C0CF7BE5 
X-CRM114-Status: GOOD (  10.30  )
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
