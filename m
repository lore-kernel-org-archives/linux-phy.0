Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 408FBC6FA97
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdC/Fcl3B2o6Bnwhr8ifUhd+sGoHJzk1mKazBQhxtXM=; b=m5DNIbz1Ljx/6z
	6PHTwG1psSWcuB8H85EpLWf/JGM7HyTy1efjYEsfcNWs1ARpCcQ+copSqjUFH3hCJaVqdM+HCzby8
	aOFlc7+uAxBLORRR7VkVzfZaymoMme6z1cBUiIIOsnOwOCYZbpvEOu72N+LLwSUfCLaAEOR+t8eQv
	WiWtx8xejxqXRfB/5fTSbUMdcHRByBRatrEwqdaiJKIReBHmzZcuynDwnm0L1xpgm08LGiYRlIel8
	1q8eZHXg+BA8oc9/hLY6UE7rnGpfZJwMgKaX1ZZUxPT73Yv9Wvz1zg29+NApwP1P/yQ97MSMKAx4z
	0k8Sw4Kh9EG5XxjlHrVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCO-000cOT-Mi; Wed, 28 Sep 2022 23:10:40 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCI-000cJF-E9
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:37 +0000
Received: by mail-lf1-x129.google.com with SMTP id bu25so20668987lfb.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=4WYMXtDG8vwSmmDzKjiS8Vfwi7MpTHhnmDtgJ0kUazk=;
        b=F5HxpY2UAf5W5atXt2Xce4Y4AKKtZMx0rU4pPfO6hexZlMcuuV6KEXM21yi2IrJhRu
         sJXmVgQ2+7+blb0gD+LNJMzyzuS5OrvytzeyMSY+KC7oUZEImQhXFcO22EuXUHreAhw9
         fIs9Jy5YGjbT3bt+TxvDUebezE6796v7S8NkVNfG/PBYWfp/ikEfzXmqhOMFpOQMmO0H
         F3+gB8EOAZo40A020JPAlT9OLlOKDI+4NpZmLEK91NyERc3KV+UawLlwNPOvr50Ovnsk
         jH4qPIw7H9w4oVIZPYY04t+QQeKg6hU1zKQXV5awy0NhS0ff8QCVSRB067FA/ickjWMi
         vB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=4WYMXtDG8vwSmmDzKjiS8Vfwi7MpTHhnmDtgJ0kUazk=;
        b=oiN3hF08/jDRg+/KZJrSk/w7hvT7dd8k9mO6ogE5F33sqspLmb4oNMjTq+z9ZZnc64
         1zeOLmxxtuAnq8WNM0ALlffBJmrR+tzor/3MMixmZVO9zMgVaIRKACeGvZppPbb/5TYS
         KzHZZUJMZwQJ72uKZqzP8F205dowXc0n2kbyRcuAP8Y6sp49zdt7EoiAnEdW1nVUhCF4
         XMSvybO9ShSOcp6pN6CZF2bPMXifIAs2RCo7fztpsJ3xiy+NpDbBSSAfWck5WKtsYg3H
         62HsgosDCwJN5mXxJzay89ixddaNXyLCM9Zn46LT7K1ib+yt9ULu3qeBGQajHC+l81Ni
         yu6g==
X-Gm-Message-State: ACrzQf0Dq72xHmiu+15pB72lSqoDj5AyeuPQH50T0qQCdaykK0tFLwfy
	u6b8rDN7ia3H6KL4GgtlxM+3ReInosO+bQ==
X-Google-Smtp-Source: AMsMyM548qJJ4CEz7gtfgNPXPo4Thxq/shXv6RNqT3q8vpLVwsWiAuaajRjAw6/aC0l1WXja9/e1cA==
X-Received: by 2002:a05:6512:78e:b0:49a:d9ae:3051 with SMTP id x14-20020a056512078e00b0049ad9ae3051mr108370lfr.203.1664406627340;
        Wed, 28 Sep 2022 16:10:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 15/18] phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
Date: Thu, 29 Sep 2022 02:10:11 +0300
Message-Id: <20220928231014.455201-16-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161034_504445_AE70B97B 
X-CRM114-Status: GOOD (  10.67  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Note: ipq8074 tables appear to use a mixture of v2 and v3 registers.
This might need additional fixes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index a5ebd77d5905..9a05c9f9e5b2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -100,9 +100,9 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_SW_RESET]			= QPHY_V2_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V2_PCS_PCI_PCS_STATUS,
 };
 
 static const struct qmp_phy_init_tbl msm8996_pcie_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
