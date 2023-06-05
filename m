Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FDB1C7EE23
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jun 2023 18:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W10XANnLmd4TI0h+7RMVQtrRRonlRhKYgCiZSXETeRs=; b=UF2so/0s//zzZ7
	Je1InGVE2blE0ZLXbSLM1ll5MxtnBZ1UNFhS2LLizkrXpBXBjP9GnsfmG+gVpHaCihIsypf+21FVF
	73WVnMwv/y2P8NEpgwza5AaWAo2zgognqApz1/KzbcEI4I9b6KPlp4egM5sm3QO+yOnTLzd50nQJQ
	CweGYkl4hP4XRqBexCbpGPyYlYiLeCBL/8fFcJG4f71khOXREmqsLq2gW0N+EWW45xltdEBsTN6Ho
	9iOT8i105Lf3y6C1e5+kx1IaOPMmsJJ4zU5cK9jZu//0br1aoBr7GONOiJxGvSol+K6pVxZA/Uq5R
	QkjEIx4CaDB+gVIS45dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6FCs-00GRfc-29;
	Mon, 05 Jun 2023 18:45:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6FCp-00GRec-1s
	for linux-phy@lists.infradead.org;
	Mon, 05 Jun 2023 18:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685990725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IvlL4u9x0nM8y/6XiWfoJMQ/1cupgKWd5JyS3D3qy1Q=;
	b=cbUS/7N02wgtHuI+R+Kxnb9xtOk1X7VVLi+iEOMo6bdkxXfaODMkxJneXTV8TLSNm32Irz
	10uLVsizYwWeA/JdP5Dn8ipV6Zy4fojptK+pXAtHo5WJLFHzIFitUv3rKYET0+FIvjeeI/
	yzo42xDKJuoTPK128UZ5v1C9PaML+iU=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-662-EDdy_Gl4Pf-GQm7zi8IAHw-1; Mon, 05 Jun 2023 14:45:24 -0400
X-MC-Unique: EDdy_Gl4Pf-GQm7zi8IAHw-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6262300393dso48326386d6.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Jun 2023 11:45:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685990724; x=1688582724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IvlL4u9x0nM8y/6XiWfoJMQ/1cupgKWd5JyS3D3qy1Q=;
        b=Z2b4A3WnqU5VcmpZx5+tNiYBZxCwWt67YzwCrHvYvCKGtlQ9PolbG5egxiZkJXndbx
         PskB48F4nRX8Hvqfj5inHVXVuic7zBvfbu9oHzJwXf1kKSTHyyWG06HXaFBj76gU1nFS
         CRfep1CtReII67e2htj0RTbngXhIev8U3b/pqsbJbIJcDfzG4/n4gHil+mQHitIyrpSk
         MHXnhDW1k1KUk72Atj5NOBO2zRp5s6K+atSJZKAVA8kNL/z1otr70MRLR9/ncdWPjQQ5
         J/dEghkTsfS/O4rb1yi0DODZpr1kDAm37kpj/Q3ZdR637JpDgu2EI8hEOWNkbn3BDl9F
         1D5g==
X-Gm-Message-State: AC+VfDxHiu29C5JwiTd0v4UbNBAZBaou+3B4Gbs+QNpoWH4QegMNLgBu
	wbsVlIRW0YJ0sLoUuxWT3Y5VNWY7VNzjlqkytIZCE4K3vHMDN0e0W7P6VQlbrGVOq9zj320395U
	PPSeNPTHX8Iad83rY82o0Pf1iow==
X-Received: by 2002:ad4:5b81:0:b0:623:8387:3d0f with SMTP id 1-20020ad45b81000000b0062383873d0fmr9484800qvp.28.1685990723858;
        Mon, 05 Jun 2023 11:45:23 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6uGsAN6Rgou4IAJFUeHThaNt3mtxhiTfnqxO+Phzr4/amHBJd57R7UDnsl9/VbGKolkXItIA==
X-Received: by 2002:ad4:5b81:0:b0:623:8387:3d0f with SMTP id 1-20020ad45b81000000b0062383873d0fmr9484784qvp.28.1685990723598;
        Mon, 05 Jun 2023 11:45:23 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id d10-20020a0cc68a000000b00625da789003sm4785771qvj.110.2023.06.05.11.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 11:45:23 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 2/2] phy: qcom-snps-femto-v2: add system sleep PM ops
Date: Mon,  5 Jun 2023 14:44:54 -0400
Message-Id: <20230605184455.34832-3-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230605184455.34832-1-athierry@redhat.com>
References: <20230605184455.34832-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_114527_710746_BC79FC74 
X-CRM114-Status: GOOD (  12.24  )
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

Add the system sleep suspend and resume callbacks, reusing the same code
as the runtime suspend and resume callbacks.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
I'm still a bit confused as to what the difference is between
suspend/resume PM ops and the struct usb_phy set_suspend() callback.
Please tell me if I should be populating the latter instead.

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
