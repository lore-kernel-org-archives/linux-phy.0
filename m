Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E896BC54764
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 15:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEqyh+krQqUO1vNrdhi2MLLrIvJyFe8YGVDFHmV5wj0=; b=D7VSfz3pBDdVyM
	iNMic7/KWQHPfSffc2dXUEvI01kg/Ub4LA1DrKIvOzHdxiOteHPLHlJQDZV8Pu/SeNmXLXr/sdd2W
	AmcwkIMf2xUY8pFfwosN+AoNoAaAui3OJa2XYMXEQ8Zn9yADXCbRy1KWPtMTRPFrme1Co+pWRFodl
	PiTTEuf2undYJBtEZ92fouckAVIYgbtmbD6ly9A/2B2QB6cWR7suTVhLW5k+JJSGnRyWFJ9cMw0Zx
	QYcd+rWnEpfpgFZhpRQeF9HgYMUrtWz+TSKYf1Kc7E05copN1FgX68XDf6/i4/oW15VtHSQKLONxg
	t6vtktRI67tjYRBQAi1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDb-00000005shv-1Mj1;
	Sat, 17 Feb 2024 15:03:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDY-00000005sfl-47lS
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 15:03:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 629C76141D;
	Sat, 17 Feb 2024 15:03:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17518C433B1;
	Sat, 17 Feb 2024 15:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708182183;
	bh=POmhG3XikVsaXc0RusI64Jf3HUeMzGtS54gIumrv1I0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eEqGR0C+9C6T6cV2g4R/ygaPvBNcGscgTTbDfWpt6RqNCVCSNemlDmMiBjLINFF9K
	 vNOWBEXAul5FUj2axKYGDdckCtDO4TfXoy/tk+8sx+M+Nax3pT9M4+S/bHKHCxiynt
	 JVidLDi1X3iyquM1kp0a0kub0LV/yLpN3RHEru2kNVYZ1+NxnuinFZsD6q3h74J/bF
	 QqKCFNwEidPJOkwPHGJM73U2yVQ+4BuksOAvfFpAIVLuaZV050HXeu1xqCZl2QDBHY
	 upv4mvxbKoOiSRj0B/wbcx4RIR8QiHUJlV8SjhAA3Z57ya1yYljjfWRvPgLGCifDKc
	 1sh5+H+c0Jn0g==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1rbMDW-000000001Vo-2L8p;
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
Subject: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
Date: Sat, 17 Feb 2024 16:02:23 +0100
Message-ID: <20240217150228.5788-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240217150228.5788-1-johan+linaro@kernel.org>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_070305_107776_11CB6EFA 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
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

The two device node references taken during allocation need to be
dropped when the auxiliary device is freed.

Fixes: 6914968a0b52 ("drm/bridge: properly refcount DT nodes in aux bridge drivers")
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/gpu/drm/bridge/aux-hpd-bridge.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
index bb55f697a181..9e71daf95bde 100644
--- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
@@ -25,6 +25,7 @@ static void drm_aux_hpd_bridge_release(struct device *dev)
 	ida_free(&drm_aux_hpd_bridge_ida, adev->id);
 
 	of_node_put(adev->dev.platform_data);
+	of_node_put(adev->dev.of_node);
 
 	kfree(adev);
 }
@@ -74,6 +75,8 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent,
 
 	ret = auxiliary_device_init(adev);
 	if (ret) {
+		of_node_put(adev->dev.platform_data);
+		of_node_put(adev->dev.of_node);
 		ida_free(&drm_aux_hpd_bridge_ida, adev->id);
 		kfree(adev);
 		return ERR_PTR(ret);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
