Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8A1DEB64DC
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x55nIozV0vkbZw8lsWujFoEbB2BXcoDaa+bKUpIq1m8=; b=pLgiOlSwk0ZZzu
	ztOk+NIfqJr2iQy96JgeSjcCdLkk6a/o14wFRkIE6fRMlXkAYfEqootkEHYCnbKlwR0CFXYEtE8vK
	VPDRnaOH13taR0t3z+SFxZdKCKSXlTzTnmuGkApBxDPUB0JIgDjxdGW8PvGm+iM/Qw5YPJnisPrFV
	kOJbR7oK6Uv41DkSf9AdrkZf2vh4JH3xpvSxFnkJZS5J8rqTD6u6V5hNf8C0PDUtWSy3Wm9Ao9Dm6
	ZCt9oLVoNd+BeRfB4wQGPl5yk+OWdvhgpwC28Hb+FRt1rPcBdGLb3C0uDzJL6YfbxuOmeNe+j5f2F
	AWiLmaiHxpqik7knvNgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8i-007w95-0h;
	Sun, 25 Jun 2023 11:42:44 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8c-007w1S-1r
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:41 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f86a7a5499so3005377e87.2
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693352; x=1690285352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HlnLygFYYtSxoKEaC5DFXDBhNuXumh16hVtzEXEvSec=;
        b=bJDzcJXCkAPD5zeUzpoqy0kG3q005OtGeLsMf6/8V95IZdLI0J9FwWFQzM7I0TviaG
         7R72ljXh4KrImRig/whnSLpd6D+vlRxOUdDwWuupvCQS7qyud0wY7+GK+uT+kqTl9Tqu
         spKdhblRSZ/3kfTR4niN2Mbd10wb19O3UehlWtub8FJ/kOPQglGSe7XF9bIKwtfryB6G
         ApTzotjKQMX3+GMHDaU1t8gp+wa2hLP4pmo8Lqu+fEOwu1kpacrne/Ttr6H/9T0X90dE
         u1Lujt97vZeMsX1ApXMYlC9jczbq0/FkcAzNk0PxtqsRa8rOqSFB3L+HD3ABtublF8Qd
         PTaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693352; x=1690285352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlnLygFYYtSxoKEaC5DFXDBhNuXumh16hVtzEXEvSec=;
        b=VDZ8PqcjA4RxwZRK1Uki4bFBy/Klyp6xX1cKXpvFD4/E4bxucJ/tdjRcsB34fYGVJI
         dzWvBWI3zdj4BuA+wDvva6ixFh4MP8oUU31/fGcLUIY/tWYN/g3jHhbVBV064Nnc5OoJ
         J2esqf+TvxNFzpGaqcVpVqYEVFvHDCkyk1KL10YLT9BLMC2CKjE9XoouZiXnLey0yBeL
         g8euxzr2KjB8O3G9bY7GxGsKU+3at1ta77vLmNupoLVI9RKnOK/4IkeLKV9kGA2nN+Ts
         Hoy6vVOSIskG+N6QCGu7IqFHf8z+XOQy5EmtUg9x/jGyTZGefRt9CfZzo/pN2hlGslC2
         /zLA==
X-Gm-Message-State: AC+VfDySHR8NmXiXErBcEoSczvm8MZEFLyEpTwKcmMZkZWAVeWoAAkSs
	Sdcg46kMpZrN0IkUY1X6E9DZXA==
X-Google-Smtp-Source: ACHHUZ7uaGIlPGOJp+0nRUkLMEV41kt31Ga6/kU/1+uK8JUDcsenYErcV7bYVaZlQb/IfK6J5BBR0A==
X-Received: by 2002:a19:9156:0:b0:4f8:58af:ebd7 with SMTP id y22-20020a199156000000b004f858afebd7mr14228099lfj.39.1687693352116;
        Sun, 25 Jun 2023 04:42:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:31 -0700 (PDT)
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
Subject: [PATCH v2 10/15] drm/msm/hdmi: correct indentation of HDMI bridge functions
Date: Sun, 25 Jun 2023 14:42:17 +0300
Message-Id: <20230625114222.96689-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044238_666139_32082646 
X-CRM114-Status: UNSURE (   8.70  )
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
