Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0D61CD4F3C
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 10:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v6h9dG8AVIbV0zF3Cbdjdw+75acG2K4RSEVMtAa1/wQ=; b=lSbf62RkqWz4Bg
	x53uizzdCzJhC22GKpMNh6CWSP+zbf5b3pi4J3w0au44PeZ/nUr+Z/gxkdogMHv/WGCAcuKzQ4qdR
	youiM+iQ1WKejmscimTEydirS5lt+OyEF26Y9A3y4RKLD9NlNwWne6D2YVKPzup0Hlj5IRy64zlIL
	AITZy2xPSTeLnR7SEHGZmFo2sAM+YYq7ODbvjgYIk4LjweXI3NfpujDJv37x388HzIzM/381xuj8l
	ljgAHTu73P3M7A/LXoxoo6KVsPbxwFJi7gEIakrTqP0QWdig1R2103Dy4E4+DoAaLXHQeHRk5YmlO
	IhKbZ4rhFl7UNH1jf8WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPeB9-00000004Ka9-1cWP;
	Wed, 20 May 2026 10:29:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPeB6-00000004KZ0-2boN;
	Wed, 20 May 2026 10:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=MnYP6f73aGtbiA5CWu55cNzYgg2OOTJQnEwonxCOQ5o=; b=q0+ZGyqN/RFw7NNHegiXvuzzTL
	qfnKHMjBwldMq1AMH5zE7YT3Oo2GluM9Kqj/jZ36OPlp9FFOYq4+W8vFmdBr4TIquSwtZsHlAc/Gw
	qjFa97uj0P3f3FNetI6gcYxxRlZtWZ7sOP+wtrWbXfK4UhTdMJt+AVnls1NR4MExjxk6vpqjM6MbA
	hbA6zPcI/HHo1uBn0ybcGO0g6n1aNtCXdvO+wSMi/iKJBl8Ar3cb9bK59chrdJgc6uX8brdMG/WBm
	+loQO9t5SGKFtHOrsha64RKG81xvE4jZTGNMkI8stCRbRQYkf6ds5mBIjv3vHMn7MAmzbxZoQwZWn
	6A/TfVvA==;
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: rockchip: inno-usb2: Add missing clkout_ctl_phy kerneldoc
Date: Wed, 20 May 2026 12:28:59 +0200
Message-ID: <20260520102859.1357411-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_032928_723107_BE3EC943 
X-CRM114-Status: GOOD (  10.94  )
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

Add the missing documentation for the newly added clkout_ctl_phy field.

Fixes: 2775541de058 ("phy: rockchip: inno-usb2: Add clkout_ctl_phy support")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202605150315.MyBNQOPB-lkp@intel.com/
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 133cfd6624e8..7d8a533f24ae 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -170,7 +170,8 @@ struct rockchip_usb2phy_port_cfg {
  * @reg: the address offset of grf for usb-phy config.
  * @num_ports: specify how many ports that the phy has.
  * @phy_tuning: phy default parameters tuning.
- * @clkout_ctl: keep on/turn off output clk of phy.
+ * @clkout_ctl: register to enable output clk of phy, when set in GRF
+ * @clkout_ctl_phy: register to enable output clk of phy, when set inside phy
  * @port_cfgs: usb-phy port configurations.
  * @chg_det: charger detection registers.
  */
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
