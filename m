Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9938C77B62
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COTyu4ZeASV8/Nb9OBUvzaE9TD/8SAvQtCnmVzt7C44=; b=OIBtgv50lulJlT
	q9c39P/t5KZrOSoTACoJ4jIrO4od+XLEyHdzqRhA9L9695wGRPBS6CxFQxnbN36AG4K4qKZ4WVq+8
	7znOupKpb30ldHa3u2RlzOSoyPA2NBn/I9FyfsNFq3+p/z8CUutwYWf4gAKoBelkPOQckGiu4YxDf
	uqhj6bvnKyqccdkAdx72lHXK425d1p+0yDXCNlG95D+b1TS4JUEti1tR6eePDZXATUW63M9RP/Q2n
	/ac1alc9CRlak8R2mQQzh8zysArIVh93MvHNazjQPQtLZZyDeXUXnxGjYxmq5PCazhUKMRQrCSzu8
	Xlde9MUOrjtgcKmcxVYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7R-003OCE-10;
	Fri, 24 Mar 2023 02:25:29 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7N-003O9E-03
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:26 +0000
Received: by mail-lf1-x133.google.com with SMTP id br6so380395lfb.11
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=089AM1u0MCseHN7qh2kP48jUDiiKcGADCSThnwjmor4=;
        b=bvpWuwUdg3IW05UwBxAhOHookaUVklXcW5wEbA/V6IvJ+9SgUmyKPiNFAo/dp6e1c1
         TbglwFYJUQPuJzh62uTyoAIjcxNvc4Gyyyh/2FKZKHlbPQ3FFKv8CKHTP3kzHXdvodAt
         9WgmVdIuNLF4aK61DeJBCkgT2ou6slazpiyzMjaLr1rgqxrRkCwgHvfuzgn5d3cpWPCN
         qX5hpHuqFp9cZezqpp1ALv4rI50459Y1x2ESdklEucnENkdfEjW6I9m3G0/RJqLO40WF
         lo7rv3VIjgQrmK6CuhX8vPM4VseoOtW8NTXoUs0n6J3xxzDJzmr7qB/+QNYOU52cAoA6
         uvjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=089AM1u0MCseHN7qh2kP48jUDiiKcGADCSThnwjmor4=;
        b=Mn40ylFrQ+tfwuintyLkk9D53OYQPv+cRJ6TN2ONyBN6kD8MmNAVv3ZDPA67bhpIpy
         jBecor9V+aA0Ndh0X9uTufOP+Tuga0BHSiwK1DAWmI7TWXer5XDPJdj+WXqAfBdL6ytc
         HfYakyHWAVp7BYXQwU7oz0EkJ8i5MVPhvu8hWMTHv9YFFdbkrQ2bQnFOmEIwGEytc3Ev
         u2PcvGBivwWNxPgPHBbbeBmqNXxbSLXEWRBpnuR7qcs05E2JiiUfrYznMraxdDAb4xnT
         GkTijg2IKCLx2Scf5INnDb3nPCrnNjU/GBgidlJyn1ivjAcys+jaWYUqx4gj7YL/eDFe
         6tVQ==
X-Gm-Message-State: AAQBX9e4MVDpcWRezKt+w+h/auVoNR8svZ+3StHf1/Jjcnu1pkwEkPkC
	EncS/XJf7+SaFfOWeyFhzcMcjTI3vWMb/784O/ANxg==
X-Google-Smtp-Source: AKy350Zwp9IcExxE4Z8jiUBymRgWuG28ll1AGs6oAPb6T6Oc0xXP1NCouKr1b8IN8iTVVrcMgtNyrw==
X-Received: by 2002:ac2:4c22:0:b0:4df:7cc4:d1f3 with SMTP id u2-20020ac24c22000000b004df7cc4d1f3mr218625lfq.20.1679624723506;
        Thu, 23 Mar 2023 19:25:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 08/41] phy: qcom-qmp-ufs: populate offsets configuration
Date: Fri, 24 Mar 2023 05:24:41 +0300
Message-Id: <20230324022514.1800382-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192525_056634_CBA99B39 
X-CRM114-Status: UNSURE (   8.45  )
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

Populate offsets configuration for the rest of UFS PHYs to make it
possible to switch them to the new (single-node) bindings style.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 994ddd5d4a81..55f7b3b74501 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -803,6 +803,8 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
 static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= msm8996_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(msm8996_ufsphy_serdes),
@@ -860,6 +862,8 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sdm845_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_serdes),
@@ -946,6 +950,8 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8150_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_serdes),
@@ -978,6 +984,8 @@ static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8350_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
@@ -1010,6 +1018,8 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8350_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
