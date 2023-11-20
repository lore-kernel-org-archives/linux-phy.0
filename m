Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC7AC54E76
	for <linux-phy@archiver.kernel.org>; Mon, 20 Nov 2023 09:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PvIW1T80xcP+sJIaH0E64+MqZyBZzARMJwkm92uxCVs=; b=qizZ2pYQ3QuBod
	hdne+trGkI3AEOyeXwd+EqtOK7d+MJY+a7jR2TTsUN4qYc9YwqQmTqNpV+X/ovFbjjxFNCOiKO625
	Ph9ShFkt0klThLyDDqeJcW1sRE+pPBzUlB9eqNTtotcFUiwZYd4/APtVCldEoLH44f1zjPiLVjD1S
	JtrhqwY8J0FqAWE/5xTA738sea2ZL8TR4ytcyPMM+Ud8bZ/dhsWEThXlQC1S2Lk8Te1YfEh1eRpnF
	vrTw2VNF9eN+MTdO242tyKUhQ+38LNKsbXzV8TbrVg31SvL0BZIoaZ1QKOEMcpdnswxbIzkrcakYy
	KRn7PmTkRRdwllLy1Xig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r50Jv-00BbbI-2o;
	Mon, 20 Nov 2023 09:11:55 +0000
Received: from [42.101.60.195] (helo=mail.nfschina.com)
	by bombadil.infradead.org with smtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r50Js-00BbYf-2R
	for linux-phy@lists.infradead.org;
	Mon, 20 Nov 2023 09:11:54 +0000
Received: from localhost.localdomain (unknown [180.167.10.98])
	by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id 74CA062960874;
	Mon, 20 Nov 2023 17:11:25 +0800 (CST)
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
To: vincent.sunplus@gmail.com,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: Su Hui <suhui@nfschina.com>,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH] phy: sunplus: return negative error code in sp_usb_phy_probe
Date: Mon, 20 Nov 2023 17:10:47 +0800
Message-Id: <20231120091046.163781-1-suhui@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_011153_140998_545DBDD5 
X-CRM114-Status: UNSURE (   8.42  )
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

devm_phy_create() return negative error code, 'ret' should be
'PTR_ERR(phy)' rather than '-PTR_ERR(phy)'.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Su Hui <suhui@nfschina.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 0efe74ac9c6a..637a5fbae6d9 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -275,7 +275,7 @@ static int sp_usb_phy_probe(struct platform_device *pdev)
 
 	phy = devm_phy_create(&pdev->dev, NULL, &sp_uphy_ops);
 	if (IS_ERR(phy)) {
-		ret = -PTR_ERR(phy);
+		ret = PTR_ERR(phy);
 		return ret;
 	}
 
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
