Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A42BC7EE29
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4g9yUlj3C9CZlxcf+ttR4X1jbBauNio1XAmvfws7/jE=; b=onqyvT3NifNlM7
	cM2cLyR5QNvP/rI7vskBtLyZ5KlMw5aOLCXaz/L5qOQYB9YFbQEEa4r+BIlJkyKmGTiIIOkdVugUp
	iL/S20J0Lo70cqCZPv01gTaRuU7L1ksEVCrH1yn9ouo/5fw7dXsOVEbGJWQlWfzuOlwLrvZkauvvQ
	HxvDufwY7vrLMScCOvD4iM9qkc5Elo8+n0UTciLC3Wozg8Px46wIyz1wOolpryrw235L6eckuq+jN
	CD1j12AiBlloQ83IVosYVeNwZQHtmPfbKp7Gt2qR38VO7AfOK8Zw9LHDwYzDbJWlb0+CJKpK1I3KH
	Rh2Zzu7Jwul/ZC6We1QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHr-00AOk3-2x;
	Tue, 23 May 2023 13:42:51 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHq-00AOjN-1i
	for linux-phy@bombadil.infradead.org;
	Tue, 23 May 2023 13:42:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8sn8z574aHDaIUAuI0kB4BeZ8f9+C4yT5HRFlvneark=; b=SE5wcTCUAvf9ETSXJT21tfBCef
	G2GIXBffnT6TGRLPKBD9ahTEgIXbTndTBPyOQ2vDZXSLyga9UL8K2ct1IGG+Q1scffQwbpXsbrDNK
	t98vaz/goYIXjxfeyvs3/yKk23N1mqBqTtY6e0OB+14VE9jzga8nt3lZTSh5EqVoWWFVoIscCxq07
	ZSG0NbaZGpxNiFm63IP/LQjKQ3Rp9bmxzvCurn+nOqqB3PS/nr/4R0ln+ZO2ojZC2yv0e4tbjlFzc
	oH+P7eaq7O9g/hbJwn6Nj6eJsYCeh0YwTP4/O8RaVawZ4WHIsURCi5qQnYjAu97PDQpNsvC/84/OA
	bPtTZsfQ==;
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvw-003VxO-1A
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:19 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4ec8eca56cfso8037340e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844104; x=1687436104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8sn8z574aHDaIUAuI0kB4BeZ8f9+C4yT5HRFlvneark=;
        b=NABmMvAZ5FpgPwHmApWhTM1W/+iMUkp+1qkO+tUHvEzrRYB0ZAEGnjRApYTtkLuBVE
         OxD0HQTsHG9G5jAxEL29oWUJwbPeB8rokvXtuc8d/AemolRtQA2MoR9KjzUC2eY4Bp+7
         borkfxo88r013TLydToJoVCZnQjj2LQxaN9VahzMYF98QerMOpm6In4PKaQB9AiPcDpg
         mrxpsk8Hz0f7lLb+ZLroeYSY9mA3yZT8rCHIAudb5lruDAuwVgGIe6hC6bsQHVIP6+RA
         ADMvhRxtaJf8iGxaUU3PDO61rLJP9xGDaC4JF1ferMxze25QZ3XlVi08AtWVruT298Ib
         Qa/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844104; x=1687436104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8sn8z574aHDaIUAuI0kB4BeZ8f9+C4yT5HRFlvneark=;
        b=l272RbqrOkFWb69X8MCK4vO9a21zECe5hL/T6JtSUGvIKibz5K+bNOTkbxDMbR/t3B
         zdOAzVdMoURogYv4mdh5irGkpoLU65zZL2nxAePPgP8MxfmoqwJsdNXnUP1bC4uoQp2H
         Lufx3tdHsKlAW9L5QRHGBbl8czLO5HAU2TFI8CsASdi54pdOHWGjIDO1zgyeTQrx0c/g
         qw+HSDtalL5sF8v3JsuJM/seZ6U35Jhhcg+neVmlrHIRaHZtX2PBVHCJ5uzl/52rt+TA
         hW+tcbShpCR/8Hf9uchGOVdFRcJXHDPtPY5X/DgpUzo12nYHM4Pj5E+/eIyZGM/l8X4V
         yNkQ==
