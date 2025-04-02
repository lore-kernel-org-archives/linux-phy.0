Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 960DDC3ABD6
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 11:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uDGLEuwwYYIvWpLpjqQvBU7lhBX2K7drPF3+ZIOv8hU=; b=t5QKS39nWvVahZY6GS5SeRnisu
	kveU2t3QNMhgfUeQX1ZRqwuc17HQ2i7evxaMPIlLw0BKQGkfzJ5DZdiSsu3JDOW7JIzLybzW12fc3
	RCyItwyYk6VxNC9UKWPNaj+jj5PxQDjlpCBTDCjXyZovdSMJgzNSaeH2oF7cUaB/FM25fT1m8jncb
	q8HMWcFZPP0jOYRn5zwpYIx6Iv9UQN/e/Frij2lO4oo4xYDHwljJryA1XXL9EeqleVP/wwzgjBYqm
	/hKrAvnZgNG+7trxbtG9QBFLOAVNynFOHkpulh2ruUgy/HHodrf/9ceNZQKS55gHjn8rFAEpE+S2b
	bOCkNV0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uER9f-00000009E91-1RFP;
	Mon, 12 May 2025 11:17:07 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzwXV-00000005xSJ-3FwB;
	Wed, 02 Apr 2025 11:45:51 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZSNNR0FSrz8QrkZ;
	Wed,  2 Apr 2025 19:45:43 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl1.zte.com.cn with SMTP id 532Bjd3j070014;
	Wed, 2 Apr 2025 19:45:39 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp04[null])
	by mapi (Zmail) with MAPI id mid32;
	Wed, 2 Apr 2025 19:45:42 +0800 (CST)
Date: Wed, 2 Apr 2025 19:45:42 +0800 (CST)
X-Zmail-TransId: 2afb67ed2366ffffffffef7-237ea
X-Mailer: Zmail v1.0
Message-ID: <20250402194542026OH8jAzuv0uq-J-D9AVPqJ@zte.com.cn>
In-Reply-To: <20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn>
References: 20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <vkoul@kernel.org>, <robert.marko@sartura.hr>
Cc: <kishon@kernel.org>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
        <samuel@sholland.org>, <zhang.enpei@zte.com.cn>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
        <linux-kernel@vger.kernel.org>, <luka.perkov@sartura.hr>,
        <linux-arm-msm@vger.kernel.org>, <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIGxpbnV4LW5leHQgNS81XSBwaHk6IHJvY2tjaGlwOiBwaHktcm9ja2NoaXAtdHlwZWM6IFVzZcKgZGV2X2Vycl9wcm9iZSgp?=
X-MAIL: mse-fl1.zte.com.cn 532Bjd3j070014
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67ED2367.000/4ZSNNR0FSrz8QrkZ
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_044549_970881_6589E7BC 
X-CRM114-Status: GOOD (  10.59  )
X-Mailman-Approved-At: Mon, 12 May 2025 03:59:00 -0700
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

From: Zhang Enpei <zhang.enpei@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Zhang Enpei <zhang.enpei@zte.com.cn>
Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index d9701b6106d5..94d1e6ead1a7 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1151,11 +1151,9 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(tcphy->extcon)) {
 		if (PTR_ERR(tcphy->extcon) == -ENODEV) {
 			tcphy->extcon = NULL;
-		} else {
-			if (PTR_ERR(tcphy->extcon) != -EPROBE_DEFER)
-				dev_err(dev, "Invalid or missing extcon\n");
-			return PTR_ERR(tcphy->extcon);
-		}
+		} else
+			return dev_err_probe(dev, PTR_ERR(tcphy->extcon),
+					     "Invalid or missing extcon\n");
 	}

 	pm_runtime_enable(dev);
-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
