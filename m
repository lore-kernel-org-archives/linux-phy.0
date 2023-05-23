Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2FC6C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x55nIozV0vkbZw8lsWujFoEbB2BXcoDaa+bKUpIq1m8=; b=bX7kbUgDj6rnRE
	7wdARFqAWGJqqnKdyrDElcRDGwiLeTiEFAslcMRgvKQkEClEik7YttQHoNJBoHzvms3H/g0uuomTi
	oAwV61UFXcQmF2sFq8zZLliga3U7OVrfA5n7aK76NbBjaORPsPerad2z58cWRbFhOh5Cl/mZ+nMBK
	gnUtpT28tmizdufDJb34OJYT1ENIYqzObWf/R5S5eqD7Li6c8JYY32v0cCUe/t3W16OXc6xwqhHN1
	DTCwL81Lr5pGkLuu7JPBnelQK7iA8fqgcI14vNtyF2M5HxfiOcTtY75xOHne7h6cXf3IaWLRNWuoL
	ksIwuVXN4DPqL2ySMjIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHu-00AOlE-1k;
	Tue, 23 May 2023 13:42:54 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHt-00AOkw-2i
	for linux-phy@bombadil.infradead.org;
	Tue, 23 May 2023 13:42:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HlnLygFYYtSxoKEaC5DFXDBhNuXumh16hVtzEXEvSec=; b=RdDaGOni8cRNYXdUp/hB8Elq9k
	FQVwkRCt/vc4GPAYk7ZuuYjnGrgEM3n2AdCrHlTpc50YgfOslGo45nhz6axNr8XNAePU6b1CEuOVY
	eE/hbluOJXbs/t4+Ar25JMN8z+PUgKxX84Q2yx6lpImM6zb9XV+KNKxaBRjFCUkEFYXhCeLQLteyu
	mOl+q1z9DZIUl0Lx9Yt6sVXaN5z0it59bl5oOAxcVEVliBct6LdWe00KihEPzf5Ye6DHbqMOKDyrM
	6c38STs1l4V2TutBAEJLCN6bJbu1NjvRxYyyIQHHrL8uDzt/fWBPNZ2hR1lxIlPBXmITWuAk6bVBX
	qLbFVvSQ==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvu-003VxQ-1n
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:09 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f3ba703b67so3470045e87.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844105; x=1687436105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HlnLygFYYtSxoKEaC5DFXDBhNuXumh16hVtzEXEvSec=;
        b=SL/WVHABS704+8O+JkeKaXTNIjTPa6bMNxe4CV7AGXBoUs/Jdt4ceFX7jQwNDAyN1+
         BJOdBVhocMwX+gbdjC8AlbYXA9mlNGWCdJM+iikUuY1fcz4I/dmwnnMiBgAXlV1S7tXL
         jfviyHrP2KDMfy76e8Lg1peoMrw1hq/5Ocuk0nQ3vXbGRwtzQf8YiTGt0icIpgU0fNWQ
         iRUecbmN3nbJywrZahJkGoXLhrzzXS8TR5ngxOFwOZcBG1P36g9r3irNgFshMUr9qw7x
         xL47QOII4bg1JQ5vU0zlR9msEyIZfYCj9nDGwfhp4y1OYpJtNIXrATNNec4qpF2HkvxP
         JrJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844105; x=1687436105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlnLygFYYtSxoKEaC5DFXDBhNuXumh16hVtzEXEvSec=;
        b=JThhqTOMvmhRmvZwW0gZImfhqTtSe9p8Mg5o9VuirgRurLpQTct+HmVe5S0Eu+DjOg
         V+ooIX0gsGnEF5eLEA9I/i+JIm3xlcHVFOqQRBGcxFkRJsuWLTQ7xvKj8NY/0lvU1Qh1
         R9LYKQtZ9HWVxyCuYR/yeGJTuyt6UKA7MCFKDZ302XNU79vp1EyWOQX6nbWnnUxkIP0f
         +y1D7U+IJ/5Ws0nrWDiTmTNcEeNHeV3vReWZ5a7699F6CIpl1BZmnoCi0pJRC+p2FAnI
         5YpRPjKxqkmeBPDfeYAfeFsaW+UjVAQ7GKME3cw/bAhkdnVX4zx9GvCzdPDNLrzRCW+k
         SZzg==
X-Gm-Message-State: AC+VfDwwuABbQXWo0pwxoS0wyFdieP1b4/s+KX10i0h4U9rHj+tyEozg
	lYX98jswD9pL0xjcmdTWfVoMcw==
X-Google-Smtp-Source: ACHHUZ7RIvGjdINojHjJ65ERgUVxZ9JLqK/cT+DIqTF6C4Xu/7dDxF+Uml9xZ924hzI/Ju9SUi5sYw==
X-Received: by 2002:a19:5213:0:b0:4f3:a0f5:92e5 with SMTP id m19-20020a195213000000b004f3a0f592e5mr3853326lfb.31.1684844105762;
        Tue, 23 May 2023 05:15:05 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:05 -0700 (PDT)
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
Subject: [PATCH 10/15] drm/msm/hdmi: correct indentation of HDMI bridge functions
Date: Tue, 23 May 2023 15:14:49 +0300
Message-Id: <20230523121454.3460634-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_131606_683491_DA8760CB 
X-CRM114-Status: UNSURE (   8.96  )
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
