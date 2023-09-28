Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFFDDE732C5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x55nIozV0vkbZw8lsWujFoEbB2BXcoDaa+bKUpIq1m8=; b=TrtKXBe+w4tnah
	TrczIZrUO63Hf5/BzdP1s3FR++MuazT1SKU08oZWAiRvtQ/fc1jOMKpZCS8HCPyfrBmupO6Y6ELY/
	yv7SPbMaIS6v5ACpGq2JN5lBU0EIhtJ5BJjpzfyDtTWilFsA0TVr17geVytx4cNBLAETLrKFDDUht
	uAVvxpjPCWBNVfw4bl1xJe6HuH1aS5pdK91KM06WBDBXXzixDbVFru1uO4fgycz1MicqLxO+N33Zd
	0J0Xtnazn9R/TP1f73tPtmSdCNLayzPBu0Qi2VCRf//6b4h8DjkxLcyKs4WImPnI9q0E12lOVvpZv
	TTVBDD+MdJBbAXfYN+Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0j-0038as-0d;
	Thu, 28 Sep 2023 11:16:49 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0c-0038TO-2O
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:45 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50307759b65so20730628e87.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899799; x=1696504599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HlnLygFYYtSxoKEaC5DFXDBhNuXumh16hVtzEXEvSec=;
        b=OR/5/9gDe1x3PsNlqqQeUkkDulTiVkamqwh7oyiBiTTAW7R0yTQIqXEZD6lNDpMUns
         qOb6iJ8rMe+OumCIM4SCWScvMB2pkOhCubzxeob9o0F3OIN/CkMq/t6D8elO3HjX2j5b
         82xUJgu8iUqKzIPjkE7Fsuc5nelu0WW3qsndCdCah8ZTeDY64yGrsfiReyl0wBUWRe2X
         B9O9/Ts0Ci+inOolOkeHr/9BzVA64CZv5jQwUpc+B6CJm2XcDepmDr/ySJ/OnqXOlNaB
         jo1HeF3yWYba3pRJMavsET8sxpuiCEFc5DLq+wcJhpP2yaWUDDhx3427Db4QTL5oDwwf
         dVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899799; x=1696504599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlnLygFYYtSxoKEaC5DFXDBhNuXumh16hVtzEXEvSec=;
        b=MdR0vMucrQ4oPzYbh8twgF4V/9RkR1ZhTWCbd3K9hj9OzlhgCJec9sktg2roIM+Ea6
         F3De4teN3UIzCLUeDJoKBc6QZ54wFhTqtptHa3m0dq4BlTSvtFVHZWjQRiuYzN4TMAl6
         /VAhD58xgr/pYqm3BFj1lrNRZTKcIpcdAgy4M888pvvQvTDgfEpsTOFeGq1U1AkVkyq3
         Hu6L35FVb+HquJCy6Zh+46i1y0NJyZwoIondZebf64zrIxNg6l2GwM92FPNykNDbm/s/
         Pw2Q9wA39diluDAH4rJwo4XLjIVdwjcAJ3kZ0kh3YdK0/BqFFOYZeYM2GnK8n0dzPZOG
         bSwg==
X-Gm-Message-State: AOJu0Yx9J4PRb/EtnNzY+Vv+6NFhnWgRGOp85b/GZtEE5ASj74/MJVni
	/kbHHNs7d4I1/pB8RXj8LdhljQ==
X-Google-Smtp-Source: AGHT+IHs4BEIb3K6wYvwHxL4p5CqDe1+YQl/dXfmh3TBE8urT/HY3ABoF5hl90DcpvKbMm8Y9pmZ2Q==
X-Received: by 2002:a19:790c:0:b0:500:8fcd:c3b5 with SMTP id u12-20020a19790c000000b005008fcdc3b5mr772169lfc.12.1695899799367;
        Thu, 28 Sep 2023 04:16:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:38 -0700 (PDT)
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
Subject: [PATCH v3 10/15] drm/msm/hdmi: correct indentation of HDMI bridge functions
Date: Thu, 28 Sep 2023 14:16:24 +0300
Message-Id: <20230928111630.1217419-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041642_795940_2CD86D85 
X-CRM114-Status: UNSURE (   9.24  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 62ce1455f974..fbcf4dd91cd9 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -291,12 +291,12 @@ static enum drm_mode_status msm_hdmi_bridge_mode_valid(struct drm_bridge *bridge
 }
 
 static const struct drm_bridge_funcs msm_hdmi_bridge_funcs = {
-		.pre_enable = msm_hdmi_bridge_pre_enable,
-		.post_disable = msm_hdmi_bridge_post_disable,
-		.mode_set = msm_hdmi_bridge_mode_set,
-		.mode_valid = msm_hdmi_bridge_mode_valid,
-		.get_edid = msm_hdmi_bridge_get_edid,
-		.detect = msm_hdmi_bridge_detect,
+	.pre_enable = msm_hdmi_bridge_pre_enable,
+	.post_disable = msm_hdmi_bridge_post_disable,
+	.mode_set = msm_hdmi_bridge_mode_set,
+	.mode_valid = msm_hdmi_bridge_mode_valid,
+	.get_edid = msm_hdmi_bridge_get_edid,
+	.detect = msm_hdmi_bridge_detect,
 };
 
 static void
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
