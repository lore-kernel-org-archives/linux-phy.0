Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06E5EC3ABD4
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 11:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AaZqAX85QvsX1bfnLP8FSqRhO00/mQgl9+PZf8FjsaU=; b=P+Ap28jwzwQz9KcZqiKVQVJzoT
	BSvJhH3YYfDhwDg1aGOsi6ZUfKLuNPeVpo0L1wEq41mTnoQuxIKW53QDrbQBfTdD4GYtJ4WU5r6L6
	t0+Hn/t/P4dsn7gKDIh/Gxoet0xOkYJb5VPwNqKRsoK1D+Qzl3l9vS0+sUCR0PdZCz8Qv1TFvrNuk
	msdnzemJ+yHhLlzHXiUz/8QElHF7cecxnUBr6FqSQH2ggXD3MZjsOFViX3f4msc9XOVmm/52dRorU
	j1+5UxhgY73IOzay2idJP/NGDRttai3XudL2r2oktkya3V8CjEjTINW6n0YBtOgTJKfPqpzGxF1AK
	ZvJq85gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uER9e-00000009E8E-3H0o;
	Mon, 12 May 2025 11:17:06 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzwVz-00000005x4O-1wjE;
	Wed, 02 Apr 2025 11:44:16 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZSNLk0g6Rz5B1Jd;
	Wed,  2 Apr 2025 19:44:14 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl2.zte.com.cn with SMTP id 532BhsZv019636;
	Wed, 2 Apr 2025 19:43:54 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp01[null])
	by mapi (Zmail) with MAPI id mid32;
	Wed, 2 Apr 2025 19:43:57 +0800 (CST)
Date: Wed, 2 Apr 2025 19:43:57 +0800 (CST)
X-Zmail-TransId: 2af967ed22fd046-2b930
X-Mailer: Zmail v1.0
Message-ID: <20250402194357404aoSxd3G74tojxA7uCZXiy@zte.com.cn>
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
Subject: =?UTF-8?B?W1BBVENIIGxpbnV4LW5leHQgMy81XSBwaHk6IHF1YWxjb21tOiBwaHktcWNvbS1pcHE0MDE5LXVzYjogVXNlwqBkZXZfZXJyX3Byb2JlKCk=?=
X-MAIL: mse-fl2.zte.com.cn 532BhsZv019636
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67ED230E.000/4ZSNLk0g6Rz5B1Jd
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_044415_654244_808B1832 
X-CRM114-Status: GOOD (  10.32  )
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
 drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
index da6f290af722..738b3015747f 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
@@ -109,11 +109,9 @@ static int ipq4019_usb_phy_probe(struct platform_device *pdev)
 	}

 	phy->por_rst = devm_reset_control_get(phy->dev, "por_rst");
-	if (IS_ERR(phy->por_rst)) {
-		if (PTR_ERR(phy->por_rst) != -EPROBE_DEFER)
-			dev_err(dev, "POR reset is missing\n");
-		return PTR_ERR(phy->por_rst);
-	}
+	if (IS_ERR(phy->por_rst))
+		return dev_err_probe(dev, PTR_ERR(phy->por_rst),
+				     "POR reset is missing\n");

 	phy->srif_rst = devm_reset_control_get_optional(phy->dev, "srif_rst");
 	if (IS_ERR(phy->srif_rst))
-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
