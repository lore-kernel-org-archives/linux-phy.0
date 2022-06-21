Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61AA0CCA485
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 19:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B2LDWnSTaZsjYNsgahChknwzf0QC0ahd+Nvxa132Fgc=; b=CNTmdlf3O3oigQ
	mOB5wvf9kmuHWxcS6/WPI86IHYdj3y8Ub8WAAKE6grES5H6wkdHqXWS5O75dt6Tx9Dztr/HgyS5s9
	m1xOsM1utsIp507Izr1X5WRP1aNx41lFvqzz/KatEwraxwEuBOITNOBhIuAMSjGQx8sERXPhV57+H
	9KBHzxj3svfHHmmFSYbJF76JV2X8QNVLqxAXZ2psLNV30LmsafmHJGikAwsG2RAtlmW6GcdUrjqS8
	jH1IYL8CHDV/hU0rKqVkGl/9+oFSTN8CSlSXWe5xnJywfdiJrlhi7pgWaBRk/miCFFXI2jf59o03x
	Zmzhd7MM5wuzTAYFdx8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jy6-006zpO-My; Tue, 21 Jun 2022 19:55:22 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jy3-006zmi-Pc
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 19:55:21 +0000
Received: by mail-ej1-x635.google.com with SMTP id sb34so679519ejc.11
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 12:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kmLQpIEr89ZBDY4anFjTosysEvGwUfMAqwQk46EbHQA=;
        b=R4yNkC8agC+5mzC+cE0N8IJ0dkaJTmlai/IpgVXM1jRHI2S+1soTY4yG40VdPt/x28
         8+4zkX3RQV+/hiPY5OoJAYN9/NNBXxpHtG6ytMON3XMCSMKK6Qo9oR4uNSkatHit9Ioa
         toFh48uIUDA9hoT/VaYfValVFZ1G609phmARm468i82i3ttvgJJfpZ1f+hvpXJs9qG+m
         lWbMXZ27dsEsUxUnQg/7zTE3/DxxxV7Bf2bYalkzgDBiSQVRFm+uNTJOfVE6gX7wNkz+
         8O9MY8MO8JNjs+2/Iblmors/0hMaXZfzCwv0EDb2y152HtaBBP7HJkYu2Kb0VfGpAldy
         wNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kmLQpIEr89ZBDY4anFjTosysEvGwUfMAqwQk46EbHQA=;
        b=fkwboCfdak1j/GMQmGJg6BATJNjiVm2knMWLSmjU+tXSAy0wiRNkXmb1lrVP4PYCsD
         N7WiJFM6BIeaJfpP5mpWBgfbTPSIrukWIfwMJpsF0SsaKzq2hokVmA0YBsOqqfGXDCHG
         qdS+SqTJWjY3v10IyRGCf4GMgkAtFTjvjUEx0MiCatTw4ckdMcKJ3HI4/XYw46dAs3dq
         GkA5Knk7aGFJ2UsfWAokTyFwRouuh111aplzIzPwwjqualYM4vBR3pPNGiz6Xeuh6nrG
         k1mMGP6bZJbrN2GoTCPtiBxSfNKQ3gf8NHOVraEWBdMIC9gi25F6jjOjrShVPha7tCMB
         n2DA==
X-Gm-Message-State: AJIora+wmVrHCVA80KN6gnrcSNj0mm3wNYw9eDiFPuc309IcP3JMbwnJ
	rTt5CDgUQeoVxlSzewxxARk=
X-Google-Smtp-Source: AGRyM1vNL/LMEd8YBM3Uk3NwflBYV+RGWo+XPiMc1e5evAATMCyqI8/MtpUWsZ1djfnSPY8YMaPQiw==
X-Received: by 2002:a17:906:7304:b0:6ff:a76:5b09 with SMTP id di4-20020a170906730400b006ff0a765b09mr27664919ejc.193.1655841315013;
        Tue, 21 Jun 2022 12:55:15 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-99-158.xnet.hr. [88.207.99.158])
        by smtp.googlemail.com with ESMTPSA id b14-20020a056402084e00b0043565c79879sm10713114edz.43.2022.06.21.12.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 12:55:14 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH v4 1/3] phy: qcom-qmp-pcie: make pipe clock rate configurable
Date: Tue, 21 Jun 2022 21:55:10 +0200
Message-Id: <20220621195512.1760362-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_125519_874774_B32DF483 
X-CRM114-Status: GOOD (  12.28  )
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

IPQ8074 Gen3 PCIe PHY uses 250MHz as the pipe clock rate instead of 125MHz
like every other PCIe QMP PHY does, so make it configurable as part of the
qmp_phy_cfg.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
Changes in v4:
* Set 125MHz as the default if not set in qmp_phy_cfg
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b2cd0cf965d8..66be854fe7f3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1284,6 +1284,9 @@ struct qmp_phy_cfg {
 
 	/* true, if PHY has secondary tx/rx lanes to be configured */
 	bool is_dual_lane_phy;
+
+	/* QMP PHY pipe clock interface rate */
+	unsigned long pipe_clock_rate;
 };
 
 /**
@@ -2121,8 +2124,15 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 
 	init.ops = &clk_fixed_rate_ops;
 
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
+	/*
+	 * Controllers using QMP PHY-s use 125MHz pipe clock interface
+	 * unless other frequency is specified in the PHY config.
+	 */
+	if (qmp->phys[0]->cfg->pipe_clock_rate)
+		fixed->fixed_rate = qmp->phys[0]->cfg->pipe_clock_rate;
+	else
+		fixed->fixed_rate = 125000000;
+
 	fixed->hw.init = &init;
 
 	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
