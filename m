Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7160C4167B
	for <linux-phy@archiver.kernel.org>; Wed, 29 Nov 2023 12:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xXS1u5tBHofp5bL1tS5TdGhpmpbc0xkP7mQuSBjJ5lQ=; b=EnWK3AC48O6k/n
	BReH0w7O4+LfDeM21NUpZYNQHH8Qki7TQC8dYI9LptMn040RjFZPxE2uXLMqQmdokydBSDsjiLDnF
	s3WFyw7i04SEZ9vybFw262MRtyRYBoW2BdCnC3QA9Q5Nd+EjOa3uRhHaNI02aR/mgZ3hjFtFr5WEn
	mfR+InMvVnwiH5ma7cCv7nFQBeHSEkPy5c/4uY+OdmfqPvYWCe4ZvW9TnqceeawAguIYeTHnFuoT4
	lfk6mO0Dv+3q9w+8XI0jU63id5UGDznTZOGe0dlx5ARhI1JdDt6AhE/okUfLgaMYLqtqIqAgtGRcz
	G7ySTRao5SabuCo9Obfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Jd3-008J0e-1T;
	Wed, 29 Nov 2023 12:25:21 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Jd0-008IzK-0x
	for linux-phy@lists.infradead.org;
	Wed, 29 Nov 2023 12:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id; bh=jEObS/HV3KnbOlieZh
	/QleucJWKx0CNHN/jOSzwsRpg=; b=oQL6dXI+6gZ1aQHVYvEjghiPQ4KsT8RutW
	g/sqFKeQ1Q10Wf7wkObC3BHUZX3sjDSQEgph+d4jjLqHeY/9NwxsPf7JJMpjzTq/
	Y2TOLs7Eg0VFgj1zAi8nIkYgQ/yHJoKq1O7o5bh7bpm5pO+KFQOZEXZNBKzIbMuH
	NtlsBhYTQ=
Received: from localhost.localdomain (unknown [39.144.190.126])
	by zwqz-smtp-mta-g1-1 (Coremail) with SMTP id _____wAnhjmaLWdl6JhZCQ--.40944S2;
	Wed, 29 Nov 2023 20:24:59 +0800 (CST)
From: Haoran Liu <liuhaoran14@163.com>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	robh@kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haoran Liu <liuhaoran14@163.com>
Subject: [PATCH] [phy/marvell] phy-pxa-28nm-usb2: Add error handling
Date: Wed, 29 Nov 2023 04:24:57 -0800
Message-Id: <20231129122457.33413-1-liuhaoran14@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: _____wAnhjmaLWdl6JhZCQ--.40944S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrur4fAw4xXw4DuF4DZr45Awb_yoWDuFcEgr
	1UJr97Xr4DZwsFy34UKw15Ja429ryfZa4rWFyIqrWFyFZrJ3ZI93yDZFs3A3s8Gw42kr9r
	tw45Zr47Ar13WjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRKpB-UUUUUU==
X-Originating-IP: [39.144.190.126]
X-CM-SenderInfo: xolxxtxrud0iqu6rljoofrz/1tbiwgA3glc661zDHQAAsz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_042518_741350_ACB10AA8 
X-CRM114-Status: UNSURE (   9.21  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch adds error handling to the mv_usb2_phy_28nm_init
function in drivers/phy/marvell/phy-pxa-28nm-usb2.c. The
function previously did not handle the potential failure of
the clk_prepare_enable call, which could result in unexpected
behavior if clock preparation failed.

Signed-off-by: Haoran Liu <liuhaoran14@163.com>
---
 drivers/phy/marvell/phy-pxa-28nm-usb2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/marvell/phy-pxa-28nm-usb2.c b/drivers/phy/marvell/phy-pxa-28nm-usb2.c
index 64afb82cf70e..93fea4f246a2 100644
--- a/drivers/phy/marvell/phy-pxa-28nm-usb2.c
+++ b/drivers/phy/marvell/phy-pxa-28nm-usb2.c
@@ -154,7 +154,11 @@ static int mv_usb2_phy_28nm_init(struct phy *phy)
 	u32 reg;
 	int ret;
 
-	clk_prepare_enable(mv_phy->clk);
+	ret = clk_prepare_enable(mv_phy->clk);
+	if (ret) {
+		dev_err(&phy->dev, "Failed to enable clock: %d\n", ret);
+		return ret;
+	}
 
 	/* PHY_28NM_PLL_REG0 */
 	reg = readl(base + PHY_28NM_PLL_REG0) &
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
