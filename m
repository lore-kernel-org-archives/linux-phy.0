Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FA05C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vU+DduZN4TXISth0lDbYz2DtFqn6zEQ/3bW9cGIZImQ=; b=OjG7SQt6BZAcZu
	8rjHbA3C3r6Cq9gvFNAx0M5asMOYIulk7uyyuXcwBA+rat/9bsM1bibklZ5qX8fIbHcDnQ7Zz6Qg+
	l+eXccdb2Q7OhiwKtpnuX+DHyfwwgWpcka2RFU7bLqv/uqk1Bmb4kVaAzr4C6SN31GRc9g3xjw55q
	s11k8Ha55P9KC+orXhm8PU7oYEsmZtRgal0DuK/X5JjSTN269GUJNjZG9sp67rRvFKQJ/7+qiRjoI
	nYegtHFWRqajFZZPzsFyqxHh+lu2E34B7yT8yDCXUwXKN1EKxpLwSPGkbj4ZFxCtI5F7Imlqc6Qp8
	bcm67CBlw5P2lcQUz7VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Rvj-00AMQS-2w;
	Tue, 23 May 2023 13:19:59 +0000
Received: from mail-lf1-f42.google.com ([209.85.167.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvm-00ACXd-1l
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:00 +0000
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4f3a873476bso6078174e87.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844096; x=1687436096;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pTCAzPM+XQkFg/kFCaBKSjHD1xHDAZL557+xzbBW8Pg=;
        b=O8aNdpq+aoUCR9LbZKAbhLlmkuzkiVY85MB2hAG8Scazsh0ub2rc7iFpIS4M6eiUXN
         g3jEZFhvA9ItaV3f2qU8Nr3Tmjbkej0i4P9JBguM8W5xUsZ5cFJoiRRipHZj/Y6Ss+p6
         aipwqZW8JRryms+XDdyHx+n7OyPqun8D0WmZ+T/1g4pQTcRoPvMEoBT1nTa5yXYR/64m
         V/ZCuIkWjF/p8q/A4WQ4xK9/FK21kcu0Rhf3NLzwm1AwR0ZqtwqYJhd8+ALqp8PY2vEU
         UClCH9e0m0xRZ8XTD9Z1ZsHGO2gu5apuZVMqtQSABO5JG3azZYxjZBe8aSka9U5CHFAE
         bJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844096; x=1687436096;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pTCAzPM+XQkFg/kFCaBKSjHD1xHDAZL557+xzbBW8Pg=;
        b=Dj2j+b5YyAUzThUw56830//E5EVs/6GY6kPEE3qTXJ30BLUXdDYT9tXSKokfq3f0ji
         X/sJc+FpvYTgZM1XEfEu7DZQcl3sLvTsuBDKW2gyIKTfB+GRGvWGyOzpuJXx4eSPozk3
         HA69/eXGNaSKI1Kt7ModHazVdpT22e8EOdOfnL/go9CWrzkupdfKUEtbUN0Hei0VkX0f
         MYZiu902ciDuQJ40kCXZxISKkfUzDQdSwbmlYiksTd3PsgsQAuxfscPk3o2Z0WyYhAZi
         ZltF9kptPUht33IXhrJPxN867bz9jMkhJ70K2U1x349EouTjKQlkIENg1rC1GzDHNHrU
         +qVw==
X-Gm-Message-State: AC+VfDzZjaSPMLENHwH/wj7x85Wn49wJrUWxLNunwMkOcYqDUSByVoXk
	AbEG5AZ4h8QZhUx6Qmogx9ZWtAxJ+4+K1/qZe+g=
X-Google-Smtp-Source: ACHHUZ6wZYLIhMnucl76GusJYLoBy4vUy3JkQdEWTKTTJuSuVlVOIIMGz3REICRMgRokSSTOA4O5tg==
X-Received: by 2002:ac2:46ef:0:b0:4f3:a556:61b6 with SMTP id q15-20020ac246ef000000b004f3a55661b6mr4318822lfo.3.1684844096123;
        Tue, 23 May 2023 05:14:56 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:14:55 -0700 (PDT)
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
Subject: [PATCH 00/15] drm/msm/hdmi & phy: use generic PHY framework
Date: Tue, 23 May 2023 15:14:39 +0300
Message-Id: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_051558_587543_344C65C7 
X-CRM114-Status: GOOD (  13.23  )
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

Dmitry Baryshkov (14):
  phy: qualcomm: add QMP HDMI PHY driver
  phy: qualcomm: add MSM8960 HDMI PHY driver
  phy: qualcomm: add MSM8x60 HDMI PHY driver
  phy: qcom: apq8064-sata: extract UNI PLL register defines
  phy: qcom-uniphy: add more registers from display PHYs
  phy: qualcomm: add MSM8974 HDMI PHY driver
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
 drivers/phy/qualcomm/Kconfig                  |  40 +
 drivers/phy/qualcomm/Makefile                 |   8 +
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c  |  23 +-
 drivers/phy/qualcomm/phy-qcom-hdmi-msm8960.c  | 744 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-msm8974.c  | 531 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-msm8x60.c  | 353 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c | 184 +++++
 .../phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c  | 441 ++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h      |  75 ++
 drivers/phy/qualcomm/phy-qcom-uniphy.h        |  65 ++
 include/linux/phy/phy-hdmi.h                  |  33 +
 include/linux/phy/phy.h                       |   7 +-
 22 files changed, 2562 insertions(+), 1897 deletions(-)
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c
 delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-msm8960.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-msm8974.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-hdmi-msm8x60.c
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
