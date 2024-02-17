Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CE69C48BC4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 15:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8JhCdejIOr7PXKb2fUeuwFJixqoyluv9oaxdrUa3+o=; b=2sHXQ1r0OwDVdA
	FWbcCycMNM2fYXVnGAdlPPXXUwOUEXZJKRrhuVhMv2Dp3cJZp1QEmqu/7ikcxSiFIQMiN4oJ2A2Q9
	5NTYG/Yg6x/OguJjetZEjO3FsfcAQXiQvj//7DdQmMrHfl2FDj10rYmRWJPoR2B3WHDzLRjkt46V6
	Sa1QcRfXHONhvFWs/2OMtJ6y5LralPgk3IR8J3UfmsUJQzzc7xcu/VVf7jWhwAfsJVZUvrlni67U5
	XuvM/3363ks/X20UElznjk7Yi1JSHouCwwXMih64KdwsYj7FhUAfaoYatt6s0Qfu4kpPy3w/OPExQ
	TvYJRGP4OFwUT0GRVrvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDa-00000005shV-40Gb;
	Sat, 17 Feb 2024 15:03:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDY-00000005sfh-3Nmv
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 15:03:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6CA1360FCA;
	Sat, 17 Feb 2024 15:03:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05E98C433F1;
	Sat, 17 Feb 2024 15:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708182183;
	bh=E7peNP5XvxWfotZQJXcvlEV4QrXxAGb8fVXnSMSgPFc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Dk3HLJ7yF2q4ypNSoZdXkmm0aPgQCR7FYvJT9iw+lGINaaGvc2xX2ebCULvFlg36z
	 kg3r/qLyz+ERxutx4KEI5MbR/7iNf/Lpm/fYTcaE+tSB7UCJwcQKuJhvet4uGTQvbj
	 rof9weCUaGRieOlItOAbq7is6pzcG8M8db3wJjwnOFJ/7zE/wgx/Qr+R0/0bmWe4xC
	 tgkDLMNz3/jO7oNW6ZrSxB6yKgxga37TRMVA5DSDXRnjIws81+QskGbPRszwbtPE/b
	 NUhdJgV3ly89vY/6IBys0iGEqVscmwG5scY0CA2Nod9ifVSTAzeYdt0OSDnzlv+eyP
	 5eDMgBOxAdAvA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1rbMDW-000000001Vy-47Zd;
	Sat, 17 Feb 2024 16:03:03 +0100
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
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: [PATCH 6/6] phy: qcom-qmp-combo: fix type-c switch registration
Date: Sat, 17 Feb 2024 16:02:28 +0100
Message-ID: <20240217150228.5788-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240217150228.5788-1-johan+linaro@kernel.org>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_070304_958178_3EB5799F 
X-CRM114-Status: GOOD (  12.75  )
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

Due to a long-standing issue in driver core, drivers may not probe defer
after having registered child devices to avoid triggering a probe
deferral loop (see fbc35b45f9f6 ("Add documentation on meaning of
-EPROBE_DEFER")).

Move registration of the typec switch to after looking up clocks and
other resources.

Note that PHY creation can in theory also trigger a probe deferral when
a 'phy' supply is used. This does not seem to affect the QMP PHY driver
but the PHY subsystem should be reworked to address this (i.e. by
separating initialisation and registration of the PHY).

Fixes: 2851117f8f42 ("phy: qcom-qmp-combo: Introduce orientation switching")
Cc: stable@vger.kernel.org      # 6.5
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index e19d6a084f10..17c4ad7553a5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3562,10 +3562,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_typec_switch_register(qmp);
-	if (ret)
-		return ret;
-
 	/* Check for legacy binding with child nodes. */
 	usb_np = of_get_child_by_name(dev->of_node, "usb3-phy");
 	if (usb_np) {
@@ -3585,6 +3581,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	ret = qmp_combo_typec_switch_register(qmp);
+	if (ret)
+		goto err_node_put;
+
 	ret = drm_aux_bridge_register(dev);
 	if (ret)
 		goto err_node_put;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
