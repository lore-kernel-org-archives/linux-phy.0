Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3358C7EE30
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 21:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjnNMB2iXFVQNuub2Uxk/50dNNG1VKiwqpxrn65wFwM=; b=bFXtEQGSpPyccg
	9/u50hwaMQuZ68Kn2coYqayQVRqBjeryoGEVsnhh7kqFWDcS4Al1wMb+IcGok61TanCyh5gOmjssK
	TgMpzprRCxSKKyDELVn1XdRkOzsrDYsSMQe+LJrMjF1MRv0PeDAwX1yQhYfyU1g3MxXnIhSo0Hp4J
	/jkVNuDUiFubhRpYdWba1DJcwl74cDzFkm/M0gY5xsEyKo8L/vaVH7+CxkXf7h/Sjfz6K5y6RpOi4
	owfWM732MzhbEps3mwosi3rG56ALbNHyEjMfx8TuHFVCa2At8CZPEyy+dMG7l6YK/tMBi6Je5/zCR
	W3RRnsgVwgjOsrw7SLcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDJb-007aqF-Ph; Fri, 03 Mar 2023 21:51:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDHV-007Zb0-Gk; Fri, 03 Mar 2023 21:49:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id ED8706194C;
	Fri,  3 Mar 2023 21:49:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5802C4339C;
	Fri,  3 Mar 2023 21:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677880176;
	bh=3yGipkpIGv9K2wFPL1P5L0Ahphnp0zM8j8TTRic2RUI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tQLhBwp1/npZDW618DPnlBy0D/Hnr1jz0Zal/ii4rnDW7K1kVnDjkGgu3TW1Z5krX
	 s4h6rSn69GiC0JET9+TfR4nsx7hCJSay1UK7Fq2/2VUt1ebAmdsLFTZ1cPNvlISHZq
	 flpiCa2r9C8/jnYzTrrXHEbjzTG+XmE3IYzAHdEv/qZEJau/CvN4Ah495fLCugvBTC
	 nRejrkaVWfdh4GYW4n8ggbzemBamMJw7ktwdv04tBhaTMTRNnEYzIV+Hx6b3q6GsCJ
	 XVRKpsVguIqoqA/luzaUMp/hR3B22UO+MBxEXUeubBy3VAO/1IvNSdETYYHOLnOFwt
	 7U6M4CNbs8/OA==
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
Subject: [PATCH AUTOSEL 4.19 16/16] phy: rockchip-typec: Fix unsigned comparison with less than zero
Date: Fri,  3 Mar 2023 16:48:49 -0500
Message-Id: <20230303214849.1454002-16-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214849.1454002-1-sashal@kernel.org>
References: <20230303214849.1454002-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_134937_654492_7BD361A1 
X-CRM114-Status: GOOD (  11.03  )
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
index 76a4b58ec7717..ca4b80d0d8b78 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -817,9 +817,8 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
 	struct extcon_dev *edev = tcphy->extcon;
 	union extcon_property_value property;
 	unsigned int id;
-	bool ufp, dp;
 	u8 mode;
-	int ret;
+	int ret, ufp, dp;
 
 	if (!edev)
 		return MODE_DFP_USB;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
