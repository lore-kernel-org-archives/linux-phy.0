Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D98D6C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 01:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2vgsJmiAsqkzayyBTauuY6pvIPLGPsYpGMQ/7X/yyDk=; b=vSVoGCrb4nAFRL
	pdGJCudaivLGnLVk08I7fJTQp4hF0+z8rlRHOLZgEs5uN8tfrWlBvnkz2nvR63c70rCNhEAB1M/hh
	08eByIbxOzrqU72vEVF4Hc1oPqhbUX+yAx0rUU30a49OXYl5gVabgGBcKIbfD1bKGCvE1jtBAu7No
	QrVFvT5r23WTlF7Cibk3ZTcWGt8CBkG8RNqNe82j8BJWatvRuncaBKHwBRXUpX3+5cBrgefVWmYD9
	Cl5z/tU6y+qcMYKiRzEHk/pZsWSUshCnUdmSqvaMED+2GoLcPKT83aImaEAdB+sxb+i2h6sJFET1h
	4AuFofCFH/TSRFX1xqTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mulN0-00AWPl-A1; Wed, 08 Dec 2021 01:03:42 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mulMy-00AWPG-Cm
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 01:03:41 +0000
Received: by mail-pj1-x102c.google.com with SMTP id
 gx15-20020a17090b124f00b001a695f3734aso872395pjb.0
 for <linux-phy@lists.infradead.org>; Tue, 07 Dec 2021 17:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wODOQzkVh9zeQYxZgNd/y4oFz1Y6sLQfoGixvntFcCA=;
 b=Lf2hx3I/SvE2sHOji9nxHNaQtgVWWL1zxDGhD7Ya18brrer+ZE5vYgqMK7DaBOTAoa
 PwTkgvmCFjKk0tz6Ypnk2GnKCa8qV+w8H1ffcAfHJKNOb/m9zEaIg6+aCawRrZzBvRvo
 qzEcy2rgdsk/9ypreMnVJV2HwNpvHrjiTv4Hb8Yi4cV3F4KY3mxjcg2h5Prjot5IMF7t
 qzbq5H9kWRhW95QVmFy3XbUgkRmL0V4bJ8BYyXz5PnOHS9WaHpzjmT6LTQXZPisyNQZR
 NmuqqH/WeMpzwokICTf6ibHS4KM2QyxL8jO7T0fNBgK2MNGd9v609ppwWMcUD6NYC9+G
 +45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wODOQzkVh9zeQYxZgNd/y4oFz1Y6sLQfoGixvntFcCA=;
 b=oclx3O1KbYRFfbEoNJI69QUDAsrNORp3G/QvfFnRw5Uom29bo+4MehIU+bmrUpNKEF
 n5S0YaYRc8lxbrccvVPvSV+0v/2CX3GSDLe2WoGYnWhQG3muePBQc/YGhXzpJe84XVSh
 o8cNvA0+kkZT08StbXu1J5cYn79w4HqnPq1tkVCZy607GCNuvqMqLuZcKQhjlkTXf2Oz
 ufA4nGkIL0HRG4pGHuWB5d+gENVTnszRHLH4S7sKhImcaEyrwFgxgCHg+MhUMmRQJ5h2
 dRhxCQ3KYxkAXVOGt/K9BoI7D6DapE2phYo7UKGn83s9s1tOlI3pA5fo/iLJ10p1Ozbo
 FmLA==
X-Gm-Message-State: AOAM532NY+FqRtWxCc8GApJvvq7+PxPj/q9UxJLcPT9uNBvdLtWzcYqB
 76WvPm/YEKY6GKUSPRrSW0c=
X-Google-Smtp-Source: ABdhPJzH0lW1WLXdtj1vSfMyFvfaeoThFV6rkXNWWx5Uz/1mg3AcNrzLx0TII9mIwkKubGompnNpBQ==
X-Received: by 2002:a17:90b:4c44:: with SMTP id
 np4mr3299329pjb.195.1638925417652; 
 Tue, 07 Dec 2021 17:03:37 -0800 (PST)
Received: from debian11-dev-61.localdomain (192.243.120.180.16clouds.com.
 [192.243.120.180])
 by smtp.gmail.com with ESMTPSA id y25sm631911pgk.47.2021.12.07.17.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 17:03:37 -0800 (PST)
From: davidcomponentone@gmail.com
To: agross@kernel.org
Cc: davidcomponentone@gmail.com, bjorn.andersson@linaro.org, kishon@ti.com,
 vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zeal Robot <zealci@zte.com.cn>, Yang Guang <yang.guang5@zte.com.cn>
Subject: [PATCH] pyh: qcom: fix the application of sizeof to pointer
Date: Wed,  8 Dec 2021 09:03:21 +0800
Message-Id: <c74d05d5197fa4fba96c4bd1cd597cd644c694b6.1638924754.git.davidcomponentone@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_170340_476340_B8815125 
X-CRM114-Status: GOOD (  10.49  )
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

From: David Yang <davidcomponentone@gmail.com>

The coccinelle check report:
./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
ERROR: application of sizeof to pointer

Using the real size to fix it.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Yang Guang <yang.guang5@zte.com.cn>
Signed-off-by: David Yang <davidcomponentone@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 17d5653b661d..5fe4eab9cac1 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -571,7 +571,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 	struct clk_init_data init = { };
 	int ret;
 
-	data = devm_kzalloc(edp->dev, sizeof(data), GFP_KERNEL);
+	data = devm_kzalloc(edp->dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
