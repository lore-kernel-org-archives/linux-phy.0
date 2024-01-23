Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95CE2C47DDB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 16:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iskStA58DDzOuvgB4Ds0M3j0Y/jnX5ItPKObqnJt7Yc=; b=DjUhe+d2CwI+6o
	XRynBNvFhFnLd4jMB+vjwrCeJz+EAFUe7yQYk+9GgxZoy+ad4i9vBNDjzEmbImF/HC0CBagut/edd
	rWAMJxLCx6LgECfBoO35davWM47s9KTL+ECYBlVtXcTeI72ZcHEXgRAf4Zfe4th4jQSx47n9Gmm26
	Ev+art5rJc6RKMqGmlGfKL+wJTQIQYKSYEiwQsEJxKFyLAwwgUFlInL/PhW41ZDvTzlU0ogZgV93H
	+oWt1rnBHpzFjCumpg7nBMsEdwnHmLKOJgqMNiFhiNSCJ4sJI1cL52RhytB/5fTkGSCwFHiW7W9gB
	BySbKa5yAecblWcD4vcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJLQ-00HDdZ-0Z;
	Tue, 23 Jan 2024 16:09:48 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJLN-00HDd1-1V
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 16:09:46 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5100c4aa08cso498860e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 08:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=8devices.com; s=8devices; t=1706026183; x=1706630983; darn=lists.infradead.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9aeZ9T+ieCTjHLP9T+AlBqZqFSYlGNv4TaAS0kSX4XE=;
        b=gkVhddi8BK1go0TBwsBqBdWAg5qeWNHXe0HNlFvc3kLRX2YZsRzJXdnPzEhtFQePIm
         cYyY0q0u9JYqUFW4nQico9//kVlruoaBosBbQwH0YFJpbL/N6KOVWoj+2lFMdGm7Vx6N
         Vxos8IshPOlhVamusiAs4Fj5VJre4eMd/41+z65RnXVi5oYjcAeYCjn/RswR8JSZKYfI
         P1LXWzSO3IC/TQUUjS+cW6j63R9rt18CjNlOzZipcblsB1mJlbV0gzlh9+G2hNMLQxm7
         xOBfs0klvYboTjrV70BuKE6I4NV6c4aGAwAPL372j8cmF2ynkW0cnNBLibvrpKfVitJL
         AV+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706026183; x=1706630983;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9aeZ9T+ieCTjHLP9T+AlBqZqFSYlGNv4TaAS0kSX4XE=;
        b=cxvO0x4gSSSmFIjBRwPUtj4QzbA1OzNVr5cYHuv9EOr5WDPGspQkk6b/ZAEdmC3lpu
         x7p4ny67SgtmKycLMmTU3enOtJCxONUrR0E4Oy3Xmco2B6nhdRxShbQbGF0Jds4Ux63h
         WbzBFuskASGJOKN08kEmenpXfBLszVZ/h1T0tN6goSSTM7+mCxk/wlOP9BL0RiDH5Sb0
         18zp2/UIRL7E3yQXPHgvgdiJHIiewKBNbFOu/mYEIMSNd6sgKk4gUef2UCELJhicRcCH
         Fk1YT8Zxj0kaTHB8sA/HPH7bZ3u9M8eV7M2OoVjkwB9VS1W7xaZtTabddfqBqvcMWbKm
         664A==
X-Gm-Message-State: AOJu0Yx/FYFAsm6LyHgSD0OZOBf9MRK93Vz1KgDFs9YijCtDEaYaEwqa
	fpMs8AaKJRB3uUTmirvSEoRZpjysWXZwWJYpbvcTlEx+twPWNGEGKF8NX9yPYqs=
X-Google-Smtp-Source: AGHT+IGFvyHOYbubVCuNY4+CxwTD27nCRHbuPg5Mi/FdVx2PZLy5oltclL6DN3yH53ibrsQ5Gwo47g==
X-Received: by 2002:a05:6512:a90:b0:50e:a9da:7b2b with SMTP id m16-20020a0565120a9000b0050ea9da7b2bmr3401307lfu.94.1706026183207;
        Tue, 23 Jan 2024 08:09:43 -0800 (PST)
Received: from mantas-MS-7994.8devices.com ([84.15.37.222])
        by smtp.gmail.com with ESMTPSA id q20-20020a0565123a9400b0050e7be886d9sm2336950lfu.56.2024.01.23.08.09.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jan 2024 08:09:42 -0800 (PST)
From: Mantas Pucka <mantas@8devices.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Baruch Siach <baruch@tkos.co.il>
Cc: Mantas Pucka <mantas@8devices.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] phy: qcom-qmp-usb: fix serdes init sequence for IPQ6018
Date: Tue, 23 Jan 2024 18:09:20 +0200
Message-Id: <1706026160-17520-3-git-send-email-mantas@8devices.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1706026160-17520-1-git-send-email-mantas@8devices.com>
References: <1706026160-17520-1-git-send-email-mantas@8devices.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_080945_502559_65C543AA 
X-CRM114-Status: GOOD (  12.10  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Commit 23fd679249df ("phy: qcom-qmp: add USB3 PHY support for IPQ6018")
noted that IPQ6018 init is identical to IPQ8074. Yet downstream uses
separate serdes init sequence for IPQ6018. Since already existing IPQ9574
serdes init sequence is identical, just reuse it and fix failing USB3 mode
in IPQ6018.

Fixes: 23fd679249df ("phy: qcom-qmp: add USB3 PHY support for IPQ6018")
Signed-off-by: Mantas Pucka <mantas@8devices.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 05b4c0e67896..6621246e4ddf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1621,6 +1621,24 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v7 = {
 	.rx		= 0x1000,
 };
 
+static const struct qmp_phy_cfg ipq6018_usb3phy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_usb_offsets_ipq8074,
+
+	.serdes_tbl		= ipq9574_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(ipq9574_usb3_serdes_tbl),
+	.tx_tbl			= msm8996_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(msm8996_usb3_tx_tbl),
+	.rx_tbl			= ipq8074_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(ipq8074_usb3_rx_tbl),
+	.pcs_tbl		= ipq8074_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_usb3_pcs_tbl),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+};
+
 static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.lanes			= 1,
 
@@ -2571,7 +2589,7 @@ static int qmp_usb_probe(struct platform_device *pdev)
 static const struct of_device_id qmp_usb_of_match_table[] = {
 	{
 		.compatible = "qcom,ipq6018-qmp-usb3-phy",
-		.data = &ipq8074_usb3phy_cfg,
+		.data = &ipq6018_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,ipq8074-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
