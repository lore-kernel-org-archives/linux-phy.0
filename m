Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B333C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oqd1LL5KzBxcZJlVeigGf3QdXc15mv3KoNUfLh/w4bk=; b=rsf6yaFJle3FIf
	1yc2ZQu0Q5jvKadn3FZui6/9qDPhKRvFjsHKm/z0RJ3/iXou5xFPUxTN6D0OJLD0bKP7bDuYfRkBf
	uVR2B2ULIyHBch9exsc3TPNze/neIYk32dWeU8TQFsSzGibF+2g09+EiDHz26ItB/+jEjTWGiNKA4
	IBXpzsC/Q0INPBfL4wsRwcE2mYscW5eX8T4NpRJGCzMlcm8r3FcRGK9Y5feRvQ7ZUCgLmvm8BTwb2
	WYJOZ1jr3JicCajeH+671+O7Gp7GevOCirZv4zM2fYtvFtk65jIQJs6PAV8tivlKqyH9uZX3YEoiP
	TtGCPbj7Zda3mxeTA99Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeh-006UK6-0O; Sat, 29 Oct 2022 14:17:47 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomee-006UIZ-J5
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:45 +0000
Received: by mail-pf1-x42b.google.com with SMTP id 130so7096542pfu.8
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgO0itPmS4SJd2mGNhvjlL5RdA1WKEDpldIzySFpulk=;
        b=MJjVSK83iQnWC3FbZ0ZRDQChEUVe7Bjq+6ETKYFya+P5BVO2U5HlxLoIznDcVbYRCE
         052c0Gg+Z8F1NLlmjjJ/EML2o3rf50w54gItVnczSvye8+/4hXacL7W3YQwsc7G+q/TH
         5b6VhYKuwG4PA6NQP+H6Q1HlxA0GA6NYcHI5MwhU/UtQo3jeuyn2UBD0AV+qJzNNea+W
         At3h3PJBxBk9Y8S1ITDbrlUA9KWQ8NsD8wadvohht4FIxeaMOATOCTcxltotD8HrGFBV
         mGcX6YeYnsD8U3F2mRb5Ft+/XdH40QE5aMI4Fd19w2oQFYiGj8QlRBKch/rBWP26ljRu
         vvxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgO0itPmS4SJd2mGNhvjlL5RdA1WKEDpldIzySFpulk=;
        b=zTtxwVqZMZ3d40U54EgHPwW3fVQaVHLVtbVUJBkdUudMPY7esOTVuerA/VIPonZHrS
         LKJHmmvcgqwj0JSoIKVehxPqyL5+jbC9v4v4rIniwDJIig9aMjI5jg89fZUZc1+5T6hR
         6AQjKVfDj+nc5Dg1G8EJQMqijhxc21Dyy+5HSAvUFIjeN6b2yU2eGvaccYOXAu05HJpL
         ZKeRpVo+jniLBETzX4VAQk1ST02Mg0yaqygOfvKbVqGB6Nbo6WuWowCM1ViK6OagIUjL
         xZVj104Hm11f++Cz0v/UnBig9dkCtH7RqPWVPS+8uXuZKnCm7VVRmQuu0w/zkpeKd7Pz
         Ffog==
X-Gm-Message-State: ACrzQf3uwV29TgFpPtJmzBGtoKAWo1vUJtOvjqAsQf/VPy31++5Dx9LL
	Ix/4Mtot/x07Vvt/GeoZRNI/
X-Google-Smtp-Source: AMsMyM6D7Gjtv9H4nPResuFkUX3gQ9TEpK+Cg7QPFWtb8q21cNu2cDaoubgeYAXJKmtPC6giM806pQ==
X-Received: by 2002:a63:d60e:0:b0:46f:8979:30ba with SMTP id q14-20020a63d60e000000b0046f897930bamr1913693pgg.332.1667053062610;
        Sat, 29 Oct 2022 07:17:42 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:17:40 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 11/15] scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
Date: Sat, 29 Oct 2022 19:46:29 +0530
Message-Id: <20221029141633.295650-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071744_641524_1FB91BF8 
X-CRM114-Status: GOOD (  10.25  )
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
 drivers/ufs/host/ufs-qcom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 8bb0f4415f1a..28ac5f0ab2bc 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -1441,7 +1441,7 @@ static int ufs_qcom_probe(struct platform_device *pdev)
 	/* Perform generic probe */
 	err = ufshcd_pltfrm_init(pdev, &ufs_hba_qcom_vops);
 	if (err)
-		dev_err(dev, "ufshcd_pltfrm_init() failed %d\n", err);
+		dev_err_probe(dev, err, "ufshcd_pltfrm_init() failed\n");
 
 	return err;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
