Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80BC9C7EE2E
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHWNOUx9jKAQQUhD8gdmNidl4tOASa9uVzHeepvKGGg=; b=j+D0Stc8swBAeN
	hPC1VwjLxTdgpyLahQBtU6DN0JoEkikq3nBlrUbq3fA8dv4wuxeUnHvG9zZg2C12AAlpdbHjqjyGK
	ByiG+0gA2A9yQMJ43tH77uKLdhtnIx+ORyTahsKgUegQUGGRHbkjRSEX4EahJkNUkSGRg/C5jjM+v
	vjvZrgPpW9+bfJV5RSg+s0xzP3KuTJHBO9QMMLeTvMkL18xvoHCynsxgLnrvGQYtgnDsq8q4rTZpe
	EoGsV7Nve66RLIcLWHys8uGMgdew2CI9zh/ximT/wlRAXJlQqANOrEhuS9Q6YCDQBwOsjDhytD1nt
	5CH03jDhqqLnM6mIFVog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHs-00AOkF-0b;
	Tue, 23 May 2023 13:42:52 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHr-00AOjN-0I
	for linux-phy@bombadil.infradead.org;
	Tue, 23 May 2023 13:42:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kMftiAUxeR8BPoZkZvXeNvb1WLgqdhL6DsPjfLjpExg=; b=bixzUOGXX8NJ9Z31bfl2etglB9
	Gi1QB6rd8hRlGPCzhLxF6tS0etwnAvCMirV3d2Hfb/X6YqFXuq5bksS+uFiemoAr0BBQFc6LifMbA
	qZmrZCwwuur/2B5TWMqO4pavH0ZyJNADYZ3JcGktGBQ184yJ9MUhxXdve9HHcVunAcP8uVlWRw2zp
	UUuU5cMOO3FHorrN8mkZgB0/83H8ByFXSilXLmlXIbAcxd3SnQmf8KbxEk+Uu7xApnarB1Vgjg1fU
	mXMEIWWQsBpswv7lWVMqtmUiZbMyQkxyKr6FlfWj5LDzS14cEAYqfh+Ilq3Sgk+nJipRqPSI4ZL7Z
	WoQ7Jo+g==;
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvw-003Vy3-1A
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:13 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f3b314b1d7so4353578e87.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844107; x=1687436107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kMftiAUxeR8BPoZkZvXeNvb1WLgqdhL6DsPjfLjpExg=;
        b=ETX+jpQh1MkS/oEmbkm1RFkjIuPTjVkoKZKMQyqb44Ujy6MPxqvuFFRR5Ozv1N0fPL
         IyRB8EvrCQUBDzkstsPROcFAYQ7O6UofNHKb4BgRFu8BpUTjlKD5eVx0dhx3mVAHQr+e
         ozCd+EVp6H33iBFNoDaAnD5i2WIfckcUzBL91i4FYMXFEn7vvogAnsjs9zn53E/hJkK3
         LElwG+XWm/cAFZrLhqcdOPkbMVV/f7Z65RHR/MDV4Mm2ULcy2ilkir4TjCbvjfiTc8iB
         BnpqO61RlUfjK6tn/iGB7tqivbti3PaXHqJ4yeetkBiZ9/Exc43+iHe9sV9rqRdhlFe8
         Px/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844107; x=1687436107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMftiAUxeR8BPoZkZvXeNvb1WLgqdhL6DsPjfLjpExg=;
        b=Se6yo/3aDGeZmV42SarTWHhnsCeZA8ZGroHzpDTY4wKbJ44N1RfGs0kILUN2ta22vc
         rf1E4vF8rpG4nk20E8B8s/eVEkRbSYNVxf03IDDQ0vAc/Yt8c12lvXUYN3XbMSOeS2e7
         mlq2uKw7Z+n3ACcjjKHuxztY6g1YaNjF1bKe+Nk9Fu6eKHY3AkTG5nvPNBS4/JOuX+zX
         7UlXE6d6K4jkylFhBiN/qIHoUemLQE2Bh+zW75MeeiOJzoqbhkoddG9JnuzXrB2lugid
         30xDdM5xxRU6yC+BSLbq0jtRZJBrc58Hypt4DstzYAvhY6OfYq/SojSWVfICm6Feun9h
         bJUg==
X-Gm-Message-State: AC+VfDxlgTl9/2NBah5Ej4UuUrUzF518bfWZaWG/nlTu6TM9Viau1zbl
	DIqco63L6IZKCqoQOtIkd4DpMg==
X-Google-Smtp-Source: ACHHUZ43GR6mi7FCfEihpvwLYVmk40w1hC6t0c87laL1uoecXBbBd/pseUpVwOps9C9xtYnTi/b2Gw==
X-Received: by 2002:ac2:5fae:0:b0:4ed:b4f9:28c7 with SMTP id s14-20020ac25fae000000b004edb4f928c7mr4155100lfe.6.1684844107381;
        Tue, 23 May 2023 05:15:07 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:07 -0700 (PDT)
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
Subject: [PATCH 12/15] drm/msm/hdmi: set infoframes on all pre_enable calls
Date: Tue, 23 May 2023 15:14:51 +0300
Message-Id: <20230523121454.3460634-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_131608_723083_6E562451 
X-CRM114-Status: UNSURE (   9.48  )
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

In consequent modeset calls, the atomic_pre_enable() will be called
several times without calling atomic_post_disable() inbetween. Thus
iframes will not be updated for the next mode. Fix this by setting the
iframe outside of the !power_on check.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index f9293f7d8f34..bb10b35194ff 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -141,10 +141,11 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
 		msm_hdmi_phy_resource_enable(phy);
 		msm_hdmi_power_on(bridge);
 		hdmi->power_on = true;
-		if (hdmi->hdmi_mode) {
-			msm_hdmi_config_avi_infoframe(hdmi);
-			msm_hdmi_audio_update(hdmi);
-		}
+	}
+
+	if (hdmi->hdmi_mode) {
+		msm_hdmi_config_avi_infoframe(hdmi);
+		msm_hdmi_audio_update(hdmi);
 	}
 
 	msm_hdmi_phy_powerup(phy, hdmi->pixclock);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
