Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6084FC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 16:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxZEafUpz1VTGu0iHGftruaKyrolC8/2bZ+j1xXuhZk=; b=DSRT+XNNr8xiAM
	d64wbrCFQib6UW+xLaLkDj9fCzyxsNGuaf3ucuDRIFuC93A9Qln7BV3LzB65zmv5yOAtMryp83wPc
	CzcREVIFHoB8XG4+A8hQG49bTqcWoArknWJIIU9wkYPeWbA0H0jQ1TjfEirg4TZrcHWi8MwQ9mnz6
	BJcQlOttf51jVf8KRPtBKqck/z9AjdEJTFf3bIEgYg7r/ma06NX7IY6XjFOGLWhmSQE907MOAGew4
	MawVfADN7J+o0BMd0SuHhvUJCo7RuGtlt9HCidlcTnzZ8wy+QfqWTIYRdIx7lIE2y7+cWcAK4tysc
	INwV4RuydFvsKOWs1ncg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGOCE-006qDH-RJ; Sat, 05 Feb 2022 16:45:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGOCC-006qBj-6r
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 16:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644079555;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ExCn8bXEYj3Fheat2o3eV3w8opytI1zAavJnEA3goSo=;
 b=e3U06VeyLKrW/7aR3dlS1kodNDu24rdiQ9AVpac1U+TqN8e3nOhKTuQh6ttxNXxPSIDQNT
 Nc0wCNQe2IHqUrD+c6jUzs5Cpd5pLwq7yWaNNUzREpn261cywDIYeXmucWg2fEmbbmv2vG
 Wphu5Wb5F57OH+2Fe/Rgs0xYmZEQkkg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-arbqB6UaNX2mz4lTDqkMTQ-1; Sat, 05 Feb 2022 11:45:52 -0500
X-MC-Unique: arbqB6UaNX2mz4lTDqkMTQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D774C8519E0;
 Sat,  5 Feb 2022 16:45:50 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2436D2B4D2;
 Sat,  5 Feb 2022 16:45:48 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, linux-usb@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-phy@lists.infradead.org
Subject: [PATCH 5/9] usb: dwc3: pci: Also apply Bay Trail GPIO mappings to
 ulpi-device
Date: Sat,  5 Feb 2022 17:45:31 +0100
Message-Id: <20220205164535.179231-6-hdegoede@redhat.com>
In-Reply-To: <20220205164535.179231-1-hdegoede@redhat.com>
References: <20220205164535.179231-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_084556_341290_FF574D89 
X-CRM114-Status: GOOD (  12.72  )
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

In order for the phy driver to be able to actually get and control
the cs and reset GPIOs the dev_id member of the gpiod_lookup table must
be set to point to the dev_name() of the ulpi-device instantiated by
dwc3_ulpi_init().

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/usb/dwc3/dwc3-pci.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-pci.c b/drivers/usb/dwc3/dwc3-pci.c
index 8deccf0aa5e7..fdcf552a6365 100644
--- a/drivers/usb/dwc3/dwc3-pci.c
+++ b/drivers/usb/dwc3/dwc3-pci.c
@@ -252,6 +252,14 @@ static int dwc3_pci_quirks(struct dwc3_pci *dwc,
 				usleep_range(10000, 11000);
 			}
 
+			/*
+			 * Make the pdev name predictable (only 1 DWC3 on BYT)
+			 * and patch the phy dev-name into the lookup table so
+			 * that the phy-driver can get the GPIOs.
+			 */
+			dwc->dwc3->id = PLATFORM_DEVID_NONE;
+			platform_bytcr_gpios.dev_id = "dwc3.ulpi";
+
 			/*
 			 * Some Android tablets with a Crystal Cove PMIC
 			 * (INT33FD), rely on the TUSB1211 phy for charger
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
