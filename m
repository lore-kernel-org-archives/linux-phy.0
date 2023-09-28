Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7065E732CB
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKa3rZivwuxZNTfSQ7rDLjrPHtigV+JAX96xT51/Y+k=; b=cK/zRVQBdKX7Ip
	xZqHEl/9yItN9hmhaX5jOn2TBHuQI5QPZRylt6ewJRFqc8EF5YRK9+nSh01LtP497adh8SOKvVy77
	ov+tN1VcGqCOxVkAKc7o6Tod5KTCzi6ce5Y9g/l5mXs3ffnuBxCfohaisY7gRJWY0usYtxm5RZjS5
	q9PVdjpRD4rxWO/nEA16mhVuXs7hrQqP0sB4oUKXjwnQUC0myBpSIYNaM1sQ6g3B1WsF4ZQY74Llh
	HesiX0Z/X6KuDxuaEZ4uYyvTSailvdtT5NGtX87Pfyrt5bPr4/rLuY4fFWKaxmosxx9awUsoc9VgN
	3WF5Bpv+cLip+vUIcVcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0l-0038cL-16;
	Thu, 28 Sep 2023 11:16:51 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0f-0038Vm-2X
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:48 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50435a9f800so19669263e87.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899802; x=1696504602; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enSUc5wVEHF7eZy9e0DAWbElAzfosEhYHkkqQR9evEU=;
        b=yq0a83wZ3glsfVyjOdFGGBFJaIF2au6Pn7AyX3M137k85xucJCOYZNgUnvtmleuuWl
         vfq9p61SaPuclP2XEYDGG7rVuVjGZuXtRCf3sNrpSTtKsEFFdmYR1rjHEmEqWYvIi+Tw
         soi/NhzIsSi0JggBVJ8s9/MO2O2F8ZodAKlS8yE+B02fq54SvnA7wBhirNHSX6sA5YxR
         MmHLViyqHsPNcRNA11NPeoNQWtXbwgCOyuGmsmVm4GlxCXSSwzkCSLS/G0knrf+qcPCS
         t//jC7FJXrFVZS9jfk8DdQFvF2fjZrJ4C7gGMe4dDysxyQXeZNr3Fjf8ZOGRyS8/z85/
         UKxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899802; x=1696504602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enSUc5wVEHF7eZy9e0DAWbElAzfosEhYHkkqQR9evEU=;
        b=tcTu5Y1nIoqyFISPmQ4nOU1OsRiRVs7TA6zNp3uY3SIt0MHkPmixlcTi1U5JtWuJ0z
         t7pieAm8ERwCsMqZTETT/whMrEg4ohsPens5oSJtvjo524T68RPQVbqxCg8ZIy7xl3VA
         P2pq6RkeScPPnHn42HR4sSfMqNh6dl/HhmzfmBxQLFuBHuB0CByczcoa6fKgc5CHIhkN
         xVo/ZAxa0Zt0Wf8i8yvdlU28GTEt7BLnq4E4Nx3J6WJuyx7cOzTTOh5cIweL1w331oJf
         pFMkjQAVU3utqTMuaDVnyJCENS7aEIfEdO3ZH2Z/CGZPe84sX2Pbz6lxgimnbbLITJaz
         T0Lg==
X-Gm-Message-State: AOJu0YygevB047kqI8BcV/96TEIW/LAb0jhStBsVUB0LhMba/IAQCaiK
	u10t+6X0kJ+UFrOr1QvZd9CMig==
X-Google-Smtp-Source: AGHT+IGwCeckW7pWu4XX3/cIFXJn7uNwvwln041/BMgKyIZsfbVBTMcODI67KjHZ8k4db5jC4PvYXA==
X-Received: by 2002:a05:6512:2148:b0:500:9bbf:da17 with SMTP id s8-20020a056512214800b005009bbfda17mr689312lfr.51.1695899802188;
        Thu, 28 Sep 2023 04:16:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:41 -0700 (PDT)
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
Subject: [PATCH v3 13/15] drm/msm/hdmi: pair msm_hdmi_phy_powerup with msm_hdmi_phy_powerdown
Date: Thu, 28 Sep 2023 14:16:27 +0300
Message-Id: <20230928111630.1217419-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041646_054885_8EC9612F 
X-CRM114-Status: GOOD (  10.92  )
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
