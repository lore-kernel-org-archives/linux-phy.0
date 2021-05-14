Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50677C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:27:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 18AB961454
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:27:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 18AB961454
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NGcI0Lf/Sbai4O46YMkeHwnSUfV6DlxkOM3g0y+jAnU=; b=hjNV+Ixo9RA5IjDVNGF09Xh/b
	HUQ7H6hJI4Id0T+mGCY6Z5BPc1ElGniKcr1NOqJX7IWr47dYGh0WZWsoUgThZh+Ik3DhWUDDKiC6J
	Zusjwh7Vm1omOsAwOSY0+5dxzK5mTl5DVT6M9iAVSy/PbZb3996XImDgPVphrvw3iAAp74KL88z9y
	EzdKE0ftFfSkZ+bvus9e3ebJdh3kuHiA/Butk/zeeeGn1WGdGxrckt/ZEBdSdXeAnTIDZYB9U3TZo
	jcC8EgHmdwe8+tU8wb4jn1uPEEafawCO2uUR8033iAuYtsk9xF2HfksKa67gGDeGHDLZcgrZxM0hp
	CVa7TWXWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhV2S-007lLp-Gn; Fri, 14 May 2021 10:27:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1q-007lB1-6c; Fri, 14 May 2021 10:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=9qosxxRkbPLtQiOVsNhwEK6fg8bGFYtMyBg7cyxHEfs=; b=yqNccCy7hJgLOOMay+0s/RtBoW
 KelCVKHampA4PpFO/+ytn5PyvlRTTrLIZf8Ro+BCXL8J+vDUTQoV9TzgZ/8OmkwgeRZ5Ktd+Dn9Gg
 D0KczIZzuRBQTjzyaoKsyQ2ITIgcBx0wxbHQGPJt6RqhnSb4+G1JQ2GvRs//Xs4kYmpJ6sR9nUOwa
 F893h3T2MrGTNBB5HSCZUs9EUzE2gP5Y1hK1XZvkqTdWvrFSc9l2bWVJoPWc31eEZcFq4LdfXr310
 Ue6KSx5Hs/vgFfX/dzDTubIy2ldvaLdGZewugcAJyceql5Byr8gYMmobtXYP5mLtM8auKGAeBVqFv
 h/H7nw/A==;
Received: from mail.manjaro.org ([2a01:4f8:150:448b::1])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1n-00BtfR-IR; Fri, 14 May 2021 10:26:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 25F2422257C;
 Fri, 14 May 2021 12:26:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LK2uS5elxPUI; Fri, 14 May 2021 12:26:38 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 2/4] phy: phy-rockchip-inno-usb2: add support for RK3308 USB
 phy
Date: Fri, 14 May 2021 12:27:32 +0200
Message-Id: <20210514102734.2091238-3-t.schramm@manjaro.org>
In-Reply-To: <20210514102734.2091238-1-t.schramm@manjaro.org>
References: <20210514102734.2091238-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_032643_781223_D8772303 
X-CRM114-Status: GOOD (  10.66  )
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

The RK3308 SoC uses a slightly different USB phy than other Rockchip
parts.
This commit adds support for that phy.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 46ebdb1460a3..beacac1dd253 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1256,6 +1256,49 @@ static const struct rockchip_usb2phy_cfg rk3228_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_usb2phy_cfg rk3308_phy_cfgs[] = {
+	{
+		.reg = 0x100,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x108, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x3020, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x3024, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x3028, 2, 2, 0, 1 },
+				.ls_det_en	= { 0x3020, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x3024, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x3028, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x0120, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x0120, 9, 9, 0, 1 },
+				.utmi_ls	= { 0x0120, 5, 4, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0104, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x3020, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x3024, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x3028, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x0120, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x0120, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0100, 3, 0, 5, 1 },
+			.cp_det		= { 0x0120, 24, 24, 0, 1 },
+			.dcp_det	= { 0x0120, 23, 23, 0, 1 },
+			.dp_det		= { 0x0120, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0108, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0108, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0108, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0108, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0108, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0108, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
 	{
 		.reg = 0x100,
@@ -1425,6 +1468,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
 static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
+	{ .compatible = "rockchip,rk3308-usb2phy", .data = &rk3308_phy_cfgs },
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
