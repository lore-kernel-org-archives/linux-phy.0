Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89EB2C04FE2
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jul 2023 20:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u1QsoegCwSBORHLhbvu4OIQfA9uSj3DuNeIWOaB9JNI=; b=2/W/wtOgneOg/4
	B+RB0QV0Ci4Av+2wqo+A/plRZL4quQUYs4WhHwmEBpzzAjJI4OgAkmh0WFqmMh27u3qTzUy0O/sAr
	u96O+yy6aCY0PXI5PjHrGb6zigoKjfThHdiE1RJRgzBonZz5eXhN9He7HAUxxx0SKIVk7xHR++dwS
	8hckW9mDlNw8PRWPokUT5+OxxTqnWVH5096aJOvRWdn1Rd+isx+E/RxHSYlBtqukId4Ua1q1SjZQs
	dPkNhaQ6G7u2ip/MUXFdBq4nEERlkXiCzMJ4mXKTaWSTMD0P7FwnkBlx7VnMYbQdKON9ERpyhpbUg
	ASndyuLkTayVXorAM26A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPqmU-008oBM-0F;
	Sat, 29 Jul 2023 20:43:18 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPqmP-008o89-1A
	for linux-phy@lists.infradead.org;
	Sat, 29 Jul 2023 20:43:15 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4fe1a35a135so4637882e87.1
        for <linux-phy@lists.infradead.org>; Sat, 29 Jul 2023 13:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690663389; x=1691268189;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jDXmcqoxmADeVwH/tIKhJpnlMjbMtWv3iZzEIatWUZw=;
        b=HkMSKw6/PCLIipl8FiTm78l3ypb7hctz3Xfn/gOmLxJ/fYuTukfw1ejsn/q0zK9UsT
         SH116GxJEl/Q3dsvRSUzTfiDC/m3WqJJ3uXeM43aHy2kibo+wXbS5rzAV+OUEeggBXAb
         NoLaD9pQT/8b09UhE7o3an3Z2kFRUna54v5EhMcUJHgw7kNzD2v0NRvJyaP1r9BjbDvx
         nhd1YOfm7+SDwoa6D+RNDhefq9NwGHjXs0YcGumW1kjNN+gUq4CRXEZ5+jshOemMmtp8
         9+yr+9hi3uY1prDiJaMnNe6FofthZLm+kJmx4+Wkcd68hdrIwL/92SRyPp2qmqzMuwu8
         UxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690663389; x=1691268189;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jDXmcqoxmADeVwH/tIKhJpnlMjbMtWv3iZzEIatWUZw=;
        b=BP6925Xt10uQxAMqTym0Nd0vIkjvlBbWuNPy8wGeOgJ9BRbUltDKGhatmMCTTFrTN4
         6aLSNBVpyEniZ4Yplwl58gTaFTWhrUIc0+oD94OxMAYunEMYGdLJWkArtTJ0Rrjc03gr
         F6acQrPATZ2Jn1B9wm/nTjOwWX3OLl81uK3GvwPyJGKWyJOpDtbu934E+r2/VIrLaeJv
         XriJZUMsYYezFKfihpfQ56P8wc2mRDAcpuHrLt66Yek0HQPVXsduoEVc9V/1dRxsipLa
         bnZxE2/BNszjNfnDLStDMU6nENj5MQPG1yiG6ZLPEQlJvz3RCJ7mc1ZuxX5RttWwHRcc
         ueJg==
X-Gm-Message-State: ABy/qLa8zgRw2P+mudlGceIXrq4Kg1ymt2n8E5gI8ByIr1KeAmYGPj6q
	4Lm9U3vhHOmfUjHVAx5wr35oGg==
X-Google-Smtp-Source: APBJJlEG7RXwuvRy6gHyJpQWKQOXsq5ExDxgmuPzEO/9ZMBjN/9HwLfl4RJQVaeeQPngeNEsL7Yydg==
X-Received: by 2002:a2e:b0d1:0:b0:2b9:4ac9:6071 with SMTP id g17-20020a2eb0d1000000b002b94ac96071mr3844531ljl.10.1690663389536;
        Sat, 29 Jul 2023 13:43:09 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v20-20020a2e9614000000b002b9af8422a8sm1705177ljh.130.2023.07.29.13.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 13:43:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH 0/3] drm/display: simplify support for transparent DRM bridges
Date: Sat, 29 Jul 2023 23:43:04 +0300
Message-Id: <20230729204307.268587-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230729_134313_461999_5CC6A470 
X-CRM114-Status: GOOD (  12.68  )
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

Dmitry Baryshkov (3):
  drm/display: add transparent bridge helper
  phy: qcom: qmp-combo: switch to DRM_SIMPLE_BRIDGE
  usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE

 drivers/gpu/drm/display/Kconfig             |   9 ++
 drivers/gpu/drm/display/Makefile            |   2 +
 drivers/gpu/drm/display/drm_simple_bridge.c | 120 ++++++++++++++++++++
 drivers/phy/qualcomm/Kconfig                |   3 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c   |  44 +------
 drivers/usb/typec/mux/Kconfig               |   3 +-
 drivers/usb/typec/mux/nb7vpq904m.c          |  44 +------
 include/drm/display/drm_simple_bridge.h     |  19 ++++
 8 files changed, 156 insertions(+), 88 deletions(-)
 create mode 100644 drivers/gpu/drm/display/drm_simple_bridge.c
 create mode 100644 include/drm/display/drm_simple_bridge.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
