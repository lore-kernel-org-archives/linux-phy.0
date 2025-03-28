Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E578C28B20
	for <linux-phy@archiver.kernel.org>; Fri, 28 Mar 2025 09:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AaZqAX85QvsX1bfnLP8FSqRhO00/mQgl9+PZf8FjsaU=; b=i8b
	6IVFQO+Wsfr/SVeFuSlVYFdq0RCvs08PQALItKHTFuyYUvfBKvyRIHPJ1BBcxOiw+Qf5XBNpRg2AO
	smRlY47SsYr17Gk60uF/ud3h8GlyLtCN9eft8DSbS++T3u24n9FVarOaAsFQMs3WX5bJI6geWNbw8
	YMOGduGAoc7GqQUJ00NX84OFdads7GJK3QnuMXc1NUXCcMGpT/sTMORqp4F9ouLG3qVRHmxt6+bNM
	QACwjHP9gLXVBdUbfiRwrOnUifs9k/4giLcqgoE4cUWzD99EloapwDFE61/mjgf2RxTMnRvz12uT0
	vLPXrkxszuBiB8wbc1FHp/oJM+pstSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5eW-0000000CzoW-3fXy;
	Fri, 28 Mar 2025 09:05:24 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5eU-0000000Cznb-1sdt
	for linux-phy@lists.infradead.org;
	Fri, 28 Mar 2025 09:05:23 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZPF3f34lyz5B1Jd;
	Fri, 28 Mar 2025 17:05:18 +0800 (CST)
Received: from xaxapp05.zte.com.cn ([10.99.98.109])
	by mse-fl2.zte.com.cn with SMTP id 52S958Sd007615;
	Fri, 28 Mar 2025 17:05:08 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp05[null])
	by mapi (Zmail) with MAPI id mid32;
	Fri, 28 Mar 2025 17:05:10 +0800 (CST)
Date: Fri, 28 Mar 2025 17:05:10 +0800 (CST)
X-Zmail-TransId: 2afc67e66646ffffffffca3-c3901
X-Mailer: Zmail v1.0
Message-ID: <20250328170510996P1Sd9KSFJn1p08vc0LXHX@zte.com.cn>
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <robert.marko@sartura.hr>
Cc: <luka.perkov@sartura.hr>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIXSBwaHkvcXVhbGNvbW06IHBoeS1xY29tLWlwcTQwMTktdXNiOiBVc2UgZGV2X2Vycl9wcm9iZSgp?=
X-MAIL: mse-fl2.zte.com.cn 52S958Sd007615
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67E6664E.001/4ZPF3f34lyz5B1Jd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_020522_642264_0D97E837 
X-CRM114-Status: UNSURE (   9.44  )
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
