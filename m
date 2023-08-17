Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA07CC30638
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 14:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hTL6xxAiUyEx1tBWko+QamwuGBr/CzXQjsjwYzrE4Fc=; b=FICSdQfOp9bN9G
	ojek6MudkWUuqj5CfoLCxlaVspX7U0cIsCxWUGm/Z9z5E9eKU47AJ/qA28w5DJpg17/Dgzl3lTOQY
	RF+78W8n1Aag9q8MVT3R0FwN1nToJIqJ1oIoy4zVrB2SRy/qRFaWouy8Ob8V+P950wdgPnlBHd5jJ
	jAsNWSa3hYHLEjik3GTmbfnJNfBQ3yH4xzrZUD7gYFdcD3zdy+IOHwh2L+w1PsPx8yoNJFQqAAIbb
	28VemC49CbyMbGyZYtfge1OJOmPjiU4qP7kt5FQAt9pdTCtH9X2hD9u3t11HqbYM4e2cxRtsTX/fP
	0o1UIOvmOe4LWBnmwNFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWePF-006bnM-1y;
	Thu, 17 Aug 2023 14:55:25 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWePB-006bl0-3D
	for linux-phy@lists.infradead.org;
	Thu, 17 Aug 2023 14:55:23 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bb99fbaebdso28042071fa.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Aug 2023 07:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692284118; x=1692888918;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BwS7c2t308T/mB+oMp8XQ357rYg2jjetSc6BP2FuXMU=;
        b=LwRMgFxz/A+6jxA1IpxcXgWOjwS+76IV2NlINn1g0YPEW2gsO3/T2YOvrD+p1qZSpw
         xgJMjRFlpVDUYfnmHDWnwOOMtPIG56TORlI4goFuuIaVCVXhdAhMC9/iMqqv9s1x+nza
         XCd0UX7+b0MXbkRgKNN3c/7Iu1z6W1siAQo//AhW+zugdFZDOWb1WsGNex5fM5AxgbrF
         MftE7yGGI4iA7C70tFy4VVtC9QVa1Rx3D8zTwFQae6S2QxJvc/LuxzNfWumEgBuXS4pt
         dNJ+dwt5msOtbSExu142PdY6yzt8h+xi1f9fkBySzK0izu6eHbRboyw9r41N+obcAJ1G
         OMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692284118; x=1692888918;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BwS7c2t308T/mB+oMp8XQ357rYg2jjetSc6BP2FuXMU=;
        b=XNo3OxeQs+eGG2rtWDwR+kf+VJAOwpgqsJ4BKA2VfjuSgOZ1yk8XPdFSt1NjqvXIpB
         x7/QbQDfeberCUBPWXI2u8UzBw2pikfLAGIqnGq8yApa9rux8XecTxEwoPEVaX/OGZcr
         TybzK2wB3Sy6i0jQYzJMudlrRu7m6gWl/C4bvfzPoq9sgWn0arAGxMKQJy2YMaxEmIDg
         U/jGIYW2oYPjrwpW5QJ2Sx/hQHqzO5vZTmesWwfdLn88Isd3BpLgpSonqBWB9nTaBjz1
         XezmXB5t5KwsiqmEMNAD43XvAqynasuGrG7GnQ/DdmGsrvTv18X8MHacIksmUWEMe9I0
         2SZw==
X-Gm-Message-State: AOJu0YxAaBUyJzEwI9bwWxDRq8HqYG2QXv/lsN3+v3WaOchyAkOGMcw1
	Q4hkKEQIkQ8TZYHLv5Uktb59fg==
X-Google-Smtp-Source: AGHT+IF8Yc9ETcCdt32wD1L0l4ewnINI9W+GmF5yUKQKysZlH5cmDAmbNTeLCZHofcqbQxIN8Gksqg==
X-Received: by 2002:a2e:9450:0:b0:2b6:a804:4cc with SMTP id o16-20020a2e9450000000b002b6a80404ccmr3885203ljh.53.1692284117772;
        Thu, 17 Aug 2023 07:55:17 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z13-20020a2e350d000000b002b9e5fe86dasm4082728ljz.81.2023.08.17.07.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 07:55:17 -0700 (PDT)
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
Subject: [PATCH v4 0/3] drm: simplify support for transparent DRM bridges
Date: Thu, 17 Aug 2023 17:55:13 +0300
Message-Id: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_075522_044867_605497B1 
X-CRM114-Status: GOOD (  14.30  )
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
bridges (PHY, redrivers, mux, etc). This results in drivers having
similar boilerplate code for such bridges.

Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
bridge can either be probed from the bridge->attach callback, when it is
too late to return -EPROBE_DEFER, or from the probe() callback, when the
next bridge might not yet be available, because it depends on the
resources provided by the probing device.

Last, but not least, this results in the the internal knowledge of DRM
subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.

To solve all these issues, define a separate DRM helper, which creates
separate aux device just for the bridge. During probe such aux device
doesn't result in the EPROBE_DEFER loops. Instead it allows the device
drivers to probe properly, according to the actual resource
dependencies. The bridge auxdevs are then probed when the next bridge
becomes available, sparing drivers from drm_bridge_attach() returning
-EPROBE_DEFER.

Proposed merge strategy: immutable branch with the drm commit, which is
then merged into PHY and USB subsystems together with the corresponding
patch.

Changes since v3:
 - Moved bridge driver to gpu/drm/bridge (Neil Armstrong)
 - Renamed it to aux-bridge (since there is already a simple_bridge driver)
 - Made CONFIG_OF mandatory for this driver (Neil Armstrong)
 - Added missing kfree and ida_free (Dan Carpenter)

Changes since v2:
 - ifdef'ed bridge->of_node access (LKP)

Changes since v1:
 - Added EXPORT_SYMBOL_GPL / MODULE_LICENSE / etc. to drm_simple_bridge

Dmitry Baryshkov (3):
  drm/bridge: add transparent bridge helper
  phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE
  usb: typec: nb7vpq904m: switch to DRM_AUX_BRIDGE

 drivers/gpu/drm/bridge/Kconfig            |   9 ++
 drivers/gpu/drm/bridge/Makefile           |   1 +
 drivers/gpu/drm/bridge/aux-bridge.c       | 132 ++++++++++++++++++++++
 drivers/phy/qualcomm/Kconfig              |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c |  44 +-------
 drivers/usb/typec/mux/Kconfig             |   2 +-
 drivers/usb/typec/mux/nb7vpq904m.c        |  44 +-------
 include/drm/bridge/aux-bridge.h           |  19 ++++
 8 files changed, 167 insertions(+), 86 deletions(-)
 create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
 create mode 100644 include/drm/bridge/aux-bridge.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
