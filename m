Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58826C3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 15:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jkvfuW6vOaqBwjPIRtMxHejgyo+Em4A5e4cSGwzyBEo=; b=HLIcc5L/AwGDcd
	hFKtvzzfc3IeGfzEDvt+zl2mm54iJeqvG8b99JPXP6sQxUfLRY04H0GJDiksGhuU5KYTaXeOSOxnd
	T6yR2IAjyZMMBUgYbIRYfy7bC4fCFNEv0cgvpGKNnRva+7ewNEokXdcwzu+cEKUiclYLfcEb7hRub
	gOvC26mt0mY/abLDg3lh1ehXUPrrw29JPD6OsjP+1xi3t+9/9/uY2X2B7K6s48SnUH/szH3Fia8RT
	NYSdakj/D+dl8H+B//5JmT1TU23R40JDfzl7Ol063bSQp4QUT+1Kg3LKfGZOcVtIZ3uZZrR98RMv/
	37LdrGpWYt7aw4aRjXmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZY9B-00000005w6p-0GZ9;
	Thu, 01 Aug 2024 15:55:21 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZY8q-00000005w1m-185B
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 15:55:01 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2f029e9c9cfso108439571fa.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Aug 2024 08:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722527698; x=1723132498; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x6BV9QmEAZjkiTMkmAiRBs64RxnXZNT8FECYjYvT1F0=;
        b=gL1uruzXOjI3T7ecyqaWzuzUiCHmUEThH/gPynbc/Btm1bGqj+CPrrFkMgnTrO+0sD
         XPTy0eDLIsQjXhTHy9SY4WUYxYm5gJQPO5ij8fpyPnixsFZxSJqof+T1zqyQbB2tMWN5
         k9KCnYA62ioG0w5URnJfbYoP+NsjioHSBkk0UPKjyoXdoLJRrjJrSFDxQG6MyApTzGPd
         dIneAhTRDi2cralqsI3lSWmoQC4iwz4ag9A7g19sFb66uJZPyieekxD0nfWVd3x9WBZG
         5Xih2xCbwSAxL8NiBXQ7HMhxCxzP2db/RmLFVGEPhjHr47AheM3jyBgsCRg1Izskybg6
         MKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722527698; x=1723132498;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x6BV9QmEAZjkiTMkmAiRBs64RxnXZNT8FECYjYvT1F0=;
        b=jPWL9b6YTJ/52TJ1qYzp0Xv4rWW3BRj44VIg5KN49Y0hjxxSwrroe8+OxamW2b42D7
         yDq9fKhC/jpgeXnslTtK7yZN3O9qW089OvN/sk/yHj1PFSmnKP7ViFoOBcIQvUpym1kF
         9qk/oterd6yOyF6mXY1IXLbHbCIMCwueEOt+5gRduQZHRbIpuyGt5/a11yKEl6ZMysxj
         Oft3lcHkaVa6au6wyag5r+hHabvnFBd6uFJX5fPjq3Yq99Mk0HLIANJPxiZACrYR+RHZ
         nbElNK/5HeOeb65GX+tDGdujc50wz9GoK9t2A96PBWUD9caw6vyPw8GmusHpR+R8MNIQ
         Qibg==
X-Forwarded-Encrypted: i=1; AJvYcCUmkyZwDZJhpmg7XpVSXXrZSpPw7QQq8PMqf2molPrYrNDC7uNV7egUzalnkb+XD06o3QVpGEvGRvhoZxQ1PDDoNciVNqu59oSrHGBdjg==
X-Gm-Message-State: AOJu0YzlGYCbU5ZuOwXE2CZZYLueHxHTUBMVUCnYuZpXO6tg3KzzzlCn
	BjjriaqEVPBU14PbzhJiCkHk2hZAAGcES4KVB1SHrmSkXANvAND/a2sLbAnJLCI=
X-Google-Smtp-Source: AGHT+IEEjZBfQbOJPlZJ3N8sVahraKT0zAt/ivfisM4qzDwzl2muq0nwL80YGhGbW+w6PuMvXZHNmQ==
X-Received: by 2002:a2e:9e89:0:b0:2f0:27da:6864 with SMTP id 38308e7fff4ca-2f15aaacbacmr7091571fa.17.1722527697759;
        Thu, 01 Aug 2024 08:54:57 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03cf0f9ccsm24420651fa.14.2024.08.01.08.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 08:54:57 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 01 Aug 2024 18:54:53 +0300
