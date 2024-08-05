Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37D87C3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 16:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bVLDZdb53slAc9Kf1tlBAH4dqHuMV4vAIoBozALcJu8=; b=M9ddliU24aIv45
	lzHKFpGk5uDRORGOSi0YI/GWW0raJZ283ldKgF2NBxLgj/4nkbs6rMf+okj7birBdVfxoRgy8EUoA
	a/F2yaq5wF1VXuWsSvB1ptDugehiynsLAOIVeDSbT6HHUOsPVaQ7P1tf3ZdkGnphjvykoPbxdx2VN
	luOw4gMH1TZJ5HYEURr9nfKs9K5o4g4BLCjsQaCBMfvIWv38wrWzJdAeBlNZp5Amo1IzvI/5m0tBn
	b27zRl6I1DjCFZ/SwBgFbxOjq8f1jyWWCXMt0mrOcC0t9a7p8gOkmz4v901d1aKdsH9RHKD0+8M27
	kdOqzrdxk2EXjwd7Rcwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0qO-0000000GYwb-3shF;
	Mon, 05 Aug 2024 16:46:00 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0px-0000000GYpb-1yDX
	for linux-phy@lists.infradead.org;
	Mon, 05 Aug 2024 16:45:35 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-368313809a4so3376033f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Aug 2024 09:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722876331; x=1723481131; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ik8emwpg7EbHvzstVNP3zM7OlW0rWhbBN/nKCI4WHsQ=;
        b=W8nguUcMdhVr5jvMlf8TNgtLLVxBd4uRHPkbBhrwtd9VMQzrv9DEWaUA11OmOesmEL
         dvNHeFs7pcTl0qOtZ8RXbQ4lkHDAJSuOrezRSx+221l2cIOS4ol5/edMqEhn529BfrDM
         wDXpyy1q9OnZ9MbtnHMHQEgI/BBoNxxQ7E8yDFni6PAc8Y8y0hX4z/xFeZW6eAD4Bv+l
         mzBMM2WPkhAtjJD9VY0l+OCWcU14Xm61yZ4NcnNDG3ODvmh6aPaSafFmCziNn5a6a1L3
         Hqp/JAPI6o/zt94YYqEnCI6K4JFcTwZTXUC6zwjuZMkMR2d3o1afhB4nPn/ywzX1uR+u
         bjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722876331; x=1723481131;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ik8emwpg7EbHvzstVNP3zM7OlW0rWhbBN/nKCI4WHsQ=;
        b=GeMBjgPF11UxTMOHFHkA07VCXpZrvxsKM77HQ1Dam+LyX/naVjtQvMLV5kkNjhaAPF
         0c0C0DZgmSGs1+c3LO06Jj4a1mcSSZDkmg6QxKvBDdhCH6zrIqNkhOXODrBBE1sVdNJk
         bMATk8UYpPpdXlbHJ4m49klVayimeUxJzJqd1iyXAZwm9OxnXZQBHiwHDG01o18LnbLH
         M7lmmVrAtpMw7VaR503nbXGXy8VDIRJJEk3HF+DVDC8mmhMQaVcYF/C4NsbkGQj8y3jY
         ATYJNAfxpUV6pt8Dfdf61X7Z2vCM//wvJPDgvS5hPqWCzWlt/B/ffoktJIaSXaYXdzBz
         n7WA==
X-Forwarded-Encrypted: i=1; AJvYcCXDXHkf52tb6kkch+RULvMtj6oFUo+fwaB/7TOG5864ltUnnNqdIbCC1eECdgxHeHvc6u3Ue5KG5JvF3HxIqiaA1/OWYrEdvF50wHw8mQ==
X-Gm-Message-State: AOJu0YzUSz/aUR+vTCtdc2Bs3yv6CBUwprW8EORJoZgQppVuRbKgabw6
	qeT51S3s8UHqinJM+Ak3vnq4ivUeE1KKa8bJ8toQrv50JA/1jaUgKC/3DunCx2o=
X-Google-Smtp-Source: AGHT+IHl+gYovfR74z6A+TtvK671+5vsMnn3duvbGqXdHqVfmO9kGsU0MyOwnZ+cfRHTSHRNsS20LA==
X-Received: by 2002:adf:f60b:0:b0:36b:aa96:d1e5 with SMTP id ffacd0b85a97d-36bbbe5b841mr10555387f8f.18.1722876331267;
        Mon, 05 Aug 2024 09:45:31 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbd022ce0sm10391679f8f.55.2024.08.05.09.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 09:45:30 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 05 Aug 2024 19:45:18 +0300