X-Gm-Message-State: AC+VfDxW2gestUmPBlXqfeoa1FlXyJi5GuiltXNOGrsBUC8/cZesMi4M
	r9tZGQfRDE5vI4J0CSSiPvdj4w==
X-Google-Smtp-Source: ACHHUZ7OUViKj9nWvPtND4JYYFWZ9ax9Hta1Ce9OP9c7+jgaorTGGMrTsHMFswURqp7Tt0PaOAIY+Q==
X-Received: by 2002:ac2:5599:0:b0:4f4:1959:b729 with SMTP id v25-20020ac25599000000b004f41959b729mr2263490lfg.68.1684844104771;
        Tue, 23 May 2023 05:15:04 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:04 -0700 (PDT)
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
Subject: [PATCH 09/15] drm/msm/hdmi: simplify extp clock handling
Date: Tue, 23 May 2023 15:14:48 +0300
Message-Id: <20230523121454.3460634-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_131608_770297_86B7F3F9 
X-CRM114-Status: GOOD (  18.86  )
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

With the extp being the only "power" clock left, remove the surrounding
loops and handle the extp clock directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c        | 24 ++++---------------
 drivers/gpu/drm/msm/hdmi/hdmi.h        |  6 +----
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 33 ++++++++++----------------
 3 files changed, 18 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 0fc3df43aa70..a2780aba6d3c 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -248,13 +248,11 @@ static const struct hdmi_platform_config hdmi_tx_8960_config = {
 };
 
 static const char *pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
-static const char *pwr_clk_names_8x74[] = {"extp"};
 static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
 static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0, 0};
 
 static const struct hdmi_platform_config hdmi_tx_8974_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(pwr_clk, 8x74),
 		HDMI_CFG(hpd_clk, 8x74),
 		.hpd_freq      = hpd_clk_freq_8x74,
 };
@@ -495,24 +493,10 @@ static int msm_hdmi_dev_probe(struct platform_device *pdev)
 		hdmi->hpd_clks[i] = clk;
 	}
 
