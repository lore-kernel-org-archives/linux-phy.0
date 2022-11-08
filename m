Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A43C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 07:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tuaXr4AQtqXiSvM7SWeHbYE8V9ZGdbpTNXh0IQ0VzgE=; b=z+EoQ4gXLChr6k
	qHVmZQfzpMs1qKykfwz7iQGr8TbxpZgU8l+0t5eernMAxYUMm/5HnbFKOXnc7U465pmI8PJMSq/uP
	xki5P8WRSTUo+PskHhuvdScVStlTNrm/8lG5KDWExpKdXOjqs+iqVI57HQykaG5qPEtVToHPpl8vD
	PPBO4tQUh3XcxVWzTplwBtBVoPhdzHYUqQiKj5N1lvhO6AaGV+3W2wPz1po7pzAMc8drGpzRBIHiQ
	RI3NGTPHxa4j7EXRZYr760Mcv7JI7US/0tmNN8Dm7QWhugbS1hkSSAvYCrBbPYBXWtSVrrw/Oih8I
	Hgvuy4Gk1n3j4TaAhrLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osJAO-003S2j-Qq; Tue, 08 Nov 2022 07:37:04 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osJAK-003RzE-N2
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 07:37:02 +0000
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4N60FQ5gkHzpWJp;
	Tue,  8 Nov 2022 15:33:14 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 8 Nov
 2022 15:36:53 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <vincent.sunplus@gmail.com>, <vkoul@kernel.org>, <kishon@kernel.org>
CC: <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, YueHaibing <yuehaibing@huawei.com>
Subject: [PATCH v2] phy: usb: sunplus: Fix memleak in update_disc_vol()
Date: Tue, 8 Nov 2022 15:34:30 +0800
Message-ID: <20221108073430.29172-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_233700_969529_52E96844 
X-CRM114-Status: UNSURE (   7.86  )
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

'otp_v' is allocated in nvmem_cell_read(), it should be freed
before return.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: free otp_v before return
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index e827b79f6d49..62d5cb5c7c9d 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -105,6 +105,9 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	val = (val & ~J_DISC) | set;
 	writel(val, usbphy->phy_regs + CONFIG7);
 
+	if (!IS_ERR(otp_v))
+		kfree(otp_v);
+
 	return 0;
 }
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
