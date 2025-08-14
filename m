Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1720DCA0ED1
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y5LmY9c1xEx/edskwEwAbGIZ8cctv7SJ4yRd0OXjb98=; b=LAuosk9WL2cqpz
	UtJZdeEuY83aXyUgBsPcXMgbAHhRqjvLW0a0oJAe7TSZvCbBNgpWb2RMKtCgBTGTomHIhnjYmVrcq
	VlltaPcjPxLdUDIyvLFAKGVSzROt94kxy+aNjEF1IVNQjNjOC+gikjpfU8u/22daiitVP/1QEckpc
	tNrxip/NWDeMBUfw4FuYK9hRKhtksKg5vPiGpG9ux/5N0nBxKrgaDH3uQXkHhRdNRrtRZUyiy72uG
	1vMbyVFaAAPhUDtoO+emm1MEIfO1J0jOdzjsv85/yX3T7e1Euc2v+4JmsFC8xWHxT4Zut7mPsUx7a
	CLJHivyX8N12fODYrDHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umQfH-0000000Fpf1-1ykc;
	Thu, 14 Aug 2025 05:38:15 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umQfE-0000000FpeV-27pX
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 05:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=nh
	v8WVKq3WU5Ll3+dcG7vTMSWNp5cpIVD8CJmKcyYZ4=; b=JlTkrJRHBacTOUhr0S
	/RvI2EjONdA+ENzPC2nq5eEuJI8Dd+thaGXYlssPWsQDDv2w0cT++nz9RRONZ1i3
	Ubx9Q0JxrByNv5KrM3w2p+CN4OQrT3XxFQeMMpQr/QLr+BNmh4ALh9kLequT97J1
	pvUi/rGngL/vFFUBkwYl/mg4s=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wAnOrQudp1ojstDBw--.33177S2;
	Thu, 14 Aug 2025 13:37:51 +0800 (CST)
From: Yang Xiuwei <yangxiuwei2025@163.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Xiuwei <yangxiuwei@kylinos.cn>
Subject: [PATCH] phy: use IS_ERR_OR_NULL() helper in of_phy_put()
Date: Thu, 14 Aug 2025 13:37:42 +0800
Message-Id: <20250814053742.2186419-1-yangxiuwei2025@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wAnOrQudp1ojstDBw--.33177S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKw45JF1xAr1rKFyxuF4fAFb_yoWxZFc_Wr
	1xXrn3ArsakF47Wr17CFWSv34jgFykurWruan29rWfAa47Jr1SyF1UA34rtr97G393uFyD
	ta17ZF1ay34UAjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnvdgtUUUUU==
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: p1dqw55lxzvxisqskqqrwthudrp/xtbBDgapkGidcheADwAAsu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_223812_936920_BEE13FC1 
X-CRM114-Status: UNSURE (   4.53  )
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

From: Yang Xiuwei <yangxiuwei@kylinos.cn>

The current check for `!phy || IS_ERR(phy)` can be simplified to
the standard helper macro IS_ERR_OR_NULL(). This improves code
readability and maintains consistency with kernel coding practices.

Signed-off-by: Yang Xiuwei <yangxiuwei@kylinos.cn>

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 04a5a34e7a95..9248f2249849 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -677,7 +677,7 @@ EXPORT_SYMBOL_GPL(of_phy_get);
  */
 void of_phy_put(struct phy *phy)
 {
-	if (!phy || IS_ERR(phy))
+	if (IS_ERR_OR_NULL(phy))
 		return;
 
 	mutex_lock(&phy->mutex);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
