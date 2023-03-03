Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D458FC7EE33
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 21:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AORjsmwXrCBiJt4DE6JlpMcyL/KHG9QSECanApfhEMI=; b=rkXVDaMfekcmCi
	996i6AdAvotjJSQvUxYeGkWCKl4gaCUtfSp2INSu7wuWtQNDji1Jgm0gcPFuMAiEriun9IF3CwLOZ
	sUdV/YfKY+oAMYKSl5Z328gmFiwj5WKWCvJX6Ror2azLos+SiL75fnEEkdazv2cLnMNbbBJpEp7Jv
	t00MYjjud+mcaPl1/B5DqCOLrO8eaVgaVPVe0brvh6R/4L33/JmEAZAXMhyowrycpVeMcHBgsHWJO
	lfaEXXPE3ZWggItHc+gN3Y2M+xbQKg7BwwTqpGDsgPXB7bQxHgYfmgP4hV6+kB0CNuTLLQ0o8OdSM
	uZMBUTWsKu1jY2DNdjGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDFZ-007YOg-1o; Fri, 03 Mar 2023 21:47:37 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDDL-007X9L-GO; Fri, 03 Mar 2023 21:45:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2ADF0B81A12;
	Fri,  3 Mar 2023 21:45:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDB7CC433AE;
	Fri,  3 Mar 2023 21:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677879917;
	bh=hMbtTHtbpXktOMar5Unaj+/vzJDlRLP8YZo1+weNIi8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CqW67Cf9oSEDbi/UVAQ+K54ZKES+JQ4TEWKUWW/osvA9gP9ClZtVh0+OjEo/eN1/W
	 cH+5cMCV+XdHluZnpLxKZBl0PFquWh8Lrm6D0PcFGYK6gzZbq1/1/BcVEvF7uVasPN
	 BftmMo15ZNKcqVcHWwG7FWcEEF7tGSIb0VPeFO+VgqN4Q+PIwGS29+dLda3fqQG4BS
	 kmMTZhC4msdfqLUSky1ZVK7CE22HCYgnNIEi/0dUyxRep/m9leh2AxwyQGQearzauf
	 zSnubUe6mzoEzlP7PTLNCw5cKqN6TQiQGnLLlbnIJtkya+sCMMdu/KTosMwC1jeRi1
	 Lok5c9pfuBwoA==
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
Subject: [PATCH AUTOSEL 6.1 56/60] phy: rockchip-typec: Fix unsigned comparison with less than zero
Date: Fri,  3 Mar 2023 16:43:10 -0500
Message-Id: <20230303214315.1447666-56-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214315.1447666-1-sashal@kernel.org>
References: <20230303214315.1447666-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_134519_723093_434490BE 
X-CRM114-Status: GOOD (  10.93  )
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
index d76440ae10ff4..3a594b8cbe1ab 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -808,9 +808,8 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
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
