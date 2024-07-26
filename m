Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D51C3DA63
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 08:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WsGDvjMRkniJCm0xeoblcRztZHyl14QvdP0YwcN1EFA=; b=zIpV5n5tmoYp8d
	JAKnEA7Ufto9YLE83IsRCyRond9mY2UYknkgwNoUJnjKm6DLsQkZbT8CYWFU8sJaBMtv7rHZjGVi/
	UIe6+C3g4S+tBOX+aykyETPMHXxBHIRW8XPGqAg2PjtIV22g5MSZk1MfqBoi2bxL6BkGDZbx68B06
	+B+o5yQjwazD7oBtIzvaZmfhvIr6Ebe0rN94vKbXMPxI8Iknl9NGXUWcopk3QxbX0OS2/RXQmEMPn
	sq2VqWCilQfAuTL1VMg7kST7/MBB212d6j8GK9KNqq20VXnAA7d9PU2eH/xFMoiKraRzaLz+dsCo5
	rH9iZPTMxaTykqdYj2eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXG10-00000003HNm-1OqO;
	Fri, 26 Jul 2024 08:09:26 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXG0w-00000003HM6-3m8n
	for linux-phy@lists.infradead.org;
	Fri, 26 Jul 2024 08:09:24 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4266b1f1b21so13528585e9.1
        for <linux-phy@lists.infradead.org>; Fri, 26 Jul 2024 01:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721981361; x=1722586161; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xq7y9roOuA76DPFVh5KVJ6GTETUZ8LnoKVsLBau2hjs=;
        b=pA5ToybzQeFbFROZ/4K6yy9t3G8Ox1gplpBqWzQKNO5MIM3pp/O7tZuEkG/f70NMMQ
         088ojqoI/TXJ623EKkubHdtwGff5GdXWchem/NdebLtwa+2TUPofSouIenmEE6BKbOhU
         mXlf/e5TAcp/1nmZTyywcSfM6pcdEGta52R0u3t+Vy1NIZB9v4Fjq+AGJzxYMz5nT+9w
         kHETy8w06Ny84wTMdJ2+Dx5SGeK9Sub7XGV9qH9SnslUV98p9bOjHUUm/I9m6igAf555
         7HU1hy1cn0zHy26H4a/RnqIQ6a5T8ulyqU2CqsqusVX8ewpGqpEyiYH7iG9PTqOSrWY8
         oikg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721981361; x=1722586161;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xq7y9roOuA76DPFVh5KVJ6GTETUZ8LnoKVsLBau2hjs=;
        b=j1uCWKAMFxKdrxc2ntRUQBT/IBzDqIOftRx9z/BlJk+UbXWFiaHfUVS7GeCWPaekVx
         H7xyZGqjvE6KZLlGyKRd9VOtweWdawfkfOq4Df3NSwkXtqAqrZynvKAC8q8ybh5I6nL9
         wU4qlnU1D6mCIu3NmVLI1bm/ISZTBEidSRYM5rLxea7sEAi7ySSadSjvybH4wMZdZPMW
         nKXwYYp+/dt6TP/i/G23ZifAC29l4hsFHlmNNBUvVE/wkkowT0P2u/OjLLA+B68jPDAz
         jTtweiyYSyj7uiqc8D+BmpRzjdEEUrqGC51nAVmem5ME8l+VCMDCPDiZmvdSzhfvWbCF
         ykZw==
X-Forwarded-Encrypted: i=1; AJvYcCUvuOm4dAUR4Fl3e2x65JmwFs8RtgcqGjAYDOB5/uQX64gxmwcKFyvzCRLs1k6qPZYCVi8+dkJH2B3+TgeAsJZjgKVf/PI6eoQCDvzSjw==
X-Gm-Message-State: AOJu0YygIr/81thzSF4BYq3FoD+SFbZjnvBXStlh5n6y6RvfVWVRvdYS
	TuGkgjKNue7AWB0mAFIA/wrJawnJvDdIgNOAsCkju5h01qq9DQ8j/N9D6kn19EPaOE7B+kXQ16L
	1
X-Google-Smtp-Source: AGHT+IF6sbu6KhB0zmkRsKlh8Fz7u3qp/6dYVz39nvmDiHL59ImYMBVzaMLY3CXVxWhp/d/nIqvfcg==
X-Received: by 2002:a05:600c:1554:b0:428:c0a:27ea with SMTP id 5b1f17b1804b1-4280c0a2870mr7311465e9.12.1721981360850;
        Fri, 26 Jul 2024 01:09:20 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f93e6883sm105939045e9.37.2024.07.26.01.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 01:09:20 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 26 Jul 2024 11:09:14 +0300
