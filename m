Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BA18EB8FB5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 07:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeZlhReY34ta6Yj/59NRdqhgsby+DyLVjGLxjpXFxFw=; b=jnwKP76t+kggD3
	5/9n+LGyjMECLqzBBG+LMgwfaO7tV4Y+mLe/CuZhMI71vdnooHG7KTzC/aFCauvZ+qH7kvLTLNoD/
	Cen90jbWmF2XbfrDSlsPkUgTi7HLpzZ7Yqk+1D6jqWMOwbJS/0FV6ywG9uhbezdMrEn2MW85TeWKd
	pEmIfdWOUdPf/MoiC/dC94PiU+0GH8eOzWsh/GyfsCTYjKXy67B6JtDWV6oLXgLlMvWRDYJ8Zdyhh
	e2/XXpZ4OpfFqoOUm+LIVYH7hwRhM/PXZRJBxqmhOZ+/1lMEqZPfXul+/bb0TcoqBv4FZOkrRmVJv
	x+HrTcUo/u37kgzR7Pzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQo-007bTd-0S;
	Wed, 06 Sep 2023 07:58:34 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQl-007bQY-1G
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 07:58:32 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bcc846fed0so52683781fa.2
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 00:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693987105; x=1694591905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHc26rbE/qo/UM6quw+dspiLGabdEhZRaP8hO5pgiG8=;
        b=U8c2KBZ6RbJrKHGksDIZa5sfsIjbxm78sKND4jr0DFLq8Aiv6kWRwom1XCHlkCf5lb
         eV1j24k1bJ4dHQCM2qcftWOmaOfjUdK2CT0ApqoV/lrVW3jCpvLDogfwCMPYmdx+QCr/
         QwTverDNm1n62YoMx92Mrj+lY5QMVkQuifMBpnK8bzkIE9HEZE710a+BJYjGG0deahqw
         cWvRUiAPg8/efJp1xC+Z96x7COhLw7dcDFLRH9Hji84NmvJoSXHdGnHD6/Bjw6Mbxwl/
         M60mYCcnwjgYe6cuT4hFz9KuCvKQLDqMLj2M0Gnn2Py531pWoBESugaoRY2NGAsTWGmB
         OKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693987105; x=1694591905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHc26rbE/qo/UM6quw+dspiLGabdEhZRaP8hO5pgiG8=;
        b=IyeVe4Bcj5u9vz/rN85pzgM9NaRBVt1rLAkk5T5yMz89KlOGSGh2rufKRjNSA/K6tS
         Dv/u4RifK84Aet59TkibVQ3AYXj6yQxckH52Cj+GZWYQnh9cyCpRBEMg6RR8eGXdMAwi
         MGHu145cRkgNnFBsd4leX9LHhRk8h5eAtnguvpD+ZrFX0xfs6NNbFvbdPEAwEdTDKj8r
         wJXQ9JNcuaJ7L7Yu5dLQoEvFtqaHaMazKlfrdEocF2f1ZdHM37StmYbb+StrJTSWGl9w
         vrgNHKdGmyH6VD8EghUNjXRVF9XpBKrUWZr3bOgxqjLvVXvnUCrinv15I7/7l5K2aNmu
         IH+Q==
X-Gm-Message-State: AOJu0YwJjIY/DYqgOW9n+KaSNG0pcW5jCtjToNlHZGFVqeQyl7tye1f6
	nSRiQuKPCNyzAY79DhnRI6eVsA==
X-Google-Smtp-Source: AGHT+IGp7BZYEgMUGR3DjqEsHV/nzt71UbvNkQBbbU3WFAmFxPu83Ovuo+ghKPpKmXnQzEb8VLDR4g==
X-Received: by 2002:a05:651c:21b:b0:2bb:b528:87b1 with SMTP id y27-20020a05651c021b00b002bbb52887b1mr1377393ljn.50.1693987105661;
        Wed, 06 Sep 2023 00:58:25 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z10-20020a2e7e0a000000b002b9ec22d9fasm3268324ljc.29.2023.09.06.00.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 00:58:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Abel Vesa <abel.vesa@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/4] phy: qcom-qmp-combo: correct sm8550 PHY programming
Date: Wed,  6 Sep 2023 10:58:20 +0300
Message-Id: <20230906075823.7957-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
References: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_005831_437115_74BDAD87 
X-CRM114-Status: GOOD (  12.17  )
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

Move PCS_USB3_POWER_STATE_CONFIG1 register programming from pcs_tbl to
the pcs_usb_tbl, where it belongs. Also, while we are at it, correct the
offset of this register to point to 0x00, as expected.

Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
Fixes: 39bbf82d8c2b ("phy: qcom-qmp: pcs-usb: Add v6 register offsets")
Cc: Abel Vesa <abel.vesa@linaro.org>
Cc: stable@vger.kernel.org
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cbb28afce135..41b9be56eead 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -859,7 +859,6 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 };
 
 static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
@@ -867,6 +866,7 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 };
 
 static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 9510e63ba9d8..5409ddcd3eb5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -12,7 +12,6 @@
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
 #define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
-#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
 #define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
@@ -23,6 +22,7 @@
 #define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
 #define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
 
+#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x00
 #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
 #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
