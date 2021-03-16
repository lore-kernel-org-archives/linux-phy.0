Return-Path: <SRS0=5njw=IO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77C6FC433DB
	for <linux-phy@archiver.kernel.org>; Tue, 16 Mar 2021 13:12:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1AA176505E
	for <linux-phy@archiver.kernel.org>; Tue, 16 Mar 2021 13:12:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1AA176505E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=163.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=COrQUUF9oy+UVDOSDvIHb8yfnt4Sk7TYGBWOoJI3rwk=; b=BAZGotvfYrOvi3vXW/qi5fReJg
	TvkJNJjtQMAVLfK0+8oqcZhen7SDYrgYNATZcsVI1T0FzQH91GbjoB6367Eh8apb2XpiQqMMFfdv9
	ycOtZ5E84SukW6zo6CSRUJ17Du9eN+WXQkPfhr1qFkwlh06hyesrW7ZS7t78iuBr1xmAXRYsCd7uL
	Z69cOp06pSc1yzzV00YyjVF7i2HSm6xRuquz2frzdPpXGXXXVfYWkBtJ6JUVjG0Lz+VpSTB6mKke5
	XasVSKCSlTi4GP73R05+E9J+LhP4Cf+EEPzNWHDUlp09MMV/OCBYszs2Nc1qt9ZMPZ/1dfh1RkhzR
	ZEjlh6RA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM9Ui-000oYe-AE; Tue, 16 Mar 2021 13:12:22 +0000
Received: from m12-14.163.com ([220.181.12.14])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM9Ue-000oXf-FP
 for linux-phy@lists.infradead.org; Tue, 16 Mar 2021 13:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=L4EhQ
 n+V7RMC+e9zULsyR5LaAYD6Z7Y5sVnlmmzcacw=; b=nu0SSb2s+rj5WsRoN6tkZ
 YpN6J2lIQyiOvPcuum5A5+USeYDr+yDwjHebjUuSIow9bj8Q2RZWR74b1+MjSBMd
 AuD34zQU84INscOTI3lBKDc+qeno8kvY1WvAGO2MYZiEpLB5YvcD4oIxmVsB3ndf
 OWp+Xv42KMnJ/63+OlhTYE=
Received: from yangjunlin.ccdomain.com (unknown [218.17.89.92])
 by smtp10 (Coremail) with SMTP id DsCowAAnP0ukqlBgYhfcpg--.27432S2;
 Tue, 16 Mar 2021 20:55:02 +0800 (CST)
From: angkery <angkery@163.com>
To: kishon@ti.com, vkoul@kernel.org, yuehaibing@huawei.com,
 rikard.falkeborn@gmail.com, weiyongjun1@huawei.com, jsarha@ti.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junlin Yang <yangjunlin@yulong.com>
Subject: [PATCH] Revert "phy: ti: j721e-wiz: add missing of_node_put"
Date: Tue, 16 Mar 2021 20:51:38 +0800
Message-Id: <20210316125138.2421-1-angkery@163.com>
X-Mailer: git-send-email 2.24.0.windows.2
MIME-Version: 1.0
X-CM-TRANSID: DsCowAAnP0ukqlBgYhfcpg--.27432S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF4UGFWrXF1fuF1fuF45KFg_yoW3Zwb_K3
 409rZ7WrWqv3Wvy3WjqF1fXasFkws7uFWkuFs5K3s5A343A3yj9rnruFn8K3y3ury09r98
 u3y8Zan7Cr1UGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU516wtUUUUU==
X-Originating-IP: [218.17.89.92]
X-CM-SenderInfo: 5dqjyvlu16il2tof0z/1tbiLRNXI1SIlTYAtgABsC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_131217_140535_70C07152 
X-CRM114-Status: UNSURE (   7.85  )
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

From: Junlin Yang <yangjunlin@yulong.com>

This reverts commit 00f2e6f668b05c259f3f8d1e943318bcad8486e7.

The duplicate from #796 should be removed.

Signed-off-by: Junlin Yang <yangjunlin@yulong.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 59439a9..448d8d1 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -793,7 +793,6 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 			dev_err(dev,
 				"%s: Reading \"reg\" from \"%s\" failed: %d\n",
 				__func__, subnode->name, ret);
-			of_node_put(subnode);
 			return ret;
 		}
 		of_property_read_u32(subnode, "cdns,num-lanes", &num_lanes);
-- 
1.9.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
