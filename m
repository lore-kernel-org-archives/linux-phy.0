Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5D0C25B6E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 22:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rIzc4NgZpgzUYeJUASRpjnS+DfOOZWo9ItrpSyI6FRE=; b=F1H5xmyovphcqv
	+CJ1MRFLrUDog40EYSGD6oqCfqbTdL7l3zinda8QeZ8lcXN2B0Iv+NG/6/Wfv/KS6ghWlAcSeE2gN
	SzbE4AfGqPINZo1t1DgwsRmIJvSz/XPwBVI17tfzawpl99DIveiq6NnhW8KL5z28x3n0G4bCOVY4c
	2K+/rPj7ZBlseHnjvTItCMqyMcljQwK0SWA32P5LhCXMwJJ1wybqeMtWk2Z5JXZfyprj7Mbsy7igJ
	530anv+StG34nwkB76L2MaYSRL7Qym4r9Eq+o4aybsasceWwrKZUizzauInKAp5r6YljMAIhl5iar
	G1/5jNbwo3f4krjtIjEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvmOa-00DFoY-0S;
	Wed, 25 Oct 2023 22:30:36 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvmOW-00DFnc-1q
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 22:30:34 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c50906f941so3574241fa.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 15:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698273030; x=1698877830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mzM/s3QFeCJxxTk8M20oowbvJAmjAHB6oasYtF2H1f0=;
        b=I2SYubXujTRfMRmyEDHftLByMydfFxjW0ie0GA44OsbM2K0jywqv0ZvOj9yxWFrB7g
         e0bmyUrrdC1nxni4D/fTqxMeujoiGH8OZRsZ8vHfyO3SdtFb2nPqrvlB7hkfbvo+H6N5
         1zHQE+3B91L6PU7gu1pKFjpILX5XvpncykbfJrlA/1/l2jclMh+GOTnhMqCMcPyPY40Q
         ptk/RdIT2jUYR45QDxAimyCsszI5c0ClYyTmTbEl32cp7DdWTALiWhwYSEq5yLsNM544
         95W0PMRY9xKJ8cejIGESPgs49HnohbA7q6/WW8oxE71u3jlHiC0ovppl7gRIzrRPe09h
         SfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698273030; x=1698877830;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mzM/s3QFeCJxxTk8M20oowbvJAmjAHB6oasYtF2H1f0=;
        b=QWF99BBbeSvO+g9LD0s3x6ScHqORZtHqiKImut7kqw6TWZOOeQQ5HAD5OsTaOPkjAF
         ZdnQpvIvxniwSwp1SHPrkA7d/8q6leHShaqsok3oC0qGIE+74J+gxaqy+E7ilMxM25JN
         LIKKxfNQR/LxThbfLBKJTr2iilA1w6lm6UBUaxbBmMHUSB3oAADdtrAZFviMoGUU2KjY
         muQksleZTuoS/A3rY02h+SFOlNZQadZwozuz5tWkCkhtjTRHY8kclqrpbFTaOS/cOx3w
         fDK+64DHueGC/HQ+eudt8L626hx4lTz5H1TkqPc/HhziGfG8C7l3NZIZJy7TuDOP5EwL
         Wv+Q==
X-Gm-Message-State: AOJu0YyrPj90yNd3xy2th7Se44Je6+VKag3KscYMQ3uvll5R6VS65s06
	7xvusasLGrU+Y4srcsSsrfiYqw==
X-Google-Smtp-Source: AGHT+IE80qJBvoknc8MJoPYBc+MJgH2P0PJwGZo6QC/PZct9VXHGi7xuXRbkjbNG/YWYXz51jiD1cg==
X-Received: by 2002:a05:651c:1695:b0:2c5:1a89:41c6 with SMTP id bd21-20020a05651c169500b002c51a8941c6mr11515534ljb.33.1698273029414;
        Wed, 25 Oct 2023 15:30:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a36-20020a05651c212400b002bcbae4c21fsm2612543ljq.50.2023.10.25.15.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 15:30:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH v5 0/6] drm: simplify support for transparent DRM bridges
Date: Thu, 26 Oct 2023 01:28:01 +0300
Message-ID: <20231025223027.943563-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_153032_635131_D5CFD844 
X-CRM114-Status: GOOD (  15.74  )
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


Supporting DP/USB-C can result in a chain of several transparent
bridges (PHY, redrivers, mux, etc). All attempts to implement DP support
in a different way resulted either in series of hacks or in device tree
not reflecting the actual hardware design. This results in drivers
having similar boilerplate code for such bridges.

Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
bridge can either be probed from the bridge->attach callback, when it is
too late to return -EPROBE_DEFER, or from the probe() callback, when the
next bridge might not yet be available, because it depends on the
resources provided by the probing device. Device links can not fully
solve this problem since there are mutual dependencies between adjancent
devices.

Last, but not least, this results in the the internal knowledge of DRM
subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.

To solve all these issues, define a separate DRM helper, which creates
separate aux device just for the bridge. During probe such aux device
doesn't result in the EPROBE_DEFER loops. Instead it allows the device
drivers to probe properly, according to the actual resource
dependencies. The bridge auxdevs are then probed when the next bridge
becomes available, sparing drivers from drm_bridge_attach() returning
-EPROBE_DEFER.

Changes since v4:
 - Added documentation for new API (Sima)
 - Added generic code to handle "last mile" DP bridges implementing just
   the HPD functionality.
 - Rebased on top of linux-next to be able to drop #ifdef's around
   drm_bridge->of_node

Changes since v3:
 - Moved bridge driver to gpu/drm/bridge (Neil Armstrong)
 - Renamed it to aux-bridge (since there is already a simple_bridge driver)
 - Made CONFIG_OF mandatory for this driver (Neil Armstrong)
 - Added missing kfree and ida_free (Dan Carpenter)

Changes since v2:
 - ifdef'ed bridge->of_node access (LKP)

Changes since v1:
 - Added EXPORT_SYMBOL_GPL / MODULE_LICENSE / etc. to drm_simple_bridge

Dmitry Baryshkov (6):
  drm/bridge: add transparent bridge helper
  phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE
  usb: typec: nb7vpq904m: switch to DRM_AUX_BRIDGE
  drm/bridge: implement generic DP HPD bridge
  soc: qcom: pmic-glink: switch to DRM_AUX_HPD_BRIDGE
  usb: typec: qcom-pmic-typec: switch to DRM_AUX_HPD_BRIDGE

 drivers/gpu/drm/bridge/Kconfig                |  17 ++
 drivers/gpu/drm/bridge/Makefile               |   2 +
 drivers/gpu/drm/bridge/aux-bridge.c           | 140 +++++++++++++++
 drivers/gpu/drm/bridge/aux-hpd-bridge.c       | 164 ++++++++++++++++++
 drivers/phy/qualcomm/Kconfig                  |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  44 +----
 drivers/soc/qcom/Kconfig                      |   1 +
 drivers/soc/qcom/pmic_glink_altmode.c         |  33 +---
 drivers/usb/typec/mux/Kconfig                 |   2 +-
 drivers/usb/typec/mux/nb7vpq904m.c            |  44 +----
 drivers/usb/typec/tcpm/Kconfig                |   1 +
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c |  41 +----
 include/drm/bridge/aux-bridge.h               |  37 ++++
 13 files changed, 383 insertions(+), 145 deletions(-)
 create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
 create mode 100644 drivers/gpu/drm/bridge/aux-hpd-bridge.c
 create mode 100644 include/drm/bridge/aux-bridge.h

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
