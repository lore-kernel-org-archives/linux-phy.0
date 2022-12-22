Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CFD3C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0tUFVw3XcXr0dmZzj4/aI5QegjSEcpPOjhhU5xT9jo=; b=V/GGlnrspQml1E
	KbLA41I3q9/7GhUlRRHVVj6d1f8N+cJEeJK/w4dPWV8uETV3Xg/MJSXjeMN5PuRoGpzrw0Hi7y4Zz
	mWCO/kbURz9jaBC0qCnKE3mYwi6lqDGYyB6g7qtk6DYbvdzEmOp6SCVzR/om6Tp2hid/53yIkEXUJ
	5QFJ9rxklPucLFYe3yUQBFMU94XrTldMADZuOa32Pp0KnQEjQhz2jPqp1t30qn9gaDhUEUCLXbGx+
	8bpgVNdX7P3e7Uean2ngygHKZGnHraSCMhoXCIRwpeok98hf7RhCFcbx80mAbpT7HTf1Ci9yETvcz
	sqN2FCuBU6Q50WjqqspQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mcb-00D07U-B5; Thu, 22 Dec 2022 14:32:33 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MJ2-00Corr-63
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:23 +0000
Received: by mail-pj1-x1034.google.com with SMTP id u5so2007650pjy.5
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6aSBJzo6HdQMf+Z0Vqc/apVYRTuOVSte3r0EnoXQi/4=;
        b=jTCrpY3DW1MbJPMO0SQIBXcCCkvCD0S+ACDX70kkaK0H0kZEZ6HnREw9vOQda3RT4H
         H7PGPlkzCC4/6qAAbsMsgFFDFG6kY/W6s2IPlUEflT3ISw3sEXSyLxVP8i8eZw+9M8kS
         LqI6NLrFaSBezR3F+5/YjXeeelNypntSJwT8yTS59VeDIjqMChORmW+lXY0RwB2pWjy6
         6wsmeVWrUlnrCRWVuNO/Qg4L2S8YdEugHJuS5B3YLxDEuF/8KYU6sqznBCUvrcm7KXrF
         D2xOw4cZO/jEUJiId5VSYHg1tx67U3hLRzF/jq7m7GCEB4D58fEmzKPC9XcLrPqepMzp
         PKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6aSBJzo6HdQMf+Z0Vqc/apVYRTuOVSte3r0EnoXQi/4=;
        b=FvG6FqDzF7feeM/YEVmW2oXxYFlvWEjIU8xoQTWC63xsEMTc4QLnNE88AuUs0Lo+4K
         CKyQG0tT3SD7sdurbsxNww1d6rrO3SucLOw0p80xz/gZUlPMiMJ4gUpe62GrZzLhZAVE
         5OAkq92DNMpfqM7SbTqmAy+ZRFncXoPF1CdplUifhpkKECkZULkbXHMq1RM9jyqQHsvN
         mN4yEJVueHqXx3QUIEveZDY68zaYea6bggJ43rVxyIMkOCRX94WyJ0Psfb3nR7btCgIf
         sDbrDIKWLLGj4IXcf8itbGo6Q0mypOs6hSZPgkkZipHFlbPw3aLEtPFwXf5uQspxr7QO
         q/Hw==
X-Gm-Message-State: AFqh2kp6D80xejoeu9mOX4gpM0Juv/9ZqllJFRWVCuQkVDzABnsvy8np
	fDpnQPxX28q7JN3tPnR0NqGd
X-Google-Smtp-Source: AMrXdXu0QaYyVMCq5rDRmy7qgCFCoYfXWUnAV4G8ELfQikPhojZ5rjvwLv+swmBQzX4x2gPFyXNH6A==
X-Received: by 2002:a05:6a20:1455:b0:ad:58d4:2a71 with SMTP id a21-20020a056a20145500b000ad58d42a71mr9202668pzi.4.1671718336761;
        Thu, 22 Dec 2022 06:12:16 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:15 -0800 (PST)
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
Subject: [PATCH v5 17/23] scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
Date: Thu, 22 Dec 2022 19:39:55 +0530
Message-Id: <20221222141001.54849-18-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061220_325866_DC4DBB8F 
X-CRM114-Status: GOOD (  11.01  )
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
Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
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
