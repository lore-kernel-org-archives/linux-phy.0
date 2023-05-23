Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1C61C7EE30
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIhWsyDw1QzbOy1eTge9aTgj5lDrkXtTQJzZup/QlXk=; b=ajaz5qberObTqW
	TAjNSSt8kj82H4Txh3Nw0zxT75bWo8F6mwP2LH2wdyz9X90ArYYz+4PysPG28KIqam8uVIcuOx3oD
	5f00fYKoNjsncDgWiihPtDSTf2vBXqakMkE24D/50D7oSTDPHHX9A7ew+IqdR+Fw/N3giwJOMIqCu
	HVdLfX/lb6TWe8DyJkC2Uuhl9fQjzepD41UutLbMXb2ODckohDmJwxcyzdy3aJjkbN9Aiu+MwHfrN
	bmJedv9pwGmlQKspGfO2F2C71R2gJCXKkLj0HOdxt1feMsglZ4xI46EaooaetYKdY86ZjaZXwFTGX
	SH2bl04ojGGeW1i+I9pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Rvl-00AMRi-1i;
	Tue, 23 May 2023 13:20:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvy-00ACeS-0Y
	for linux-phy@bombadil.infradead.org;
	Tue, 23 May 2023 12:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=lwdtqkDXqK7iZxcIX1bEzs8baolumoX7/30733m/ZW8=; b=p/ijDyivtX8PS4VEiNgRTeLoXd
	3yLRqWYN2yrC8WlVhI9QMS3jzrifphMcFrIx6V85KmU5uBLwDjN57KGLBC2DVS/SAajqF9FP+1OXH
	81RVm8I0MFXqphlSrKgsnarvXk8PF3nUpL4Z1rfOP2kxK6ATrBlgYqkgfnl/9062YjomCb2mZ7nmz
	GZ2DEaXiJjefNpbUmrhjZ2cyt1D90ikYCDTzzSnhGU6o45o9RhUg2bIuwn0PsstZNItOmAqkHQmFF
	LIv2a2xI6lpOEZ/zGnnuKb1VZlNwTlfP+VSoIHGpNSrcEnevQ4wou1H0jBlBxXvS8qn9HTVetkAW6
	jbO7MkPA==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvu-003VxN-0P
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:08 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f1411e8111so8023296e87.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844103; x=1687436103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lwdtqkDXqK7iZxcIX1bEzs8baolumoX7/30733m/ZW8=;
        b=xovt4aEyTZfHLuBgY7Lj6XlCpNIET84LYBDk+/oVzP755lUBkUTXz+H6yWz2r2Cw2U
         IB+r1bJB7dhEFU49rbl4eAsdZr98efw8Tfpn6MGdjG/QIcKYEViZoQL8G2YfISYdPR1S
         Pwxw+0/cK9OIcRrEA1vKeANcP8A+BaNRoTwJtIB+F5Ez8S26oOYFLFZOJJojsY88BbeM
         GNS5nvvM6ccaALPTO6+4ZuCu7UkWC0G3TDPFiXp6UMGrw/mXkJMa8rxWmKnR2xYYsTv3
         uYQqAGNkgWno9cyaOslg7BQvNJK/cVw83NRJd59NVf7QGygEkyoXuI719WVBPTwyIptU
         Kd8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844103; x=1687436103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lwdtqkDXqK7iZxcIX1bEzs8baolumoX7/30733m/ZW8=;
        b=a4fiZE92cwW3UbRmIrnie41VVnNAJecUP0y9h0vh+ZMaMsn5XcTltDzmicAmVBjEZj
         zFqM0qLYHIqOZM4aPcoektpa+Mg9TqO2N8yNkzpMqZs369g784VPNjTotHIk5J3G5hZj
         tW2cqMQOm0bX7UJqa9sWibbPQrh6ag3vrJynGYXJaLrt+EUYEdnb5QiZfM5uRGD3Bt7t
         mD2iE7BcAd2htVYVaZW/3Xv+PKZ19hM/e11187nhI2peJLjz/dgJH3FwRGzr9NkfqLv8
         x+Yw4GazZykSPs7W196WGBNDeD6eXMgd521GITyJfYsW36pM8ge1N7VuVgzuCZfqYjfc
         ib9w==
X-Gm-Message-State: AC+VfDwrH/pwMAx3RlTjwR3Lipt6M4ARnLLw7hjRfXRNNc+RHpC3onyb
	A1fur/hy969fXuimUaaJbJY39w==
X-Google-Smtp-Source: ACHHUZ50IH3a8pjiP+UBa8g9txbuBk/wEdojWdQ3Zvz9henvUls4QHCr5OhPT8MEUkJo4Z565Npxlw==
X-Received: by 2002:ac2:46fc:0:b0:4f3:9a2c:589e with SMTP id q28-20020ac246fc000000b004f39a2c589emr4109700lfo.24.1684844103714;
        Tue, 23 May 2023 05:15:03 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:03 -0700 (PDT)
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
Subject: [PATCH 08/15] drm/msm/hdmi: move the alt_iface clock to the hpd list
Date: Tue, 23 May 2023 15:14:47 +0300
Message-Id: <20230523121454.3460634-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_131606_333655_2B925C13 
X-CRM114-Status: GOOD (  10.72  )
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

According to the vendor kernel [1] , the alt_iface clock should be
enabled together with the rest of HPD clocks, to make HPD to work
properly.

[1] https://git.codelinaro.org/clo/la/kernel/msm-3.18/-/commit/e07a5487e521e57f76083c0a6e2f995414ac6d03

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 3132105a2a43..0fc3df43aa70 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -248,9 +248,9 @@ static const struct hdmi_platform_config hdmi_tx_8960_config = {
 };
 
 static const char *pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
-static const char *pwr_clk_names_8x74[] = {"extp", "alt_iface"};
-static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core"};
-static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0};
+static const char *pwr_clk_names_8x74[] = {"extp"};
+static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
+static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0, 0};
 
 static const struct hdmi_platform_config hdmi_tx_8974_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
