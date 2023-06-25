Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC821C00528
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3BepkX+okgkYCyzpKBnUUXmeBnYV4ZdzRVo+QIY8djs=; b=zvP6DgYdpgHOCL
	tDIDkWv9euwj9OtizQT2GopiY38CUBfBKUhD4ERiI+dIlVb9ahJlYrRFn4ByTi1MBFfGUW2qLQj3L
	vni1McHG4TREXEXw/aEvFlFPFAFbKN7AWchy98Po91WvVjsg/g8mrfJqNDn6s/0dkloLSGRqPITAE
	v6qZEOVAPDEq0uyuPYD7h7ypVLMmE2ozc/yTv30GZMN9I6DwQDRcztxbp2VHSG2hU8HB36N7oc9k6
	zzVbv2VtcnTwDUdpCMMfbSHE2/bLf3F5sy41/1cCsoLNfmij5qCMV8OO5GH0rEOnKO7zOeFHrAj3B
	6vzSv+KSswJXJjFJYMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8c-007w3W-0g;
	Sun, 25 Jun 2023 11:42:38 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8T-007vzm-0o
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:34 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b69e6d324aso3082981fa.0
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693344; x=1690285344;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dVrsfFqkQPbfLNSrSQyHnXarZyg1nvlvM+lTFhmypL8=;
        b=D+4ptIEkXdg9ANrfypWn5FLA8stBauRszOVNUAuVjabe+ymYYy7iWkyvH2iksAQ1ec
         CF99AEV8GWl9J7Ur2tkMut1cX3AxfKkl0e4G4Y34k7vmL8T1oRTU746nBfIG00rHddlF
         A1xrxZQLZ6t+PCGyLJfhP7C8M26/pyHfyMPcwmV4trv8cGYg/UE0RzutNKwGNom7vINr
         fTgHnU0eeOuW5xsBXHZdGXfh109WJDQ1vxIAAPjh/DyylhDPh2mqMrN9Hk/GKRa7RL3l
         tbrP6O0OC+216+eL3iRq8LIR9f3bDZsqJ3nMHogDdJg3B4pG8A05jVL6p7xc2EAbh2f5
         Wh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693344; x=1690285344;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVrsfFqkQPbfLNSrSQyHnXarZyg1nvlvM+lTFhmypL8=;
        b=PEGZ+slXy98suXDmT7sHy/g3UdrTV6T7xP5Huvp2Y7dYdkRw08QW3VzwGVK/44KoQE
         W5dCuH17i+i6q1uRSs3xA37csiW4YZXgErC484VajP2i3FJFTv7TPmdtFmQIdiftpp6S
         63jzKjPmeBqt0zae43zyhMcWpaNdMslwZcCja2iBR9eEAMVWPelIg5z5f9X4jd05CgKs
         Jl8ac3pa3F6KghGpgzjMjMAuHZKRdnSxwO19OxsrFR9uUpSDxdqZKw9LSDVDk/oldKit
         aoZ3aEvg7k6GNv4ANHZ0mVbI7LS9R127PIr+dx34O+ZRoOdzE6YMxDCBuW0nGCIiyNGZ
         eXEw==
X-Gm-Message-State: AC+VfDyh5jLYmh0JF6fnIkXWN1F+ybw44x8swOCJo4zWWgyiEnx5ltAI
	4mOaSfv/vsZQVQe5UB4qDJONZw==
X-Google-Smtp-Source: ACHHUZ4rYyFVutQVqWHedCk8nhand4iLFlcxaR0NBazIurxMIo6508zE0rzSeaxgVIIGBUoyEcPKIw==
X-Received: by 2002:a05:6512:ad6:b0:4f9:cb8f:3182 with SMTP id n22-20020a0565120ad600b004f9cb8f3182mr1373017lfu.25.1687693343758;
        Sun, 25 Jun 2023 04:42:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:23 -0700 (PDT)
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
Subject: [PATCH v2 00/15] drm/msm/hdmi & phy: use generic PHY framework
Date: Sun, 25 Jun 2023 14:42:07 +0300
Message-Id: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044229_291051_4D5E89BA 
X-CRM114-Status: GOOD (  14.28  )
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
 drivers/gpu/drm/msm/hdmi/hdmi.c               |  86 +-
 drivers/gpu/drm/msm/hdmi/hdmi.h               |  79 +-
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c        | 108 ++-
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c           | 217 -----
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
 include/linux/phy/phy-hdmi.h                  |  33 +
 include/linux/phy/phy.h                       |   7 +-
 24 files changed, 2162 insertions(+), 1897 deletions(-)
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
