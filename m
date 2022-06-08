Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DECB1C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 00:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=avJu5S9kjIiH7orJtgI6h4w0xx/yvZk27rIZirDmI24=; b=l0sozhI6IjN1WO
	N2CkPYEE7PJ1KH14NJyOXvp1ZfIZXmhynL6hmXk9QrJ3UH14O9MINIt6VR1aEgc32miP6tZbsSwa6
	UbVpoy3fEbtAhbFKVXZ5t6SboHYyk1aXVs/c1z+darVXqOpoc0WO63BFZzb+BNuoKtyTb++d/wokR
	GP78LuHDBWyhzcRZ3euPW4W33mNX3i6VMsSvBmBeD+KA1iam2SgeOuk+xIaNH5lF9wc6RN04CVQjD
	LEpbxG7WQ/7qNGEGuKaqO+CjtUf8Yy43f0C9BOyBn0V0JX8T2U7Q17Yy1igfWOezhOPcGdzCWU8cM
	w6v+3uJajQOPFomr0m8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyjbN-00A7nY-5l; Wed, 08 Jun 2022 00:31:13 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyjbK-00A7m7-1E
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 00:31:11 +0000
Received: by mail-lj1-x230.google.com with SMTP id s13so20985696ljd.4
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 17:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9MGv6IyB1L5mu7VLeRV9tquByEyT+sp+41ahlI9F4EE=;
        b=fWl0cpDQkNqevyWPzASipVNityB1KjuX9jTlByMvlMMJWjgIscZQN6H6+23Iop8MOn
         lcjhv+1qj/QIhsB2FUT7/ej448lONWu6L9c2mYUwRjCilj6gy06EHx9/fp/7AR5e+REi
         h04VulMUdBz8oRORac4Now3cQv3JLzpOaWhot7l0bdVyE7xzZ8ykapT7yEFozZexmvie
         3SjlyJqlkvPzx/OqpYj74+IPPmWr5TyLMBbyDfBOkvO3DmZ3ezQRRBHDbLjooofHFbgE
         hPsuPa8lVJuMpwIUO3OoNWrsu1kK95zs+CD4+gNOSdr2qLaLc486dYr4oJ7bmsF0dpmg
         Hvtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9MGv6IyB1L5mu7VLeRV9tquByEyT+sp+41ahlI9F4EE=;
        b=IhvAWWk/CENiFD8vQw2w87hMiIPo02SqagrmlQuH9iEXYAVBTtX5CzCAP/d5tenURm
         5wzJmpfvNZSHHPhbpy0bECV3Y61iNRE66YY281qVBpgMHpBoCKWoLEAnpmPzQfPPert1
         3ibKaRpwTmbabfYCNYWRzLOEzs6zOnZgKGiXrXmwFTnmIiddDze1q8ODKEtlwzCLYFOZ
         f4Ua8zj/cBoMY1UWw+9PCZg1rlOMYDU/AZ79XRtb30yPE1tnxo83lA+NUK1jVJYaCseO
         jIRo75Ma7Krhx97+UXDv/azUlQqYCyjv+RpSBxY5sqXAqZomGVx3IQHXoC2xuCWBYEbl
         M9UQ==
X-Gm-Message-State: AOAM530TOMQ85JshPRPewBpZ94ONSNAyE5SStom8TPUFJLnfcAmjMwPW
	GDWUDO7hEMeqiQyWWUWrrRtZ7w==
X-Google-Smtp-Source: ABdhPJzKxQOsc+sTDWBkvjfgo3SED+f/UgG8Bg6yKNNtKMAM655HLJsxtR3AGm98Q+icncTnLq2ZBw==
X-Received: by 2002:a05:651c:233:b0:255:58b9:1f53 with SMTP id z19-20020a05651c023300b0025558b91f53mr23134700ljn.143.1654648264790;
        Tue, 07 Jun 2022 17:31:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h28-20020ac2597c000000b00478635ebdccsm3464569lfp.251.2022.06.07.17.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 17:31:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 1/2] phy: qcom-qmp: fix the QSERDES_V5_COM_CMN_MODE register
Date: Wed,  8 Jun 2022 03:30:58 +0300
Message-Id: <20220608003059.2910252-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_173110_175625_FAEF354F 
X-CRM114-Status: UNSURE (   8.82  )
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

Change QSERDES_V5_COM_CMN_MODE to be defined to 0x1a0 rather than 0x1a4.
The only user of this register name (sm8450_qmp_gen4x2_pcie_serdes_tbl)
should use the 0x1a0 register, as stated in the downstream dtsi tree.

Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 06b2556ed93a..b9a91520439c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -1116,7 +1116,8 @@
 #define QSERDES_V5_COM_CORE_CLK_EN			0x174
 #define QSERDES_V5_COM_CMN_CONFIG			0x17c
 #define QSERDES_V5_COM_CMN_MISC1			0x19c
-#define QSERDES_V5_COM_CMN_MODE				0x1a4
+#define QSERDES_V5_COM_CMN_MODE				0x1a0
+#define QSERDES_V5_COM_CMN_MODE_CONTD			0x1a4
 #define QSERDES_V5_COM_VCO_DC_LEVEL_CTRL		0x1a8
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x1ac
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
