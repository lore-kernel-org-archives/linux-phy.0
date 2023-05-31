Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7424AC77B7C
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 07:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=598ngqk9W51bHdpjSRXZmFxYPal7C7evPE86em/3kxQ=; b=mYkPIN0GQl2gqW
	jysg4BwesIJheV+dVLCv3CD1wbGtzfBaJPdtpJzGysHLrWLKnMWgQs9QC/xo3p4CN3ZjjAJuISbn6
	gg2nYJn9zxk1p5pQPCACgkh6Q26a8mzbp89UV2fPd6tf70aHC/Okd02R6b+ABkUxshFTQKmJGIP2f
	F/EXcPhQ5HEaTwd0Y7l+h+o7uizv40Z1kJqpSIgJwSmYrnyhvH9Y72VWx/97YNC7ufhYgXfJCCFtc
	v8wqdhKstXKv8zS3eCiwICb3IqKXF1HsnCMrnoo9+PfxZ6sRdNquQpnEoMPeqAv9wTNICRKAx9ppA
	2wly5dgTFoIcgAAPJrvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4GRG-00GTr2-0P;
	Wed, 31 May 2023 07:40:10 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4GRD-00GTqZ-2E
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 07:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1685518809; x=1717054809;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=VA6PLEl6XdXdwvvyXjGG+l70IBfaxvdpG2t3qnCADZg=;
  b=Qmre7MH4AEryLva3J9rQGX3SG+snpnavhDwOwP2BkKeSI/tEKCC8A+LE
   2duIDsyEgUtp5GA5qTOr1FwWd707KhAWQac9p9PTzjmLWAHI6r4NxsOwV
   CPfyEdGDwt4wZhSvtuDLo6T2TDZ+jjeKNiqRD7ZVeyhreuMGgIVAljQO7
   RUlQlCWkhZ0oBVMxunIg0jjBLWd1GEKPi6tfJtdKOsBoxZo+F5MgwLpiO
   MxIqkphkBuB2Iprksmon3iQZEX1vcHdjKTbzZwsEXNh+oR1Y7FKtYqkP4
   lWILw0c3fJ353mtag3PeBOE28UGKHNos9c5Vf60ZqF5d15BqHSGL1hZBo
   g==;
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; 
   d="scan'208";a="216163366"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 31 May 2023 00:40:06 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 31 May 2023 00:40:05 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Wed, 31 May 2023 00:40:00 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <jckuo@nvidia.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <nkristam@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH] phy: tegra: xusb: check return value of devm_kzalloc()
Date: Wed, 31 May 2023 10:39:50 +0300
Message-ID: <20230531073950.145339-1-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_004007_752572_A730CBDA 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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

devm_kzalloc() returns a pointer to dynamically allocated memory.
Pointer could be NULL in case allocation fails. Check pointer validity.
Identified with coccinelle (kmerr.cocci script).

Fixes: f67213cee2b3 ("phy: tegra: xusb: Add usb-role-switch support")
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---

Hi,

This has been addressed using kmerr.cocci script proposed for update
at [1].

Thank you,
Claudiu Beznea

[1] https://lore.kernel.org/all/20230530074044.1603426-1-claudiu.beznea@microchip.com/

 drivers/phy/tegra/xusb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index ec335668563d..fe72bc74e7bc 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -675,6 +675,9 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
 	port->dev.driver = devm_kzalloc(&port->dev,
 					sizeof(struct device_driver),
 					GFP_KERNEL);
+	if (!port->dev.driver)
+		return -ENOMEM;
+
 	port->dev.driver->owner	 = THIS_MODULE;
 
 	port->usb_role_sw = usb_role_switch_register(&port->dev,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
