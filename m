Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80CA4C7EE30
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 21:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXCHHrHJDoG3WyCSxhMxNYm/aVjGkL2/PQPMUbxJnkA=; b=c8eQAcOfKnjMPz
	TMdR9OC7rUL33jF0mk1vCDPIQ+AvFG+BkylO7CjmgrlhuKAW99JftMedc5nMfH9vvvYA5ZOjHYA+N
	sKlAhJZqzbdzIvBcVzstcCzg8QUiDpRZRKWngF+quRnrdH+gJBlJH3D1ezpsDKkW3e3tfTEChWgDk
	6t6UusOO3q/3LSsWJt22YfNpBPI7q79NwbjtNStBkp3ZaJUhu1aIXVFkmMJtZK7bge9oon9bF/pIQ
	WWt62/4mWCkGf1k5M6mWfIfGfu1UB4bSmE0uFj9qZeq6WhsZk+OPd7Xz0qiJdSIPpWVKbrDquLjdg
	pKfAjnFkgP/62Nw4f3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDKH-007bGA-Mr; Fri, 03 Mar 2023 21:52:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDHy-007Zsm-Q2; Fri, 03 Mar 2023 21:50:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 553E3B81A34;
	Fri,  3 Mar 2023 21:50:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD7B3C433EF;
	Fri,  3 Mar 2023 21:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677880205;
	bh=rxUMK70MvtSzuzWFte5GlKjbu70mteuFz1d4DXEHADo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=niyo2FfoI/uigNoJv/tvFzviPhWihQwMjf9eKdX3gfNEm9gP+C9NBRL6JOfzuDYeC
	 znCoEfpoKyhpTzr1B6n1bPtxFIklaSiV+bya0O0QHIm7Z+dSnePTFxHpw2c4fTJzuH
	 +yBPavbU03KWs9HU5KGfxn5oFsQRnjrdqD/3Z1OdSNDXQWRXJJ6lu3UbD3BXElGOme
	 rsUq5z2FZ2DYVCa/EEz9nZtDndeX2rYA2RB8XAtVTLe+NhWFApOsMkCCSWtizVbKuY
	 P/ngRHSs6ISSR0eTz4if9gHlBzV8JLlwLkOIj7OMF2Fa+n3ljMxNcyfn8UA9VgQeKW
	 n9/VaIFdscm4w==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.14 11/11] phy: rockchip-typec: Fix unsigned comparison with less than zero
Date: Fri,  3 Mar 2023 16:49:37 -0500
Message-Id: <20230303214938.1454767-11-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214938.1454767-1-sashal@kernel.org>
References: <20230303214938.1454767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_135007_073415_17048513 
X-CRM114-Status: GOOD (  10.76  )
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

From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

[ Upstream commit f765c59c5a72546a2d74a92ae5d0eb0329d8e247 ]

The dp and ufp are defined as bool type, the return value type of
function extcon_get_state should be int, so the type of dp and ufp
are modified to int.

./drivers/phy/rockchip/phy-rockchip-typec.c:827:12-14: WARNING: Unsigned expression compared with zero: dp > 0.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3962
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Link: https://lore.kernel.org/r/20230213035709.99027-1-jiapeng.chong@linux.alibaba.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index a958c9bced019..6e3916424012a 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -645,9 +645,8 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
 	struct extcon_dev *edev = tcphy->extcon;
 	union extcon_property_value property;
 	unsigned int id;
-	bool ufp, dp;
 	u8 mode;
-	int ret;
+	int ret, ufp, dp;
 
 	ufp = extcon_get_state(edev, EXTCON_USB);
 	dp = extcon_get_state(edev, EXTCON_DISP_DP);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
