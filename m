Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52CF4CA5FFC
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 15:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HFHwEW8QPui04n2f0TQazqN7ERUUEs7lGRVEJ7Z446o=; b=iKxY7IpNBvsDfr
	11rP1f+19t+4l4XyFp3dhEgU7it4hAg8I7kHhEN+edPiKXSiuNpgj58MJVHqC26Rm4+0sfB1nZqnk
	zLzMKU/i2uXRrF5qbSBp5wMGS/2mAeFAhBPI7jNi1P/hx1ORDfjarbNUUNyZOyweOwAhl5zjp+dD/
	20LbFBlbL84o5wIEd99eFjFIvjxDluLrNX8hmYPU8KnPXk5BIXFRnK9T8RoF/xZx/cnYnl+ZLrwnO
	YQMsjhEriHQAbTuL31PhKBc/reNDBbLrUOGiwAgEF1QICn5n/p7P3AuDeI9EEu37ggXnNpRJFtZkt
	sOfoUtm+SDy0ZX7vxXjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDkwE-0000000GnGe-07YO;
	Mon, 05 Oct 2026 15:49:14 +0000
Received: from mail-wr2-x0f.google.com ([2a00:1450:4864:30::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDkwB-0000000GnFc-27dV
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 15:49:12 +0000
Received: by mail-wr2-x0f.google.com with SMTP id ffacd0b85a97d-48b05fdb2f9so1583202f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 08:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791215349; x=1791820149; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=xDA7SE8Bs6IcBW2j1ppM+dM+f01g1/9YMIx6NP+5lIU=;
        b=hBYxlDBCyt4TuHuzRK8C/FoLANfoS22RWRd2DaEWB2Bk4EeGsn+uKeaK33xchO/opA
         8KxJRF4CMiWuMGjhf+Ay24M3cMZ2AI89DUi4Nrop/mOQjctqkMSArRTkkZYUNBzo27vZ
         J7u8UMyZxzWfJV5mOZRgOAQf+0d3GF/nkdh6pnKY5xc46GFQBgytV02mJ2hh5Ox9N6jp
         QFZKooVc0l1yV+DxB8iH6iN/Ng3IIw5gYfnk95zwohiJojEr7o6xfKIIM0f4FQCaXpd/
         YDMMPbLZtrK6ddRXRK/Y+dZYvB0A7vX8V+nfCVJQ+CXkLvQ2R8knwNO3d4fUR4cgzZbP
         aycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791215349; x=1791820149;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xDA7SE8Bs6IcBW2j1ppM+dM+f01g1/9YMIx6NP+5lIU=;
        b=lPtstIvj9sojYA2Xs63xLYLVIX1EZENT/GDHefDiVfpMtJ2leAAYLyxy8cBnRr9Vnt
         R3sA6qh3Ocx74d/7iynmq6C6LilQvyKAV/GkZbLZiuqdaODNfjeFi3fx2m7+L/RjbF2J
         peUUcg3DfGpCW1+6XSKyvDXlgqW1G9ln/RlAHzvQNTfsZYboI06l9Ew3tZ5IMmdLXATp
         CbGwj2sno0d01zlFJ9k21kDB71/a6jQrV9PyeW41coNCA2qOCpBpy3U3u+b5ZF4+ODp1
         NZ9zurbsgw/c12vKXjvX/mIJTwt4G1fl+BwEIgYxWBQ+iDwEOKyTyvcIqhgciKpO0GTU
         vTwA==
X-Forwarded-Encrypted: i=1; AKwUvBy4qjieSNnvy5NTc7sMa/9g4k4Jdk5xifMyEvAO3xA4B0E2GyLfL1o1mPR0Xv3WLHBt1Q+oxwjqVp8=@lists.infradead.org
X-Gm-Message-State: AFq9FYLVjHoC8cs2iCsJfdsjMbnWdk6GjQ7QkK7MZXFRd9HHNsjzE869
	4o7MIzljLAowq0fQM9P0mfkr7EZ6/pX+4ALfUqTJKvQheI2VZWNiLxzH
X-Gm-Gg: AYBFou2YXe5QrIGbSSWhu91q1bKbUSyel1mXJRrDj75UwZSWeFEHwDclcX9foiA2VFZ
	IPx4pgkVnm+CAADGuwW6z9on5Fe26tap1jHBiJtGMj668QjJ2TbVwkctCNOtA4cApBMQGEtp67a
	wPbLzG8sWc473FvWzVMN8WvV0YSkC8dM4w1hSOberF4WKT6JHefHnwHa3MZz2Ao+A61Lt+XmI4Z
	n17Pg+zO2dk3RHtqW9pxagcgHUqIJaz22WSDJFfrLP4weFEh1klPSr0LPppbZn7IA4zPKCoft9l
	zS2r/A08pVn8ZFO2hV/wtp+Aia0fe0gn+eRKrtJIlJlQ3Tpip1lbT9zoE7A2nSmaPTzZg75/Nfm
	kisQ7mPIfOawbhKtQW1c4EzD7o79xDjo0wo+PD42i8Uf/UpXYO7vVA4uoVLiBW9uCYxEXieHZMo
	RmD/Yr058RtE/Qmni12whLRhM3TotLNYb9WnZ2LBpoaCiXA2eUpq25zj+lSAThC1VlSTmahSALQ
	CKKGf6vUR7QCE5ZZPWtgOhDtVJYLIyUkMT07UR8/0h8Hgb2aQqi8vQgEiIo6433Qm4QqXmjsSet
	ReqYzvcM
X-Received: by 2002:a5d:5f42:0:b0:487:27f9:82f with SMTP id ffacd0b85a97d-48b1271aaa4mr19605297f8f.36.1791215348860;
        Mon, 05 Oct 2026 08:49:08 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:19ee:7722:1d2a:b728])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c622704c1sm3714976f8f.10.2026.10.05.08.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 08:49:08 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Keep OTG VBUS disabled until role is known