Subject: [PATCH v2] phy: qcom: qmp-pcie: Configure all tables on port B PHY
MIME-Version: 1.0
Message-Id: <20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAM2vq2YC/5XNTQ6CMBCG4auQrh1DG/505T0MCygDTFJomTYoI
 dzdSuIBXL7f4nt24ZEJvbgnu2BcyZOdY6hLIvTYzAMCdbGFSlWWlioHN26waDvBMjlwmhBeTAG
 hMQZCazx41HbuwFkOUGGPGruqLNpexEvH2NP75J517JF8sLyd+iq/6w8q/oNWCRLKXLY3xFTKK
 nsYmhu2V8uDqI/j+ACLlmHo6QAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2344; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=XPR2+c0CCvO/jb49BCvHwzlLdwGhGzTkMytpHJm9U6A=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmq6/PS2cKrlgInaIucMJcEQ35MEy17OMJ9rgv0
 4MAsT2BI2CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZquvzwAKCRAbX0TJAJUV
 Vr6kD/4wVS5T+zFHq5JDyj2hySYykL00I1IFS7CCBxStgcguN5ewuQvxdyLmsHVLfuBLEJ+xdAx
 1VKz0GHe0UfzpcZXJEMGLH0mt4gnuK3R5GQoaaInrFogmt1UOcNzk+3s02REOo4/KK74yDydi/M
 pzTWpo7aqwNW6PJ9A6g39RSRY3AxcjIpCWUfmDewOrtcail7rViP2/sdVsuzmMrJk4LxMAbSqLX
 6VozCuLBO1mlvPHVOBXJriH3gycIMPrEI+/5rxNw6qNKrpgHale0Z67kK5APay3yCPGiHbVu3S+
 LBfrXlwo5b4n3ERbJbN0jqHhAiAXR+L0np6hOuxYMvaqmLXuL7hEYH+7z33i7/ycuQy4u5ILVmv
 QMmRjRWoI26B6B7utDzbiG9ADi/9e3f4FEsjWUCRCQGw/yQco+CaWIQX+v112sA8MImZ47eAe9I
 YTwMlACKh80oSxYgxLSNcJj/le5lsEj2/GpOJTSovmJ5ENkgB1pOZ6Han69AnXIhMpeU3I81HLe
 K9e6NTnZ9qP2ZCgAWpmanlxKOWFGtTJ1oGDIQmINzt/effBIf2/iy+B+sAYt10PsOp4OztsUPOt
 /ZjOlWHkNp0p/cg4q3EhInpplh5A1GK9u4T37RzyPOALIc/+v8GmCT5NpZHQjDIhwQfntkiC4HO
 Szjf559b7S5kgdg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_085500_367636_841CCAB7 
X-CRM114-Status: GOOD (  10.06  )
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

From: Qiang Yu <quic_qianyu@quicinc.com>

Currently, only the RX and TX tables are written to the second PHY
(port B) when the 4-lanes mode is configured, but according to Qualcomm
internal documentation, the pcs, pcs_misc, serdes and ln_shrd tables need
to be written as well.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Reordered tables as Johan has suggested
- Link to v1: https://lore.kernel.org/r/20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5b36cc7ac78b..c0f4bc6b8ebc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3660,18 +3660,30 @@ static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	const struct qmp_pcie_offsets *offs = cfg->offsets;
-	void __iomem *tx3, *rx3, *tx4, *rx4;
+	void __iomem *serdes, *tx3, *rx3, *tx4, *rx4, *pcs, *pcs_misc, *ln_shrd;
 
+	serdes = qmp->port_b + offs->serdes;
 	tx3 = qmp->port_b + offs->tx;
 	rx3 = qmp->port_b + offs->rx;
 	tx4 = qmp->port_b + offs->tx2;
 	rx4 = qmp->port_b + offs->rx2;
+	pcs = qmp->port_b + offs->pcs;
+	pcs_misc = qmp->port_b + offs->pcs_misc;
+	ln_shrd = qmp->port_b + offs->ln_shrd;
+
+	qmp_configure(serdes, tbls->serdes, tbls->serdes_num);
+	qmp_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
 
 	qmp_configure_lane(tx3, tbls->tx, tbls->tx_num, 1);
 	qmp_configure_lane(rx3, tbls->rx, tbls->rx_num, 1);
 
 	qmp_configure_lane(tx4, tbls->tx, tbls->tx_num, 2);
 	qmp_configure_lane(rx4, tbls->rx, tbls->rx_num, 2);
+
+	qmp_configure(pcs, tbls->pcs, tbls->pcs_num);
+	qmp_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
+
+	qmp_configure(ln_shrd, tbls->ln_shrd, tbls->ln_shrd_num);
 }
 
 static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)

---
base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
change-id: 20240725-phy-qcom-qmp-pcie-write-all-tbls-second-port-8efeced876bf

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
