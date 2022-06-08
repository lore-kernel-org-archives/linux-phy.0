Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC98C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 07:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/Am76t1DRvAFm3F45v+Sk6yWWNW08eCeKXXtSVhIC4=; b=Hcypc1XB7R4eKu
	Jtb67Q41gqB/jUL7u3Q+kbz7KWq0IqhIqcy24ISLb+fWoo/eXfjh/B3+ciDL+ha17YIvIlAKhPmrd
	NWm59Qi/iZk2m3Dxm1q9rkGLRH+yBi51Ny1pJUK2P/+b5zuEiyKG+s5GlkguHBk047ehEkf539AYx
	C9pjNIFB8cfq0p49MMc3r55dNOoOJfgDIxUeRmZsK2djJPOR8S7MioWwaIa/2XnLUP0t9RRIte4Iy
	8bzTPLH0uwx1+Z3EWjRClhEAcKuyFaSs+TJ6PdAbqeS3AhZo/OiCP8RNPRm4MZMvNbRKkpi+qfil9
	XnNsTZ/2Ld9r0iw8kkKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypld-00BPnx-T0; Wed, 08 Jun 2022 07:06:13 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypl1-00BPTf-UA; Wed, 08 Jun 2022 07:05:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1654671931; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=I6iTAv7VV57zQvIZ3qbDQHUVA7U6jmANnzJSSF64qN7oWfgcz7JbbfFFLFK+LkpJN4ukb9IFd7AhKhRT+cqittQNJMgolkveshF27qSCcPZwdGQv0WO16VD7RP7JsWGsbQAGh40T3OkFFo4BDMEYbg7nMdKcSsK1+KE4CQHAgz8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1654671931; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=d2+L3oYy7eNvjEgKjDZKUUUnCobv7HCrKGgG0zEy0dA=; 
	b=PblKKECZ66RYVO2Gb+iMUgUTDlYNeRJ/xFs6lQJSS5ogy8vfdgGmO0VE8lLq7CA1giqjBC2T37447FAlzm6KnrBcA+tMBoz7jzHzbxNhU+29rKMlk+cLU7ssLJHsiCSWBWHcPvSrXswx/asHMucKYj1N9yq+PqIsi+wuW86DxpU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654671931;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=d2+L3oYy7eNvjEgKjDZKUUUnCobv7HCrKGgG0zEy0dA=;
	b=HIJ6fzQ5H58U2YX9pWAZ1Gyp6vbfNYSNNIPe1ojTHRtMXayGuj0HC5OhtsAljhOj
	hu6MZ8TQh6w6+EGG8zHKij+HY60jpnGmU3ikImCWiFy/VoCZeiVMhqd2EfMBxUc27xN
	8nl4VnmgKHLo5es0GEz9sj2TqeatBaQXh+P4dLP4=
Received: from edelgard.icenowy.me (59.41.163.66 [59.41.163.66]) by mx.zohomail.com
	with SMTPS id 1654671930603545.7452579301226; Wed, 8 Jun 2022 00:05:30 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bin Liu <b-liu@ti.com>
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 4/7] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date: Wed,  8 Jun 2022 15:04:49 +0800
Message-Id: <20220608070452.338006-5-uwu@icenowy.me>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220608070452.338006-1-uwu@icenowy.me>
References: <20220608070452.338006-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_000536_059425_F6D22AED 
X-CRM114-Status: GOOD (  12.00  )
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

From: Icenowy Zheng <icenowy@aosc.io>

The F1C100s SoC has one USB OTG port connected to a MUSB controller.

Add support for its USB PHY.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index d5f3b42eb8ce..f6592c8d611b 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -109,6 +109,7 @@ enum sun4i_usb_phy_type {
 	sun8i_v3s_phy,
 	sun50i_a64_phy,
 	sun50i_h6_phy,
+	suniv_f1c100s_phy,
 };
 
 struct sun4i_usb_phy_cfg {
@@ -859,6 +860,14 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct sun4i_usb_phy_cfg suniv_f1c100s_cfg = {
+	.num_phys = 1,
+	.type = suniv_f1c100s_phy,
+	.disc_thresh = 3,
+	.phyctl_offset = REG_PHYCTL_A10,
+	.dedicated_clocks = true,
+};
+
 static const struct sun4i_usb_phy_cfg sun4i_a10_cfg = {
 	.num_phys = 3,
 	.type = sun4i_a10_phy,
@@ -988,6 +997,8 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	{ .compatible = "allwinner,sun50i-a64-usb-phy",
 	  .data = &sun50i_a64_cfg},
 	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
+	{ .compatible = "allwinner,suniv-f1c100s-usb-phy",
+	  .data = &suniv_f1c100s_cfg },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, sun4i_usb_phy_of_match);
-- 
2.36.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
