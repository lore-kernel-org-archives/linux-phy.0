Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C18CC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfESUCBbIFqm9vdTZbjyHkxmLD0+aUb4H+1IbJxmeek=; b=XuhMcVBtMAdXUz
	CP4ovHgM5n5zN8rpFRG9FVmXUnWZqCdnmau7Fe7rnW/8BKcTXTCSxr9+zbOda669aTiie4ldTGpXz
	FKecIwxDoScJxPMVzH9IIcYKU9W0kIUfSfuhwQAFtZ8P28lUmVFVNuGLUKCrTakhpszlTcItpjOyG
	tzvXWENKefzh/lAqqkwZh1hoIxSK+Do3sndhKuAEvFC20g9d70YRLKXuqPiKOY+0Gr5fCHfpgMo/Z
	HkcqcRf0Q42ZH3cVJJuAUqDkMQLDi/Izs6RqLHkLqNJYwmgTxome5CuGSTi47HaF+M6oBCqYkhxTA
	XQktcHtSMwhhMC/iGj2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGR15-007Kf1-Rn; Sat, 05 Feb 2022 19:46:39 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQEb-0070Qq-Gi; Sat, 05 Feb 2022 18:56:38 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 28411240018;
 Sat,  5 Feb 2022 18:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087391;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sSPt7u1+30zfQR7rOTKR21cnm8xgbGtvIXTidlwItMo=;
 b=Be/2jLdRiGZRoUQ4CBH+WEvtTYMh6fSdQH9+wkanouzfRkK0qP89cEde98YfM87C8G30kq
 BkkL0WDWJEPi5lIG3w/bXAm2U4OXfyEn1yGjL4Rn2d75ioys2XhZwJ2V9bSva+BhHLP9hE
 Oy9nqiZqA0aDaElFIEBe7k59XVXfw0Ja1Hv6VYoqeRuS7m6dJQ9HeVwxl7fuklVHQiTWT3
 LMI9L2S3TO8S1X5ibfpUXfxybZa9H2vpW+o2KJpUeYmNrn0cIvp8B2iNr35KkYZHMTCOrZ
 XrNBpDwwNc8WjMzAswGqQcCmYN/FML8/+8ndeaKw36y7NGm3WQ/vXuQK6xtlTQ==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH NOT FOR MERGE v2 66/66] of: Mark interconnects property
 supplier as optional
Date: Sat,  5 Feb 2022 19:54:29 +0100
Message-Id: <20220205185429.2278860-67-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105633_769524_F591D929 
X-CRM114-Status: GOOD (  13.10  )
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

This illegitimate change makes it possible for the sun6i csi and isp
drivers to probe without a proper interconnect driver available.

Without this change, the core will wait for an interconnect driver to
probe and return EPROBE_DEFER in our drivers. This ends up in these
drivers never being probed since no driver exists.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index a3483484a5a2..6f1b74a2f568 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1352,7 +1352,7 @@ static struct device_node *parse_interrupts(struct device_node *np,
 
 static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_clocks, },
-	{ .parse_prop = parse_interconnects, },
+	{ .parse_prop = parse_interconnects, .optional = true,},
 	{ .parse_prop = parse_iommus, .optional = true, },
 	{ .parse_prop = parse_iommu_maps, .optional = true, },
 	{ .parse_prop = parse_mboxes, },
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
