Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 535C6C3DA6F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 17:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DegNZmKmJctAcZzPoWBgw3wCslabhEmStpx4wxKSDk=; b=QR9TU5lSeFepAL
	RO9BhNfsKyApKhyiq3lBZO7BNAhCIsLuA+hIc/f5gYL1uJJcbNrbCUIY66ZdYU+NTQRGZ37/1F2Xw
	6F7ioEAAARw29Fht7txxwPFc9//mXg8B1eB1uHkD8KqieF4QMsIE3kDkiOEb5ALXxYArEAtsFGbFr
	IWNPhCU20LYHdUovj4qGOmv2TtEzbh0yjOk/ajvGEWU8fSpIs9Vqoe/ccJa4fWURlwwtuVz4AnE+U
	3zVJSjGPrVtm6Ff6teqE/BzsEA8PZu4HhXtL12fNsIlMcHvXcJkhtjIZJuW0s0ZkCLXeai7iyXHF/
	t/XmQ7+XCVUl7h/Gfzlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrRR-001C98-09;
	Wed, 23 Aug 2023 17:14:49 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrRO-001C8T-1W
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 17:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692810885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6LDqnjupdSmL9k9YHJrhlv07uaJlqH7GpMG15CT+bhs=;
	b=GGwBtI6oH3aRDbpsX2WHyQ17QCCg8/zhxd4rjSpSh75bo5VY4OR+qopvLdPIaR3xP5mEgr
	EMprEwq/xZ2cNFb/GDTll2q6ucrOQu34IgZ7dJ6qufUp8Wu5jwnmcWOYe9Tv+w5lqCBcPo
	taHcCR4QVZRR7UlvQ9TVULtdsm9tuwY=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-lQOdWTVHND-a5XLQ7h6HGw-1; Wed, 23 Aug 2023 13:12:48 -0400
X-MC-Unique: lQOdWTVHND-a5XLQ7h6HGw-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-76de9c09746so102806985a.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Aug 2023 10:12:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692810767; x=1693415567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6LDqnjupdSmL9k9YHJrhlv07uaJlqH7GpMG15CT+bhs=;
        b=UdMy9vqcKBZT/bAUGcxiMRJb6oarlhMBbAT0k7QxWK2ZTaucfzpc9nQaMLIhkmN7sG
         6w+eRZawgKBRyYIeCxzte647j4pWObbj4AP3l2e9CWUVsMlz11nUpaK7Eqk3cPYHVqTZ
         peamHq+5jHOKFuLHApz8IfykjA5FfrctloLzvJkDR37omNjfQlYURtb/Ei8YkX1JKiqF
         f7Q8DADfeSJCEnPdiJacTpsxT501pJuhQUKOLKfOuLH5tlZVFieVY7gqTdLhxw4d7Csn
         TF4GsPNCTsZvF4Gz3vMJ8q0erMUMgAdhyVRRIO3guvVIxTUueLLRmZ9jorvHTMwdbYr0
         3AEw==
X-Gm-Message-State: AOJu0YzzvFVVLe5GCr40cSw8FnbbOHewpjaTqFhnZyy9bn8iqEIK8GkG
	QwhuQUKiR/hAHgDPdv4Rn3AyjXZ88eVrCRdkam10IhKmgxfkoJDsxFPbmm5SCcoAVigvw36tgzr
	gQXlDYATm2eC3tRUnA7PKdBlBjQ==
X-Received: by 2002:a05:620a:248d:b0:76d:966d:b30e with SMTP id i13-20020a05620a248d00b0076d966db30emr19079962qkn.6.1692810767552;
        Wed, 23 Aug 2023 10:12:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGITbTZgj/QdmC+MzL1ZvWT2VW6zR43X5aoHcFP2MOnAHhyFKzG61G3sIFIkZ0sbhWznHuGPQ==
X-Received: by 2002:a05:620a:248d:b0:76d:966d:b30e with SMTP id i13-20020a05620a248d00b0076d966db30emr19079942qkn.6.1692810767343;
        Wed, 23 Aug 2023 10:12:47 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id x26-20020ae9f81a000000b0076ca9f79e1fsm4056361qkh.46.2023.08.23.10.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 10:12:46 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 2/2] phy: qcom-qmp-usb: split PCS_USB init table for sc8280xp and sa8775p
Date: Wed, 23 Aug 2023 13:12:05 -0400
Message-ID: <20230823171208.18382-3-athierry@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230823171208.18382-1-athierry@redhat.com>
References: <20230823171208.18382-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_101446_582829_938C283C 
X-CRM114-Status: GOOD (  10.05  )
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

For sc8280xp and sa8775p, PCS and PCS_USB initialization data is
described in the same table, thus the pcs_usb offset is not being
applied during initialization of PCS_USB registers. Fix this by adding
the appropriate pcs_usb_tbl tables.

Fixes: 8bd2d6e11c99 ("phy: qcom-qmp: Add SA8775P USB3 UNI phy")
Fixes: c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")
Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ccbe64f7897e..22bcf11494d5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1480,8 +1480,6 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0xaa),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCS_TX_RX_CONFIG, 0x0c),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_CDR_RESET_TIME, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_ALIGN_DETECT_CONFIG1, 0x88),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_ALIGN_DETECT_CONFIG2, 0x13),
@@ -1490,6 +1488,11 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x21),
 };
 
+static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+};
+
 static const struct qmp_phy_init_tbl sa8775p_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_LOCK_DETECT_CONFIG1, 0xc4),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_LOCK_DETECT_CONFIG2, 0x89),
@@ -1499,9 +1502,6 @@ static const struct qmp_phy_init_tbl sa8775p_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0xaa),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCS_TX_RX_CONFIG, 0x0c),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_POWER_STATE_CONFIG1, 0x6f),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_CDR_RESET_TIME, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_ALIGN_DETECT_CONFIG1, 0x88),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_ALIGN_DETECT_CONFIG2, 0x13),
@@ -1510,6 +1510,12 @@ static const struct qmp_phy_init_tbl sa8775p_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x21),
 };
 
+static const struct qmp_phy_init_tbl sa8775p_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_POWER_STATE_CONFIG1, 0x6f),
+};
+
 struct qmp_usb_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -1788,6 +1794,8 @@ static const struct qmp_phy_cfg sa8775p_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sa8775p_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sa8775p_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= sa8775p_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sa8775p_usb3_uniphy_pcs_usb_tbl),
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= qcm2290_usb3phy_reset_l,
@@ -1833,6 +1841,8 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sc8280xp_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= sc8280xp_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sc8280xp_usb3_uniphy_pcs_usb_tbl),
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= qcm2290_usb3phy_reset_l,
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
