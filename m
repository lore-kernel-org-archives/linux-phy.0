Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AEBCCA0EE4
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 10:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rIjPIv2JWLCL15/TCFJroZEP4D4/SEcA2GsMeab+7CU=; b=GU7Hqb7WZbxKb9
	YRjohZZPZlpS377/Pbysd5+vscED9G1tzUCOWsdXOqfHFJmM/gXKsPVkW1TcP8XJ528R5DFRUDUv+
	8jjK9D6X7XldQCNvKc4UC0u3IY/pwQtLIgVNXjMEwL04reTFp4NMNztrI50Xo1LSZ0PQpr51Hvp29
	91vGg5CKmotU1Zqsot/uWARqqjQiLaGEya9Z1PJvWiHdMG/+YSpRDpjxQ3CoECqqQ/7DIRZSLmtkl
	IhVPHN38joivUS8GwF0xg1epvDi8/Pd+vXJ3EgPb6nuHpzNFkDWsB0VHYe+K/QjbgGJ72k6x60rWR
	KljH/wBO26lBdLYDurXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVEH-0000000Gb0b-1aRB;
	Thu, 14 Aug 2025 10:30:41 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUF3-0000000GP0N-2zHL
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 09:27:27 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45a1b05ac1eso3131075e9.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 02:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755163644; x=1755768444; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XqAuWv6c6I6Tmj7XNLmRavDkRG/hDMAr96wkLjEqxuw=;
        b=o2b1T6sKmjx6taJDXjsLeGy1zUfeEBuoqvUI3e3CoQBWf1yx51eqXdOnTeEkokEWpl
         dOpIYhuFV6xssTJQocaNZlayNt+NOtWFWIiK/X78I1C/U7TLfKeQMJ8pvp5sbBo53iFj
         mKHgi27UUCVhL3Z2cGRlhUy07bUtzstMAI3IdQHyzrGBYZAlyAQWO31ZJGpzhuMoQgKK
         4suvTzky3TZoIaK+he8jbwd9YRa3pq6+AiZMvhQ89DaVhw8gfdsgWTc+WySSbxxttLGb
         8tAY8NGotKvNnZD4x0l0u6mjt9YYtRh2V0rlchdnSlhLOFyrfI3C21I8yQXGxb7v3yUL
         68uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755163644; x=1755768444;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XqAuWv6c6I6Tmj7XNLmRavDkRG/hDMAr96wkLjEqxuw=;
        b=KFN6GznjuBu99chiJFSwaDlbjwZEmxclu1VxceRJceKSIaeYPgHojS3S5L9lYnuO0d
         c+9qs8XTYmvsXpCqmd/pl198x9eqx+YwXLtCXwsXC7npZuoZoq3xduizWfo46eeugr73
         kqUvi8uA4kSyTlDbvrdqWTbePQufKRXcd5lDw9Lp0VT8nrvxaBAeX8O1t7yJQw/k+RIt
         jN5d38+AlNbvn47UdsFMQj1Raua2QKTMhLozTtTqv+RKnTIRasR4I2p8BOW/YGUGKc4A
         8GxJlH8OahIEPojdvc9HLLKUj9zG+jdJVtye5H9Oq/pjq+me4S5H6xxBkifzmtGeXG4V
         rsiA==
X-Forwarded-Encrypted: i=1; AJvYcCVnAyg4wPV2irKkcmAJkzTTQ75dc8DRRgYay4RhjupVNaIi/eD2FS/UbhJ9/oF5N/tmE2t+VWiRk6E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyd+zUDFB9celNJsjVGeqJTaq97t1m2BVyhn4eugIVnsqkUyb0J
	HCUTP3kXY1Y8nMFESu9ABtQ+JEkazGe0s6BOQ9yl8AScxewRSMQCDq+FwRjSErQZmjU=
X-Gm-Gg: ASbGncsh8iF8gfaF35sVT1j0yfepRbbOgX0ypZOsc97X4kf16N4q1/Js5xSZAvrAQZR
	RmN4jRHyFbeeJZGkg/tr50Puk+e/0ZCAN1nuCyacp3iuxf86VwHCh0vJRn/DyWUqdP61SUmEq+O
	Vfjd3ycTG9MAM37ebacIB7QqxzlSl136rP37TsjcypFXJiIaOy9UWkBlpyXEkO4RbRYZ2vR25f8
	us9/reZbzaegr5mu6TtDgWCMiMHHtnL0oIsz0LXGUaOT9Ldh5x65nse/rjhp2qw3sUm2OvcVlUp
	AW3Kv+IuNvZpv0EkfknJMdQsi17Jr75x2q+gRWaFM6R7SpTEY5qWZDTcqXE2sAeMIh0quwwgW29
	iVZqvXP+KvqLCFqD9sfxi7Gu5gIulAcQ023ow
