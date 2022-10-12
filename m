Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87A8C43217
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 05:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDYzNvnuNVNKUeFOF9Ccg1sT5mEAZVFFhmjTlz8F/30=; b=Go8cfCjmoFAh+T
	m4exk3AehqsXeb+gAgT0l+39h7PC2UrWCAHncd1Lx4tAxFx/Gxf2nSFRBVHif+JfRyz5Jxt7fWsds
	Y96Ijz+GeAbaeUM/mCDoBaxRJnQ0jP1BlnC0NPzQkwUZT68FH2LyRUce5FALTFXH1lBsQH3dUiwz4
	4XNUZq7NnHwq0BU3zyPkQtkp4m3hYF63DrucXWuyozka/MSU/1nM9Pr15tTD4w4FIyTgodLErI2SW
	vQ0+Nyty7gPBrYr2mD6ngMd/R5jaewPY28V5jGj18P3aoX/k5EnrbNavhu5lJsexZawC2mR74TZjJ
	s3z2HtzvTWM5t/gukoLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUkL-006v30-0g; Wed, 12 Oct 2022 05:57:37 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUjn-006unb-RC; Wed, 12 Oct 2022 05:57:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665554218; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mloh0ibFlg0M3CTi/pTvKnlTWyaVPFK9P24woQAdz2W1dNF+Slbbl4W4xeaO2y0xZ6oj1KhRyG8nlBdMadeQONk2+zWfxH2ZEInfMgvLC9cKPz1vr3dI/5YUWfQ44xaBSmJdac0uA5SHuq7xE7Le4p/jOHi266Lqi7se0ahruqA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665554218; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=df6Xu76n1FVOURXTtgq2s5GbTnkxSycxj4BBQsHU8Ho=; 
	b=JXlybDcYyYJkW/Oi5Twp4tBT8zh/fHLrFLajiIuNXErTo86JHDhbZYHT+Ej8mFRLwuXshvrWFQWSQHp5LW4kM6E8W1GCykkxZZdCHwCZC+XFMQeULZyuU0miaDzgBgNIrwiJwJjdeC+2rsvZfWVDDXPa4wMAanoaimQLYWKbYLo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665554218;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=df6Xu76n1FVOURXTtgq2s5GbTnkxSycxj4BBQsHU8Ho=;
	b=T0zTCB12iNwCpnSb9Z1v53Zdlr7y0/8yyBKrZWVGQrezH7ySYm1ETrPmlTHmYuqW
	QbCsr6XZNbNY6mDX9yPRMKm8NgyIdLqsgG2pBln1YK2BGrccyPVrNwQB8xXuPU02Egt
	bNXfXbcBWewpjf4od/srHWc+/pB2VObj2NOL3CWc=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665554216256518.0177473419566; Tue, 11 Oct 2022 22:56:56 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 04/10] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date: Wed, 12 Oct 2022 13:55:56 +0800
Message-Id: <20221012055602.1544944-5-uwu@icenowy.me>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221012055602.1544944-1-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_225704_100489_C4B57C21 
X-CRM114-Status: GOOD (  11.73  )
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

The F1C100s SoC has one USB OTG port connected to a MUSB controller.

Add support for its USB PHY.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
No changes since v1.

 drivers/phy/allwinner/phy-sun4i-usb.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 3a3831f6059a..2f94cb77637b 100644
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
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
