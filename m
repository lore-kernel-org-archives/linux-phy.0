Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08545C433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 20:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qc+dnt82C47AViPvlAdkBdiCOaVrXeMrx+ZxHHnvWxo=; b=CpP+7cJ09ZNJ24
	ay+BCiJ068N/ZEQY4Y1acMB0kATAUMwXiYXkzfO1lNZkz3LzAOGM+HmoOZGTFRwJh0Th1ls7ffOTd
	+skll5HTrZDoEUMFvKtOslC6WB1Y6qfBRuBAM2lGHEDwasHQlym2llUmY+mibH8fS0IlUQcg6O99K
	gBxHJnOmAi1U6dIvVO6pJauuQzxmccl+CI0/TMlvwkrkdbT+pdN6s+EMvVuTpU93XIvflwizTSxvl
	GoxQPlqBrSsl38o+SHpY8+yDW4ZA+n92jD824m+R18ZvaX9JXXHoyRRDe1hEL8XMbcaf5gW7+flsG
	4Y+RCcxzuTGsQSUrLTMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGRN0-007Q6h-G9; Sat, 05 Feb 2022 20:09:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGRMT-007PwL-3F; Sat, 05 Feb 2022 20:08:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=IwCRgviT0u5DtBQO/yQcASOzKr834ZC2fuBvztlCLa8=; b=EHBVsp17c9nV2M3H9MYK/p5O9q
 2KlUFHDB1hR8trYAoTM7pUguMKKQfrUmb9qeN3HvaRKV1iVp/6m+xX4iDi0aR1z6Vfu8cXevTnlVW
 pdA0nG6ivyU4CIjO0b4CQAXGk/fOQXFSEZAbNTvnS4FQ71utAo2rFFWMTbHXaSjh0AGxZEPIIvOuy
 XjMGdXeLL6uX6PUd4gBhZz3YxAYo3gtGQFKFjg4t8MPychF8wl91yrWEkmvbjvXRqnU67q4Jkf8eg
 xY7fBl4Kl8fy3eF0ANeWWBN4HjYhEbJic0JYPMb+tWHdK3cB6T/wiz1zUc67yslBxnozLYcV1zku5
 u7Ln2aLQ==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDu-007CJ0-SB; Sat, 05 Feb 2022 18:55:53 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 6563C240015;
 Sat,  5 Feb 2022 18:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087349;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IwCRgviT0u5DtBQO/yQcASOzKr834ZC2fuBvztlCLa8=;
 b=p2M2U8zDc7a1aqhPNdqcLFVYnVUOMRJEb9gIgP5eKAJkEcYIhWAqopPORR7at4OtXvBjvV
 1t67SWt+tm7dzuBNkoYvM+H1VipS/O7ihZe6cz1wyYLTmiiO6hSvhreJZsiqiH7eGrbPiP
 jlTnBt1+NnGwCyLYQ56XyhapxfV6XwD4iVbBcOOuEVbDt34372DSK1B3cgSwT44fAgzxIb
 tMxn5s/F53Ew5jQtlsclY1TLXb1pXMt2odRPh5Z3kruqo/wm81lpkwcfgwOAwxh/x+5ANZ
 708lBi/oX6KMHywLnWThcIRpZsA+6G/gkYTD2/ZmG9fDt61HID/sGkjdeS/kFw==
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
Subject: [PATCH v2 41/66] media: sun6i-csi: Add bridge dimensions and format
 helpers
Date: Sat,  5 Feb 2022 19:54:04 +0100
Message-Id: <20220205185429.2278860-42-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_185550_988893_8E91D389 
X-CRM114-Status: GOOD (  10.59  )
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

Introduce new helpers to ease getting information about the bridge.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../sunxi/sun6i-csi/sun6i_csi_bridge.c        | 20 +++++++++++++++++++
 .../sunxi/sun6i-csi/sun6i_csi_bridge.h        |  7 +++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
index 74706d883359..5e2d4ffd9932 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
@@ -12,6 +12,26 @@
 #include "sun6i_csi.h"
 #include "sun6i_csi_bridge.h"
 
+/* Helpers */
+
+void sun6i_csi_bridge_dimensions(struct sun6i_csi_device *csi_dev,
+				 unsigned int *width, unsigned int *height)
+{
+	if (width)
+		*width = csi_dev->bridge.mbus_format.width;
+	if (height)
+		*height = csi_dev->bridge.mbus_format.height;
+}
+
+void sun6i_csi_bridge_format(struct sun6i_csi_device *csi_dev,
+			     u32 *mbus_code, u32 *field)
+{
+	if (mbus_code)
+		*mbus_code = csi_dev->bridge.mbus_format.code;
+	if (field)
+		*field = csi_dev->bridge.mbus_format.field;
+}
+
 /* Format */
 
 static const u32 sun6i_csi_bridge_mbus_codes[] = {
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h
index 2ee7878102b6..afef17b5a788 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h
@@ -36,6 +36,13 @@ struct sun6i_csi_bridge {
 	struct sun6i_csi_bridge_source	*source;
 };
 
+/* Helpers */
+
+void sun6i_csi_bridge_dimensions(struct sun6i_csi_device *csi_dev,
+				 unsigned int *width, unsigned int *height);
+void sun6i_csi_bridge_format(struct sun6i_csi_device *csi_dev,
+			     u32 *mbus_code, u32 *field);
+
 /* Bridge */
 
 int sun6i_csi_bridge_setup(struct sun6i_csi_device *csi_dev);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
