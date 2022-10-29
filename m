Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03496C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2p7GDVZcK4OBR5SXxZyqbbpMFik/qXitEFxqc8x4ANw=; b=z3ZzR2dx6TvxUG
	D2QSUkbfDTikzD3yPqhwPenNrs37TCjex/w8t2cfhUor8nCs05OC16YEGAWKJC4lUB1xaM7AmMKag
	/xjHP/85bZVtlz1F6uA8ZPwGwulGYGrcgcGck6OO2u6DZZw1r46cWG0+ltnNoYp/dyYNk0hRiy7sA
	aLVwu1BTaXoD2g0XiFSAMlAH9DJOLLR/CPDhtmkMAtLQUTH2zI+xl5T3RH9BErabU+MnZhHB9xAYK
	WjG88Lqn2gntBk/SNXm1aE2Od0749hvgopNH7GUJuV8FaVCeTZeBZqQ85UZo1s0t7bAzAjlXHDG2b
	u8EG35grY2bRWbGzutew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oome1-006U96-E8; Sat, 29 Oct 2022 14:17:05 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomdz-006U7x-7e
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:04 +0000
Received: by mail-pf1-x42e.google.com with SMTP id b29so7064852pfp.13
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5WmRC0L+hw4S3UXcDpcUjp52H52L0HyHYoqC6TP1dPI=;
        b=rBHuvUSi0O1Am4sK52D4c+AXlzJs7HJbVpFPBP5W1Ic8IY0RhC6D6fzMR6nszKETvB
         73sBiQa5MOegQz1wUrhZpDGJq/Cz4PerQVYOyIBfwkFaoJ55PuSjzROeyRFYqGht224r
         ikvQO+vdEwQzJ5Sa6GB7vqCUsDeXwvNWLpWQGS50+zBvqPeYRGpHGrYkUzdSJz2rqliB
         K1KhHvUH0qHBYs69VBnIw/jBR6D6Nr6RQ27ZpNNYDZR+yHqwet8BL+IP6+5QR75QuEjZ
         birC80j327cFP46UYMJ0cRAMmhpr4zKw5ScYAeSzVHc8VTaCUmwaBU4UdvDE7zOEiPgQ
         R6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5WmRC0L+hw4S3UXcDpcUjp52H52L0HyHYoqC6TP1dPI=;
        b=e1vRVoTkYeCvLnZuQOxhzMk2NdrhBcydHEeoaUfiDCZvr5xnkQMDXAQ4YC9R9xBnVz
         zRvIWY5dj6cRy+zpPUTM33klW2I9LDW2nxKWFutrXxpv5slXuqPKXnsyuhCrecK0/b56
         q4yyW/1QSHuP5zwJpLliC8rhgF6na5+XhRrZXEmGz34xikNRXP0lpMA4Z8xJPW+jx8im
         14unh9j//r8N0Y/+WmLkhLHZLEamXG5U4CaIWSxEQuiaVGEypKfqhRCYGEe00y1A9+Pu
         HxdugONmvAbQ8wKVqYs8dfQhtkviqdBwcVQEyg+Tal0nANiU3JxCDznoOLXv+be8UZUM
         Db/A==
X-Gm-Message-State: ACrzQf0Zk3jD+i1OcFTUmYPMHvsSsDhkeCRM/bWqAZTEWQvApwDDAToP
	VKiXI9yStoHbnCeMKemSfboO
X-Google-Smtp-Source: AMsMyM5ha5AnMbk0SxjDC6+WYDDz5cKfoA673Y2oly3miKoOPe5k61mw7QN2Z5TIxwS1QmxQilf/HQ==
X-Received: by 2002:aa7:88c9:0:b0:56b:e851:5b65 with SMTP id k9-20020aa788c9000000b0056be8515b65mr4852227pff.74.1667053020222;
        Sat, 29 Oct 2022 07:17:00 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:16:59 -0700 (PDT)
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
Subject: [PATCH 03/15] phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
Date: Sat, 29 Oct 2022 19:46:21 +0530
Message-Id: <20221029141633.295650-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071703_294648_4D355578 
X-CRM114-Status: GOOD (  13.00  )
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

Add separate tables_hs_g4 instance to allow the PHY driver to configure the
PHY in HS G4 mode. The individual SoC configs need to supply the Rx, Tx and
PCS register setting in tables_hs_g4 and the UFS driver can request the
Hs G4 mode by calling phy_set_mode_ext() with submode set to UFS_HS_G4.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 4c6a2b5afc9a..5f2a012707b7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -553,6 +553,8 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_cfg_tables tables;
 	/* Additional sequence for HS Series B */
 	const struct qmp_phy_cfg_tables tables_hs_b;
+	/* Additional sequence for HS G4 */
+	const struct qmp_phy_cfg_tables tables_hs_g4;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -587,6 +589,7 @@ struct qmp_phy_cfg {
  * @pcs_misc: iomapped memory space for lane's pcs_misc
  * @qmp: QMP phy to which this lane belongs
  * @mode: PHY mode configured by the UFS driver
+ * @submode: PHY submode configured by the UFS driver
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -600,6 +603,7 @@ struct qmp_phy {
 	void __iomem *pcs_misc;
 	struct qcom_qmp *qmp;
 	u32 mode;
+	u32 submode;
 };
 
 /**
@@ -993,8 +997,12 @@ static int qmp_ufs_power_on(struct phy *phy)
 		qmp_ufs_serdes_init(qphy, &cfg->tables_hs_b);
 
 	qmp_ufs_lanes_init(qphy, &cfg->tables);
+	if (qphy->submode == UFS_HS_G4)
+		qmp_ufs_lanes_init(qphy, &cfg->tables_hs_g4);
 
 	qmp_ufs_pcs_init(qphy, &cfg->tables);
+	if (qphy->submode == UFS_HS_G4)
+		qmp_ufs_pcs_init(qphy, &cfg->tables_hs_g4);
 
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
@@ -1083,6 +1091,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
 	qphy->mode = mode;
+	qphy->submode = submode;
 
 	return 0;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
