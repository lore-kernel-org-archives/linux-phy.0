Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56670C43217
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWIgM9ogDgGnm9L90wyQGwrZWk0l4i6c7lBLy1J9R3o=; b=AP92IKyLhwtAmf
	2XAF6IbMbeboaBIApXH6ccKruQMsHiBr3/T+vUl3HDOXRc/laOHsUL0EbZWENJxKIMsmMskNmdyr8
	0FDftWqaW3np9M/8Hv1cmRpTJOg+zGAgJXQRgpAmQv5lKJOm4qzY4clcnKMdxktm4i+wugfKcyf23
	2c6U7GeOkOTQlNx0bobmzuURnYy4cJl5uZ8ngg3jbr2N4JulARP8SkwJu+wjAtR6v+VHzPSh041XH
	Yj8jCwutG6X5aCPNcMnZPdKqwAU0W+WYk7+AjWSwR+ukjC17390T2xgQ5YBpyjc+0qSNxwQbQVPB6
	u5lG5gcQ5VUSwG7k1+sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncu-0099uv-Pn; Thu, 01 Dec 2022 17:45:36 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncq-0099pL-7S
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:33 +0000
Received: by mail-pg1-x52b.google.com with SMTP id h193so2265135pgc.10
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ff060FMlh2MHBX3ga6yMFYN0UyVEYS40VqwmLXF4PCQ=;
        b=ChLzP/jCsMP/7siDVnOirGouhwX7bHn8Xmjbes6aYzsley+JEB5YH+txK3cEAocgCO
         tWMUW7/XxtsTbxniN7+xNm4fhW98Cp3Olci2b+gVhIVPetAPa4iGquaU18A1UeLIk/rk
         qw1YFOlOUvEIdMFX4jfhaqeRikGbEsguk7uaxFycoJg9dhWF6dvyKdbANzsBlipDvWV3
         KXH/GfEG+DFeDnnu/dfw+sCyiMnsXdy/ujc3gNVWZ+hjo5+K/qEUA4Gi1s/WdJ/8fXxP
         YTJxbSJ8FbKZitaBUZXVjIvZZ65rWiinyCnJ/OeMStjTwWLNW+cQk2iQdE/foG8GJnZ8
         DomQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ff060FMlh2MHBX3ga6yMFYN0UyVEYS40VqwmLXF4PCQ=;
        b=Xe9mQmyuOFrXuc+MbdZrZopumiuRcsbydvrZdfThFtfpUrzZjZpS0f7qzMVBNF/JYn
         jHBPmW0VfViSPeLBLYx9tQMmw5q8MLT7QpAKqAyD08e9Rs4Itc+MBV/YeWVEd7zIEvDP
         K66w2Jfx6TouYqei05dgIs/rFqIbkSF2UfFQNzDoZFu6kruhpb9ABu7DQ2qTq+2x8zR8
         +4zOWW7yrLMUcOXiB+Tv8JM2TIsLI1fgtgXeZzrL8SLwp1/ZcE/j9HHzJ6TIYs/0NPLr
         CiHVEYlYennTXlqMvJw+L+izRvVfoODuzDlUPBhBT1dsf2eAy1JFj7NwAyer+ItS2mkO
         Wqrw==
X-Gm-Message-State: ANoB5plXaCf70aQXbgCVKHoEOyDElbz0TzanptjwGovaKDBGGlb+7dDc
	M/JJLU4oPplTJrtb2mOEM+cn
X-Google-Smtp-Source: AA0mqf4Cuxf3UyHQpczq+r1vzyH2b1ABJK/TrKQIBMWfdC192LUpUe035VBHnShh7DVbLhUTF/ngLw==
X-Received: by 2002:a62:f94c:0:b0:56e:174e:efdf with SMTP id g12-20020a62f94c000000b0056e174eefdfmr68316959pfm.29.1669916731346;
        Thu, 01 Dec 2022 09:45:31 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:45:30 -0800 (PST)
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
Subject: [PATCH v4 16/23] scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
Date: Thu,  1 Dec 2022 23:13:21 +0530
Message-Id: <20221201174328.870152-17-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094532_415352_E141DD80 
X-CRM114-Status: GOOD (  10.39  )
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
