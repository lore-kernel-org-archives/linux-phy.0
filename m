Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABD8C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:56:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 67D5F611F2
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:56:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 67D5F611F2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JWHASkCFURdk/lMhbbbYoqNmeEu7Fq0/2r4Xy3wfVlI=; b=agyJ9MsB0XvMMh
	usuEGFm7MBdpcfUsnlCUyN2sV5VUhjja3gB99MaeJeyqCMDXa+qv0k7SGL4OuC1st1mdDDKQFkXEU
	p6ujfgVx232Nio44SbXQYbOZuNAyOvKkS4uBu1N4YIMF2HHBfBVLHmAYFBeuPkhUReh3u2Zyq3C/v
	IRv4JhhzddvHP3ZOHGbH157PnIxadb+/ClVN8ieXatm9H3sFcWGTaksCy3BuzHsQG8rPWIaOIEwc8
	lBGVH6I+jmO8FZ9sMUWIOY7G1BeRDXdjWp+YAMrPVI5nhY8Xu15zZjYV2JKxxXL35p4Ef8J3NPjn+
	rViPeMDG2uyvTrGJPI1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdDwq-0058vm-Tz; Wed, 20 Oct 2021 15:56:12 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdDwo-0058uK-Hr
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 15:56:11 +0000
Received: by mail-lj1-x235.google.com with SMTP id 204so13395573ljf.9
 for <linux-phy@lists.infradead.org>; Wed, 20 Oct 2021 08:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m+ItIczt/we4aCNCLuPDWBIl9eNpeN0Gi5+dFsstjg8=;
 b=PPfHiBhF0CgmaF6jTyOOy20Z/ohxmUG7g5ibNhERJYs885j4aoCdo130v++obE+wZR
 s7m0NosLd1OIOZ6oy65cHw2Z85b58XBequm8WPkA0RQ0ebIa8Oz7HUEDvgrq3UK2W80u
 0N0mduaKzAdLWk3BqIj0vn1t8A19wMCVaYQPvhtSgxP1ovyNKWoZXVQPr32RAkiiTZLQ
 Z2NF9fpyCc/uSfAG2gle/ZCXOY2UAw2DaTZ48abCVqzm3ywGTKnWUmyAA9nZx2tI55iL
 xMEPmCohvB8pXxpnUZh/2iJXHKXvVDQanW6xzz/BvNgfqGavUVsHIPnJCK6jLMY9aJYr
 UerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m+ItIczt/we4aCNCLuPDWBIl9eNpeN0Gi5+dFsstjg8=;
 b=ssG+ZigLS2OcU7bO8K6112LXr5R9YdqEUUGyYxp44BBJRAETYd6+PANsN2wptBBE8+
 KSMOD0CXrtNziZdK84ZyQqGjvDzEwgoZ09zL7ciWnICSuxcmqGQPZ7rlAk+xGyHcIzgV
 1vYIDvHaDxR0UMfmyBjYKXnC08XtU2wL1mUIytQ46haqYBJkzGNDYnS1JxVXtILhqD5r
 rfeqM9kRdM29Gi8sDiGasToeae2QBpmnz3i793Qffv6Hpnbq+afOXFQwLe//fHeJjT2I
 cOAiymo3IJvj/4BsHu4ii7nvHky8kAJpYjwi9FkBUqaPy72EkLpEoTt0WqdseNDfO52B
 tu/w==
X-Gm-Message-State: AOAM530txbqZa7nci1+iu/f9zc2dYYrpoY3AGDBhOcojd7B4O9xKF1iw
 y/VQgVufrDAy5F2U1DZjUnxfLQ==
X-Google-Smtp-Source: ABdhPJxfdnLSsbBzdIeOpiiyLCWKXSAGHn87WQRfJq9+wpr+WmYiuCbZWZSwJEQYkTD/fYdL1ZUL+Q==
X-Received: by 2002:a2e:b8cd:: with SMTP id s13mr240993ljp.352.1634745365247; 
 Wed, 20 Oct 2021 08:56:05 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id k14sm264348ljh.125.2021.10.20.08.56.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 08:56:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qcom-qmp: another fix for the sc8180x PCIe definition
Date: Wed, 20 Oct 2021 18:56:04 +0300
Message-Id: <20211020155604.1374530-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_085610_614102_72D00E74 
X-CRM114-Status: GOOD (  10.71  )
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

Commit f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support") added
SC8180X PCIe tables, but used sm8250_qmp_pcie_serdes_tbl as a serdes
table because of the copy paste error. Commit bfccd9a71a08 ("phy:
qcom-qmp: Fix sc8180x PCIe definition") corrected part of this mistake
by pointing serdes_tbl to sc8180x_qmp_pcie_serdes_tbl, however the
serdes_tbl_num field was not updated to use sc8180x table. So let's now
fix the serdes_tbl_num field too.

Fixes: bfccd9a71a08 ("phy: qcom-qmp: Fix sc8180x PCIe definition")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index f14032170b1c..06b04606dd7e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3632,7 +3632,7 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.nlanes = 1,
 
 	.serdes_tbl		= sc8180x_qmp_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
+	.serdes_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
 	.tx_tbl			= sc8180x_qmp_pcie_tx_tbl,
 	.tx_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_tx_tbl),
 	.rx_tbl			= sc8180x_qmp_pcie_rx_tbl,
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
