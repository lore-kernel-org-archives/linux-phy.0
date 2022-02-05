Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E7DC433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 16:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2m7PJ5Wk0/w/tT9QQe1hBYW7srKnzRTTpHM8pEFszY=; b=dtvBHSzeskOL/u
	Hr9gCu8/rBJHa+/4QSZ3HJoRZt1eLushcqtI9TtV/ldK2TCaKgaxFErOZ2oQFnlAIdiVpKXkQhhoI
	TEvnkWdWlgEztQ3SyWirqKmiRuMc5KNXrDacaDANNMBfXUgtPVAjsxH6wlSLdFcR1pWh4tI+AsdRr
	BEYIDYTDCwzmHxrGpj9oJ+Yshwcgn+vPARUpNxTQ+XHg4DW6FxhlIf1dDCtCC0rn/LWJZys0c22JK
	f08+e7R3ChJhYR3gPgpHLXA74uIrrbhevXSg4/NxoUtD7eGNiEkYf6kRhrwYWz4AJnAmGYFApMYX7
	wtai06rjE0WSEAQl3Mng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGOCH-006qEo-TP; Sat, 05 Feb 2022 16:46:01 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGOCF-006qDb-Qq
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 16:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644079558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nyxGUa1m1eMnb06QI5BCHdATsTFJoIUizeBAHNCds5E=;
 b=eQbDQ8fhBrwIpntgCul53sOmEdeuYBxsUq3xvGXEeQVDgRxdc6R+Pfl9EGQmsx6zI4cP86
 wJDl9VK16vXP6njcqXXZIWqgsDAFHDyJMxKUyKHef6aJ+S0ShJtOWQEu0Y0JVW5HDXLnQ+
 72+nZDLTPjiRrVKBMLntw0qReK+8tFY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-5nKhJvyeMZGQLKrLCbhM-g-1; Sat, 05 Feb 2022 11:45:55 -0500
X-MC-Unique: 5nKhJvyeMZGQLKrLCbhM-g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9400B1091DA3;
 Sat,  5 Feb 2022 16:45:54 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 075072B4D2;
 Sat,  5 Feb 2022 16:45:52 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, linux-usb@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-phy@lists.infradead.org
Subject: [PATCH 7/9] phy: ti: tusb1210: Drop tusb->vendor_specific2 != 0 check
 from tusb1210_power_on()
Date: Sat,  5 Feb 2022 17:45:33 +0100
Message-Id: <20220205164535.179231-8-hdegoede@redhat.com>
In-Reply-To: <20220205164535.179231-1-hdegoede@redhat.com>
References: <20220205164535.179231-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_084559_957897_07FA548B 
X-CRM114-Status: GOOD (  11.14  )
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
