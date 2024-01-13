Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B96AC47DA7
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxfdLejIiSXdZy1lfHfkkUKu0nusDnkicK3b2lYJ9oU=; b=4T0enMjCYcAqum
	O5t2ZeOhHQ8WrOTMtSqMVCRW/xwna8a/CmrTSdXNGJjAea181xHY3uY4xzRMLRCzPL0wcwGfN1XRh
	fqOD16WLF74xVQCvIqyOKtjGqkGuvh3ZwrF4gRMm9XZR+bnxswZu3oBYQsdbjmQ2hI919U/tN8MRz
	c6JKrqfkGUg7vHMLATQx9w3GrNR0n2eQp+eXQ9kmtqpjLw9ln7erDuP5EHgJmDFCkUNaMiJNmw30E
	o7kz4IVZMzOxxVXkMb7crOBJPav+1fl1XcxpMOZ8Zc+fcoVedBtkjutBT2HqKqowT9+6KUWEe42hd
	R7HU94ooIdKslzfwJILw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnH-004ZiL-2Z;
	Sat, 13 Jan 2024 05:42:55 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnD-004ZeW-1T
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:52 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2cd0db24e03so84073781fa.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124569; x=1705729369; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ECF4xeGyS84BCoz/EcX50y2jLIrAgXZ1cOppZLqEXg=;
        b=JA7e+c6K50NpZmrsFtwNc6RbWC6n3gtngVP+pAKL7rFKwhjzaIRPwsqd1ULeRFuaf7
         1QINDbQhRr4/RCMDxTKxO6p4ZZAOXcFn+qZmKc7VAJYo4n/C3CnOr+zpeV8NnLCKKq74
         BRm504BwjVT6R1PZ0ITexD8zBd36aO81qeNpo+fCFK/mi7mBuQdFM2CQxl8cqsqo2O+E
         /v7ctoumrOw0DRi/utJjEVecZY7ULISJJDAvqWeHZDQO0ymDZijQkimveKd61XdOlROm
         +TApEOol46w8EoFXZaAIpYLGr3v01jD3Pbk4DixMkJ91ekiFxHbiwCEd6d+QzzIs8Vo9
         NwIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124569; x=1705729369;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0ECF4xeGyS84BCoz/EcX50y2jLIrAgXZ1cOppZLqEXg=;
        b=cHetwPODgdk17/xTpj/Juyd+o4fRTYkkRZ5/aqWxvaIu6kV9huTiWdR/37oBhFxg3Q
         13gqAzouSx1yfk8yhuyec7YvRi1hUWxZLyOYGRj9Wn/bwQcc/WJKUHba4XJILVpnWbAj
         1vmOMk/5rM7zLK7DH5lqbQUG4Wil8KB4dPacfcRIsR4z+tIJ8pNGHnwoDdhmjPj/hDEP
         zw3iCiendm3pOrx9GcEj6/pvYzsxwmOjgPfWKmowDUs5YiiobOL/TteODvCupzEB5SR7
         iQhf0sWZ33AN86fB3E86tUrPV1PYXgkAcN/K0f477wj17BHYXxE0Aowg91RJ53Y1e7Nb
         rx0Q==
X-Gm-Message-State: AOJu0YxV19pfb+L2IxLUyM9jDUvdoNTey40SD/pq+lGAI9ORGlEULKWz
	o9X+tYW1XOXxnhHmylVjc7EhvyzPaZ9iIQ==
X-Google-Smtp-Source: AGHT+IFuZ8KYIlQ596YAkjwkadTsbP2Ny6UXmX4GYzvavxYOUXI1TIeDKlfdfg5Ug9C2wp2k4J2nUQ==
X-Received: by 2002:a05:651c:213:b0:2cc:f993:e40c with SMTP id y19-20020a05651c021300b002ccf993e40cmr603714ljn.9.1705124569790;
        Fri, 12 Jan 2024 21:42:49 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:46 +0200
Subject: [PATCH 09/13] phy: qcom: qmp-usbc: drop single lane handling
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-9-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3148;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=UisAuRjDYlccXYZeHJj5rFNlGEZ17JayC7TRBBm7Sck=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLRZvq1ycb60O52UIrEeUpj+JTNyiI2HyQgL
 t4srEbZ8HuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0QAKCRCLPIo+Aiko
 1VgCB/9HI43MbXB+YW97AUQohOOwQb6A2g8DOEiZ3Be8/tnFby3U3yFmq8DExU0DPviGQQ2NzpJ
 sp+FHuqqln53CNcUXj3s0UPK+LCXPGUqXDNDnJsxNdfvmS+ziI79NnPEf3Uc6nlk16e+rtnWsAE
 twP5mMgDb1o1qDVupT3EH9IC2evoA2QFm59fF8cIf8Ep3Uc9ss3frD92TuldIzi4aLw4NTXrM32
 VCSzgdlgd9zg7oS2cOf8YTtFEBRIgrKx2OS3ASzSMqmU9szEVQQNta0YHymAuVC4rmESOsk8y82
 6tQmcxBOmMetkC8Fdfl0DEwtvb8oOdiETYzAni9yVKUGOl6R
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214251_512126_98A77D04 
X-CRM114-Status: GOOD (  13.08  )
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

All USB-C PHYs use 2 lanes for the USB. Drop single lane handling in
this driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 36 ++++++++++----------------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index fd2439175cdf..21faed7f648a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -332,8 +332,6 @@ struct qmp_usbc_offsets {
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	int lanes;
-
 	const struct qmp_usbc_offsets *offsets;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
@@ -444,8 +442,6 @@ static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
 };
 
 static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
-	.lanes			= 2,
-
 	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
 
 	.serdes_tbl             = msm8998_usb3_serdes_tbl,
@@ -462,8 +458,6 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
-	.lanes			= 2,
-
 	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
 
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
@@ -596,10 +590,8 @@ static int qmp_usbc_power_on(struct phy *phy)
 	qmp_usbc_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 	qmp_usbc_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_usbc_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-		qmp_usbc_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
-	}
+	qmp_usbc_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
+	qmp_usbc_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
 	qmp_usbc_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
@@ -940,19 +932,15 @@ static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np
 	if (cfg->pcs_usb_offset)
 		qmp->pcs_usb = qmp->pcs + cfg->pcs_usb_offset;
 
-	if (cfg->lanes >= 2) {
-		qmp->tx2 = devm_of_iomap(dev, np, 3, NULL);
-		if (IS_ERR(qmp->tx2))
-			return PTR_ERR(qmp->tx2);
+	qmp->tx2 = devm_of_iomap(dev, np, 3, NULL);
+	if (IS_ERR(qmp->tx2))
+		return PTR_ERR(qmp->tx2);
 
-		qmp->rx2 = devm_of_iomap(dev, np, 4, NULL);
-		if (IS_ERR(qmp->rx2))
-			return PTR_ERR(qmp->rx2);
+	qmp->rx2 = devm_of_iomap(dev, np, 4, NULL);
+	if (IS_ERR(qmp->rx2))
+		return PTR_ERR(qmp->rx2);
 
-		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
-	} else {
-		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
-	}
+	qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
 
 	if (IS_ERR(qmp->pcs_misc)) {
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
@@ -1004,10 +992,8 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
-	if (cfg->lanes >= 2) {
-		qmp->tx2 = base + offs->tx2;
-		qmp->rx2 = base + offs->rx2;
-	}
+	qmp->tx2 = base + offs->tx2;
+	qmp->rx2 = base + offs->rx2;
 
 	ret = qmp_usbc_clk_init(qmp);
 	if (ret)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
