Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8594AC001DE
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIhWsyDw1QzbOy1eTge9aTgj5lDrkXtTQJzZup/QlXk=; b=LheVszG7wlPWVF
	HTUncWt32rjf11KvfxQmdPreLq1ih6Q/4PigfSxYsbAMCl5h9QY/sb9dH1XYX4i/hL4wIgR+ddilf
	T5VB7V8Ard4vMsqAqlYGzfwHh28tjkRLPMLIYNDt5NNKY9yj44g+xCv97VZbhYY5a0pUzoWb3S3AV
	czjvTjOCSc05utsaIUTveasjTdoid041fRISJ1OkxcMWHXEC4bwFbXN8i9MVS8u+qm7/fpi6NRDBn
	ceC5s6Iv4SmOwLGobNPvEvZguVHWuxQoGKojDfpm30WiCAfEx1Dv07umsrHGMoMS2elPTs+v85/Uf
	1RTnZkSdk55BlyaYLw1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8j-007w9v-00;
	Sun, 25 Jun 2023 11:42:45 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8c-007w1J-1s
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:42 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f875b267d9so3028828e87.1
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693350; x=1690285350;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lwdtqkDXqK7iZxcIX1bEzs8baolumoX7/30733m/ZW8=;
        b=csRNaQVYcN5FlY1KPPmbQ3DhS2yDIluczA9prBJjlEis0hj9zyLOJ92+3vWSG3wDPH
         aJXwYnwBhB7nfZ4ZU/BkYzjQow5FL+ttw7WQzRVTWRsWovgYQMYPWJNsEFH1shm9DxEM
         MRw6m6BbZlxeDAAkVWzXRx1B7TtkNNicfCrLeAjQFowxLo1TM0o/L6IUFsH668ogcEcf
         aaKuM1FSW1r5X+W9WZNu7KY0FB/zb4yo/pEvgO00Rvrt/C0Ne7l4AjlelDBp7hA97/c7
         1/LSkEId65dBAiGKPtDbLGQZ3rVH/fWZDpYriqPbjBCZNoKJ1rwoB+GNFbMT4msiXzFo
         x9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693350; x=1690285350;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lwdtqkDXqK7iZxcIX1bEzs8baolumoX7/30733m/ZW8=;
        b=KyP8T06CVaBpKAY4lBPHeYzV9jrvKjf70q/gEP7TMq7uBw9z1YtqtNbJ8TxkKE+cuD
         bT9VQxFHAvijQI2GoYQ9LnTMz7YEAO0tbVVpL8ly2LsO/XADj1mZcDzPeperJv+9twBX
         HyGEnqAMCrrKFZR4MUhRW6MHFfQf4cupaZZWq3pbOLfG6v6HdbrmD3cl2Q6StE7MHZh2
         VH1PaknoG2j3th4M/BjKOLIv+FL1rEb0ATjWew17jvTL5b1YRq/LVUaFudz7y1XAjXJH
         lJ384r5nGMdZfzj1r0mcZuB6Q81avF4pL0CPv3SLO+WDvb7llNA1rZS/tB9oHMwUB4s/
         xT7w==
X-Gm-Message-State: AC+VfDzU+fdCDaAxpfVB4Wi7Dg3QFuhTZvObGK1mSKWWFa7/xmx6QptD
	dnW9rTRl0YZ3/p/J5Y2w1rD0/g==
X-Google-Smtp-Source: ACHHUZ6JBYjRhM3xUtGku0UohCxWUXppP0M1khuC54BjHXVyboGxygUTxDaw7zl/dBjjx5nQpMp90Q==
X-Received: by 2002:a19:e348:0:b0:4f8:48f3:f06 with SMTP id c8-20020a19e348000000b004f848f30f06mr14544063lfk.48.1687693350508;
        Sun, 25 Jun 2023 04:42:30 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:30 -0700 (PDT)
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
Subject: [PATCH v2 08/15] drm/msm/hdmi: move the alt_iface clock to the hpd list
Date: Sun, 25 Jun 2023 14:42:15 +0300
Message-Id: <20230625114222.96689-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044238_663467_0DEE906C 
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
