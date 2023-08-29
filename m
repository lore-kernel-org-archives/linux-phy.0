Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EAA6C71153
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 20:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VspuVr23woTfGIX2/VepkJdpYq7UlpUtva4hWry9Vto=; b=SxdnycpyOaO6jl
	LIFXMQnK+xGiiqVN4GWV6gA7sjl4qEYNvHApIoGYzy02KXql+w3EX/XkNmnr2fQfKCLHqAWOvqPCD
	cQa/XgPZoEHV6DRjI88YGmKZDD5X2ph622T5HwZNzS4cnJ++XoOEZ3ZN2/mx0ENBT/bmFwvh+3h/K
	86BoTGcQmP8CHEplShJVVG1Wm0dCIWzwg/NKjbTdXIIVhhYe4DM+zE0JtZOs4wOKxLHAmvDrajDQY
	863YUsjpTN+id7BPc64bi6pCaAcj5qJ5e66O50vHzwjh6cVItfmPENJe6nXbxGBSRVEN/dg+VQR7k
	vEbQwFhWwTb7uthQPJtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5o8-00CFur-0a;
	Tue, 29 Aug 2023 20:59:28 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5o4-00CFtf-1I
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 20:59:25 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-500bdef7167so288502e87.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 13:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693342762; x=1693947562; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZClpEK+uUKPaycwTgXOUijkUQvmjkQmrL5FK82P2oPE=;
        b=oKf+xXFOYVpJ2OV/DOCD9SImlDl4PLdK/CIrPh7BUYhXd4P+XHjneZfbVwr7dDBKUp
         9uAuCMN5CtbRq8ZMkHHg/as/YGDJADChPrVdkvmVGHrAln4KLqouQT8+LaS8zoe4+KPi
         Vzi+nvqqtaNgZi85sWb+LAukAvzjkZ0eAFxNb5GYQ4tY3DkuKQNZII5gUVsgeaMcrQU3
         9dFL6xptriwAgss2R2M7r16X6FvEpW+K6asIPnN/EsOejwXrJs3/c3wrAJX6+yvMGREy
         GrGaDQ8xOY5aPfDKNqPnPNb+oAyMdQ5IASRff7BR/Db0jbK9E9sad15TN1ys9/nnL0r+
         w7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693342762; x=1693947562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZClpEK+uUKPaycwTgXOUijkUQvmjkQmrL5FK82P2oPE=;
        b=WpLkkgPJJMdkMTY47gdzjIkCJgcI2Pew+pziLX0oiTkIhoBP4OHglJk8Qp2Wtfqyq/
         8z8WVwwENzPVATQ57YdcwblCefYfFi1MtGsxpQ/+OX93yK40PgGOqeGS/whURBkyuHJl
         2cR1rOygQZAyLVrCbUKVTDltha3yhT0I7frK9wzOlE1HYKa0525DrcM8JiusX9QKg3Kq
         pN1Xd/PYbB82GaXP5BbFwLq+y9lB4EZt5m5t3b/tB2RX7HsFn4c+fvfsDULNmSCwMfI+
         hBYC4BajGAvQHbI1reqaM/OuEhBIkJkiI9D07X5ZNjQ688L2TQx+k/iizAeKDf/xvcKs
         1ERA==
X-Gm-Message-State: AOJu0YykNsJ/6INKTYFtvNJpp/dWzYWINUVYVux+qsh9B80DYaY/aBdd
	OtznKgA3q7FedLeaUJEbDgxraQ==
X-Google-Smtp-Source: AGHT+IHTFrDD4halxuYrCPsR6VcW7GvdIxOAeOcebEyn3hhz73/cfFfBtt9lRL4iZLg5leo05uOYsQ==
X-Received: by 2002:ac2:4e82:0:b0:4fd:c8fb:eb71 with SMTP id o2-20020ac24e82000000b004fdc8fbeb71mr105147lfr.11.1693342762069;
        Tue, 29 Aug 2023 13:59:22 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id q30-20020ac2515e000000b004fbad09317csm2074025lfd.189.2023.08.29.13.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:59:21 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 29 Aug 2023 22:59:04 +0200
Subject: [PATCH 1/2] phy: qcom-qmp-combo: Square out 8550
 POWER_STATE_CONFIG1
MIME-Version: 1.0
Message-Id: <20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org>
References: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693342759; l=2561;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ucbwZ1OoJJzdpql8jU/xLWDQeE1n/wAFfObCw093aVc=;
 b=Id79l4NM+X3WzTvMQFjDt69iOjhEsZOo/dEqkbR9V5S7/Ef7XnsbMxjOG/tqfQMc65u3RAREF
 mc8pZrjwhDkDOi16N+lcYkm62PG3/NgaDGK+OdNM3bdKYZEmdMHDqb9
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_135924_437457_FD60DF52 
X-CRM114-Status: GOOD (  11.71  )
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

There are two instances of the POWER_STATE_CONFIG1 register: one in
the PCS space and another one in PCS_USB.

The downstream init sequence pokes the latter one while we've been poking
the former one (and misnamed it as the latter one, impostor!). Fix that
up to avoid UB.

Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cbb28afce135..843099d314bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -859,10 +859,10 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 };
 
 static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 9510e63ba9d8..b9060c242fd2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -12,7 +12,7 @@
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
 #define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
-#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
+#define QPHY_USB_V6_PCS_POWER_STATE_CONFIG1		0x90
 #define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
@@ -23,6 +23,7 @@
 #define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
 #define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
 
+#define QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1	0x00
 #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
 #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
