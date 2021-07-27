Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8537BC4320A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 10:54:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46EAA615E5
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 10:54:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 46EAA615E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=mediatek.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rcydX/TbDQB8zfhyrHo2RfQDt5CkUtJhRUUHlRZApBg=; b=F23p1DNafBu8J6
	q9BQzRKX4YR0IeXNIL9UTWclVbPzRnu28SuLKjOA80dRQI97RUfr4nTP+ttcjt2NBg0pT/zo1hlxe
	VdG7UTQHjHvcMWZZiMmOuW9w2NY5bX7xk8YyCqiuGMdn8FVvwXhieUgk4KMxx3s3E9ImEhoC8gbT+
	wjxNPZKn7jLJABWXE4/iIw79maXeg7296GmB8z8iLtqJhuUmnI8StmZ79MZUtKql3TElu0K0xCdrT
	FBs4NSN6FqP+lQwDgmecR1lAPku/clsrUMAuse97Rp6tfVNwzoIxGXY3pNZNp0hSVwdkd6KRw7/o8
	hWxCiVQV9KABHox8Bdnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8KjS-00EVOz-Q5; Tue, 27 Jul 2021 10:54:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8Kj4-00EVKK-NS; Tue, 27 Jul 2021 10:54:20 +0000
X-UUID: 85fb98d2fc3e4d209ddeda57dfecc95b-20210727
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=iiJ9TlMy1Y3hIWltnCNZ1n1OG+Lm6SmtBMcv7Xs9hlE=; 
 b=JaJJLVZul2qP11T0A0VL90GfKtAmYZT+kkn1jHOxVMWb8VgJk8BgvSAX7tSyffLsx95b1lK0kBj9qkYld19Lbxw1Q7C3FWfdi+ZHsJfkIbln8ak3w/SVZ1XpQcTBHAbrokutcqHTWdxiHAovJngnVOo+a0elVdoiM1g3TwSqdho=;
X-UUID: 85fb98d2fc3e4d209ddeda57dfecc95b-20210727
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 1250745340; Tue, 27 Jul 2021 03:54:10 -0700
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 27 Jul 2021 03:50:45 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 27 Jul 2021 18:50:44 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 27 Jul 2021 18:50:44 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: <linux-phy@lists.infradead.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
CC: Ainge Hsu <ainge.hsu@mediatek.com>, Eddie Hung <eddie.hung@mediatek.com>, 
 Kuohong Wang <kuohong.wang@mediatek.com>, Mediatek WSD Upstream
 <wsd_upstream@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, "Macpaul
 Lin" <macpaul@gmail.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-usb@vger.kernel.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH 1/2] phy: introduce phy mode PHY_MODE_UART and
 phy_get_mode_ext()
Date: Tue, 27 Jul 2021 18:50:12 +0800
Message-ID: <1627383013-4535-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210727_035418_817646_0FE031E5 
X-CRM114-Status: GOOD (  13.20  )
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

Some embedded platform shared PINs between USB and UART.

For example, some phone will use special cable detection in boot loader
to switch USB port function into UART mode. Hence Kernel need to query
the hardware state from PHY registers to confirm the initialzation flow
for PHY and USB driver.

To support this kind of PIN switch, new PHY MODE and query API is
required. Here we introduce a new PHY mode: PHY_MODE_UART.

API phy_get_mode_ext() can be used to query the MODE from hardware
instead of reading it from phy attributes.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/phy/phy-core.c  |   17 +++++++++++++++++
 include/linux/phy/phy.h |    3 +++
 2 files changed, 20 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index ccb575b..b8f6539 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -373,6 +373,23 @@ int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode)
 }
 EXPORT_SYMBOL_GPL(phy_set_mode_ext);
 
+int phy_get_mode_ext(struct phy *phy)
+{
+	int ret;
+
+	if (!phy || !phy->ops->get_mode_ext)
+		return 0;
+
+	mutex_lock(&phy->mutex);
+	ret = phy->ops->get_mode_ext(phy);
+	if (!ret)
+		ret = phy->attrs.mode;
+	mutex_unlock(&phy->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_get_mode_ext);
+
 int phy_set_media(struct phy *phy, enum phy_media media)
 {
 	int ret;
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 0ed434d..7d32c6b 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -34,6 +34,7 @@ enum phy_mode {
 	PHY_MODE_USB_DEVICE_HS,
 	PHY_MODE_USB_DEVICE_SS,
 	PHY_MODE_USB_OTG,
+	PHY_MODE_UART,
 	PHY_MODE_UFS_HS_A,
 	PHY_MODE_UFS_HS_B,
 	PHY_MODE_PCIE,
@@ -70,6 +71,7 @@ enum phy_media {
  * @power_on: powering on the phy
  * @power_off: powering off the phy
  * @set_mode: set the mode of the phy
+ * @get_mode_ext: get the extented mode of the phy
  * @set_media: set the media type of the phy (optional)
  * @set_speed: set the speed of the phy (optional)
  * @reset: resetting the phy
@@ -83,6 +85,7 @@ struct phy_ops {
 	int	(*power_on)(struct phy *phy);
 	int	(*power_off)(struct phy *phy);
 	int	(*set_mode)(struct phy *phy, enum phy_mode mode, int submode);
+	int	(*get_mode_ext)(struct phy *phy);
 	int	(*set_media)(struct phy *phy, enum phy_media media);
 	int	(*set_speed)(struct phy *phy, int speed);
 
-- 
1.7.9.5
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