Subject: [PATCH v3] phy: qcom: qmp-pcie: Configure all tables on port B PHY
MIME-Version: 1.0
Message-Id: <20240805-phy-qcom-qmp-pcie-write-all-tbls-second-port-v3-1-6967c6bf61d1@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJ0BsWYC/5XNSw6CMBSF4a2Yjr2mLY9WR+7DOIBykZsgLS1BC
 WHvFhJjHDI8Z/B/MwvoCQO7HGbmcaRAtosjOR6YaYrugUBV3ExymXIlM3DNBL2xT+ifDpwhhJe
 nAaFoWxjKNkBAY7sKnPUDaKzRYKVVXtYsJp3Hmt4bd7vH3VAYrJ82fRTr+4XyfdAoQIDKRHlG5
 ELo9NpSV3h7sv7BVmmUv7rmYmddxnqOWWIUF6gV/tWXZfkAJ68lT0cBAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2688; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Pd8xi9GZtKKuLhG/bVw3bPRSLWuEht5PPded4uGZ9o0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmsQGkZGYeBcrws5JCeBcYC3IX2no9Y3tVI/U4a
 GybVRCD9rKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZrEBpAAKCRAbX0TJAJUV
 VqZdD/9/leWIILuTtcGIaBTHfLTtI0/fiTycKaPgdUgUOOfn9s+D2lpp+iYpo8Emup80azNIu46
 0fkFWCUb6eYfjsybaMYrmJYgzKsdEyVSgQwBZka7rvZqSzBRWzwXeZRX/4GYMmCg4O9w9bpSJpT
 KFj7rIn3RvT6IZRe/h7CYtTbzJ01kThmViGubrLg7DXOiCAFIwzlt0uWCLTyvfPsl6Eih0JZIIv
 0gmMUfNRIDUYIHTOIusBrvMLA3e9t4xij+OZmke8YM5zADK+sjoHXKPXuZeIkdxjdaEb0qQxxhs
 ycYZQix/ho+YeOd/Ur3J1TUyodszTjjHYeJ5QTj8UqkB2IChBSHXfQOF1NW8kDn+NeUZkHFQl1D
 B6ZAQhul+/zGVWffu+9kp0Fz/uB5BfgsmMHlJWPTqckgsQoJtB90t68EgfcGI4w+zsk57vhe+DN
 Uv43ma/YWi7KmMW+mqsEIWMrWCOwiJomXU8K7qM8fIeXMnH1eZ3ixTN+4y49bo8VwQOzg0DBKgx
 J9kjraINQx34O4Of2y40fLxqVHwFCXYze+OWtONnfOkzC87iEdXyli7TZcTIWt2H+lbUWLJU3Df
 TdXm7H/yNi7lpUZ8M7dGx+yxCADyGipb+p1exL1LPQ/aVbKWYJ71hv7W1PXa9z6em/xnvPJhJIG
 wNcxtSZVuigOUbg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_094533_556315_2C8A5CCA 
X-CRM114-Status: UNSURE (   9.77  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Rebased on phy/next
- Fetched Dmitry's R-b tag
- Link to v2: https://lore.kernel.org/r/20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org

Changes in v2:
- Reordered tables as Johan has suggested
- Link to v1: https://lore.kernel.org/r/20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 4b4a10f7f6d6..a7e2ce0c500d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3669,18 +3669,30 @@ static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_
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
+	qmp_configure(qmp->dev, serdes, tbls->serdes, tbls->serdes_num);
+	qmp_configure(qmp->dev, serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
 
 	qmp_configure_lane(qmp->dev, tx3, tbls->tx, tbls->tx_num, 1);
 	qmp_configure_lane(qmp->dev, rx3, tbls->rx, tbls->rx_num, 1);
 
 	qmp_configure_lane(qmp->dev, tx4, tbls->tx, tbls->tx_num, 2);
 	qmp_configure_lane(qmp->dev, rx4, tbls->rx, tbls->rx_num, 2);
+
+	qmp_configure(qmp->dev, pcs, tbls->pcs, tbls->pcs_num);
+	qmp_configure(qmp->dev, pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
+
+	qmp_configure(qmp->dev, ln_shrd, tbls->ln_shrd, tbls->ln_shrd_num);
 }
 
 static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)

---
base-commit: d6dbc9f56c3a70e915625b6f1887882c23dc5c91
change-id: 20240725-phy-qcom-qmp-pcie-write-all-tbls-second-port-8efeced876bf

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
