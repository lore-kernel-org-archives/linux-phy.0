Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7FE3FA3745
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5pDu3m3KVGv5coRVIVPUKCUv3Zsa6wbhoLe23qKrPk=; b=gPSzESB9oM4Ty8
	UD5NOVxvycYRI0UNbpY88qOFYMZtkfYEZfT83yYJJIjCpYhI2/u+AUgrolaL0+k0Pk7sdLWgq/hg+
	Pk/6f6kU6i8yrvyvq+cikjUUKcCkQ6EHYet92h6yT1kXAhIFuSuhdgw7HvOcHO9BLIh0yqFNCqeyM
	UTDBu1I2kWx4wyeRPrGfe4A6L0sfz8/6MNsVUfzM1wdR2c+hAKRGqnJL+nP6nhLLJTd78sBWKFlG2
	yzWbThJCbBIBcFKNFVnUylvdc72OWPspcJo5wTBzF/dv0CSyxILaTH0U1UXqYvZMVT9eEWQFU5b8D
	Xs4vWL9OPFOHUpKOSJvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomem-006ULJ-4d; Sat, 29 Oct 2022 14:17:52 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomej-006UKH-6g
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:50 +0000
Received: by mail-pj1-x1031.google.com with SMTP id v4-20020a17090a088400b00212cb0ed97eso6815457pjc.5
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V6Cn6AAM+ruCSUx7hOhryryIVpbAjdLGLzoffp2NaNY=;
        b=WT8C9Z4ISqHLbq0ws3aGDgQn4ZnrIZqfE5JVaofV5V8Q/4jxd/1yyHqv+szIEQSkn/
         riTWtO4o/TvPc6R8oZY/v+TEMjhwsi/S+LT97zFoYU9jwW+CJ7MOP9ZvNnz8MfbhHCyL
         piUS20GmVWf83DmJTqvaoYZTSazuQFQMAC5CQkfSe818aWluRP0HEls7yLgLiIRNeLL9
         /Go8f5VbiyicQH0qeVEfZJ+DXXaf5Hkx2G1PrhLJVIFfhxhM4heT3hANhJlELhjj0s1w
         5rp+srjuc3fYOW+HOQkxT22kfud+zAn4bo8AVgkIBLU0D8EixcMx/N6GA83haFqO4MNN
         LIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V6Cn6AAM+ruCSUx7hOhryryIVpbAjdLGLzoffp2NaNY=;
        b=qXrYlHG0GM8cysMdn3xndVNBnJm8LOW0u6YZ9ifWCGJiqEm8J/NEDa4jMFqLwFbrhS
         OwPtXf0vsR91H7UI7rYWLdXl3nCCUCDeJBnfOjXwLEagXwuwbJRYdsMwkg/f8mQ9CkFY
         G9GZTwOktOngwH0mqNtrllw3P+PgMcP99W2IFs2suRLbNEm6W8ldLl/98NtjdCBxFfsm
         hyBTZDIbz3wQtyjqfjzaJUZlyH7Vo4NQJhL6TyNOP+Y44IPzzsb4UKedqBJELf2qN4pe
         3x02CIPHZVZCT/9mSu41cUVIm5fRToM/FF+7DsLNN3+3k++QUhJWONw1yyG62fCwi2M+
         Y5bw==
X-Gm-Message-State: ACrzQf3VoUJYPkvbfEdipv+aowJ/h0M5Uis23upXbBX21u8BqZsXJ1TO
	fuJo2L4KINPGL6Puokv/6Kbw
X-Google-Smtp-Source: AMsMyM6BzVwQ2YhU3TiOk54m9WMzzOVEFEMcHpJCXT2JKGyLHJFwwW9gtknZ00dp5yk2PL8C5QiBJQ==
X-Received: by 2002:a17:90a:5509:b0:213:98ab:da74 with SMTP id b9-20020a17090a550900b0021398abda74mr5056156pji.208.1667053067496;
        Sat, 29 Oct 2022 07:17:47 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:17:46 -0700 (PDT)
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
Subject: [PATCH 12/15] scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
Date: Sat, 29 Oct 2022 19:46:30 +0530
Message-Id: <20221029141633.295650-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071749_257484_4748FD10 
X-CRM114-Status: UNSURE (   9.56  )
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

Fix the register name used for offset 0xD0. The correct name is
REG_UFS_PARAM0.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 6cb0776456b3..214ea50acab9 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -33,7 +33,7 @@ enum {
 	REG_UFS_TX_SYMBOL_CLK_NS_US         = 0xC4,
 	REG_UFS_LOCAL_PORT_ID_REG           = 0xC8,
 	REG_UFS_PA_ERR_CODE                 = 0xCC,
-	REG_UFS_RETRY_TIMER_REG             = 0xD0,
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
