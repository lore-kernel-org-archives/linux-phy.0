Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8FBBC433F5
	for <linux-phy@archiver.kernel.org>; Sun, 13 Feb 2022 13:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJdgvSncapOto3kugvHV/RVAZpPnjReQIOmfVF9RXCQ=; b=Sudv3ieMQZp+J9
	72zh2rFLrfCrgBkzYVoRTouXgjYYh+WyyEViH6KxdBm1VzVY5QpFHEzonUHmFmNmWU27AS2UWoQH5
	/s2qa4WDS6EPcp1o6U+0AH69JDJN3969OU1P0ICpBCwd+og0jBWdhih9FK5Fch3tHi7N97IhZuf1e
	SZPaOlOsJLifFTvAgTtJpZn4+crkmm+HYgXnp1wJyMWcrxiDFgcs8TmCruJ+tFbL6TxW0UmUuhTaI
	V6fmrSOMVqZBVizLZ/M49fKa+07rFF98jO427fXr4nQ2ld8+SGXj7s9hIWXrWnRe63BAq4CUUmNyU
	3wh1sGaRnZylJqwZnRIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJEZh-00Bipm-89; Sun, 13 Feb 2022 13:05:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJEZe-00Bip1-H1
 for linux-phy@lists.infradead.org; Sun, 13 Feb 2022 13:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644757553;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oubBtTGlA5uh6It3RfAlzAI69zaV5D9sEzGpMWX75XU=;
 b=MkfWq4uL8mDmOJ2JLv5dNO6UDwMsaX9tNbPCJ9skrbIS9+YohxiS5yzhDpYkk/1h8bQcV2
 QZPP0PcDQT1VFozxjJok3DTco4rxezwbkinXz+QCghKAKTGEWpGO6w/nMj/61pWAFn2k8h
 WF3EGW86dKklzMA9uEEvH7vUAYkFeGY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-442-Q9vnycTZP9WlwCxvU9Bftg-1; Sun, 13 Feb 2022 08:05:49 -0500
X-MC-Unique: Q9vnycTZP9WlwCxvU9Bftg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E4D8814245;
 Sun, 13 Feb 2022 13:05:48 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EBC837B9DD;
 Sun, 13 Feb 2022 13:05:46 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Stephan Gerhold <stephan@gerhold.net>,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 8/9] phy: ti: tusb1210: Add a delay between power-on and
 restoring the phy-parameters
Date: Sun, 13 Feb 2022 14:05:23 +0100
Message-Id: <20220213130524.18748-9-hdegoede@redhat.com>
In-Reply-To: <20220213130524.18748-1-hdegoede@redhat.com>
References: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_050554_677453_38604AC6 
X-CRM114-Status: GOOD (  13.02  )
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

Now that we actually log errors on ulpi_write failures it becomes clear
that the ulpi_write() restoring the phy-parameters on power-on is failing
after a suspend/resume add a short delay after driving the cs line high
to fix this.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/phy/ti/phy-tusb1210.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index 04baed24469f..9ef4c5f79b75 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -8,6 +8,7 @@
  */
 #include <linux/module.h>
 #include <linux/bitfield.h>
+#include <linux/delay.h>
 #include <linux/ulpi/driver.h>
 #include <linux/ulpi/regs.h>
 #include <linux/gpio/consumer.h>
@@ -18,6 +19,8 @@
 #define TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_MASK	GENMASK(5, 4)
 #define TUSB1210_VENDOR_SPECIFIC2_DP_MASK	BIT(6)
 
+#define TUSB1210_RESET_TIME_MS				30
+
 struct tusb1210 {
 	struct ulpi *ulpi;
 	struct phy *phy;
@@ -60,6 +63,8 @@ static int tusb1210_power_on(struct phy *phy)
 	gpiod_set_value_cansleep(tusb->gpio_reset, 1);
 	gpiod_set_value_cansleep(tusb->gpio_cs, 1);
 
+	msleep(TUSB1210_RESET_TIME_MS);
+
 	/* Restore the optional eye diagram optimization value */
 	return tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2,
 				   tusb->vendor_specific2);
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
