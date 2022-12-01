Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6897AC47089
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7vR5Vc/cX2XIoHUBjYdcN8hTvHPJ9fKfvX9eHcknaU=; b=awy1VSeATmwYKQ
	wjnpQ6OMMQwTm/gReQWt33QthOl8afv91GdwCPKF6tEKi9zf71MYytRYQo/MesEByFoSnmIF9GJAu
	hf/yAzn4sySLskWp+kt4Qh3IgUnTtKlUtoHk3UEvW3Pi9Hk/niwA4qxJQhs3jxa7l5zMRLXcXcyHn
	/eeuioFFRAuaJPSibnpQO8ajhoj/e3Fo2qVZeFTP23S8Cj4QaSU43HSQMKbwmjUVOUzEVIs9MZzh3
	0o/QINvmzlhTZjuO/ASoVP4NXjaqUyAP3aLufkXbGqeU0JsKPxMOlPq5DhIdzRyK4zTPf5BHbdEDt
	9QZl6ruNFkg2W8NpumNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nmw-009KiY-Hm; Thu, 01 Dec 2022 17:55:58 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ndZ-009Azc-8g
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:46:18 +0000
Received: by mail-pg1-x52f.google.com with SMTP id f3so2293436pgc.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43OqRHaaIujJi6ZlQt/N8badSJ3sWGrShf1wADibj34=;
        b=NmPY8iCDxI+NhdKK5uUYYLt8/z3vqea6wkBFcmL3hDLIQ2o87rg+rRhj+mkuN/E1z1
         gLdcQ0VjJJrZwx2+tj6eWlyids+OqliSDb82dhXf+V9km/G2FgMPVSxJF0tPUx9HtApI
         0zHIeHNft62jZOjXQ0tID5RteBnF++m1Ry72uLtWQ/re8HR0wBS67ohbK3Vjmn8K9bKD
         VI+c0Ws0++zPjmSHNsSL5U8DDR7ztW4XttZKgFQ8nQAszbwyYEwbAuOFbBx6aeopiexo
         ibofa9Gkr8xq5YUroQb67IM68EFua/fbX7SFpy51N6hiMrqvwLJPklmfywd93kQbm4Q8
         t4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43OqRHaaIujJi6ZlQt/N8badSJ3sWGrShf1wADibj34=;
        b=N6xz8bWj12Y8TD0w+PhCvv0YHg8wF5Ze1zD3Lf1PR1HW98bBV+4HS6Ck9NFZzjw227
         sYpIjxGzQgyMwV1S3zvnMyfXbbagoYd3yTut9jbUPVxcf4Ll+ExinqpdYHLxUGVTzFsV
         A8LJ/okpIBgfZi5YlTTqZkqOpCR+fzYmjTYc6iIu++bvl5RHegWkRkdp5V+5PflwPQxD
         qMsjoYswyt5AdCQBN07+9y5dYIzV9zQBY0kXTWxn8pq2rdq07Fl7FjbFikM6xgQ3mp8i
         FtNclIaXta1IaampYgu3AMVhNU/duHLaQruIV4fDoBEy/VCgMHCrQaEZ7GJENuZTimRM
         9XCg==
X-Gm-Message-State: ANoB5pkMjOVlWtnPbLjv0sOUQrYtvlYxpgOytYskEbtuwbkLEUckJJvR
	5sa6GBbPIsgFg/R+5n3q/oBG
X-Google-Smtp-Source: AA0mqf64D09WmHdfFGHHBXjzBUhd1iZ31q9mHzfnHXrDTrmY1nFgAImzsVcgggCYrYBrM0bUZjm06A==
X-Received: by 2002:a62:3006:0:b0:554:7525:7acf with SMTP id w6-20020a623006000000b0055475257acfmr48105047pfw.44.1669916775237;
        Thu, 01 Dec 2022 09:46:15 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:46:14 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 23/23] MAINTAINERS: Add myself as the maintainer for Qcom UFS drivers
Date: Thu,  1 Dec 2022 23:13:28 +0530
Message-Id: <20221201174328.870152-24-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094617_369427_8416BB0B 
X-CRM114-Status: UNSURE (   8.30  )
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

Qcom UFS drivers are left un-maintained till now. I'd like to step up to
maintain the drivers and the binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3583c5f6889d..3c8214f4a3cf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21379,6 +21379,14 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/ufs/host/ufs-mediatek*
 
+UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER QUALCOMM HOOKS
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-arm-msm@vger.kernel.org
+L:	linux-scsi@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	drivers/ufs/host/ufs-qcom*
+
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
 M:	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
 L:	linux-renesas-soc@vger.kernel.org
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
