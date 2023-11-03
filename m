Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF066C001B0
	for <linux-phy@archiver.kernel.org>; Fri,  3 Nov 2023 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wV1FJmA48QkOZHdNuPLe5T5dKrADLnpLSWuj55VaXWw=; b=XtykwjGMQj+jEz
	XtsVdYy7llUugJIaIs81zuqlUOQ8DnLRTMqh+0SkkGu9QnrfLxqXx5/4XZWz1GBhafzA504i1TkPW
	txY+h/LrobcPmWCrwEr349APHDw8/t8W8JDmAhwlHi2b2VwSBJdwfKStZ/p1La2r5nsNNxcBxA209
	2zP3SnVxcxdQBMFCSTbHqrlUvB9UAi+1baS+lVULeFacncFrvjAbvee5p6PSbRe4YvyLPF520zRq9
	Y7xa/MyeSpxf78CHOS3x3bybk2NRy0in0vkgoInjDZP5FGSrgR+/hDmj4n3jtnnfpPqwEC0MLY4n2
	DXhILPW4DtGoNXde45ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DC-00CIKC-1i;
	Fri, 03 Nov 2023 23:04:22 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DA-00CIHz-08
	for linux-phy@lists.infradead.org;
	Fri, 03 Nov 2023 23:04:21 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so36555701fa.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Nov 2023 16:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699052655; x=1699657455; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GXIeW4GsOHRxaU3fctULVZJpGwQnd0E/lSvL3ZRRAIk=;
        b=h1XM80fOuvtSgA9UWBCN2ISJ0fKE5aTSXL69M6P0ZAmcprc2hLYjjJbfTO8mJ8Do1i
         xn0M6Atm0W2oz5NKfMRuAhRZ1dJX+Bmkm+F1WrLMDWH0xZu681yOvI5n4269x7B2N7i7
         WxE7EP8n+9i6MiVXm21Bz5tvsWAHgzChgkLddDn7xFpgJxvBPA6Wwc2dfVhngS6O2Eqb
         egajbdylWYazlmtj7U1hJ5WAjyMNq0gGvKJETaZsu82+xoZWZay3rcMrKm3fZvCNlkMV
         iXdV2Je0A2ekgRs0LVBoCOXMbUSlxiXqHGHQcxFVk3EOd33uT+AhOM2vX0Wt0SgVpgyD
         nSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699052655; x=1699657455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GXIeW4GsOHRxaU3fctULVZJpGwQnd0E/lSvL3ZRRAIk=;
        b=pGzkUlzdgnLCj72LVjigKYYHXME1d94FC8r5qnrudTKt+x/q6kcGUEWXnd1A5P0+L8
         3DIH4Hp8Qfp3AhPH/rkH9YnH6ZqIzgcynmQN0ibhS73knGvRD+fwz0iXD6vmET2Qzes0
         /T5stchRwGgCDC6c4R4k26m4erVfVjLktrYp3netLcFp1263ysbKyePxX/wV1xHX3Wms
         qlzw3PHvXtgVKMH6F9ASNN1KTxwepawtVlbE/VnjIQEMgKa5p1LUNvwdUDxPLjyOeTrD
         1XRWapOcMCehSttjpgaSLBz0m3h6yeC5y6aHU5ixZ5wtsf+GOtfUlw1oGKjy2JDnJuDe
         FQcg==
X-Gm-Message-State: AOJu0YwzCJ/X7vyM9SjBKuNY4Cr9FBhrxCwLcjaiO6Y4Qnzq8QF2UnuW
	HLj+bPqYiwy0/3ok5YkOo1sCBw==
X-Google-Smtp-Source: AGHT+IFoXzOXhXBxDzb1hTvIAcYEh+H5qZuHfzgUAzlorrDsdIJFHrrZhJIyqpoiknvP1IZYHUsBww==
X-Received: by 2002:a05:6512:688:b0:507:9a13:27bd with SMTP id t8-20020a056512068800b005079a1327bdmr22258057lfe.7.1699052655045;
        Fri, 03 Nov 2023 16:04:15 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id s16-20020ac24650000000b00504211d2a7bsm329919lfo.297.2023.11.03.16.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:04:14 -0700 (PDT)
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
Subject: [PATCH v6 0/6] drm: simplify support for transparent DRM bridges
Date: Sat,  4 Nov 2023 01:03:03 +0200
Message-ID: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_160420_078997_BEA4134C 
X-CRM114-Status: GOOD (  15.84  )
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

Changes since v5:
 - Removed extra semicolon in !DRM_AUX_HPD_BRIDGE stubs definition.

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
