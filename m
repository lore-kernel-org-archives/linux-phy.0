Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A286BC46467
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWIgM9ogDgGnm9L90wyQGwrZWk0l4i6c7lBLy1J9R3o=; b=euTfgy5+8ggpeS
	+Q+Ysr43GvfqnrHDsyav11/Hh53Ukkn5IZDY9IXLVfjL1FhC3Dk2tlHhLzIqwL4bQJMccPgzsr7DB
	n7Pk8J96qsnofiDxsiP6R5wdkdAfpX9U/0xS4g0INYZaKh8YvVJR2096gJmcXixXQzKU39pvac+7M
	m0yl1csVoSPFx1XKzESP9WHt0lB/SAGkByl0dloyKRtxHzb5qL+X1n/XnE65VaQ/GlJDrGcIPuTU1
	mytgS2MEDyNX5sxo7mDJVqMSKtvONW4v4kVsTgAmEOY3cOl0ailPRO2rk2XK09puIj9CtaijyfD1E
	jAMDmowuP7DzF38qcj1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkW4-00FJlg-1u; Wed, 23 Nov 2022 07:49:56 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkW1-00FJjQ-FE
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:49:54 +0000
Received: by mail-pj1-x102f.google.com with SMTP id a1-20020a17090abe0100b00218a7df7789so1190415pjs.5
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ff060FMlh2MHBX3ga6yMFYN0UyVEYS40VqwmLXF4PCQ=;
        b=DJBZrYbtm9X/QLJ/W0BggBinY/2j9h/csY7y1RXj4ibeLojZMPOM79qLxjtvmX+0ef
         qHTZgJHFtB32vZURoOJwLrNnSQaX+2bXlf8zHuE6hiZvRxi7W+LWnTCMbLdSEjKKDFtr
         rKUTqK0DqmheaA9m8c6D41qw7p4fLNAiNy+PHR04AEaVDVbk5EpB+rRgUXGybW134Dfa
         o4VjElLklHUuz5FiE57L+c8177u3W7udeCaUt7iGmyf7sLEWBSAQ7XWXEHHDp0xcZmxV
         BS/SqxE5y3XMtTkm4XOZMcntYbiHkMT+O69Uqzk1+oWlwsjgpd+I94tXWMAjZ+a6pFNg
         B6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ff060FMlh2MHBX3ga6yMFYN0UyVEYS40VqwmLXF4PCQ=;
        b=UQ4kFChDr62sDgs7wz6NX1JsLIocj/9SPLbKInts9+iShHlic5aCqOBDstwbUGIaRV
         zwmRL0XRbq2l03C1inWj8xMFW2b2PAE94mEc1u3x3xqVHa0EOFeGvE86Y7IdoDIEbyVk
         P8QKcaVJMWvFns8YH+WuEQNplGc5bdXJCFbqkArRFO2i0M6AND/sCBj3ra5W5qeZ5Mtd
         i/fgOd9E4VyIkncokpGPjKq/ufnydLZ3W++XV5/CQLjO0AIY7FQeZ53Uz1ZnJbR0B7/k
         YUUEplYKH9Zc/l9qRFmvZVfmY3/brT6bb27KWKEg2sQrCn904fxXQdXsd/odwrAgqsee
         JU+g==
X-Gm-Message-State: ANoB5pn/ddDtrlwDpvKh6VxxJqHBV4wAWXVTafzoqV9nH9cEWjjtfGd7
	iXJJkSykTkJASO6kM+xlOCQE
X-Google-Smtp-Source: AA0mqf7JrTjVi6IhOYnAnZ7BbIJkXhoSI7J/05AMbqHKIqgMfOzWmGZ4ebVDRyq5ynhxhMb8SwK5Cg==
X-Received: by 2002:a17:90a:73c2:b0:200:a7b4:6511 with SMTP id n2-20020a17090a73c200b00200a7b46511mr28487090pjk.101.1669189792943;
        Tue, 22 Nov 2022 23:49:52 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:49:52 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 13/20] scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
Date: Wed, 23 Nov 2022 13:18:19 +0530
Message-Id: <20221123074826.95369-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_234953_537872_2C0FF177 
X-CRM114-Status: GOOD (  10.79  )
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

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
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
