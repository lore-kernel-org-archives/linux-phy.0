Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2510CA0EDC
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TXrH8LE4fQ4YDDoJqRIuVbHqzrJAeirRmb1tVzChPVA=; b=PvSSK0jUdFqxt/
	hc96VkTgV3PnKY5jFr4ZWqdUdN2uWMoGUUrl8rPuoPbfbti8yDTE/NmT6/rhtwSccZ9sCdA9NPI05
	iN5fG8cmDowJnCS2IfuGCGgq/LcL4unSbr7rwM848OJTXmxWEawQbwbli6JmYnJ19zgnaCsXV85EC
	dcPAmeKhU0pXolsfVYixxKFfKMACN2Vi7dGM0F0bT7EmvfXb7P1Yq37uvnWJXoCGbQKbQViGy6pct
	pHJZX5pBxnBMOkYMKK8iE0ZMSwzxC/4bnoBjA+i5hOpgH2AS6cBr6fBq6R1gfyJR5h9HsrNmGEejq
	roLfpw/ng/DcpYCLlPJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulubx-0000000Bosl-13Zj;
	Tue, 12 Aug 2025 19:24:41 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrtK-0000000BPzw-2nla
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:30:27 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-458bf6d69e4so51767035e9.2
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 09:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755016225; x=1755621025; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CNJTYQpCcdsbSgf4CELO6wfx+k3jz1AKmn5lQQ5LUkc=;
        b=B7RbuWmz1iOoF3I5Cj+I9h/J4uVVCu+zjWTvxovlA7WOtYwZVnARzqVzgjpPKtRH90
         jRpxDBMfux43rT5tkgIj6fEOavnUpC6ZQxj77oB/ZLzScPFj7D1DuxxEblEU8zSflrA5
         6f4Ykd+3kI+mN//zWV77WfkbhX6JqKsfT+PCdznmu1J7E09vKO4Np0oaGq4EJEgxw+bO
         3HzLHha4ko8XFaYA3G1/XYIzDP+YL/7qTu4de6VtInI+6aCvQWV/Wfzjj+EbMyNVrfym
         AiBSQhlLJaihqkB81oDJv9Ac7xmvzbEb1ihmqMer4OmQr0968050Q3ivU3Ik2/MpN/Ii
         9A5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755016225; x=1755621025;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CNJTYQpCcdsbSgf4CELO6wfx+k3jz1AKmn5lQQ5LUkc=;
        b=IGU7pKP2Ar4B9HFOHQm9FHgOr6HmNaKaIzTj4Jc3jz8s148Zd6MBO6XDXQCHFYTdAj
         0A8dvZapDWPG42YDjU6OP68afFSnj0Jx7CH7C+tL7a4RUDUgczhD5oxD+lU3TIWgfAqc
         sFwL2x91p3wFDATHYQGOkyNXPot77qTvT6Ds7RNY/B9VFk7glgrHoOMMCGMdmYgtlnsW
         3N81++jN0VBAuzDteW+vse9NvG0vTY4cg3Nz8Gje4NWQIBeyEiDt/NBB8kSLBMrVJymC
         e45EOuPjU/4nbNGqMFQQq8//r7w/7u7I0j4rvpvT5nU0WzGVGILEnzxhw/RMISKQOqon
         Zfgg==
X-Forwarded-Encrypted: i=1; AJvYcCWrlecz5jjM1NWnQa49l7ySCSGLfRX6NpgaO/TKSozakKcd+uAjrIFeGUiwrTDij8Cg5IxX9nA7P0Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzha5Mr9GLCaRbxxsqRZgKIrDkY6jd36ysKnEbVt/+Cho4DTWmr
	C/fFkhEc9O2mZdOTRN2EQeLlbVxbngtU7t1SkQinv4hpdMADR0Lf1YP2s6xFRAkyKSM=
X-Gm-Gg: ASbGnctsDZuChLnvtaeVXhHF8tcHx9pDjUOQTqeOZBdA9yFw+C1SQqh1MV/nRuPKwYA
	BU939BsMo100A9G0xqwKrB9swGQpuD0ZKSzleTKnS2fwcnqwOnbtNLy0yo9pldSf0OtGrECHTSu
	ZLUu3qvKbm+9X+vbzZ+p5hg0Knfw5aFedZDwg6KmyZiWcuKZuzoCOmi+NAOmvoNikLrciyA/vwO
	z43j0uucr2IgAvSl2E+v+4uxfFcYVRz+K+ibRtuiSTjzMv3SelvMPRs+IavDlwmkgsycjukhxMY
	IX/yfSm1qkE6JTd5fu5Ha7FC1TIjP6pG60d8ThoVyrW4JAC6VDTaN2N9F74V5sjWHHNxIgxmTPo
	y4qD8hcSr/w7ec0Fq/5qKLfcFh77SFxwMqp4ANw==
X-Google-Smtp-Source: AGHT+IGKttqGjU9A0Fpe3dGN2nfDw184nCvOK8JV6Aat2Ur/HPfemJjjc8pzEQn+FGTR50sl9gI5qw==
X-Received: by 2002:a05:600c:1d25:b0:43c:fe5e:f03b with SMTP id 5b1f17b1804b1-45a15b55a73mr4428905e9.30.1755016224641;
        Tue, 12 Aug 2025 09:30:24 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:5574:c911:d648:8bca])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459ebede65asm255302755e9.8.2025.08.12.09.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 09:30:24 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 12 Aug 2025 18:30:19 +0200
Subject: [PATCH] phy: qcom: qmp-pcie: Fix PHY initialization when powered
 down by firmware
MIME-Version: 1.0
Message-Id: <20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org>
X-B4-Tracking: v=1; b=H4sIABpsm2gC/x3MPQqAMAxA4atIZgNt/UG9ijhIjJrBtrYgSvHuF
 sfvDS9B5CAcYSgSBL4kirMZuiyA9tlujLJkg1GmUZ026PcHT3IHnodHT8JoHcWAq9yoW1Vp1Zq
 +pgXywQfO+b+P0/t+8JKf320AAAA=
X-Change-ID: 20250812-phy-qcom-qmp-pcie-nocsr-fix-1603106294cd
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Wenbin Yao <quic_wenbyao@quicinc.com>, Qiang Yu <qiang.yu@oss.qualcomm.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_093026_715340_6D001741 
X-CRM114-Status: GOOD (  15.12  )
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

Cc: stable@vger.kernel.org
Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..6a469a8f5ae7eba6e4d1d702efaae1c658c4321e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4339,10 +4339,12 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
 	int ret;
 
-	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
+	qmp->skip_init = qmp->nocsr_reset &&
+		readl(pcs + cfg->regs[QPHY_START_CTRL]) &&
+		readl(pcs + cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]);
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
