Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA43C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 13 Feb 2022 13:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2m7PJ5Wk0/w/tT9QQe1hBYW7srKnzRTTpHM8pEFszY=; b=fpsa0QbtJOqFH7
	tSpjRWr4DUKBq/+GMXZc85P3ogg/Tq0tx64NTdpNwqS/pDOHUBW1eTmdhTxywGPJdb5cQWxmUaUAH
	d4c6dkynG4A9eeyTh7yoxVB+OIjR32v6iaP7rJBe7kYk1kc5La82BtnpK5iBO/CH0iWSmArlxGhU0
	xxsY6qiqHtRzBvQ5wBiuIlexeAW/8JuTE/qIeMO5R/HhjvW8g3wGOv1FCHV55Rbu3B1ZWB5Nh3GMA
	+tR2Dy04Hdt2buRnPTBNuRVNt6TzFnct+JH96gnVPvXGNkdj06IfvolSSW3fEjJILH03Q3YEyTRS3
	7tC5PcFjRt9hrWw5Tc1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJEZf-00BipQ-5y; Sun, 13 Feb 2022 13:05:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJEZc-00Binp-1Q
 for linux-phy@lists.infradead.org; Sun, 13 Feb 2022 13:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644757551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nyxGUa1m1eMnb06QI5BCHdATsTFJoIUizeBAHNCds5E=;
 b=EpSFf4TCiEphDM7fYxcBCR8LmIkXsAxvv6n+KvLPRkJLfpYLfs8BTjKi7Va1ZxG58OQkQw
 HYoqX4U+qVmOZ1gAm70Eke6eoJvxazLh/yEg0lmdmBGBVf3d+WBPnN5t1v9s9oZb016KCX
 Sb88NgJDDD75sv3pZpYxgJaFaDZLbL8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-548-mXCl9Se7NH--KKeDbFlwxQ-1; Sun, 13 Feb 2022 08:05:48 -0500
X-MC-Unique: mXCl9Se7NH--KKeDbFlwxQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A313F1091DA0;
 Sun, 13 Feb 2022 13:05:46 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB85A7B9DD;
 Sun, 13 Feb 2022 13:05:44 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Stephan Gerhold <stephan@gerhold.net>,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 7/9] phy: ti: tusb1210: Drop tusb->vendor_specific2 != 0
 check from tusb1210_power_on()
Date: Sun, 13 Feb 2022 14:05:22 +0100
Message-Id: <20220213130524.18748-8-hdegoede@redhat.com>
In-Reply-To: <20220213130524.18748-1-hdegoede@redhat.com>
References: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_050552_175699_BF9C88EE 
X-CRM114-Status: GOOD (  11.74  )
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

Since commit eb445a15fa69 ("phy: tusb1210: use bitmasks to set
VENDOR_SPECIFIC2") tusb->vendor_specific2 always contains a valid value
so there no need to check that it is set.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/phy/ti/phy-tusb1210.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index bf7793afdc84..04baed24469f 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -61,11 +61,8 @@ static int tusb1210_power_on(struct phy *phy)
 	gpiod_set_value_cansleep(tusb->gpio_cs, 1);
 
 	/* Restore the optional eye diagram optimization value */
-	if (tusb->vendor_specific2)
-		return tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2,
-					   tusb->vendor_specific2);
-
-	return 0;
+	return tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2,
+				   tusb->vendor_specific2);
 }
 
 static int tusb1210_power_off(struct phy *phy)
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
