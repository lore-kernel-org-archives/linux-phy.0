Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56918C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 19:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3GIeLkhecyeRc7MzODxE/Pq03S79kVlzH69/Tz8xmY=; b=4FsD2s7t1PNIxE
	ZGljX8xS/xf/lqENDnFxHgCnUOpzVyD8B3rOgD9qyndUh+FZWJ+1BW2ULIT4uKS2Kj9t0e6a5uSZA
	UNKWpEX8SHdGBmiFcsqLPkvb/dWLYq9VBrrO/gIdrqwq/5N/wler2L7a6HjfKxQv814YdbfzykS2x
	YQ/0wOtR21H5T1gtbloebvoea00YtjRytpMLCwQu0cosfnvr0Vw24Je1WvTXNp6GuaD/iDVt/D/Rt
	Og5z8LUP0Appoqby4uycuuLCDpm8UgHC4A6+idhusQttXPml7c8u28q8wGVW7R4QlTlXvq6mrab6i
	3aszequgZRblIKM3bgfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAh-001ZyR-3D;
	Thu, 22 Jun 2023 19:40:48 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAe-001Zx4-3D
	for linux-phy@lists.infradead.org;
	Thu, 22 Jun 2023 19:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687462844;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MWrDFCHsqN4+5MSAzLCn1UT7GF/+NLROeJoU0j89xKo=;
	b=NC1Wi1p4Wo6DgiS4gH1GbBe4hy5MchgN84YFhoCBSxZGK/yqH5YofWFO+rRf/yGR6sztUP
	04Q0N/isggBDFcAyalCkaPlN2qXpT/eLvHBBnW0RnbJilxSRQB0YzWvU6H6N7ynCsDpOcW
	JM26IQjRr3ghjN0ooNm06cb6x0Yseqo=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-9HvtxRuFMP-4LRpX0Leibw-1; Thu, 22 Jun 2023 15:40:41 -0400
X-MC-Unique: 9HvtxRuFMP-4LRpX0Leibw-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-62ff7c6583cso78227016d6.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Jun 2023 12:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687462841; x=1690054841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MWrDFCHsqN4+5MSAzLCn1UT7GF/+NLROeJoU0j89xKo=;
        b=fMuGfJtbFPVEwh9RrA8yd7Lu3MeHSNida9geTkZJ73O8bhcPdKxI8USlfBeK0oVN8/
         WAx5mBYkFIP+l0+gg537OnFXu8OY2n46pBLbl5y9mEJUjh178SptW8sgVv7/F0xf3RwI
         DHoHgFHXpU8SL9iw5bWDX35Dutg7mgwN8ti7sClBW3S/fpgqkWxV9X9XzjqN16kXZNZQ
         BOaxdDRqYKQa1sT7EWsNpDj+uXkVXbMV+ikx3sBp02HJ3kHFUth6WlXPr96jnlG6vB02
         LfshU6oIb2guA2SEGMdfLcURmf3dADccDrd+jOla6+CpQL2Rt7j9tJ5QHjZwPqwb7AaW
         VCuA==
X-Gm-Message-State: AC+VfDyEO0zijT9S5lrc7mNKOm2+H9h5ULmikK8ScISSfO/IPgohRGIT
	yon0Lar/vAl0UwQZexz4Ugjo5D2NZ25pNNgi+tBJDs+d35WG0bzPr8+LVyCOzEZHUBO6pI/yJqj
	zA/uIBs3WunM+IGw98eCTXiDE1g==
X-Received: by 2002:ad4:5945:0:b0:625:bb19:278c with SMTP id eo5-20020ad45945000000b00625bb19278cmr21175178qvb.2.1687462841469;
        Thu, 22 Jun 2023 12:40:41 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ73yfvqsiPyuOtABnb0j8eIwVwowAAFand2k5OPq2wcWipHS01G81L+H9yJSu96nSUjf8KfOw==
X-Received: by 2002:ad4:5945:0:b0:625:bb19:278c with SMTP id eo5-20020ad45945000000b00625bb19278cmr21175163qvb.2.1687462841144;
        Thu, 22 Jun 2023 12:40:41 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id jo30-20020a056214501e00b006301819be40sm4174183qvb.49.2023.06.22.12.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 12:40:40 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 3/3] phy: qcom-snps-femto-v2: use qcom_snps_hsphy_do_suspend/resume error code
Date: Thu, 22 Jun 2023 15:40:20 -0400
Message-Id: <20230622194021.80892-4-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230622194021.80892-1-athierry@redhat.com>
References: <20230622194021.80892-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_124045_109835_BDD06714 
X-CRM114-Status: UNSURE (   9.38  )
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

The return value from qcom_snps_hsphy_do_suspend/resume is not used.
Make sure qcom_snps_hsphy_suspend/resume return this value as well.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 378a5029f61e..6be8b5218aaa 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -221,8 +221,7 @@ static int __maybe_unused qcom_snps_hsphy_suspend(struct device *dev)
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_do_suspend(hsphy);
-	return 0;
+	return qcom_snps_hsphy_do_suspend(hsphy);
 }
 
 static int __maybe_unused qcom_snps_hsphy_resume(struct device *dev)
@@ -232,8 +231,7 @@ static int __maybe_unused qcom_snps_hsphy_resume(struct device *dev)
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_do_resume(hsphy);
-	return 0;
+	return qcom_snps_hsphy_do_resume(hsphy);
 }
 
 static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
