Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61771C4332F
	for <linux-phy@archiver.kernel.org>; Sun, 13 Feb 2022 13:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxZEafUpz1VTGu0iHGftruaKyrolC8/2bZ+j1xXuhZk=; b=rP3vvHcGOu2pKB
	qr3LILqc/qjCpXbHaFoiKkhalISFrCAuCoTLAqxTWOs52e72AWRg3kTQ5Sb/lF2Vi2vjAtocm2KdN
	nlKNK01yP5TFR6GCEDxhi2nzStzjeXA1oHcB+zDEJDsMXFIfVDP85sBLkOHfRG3l05q6fihuNps/7
	Ig9hEGnfqXNW+qkGlDDKm5zxqJIVWk3XuIHUTID+w4mDp+D/yZFHwVSSVfhfPOiMOC1vAdu6Uh1cN
	xummrEWgBI89k3zTWx4bCtrLF1H2bBv1RWp+FuSRvH4c7Enkn7BuZZu/D/yu7IQesAdNyKhdnkdwi
	GhMbu1fvNoZQKm2e4m6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJEZZ-00Bime-Qh; Sun, 13 Feb 2022 13:05:49 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJEZY-00Biko-4I
 for linux-phy@lists.infradead.org; Sun, 13 Feb 2022 13:05:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644757547;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ExCn8bXEYj3Fheat2o3eV3w8opytI1zAavJnEA3goSo=;
 b=T8eAbNCvCZMo9vEEgC6woNy55GY3V2gJzYWEXbwLjDoPDzXHaiAISTaDdJ4VzxF7LRRFyS
 UuQ7/gn6SyawuvVjNl9SL6efrRY6THShZDfHOibhsy4v2pLjAJxyojc7UBXqgkNJx3dkCr
 sa+TnetFfZWCsDk0VmtinpeCY1ecoFU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-492-tyvfqWU1NcitPoG9rrM_9g-1; Sun, 13 Feb 2022 08:05:44 -0500
X-MC-Unique: tyvfqWU1NcitPoG9rrM_9g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF1A7184608A;
 Sun, 13 Feb 2022 13:05:42 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 37E2D7B9DD;
 Sun, 13 Feb 2022 13:05:41 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Stephan Gerhold <stephan@gerhold.net>,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 5/9] usb: dwc3: pci: Also apply Bay Trail GPIO mappings to
 ulpi-device
Date: Sun, 13 Feb 2022 14:05:20 +0100
Message-Id: <20220213130524.18748-6-hdegoede@redhat.com>
In-Reply-To: <20220213130524.18748-1-hdegoede@redhat.com>
References: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_050548_263057_D7963CC1 
X-CRM114-Status: GOOD (  13.26  )
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
