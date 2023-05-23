Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3656C7EE2E
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 12:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKa3rZivwuxZNTfSQ7rDLjrPHtigV+JAX96xT51/Y+k=; b=gukc9rEloLY5qF
	XRb3c1xymnxTLANBg31Gk28pYhX9SIuDGl+UMDYWAmLvfMjfAPynlLHMoJK1eWdEeRCfYJe1wSZxV
	9La1GmyKXlao5jiWSq1FJL6XHVFdcscn1hPGsjSQcTfHxYtB4tm4h9w8Q+sF9B0e3j7wAwn54iCbR
	9ZquMTopmF16CZMkcE3Nhd1EQoJvbekoHkpHdWmRaXjBLLMc7bzettLSG9K2mWascZS7Iq7meHcAg
	/gosv/membs5qK/V47SyYkG5F1BeFeVGsNXhnOwt1m7AXlwBDYpN7HvUXjBe9KH/iq5OBjgkFRb5g
	Kz32QccuVuLtlAMMPxzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qw1-00ACfp-0V;
	Tue, 23 May 2023 12:16:13 +0000
Received: from mail-lf1-f51.google.com ([209.85.167.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvx-00ACeN-1Z
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:10 +0000
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4f4ba3e0b98so1061616e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844108; x=1687436108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enSUc5wVEHF7eZy9e0DAWbElAzfosEhYHkkqQR9evEU=;
        b=cLSxKqmrFivha60kjqdkAq/2GXt9zXw+KGWMkRMtnGfSoqc+rEbGIY9SPFp3raR+tL
         Fvve4+1DQYi2PZ2Uk+JYU1ZJHEpz7EtzCFXCqQ4nutMAoROslrRjO/0UMoGpS3F3PoLF
         b66oDK+O3wB+Kad+4bZv7mmK5nHfbLakmzppjNLiji1FtxYNYvhmsFa41D5FrKjbmdOp
         rGkgZ1zXw6baayCE5w1FciCQFkd3PAedqX2dE/XVUQBO6CdcCCjqBs+KpHQtjGAiY/44
         fX8XjppzEo8N+XyYR0YxjjNW/xd/cvw3Ha1RuV9t1+FNXekSLqTGUystJEhzUatiIUt+
         HICw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844108; x=1687436108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enSUc5wVEHF7eZy9e0DAWbElAzfosEhYHkkqQR9evEU=;
        b=h5U9V51aZN2ySQ+aJVvjSHVl2sU9iliD3yzGAdlZ1JydjJGsidQsYV8ugt9zcwj8fu
         QQ2n43Y/PQ0iewI8WDhuh8o/7dfUd3MIFBpZcaK8wXh1AYvtXdrdQcY23IlzYv9wR9pH
         JuXsORwtjGctw8rDcknVvan2Pzrr3skNWSRooympbvEp8BRJfox5m3mLlcg7eWTPTioQ
         1CoMgFixClQmxaFSnW9UwVaiwo890QkvNC/Ty/tbre7r2liXLJwnfjh2sMVGoqQzDYnn
         5aeHgaHRG0atC8lwwnpjOKkUGWgX7jQP9y+EKeprTONOu+yC/OTTqf3Fsgd3JXQiMLcq
         0I/g==
X-Gm-Message-State: AC+VfDycfVU0ZOEwZEZLBUI70ma7ujJmtZv7uyUdUM6+wKSH1v4G6dos
	+vFisruPMF3RN29Ky8PVs7ibwg==
X-Google-Smtp-Source: ACHHUZ5WxYFiA0x3xgvZXvUWQdi/r/0i5DuVqgDFMuE7nU4AygQeYTf069U5/4/emwtjx39IRyOE/A==
X-Received: by 2002:a19:7003:0:b0:4f3:a99f:1ea3 with SMTP id h3-20020a197003000000b004f3a99f1ea3mr4008960lfc.32.1684844108297;
        Tue, 23 May 2023 05:15:08 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.07
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
Subject: [PATCH 13/15] drm/msm/hdmi: pair msm_hdmi_phy_powerup with msm_hdmi_phy_powerdown
Date: Tue, 23 May 2023 15:14:52 +0300
Message-Id: <20230523121454.3460634-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_051609_525402_782ABC65 
X-CRM114-Status: GOOD (  10.71  )
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
