Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8E1DFA3741
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DayfMk/slx9oAWyh0aXYstY+mnZkgu7gKZyFv+3ExyY=; b=IbIrDDkl/WAL/x
	Rw/wj+lXwlLns8HdI2OzPumKaziqP6C9pr4CWUtL4lOlP3OTnLqpcZCGRqEp2HuHjZd2i4zOFsGSm
	mDRvSqc4ON2zA3mIry4XrSBDtVi27g5IP65g72hRcEr9+MEESdEOLN8DuxfnzjbSf1fgTa6YPTnVq
	hrSgmh4o5KsJJug8WrjODJjzeevpRNaRMETdU124puxgkHR9uU80avn5hJvdRd97ciWpIg25d9Lrd
	WRvmr3Wlpxi71V7JnDdzE1R7ZYFGTcxg94lI9aqcUdklr7xQ+0BXOs00ibL1HaIGwUZcaCkTbd6F6
	DE+TumaajQo8mmz5LWOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ7l-00DaRQ-7j; Mon, 31 Oct 2022 18:03:01 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ7i-00DaQ5-DN
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:02:59 +0000
Received: by mail-pg1-x52b.google.com with SMTP id e129so11340235pgc.9
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=az+mbqwaQdajMORJaiUBcviJsUOKBXycrYz2HKA47/E=;
        b=VFf52+bdqzJyslIQpm0rjtPL6FEnpZk//tWUJACHX+iQh6ZYzfBI7nGthmgkuNkJNG
         GJJt855vPoU25lQgPO4nEWh8k8IYoVEGLdc7AC+pbFzSJmxVQ9aMzEHWZMdhFkAY2abv
         OsFxoKHKjLDCiEAgzMNW//J7UBiwO+tgmxpIALqhGPLkCdLTgZG7DStlekRcQwP6Rpr1
         kr/qff3pwKEB66zk3RO1OY5ChCxrvvo6qCeaINOKySCLbY8CkB60887ggnUOGwOeJyr5
         shvTtNXAoEpqnJnnnapy1ngK/JT5p/o2GkZZvGWUJW2+R33dxX4kVtKswFWo+2AZJvmf
         px2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=az+mbqwaQdajMORJaiUBcviJsUOKBXycrYz2HKA47/E=;
        b=G9vQbG3xmhot9Iv9JYMf8aL//NdZS2ofHIgKNYWy9fXoHslJrkXxku4uH4DeNsyj6k
         +iXQVgHiyjLuthn7IbiqmvKGOIEeGzsDRXVweH+epuZfipsyAvRwea4XdI/wGOZF+SES
         VUEv56wKTdzJ/z5kAnUgYOfSodt3XE3X7vaZYyVH+yqGUraOy0zCmG8nB5yX6BgSANdN
         OtZEplX1k8QBFGQTYv/92MSFPkofp0lO0nmKn59RP9tV9eCq4PeJQe58xicxEtxewpDF
         PlzvHr02lmMHNlkKAOyvKUb8sCXOkYgkWgK5ix5LwZQXQy5ard5nJufE7hQ8A3lsxByM
         7gzw==
X-Gm-Message-State: ACrzQf1CQsEbWlYBLs8MKPhJqxUOgGmf81H6MrhK3IaHKT1K9s62s5zy
	hoU47vW1kQUX4qjqIuWOJU+4
X-Google-Smtp-Source: AMsMyM6qb3bnXQ6wtLizQA/BewtZqvsGYBB5m0B22PSvF3DZDL342VIwvxVKXlCprfdLvEQKU+F+0g==
X-Received: by 2002:a05:6a00:1152:b0:56c:dd9c:da94 with SMTP id b18-20020a056a00115200b0056cdd9cda94mr15578291pfm.66.1667239377356;
        Mon, 31 Oct 2022 11:02:57 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:02:55 -0700 (PDT)
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
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 03/15] phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
Date: Mon, 31 Oct 2022 23:32:05 +0530
Message-Id: <20221031180217.32512-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110258_472412_B573C1F6 
X-CRM114-Status: GOOD (  13.06  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
