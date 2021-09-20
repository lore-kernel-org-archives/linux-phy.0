Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BB58C43217
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5BEB60FC1
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D5BEB60FC1
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBa6B1r52LKXz5vgGy9Rko7PORV0FTE4kACgbhBNVY4=; b=HSjW4qAOQ3ach7
	+vJRNZLWxvzioBrPcOr6UWeygZOd3HKCE/JJgXU4W8wEHtoKBScsJ/EcK2AUN0IBsm1Xib6BEb0Bh
	ZyNbX8YdY6o77cznuVdDerL5KoZrD+d6QjSuZ2sWSDxFIXukglZRhnGV7fhMI5bdFcj6s8bTIVWXP
	5cu65b8Gs50/UgfFZUZzp3xGi5tWHWqYxaz9X8ZcO0xcMBM0KNK9Y4yg8dOOnjsSposjVU0HCnVTg
	WFnf4YT1w3OhCrZzg4gPrJcrvah01cpXFzFuYplceLagcHk6+I2ZYk8WFyY7a7EZU/68+/5PB37un
	HdnEsIMFQVtREmcGH3hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxL-001BR4-D3; Mon, 20 Sep 2021 09:51:23 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxI-001BQ8-2Z
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131479; x=1663667479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VnYOMjMEpb5JvuNo/2w6R+bDMUQ9dU4MVRLlawFW0TM=;
 b=AR8Gi8QE2HCevgOP863K7uU/PMaLAJXHAtcPY669sKXVS375zqo5aR3p
 WJXGkWi+429aaO5p2DDOciZ1ec6YzVXOiDaVt5vzZYaj+WJPcu9ozwoW6
 s0tn7U19bjhj5NCbEwKdJUiBZDft8UjD3vuGtrIXlNKh5gyrF/9UIiF3d
 vi0RDVAblHBcgqw0aVni6cytoFAiotg3FsLqsYtXjGnClAXReGcuEQ2EI
 Ub+2bkioUWq9lLUHpxARAmFARsxxvQIoth4q+xwLzBktTTe4090HnHZVV
 b8WQOZ71cpnLWGB+I1YxWYufknYUt5ZtGCabjZnjsg+JgdFGX76zjkuok Q==;
IronPort-SDR: UPUJcA8xRPYPnN0ZEhJ0IssqSBzCZsZb4x4xkdq1fRsg+Ita8zTv9meZP+Ow5gLYKE/jwR1Ls+
 TSSSXOca+xydBF1AE4urawSsohEHp/z3f9aGn9g8fwGngSIlHOBhxdCWjODdw+de8xVT5wGMDw
 fhR4mSH76A4o7hJuJCRJl0Acr6l01/lEzMOgzaZTs5Q64D/GrelBjc4KY2Pwshxf/3YqDnK5Kl
 T6Mf/iSmktrrS5llrRCHQs+tKgxak++BUUAsK2opurDT32B/+l9/aHeqmhdbu9NHRrATzTEaVt
 0XBtF+10TKE5NSfnSHQV4N46
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="129913557"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:18 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:18 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:15 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 02/12] net: phy: mchp: Add support for LAN8804 PHY
Date: Mon, 20 Sep 2021 11:52:08 +0200
Message-ID: <20210920095218.1108151-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025120_252013_71D73A6B 
X-CRM114-Status: GOOD (  12.51  )
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

The LAN8804 SKY has same features as that of LAN8804 SKY except that it
doesn't support 1588, SyncE or Q-USGMII.

This PHY is found inside the LAN966X switches.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/net/phy/micrel.c   | 73 ++++++++++++++++++++++++++++++++++++++
 include/linux/micrel_phy.h |  1 +
 2 files changed, 74 insertions(+)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 5c928f827173..34800b547004 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -1537,6 +1537,65 @@ static int ksz886x_cable_test_get_status(struct phy_device *phydev,
 	return ret;
 }
 
