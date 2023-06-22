Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95C01C001B1
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 19:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3jpmRLOvE3KC9X7R+4CUPelO4GH0IK4sykmlu5wxI8=; b=C0oYxDS8KfDlL/
	GivCMyTwooiASkol2DPvatHJvqKcGzM4F/ijDtQlU/lFsoa1gFEmN6MSHcrgeBV+JwgaJieWZkyjm
	q/6dxp/WWYFcqp3eW/uAewETW/qJgfCWAxtj8MYLSPXe/4midz+9HwmCXg1kXdXOZtmvdexlak3HY
	uuS/GvkEffvor5vkSh6IcKPSYWFnSUZ0/uW1AQVw3Pu7zkXH2Plu8CAvrWAFTrazjJiKIyXLSSC4y
	DCg4oLTh5T+vLFXugjx3bmtraPp/0pIRnNRKyCpDzzlWrQsY9To8zY09CqPX7qtqAWRhc2S2oSDDU
	epzK5u5HM6tKq81K0QIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAi-001Zyd-0p;
	Thu, 22 Jun 2023 19:40:48 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAe-001ZwL-06
	for linux-phy@lists.infradead.org;
	Thu, 22 Jun 2023 19:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687462843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DqhwtQo4HweKbF66I7wMIR+srfhZ3FF6k/Qs3cAOKDk=;
	b=aKkSSzYJNrRMjpiZEgcNfWu/3NyJrgxG9J8p6pFUz/aWUN+NPeHfa0yCxyqT6TXsf2Wz3J
	l2rASqELrL5t5pM/OAsM5EMF04Zae7TTZemhIgDCLYn/3Jv6vYG2knUOh7s9XDPdcsoPjA
	ncy9YYjarYlgP/G2zjpGkAy5EFl3bFY=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-404-cGQ11QOGOdi8yvYIsdTXng-1; Thu, 22 Jun 2023 15:40:40 -0400
X-MC-Unique: cGQ11QOGOdi8yvYIsdTXng-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-63015b665d3so70209266d6.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Jun 2023 12:40:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687462839; x=1690054839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DqhwtQo4HweKbF66I7wMIR+srfhZ3FF6k/Qs3cAOKDk=;
        b=iJCUun0qGbQHpRpQpWUk0XcQt+BdyqGaGk1xWJWbfV+tnTPzWQZqLfhbKbwL0maOmu
         Bk0D+i7wwPUmK8mFX8u+2VF3frJJqVzwa+Wgqio3LYodPOKrbRvOL1NI+50CKwMf1z1m
         cIV3mq0677t1zZINTBxxZkhN7V7qL6IwE+iaoRybw+3gYN5WeWpYQrJji0iaOrpfFEgN
         ze9Of1XhRH+ISGOwW4yJwSm694+SJNDlmALl0RXeCgDPkgCSyM+Jv49eOvW1L3OW2YVb
         v6q13CSonKbiQOVrhf/zUqcmyAh49aciX0fVMrH/JO3J/6920edGUH3V0RrTbK9qF/rc
         0JCQ==
X-Gm-Message-State: AC+VfDwA1FczcAVZU0fY0QecuZT6nHdmX13hf/Pe10xGlzGiIB8i3vsO
	CxPW4U+kwjSCmthX03rRUUcw4HmKn/COAJGtZJ1uJzAamWY4c8RTdZNDKg8BeXCIi7899l4rF8R
	U8hCp/jasrI2UO3cnU3JJkbkkMg==
X-Received: by 2002:a05:6214:5086:b0:631:f6f1:87dd with SMTP id kk6-20020a056214508600b00631f6f187ddmr9337127qvb.8.1687462839589;
        Thu, 22 Jun 2023 12:40:39 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ69TnqqnfQxrmbJrjGYdzCVW52XHc4aK+QXoi41a2M0LmdNJH1EUhWqDLJh8yup8EdWguSn+g==
X-Received: by 2002:a05:6214:5086:b0:631:f6f1:87dd with SMTP id kk6-20020a056214508600b00631f6f187ddmr9337105qvb.8.1687462839297;
        Thu, 22 Jun 2023 12:40:39 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id jo30-20020a056214501e00b006301819be40sm4174183qvb.49.2023.06.22.12.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 12:40:38 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 2/3] phy: qcom-snps-femto-v2: add system sleep PM ops
Date: Thu, 22 Jun 2023 15:40:19 -0400
Message-Id: <20230622194021.80892-3-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230622194021.80892-1-athierry@redhat.com>
References: <20230622194021.80892-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_124044_161590_7158A784 
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

The downstream driver [1] implements set_suspend(), which deals with
both runtime and system sleep/resume. The upstream driver already has
runtime PM ops, so add the system sleep PM ops as well, reusing the same
code as the runtime PM ops.

[1] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/phy/phy-msm-snps-hs.c

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index ce1d2f8b568a..378a5029f61e 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -179,7 +179,7 @@ static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
 	readl_relaxed(base + offset);
 }
 
-static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
+static int qcom_snps_hsphy_do_suspend(struct qcom_snps_hsphy *hsphy)
 {
 	dev_dbg(&hsphy->phy->dev, "Suspend QCOM SNPS PHY\n");
 
@@ -199,7 +199,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 	return 0;
 }
 
-static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
+static int qcom_snps_hsphy_do_resume(struct qcom_snps_hsphy *hsphy)
 {
 	int ret;
 
@@ -214,25 +214,25 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
 	return 0;
 }
 
-static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
+static int __maybe_unused qcom_snps_hsphy_suspend(struct device *dev)
 {
 	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
 
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_suspend(hsphy);
+	qcom_snps_hsphy_do_suspend(hsphy);
 	return 0;
 }
 
-static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
+static int __maybe_unused qcom_snps_hsphy_resume(struct device *dev)
 {
 	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
 
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_resume(hsphy);
+	qcom_snps_hsphy_do_resume(hsphy);
 	return 0;
 }
 
@@ -518,8 +518,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
 MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_of_match_table);
 
 static const struct dev_pm_ops qcom_snps_hsphy_pm_ops = {
-	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_runtime_suspend,
-			   qcom_snps_hsphy_runtime_resume, NULL)
+	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_suspend,
+			   qcom_snps_hsphy_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(qcom_snps_hsphy_suspend,
+				qcom_snps_hsphy_resume)
 };
 
 static void qcom_snps_hsphy_override_param_update_val(
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