-	hdmi->pwr_clks = devm_kcalloc(&pdev->dev,
-				      config->pwr_clk_cnt,
-				      sizeof(hdmi->pwr_clks[0]),
-				      GFP_KERNEL);
-	if (!hdmi->pwr_clks)
-		return -ENOMEM;
-
-	for (i = 0; i < config->pwr_clk_cnt; i++) {
-		struct clk *clk;
-
-		clk = msm_clk_get(pdev, config->pwr_clk_names[i]);
-		if (IS_ERR(clk))
-			return dev_err_probe(dev, PTR_ERR(clk),
-					     "failed to get pwr clk: %s\n",
-					     config->pwr_clk_names[i]);
-
-		hdmi->pwr_clks[i] = clk;
-	}
+	hdmi->extp_clk = devm_clk_get_optional(&pdev->dev, "extp");
+	if (IS_ERR(hdmi->extp_clk))
+		return dev_err_probe(dev, PTR_ERR(hdmi->extp_clk),
+				     "failed to get extp clock\n");
 
 	hdmi->hpd_gpiod = devm_gpiod_get_optional(&pdev->dev, "hpd", GPIOD_IN);
 	/* This will catch e.g. -EPROBE_DEFER */
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index e8dbee50637f..2d405da63bd0 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -51,7 +51,7 @@ struct hdmi {
 	struct regulator_bulk_data *hpd_regs;
 	struct regulator_bulk_data *pwr_regs;
 	struct clk **hpd_clks;
-	struct clk **pwr_clks;
+	struct clk *extp_clk;
 
 	struct gpio_desc *hpd_gpiod;
 
@@ -98,10 +98,6 @@ struct hdmi_platform_config {
 	const char **hpd_clk_names;
 	const long unsigned *hpd_freq;
 	int hpd_clk_cnt;
-
-	/* clks that need to be on for screen pwr (ie pixel clk): */
-	const char **pwr_clk_names;
-	int pwr_clk_cnt;
 };
 
 struct hdmi_bridge {
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 9b1391d27ed3..62ce1455f974 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -25,7 +25,7 @@ static void msm_hdmi_power_on(struct drm_bridge *bridge)
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
 	const struct hdmi_platform_config *config = hdmi->config;
-	int i, ret;
+	int ret;
 
 	pm_runtime_get_sync(&hdmi->pdev->dev);
 
@@ -33,21 +33,15 @@ static void msm_hdmi_power_on(struct drm_bridge *bridge)
 	if (ret)
 		DRM_DEV_ERROR(dev->dev, "failed to enable pwr regulator: %d\n", ret);
 
-	if (config->pwr_clk_cnt > 0) {
+	if (hdmi->extp_clk) {
 		DBG("pixclock: %lu", hdmi->pixclock);
-		ret = clk_set_rate(hdmi->pwr_clks[0], hdmi->pixclock);
-		if (ret) {
-			DRM_DEV_ERROR(dev->dev, "failed to set pixel clk: %s (%d)\n",
-					config->pwr_clk_names[0], ret);
-		}
-	}
+		ret = clk_set_rate(hdmi->extp_clk, hdmi->pixclock);
+		if (ret)
+			DRM_DEV_ERROR(dev->dev, "failed to set extp clk rate: %d\n", ret);
 
-	for (i = 0; i < config->pwr_clk_cnt; i++) {
-		ret = clk_prepare_enable(hdmi->pwr_clks[i]);
-		if (ret) {
-			DRM_DEV_ERROR(dev->dev, "failed to enable pwr clk: %s (%d)\n",
-					config->pwr_clk_names[i], ret);
-		}
+		ret = clk_prepare_enable(hdmi->extp_clk);
+		if (ret)
+			DRM_DEV_ERROR(dev->dev, "failed to enable extp clk: %d\n", ret);
 	}
 }
 
@@ -57,15 +51,15 @@ static void power_off(struct drm_bridge *bridge)
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
 	const struct hdmi_platform_config *config = hdmi->config;
-	int i, ret;
+	int ret;
 
 	/* TODO do we need to wait for final vblank somewhere before
 	 * cutting the clocks?
 	 */
 	mdelay(16 + 4);
 
-	for (i = 0; i < config->pwr_clk_cnt; i++)
-		clk_disable_unprepare(hdmi->pwr_clks[i]);
+	if (hdmi->extp_clk)
+		clk_disable_unprepare(hdmi->extp_clk);
 
 	ret = regulator_bulk_disable(config->pwr_reg_cnt, hdmi->pwr_regs);
 	if (ret)
@@ -270,7 +264,6 @@ static enum drm_mode_status msm_hdmi_bridge_mode_valid(struct drm_bridge *bridge
 {
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
-	const struct hdmi_platform_config *config = hdmi->config;
 	struct msm_drm_private *priv = bridge->dev->dev_private;
 	struct msm_kms *kms = priv->kms;
 	long actual, requested;
@@ -284,8 +277,8 @@ static enum drm_mode_status msm_hdmi_bridge_mode_valid(struct drm_bridge *bridge
 	if (kms->funcs->round_pixclk)
 		actual = kms->funcs->round_pixclk(kms,
 			requested, hdmi_bridge->hdmi->encoder);
-	else if (config->pwr_clk_cnt > 0)
-		actual = clk_round_rate(hdmi->pwr_clks[0], requested);
+	else if (hdmi->extp_clk)
+		actual = clk_round_rate(hdmi->extp_clk, requested);
 	else
 		actual = requested;
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
