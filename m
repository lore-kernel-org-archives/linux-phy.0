Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8DD2CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xtiEDCNJUBMytR27N+UqrBCccgboS0/kxmYUwDclj8M=; b=Yh5t8ba0dAefRF
	WKBEojo58KdY7zui2Wkty71fXUvw+KVJ9FYOhepw5zbgKWm4VoSuRNpqScoUS5IaUiDrqshgxJi4c
	yrhWknIxppTNK0qboWtH8b04imefUvB6CxQX5DForkFa6rSIyogbjzaf9PgiKLOfJb0mVBYyVJzAq
	VsX/ob2AVaKdSx4JdwRFDVKjDU0WT1qcLEGLW9ZM6q8v4w9Hs+g1YNKMEIVfgsprWMZ51TXERXGHQ
	K/uvM0/yek4MaP/cHMnefeFLQ6r6woBKBW+Y6xGcH/3WEUGRm/1XpLPfY1MAk4sE1/mYSXVkeFIrN
	dVHjZol4aOb4fyUwcrhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPICq-00000001F5L-1Yy9;
	Tue, 19 May 2026 11:01:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPICn-00000001F4j-13u6
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:01:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B88A142D83;
	Tue, 19 May 2026 11:01:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6C40C2BCB3;
	Tue, 19 May 2026 11:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779188504;
	bh=6F1AdzStm/U42XIOjCUFHRPL9fqiYkEcEiUYnwGdFjc=;
	h=From:To:Cc:Subject:Date:From;
	b=l43SHBvMbqzKt6RR+S8yAV3wfuUowrIaGqaIuo8F7Z8lWOjJ6QP2WvMnpiah2JEGi
	 9F5TGWyf8pB7AW3PffUysOpWo34NjVsSp4HTeM5mIv+CT1eh0kb/R+8bY6Eh69qz1U
	 SMstQkQ9RhoSW5YJtHjZ2Cxfw0g7dWCsm7Cv5Q/MwXlchBpzD6QL2LHEXTZlwXHFn5
	 4kyPEI6xTB1+rlV2PxGu9XcXQCXxIhguGtKI20Ghz4L60y9+pn6gqRr95dgKslvhpI
	 15scAopbMqmFR6jgsdIhTfvSdhyrJgLpIXISZWGzedZivghMWI6xwuAeK967jqvGaN
	 sQNiiGit7yhvw==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] phy: rockchip: inno-usb2: fix missing kernel-doc
Date: Tue, 19 May 2026 16:31:34 +0530
Message-ID: <20260519110134.282428-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_040145_309067_3A4DF95B 
X-CRM114-Status: UNSURE (   7.06  )
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

Commit 2775541de058 ("phy: rockchip: inno-usb2: Add clkout_ctl_phy
support") added clkout_ctl_phy variable but missed to describe it,
leading to warning

Warning: drivers/phy/rockchip/phy-rockchip-inno-usb2.c:184
	struct member 'clkout_ctl_phy' not described in 'rockchip_usb2phy_cfg'

Document this variable

Fixes: 2775541de058 ("phy: rockchip: inno-usb2: Add clkout_ctl_phy support")"
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 133cfd6624e8..120b4a7433c3 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -171,6 +171,7 @@ struct rockchip_usb2phy_port_cfg {
  * @num_ports: specify how many ports that the phy has.
  * @phy_tuning: phy default parameters tuning.
  * @clkout_ctl: keep on/turn off output clk of phy.
+ * @clkout_ctl_phy: output clk phy registers
  * @port_cfgs: usb-phy port configurations.
  * @chg_det: charger detection registers.
  */
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