Subject: [PATCH] phy: qcom: qmp-pcie: Configure all tables on port B PHY
MIME-Version: 1.0
Message-Id: <20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKlZo2YC/x3NQQ6CMBBG4auQWTsJNirEqxgX0P6VSUpb2gYhh
 LvbuPw27x2UkQSZns1BCatkCb7iemlIT4P/gMVUk2rVre3UneO086LDzMscOWoBf5MU8OAcl9F
 lztDBG44hFe5hoWH67jFaqsmYYGX7717v8/wBUxbgnn4AAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2156; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=pmtR+b0rddclf0zEqNoY+i4bslmPX+m1gb/KqQ3y57Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmo1msLR5gbarrTnuyIVlBVaZ3+WCr3a6rUf64Q
 0EeYTf7fLuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZqNZrAAKCRAbX0TJAJUV
 VngFD/95++zG/i2Y5GrVxjw9w2aWZENYxMt2QLFYf3IWk5Z1xjeiw31aUha7rk505REpArVOxTr
 N5aV2Oxb+O4hZVtAZvj+vuwX9s3PcPxKBw2JvGBpljP/NU6p3VyQ8MfAZdGEULU42RUhclMR8EG
 50tA8qAw+GxZ5u553sgO0Stm5I9xmDPf3nYxY70etehNq7Ujv55B+/0Zvj/ZZQh4ZV3T06jtrXp
 1/QQ1h7tPsfe3r6S5V7v5DTHenRbQFAuPgDNXDaOXweXgbJz91SA2/2r/Bx+CzA+vLvlJhHoMoo
 kN62c2QqaXRldbB/SwxZ7ECepcAJjcuNFmMgt13qhmX9xy+aJ0qJ18uKJJ/cO2vQoDff6XKA2w2
 6pDt5pNQjqzRybHgvhtEQ0q9wnTiu/LSaKtVnYXw4bwlGYRDuLUafvWx9mvtPMx8+ZTEH7rp2uB
 BghN4ncNGFSYZpxvVR37q2YTHwNvVqi3Myt6Fp5kYidydkG4zfXuO77wxJziD/k3EA/BKTVIIuJ
 zH8czU55FyO4rbXVFRzefhDPm6nUC5ejZhGWmzPwxOksZbpCZwOtGmuNyiVUOVFl+GFdRhG4K4N
 poiRSEGbZaCOKZuXnZgSYPkarY+z7Ujzh8m1lrKYiruzILT7TV3oOt7JZe/PgL60JE6alS0t5It
 B07MYoLFF3DMWaA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_010923_006167_D13F40D9 
X-CRM114-Status: UNSURE (   9.06  )
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

From: Qiang Yu <quic_qianyu@quicinc.com>

Currently, only the RX and TX tables are written to the second PHY
(port B) when the 4-lanes mode is configured, but according to Qualcomm
internal documentation, the pcs, pcs_misc, serdes and ln_shrd tables need
to be written as well.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5b36cc7ac78b..fd59ebd32f5f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3660,18 +3660,30 @@ static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	const struct qmp_pcie_offsets *offs = cfg->offsets;
-	void __iomem *tx3, *rx3, *tx4, *rx4;
+	void __iomem *tx3, *rx3, *tx4, *rx4, *pcs, *pcs_misc, *ln_shrd, *serdes;
 
 	tx3 = qmp->port_b + offs->tx;
 	rx3 = qmp->port_b + offs->rx;
 	tx4 = qmp->port_b + offs->tx2;
 	rx4 = qmp->port_b + offs->rx2;
+	serdes = qmp->port_b + offs->serdes;
+	pcs = qmp->port_b + offs->pcs;
+	pcs_misc = qmp->port_b + offs->pcs_misc;
+	ln_shrd = qmp->port_b + offs->ln_shrd;
 
 	qmp_configure_lane(tx3, tbls->tx, tbls->tx_num, 1);
 	qmp_configure_lane(rx3, tbls->rx, tbls->rx_num, 1);
 
 	qmp_configure_lane(tx4, tbls->tx, tbls->tx_num, 2);
 	qmp_configure_lane(rx4, tbls->rx, tbls->rx_num, 2);
+
+	qmp_configure(serdes, tbls->serdes, tbls->serdes_num);
+	qmp_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
+
+	qmp_configure(pcs, tbls->pcs, tbls->pcs_num);
+	qmp_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
+
+	qmp_configure(ln_shrd, tbls->ln_shrd, tbls->ln_shrd_num);
 }
 
 static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)

---
base-commit: 864b1099d16fc7e332c3ad7823058c65f890486c
change-id: 20240725-phy-qcom-qmp-pcie-write-all-tbls-second-port-8efeced876bf

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
