Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DAA7E732C4
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L/VNNKx1tGJHJWMbrsMu7w+JFqUZc4MVo1EmA6Sa6q0=; b=OmfXWEyAvR+twp
	UqLNAXt+pXUmJRvZJ8QWXnWV9lxUtDk2iV1rR2MXNkGkiroR/giboXjE2PFi3SnWFbkPBQEjSef3e
	1CQF29WGW/dmtwyI+o7XIe3+k9Ez9ijprc1WKjlRjhhGdLYzCxtKFMQ4nMl73IFi00cFc1Zi6/as1
	QWdZ6WBSCNbfg5PExVO2vDHqgOO7JLL/9C42BMGz/UeeFHhO29IyF4GX/Plk4TgLbBt5ZEKISoJha
	0rTSsj5GnbcppHUy11IN179/x714s/vc0VwtiWcuvPedeoIwMl61gZVIkDM0gBpLCqg/6X02bXI93
	ssQ2WJJImPfRNfKpioPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0X-0038Qu-0y;
	Thu, 28 Sep 2023 11:16:37 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0T-0038Ob-2U
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:35 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5048156976cso4645198e87.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899791; x=1696504591; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xfjzMYGKRcXefgtoWm3YdeqDuz+ynlx3ahQEYUJ7hGE=;
        b=bIffJye/+D92Sl8ViPY2GofeJOKXgmtkmBn3nyS2Y0n7PIwvDKH2ZDFpWDltR8stTp
         xeAjZKaRiGYAs+Gks+q2ossxd2OxGwYfn7hilRG1l+/XcpvwxLNwmFU/9BMblOfHShfI
         gSMsB6HNXOgN3nBWEorxgXr8lRS6UL+qxj8vJ4V5Mg7y+FO6fWy4mToR5hAbJwNpm//M
         6r16BjT4AWU9gtdRYa5ZPWDKQdeWNth3mxROkS//NqnCnZoVg0bAOvNQIXQqXqayDjOq
         puPelKgBJ2vBlTSLOhDnPgEbWonIM1VZZJBB8o7P+22XP3XZR6N23p+Q3Z/2rU/zlR3+
         ga5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899791; x=1696504591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfjzMYGKRcXefgtoWm3YdeqDuz+ynlx3ahQEYUJ7hGE=;
        b=ZvxHvGVy1fTku/H6+oGY0apZgnVmNbPzOQbjNqxSgZaM1vg7NQ2W3BywORLyysF435
         l/F4A+1ZwtUZAcAO0lpTtlWRiFvX+FVuOi+7k6CgZwuxcDVQJq4DF0xfXwWb8n36vQWp
         pvFPviZf4alwSzPSecL/eGZPuhvV9qPTDSEGy1FGivLsh9ncjqx2Yx50iRBPpgB5g317
         2L3c08DL3jsSHZjbPT2MWOrYDnoGAcMs/xHtGMfSLHvHWapZxthpBZvdocK/xuG1LD3c
         cmRw1YhI5+yz1YqnwHmzad1LwOFc5kTK0aa9VjU0u2aPuoc2PXVJXZ2/8GQed4kFXzRW
         NYBA==
X-Gm-Message-State: AOJu0YxnzcqQF51lAIpkW8x5k3a/2aGV7Pn74qeQzxCtAoPPWOlXCipm
	vyxFhvRfNaE8B1wkDwYdwHfE+w==
X-Google-Smtp-Source: AGHT+IFr9L7bAhBwAUOHZefNcwby9mlsY0cuDdJajWMQoylsh247Y8Hh7skR/x+U6DtxV1husNY3qg==
X-Received: by 2002:a05:6512:6c8:b0:503:a82:b379 with SMTP id u8-20020a05651206c800b005030a82b379mr952499lff.12.1695899791034;
        Thu, 28 Sep 2023 04:16:31 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:30 -0700 (PDT)
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
Subject: [PATCH v3 00/15] drm/msm/hdmi & phy: use generic PHY framework
Date: Thu, 28 Sep 2023 14:16:14 +0300
Message-Id: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041633_840560_54CE4160 
X-CRM114-Status: GOOD (  17.03  )
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

