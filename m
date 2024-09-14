Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B368C021A4
	for <linux-phy@archiver.kernel.org>; Sat, 14 Sep 2024 16:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iyN3fy2A4a9u7QCiJPVzm/CAQT2U5+huaAHWN6iHgqs=; b=MbgAaPwnHamNuH
	W/IVWR7h13UdtygN8ZWSOCkT2i+SkiEJYcrg+O/pjRyPA3+f2JTp8DCOCZANnsOjOw14xP7+L78ap
	1N7qkNrJQT6AlVLCf1xlArMlQXE74VHzzl1567Pp+I0md5t+h26aof1goL+T7+AraAtQDoH2HUS+o
	26IIyeilD2sGLVse5+GIKERJYc3cjyjNtqP9aYa2VQDKBYCgtvrcx0aAxXNHRP8TnMHClknsr1V1B
	8BEUfLgoxksi9hnVUS8XgJoxuYnB5dpNN1FhZyOJq1hpR1hEXaw0snUk8SSCtCYBF4bk/SnmdCRU0
	YNk4zusGlv+BeLqSDJDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spVJT-00000000uoi-35i9;
	Sat, 14 Sep 2024 16:07:55 +0000
Received: from smtp-16.smtpout.orange.fr ([80.12.242.16] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spVJP-00000000unw-2Vil
	for linux-phy@lists.infradead.org;
	Sat, 14 Sep 2024 16:07:54 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id pVJIseX6XZkdcpVJIsxPA7; Sat, 14 Sep 2024 18:07:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1726330066;
	bh=3K7AI48QI2FbNvgXLRmIkhjGNi47KFNECaCiYHSyQbw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=dFLl+TTwv3G1/KfT9nw1cqsJ+7ILIdiOX2VCQMiLqGRNUDl1yEJEfSeqv7R6W/9SB
	 g+xbrqxkuVQzAs3hipVm8DwhRzdtN4Q9wvoHhWkZkFTrQG62/uNXrG/XDaMXOgWiYP
	 dKwmHdpvr82dD2gDK5iKCnn66GGNJnYZ2kgnatiZ8p6yspye+TEffcDPth75+dfpfo
	 k6Ruxq0iQjTzUaeFdSSK2RjgzrZGid+N3yGCKVE6GoDEXiBVoFOFLq+p4SMcVAuPak
	 cHn3iLLJmWR5sl9GTOkXO54JkPM9Gj2VnL0Rv0IDL1lMwezXTTMf3P2Z8TdAorbZam
	 6vfeMBY5QEhmg==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 14 Sep 2024 18:07:46 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: biju.das.jz@bp.renesas.com,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Sat, 14 Sep 2024 18:07:24 +0200
Message-ID: <290b25827e3f0742808940719455ff0c5cb9d01d.1726329925.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_090752_212708_F4D82841 
X-CRM114-Status: GOOD (  14.99  )
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

If an error occurs after the reset_control_deassert(),
reset_control_assert() must be called, as already done in the remove
function.

Use devm_add_action_or_reset() to add the missing call and simplify the
.remove() function accordingly.

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This patch changes the order of function calls when releasing the resources
in the .remove function(). Looks fine to me, but pm_ functions are
sometimes tricky.

Changes in v3:
  - Use devm_add_action_or_reset()   [Biju Das]

Changes in v2: (broken proposal)
  - Re-use 'error' to simplify the patch   [claudiu beznea]
  - Update the commit description to explain why it is safe.
v2: https://lore.kernel.org/all/4efe2d0419cbe98163e2422ebe0c7896b8a5efed.1725717505.git.christophe.jaillet@wanadoo.fr/

v1: https://lore.kernel.org/all/fc9f7b444f0ca645411868992bbe16514aeccfed.1725652654.git.christophe.jaillet@wanadoo.fr/
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 58e123305152..c8a3727f56aa 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -668,6 +668,13 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
 	return candidate;
 }
 
+static void rcar_gen3_reset_assert(void *data)
+{
+	struct reset_control *rstc = data;
+
+	reset_control_assert(rstc);
+}
+
 static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
@@ -686,6 +693,11 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 	if (ret)
 		goto rpm_put;
 
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert,
+				       channel->rstc);
+	if (ret)
+		return ret;
+
 	val = readl(channel->base + USB2_AHB_BUS_CTR);
 	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
 	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
@@ -815,7 +827,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 	if (channel->is_otg_channel)
 		device_remove_file(&pdev->dev, &dev_attr_role);
 
-	reset_control_assert(channel->rstc);
 	pm_runtime_disable(&pdev->dev);
 };
 
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
