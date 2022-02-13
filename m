Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E0ECC433FE
	for <linux-phy@archiver.kernel.org>; Sun, 13 Feb 2022 13:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hwy0ukLDUUP1ga6Bt6O0JtmYrNzjOBtEy1Ue554ZZbU=; b=nmPOspjmbbtkel
	1iPPfVdY5dhYHPAONxzr0bYhh8a7oDCqBHHad/ypT8YQRHxiLpNxnr4iv0DnARcroiQrYWVh3i9ho
	WP5xMIdc/vXGkzH1L2hth0WiIKIQvwWEwgk8mNFnErQ1gtBwrQTrR9dBqCVenrWq/wF0rasCjSawc
	3cDoxFaBzdW+FwNcWjsFlmT9XbV9d4gnr6hYcj9psUy0YOgzQn5mYNCvbWOEPxyMn+uzh4YBOFkX4
	4UawB+g4ivHvOMy5gnNWUL81iTPVj+E2wH3H+or3nQh3FPhXf5I+LOL45osTfBXEn6FES4CPsC5tU
	cMtQYJAzy0yKuEjjCYAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJEZV-00Bik8-JZ; Sun, 13 Feb 2022 13:05:45 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJEZP-00BiiW-O4
 for linux-phy@lists.infradead.org; Sun, 13 Feb 2022 13:05:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644757535;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Ohq2A62q6iZea97Y7Wsr23In+WCCgPO+rrzdK8oCfDg=;
 b=ZnTBSIa3jGjYRcK9ecHuaRix4LHWw68NbL6GJ95YYbT0kJ0kxeFFnF72UgBPGewy5iLR4y
 d0Rmb0/dJh2QHOLbGzieohmqptqdbOXX057dE1PpakO2YlForBS2hX6K39133AIaYGNbuQ
 bd+yASEkHZ87UfMyQutdC3D9NSjH1i8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-70-Hl9fi6KeM6qFduMqyds0Ww-1; Sun, 13 Feb 2022 08:05:32 -0500
X-MC-Unique: Hl9fi6KeM6qFduMqyds0Ww-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18CC21091DA0;
 Sun, 13 Feb 2022 13:05:31 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD90C7B9DD;
 Sun, 13 Feb 2022 13:05:25 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Stephan Gerhold <stephan@gerhold.net>,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 0/9] usb/dwc3 / phy/tusb1210: Add TUSB1211 charger detection
Date: Sun, 13 Feb 2022 14:05:15 +0100
Message-Id: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_050540_033965_34727735 
X-CRM114-Status: GOOD (  12.85  )
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

Hi All,

Here is v2 of the patchs-series to add support for USB charger-type
(SDP/DCP) detection using a tusb1210 phy connected to a dwc3 controller.

Changes in v2:
[PATCH v2 9/9] phy: ti: tusb1210: Add charger detection:
- Add an online attribute to the registered power_supply class device,
  otherwise upower thinks it is an extra system battery
- Add tusb1210_remove_charger_detect() function to properly unregister
  the tusb->psy_nb notifier and to cancel tusb->chg_det_work

v1 cover-letter:

Some Android x86 tablets with a Bay Trail (BYT) SoC (with DWC3 UDC)
and a Crystal Cove PMIC, which does not support charger-detection,
rely on a TUSB1211 phy for charger-detection.

This series adds support for this, it starts with some dwc3 bug-fixes
for issues hit while developing this, as well as adding support to
the dwc3 code to set a special property checked by the tusb1210 driver
to signal that it needs to enable charger-detection.

The 2nd half of the series does some refactoring / fixes to the
tusb1210 driver and adds the charger-detection support.

Regards,

Hans


Hans de Goede (8):
  usb: dwc3: pci: Add "snps,dis_u2_susphy_quirk" for Intel Bay Trail
  usb: dwc3: pci: Fix Bay Trail phy GPIO mappings
  usb: dwc3: pci: Set the swnode from inside dwc3_pci_quirks()
  usb: dwc3: pci: Set "linux,phy_charger_detect" property on some Bay
    Trail boards
  usb: dwc3: pci: Also apply Bay Trail GPIO mappings to ulpi-device
  phy: ti: tusb1210: Improve ulpi_read()/_write() error checking
  phy: ti: tusb1210: Drop tusb->vendor_specific2 != 0 check from
    tusb1210_power_on()
  phy: ti: tusb1210: Add a delay between power-on and restoring the
    phy-parameters

Stephan Gerhold (1):
  phy: ti: tusb1210: Add charger detection

 drivers/phy/ti/phy-tusb1210.c | 439 ++++++++++++++++++++++++++++++++--
 drivers/usb/dwc3/dwc3-pci.c   |  60 ++++-
 2 files changed, 467 insertions(+), 32 deletions(-)

-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