+#define LAN_EXT_PAGE_ACCESS_CONTROL			0x16
+#define LAN_EXT_PAGE_ACCESS_ADDRESS_DATA		0x17
+#define LAN_EXT_PAGE_ACCESS_CTRL_EP_FUNC		0x4000
+
+#define LAN8804_ALIGN_SWAP				0x4a
+#define LAN8804_ALIGN_TX_A_B_SWAP			0x1
+#define LAN8804_ALIGN_TX_A_B_SWAP_MASK			GENMASK(2, 0)
+#define LAN8814_CLOCK_MANAGEMENT			0xd
+#define LAN8814_LINK_QUALITY				0x8e
+
+static int lanphy_read_page_reg(struct phy_device *phydev, int page, u32 addr)
+{
+	u32 data;
+
+	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL, page);
+	phy_write(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA, addr);
+	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL,
+		  (page | LAN_EXT_PAGE_ACCESS_CTRL_EP_FUNC));
+	data = phy_read(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA);
+
+	return data;
+}
+
+static int lanphy_write_page_reg(struct phy_device *phydev, int page, u16 addr,
+				 u16 val)
+{
+	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL, page);
+	phy_write(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA, addr);
+	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL,
+		  (page | LAN_EXT_PAGE_ACCESS_CTRL_EP_FUNC));
+
+	val = phy_write(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA, val);
+	if (val) {
+		phydev_err(phydev, "Error: phy_write has returned error %d\n",
+			   val);
+		return val;
+	}
+	return 0;
+}
+
+static int lan8804_config_init(struct phy_device *phydev)
+{
+	int val;
+
+	/* MDI-X setting for swap A,B transmit */
+	val = lanphy_read_page_reg(phydev, 2, LAN8804_ALIGN_SWAP);
+	val &= ~LAN8804_ALIGN_TX_A_B_SWAP_MASK;
+	val |= LAN8804_ALIGN_TX_A_B_SWAP;
+	lanphy_write_page_reg(phydev, 2, LAN8804_ALIGN_SWAP, val);
+
+	/* Make sure that the PHY will not stop generating the clock when the
+	 * link partner goes down
+	 */
+	lanphy_write_page_reg(phydev, 31, LAN8814_CLOCK_MANAGEMENT, 0x27e);
+	lanphy_read_page_reg(phydev, 1, LAN8814_LINK_QUALITY);
+
+	return 0;
+}
+
 static struct phy_driver ksphy_driver[] = {
 {
 	.phy_id		= PHY_ID_KS8737,
@@ -1718,6 +1777,20 @@ static struct phy_driver ksphy_driver[] = {
 	.get_stats	= kszphy_get_stats,
 	.suspend	= genphy_suspend,
 	.resume		= kszphy_resume,
+}, {
+	.phy_id		= PHY_ID_LAN8804,
+	.phy_id_mask	= MICREL_PHY_ID_MASK,
+	.name		= "Microchip LAN966X Gigabit PHY",
+	.config_init	= lan8804_config_init,
+	.driver_data	= &ksz9021_type,
+	.probe		= kszphy_probe,
+	.soft_reset	= genphy_soft_reset,
+	.read_status	= ksz9031_read_status,
+	.get_sset_count	= kszphy_get_sset_count,
+	.get_strings	= kszphy_get_strings,
+	.get_stats	= kszphy_get_stats,
+	.suspend	= genphy_suspend,
+	.resume		= kszphy_resume,
 }, {
 	.phy_id		= PHY_ID_KSZ9131,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
diff --git a/include/linux/micrel_phy.h b/include/linux/micrel_phy.h
index 3d43c60b49fa..1f7c33b2f5a3 100644
--- a/include/linux/micrel_phy.h
+++ b/include/linux/micrel_phy.h
@@ -28,6 +28,7 @@
 #define PHY_ID_KSZ9031		0x00221620
 #define PHY_ID_KSZ9131		0x00221640
 #define PHY_ID_LAN8814		0x00221660
+#define PHY_ID_LAN8804		0x00221670
 
 #define PHY_ID_KSZ886X		0x00221430
 #define PHY_ID_KSZ8863		0x00221435
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
