Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18311C001DC
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHWNOUx9jKAQQUhD8gdmNidl4tOASa9uVzHeepvKGGg=; b=bhXpwJDcQ860Fu
	B8djGhpG/Qk3MI/tG0Ri3NIf3gFzgcEhTUthIt1KqYbo43N3CJwmIPfN0IVHCvX1Rj4R0Tfc1Wq4a
	U5uZTYJjV/kJmM/3J2hF8N1iL6U36tn7YROohUSLXqvJMFtfnZwqR833erI5fIs0uMyJLomcyUVfV
	dsv8FxcwKzxGrPmLSFiyeJrNJG9YGcs4ssCRPXQ8VMYtDdc5AkB9toIRIaVugAoiKXe5Yc9/a+qEP
	lMiN+Z/GSl8TLdcQPrNdv1eAiZ7czci7og2dvpao4pPr22/0eynI8hwLfV2bzKgru+wBmj+q3x9zM
	/zp2mnseLloDUiIIVMTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8i-007w9J-1r;
	Sun, 25 Jun 2023 11:42:44 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8c-007w1z-1r
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:42 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f8735ac3e3so3006874e87.2
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693354; x=1690285354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kMftiAUxeR8BPoZkZvXeNvb1WLgqdhL6DsPjfLjpExg=;
        b=nE9hwWDfWngVy/rJ1ATloHL2acbnwoqhkXi38nYNFRf1kqZvB71Smf9bY+b/qkrxRP
         MXwB9J5C9ItoBwkkMGNCcn4lpjlZqKXZYOy7ojITBqpz+YA0ayUBiGBnq9HlMmAGb12O
         6u3q0MrT4vlbNvIjFcH+4UMvFq3OVM9Dvw3BRFepnAVB9fEDbqIAit6SifKg1vx1xKzW
         P63sX/0OItKDxNlXzDmh7X/E/fLaWYYPXDddddvAK4XUNeaXVOLEYi+MNbGoqxV7RVQS
         zw6oboCfNTyAoJeHJ9c6K/PvkFU0vbURW6HoODLyIT5IOHXAxdyu2IgUUWmSYxKc133c
         /Z5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693354; x=1690285354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMftiAUxeR8BPoZkZvXeNvb1WLgqdhL6DsPjfLjpExg=;
        b=Q9/SWB32ms5EfkY6V+iHeOdQdZh6OAhEReulk+0GHHn/FNGLsnpiFX2Jm4QN4uw0LL
         02bweqS3A/kgs/mQTi4txMXIsfsaXGXrzfJuPvGBqPYR4t+3+S/JhBdrooi1k6jb+wEj
         ymM5SA0EdaZR7FkZceMSw7MZmjZw/FhuCccdXDxJXUJx2PJBLwRSOE1MMitkzVNQBcjZ
         qQcmWG1fQmYct8V8/PG9H0JLb+UflQlEw8KaE97KTcKAqBGJciD2GI9C3iMT6nw4ORri
         y21+I03L7M+RXMDNJb/yf/piuWRFFaNS3d6L+7gDqmUkq1+bjgPVpGwEu8oNVJuEYCjr
         ruVg==
X-Gm-Message-State: AC+VfDzavf+clXNU2+czTA+qGdFy0w3lkviW87jyrmnFuUClCiTR/Tub
	VfgxcKi8sDLc713/n+e6D+poDA==
X-Google-Smtp-Source: ACHHUZ42a3rY1LXrItHqP+/HoHNQ4DRPF+yUblDDgmlM5wyJNaabrKnL1yHAUQYVToD3/xWvmBDNxQ==
X-Received: by 2002:a19:5018:0:b0:4f8:75b0:2297 with SMTP id e24-20020a195018000000b004f875b02297mr11187764lfb.43.1687693353834;
        Sun, 25 Jun 2023 04:42:33 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:33 -0700 (PDT)
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
Subject: [PATCH v2 12/15] drm/msm/hdmi: set infoframes on all pre_enable calls
Date: Sun, 25 Jun 2023 14:42:19 +0300
Message-Id: <20230625114222.96689-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044238_664333_9DFD5CD2 
X-CRM114-Status: UNSURE (   9.22  )
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
