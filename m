Return-Path: <SRS0=Fgqk=PV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D024C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 11:21:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E47560E9B
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 11:21:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4E47560E9B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=80vhecZRJifiv6LxKBppD5jNeiPawZTu9Go1iIMcnXY=; b=kc+vuW/WBgSE9Q
	9p2E9vCRMqVr7z9YOCDTDk/Yu7bPFR42JSbYgAmjEaEahRXy2ON5U9e/5wIU9mkWxyZVVjWJs6cJi
	MUR4anonUTN0rwcCJc0YCFEu11lUUpQAWWBaE4AmhWR8NjY36DvS3Y5jmQkkOR9C2RsjIwlGTKA9u
	IYo4tPA1IBpTM1yxNjZ45+mtkuOn/TZ7eRnxjjEddzYFqQYMI2hcjXCGNJlW/Dl2qajgyVFerlhZ7
	J50Qp0omEulpxzlkEoAZ6JxSV8MzOhUrkaCrTx0NVfKyX7WMRb3OXKu8vovBRFL0wSHYAowiOIBVU
	IW7Lre8vTqfwIqKAAbYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhrrG-001Vpf-PW; Tue, 02 Nov 2021 11:21:38 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhrrD-001Von-CT
 for linux-phy@lists.infradead.org; Tue, 02 Nov 2021 11:21:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1A2BLQsX050809;
 Tue, 2 Nov 2021 06:21:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1635852086;
 bh=XUupCBW+p9fG5DY3LYbMQ02MmZ+a2zm4IDWJC+uv03c=;
 h=From:To:CC:Subject:Date;
 b=sPpkAfb+hHjaO8iOcKRfi/itJ1OgaV8ooxkRTGo/yGgEAIKPwdDzV758Y6/tP+aQP
 n2ByFCHXXSsTDX9kViP9/y8euSYp02GLVXv4GUyOTYtRZ1Dz5O3jX+3S02EOIZpGG3
 E9doyGSn0bwOZOpZTVrw/9HAKbfoW8Y2hqfm8A/4=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1A2BLQxA103905
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 2 Nov 2021 06:21:26 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 2
 Nov 2021 06:21:25 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 2 Nov 2021 06:21:26 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1A2BLMpg112235;
 Tue, 2 Nov 2021 06:21:22 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Nishanth Menon <nm@ti.com>, Aswath Govindraju <a-govindraju@ti.com>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: phy-can-transceiver: Make devm_gpiod_get optional
Date: Tue, 2 Nov 2021 16:51:20 +0530
Message-ID: <20211102112120.23637-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_042135_590882_0BDED8F4 
X-CRM114-Status: GOOD (  11.67  )
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

In some cases the standby/enable gpio can be pulled low/high and would not
be connected to a gpio. The current driver implementation will return an
error in these cases. Therefore, make devm_gpiod_get optional.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 drivers/phy/phy-can-transceiver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index c2cb93b4df71..6f3fe37dee0e 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -110,14 +110,14 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	can_transceiver_phy->generic_phy = phy;
 
 	if (drvdata->flags & CAN_TRANSCEIVER_STB_PRESENT) {
-		standby_gpio = devm_gpiod_get(dev, "standby", GPIOD_OUT_HIGH);
+		standby_gpio = devm_gpiod_get_optional(dev, "standby", GPIOD_OUT_HIGH);
 		if (IS_ERR(standby_gpio))
 			return PTR_ERR(standby_gpio);
 		can_transceiver_phy->standby_gpio = standby_gpio;
 	}
 
 	if (drvdata->flags & CAN_TRANSCEIVER_EN_PRESENT) {
-		enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+		enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
 		if (IS_ERR(enable_gpio))
 			return PTR_ERR(enable_gpio);
 		can_transceiver_phy->enable_gpio = enable_gpio;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
