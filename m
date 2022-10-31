Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63583ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCJl/1h6kekHA3RZn7x3THQ+HFWcVFb9saFdw1hKueE=; b=1vB2zn7LjmiKx3
	4M8wc5ZKz2m4b+40yQCQ7qSLW5SasxotBAQf2sBW7ayNo/xg7XVqUVAXSE1nHXveZf3Xvzqf5F0us
	9yOuQSJ++NJPvWFmFkQymbCedixPUdxVKTP9TZ2jp2eI0bLwFUQATcKlDUqYQi39QM3R7QTlUiuO4
	eoj1bmVn70/+8avoNRMtu9GfKRmRDYZWKFZj/HOyy9YkC/wuTJqWmIT8e56X8JPS++7rH8DEOcdUN
	hT8K0MGMQqIK/U2l5ptj1ilOi//nHnACxUA9B48wRBQdaCl6Y4r3aZZkZWTm0WtvFRaz5IaBByTQY
	sMBOMCFius9FW2YCKbVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8j-00Dal5-Ix; Mon, 31 Oct 2022 18:04:01 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8h-00Dajt-Cq
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:04:00 +0000
Received: by mail-pf1-x42c.google.com with SMTP id 192so11347494pfx.5
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvt/ooOFeIQi2DBt2IsAxWGkItH8ZOWcpqthZcxorNk=;
        b=MRr8I4HdQhqgTo0yNOhsFOhZV/I9beGFFMFSzQ5/qewYPlKyDMnTu1cb8X2l7NnkBC
         D/vh5oh44rVIq5XLoY3RWT0n8Gi6fqUYZT5lW0Njj1f9XpMLyDdrdPuqwwQ2R+tVXHuH
         rxtTzBVxF+smBqHDdP89u/1etqmRaIfsrmFs52mjVHwSMlzKZxKs2FD05lRsJI5kHaAB
         RNr++j1JU/y9a5A17NMz9hWSquiIaUzWCAlVD5m9he4b57+Qk7pxB4o/e2HXwHEpWxZo
         M8PpwHV9IJ2M9SVifRB3jUkzQNQsmWty46csc0KPf1s7FR2ayyHnP2sF/ewS4uKr1gBG
         wY3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fvt/ooOFeIQi2DBt2IsAxWGkItH8ZOWcpqthZcxorNk=;
        b=tZgGfsMLTRwynvHlMseeKKk9EInxK8lsXsyGJT0hTw+WWOSJ3Kv0GxORyEZ12ivxpH
         HZioji2Mgd7xPWG/115o0+lZsMHFFPstMt45nSxfcPOEnr+XcoLnVVx85Eb+PxXtNU5y
         kgo10WTzL5uoBQcyXy9/QEzu8qJcShAdSzWL9zd6MDJQPqfV8rBDc0IGQT58xhUS0frA
         GvBp2ElvweM890mb395yhohBoHWVtATvY7NoDhhapqFgfUGAr7idN2DZ1F959BAivE9Z
         cblUQaDTzpHq0dEJqWz6XVmWQfnlAN2ibRwAqS7tsRcql3Hh3gPIcBldgs4rRnYVkekI
         51hA==
X-Gm-Message-State: ACrzQf0PBiUfd/2lqv4BU4HUc/By8ir2ipHbneq590/M+EVMe7W2cTUg
	Jv2x6ot5wUQZJ3JKrg8bkjpK
X-Google-Smtp-Source: AMsMyM7U31sdCQlnOqIi2pBNFs391BLTLFCHqOQ/hBImrmMpgUG5LDMLLefA9kc2/40q7k5hU0royQ==
X-Received: by 2002:a63:f153:0:b0:46e:b0e3:547e with SMTP id o19-20020a63f153000000b0046eb0e3547emr14247127pgk.51.1667239438233;
        Mon, 31 Oct 2022 11:03:58 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:03:55 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 11/15] scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
Date: Mon, 31 Oct 2022 23:32:13 +0530
Message-Id: <20221031180217.32512-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110359_452518_68C4305F 
X-CRM114-Status: GOOD (  10.74  )
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

Make use of dev_err_probe() for printing the probe error.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 8bb0f4415f1a..38e2ed749d75 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -1441,9 +1441,9 @@ static int ufs_qcom_probe(struct platform_device *pdev)
 	/* Perform generic probe */
 	err = ufshcd_pltfrm_init(pdev, &ufs_hba_qcom_vops);
 	if (err)
-		dev_err(dev, "ufshcd_pltfrm_init() failed %d\n", err);
+		return dev_err_probe(dev, err, "ufshcd_pltfrm_init() failed\n");
 
-	return err;
+	return 0;
 }
 
 /**
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
