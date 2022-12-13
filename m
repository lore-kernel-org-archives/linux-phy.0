Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8754EC4167B
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEsYeUJt+a7Jbhhd4pPLSScjecO0btpRHM9OGkw+3Bs=; b=JRvbhuMmMhyge/
	ZnhbdA8QvdphPo9RMg+iMDLk2IkGI1wARk1VwXUeBK1iSsSGaNbpk0JngOnga0gaXbJ2opEwG+B1o
	n+RA0/gXoAXn22CjnJ74RaGcQ/76nDuw1xDT99tQzBeL4MTIW7V2YT70mtWOCezmtWDFDuUZGxbYb
	MEimtCkSXLKjw75kcvbdvT4SUFuX4amMTw5wifLfNC0ZwrVjKh8B9stNmC3aoN13aur3agkMBZsTJ
	r+GPvNH/quFVI24f0cgUChtj/pqsg/IxEMMciU3jkM7JABpOpQNzH99rJzme/xKKRWppJs9mIXc/q
	MiuaftDLSMsVFFfP3nWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PN-00H9W4-W0; Tue, 13 Dec 2022 12:29:17 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PL-00H9UC-P7
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:29:17 +0000
Received: by mail-pg1-x52c.google.com with SMTP id s196so10319508pgs.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBSkmVpJGzeMLffZVsv9bl/KRPaDYsuJPbQTBroS9bo=;
        b=WKqFoYHR6WTnwagCnphgHsdNVP4qgFO3MVP7RCn9z0DUw3l4HAjAkPSdGL3zFNerHQ
         G7w/cNxxFKhvkJvLb8DzwLJqLpHUWee/5TFdxwiJysJyXyqHtgCP8fntzkSIOyoQrv55
         ErDKUhfQmGC6jFim6Ym0Jo936eCvhVZU9rdxZD+QiR+E1qefjI2VWaX54Fz//LvfpW/Q
         w4kQV4HqAjVvXc8SFdPECjXbT3dTimo3aD3vk9BYQ0/0GEEl0e/pcs+i1f8Q4oKGoGpR
         dHrhayrpYQZjV9HRAT9vV6TIMPvbTOes7VqC/yehlSsXFwiGlAWnkr18xzEnyu3uuOT1
         1L/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBSkmVpJGzeMLffZVsv9bl/KRPaDYsuJPbQTBroS9bo=;
        b=zIMeDxs8PZQkwfRJ9eT2wRxyX63Pww8a4RSOedAb8o9a2ZMaZ7GOUzWhBtJZgntptK
         y4GGwYJJai0detiz3CFIksTGo/F9UYd+G5cj54JkfLIKHK6I8phD67xjZSydRuDiKnro
         5o+o75RRnkHhJeCsiM6+ZqrcDDaTTEJ61vIUAuSda9UPprGwFUW9FZ7SYMMlF0M2MpYn
         K5iX59fUpT8YTMex6LTsh4NzxbLeMteW2VztV7Hi6+6vgO7txT7r6kcaNfbAGRxTGMhF
         hWSKAsT8j6B8QA31mplMf2fTBd/UN8hTgMQecdSkBrPUL6ME3c0jRlky5ksjycOvPooS
         1CtA==
X-Gm-Message-State: ANoB5plnobEUkN8a1CTYjHSzzPKrQHiiYi5TIMHO7ULT85oD5+SmFZJx
	J122MJ4fbgjd1FI2AKnRoP+K5A==
X-Google-Smtp-Source: AA0mqf4+5V2iaPOzaPkqzVMcV8HxvLdCmtPDjKcNu3IiHF4Uy4rK8m+zt/wwcZ5jp7ZEXhupQIOxGw==
X-Received: by 2002:a05:6a00:182a:b0:577:daa0:eb68 with SMTP id y42-20020a056a00182a00b00577daa0eb68mr23080564pfa.25.1670934553975;
        Tue, 13 Dec 2022 04:29:13 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id y10-20020aa793ca000000b0057555d35f79sm7602468pff.101.2022.12.13.04.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:29:13 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: vkoul@kernel.org,
	linux-phy@lists.infradead.org
Cc: shawn.guo@linaro.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	agross@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	andersson@kernel.org,
	konrad.dybcio@somainline.org
Subject: [PATCH 2/3] phy: qcom-qmp-usb: Fix QSERDES_V3_RX_UCDR_PI_CONTROLS init val
Date: Tue, 13 Dec 2022 17:58:42 +0530
Message-Id: <20221213122843.454845-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
References: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_042915_831924_0CB3E3C0 
X-CRM114-Status: GOOD (  10.34  )
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

As per the Qualcomm QMP v3 PHY programming guide document,
QSERDES_V3_RX_UCDR_PI_CONTROLS configuration should be set to an
initial configuration value of 0x80.

Fix the same.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 4aa338fc4643c..7a847ffe46daf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1265,7 +1265,7 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_tx_tbl[] = {
 
 static const struct qmp_phy_init_tbl qcm2290_usb3_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x80),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FO_GAIN, 0x0a),
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
