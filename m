Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC1AC47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 16:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1V8hwx1AdwISYuACV6kpk7jEZfzLn4ysDhbfAEgMaI=; b=2HKFDOTm+owBfZ
	JwTDQ7U4FVfNb5o46UsMtoVa59Sw6/W2bIh/+CV1gGaLnersB53izfk+XXoxLE2bxLYE2d04lQC/C
	gpEZc1cIJ7P3WZak3epJ7tR1LvFPlJCtEUkja/TF2a+MKe9mi6p5qA+HIUK0xxBtD8KdS7Ij5soxU
	UcKrmmy7091lej5JoRZtniE54DSK5iZT8eedQtl6pgnhiIG79YXIXD4wyRAe79VbdsQTN6QpHKQI8
	uQJJQAvDe8ONPRqjA5hsYztXwZg44+Syf3I49+hiWmzsiNlibkNzmETBm94l8DWrx+TDXmob2euBZ
	GVI6681bMdHtsRrIWQ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJLK-00HDcj-2Q;
	Tue, 23 Jan 2024 16:09:42 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJLI-00HDcA-28
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 16:09:41 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50eaabc36bcso4845238e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 08:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=8devices.com; s=8devices; t=1706026178; x=1706630978; darn=lists.infradead.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TCsEp2lpUC7FkoNHc/fEc8WeD5OX/0nFFUd/EH7Tzfk=;
        b=bfE2s1M4owY/ka+ii0cJ6eysrv+A4d1PVZW/pp2AG4K6/QMVoBop55l7Gfs9LHd9Ds
         uzW61JCHHh8NqRpdhEMh39pGaM+9+NCxCtSmxTXgYuUj6dSIobYCic0g4N/zy0yCB9fr
         8gTcQmBEBEEdmYRIZSAKWd6+pdB3071nyawGA0g/USN9RNFTC0pNS1F8jWuqqmc/f53d
         SGGWeL1c3astMq7rEWV3EqCDUaUCmL+R/6r1G72ZHItHMBwK87GMApAzQfGdTkSVuIye
         DXyRKxlBYFvtHTRCZ+7KG0msOPqJ2DYS+ofVxbL6wwj5McOf95n8yhq4IP8sqmoaflqz
         aw1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706026178; x=1706630978;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TCsEp2lpUC7FkoNHc/fEc8WeD5OX/0nFFUd/EH7Tzfk=;
        b=wpNrIosYoKWepq1pIi8uQyd+HwzmKwWIXo/eSaoQ8evbv/GimhcBK0e42mczEQ3O3e
         71VuXcz7Mrh3/iGfZCHBZvDuxU4Q0oEO/lbN4cCTJE+g+8vE6vnr2B14yFQxsqg1tLxh
         Y1Kwc0N3iOtuAd/PdNiH5K4+GOoeu4mlhu75vBTGDl6zZfFKqZYdYtVdXMz1Ght3Xkbj
         /udd6RM5WlyKsg35VIgW913LSpDOHqKdpilx6UYwaAAJDq6gBOhJvJHShRrRIF+Nq0kO
         3OU2Tan8ueKOJs9agDqGTIOkFho4LMLiTkyoMxrsrUd5aVMireyI91sQ1PFrQR7/nOZS
         VDEw==
X-Gm-Message-State: AOJu0Yy5Xu9ISgdJ6otx6rlFFFO1oDbrHUtUGaDyRPZZ+oeGTigw7WYZ
	2h2snsLVEltDtJDq7HXjka6ZoTb2+z9IWyHJrBqY8l4ujvVayC4hSLdKtKOHm7w=
X-Google-Smtp-Source: AGHT+IGnnNSe1moGqxiwEYHIJKv7pqXFqRebOu3b3bLqL4dAFLPA+RPMl1SlBpFXalVBh4JuDpd0Hw==
X-Received: by 2002:a05:6512:402:b0:510:56e:f56c with SMTP id u2-20020a056512040200b00510056ef56cmr674541lfk.31.1706026178547;
        Tue, 23 Jan 2024 08:09:38 -0800 (PST)
Received: from mantas-MS-7994.8devices.com ([84.15.37.222])
        by smtp.gmail.com with ESMTPSA id q20-20020a0565123a9400b0050e7be886d9sm2336950lfu.56.2024.01.23.08.09.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jan 2024 08:09:38 -0800 (PST)
From: Mantas Pucka <mantas@8devices.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Mantas Pucka <mantas@8devices.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] phy: qcom-qmp-usb: fix register offsets for ipq8074/ipq6018
Date: Tue, 23 Jan 2024 18:09:19 +0200
Message-Id: <1706026160-17520-2-git-send-email-mantas@8devices.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1706026160-17520-1-git-send-email-mantas@8devices.com>
References: <1706026160-17520-1-git-send-email-mantas@8devices.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_080940_698954_B0B6C2DF 
X-CRM114-Status: GOOD (  13.04  )
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

Commit 2be22aae6b18 ("phy: qcom-qmp-usb: populate offsets configuration")
introduced register offsets to the driver but for ipq8074/ipq6018 they do
not match what was in the old style device tree. Example from old
ipq6018.dtsi:

<0x00078200 0x130>,     /* Tx */
<0x00078400 0x200>,     /* Rx */
<0x00078800 0x1f8>,     /* PCS */
<0x00078600 0x044>;     /* PCS misc */

which would translate to:
{.., .pcs = 0x800, .pcs_misc = 0x600, .tx = 0x200, .rx = 0x400 }

but was translated to:
{.., .pcs = 0x600, .tx = 0x200, .rx = 0x400 }

So split usb_offsets and fix USB initialization for IPQ8074 and IPQ6018.
Tested only on IPQ6018

Fixes: 2be22aae6b18 ("phy: qcom-qmp-usb: populate offsets configuration")
Signed-off-by: Mantas Pucka <mantas@8devices.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 243cc2b9a0fb..05b4c0e67896 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1556,6 +1556,14 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_ipq8074 = {
+	.serdes		= 0,
+	.pcs		= 0x800,
+	.pcs_misc	= 0x600,
+	.tx		= 0x200,
+	.rx		= 0x400,
+};
+
 static const struct qmp_usb_offsets qmp_usb_offsets_ipq9574 = {
 	.serdes		= 0,
 	.pcs		= 0x800,
@@ -1616,7 +1624,7 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v7 = {
 static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.lanes			= 1,
 
-	.offsets		= &qmp_usb_offsets_v3,
+	.offsets		= &qmp_usb_offsets_ipq8074,
 
 	.serdes_tbl		= ipq8074_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_usb3_serdes_tbl),
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
