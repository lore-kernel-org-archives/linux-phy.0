Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C23FC19F32
	for <linux-phy@archiver.kernel.org>; Sun,  2 Mar 2025 11:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lpiKuVN7F/xG3EWdxN5READoq54Wgdskt2DWfHByga4=; b=dJJeGiByeYvA2Y
	d1Si1l4bjvXrIWVZ7Psk3DRNUU67aSFr6LclCW18NHZE4NpAUUEYHZR19yEyXg4fylw+0YU2gnQ7o
	zgy0yNrM977dTydJlE9hHKFNrkIU9Yio0rFqM8Ob/cqib63lAMNUZsSspO3qq4qeVskEwShqzqhBj
	Ye2hH9tWfM46BXfhuempQ8D39ueZ29sVge0v/2tK4OkjN+UzAn7DzeIGE9tpinoN//KzIcO7rfVjG
	VNVC7RUhIR9ti1WwFbGNOpx9VHMslmkLwq/+eudU1duyAXZcsMIF8dayZE7jQgUkoZEAzkNDqMw5W
	XlI9NaQ6gFTNc1yf195A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tohv0-0000000Fwfi-45Rl;
	Sun, 02 Mar 2025 11:55:38 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tohsn-0000000FwQS-1ziM;
	Sun, 02 Mar 2025 11:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=SmPQB
	lqXrmfR9VtbjijOcKCFBcU1W7mI69iXxUDsho0=; b=F2p21+GyzvJe09w2IK7a4
	NedXS8U/++ZwCduRtm40dyKiUWLzZprG0uQyIS7ZWKqEI8J9hyjienBBlBYnPKwq
	vhgErnrTOaNE2+eRy35l91ButR7mFEhQ6/LyXGMtqheWwvB4BpfWLI0TdFBaO96Z
	U5EIETt8YFyhkgEWRvnxjs=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wCXDkqaRsRnKLAUPA--.50095S2;
	Sun, 02 Mar 2025 19:53:02 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: vkoul@kernel.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	frank.wang@rock-chips.com,
	sebastian.reichel@collabora.com,
	yubing.zhang@rock-chips.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] phy: rockchip: usbdp: Avoid call hpd_event_trigger in dp_phy_init
Date: Sun,  2 Mar 2025 19:52:25 +0800
Message-ID: <20250302115257.188774-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wCXDkqaRsRnKLAUPA--.50095S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GrykXw1kGryUGFW7GrW8Xrb_yoWDXwcE93
	WkZa4xJF4kJFsYy34DGa4fA34jyw4v93W8Wa10ya9Iy3Z2qan2vF93Xa17JFWUXF47Cr93
	Cas8ZryxKFy5KjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbsjjPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gwEXmfENlbwhQAAsy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_035321_935587_C061DE0A 
X-CRM114-Status: UNSURE (   7.23  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Function rk_udphy_dp_hpd_event_trigger will set vogrf let it
trigger HPD interrupt to DP by Type-C. This configuration is only
required when the DP work in Alternate Mode, and called by
typec_mux_set. In standard DP mode, such settings will prevent
the DP from receiving HPD interrupts.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-usbdp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 5b1e8a3806ed..c04cf64f8a35 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1045,7 +1045,6 @@ static int rk_udphy_dp_phy_init(struct phy *phy)
 	mutex_lock(&udphy->mutex);
 
 	udphy->dp_in_use = true;
-	rk_udphy_dp_hpd_event_trigger(udphy, udphy->dp_sink_hpd_cfg);
 
 	mutex_unlock(&udphy->mutex);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
