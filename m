Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54A81C6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 07:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mAbQUAHL1JdzbFIP3nInuv8OSFeWizx2wGWqXU4LKRI=; b=24e
	+YBe7InEHT28XTwH1yQT1N30+cAkgHWYKrJWybgSOajFXEz6SR7suI/Lzp6chrYXzBc816s6HPLhb
	oNtxJINswwPSuAU8zp+xSguNhLslSqGsuZMqtP7fM7Fy2IEpf1dwH5DHIXMA60EsYoiuS/twnp9bc
	bk0xYBjOSVEIogoV6U+h20vyX/OHd95+n5KgEaJRojG3qgAT7LEVwJLFtkwV9YOLp0WLUgIKeYPso
	WjfuG8o9BBtMp1VLghV8IlOfCgs1GjlLpEBT8YhnWPZhYHWxSaUeTZP9vhCTkVakaXBHYTVEDqUS1
	uQ8S7wHT5UY6pHV3XuHwIF9+Qz8+XGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFfa-00190m-3C;
	Thu, 23 Mar 2023 07:47:34 +0000
Received: from mxct.zte.com.cn ([183.62.165.209])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFfY-0018zs-1s
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 07:47:33 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4Phy9Z4wthz501Sl;
	Thu, 23 Mar 2023 15:47:30 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.99.176])
	by mse-fl2.zte.com.cn with SMTP id 32N7lBVN092219;
	Thu, 23 Mar 2023 15:47:11 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Thu, 23 Mar 2023 15:47:13 +0800 (CST)
Date: Thu, 23 Mar 2023 15:47:13 +0800 (CST)
X-Zmail-TransId: 2afa641c04011bd-8a3a9
X-Mailer: Zmail v1.0
Message-ID: <202303231547134442295@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <robert.marko@sartura.hr>
Cc: <luka.perkov@sartura.hr>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IHF1YWxjb21tOiBVc2UgZGV2X2Vycl9wcm9iZSgp?=
X-MAIL: mse-fl2.zte.com.cn 32N7lBVN092219
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641C0412.003/4Phy9Z4wthz501Sl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_004732_786171_7B700CFD 
X-CRM114-Status: UNSURE (   9.69  )
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
 drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
index d3e7d5e1d1b6..190f12247235 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
@@ -110,11 +110,8 @@ static int ipq4019_usb_phy_probe(struct platform_device *pdev)
 	}

 	phy->por_rst = devm_reset_control_get(phy->dev, "por_rst");
-	if (IS_ERR(phy->por_rst)) {
-		if (PTR_ERR(phy->por_rst) != -EPROBE_DEFER)
-			dev_err(dev, "POR reset is missing\n");
-		return PTR_ERR(phy->por_rst);
-	}
+	if (IS_ERR(phy->por_rst))
+		return dev_err_probe(dev, PTR_ERR(phy->por_rst), "POR reset is missing\n");

 	phy->srif_rst = devm_reset_control_get_optional(phy->dev, "srif_rst");
 	if (IS_ERR(phy->srif_rst))
-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