Date: Mon,  5 Oct 2026 16:48:41 +0100
Message-ID: <20261005154841.168047-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_084911_563860_DA66AB56 
X-CRM114-Status: GOOD (  14.93  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Prevent the OTG PHY from driving VBUS during probe, as the port role has
not yet been determined and doing so can back-power an external host.

Keep the regulator enabled while disabling its physical VBUS output until
the port role is established. If disabling the hardware output fails,
release the regulator reference to avoid leaving the regulator enabled
after probe fails.

Rename the regulator helper to reflect that it acquires the regulator
without enabling its physical VBUS output.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 26 +++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index b5ba751805aa..08db619a43a0 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -1114,8 +1114,8 @@ static void rcar_gen3_phy_usb2_vbus_disable_action(void *data)
 	regulator_disable(vbus);
 }
 
-static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_gen3_chan *channel,
-								  bool enable)
+static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive(struct rcar_gen3_chan *channel,
+							   bool acquire)
 {
 	struct device *dev = channel->dev;
 	int ret;
@@ -1133,15 +1133,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 		return 0;
 	}
 
-	if (enable) {
+	if (acquire) {
 		ret = regulator_enable(channel->vbus);
 		if (ret)
 			return ret;
 	}
 
-	if (regulator_is_enabled(channel->vbus))
+	if (regulator_is_enabled(channel->vbus)) {
+		/*
+		 * The internal regulator is enabled above only so that the regulator
+		 * core holds a reference to it. Do not drive VBUS until the port's
+		 * role is known; rcar_gen3_enable_vbus_ctrl() switches it from then on.
+		 */
+		ret = regulator_hardware_enable(channel->vbus, false);
+		if (ret) {
+			regulator_disable(channel->vbus);
+			return ret;
+		}
+
 		return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
 						channel->vbus);
+	}
 
 	return 0;
 }
@@ -1151,7 +1163,7 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 	struct device *dev = channel->dev;
 	struct regulator_config rcfg = { .dev = dev, };
 	struct regulator_dev *rdev;
-	bool enable = false;
+	bool acquire = false;
 
 	rcfg.of_node = of_get_available_child_by_name(dev->of_node,
 						      "vbus-regulator");
@@ -1165,10 +1177,10 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 					     "Failed to create vbus-regulator\n");
 
 		channel->otg_internal_reg = true;
-		enable = true;
+		acquire = true;
 	}
 
-	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
+	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive(channel, acquire);
 }
 
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
