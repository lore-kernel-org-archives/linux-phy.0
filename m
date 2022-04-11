Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF790C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 13:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sIHQhJNO4plJymiz4VfBT4X1J6Gxu/Tx30uKgdr0CMQ=; b=sn6Sp/Tjbqxhca
	xrcqNjogxAg4lsQac6RVuBjSS9Z96dG6o0f81hWoU0ZRWMlxjFp8khMvRXo8TLwDlbNjHtXLZ43tl
	BFzOhPgOppazpDVD7G0ru/i6mPNJnHJYD++co56avoKhtBDLfSgNmtjkARnELFpWKM9pquphnB3N2
	z0Y1S7Oq8QAkqIHCImjYl2Rnfa/qI1zfN0TmAD9o+LEaBAxOxVYZoMHlxRm8YoyR4jJF62lAROviU
	hOzjbM6P9gJy10XEAwdxvQHmnZblNcnZU04UscU6JCXecvMsqXN2Mr6sXWJ0KEXzIqOVKXGYn9vl3
	6DVDMvq26huAh0NLQopw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nduVE-009EPd-5W; Mon, 11 Apr 2022 13:54:48 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nduVB-009EOQ-KV
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 13:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649685284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=+Ko5UdiZ2Nq5k+VVxETea59ROYKz8KfsDRGUL0i/214=;
 b=bUyFOQTuLv+nGFGHovvKcapIXxL5BumXaovMRZb6OkTifAD5reI11sOVo6UJ4ikmsVQLVt
 UYV1j8f21oLDIHUAQPHVVqmJUVSSttBl/CTW/f8Uxa358PPnx+i+45Lo6t5M0X0yStJUcE
 LshlhjN8r2s4wAo0gVheNi5cxl23oWc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-315-PVPV12FKOxenaDYVX_UFLg-1; Mon, 11 Apr 2022 09:54:43 -0400
X-MC-Unique: PVPV12FKOxenaDYVX_UFLg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80C662A5954D;
 Mon, 11 Apr 2022 13:54:42 +0000 (UTC)
Received: from x1.localdomain.com (unknown [10.39.195.187])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E5EBC4C7A0;
 Mon, 11 Apr 2022 13:54:41 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Hans de Goede <hdegoede@redhat.com>, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: ti: tusb1210: Make tusb1210_chg_det_states static
Date: Mon, 11 Apr 2022 15:54:40 +0200
Message-Id: <20220411135440.558394-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_065445_788520_7FEF83B0 
X-CRM114-Status: UNSURE (   9.90  )
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

Make tusb1210_chg_det_states static, fixing the following sparse warning:

drivers/phy/ti/phy-tusb1210.c:158:12: sparse: sparse:
 symbol 'tusb1210_chg_det_states' was not declared. Should it be static?

Fixes: 48969a5623ed ("phy: ti: tusb1210: Add charger detection")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/phy/ti/phy-tusb1210.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index a0cdbcadf09e..c5bd74874f73 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -155,7 +155,7 @@ static int tusb1210_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 }
 
 #ifdef CONFIG_POWER_SUPPLY
-const char * const tusb1210_chg_det_states[] = {
+static const char * const tusb1210_chg_det_states[] = {
 	"CHG_DET_CONNECTING",
 	"CHG_DET_START_DET",
 	"CHG_DET_READ_DET",
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
