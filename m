Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD75EE49A4
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5fup5CO8+ETQA4mfOtkksS0OwI+A+lqrmsi+CUZ4tg=; b=GOg8mSMgI53wYT
	JxQ6UT7UxGaAHRH1PH4R8EhhxfLy34C2RbrM5FoEjEFLOHItJCpwWhaU+iZ4RVgKn5bBzzMmErF72
	3uubeVrAUe2Y4BLW2oJFyVuKgSZk1IgwLw8fPz70JIJtsYOzzp0X284inbxADvKIVH/aTZ7t7kUM5
	ApKW9TqEbZ2GKLr2spCZ6Ou2OeEp96chhuPG9iiZ5ZhY9e1s5XNhbiWg1yA7g7kiBlBeF71W1dpDh
	p0cg/iy4MVPonIoWqGxIOqXwhd1rrU5MydhMJGx0BFQ3i6eCC8xnNpJ1tNmLvxlvaCS4neF4+2Ty8
	Z6TS1DPIXsk1S9myMcvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIs-00C1IZ-0l;
	Sun, 20 Aug 2023 14:21:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIq-00C1I0-34
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Xaz/Z2gROgUqdCrbEqE7kf2HF6hn0xEJoeMLqJ3bPE4=; b=dZxacnU2DA0gUcE4MVASJopSG4
	GWceLU1rdz33mHuY7fkDUxyEx8d5NwcS/vUyrOPdiX3vuLwoc2oZvp/jT3e6IgX/nLnNq/apcpq0a
	/bLB/0fSD4Yx6xrDCFNrnyBvTr1psxTusP1AglO9ZnxRCPJrh5UcWmM30gMM7tTbsm2ccWukbhsJ7
	9Yjm5pvsAIwDBkXHfeVbeOahdgco4JguGtI3+4WAa9C7iQQajgudSRDLNZsNESufV+J+FAmanACvZ
	X0kqnmwe5MrSuiFdQar0l/sPQebhJsIi0dQv32DgdsNzIcYEELfVljjtiOMlYhI1Dc9Y0jM3uI4XM
	zpXKjf6A==;
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjII-000Xr2-1x
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:21:15 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b703a0453fso42931131fa.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541241; x=1693146041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xaz/Z2gROgUqdCrbEqE7kf2HF6hn0xEJoeMLqJ3bPE4=;
        b=ZZsXwtszIOND0lf3DmKyw1O8R5HC8fh3ZyTcg+3uAHgZpzPr/m1WfGFDeub0yPt5Y3
         H1ZMlxF4bsDI72TNwH+mPF+wR2f6rF1Aqicuc/9p792F7uE2I/bK1G8jDlLXmtvQ2rxP
         Wtbc41mIDBzGh4mNPcfwCoVkKXjnJtz2p3fRQ5MMQE9vCyLFOFna2QPDVmDUf3dlkRZE
         Ziof1Gw88Sk479MArNTWBrt6MUnnQBY7XOLg4Y8LbZfEvy5Zqnc6IbnWFbQTNrUj+Yjd
         NI8ej4DQxLMyJaajz7SMrpicovHNNjWmfkzfr6LjQrUxhYX24iyXY3P8tgPdGfkfmzBJ
         WM7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541241; x=1693146041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xaz/Z2gROgUqdCrbEqE7kf2HF6hn0xEJoeMLqJ3bPE4=;
        b=lXx8tfgj1seSDhBPcEUZXM/qy2a8jp6u1gSXa6yawezqriK6oKftEYnjyx/Vbc6CIl
         yi4JRfrD93tJIR1C19M8A43UBHvJctN2WGcVEO67XMImX0fYTsmUPSZTwuOjlO4QFJXb
         YDtNKAM3Mh+Gu0JqTFheqSVB8RKryDvdJXAX0/Mf+KLMLub9rEsevSLIa7gR8ifz8ujv
         cUvT9GzBPUH7tYyQ+Cne7u+NpaJl974rTzWBfbP76VQuV1s5DJCMTSLnyCceAiPdoVe2
         2oICkkYzJB76vWdxfty1LrWm8oOFs4wycqCgfXgGcig+Zx4yuFUh0sRKVyD8ctwtTsz4
         KhSA==
X-Gm-Message-State: AOJu0Ywvu8hd2KJTVIuMfGltz/9cCjFgzTQ2cQZwT0vECqqq8FvE7yrv
	F5J05rSGn9CMiW3L5SmrxyDbcw==
X-Google-Smtp-Source: AGHT+IH9U5D+XGWeGrx7lfxxHLGL8yPvLKJS7Cr9a8UqUWnqXSy0Aw/utFw/0B/57QB/xdSWn6gx2A==
X-Received: by 2002:a2e:a310:0:b0:2b7:3656:c594 with SMTP id l16-20020a2ea310000000b002b73656c594mr3345023lje.3.1692541240850;
        Sun, 20 Aug 2023 07:20:40 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 04/18] phy: qcom-qmp-pcie: keep offset tables sorted
Date: Sun, 20 Aug 2023 17:20:21 +0300
Message-Id: <20230820142035.89903-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152042_667739_3DCD7499 
X-CRM114-Status: GOOD (  10.68  )
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

In order to simplify adding new PHY configurations, keep register
offset structs sorted by the version.

Fixes: a05b6d5135ec ("phy: qcom-qmp-pcie: add support for sa8775p")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 373f959e439d..cdee109c398d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2323,17 +2323,6 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
 	.rx2		= 0x1800,
 };
 
-static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_20 = {
-	.serdes		= 0x1000,
-	.pcs		= 0x1200,
-	.pcs_misc	= 0x1400,
-	.tx		= 0x0000,
-	.rx		= 0x0200,
-	.tx2		= 0x0800,
-	.rx2		= 0x0a00,
-	.ln_shrd	= 0x0e00,
-};
-
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
@@ -2354,6 +2343,17 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
 	.rx2		= 0x3a00,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_20 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1200,
+	.pcs_misc	= 0x1400,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+	.ln_shrd	= 0x0e00,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
