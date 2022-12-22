Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 985D9C46467
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdcymH6nyJkDgu2n04ulWR3kzwefWuMORdMtqetcqz8=; b=X2uUyNcITo1Y3o
	b7gvGMC+YReyPHbWkNZsE4ZOBWZK3NdA7UVRHg6Q8sMKJadoNL6AW8GacSgtbw+vuyBdF8mVPOkOF
	0lMnPC3mVka4bUVwULms/hxKYMBUNwW3R7JMkbJ0C+OO4FpGiuD73qDZzRZsBeyqjwZ7mSjXE2GCv
	09Nm+g/ZLnICPaVkCRufXmG0xDjfE85Ri15xi/0IsAYX087wX6uJX/wZoEd9h2e9lkEA9C7+8wy+F
	pXxSOcdQwenmj+TE4F6k5F+08/2JSeXmp2W3W9C+KXu0226I49gLlE4/dDkln7hRftdQdorQNsLV8
	VMxR9j4WcjDqTt1GTWmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYX-00CxfZ-86; Thu, 22 Dec 2022 14:28:21 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIu-00ComP-Op
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:15 +0000
Received: by mail-pj1-x1029.google.com with SMTP id t11-20020a17090a024b00b0021932afece4so5810434pje.5
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Umv4TvSxWOIQ+FsO7JFyleWWrH/ciDg2B2wQfJu0u8=;
        b=lFSSRkVosTBl7NH1CjbznzIGAhg1vr0OY58REMnY5M10cAyYyb2kWljgPPZK+purpL
         tkoP2lQhnWegg7up4xJ7Glzy1oRsWoz+U4ZzaV2EZylwUbdC59PnTlUSQTVkJ5O99jGM
         dxwsmXAnqzqkf4CWzclp7h8P0im11vTrb/mwtclro3NVJ2zi6pS2rVWrrXYIzh/dMG4y
         N8kItD1Dhc0fSBQHdSQ8WUXMgIy2C4HWNoVYUTizsMwgNzJIb1y6buVo1qTzWGJ0FNvq
         DnKtsXUl341uWX/LhSn8MJZ/hpYKPNR3XRta/FNYJ7+PRgzpJvgucZ1qRmvMqnM9ccts
         5o9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Umv4TvSxWOIQ+FsO7JFyleWWrH/ciDg2B2wQfJu0u8=;
        b=j51i9Y4uUVnMAUMJVN33P0B96imzwFX1eddNw77LBtmVLhNXz6kCpVIB2gJhKqKHfJ
         Zf+vtScJeoYLWzOKqiF1Mk3VclO4hPlwRSA2iIq+8JM/+qpR+w491YXGCuXuhnrleJtm
         1dRuqKUn5KNwxruiXwz/Ew69I8vUA3b6z/s094XpO1glDArthf/iJmpxRib14KJj4V1G
         6j25z5zyFPlFycujeU6IXxdopOFuTqasNbjWMJJLo7EukePRtiWgnVox0xMyTVT2cBvt
         F0rhhZxq3AdRS2gl8lglZZsZCEfQYn/CdejeB26lqw6q3LVF5SI2IPa8SbfkHK+yeFgu
         OStA==
X-Gm-Message-State: AFqh2kq+YhYwusmn+cDMTbn3L0KRipK7KWyyl+pH+I3/3aIRUX407ssR
	EbWFerHPX9b28q38vnKhvjRz
X-Google-Smtp-Source: AMrXdXsfA22qTY7Dpuhd3BPItBnKL5MRnihwLcXslA73ddu+1EMjMQTU80L5uyMZTcdu/fyDqeutaQ==
X-Received: by 2002:a17:90b:300f:b0:219:823f:7216 with SMTP id hg15-20020a17090b300f00b00219823f7216mr20532049pjb.31.1671718329192;
        Thu, 22 Dec 2022 06:12:09 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:08 -0800 (PST)
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
Subject: [PATCH v5 16/23] scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
Date: Thu, 22 Dec 2022 19:39:54 +0530
Message-Id: <20221222141001.54849-17-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061213_234008_CF1613F0 
X-CRM114-Status: GOOD (  10.76  )
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
Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
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
