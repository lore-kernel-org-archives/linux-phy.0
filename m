Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 038DCC48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvIKsYcq1H/mggc9mVfs3/gq2ss3KqAgMTLuZ9dinN8=; b=lPxxzUrTcEleDf
	kYNaLlQYoON7QYqfUTYdaHK8gy038FuqP1K7F2bd5cO4l59pP9lzQlQy+jtV3FPSMBkzDGEzCJrBA
	spVIYE4Yyi05uC019sdl3oCjEft3qF34ana/ML3CvRgAJQWOAyqxexpMNY8bkXNDiC//65Utf51hw
	k+Sc2lbQUpPNB6pMjggH/GdbF5/v1/xqPntHYS78Y2Mb8V8b+cHknawi7x4pLx3FBkTGsyAl8BcP1
	cflHTr/FjBAd3cvbxFcInPrhtxxwmrlVWh0xRXHIbAz35q3bs/c1lmZ8wg9rrsh2Fm6VS8GdDF+2M
	NbNtT5nmxvVO/PsvsWJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg88-0000000DbJu-1egh;
	Thu, 29 Feb 2024 13:07:20 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg83-0000000DbG4-1WWY
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:07:17 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-412bb23e5c5so4508555e9.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212033; x=1709816833; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3uIfY5ntnNufGy4UYEPo9i3yGnfffKpCKmKs8Z7x9Cg=;
        b=k0gYY9nOrn20wkOf6hZRz2GM9vX78G0nzYJEHPnnxZJ5Nk2EuRvuo+QVSGZm1bH1FY
         E+N8I5ay/CE4BcPMVlPIlvE8IaGMTbseGUm8u/IePqhyecym5GtCf8RNIXrB6+CCa6xP
         HuIaC+2zvXQetA2MsJy9y7AkgnKUxRi2AtiNmdmqC1EOoLzdDVZrlpAdi4HrUk93kd2p
         3VpGmNjamoPxQ+BZLKpb37dHnxCiDB1ABbsodzrCgJhchO+HcR2FKrd/+0eJED7yKjMv
         06eJMgfjTnuyxT2IABG2F5UllLi8w09fq1VDC1wVFoeXiBh1cvAvxKlhfvq99Y/LPZLA
         fNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212033; x=1709816833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3uIfY5ntnNufGy4UYEPo9i3yGnfffKpCKmKs8Z7x9Cg=;
        b=jJ942SXaX7v/Dn3GCNSmW2rludTgmJJefyu7Ml4nx44cuQ9mQOd8vxILxybWIi/aVr
         9qmhLgtBrzxTU5adxVqeL18h0qKpRB+hi4g4CG5z5/77Ctdi7Cu4j4T9Ml0xr4WVrlTK
         +79eiktYJ1H5Awt7jz3VUhVIucTYNZaXtHiXqeaUM6+cE2pVdrLmabzGACUREq201PO/
         hOLPjqlGZ0dBDkqoFOOkLgY29NwsIurfivl4qGqAMV+ej9ZggUvTdScXq9n3LR9eYY6D
         bSDxVIj6i213qIWdCNbnGTVZy62zaHyE1kl868nojHpW5s4H8XU8jO4fJRSt7uGRARSR
         iTtA==
X-Forwarded-Encrypted: i=1; AJvYcCWBNU6MDiAWqI+8xrCvwrDcN5ZC3akNEFCBceJ6F/co9d5lmgkiika72Fl7lP7Gy/qPoTsLx5YqONDyeKFOzrw1jx1briBfWnnDT1qbxg==
X-Gm-Message-State: AOJu0YzG2A1cc8/QS7yHJ/UvU7IppQhr/NvH/fGmLYgGvhQYcvUoZgjp
	8bdLRGMuJ2ZyuQeTC6k6e4PTql+41SMx3zCU6w0Fio8YaOJtqb2KDB7teW1K8j4=
