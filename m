Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439C8E732C0
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHWNOUx9jKAQQUhD8gdmNidl4tOASa9uVzHeepvKGGg=; b=TvVHag9wAmWEnk
	WHUzrrNZe4GQOTt3uW3BSUv4VL5efe7/jKH83z0OIXNAfOk9W9hbQZ36BVT55Z6xJofU32W9ejmv9
	icrGuDujDTUGGpnSnLufslKKpjD9pfDANsVVUAovGhr4mZJtD3CiYr9ygEShoiCEf4ZoY3POSqGbZ
	RfRwEDgDYsNnDmDL5PWf0eno58sYrSwby8Srwj23p76kx4FqYr4x/xFKBIAx2vlyr7/a0OsLeJGOo
	3PX0JsH4Hp23qwO3QFYdEWgNXbozRoAIhpx56J7nJQOTwMYdNzT2LjZFvxy70Aor6rosPJoMcK/8n
	1gDoREKOMiMObmoCubKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0k-0038c0-2v;
	Thu, 28 Sep 2023 11:16:50 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0c-0038Uc-2P
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:46 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5048156976cso4645371e87.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899801; x=1696504601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kMftiAUxeR8BPoZkZvXeNvb1WLgqdhL6DsPjfLjpExg=;
        b=lSUpRYN63/nxcpXBS8Mt886om0HdcJjC8DbvZnVWkz6Uys4oqlC24R6+Kw8fQ59nIM
         F6PzDXUtd0QhSNqov1+YHWsvXMWi/wabil3a5OldTr8/99PRw9kZ2Z4XCubymSx9Vj72
         Ulzxm5DXtr1Lw/72UO2jhsyfKXuJLohyRtWgWCRCMJPGGS9BhLZak/WeR5GuctmmUJWT
         jTaF0z/pIkjtbUelCL8QR7KdJCe12KOmcp6hhxMPJO7ff9OKhV/WZiziZdwyF6pKDZmg
         bGwadbBqjUGuLj1EOlWEgzVV6zlJeCpXZ0rtzryPDo4gcVAzpWwEq74oMhZjKjFSS2at
         Lkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899801; x=1696504601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMftiAUxeR8BPoZkZvXeNvb1WLgqdhL6DsPjfLjpExg=;
        b=paFa9lJTfDVTRcDeyum8LUUESGKHkYPb6YyJB0lX3cNQChXo3/HD51MxjJZ+jQb+6+
         eK6Sq5WOdGPlRtLn8SQ2a9qYqg/5s9URbnsJlPU4tkmQiePzLwYkvAUzKWsrGRQzaGd6
         D2A+46Z1Qev9IXoKyEAB4JS+KuwoJqOuqbtwTmYN4untl/PgHK33M41B8sawGc+3xz06
         N2VMf1P/xCBBcs5tykIT/Yowqp3N7v3lyf3jHUfZWwlSYFsB0l9BVq5ZbFgeenoPR3AD
         KhSOZ4o3ZFPMGP66n2C+E3YyUdIF9lAF3DQ2NY2+qJA6hCHfIYu1j0jGbgiTao/SxzEv
         altg==
X-Gm-Message-State: AOJu0YxU19ExwwsKQXOA1n5ZHhKniIXYG1SUZt4NaCHYIR0RPwY4hTMC
	he2jxvsbFLwrgZr17Tjr4I3rPw==
X-Google-Smtp-Source: AGHT+IGJuLOW0z+nyXsjDWy/AhORRPbvfkWB2Dltrt556qDZ0CEwO2DNjEzeGytc0iYjtCSew21T2A==
X-Received: by 2002:a19:4304:0:b0:4ff:7046:984a with SMTP id q4-20020a194304000000b004ff7046984amr733375lfa.7.1695899801373;
        Thu, 28 Sep 2023 04:16:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:40 -0700 (PDT)
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
Subject: [PATCH v3 12/15] drm/msm/hdmi: set infoframes on all pre_enable calls
Date: Thu, 28 Sep 2023 14:16:26 +0300
Message-Id: <20230928111630.1217419-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041642_819075_C76B8A22 
X-CRM114-Status: UNSURE (   9.77  )
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
