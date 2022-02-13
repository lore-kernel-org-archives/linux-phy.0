Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39655C433F5
	for <linux-phy@archiver.kernel.org>; Sun, 13 Feb 2022 13:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpUXb6kv6U1PldsO8E8416OVqES6jBBK3l8Qh4kiAjA=; b=QLHqkzJfKfdgWr
	yhZXjVOkyA+xKPXnBIEay//7YGgkrEpmVKLX9Y/50VfxneUBxUy5muSBKkQlwJBUYSpB7v5rbn9oY
	SC4en0z4FHrwaJXg9vwyeAWwuDYw9S34rBH1kmPIROMs52DVdNJcnMpSe9gxGB564yPR5qbADnckb
	NjFbTeJxoE3n5E9rycj2vWIwj/cd1rkqd8BVPnuqLWy8H/XeTGKI6VvvXyS/W9MckS8Ncce3wV89z
	/KMYqWbTC+MaesW6cuUDKOrijJrf6euVZ1MNNPUXCByHTQr3Snk9RBl+5JF1XQ6KQKiMccxiAUeID
	Y9vBLjmbD8xukTkDvLXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJEZW-00Bika-Lm; Sun, 13 Feb 2022 13:05:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJEZQ-00BiiY-7a
 for linux-phy@lists.infradead.org; Sun, 13 Feb 2022 13:05:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644757538;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VTtksw/kNF8G+OAAAdw+cff6C6rBjpvCwfNWJ3xDNTA=;
 b=bkg+ANmOGv74ZX4vyPCLFsLycXeQoilEPM7li3Qmz6EZTjEoy6n1FfUZ1XZsJvU4rTpNVk
 F6e2Ilt6JQ4JmQqkSF0GOyCRwNNRrzPLYnvoFCWiw8rkEN56zTXx1hB35m/2ShXNoVr4Cz
 tnG1OGcWrEBeKcwNAmK0sP6zCoLWX0o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-288-A7NOnRYcM2WKE17VA2WZYw-1; Sun, 13 Feb 2022 08:05:36 -0500
X-MC-Unique: A7NOnRYcM2WKE17VA2WZYw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD09C184608A;
 Sun, 13 Feb 2022 13:05:34 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 604657B9DD;
 Sun, 13 Feb 2022 13:05:31 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Stephan Gerhold <stephan@gerhold.net>,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: [PATCH v2 1/9] usb: dwc3: pci: Add "snps,
 dis_u2_susphy_quirk" for Intel Bay Trail
Date: Sun, 13 Feb 2022 14:05:16 +0100
Message-Id: <20220213130524.18748-2-hdegoede@redhat.com>
In-Reply-To: <20220213130524.18748-1-hdegoede@redhat.com>
References: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_050540_386601_D27FA660 
X-CRM114-Status: GOOD (  13.91  )
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

Commit e0082698b689 ("usb: dwc3: ulpi: conditionally resume ULPI PHY")
fixed an issue where ULPI transfers would timeout if any requests where
send to the phy sometime after init, giving it enough time to auto-suspend.

Commit e5f4ca3fce90 ("usb: dwc3: ulpi: Fix USB2.0 HS/FS/LS PHY suspend
regression") changed the behavior to instead of clearing the
DWC3_GUSB2PHYCFG_SUSPHY bit, add an extra sleep when it is set.

But on Bay Trail devices, when phy_set_mode() gets called during init,
this leads to errors like these:
[   28.451522] tusb1210 dwc3.ulpi: error -110 writing val 0x01 to reg 0x0a
[   28.464089] tusb1210 dwc3.ulpi: error -110 writing val 0x01 to reg 0x0a

Add "snps,dis_u2_susphy_quirk" to the settings for Bay Trail devices to
fix this. This restores the old behavior for Bay Trail devices, since
previously the DWC3_GUSB2PHYCFG_SUSPHY bit would get cleared on the first
ulpi_read/_write() and then was never set again.

Fixes: e5f4ca3fce90 ("usb: dwc3: ulpi: Fix USB2.0 HS/FS/LS PHY suspend regression")
Cc: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/usb/dwc3/dwc3-pci.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-pci.c b/drivers/usb/dwc3/dwc3-pci.c
index 7ff8fc8f79a9..022341aef400 100644
--- a/drivers/usb/dwc3/dwc3-pci.c
+++ b/drivers/usb/dwc3/dwc3-pci.c
@@ -119,6 +119,13 @@ static const struct property_entry dwc3_pci_intel_properties[] = {
 	{}
 };
 
+static const struct property_entry dwc3_pci_intel_byt_properties[] = {
+	PROPERTY_ENTRY_STRING("dr_mode", "peripheral"),
+	PROPERTY_ENTRY_BOOL("snps,dis_u2_susphy_quirk"),
+	PROPERTY_ENTRY_BOOL("linux,sysdev_is_parent"),
+	{}
+};
+
 static const struct property_entry dwc3_pci_mrfld_properties[] = {
 	PROPERTY_ENTRY_STRING("dr_mode", "otg"),
 	PROPERTY_ENTRY_STRING("linux,extcon-name", "mrfld_bcove_pwrsrc"),
@@ -161,6 +168,10 @@ static const struct software_node dwc3_pci_intel_swnode = {
 	.properties = dwc3_pci_intel_properties,
 };
 
+static const struct software_node dwc3_pci_intel_byt_swnode = {
+	.properties = dwc3_pci_intel_byt_properties,
+};
+
 static const struct software_node dwc3_pci_intel_mrfld_swnode = {
 	.properties = dwc3_pci_mrfld_properties,
 };
@@ -344,7 +355,7 @@ static const struct pci_device_id dwc3_pci_id_table[] = {
 	  (kernel_ulong_t) &dwc3_pci_intel_swnode, },
 
 	{ PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_BYT),
-	  (kernel_ulong_t) &dwc3_pci_intel_swnode, },
+	  (kernel_ulong_t) &dwc3_pci_intel_byt_swnode, },
 
 	{ PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_MRFLD),
 	  (kernel_ulong_t) &dwc3_pci_intel_mrfld_swnode, },
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