X-Google-Smtp-Source: AGHT+IFs4nV8miq0IK8B287pip+3Gpyj9/MX3VZQhKrSuFji1E+4+hZHhgsqd+s9dN8nbt2XIkHbiQ==
X-Received: by 2002:a05:600c:1f07:b0:412:a0f9:391 with SMTP id bd7-20020a05600c1f0700b00412a0f90391mr1978004wmb.2.1709212033570;
        Thu, 29 Feb 2024 05:07:13 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:13 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:03 +0100
Subject: [PATCH RFT 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
MIME-Version: 1.0
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-3-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2847;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=X1JC6Xko/brlq2AN9Kavl/JUaqcQsV6GNBW/pXtYk2g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF7bR995LMpFRuBZdMowgnvRMAzKvP6HT+j6bBn
 u6qijAOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBewAKCRB33NvayMhJ0dQnD/
 4hNlvIyL/Ebb4vd28Lo3pt7v0cvIWPEgi6PPa/eZ5GmfzzRU6yKgZYIaKc6aJa6PVdZy5nOY534bbM
 C9Z5GPriw4NAxtshNm8QqBAjTU4JsnWWnjnFl/uh6vUJKjvvx8nmFLfTCiUU5Ld4Sjz72lq4BGQsdx
 CZBpiP+9l1wvfC0sQMHCZd8H3bbcw+kDOYbNaddUPUX9WBs0+/Gly0eD6RIppiPsVmI10kVcHCOPsV
 cDjdboIKv3VP5jgNKB59IjGgG94HLPR8sCyyWCpQsfT6NPsKER06GeDaEN+U1BOwwhivt8KbHtvIuW
 dYExHtEopydMXRbuK3RKSTNRt/aSp/NLcsSkX8Up4FtIYVc9sSov8qYuVpK8HgvtyUk5WbIKA+nLa3
 OKTV5RsMCTcPBMreqQcGlYH45vYN7Fl6m1DANR5Hr1OvbvVkhu0uFpYPLLx8xuyopRHj7TZHllTAOP
 oDBgQDYry4ojq3ngLDPIEADXMe7wlZghvBUUHrSIIi6KWAroAjkLv0bljBNjhu+K2/oDxnlsTVi58a
 4euoIMmLUHEhxyRea7K7Zdvcs7Th8kKZ3z6dSGR/00l/8v7INoyvCrXySk4Hqorx2ePkrsXHxwaYQi
 2yrXhNLfgwlsZ/1jfqWVpnbKmyx2bZsv1dJp46javpCAf5/bNawRFV7P3ERQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_050715_438086_DB287DB5 
X-CRM114-Status: GOOD (  13.61  )
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

Introduce an enum for the QMP Combo PHY modes, use it in the
QMP commmon phy init function and default to COMBO mode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 3721bbea9eae..ac5d528fd7a1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -61,6 +61,12 @@
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
+enum qphy_mode {
+	QPHY_MODE_COMBO = 0,
+	QPHY_MODE_DP_ONLY,
+	QPHY_MODE_USB_ONLY,
+};
+
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
 	/* PCS registers */
@@ -1491,6 +1497,7 @@ struct qmp_combo {
 
 	struct mutex phy_mutex;
 	int init_count;
+	enum qphy_mode init_mode;
 
 	struct phy *usb_phy;
 	enum phy_mode mode;
@@ -2531,12 +2538,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
 		val |= SW_PORTSELECT_VAL;
 	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
-	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
 
-	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
-	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
-			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
-			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+	switch (qmp->init_mode) {
+		case QPHY_MODE_COMBO:
+			writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+			/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
+			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+					SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
+					SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+			break;
+
+		case QPHY_MODE_DP_ONLY:
+			writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+			/* bring QMP DP PHY PCS block out of reset */
+			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+					SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
+			break;
+
+		case QPHY_MODE_USB_ONLY:
+			writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+			/* bring QMP USB PHY PCS block out of reset */
+			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+					SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+			break;
+	}
 
 	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
 	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
@@ -3545,6 +3573,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/* Set PHY_MODE as combo by default */
+	qmp->init_mode = QPHY_MODE_COMBO;
+
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
