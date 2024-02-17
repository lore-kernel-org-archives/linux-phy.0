Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51D53C54766
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 15:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tL2mCOlur9aPDRqYIUd13eBSOdY2cIvzqjNRsosVSA=; b=XZbzbg6S3WAK0+
	r2hwgJ8DT5fFcCvzoyhJd3Ct88NVjQ8nAKSqcgNifekdu3pP4MKbfAnj4luhRPeYOFBLvngx1diYb
	p9dR5mpe+HfnrHUmK+WZqLr023zyr09j+4ms7AWjs24YwsJYV4/S4bkGJ72aShr1aBpgE+FNR6gZM
	Qpfcix5Z9wjxly9YJ0KEYwmrQ4ApDkZELFN+KD3aPR6gpn5opSPLAEoR8xDOoA5KDeI1BFI4aHpzx
	ch0Yi0SXn1Gn8AgnpGoQvucw4KqRNAVva4oFrLEbhzibsMVMtBrRIgSsGHKzQntI85td4nmEJkXXQ
	Kk2rEdJQYMlmafLCRUqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDg-00000005skU-3iTG;
	Sat, 17 Feb 2024 15:03:12 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDa-00000005sg6-1wRJ
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 15:03:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4B8F2CE09F2;
	Sat, 17 Feb 2024 15:03:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FF3FC43399;
	Sat, 17 Feb 2024 15:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708182183;
	bh=RYGrgArfEQO1hz4ZDJrYc151D2jwcPj4HsJMgduGqdg=;
	h=From:To:Cc:Subject:Date:From;
	b=Sk6Bj7qnkUtxpPu7r0OWOEKX33/NEitQ5TtRnYdKJx+5sZ2r+IdHyM4505BXrMdz7
	 GQebIt2mgAB3H+iuiVvivn25osbNIPGGdUUA6Sy7we/HmOoNHmvZ29aY/D1v/3OXKD
	 P0bwBYQVv0Ddw4ZaTUT+gKpRcQrYUqIJMifT/Fi8HGaiNqwKjJbCouYHnoGUUkhJwI
	 Bbf7tsUiicb0WSQafeUfOO4SvhcBn4jAy7CpR1tGSBqOarXQ+/gZF8xYjmsOgZNnzD
	 AqUCkvJtcEa+vQ7aB1sdYH+ZhJa3h5ARzbrw4zE8XlUbS07GjIwzvSopeuJnp/v7Nw
	 PeCQwYiphYhEw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1rbMDW-000000001Vm-1iMa;
	Sat, 17 Feb 2024 16:03:02 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	freedreno@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
Date: Sat, 17 Feb 2024 16:02:22 +0100
Message-ID: <20240217150228.5788-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_070307_012568_44A7EF04 
X-CRM114-Status: GOOD (  12.27  )
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

Starting with 6.8-rc1 the internal display sometimes fails to come up on
machines like the Lenovo ThinkPad X13s and the logs indicate that this
is due to a regression in the DRM subsystem [1].

This series fixes a race in the pmic_glink_altmode driver which was
exposed / triggered by the transparent DRM bridges rework that went into
6.8-rc1 and that manifested itself as a bridge failing to attach and
sometimes triggering a NULL-pointer dereference.

The intermittent hard resets that have also been reported since 6.8-rc1
unfortunately still remains and suggests that we are dealing with two
separate regressions. There is some indication that also the hard resets
(e.g. due to register accesses to unclocked hardware) are also due to
changes in the DRM subsystem as it happens around the time that the eDP
panel and display controller would be initialised during boot (the
runtime PM rework?). This remains to be verified, however.

Included is also a fix for a related OF node reference leak in the
aux-hpd driver found through inspection when reworking the driver.

The use-after-free bug is triggered by a probe deferral and highlighted
some further bugs in the involved drivers, which were registering child
devices before deferring probe. This behaviour is not correct and can
both trigger probe deferral loops and potentially also further issues
with the DRM bridge implementation.

This series can either go through the Qualcomm SoC tree (pmic_glink) or
the DRM tree. The PHY patches do not depend on the rest of the series
and could possibly be merged separately through the PHY tree.

Whichever gets this to mainline the fastest.

Johan


[1] https://lore.kernel.org/lkml/ZctVmLK4zTwcpW3A@hovoldconsulting.com/


Johan Hovold (5):
  drm/bridge: aux-hpd: fix OF node leaks
  drm/bridge: aux-hpd: separate allocation and registration
  soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
  phy: qcom-qmp-combo: fix drm bridge registration
  phy: qcom-qmp-combo: fix type-c switch registration

Rob Clark (1):
  soc: qcom: pmic_glink: Fix boot when QRTR=m

 drivers/gpu/drm/bridge/aux-hpd-bridge.c   | 70 ++++++++++++++++++-----
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 +++---
 drivers/soc/qcom/pmic_glink.c             | 21 +++----
 drivers/soc/qcom/pmic_glink_altmode.c     | 16 +++++-
 include/drm/bridge/aux-bridge.h           | 15 +++++
 5 files changed, 102 insertions(+), 36 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