X-Google-Smtp-Source: AGHT+IHd8S//p6vOsVTG4x5VxdE8TgAqYiOfk7VAHWwTIJ/ja0G7fBRZA7iqBF/C2V/BVdk/rCDUYQ==
X-Received: by 2002:a05:600c:3507:b0:458:ba04:fe6d with SMTP id 5b1f17b1804b1-45a1b60ce04mr17300535e9.14.1755163643794;
        Thu, 14 Aug 2025 02:27:23 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:ea13:2485:4711:708])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c790689sm14706025e9.28.2025.08.14.02.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 02:27:23 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 14 Aug 2025 11:27:10 +0200
Subject: [PATCH v2] phy: qcom: qmp-pcie: Fix PHY initialization when
 powered down by firmware
MIME-Version: 1.0
Message-Id: <20250814-phy-qcom-qmp-pcie-nocsr-fix-v2-1-fe562b5d02a1@linaro.org>
X-B4-Tracking: v=1; b=H4sIAO2rnWgC/42NQQ6CMBAAv0L27Jq2Aoon/2E41LbCJtKWrSES0
 r9beYHHmcPMBskxuQTXagN2CyUKvoA6VGBG7QeHZAuDEqoRF6kwjivOJkw4TxGjIYc+mMT4pA/
 KVpykaFVXGwulENkVvdfvfeGR0jvwus8W+bP/dReJEjt9tkI3Vj3q9vYirzkcAw/Q55y/t94P3
 ccAAAA=
X-Change-ID: 20250812-phy-qcom-qmp-pcie-nocsr-fix-1603106294cd
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Wenbin Yao <quic_wenbyao@quicinc.com>, Qiang Yu <qiang.yu@oss.qualcomm.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_022725_755876_42D4FAA9 
X-CRM114-Status: GOOD (  17.51  )
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

Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
support") added support for using the "no_csr" reset to skip configuration
of the PHY if the init sequence was already applied by the boot firmware.
The expectation is that the PHY is only turned on/off by using the "no_csr"
reset, instead of powering it down and re-programming it after a full
reset.

The boot firmware on X1E does not fully conform to this expectation: If the
PCIe3 link fails to come up (e.g. because no PCIe card is inserted), the
firmware powers down the PHY using the QPHY_PCS_POWER_DOWN_CONTROL
register. The QPHY_START_CTRL register is kept as-is, so the driver assumes
the PHY is already initialized and skips the configuration/power up
sequence. The PHY won't come up again without clearing the
QPHY_PCS_POWER_DOWN_CONTROL, so eventually initialization fails:

  qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
  phy phy-1be0000.phy.0: phy poweron failed --> -110
  qcom-pcie 1bd0000.pcie: cannot initialize host
  qcom-pcie 1bd0000.pcie: probe with driver qcom-pcie failed with error -110

This can be reliably reproduced on the X1E CRD, QCP and Devkit when no card
is inserted for PCIe3.

Fix this by checking the QPHY_PCS_POWER_DOWN_CONTROL register in addition
to QPHY_START_CTRL. If the PHY is powered down with the register, it
doesn't conform to the expectations for using the "no_csr" reset, so we
fully re-initialize with the normal reset sequence.

Also check the register more carefully to ensure all of the bits we expect
are actually set. A simple !!(readl()) is not enough, because the PHY might
be only partially set up with some of the expected bits set.

Cc: stable@vger.kernel.org
Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Changes in v2:
- Ensure that all expected bits are set (Konrad)
- Link to v1: https://lore.kernel.org/r/20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..80973527fafcb294273dff1864828532dab738db 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3067,6 +3067,14 @@ struct qmp_pcie {
 	struct clk_fixed_rate aux_clk_fixed;
 };
 
+static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
+{
+	u32 reg;
+
+	reg = readl(base + offset);
+	return (reg & val) == val;
+}
+
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
 {
 	u32 reg;
@@ -4339,10 +4347,12 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
 	int ret;
 
-	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
+	qmp->skip_init = qmp->nocsr_reset &&
+		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
+		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
+
 	/*
 	 * We need to check the existence of init sequences in two cases:
 	 * 1. The PHY doesn't support no_csr reset.

---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250812-phy-qcom-qmp-pcie-nocsr-fix-1603106294cd

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