The MSM HDMI PHYs have been using the ad-hoc approach / API instead of
using the generic API framework. Move all the PHYs to
drivers/phy/qualcomm and rework them to use generic PHY framework. This
way all the QMP-related code is kept close. Also in future this will
allow us to use a common set of functions to setup msm8974 HDMI PHY,
28nm DSI PHY and apq8964 SATA PHY (which all use UNI PLL internally).

This also causes some design changes. Currently on msm8996 the HDMI PLL
implements clock's set_rate(), while other HDMI PHY drivers used the
ad-hoc PHY API for setting the PLL rate (this includes in-tree msm8960
driver and posted, but not merged, msm8974 driver). This might result in
the PLL being set to one rate, while the rest of the PHY being tuned to
work at another rate. Adopt the latter idea and always use
phy_configure() to tune the PHY and set the PLL rate.

Merge strategy: unsure. I'd probably prefer for this to be merged
through the drm/msm tree. Also, this patchset first adds new drivers,
then drops old ones, which might be not optimal. I might rework this to
squash add and drop patches into a single commit.

Changes since v2:
- Rebased on top of linux-next, solving conflicts
- Updated Sandor's HDMI PHY patch to the version from v9

Changes since v1:
- Changed msm8960 / apq8064 to calculate register data instead of using
  fixed tables. This extends the list of supported modes.
  (Implementation is based on mdss-hdmi-pll-28lpm.c from msm-4.14).

- Fixed the reprogramming of PLL rate on apq8064.

- Merged all non-QMP HDMI PHY drivers into a common PHY_QCOM_HDMI
  driver (suggested by Rob Clark)

Dmitry Baryshkov (14):
  phy: qualcomm: add QMP HDMI PHY driver
  phy: qcom: apq8064-sata: extract UNI PLL register defines
  phy: qcom-uniphy: add more registers from display PHYs
  phy: qualcomm: add legacy HDMI PHY driver
  phy: qualcomm: add MSM8974 HDMI PHY support
  phy: qualcomm: add MSM8x60 HDMI PHY support
  drm/msm/hdmi: move the alt_iface clock to the hpd list
  drm/msm/hdmi: simplify extp clock handling
  drm/msm/hdmi: correct indentation of HDMI bridge functions
  drm/msm/hdmi: switch to atomic_pre_enable/post_disable
  drm/msm/hdmi: set infoframes on all pre_enable calls
  drm/msm/hdmi: pair msm_hdmi_phy_powerup with msm_hdmi_phy_powerdown
  drm/msm/hdmi: switch to generic PHY subsystem
  drm/msm/hdmi: drop old HDMI PHY code

Sandor Yu (1):
  phy: Add HDMI configuration options

 drivers/gpu/drm/msm/Makefile                  |   6 -
 drivers/gpu/drm/msm/hdmi/hdmi.c               |  88 +-
 drivers/gpu/drm/msm/hdmi/hdmi.h               |  79 +-
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c        | 108 ++-
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c           | 216 -----
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c      |  51 --
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c      | 765 ------------------
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c      | 141 ----
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c      |  44 -
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c      | 458 -----------
 drivers/phy/qualcomm/Kconfig                  |  21 +
 drivers/phy/qualcomm/Makefile                 |  13 +
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c  |  23 +-
 drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c    | 327 ++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c    | 439 ++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c     | 184 +++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c   | 211 +++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h   |  81 ++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c | 184 +++++
 .../phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c  | 441 ++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h      |  75 ++
 drivers/phy/qualcomm/phy-qcom-uniphy.h        |  65 ++
 include/linux/phy/phy-hdmi.h                  |  24 +
 include/linux/phy/phy.h                       |   7 +-
 24 files changed, 2153 insertions(+), 1898 deletions(-)
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy.h
 create mode 100644 include/linux/phy/phy-hdmi.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
