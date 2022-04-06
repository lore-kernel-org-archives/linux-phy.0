Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4026BC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 16:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFvH2aC3pXY29wvrtGYjMaZKugh3FQe0GpPrvtRi1Lw=; b=3FN4XGcdAiVjp/
	s7XCkcQ/ZIYa2E4vRJoaTzUznyXZaLwa1RY0JIJWP4BK2EV8v+tQfqMXnVOuDlcnjrSorwuFu+Idl
	WjIjG7b/oA3NHru86X6Cxux1+pEiKyDOPaCZn8It2JWFiCnQwXPOFm/sG4CUxby0Cazc42gI15NBb
	+f2LITkTWJh1BBrh0O17ZmL/4KGX2pmrmLKTZFsFr5KN4NGbCqHumu+pt94pYn1rbCIYXJ+oNsc7g
	uTrKF1g0Mf5HtNqpgLreuzgvM2T2deqr582LRyMGUIFA3XEBdFiUoFNVt3+nsK8kk8JW9KsuaxTro
	tXICC+nG2HMUKlICHdow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc87b-0072pI-LT; Wed, 06 Apr 2022 16:03:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc86H-00728n-Vv
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 16:01:44 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nc862-0002Pq-2c; Wed, 06 Apr 2022 18:01:26 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH v0 01/10] drm/bridge: dw-hdmi: add low-active PHY reset
Date: Wed,  6 Apr 2022 18:01:14 +0200
Message-Id: <20220406160123.1272911-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406160123.1272911-1-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_090142_075834_AAB5CB58 
X-CRM114-Status: UNSURE (   8.16  )
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

Allow vendor PHY implementations to reset PHYs with different polarity
than the current Gen2 reset.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 7 +++++++
 include/drm/bridge/dw_hdmi.h              | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 4befc104d220..7600f26aab27 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -1365,6 +1365,13 @@ void dw_hdmi_phy_reset(struct dw_hdmi *hdmi)
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset);
 
+void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi)
+{
+	hdmi_writeb(hdmi, 0, HDMI_MC_PHYRSTZ);
+	hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_PHYRSTZ, HDMI_MC_PHYRSTZ);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset_active_low);
+
 void dw_hdmi_phy_i2c_set_addr(struct dw_hdmi *hdmi, u8 address)
 {
 	hdmi_phy_test_clear(hdmi, 1);
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index 2a1f85f9a8a3..9b3d52a1e62a 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -190,6 +190,7 @@ void dw_hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
 void dw_hdmi_phy_gen2_pddq(struct dw_hdmi *hdmi, u8 enable);
 void dw_hdmi_phy_gen2_txpwron(struct dw_hdmi *hdmi, u8 enable);
 void dw_hdmi_phy_reset(struct dw_hdmi *hdmi);
+void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi);
 
 enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
 					       void *data);
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
