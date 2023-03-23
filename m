Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DFA8C6FD1C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 07:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yKMtjmsuJHJ2/FbgZrL+5pbSyDYjSLaSX814VMwahxw=; b=35g
	L/Z+1wSWE4RQnUKmJWJCtB51x1lCE++8Nj1JAypBGJB37fXqP2lOhTwBW43J9hPuzV/VbSWKyk2lF
	Ph8ohbhLmpNf5lDGxeH3XjQ6zKe8agMuTUFXOq0CHC0kX138Y1LMlWiHfd2fL5mSiEZDIbIMKdX9n
	7iSchx5OlyP3EYroIz1KF4nIdsKSrLxYoHNk1qr2v9uattr3jH7pk6D9sDGHB6Znpv9WppBUp3Azo
	zi8Rncd6YQsiq4UeFJYxSch42X/M7DfV0r3VdVDoZrsu5IkbXWHuIx2MYabwuyJ2pCVXaUIevpO4g
	3dOofRH1992ESMbObjtiEHCWmfGEwyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFcq-0018W3-32;
	Thu, 23 Mar 2023 07:44:44 +0000
Received: from mxct.zte.com.cn ([183.62.165.209])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFco-0018UG-17
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 07:44:43 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4Phy6C1SMkz501Sn;
	Thu, 23 Mar 2023 15:44:35 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl2.zte.com.cn with SMTP id 32N7iLMm083884;
	Thu, 23 Mar 2023 15:44:21 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Thu, 23 Mar 2023 15:44:23 +0800 (CST)
Date: Thu, 23 Mar 2023 15:44:23 +0800 (CST)
X-Zmail-TransId: 2afa641c0357ffffffff89e-81a93
X-Mailer: Zmail v1.0
Message-ID: <202303231544233162199@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <vkoul@kernel.org>
Cc: <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IGxhbnRpcTogcmN1LXVzYjI6IFVzZSBkZXZfZXJyX3Byb2JlKCk=?=
X-MAIL: mse-fl2.zte.com.cn 32N7iLMm083884
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641C0363.000/4Phy6C1SMkz501Sn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_004442_563718_B741A5F3 
X-CRM114-Status: UNSURE (   9.49  )
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

From: Ye Xingchen <ye.xingchen@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/lantiq/phy-lantiq-rcu-usb2.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c b/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c
index 29d246ea24b4..9a5d797db1f4 100644
--- a/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c
+++ b/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c
@@ -193,11 +193,9 @@ static int ltq_rcu_usb2_of_parse(struct ltq_rcu_usb2_priv *priv,
 	}

 	priv->ctrl_reset = devm_reset_control_get_shared(dev, "ctrl");
-	if (IS_ERR(priv->ctrl_reset)) {
-		if (PTR_ERR(priv->ctrl_reset) != -EPROBE_DEFER)
-			dev_err(dev, "failed to get 'ctrl' reset\n");
-		return PTR_ERR(priv->ctrl_reset);
-	}
+	if (IS_ERR(priv->ctrl_reset))
+		return dev_err_probe(dev, PTR_ERR(priv->ctrl_reset),
+				     "failed to get 'ctrl' reset\n");

 	priv->phy_reset = devm_reset_control_get_optional(dev, "phy");

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
