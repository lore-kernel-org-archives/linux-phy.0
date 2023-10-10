Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55908CD98CB
	for <linux-phy@archiver.kernel.org>; Tue, 10 Oct 2023 23:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ijxDSir6tmmrvlSfdWGoNgTb/x/OFlnKTeiHf7Xa6GI=; b=sq4XWmOdwXPCvx
	6lPwK7Xl9IIwTn7tVMV/Zji7Wymfy0Vo8fdpBlAmkk98ypjB4evPTlclo3Kre7JD9rlEDGwssCgVB
	dEcSDpoKE/JAV/bcLKjSv9jIDqDg/aULBCOpWl5uWK/YCkSFF4pelhrSuoPjRryWWExkXG7mwaykn
	uhX95lOYIl6s0pizx10jkCamK9jdPurAQpXeGvGse6RZG32xhH4iTs8QF6M4BM1Pt9NrDvmMVe8j4
	+XQ14v7xgdykKiqghxvFin9jhRCH8bymKthyJVfeEhG7cw0vaoCxeVDkVSKbdmIgt95WBUupLri4A
	jqXBUIHU0FuCYohww+MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqLrs-00ELBy-0E;
	Tue, 10 Oct 2023 23:10:24 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqLrp-00ELAN-2u
	for linux-phy@lists.infradead.org;
	Tue, 10 Oct 2023 23:10:23 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c186ea81c7so80182621fa.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Oct 2023 16:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696979419; x=1697584219; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1PVwEVZvfBSDD5d8UZhpkgKfPZQ+0l26q5U0eEBP3cM=;
        b=SIX6BYoD2jfdevLUBzT1kYOAnxqttOKRdzBccx/fXn4LRsZrXK0mmhXgl3d2UhTSIw
         bB1Bqbyq/EAueguWUzwv+mdi4c5NkMBHKNoQiE4dr9F8EsAO0NHDLfQ22FwA0UjYC2PZ
         IcO+3gkOmYONmpE8eGUm6oop3i4RUeXCC5GE487iB+XldPwzlN+FOHiG8pz/dXrnAlnL
         o8ZOWpGCwqEVxBV27ul9xJ0x18gYyMP28B8EvDGXtmVqjd2GCQ+csZPYLUw+tEohEv0w
         oY42ggjHjeIfLSGAbJ/pZwF8CscKQqO6G3ExTmd/I7t7MuPnnExqaxX+YZkdsp+sWLHP
         n8KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696979419; x=1697584219;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1PVwEVZvfBSDD5d8UZhpkgKfPZQ+0l26q5U0eEBP3cM=;
        b=FNP0TlVSm+ZxUawzKRxXpPD/sUw8l/7iNKlO8P2Niu6l2usMqZ4pHuVJg/pp491PyF
         OGr2KJPvF8wz75DIrsYux3OOOxSwGwZY3x6k/WvAAnuTRFXkJ52is2Yjom+I+gZMZ2HS
         +s23E7Y1sZil/68vxshC63jwej3pGF0kwvyazMnL6t6ebiegMl3kahtnDKLi+fNqqS8a
         +rA8Hx8EnORLu+iN5X1tiP0kO+jX4uiKIGmlakvjVBSbMqE6+qJL/EX7xj6S0pfPdSv0
         4kmMneHUHEwkFZil/H7IdhdRcg7YbCZkekyvR144qFPgpK3sqPzhqPDz2ZkTdSNH7LMR
         tlJw==
X-Gm-Message-State: AOJu0YxJpCxGu2fl7IXzNTVBl17JGl2qhxrTgOBTszRSD91O+1jU+P1n
	Oy9CEIOmZf6NOeRchBC+Qu2wTg==
X-Google-Smtp-Source: AGHT+IHzC7VAJwHBIwZnsBz9+yJMjFzhwQb9W4iUEnN/3lFIYSrR0mUHG3GMEpkhU798pd11+uJUDw==
X-Received: by 2002:a2e:8816:0:b0:2bc:db99:1775 with SMTP id x22-20020a2e8816000000b002bcdb991775mr16410708ljh.26.1696979419245;
        Tue, 10 Oct 2023 16:10:19 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n8-20020a2e8788000000b002bcdbfe36b9sm2658033lji.111.2023.10.10.16.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 16:10:18 -0700 (PDT)
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
Subject: [PATCH v4 0/3 RESEND] drm: simplify support for transparent DRM bridges
Date: Wed, 11 Oct 2023 02:10:15 +0300
Message-Id: <20231010231018.77381-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_161021_948148_335E4855 
X-CRM114-Status: GOOD (  15.26  )
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

[Resending since the discussion with Laurent has died with no response
received for more than three weeks]

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
