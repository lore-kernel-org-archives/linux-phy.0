Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB63C47088
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8S88xcOHEbg6Sop2G28hUvx+v3V0XH4gKIgq0JpcYZk=; b=S8GPiepHc2GL7n
	mOATriIJK6BnYyQAG04VhIe05U+D4rM5nlgbnM1ReaHiIYemZ5IroDrb7Sy+v/rSgP0mqAWKVpcY7
	6ODFuhpRMtYsT3F+OvbbOm3Wdrv1MITFv48Z8f/pPXBHZCDs26DcvIZ9gCYr0bciCxL8/UToZDMM3
	M1eADLBwk/vmWp7LnN2F4+dY9j2xQkOhe8bgv2dkFy3V5WX9GOz/yNxaqdVxis3SczaXvbPg/nsOX
	vR0BV+HlO5YwUiKNqj5H13ivcJRYne/UyB+ZCZGeUT3rtYK/YYXDk3LiLMNlwxpqgex2X0asxewnq
	I9GJzHLTZU4LWs5A0XSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nei-009CW7-WB; Thu, 01 Dec 2022 17:47:29 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncy-0099yr-V6
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:43 +0000
Received: by mail-pf1-x436.google.com with SMTP id k79so2551146pfd.7
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dxBfeAGPJSh5Y/5FKQg+M0y4cyLZHfyLwZKtosIJVD4=;
        b=cVwgxrvy/wOo/YjbpaKogtDcuRpXMD+mUA4GkYeUOI6ezInGYpeliOJhgIJry0ziLR
         8y9LGTbBtBmeMdV/H8LCPq3vDwErrNqkT9rgREnBoj3DsUMM1DopJr76+l6mMKCBpxJu
         zmMZN4Bah9vgAJWZDusTqfvblRNVK4s8q3kahKW9bwfUHWxxlZm0ixfbpawBuguxhREf
         UfvY4NEIePA5J+Qi8PGi5o6eTWE3eJ3zuKPx6VPJaNQ76kUG2CBWQ5Qe/oD+9AtYmR/s
         FEgVg6l1SkCWtxOLanu3bXfrK0hyRTrvYJqivFlLYP92MKJNPayoF7ims3T9syyvtCTT
         NqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dxBfeAGPJSh5Y/5FKQg+M0y4cyLZHfyLwZKtosIJVD4=;
        b=TmXLsCP5eCBq1fW+GXIIqy8p/AWRdqSGONcwHMmKKpu+gWiK8IAaXQ7X/wd0vVO7mz
         zbGgA4ntjREBO844N1j2JXphVh2b5pph1yZCMSMFkEKHUZ57SFQSX8TSwwcITLSDz/6s
         FBPDrMD/chMu9gychJ8V51tG0EX1bIJfskxe3zLdtTDpkWsR/k/ueRraTxDxjL4Xhoyn
         Tz8y0hfBfy18Q6i7AkCXpwvwQhZHTEtEbwT77g73LKZC5cNbCmsf49Nz+46VtXbzSztu
         jqD8dzzIdeW4Nj1dBFZcKcRGGVyOvmALYAfTPaMxQq6C8z4va4RVFnzJY4nSjR6birG4
         +sQA==
X-Gm-Message-State: ANoB5plbJiSkF7DdVXiUammHn1vEZszHC1cMTBiCPS/4zGInk7YQbP35
	e9uKFeLOylCuSRiXxYZxGWmp
X-Google-Smtp-Source: AA0mqf5Mgc99o/UTJhLXzyZGQaJIysEcv5YHIa6ydHMeEjKzcZ4+/ZNExCZfxzP0xAEDdC+jXRyw0w==
X-Received: by 2002:a05:6a00:f8a:b0:56c:2576:9d2a with SMTP id ct10-20020a056a000f8a00b0056c25769d2amr49815642pfb.60.1669916737965;
        Thu, 01 Dec 2022 09:45:37 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:45:37 -0800 (PST)
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
Subject: [PATCH v4 17/23] scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
Date: Thu,  1 Dec 2022 23:13:22 +0530
Message-Id: <20221201174328.870152-18-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094541_049760_3151A69F 
X-CRM114-Status: GOOD (  10.93  )
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

On newer UFS revisions, the register at offset 0xD0 is called,
REG_UFS_PARAM0. Since the existing register, RETRY_TIMER_REG is not used
anywhere, it is safe to use the new name.

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 9d96ac71b27f..7fe928b82753 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -33,7 +33,8 @@ enum {
 	REG_UFS_TX_SYMBOL_CLK_NS_US         = 0xC4,
 	REG_UFS_LOCAL_PORT_ID_REG           = 0xC8,
 	REG_UFS_PA_ERR_CODE                 = 0xCC,
-	REG_UFS_RETRY_TIMER_REG             = 0xD0,
+	/* On older UFS revisions, this register is called "RETRY_TIMER_REG" */
+	REG_UFS_PARAM0                      = 0xD0,
 	REG_UFS_PA_LINK_STARTUP_TIMER       = 0xD8,
 	REG_UFS_CFG1                        = 0xDC,
 	REG_UFS_CFG2                        = 0xE0,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
