Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0261BEB64DC
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKa3rZivwuxZNTfSQ7rDLjrPHtigV+JAX96xT51/Y+k=; b=lCFqC9zI1KGIHk
	SL5uiYxGs8/GHWIgSP//A+1FSMHOelGbRs2hbo8toXHUHfWnuCx8TRw3gnKyZcwj/vQ9wsZbooHIy
	wvaqR6/A+SqGuNW7bfbwDbqfyrZSr2a+BztSElfTRYjlxUuCAWnFLqz20Xl+0XllVqQpDKrU/uSQt
	U3R/Di0SuaAeB/dpLPwyES74RerjFInzLohilnO/MF5FXPpmN08Iaf42l5uVoEEjBf1RcVexjQb2i
	aBmMBjBFa9CbS1hsVV/orKnIclxy+jnWzqhYNdWWaBDiqZ1UR6JIckA6Mfg+Wg/vUoh6oKZcMBOhx
	P/hww7FBNEzGXifhMvGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8l-007wB3-28;
	Sun, 25 Jun 2023 11:42:47 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8d-007w2S-0l
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:43 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4faaaa476a9so769513e87.2
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693354; x=1690285354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enSUc5wVEHF7eZy9e0DAWbElAzfosEhYHkkqQR9evEU=;
        b=GpwaJlGXYuG3Z4vYv+wgR1y2wSg6nEIFTwhWxzjR8tWukr9O16cDD9VF+YnnlCjaJb
         9P+vI/dv1+JB09f0n/C9kVydtIyLLSbVaC7drfvLGjsIrjRdsjgnY9y+OQxAf4jMayEn
         hhGSh+40bZWK785rOVrHPcEVEac9RpB2HOCfce4XDRh8b5mBgF7ee0u5PkJMxYcLcCTu
         afZ/9K18wwJFf6mdgQTTlTxs3inKzkdEK3QIv8Sren5kiPdEDhQk5vqYTDtlde2xYLH5
         QcoGxFiQwaEn/muwpiiGzEDnREKrol504vdRN3gMtj0DVLlYhdcq365Gif76dx6QF8zr
         9D9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693354; x=1690285354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enSUc5wVEHF7eZy9e0DAWbElAzfosEhYHkkqQR9evEU=;
        b=IQ66VsZqvkEVQlN4RBNGHH1pdvt4/v7f+xQwaxujZAal33FliIO9CIxqnfXGkcAR6I
         ID06a32dkqoGDKTE9e1sHXewpwr19hcTEF1Tr8dPlK+h7xDYZ6SyJePOpxQj7qwePUDG
         N8NLGCTKHmq0IVoInHUXWGjCgLv7tcr3hIH2+LhlIjArea7ZG88RTk+HJWYutpHpEP8e
         BPbi/VNKumfOk2cH3VEZD7YwX3c2JYTBmGc0vSdUNc6O10TyJ3nNYMGbGoMXZTREa47H
         0qVZrfFl9j9CnDOlsf6EeYwI67TsmuQbUYWajsIYuzO52IICGObMc+EvmeV7lv3RYun+
         2bXw==
X-Gm-Message-State: AC+VfDygiVH3WaZCJuJQA7Z0wXoBAAvHXDOhSWocxbRrolC0gm3WSFOo
	Ps4hxn8xoLjA63mJZXME0BTew/AmyzGvFz2ucLU=
X-Google-Smtp-Source: ACHHUZ7u+Sgj815uM7U4pf8to+2Ka6ErMJBQSl4tNszqEw9fDmnsKqiRTL0HxBnsCbazmmHgMzIq7g==
X-Received: by 2002:a05:6512:3d8e:b0:4fb:73d1:58e5 with SMTP id k14-20020a0565123d8e00b004fb73d158e5mr253539lfv.53.1687693354615;
        Sun, 25 Jun 2023 04:42:34 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:34 -0700 (PDT)
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
Subject: [PATCH v2 13/15] drm/msm/hdmi: pair msm_hdmi_phy_powerup with msm_hdmi_phy_powerdown
Date: Sun, 25 Jun 2023 14:42:20 +0300
Message-Id: <20230625114222.96689-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044239_286685_237D9849 
X-CRM114-Status: GOOD (  10.35  )
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

In preparation to converting MSM HDMI driver to use PHY framework, which
requires phy_power_on() calls to be paired with phy_power_off(), add a
conditional call to msm_hdmi_phy_powerdown() before the call to
msm_hdmi_phy_powerup().

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.h        | 1 +
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index 2d405da63bd0..46ae7ef9bc98 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -42,6 +42,7 @@ struct hdmi {
 
 	/* video state: */
 	bool power_on;
+	bool phy_power_on;
 	unsigned long int pixclock;
 
 	void __iomem *mmio;
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index bb10b35194ff..1bbd76e595af 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -148,7 +148,11 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
 		msm_hdmi_audio_update(hdmi);
 	}
 
+	if (hdmi->phy_power_on)
+		msm_hdmi_phy_powerdown(phy);
+
 	msm_hdmi_phy_powerup(phy, hdmi->pixclock);
+	hdmi->phy_power_on = true;
 
 	msm_hdmi_set_mode(hdmi, true);
 
@@ -170,6 +174,7 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
 	msm_hdmi_set_mode(hdmi, false);
 
 	msm_hdmi_phy_powerdown(phy);
+	hdmi->phy_power_on = false;
 
 	if (hdmi->power_on) {
 		power_off(bridge);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
