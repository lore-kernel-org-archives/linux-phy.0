Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F864C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 16:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wj/eZ/kRof1GaiNTUaZ3Oc9WYB45iiQXtnQunp7C0Tk=; b=GnSiFlYqXpYUdU
	b4R7rbrDRD6pYHHsyWnE1uQhaEHzeVVZhE9dEaD8sWDo/uUfNm9zAeB9AlALeDXY7exUcB5qLN5yo
	f2DslVZKxIMJtFJyu4smIWpqbMIGJJDvHoHdkFx7id5P49dfUSSSiJF0ZVLoPP/4Mk9ZR/b4KAtto
	YRfCq7xJo9S022vd01ci5yoisHf72B94t1ZARKqdNXj3BYMzyQP9e94KbfKB06tcrkILrhu98fNs3
	jjYgjhxKIT68pm5ANVB9JpAyMunIDNaXb/IV/XBjGEeBpB7DDRTBKk7XDtuseqovSepU+DIaMDoVy
	7RTNz1VL8QEOvTFY5SVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGOCC-006qCb-OQ; Sat, 05 Feb 2022 16:45:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGOCA-006qAR-27
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 16:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644079553;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z6WAh0cLbaV+DuQjckj1L6hLSWsngwI8qpPCgBJQSdQ=;
 b=ddwpuLZNyKAE1uA+wgJQwjhofRb4pgGr6mSzikj9eAb29k2bW17jdnqZmzWnLcL9PyEALk
 QG8yRcHkN/I844euhGYrmnVvUedqR03zDgYAriAP5PfwviNmZse53mLfaqGgzn/+zglLUI
 iMZfCFinzTycOgMdbUpn1r/O9FiZYUw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-356-z0SFdiSiOoC51j3gkU8DLg-1; Sat, 05 Feb 2022 11:45:50 -0500
X-MC-Unique: z0SFdiSiOoC51j3gkU8DLg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF782100C660;
 Sat,  5 Feb 2022 16:45:48 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC5062B4D2;
 Sat,  5 Feb 2022 16:45:46 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, linux-usb@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-phy@lists.infradead.org
Subject: [PATCH 4/9] usb: dwc3: pci: Set "linux,
 phy_charger_detect" property on some Bay Trail boards
Date: Sat,  5 Feb 2022 17:45:30 +0100
Message-Id: <20220205164535.179231-5-hdegoede@redhat.com>
In-Reply-To: <20220205164535.179231-1-hdegoede@redhat.com>
References: <20220205164535.179231-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_084554_183144_9A00A9C9 
X-CRM114-Status: GOOD (  14.85  )
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

Some Android x86 tablets with a Bay Trail (BYT) SoC and a Crystal Cove
PMIC, which does not support charger-detection, rely on the TUSB1211 phy
for charger-detection.

Windows tablets with the same SoC + PMIC often use an extra chip for
charger-detection like the FSA831A. But since on Android tablets
the designers already need to add a TUSB1211 phy to support device/gadget
mode the phy is used to do charger-detection instead.

These Android x86 tablets can be identified by the unique combination of
a Bay Trail SoC (already checked for by PCI-ids) + a Crystal Cove PMIC +
not using the standard ACPI battery and ac drivers. Where as on Windows
tablets the standard ACPI battery and ac drivers will be used on BYT
boards with a Crystal Cove PMIC.

Set a special kernel-internal (so not part of the dt-bindings)
"linux,phy_charger_detect" property on these boards, which tells the
tusb1210 driver to enable charger-detection.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/usb/dwc3/dwc3-pci.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-pci.c b/drivers/usb/dwc3/dwc3-pci.c
index 40a3a1b114e9..8deccf0aa5e7 100644
--- a/drivers/usb/dwc3/dwc3-pci.c
+++ b/drivers/usb/dwc3/dwc3-pci.c
@@ -126,6 +126,14 @@ static const struct property_entry dwc3_pci_intel_byt_properties[] = {
 	{}
 };
 
+static const struct property_entry dwc3_pci_intel_phy_charger_detect_properties[] = {
+	PROPERTY_ENTRY_STRING("dr_mode", "peripheral"),
+	PROPERTY_ENTRY_BOOL("snps,dis_u2_susphy_quirk"),
+	PROPERTY_ENTRY_BOOL("linux,phy_charger_detect"),
+	PROPERTY_ENTRY_BOOL("linux,sysdev_is_parent"),
+	{}
+};
+
 static const struct property_entry dwc3_pci_mrfld_properties[] = {
 	PROPERTY_ENTRY_STRING("dr_mode", "otg"),
 	PROPERTY_ENTRY_STRING("linux,extcon-name", "mrfld_bcove_pwrsrc"),
@@ -172,6 +180,10 @@ static const struct software_node dwc3_pci_intel_byt_swnode = {
 	.properties = dwc3_pci_intel_byt_properties,
 };
 
+static const struct software_node dwc3_pci_intel_phy_charger_detect_swnode = {
+	.properties = dwc3_pci_intel_phy_charger_detect_properties,
+};
+
 static const struct software_node dwc3_pci_intel_mrfld_swnode = {
 	.properties = dwc3_pci_mrfld_properties,
 };
@@ -239,6 +251,18 @@ static int dwc3_pci_quirks(struct dwc3_pci *dwc,
 				gpiod_put(gpio);
 				usleep_range(10000, 11000);
 			}
+
+			/*
+			 * Some Android tablets with a Crystal Cove PMIC
+			 * (INT33FD), rely on the TUSB1211 phy for charger
+			 * detection. These can be identified by them _not_
+			 * using the standard ACPI battery and ac drivers.
+			 */
+			if (acpi_dev_present("INT33FD", "1", 2) &&
+			    acpi_quirk_skip_acpi_ac_and_battery()) {
+				dev_info(&pdev->dev, "Using TUSB1211 phy for charger detection\n");
+				swnode = &dwc3_pci_intel_phy_charger_detect_swnode;
+			}
 		}
 	}
 
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
