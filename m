Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6DB3C6FA86
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzGXqZ7Dt74vOep8Jl6NG5JB/ggGcjzlaPsqbNDPp54=; b=PMV6/1taEreanf
	HUDkxFGRt7FM660wDJdhlFdfxssyEaiwK3z0D4OhiOIWg3WuAXcMsC+vsFRyhQUAhWMUx6qHx8nc4
	Hy9rC51/Ir/QVzPAnejETqQbBf9UujQhAEGv6VfPBPIsTIPzbIg5DRDM+3G8I4F22hBXsk0qiBJUg
	5DbZ88m6xdKU7lr3b1Qb2R4M2CAD1digOB91lVSWjCfByO3VkxafRKLZBGm0imflU7AFx+fgTHJ8P
	KLZHFqC7AjHI60ryVeM901DAIFmlDe/2ouMw2dkxYLwyItvmQzqc/3VR2OrrzchmTXwMx4VF1+Lht
	aCuxxWvgiyM1EWUHUvBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCO-000cNX-83; Wed, 28 Sep 2022 23:10:40 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCG-000cJZ-85
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:33 +0000
Received: by mail-lj1-x22e.google.com with SMTP id c7so15880789ljm.12
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=IHaEFwV8p7aNv8BSTump+u3lPC9NqeTi4ZBra1/OpNk=;
        b=tPY/yU5FeAWcfibRCRxN4qU9S7wMlyr33SkbR6oOVxATszE0EPaX7IFuOHeGik9zju
         6uF5XgkP61gTfTUM3MEpb7dIgqwCCh2JXIzWM9n0i6D5JjHQKRLfkv1Qut8uZXaIN3C1
         QNQJIMjD8gYSYtwe1M2LqtUEySA1G1xhR2NpxO/p+IjY7i+JePil9Qh+I7hKrhH/M4+v
         m+gyK0VzYIQZTAbCum0gJ7FgmqGvV+v2ZcNuaIb/nofk+qCCRSkIXwrJQymbWoM/Lw7t
         Rm5Yh6NqTXF+UVHgQw3K104pwx5iQyH3JgZ9J2mpVxmNkajoF8NoFM5nzIFW+WxJK0lK
         OWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=IHaEFwV8p7aNv8BSTump+u3lPC9NqeTi4ZBra1/OpNk=;
        b=chGxCSSqSBMSu30uCy5inoL+VJoTmD9QUjjr+PUImoLGXKbTAWsnA6/KhLYwCof4Dy
         MrW7nPwMo8BJypD6WvxPhncZ70NW7mzP/b8VKh8WZS6xSbK5Suo11d4l+OZl4kKgc8Wt
         VlUowliQBDzWq8BbwYlkEPyp997+MDSsaMQjgX3BR+cLaPhL0Gzlt8yDTKbhXMUWcrZa
         T7LQ2SCEZ5aUD5Ivs8kDGX6Q72IEy/zqFyRsFbLJ8aWvhnUfIP2Bw3R9pTXsFqPcDsK3
         p5npv00y09Nk/t8DWJ6gp/+cQ6zcQYWOMtmvrG/4c5+oMvV/FfKusD74vlcxcRQCxwTy
         OL+g==
X-Gm-Message-State: ACrzQf1CRGgxyqlOuDem+UK0eQU/XG8lYpnI2hJkN3epJbxWhf/jcCg3
	3DPhpoVClVqliLate8cJBd0jdA==
X-Google-Smtp-Source: AMsMyM4ywhnlEulwv9aPuhSpqjsYpmOvm2q8A0nXqJw60AF+LHsdX2GLrrLZKERsNwTI4Y9pWF8qNw==
X-Received: by 2002:a05:651c:110c:b0:26d:a099:8715 with SMTP id e12-20020a05651c110c00b0026da0998715mr66390ljo.44.1664406630924;
        Wed, 28 Sep 2022 16:10:30 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 16/18] phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
Date: Thu, 29 Sep 2022 02:10:12 +0300
Message-Id: <20220928231014.455201-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161032_303407_35ABFA58 
X-CRM114-Status: UNSURE (   8.85  )
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

The QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register is not used, remove it from
register layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c30af34d7f65..64cf43901d64 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -56,9 +56,6 @@
 /* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
 #define IRQ_CLEAR				BIT(0)
 
-/* QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register bits */
-#define RCVR_DETECT				BIT(0)
-
 /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
@@ -111,7 +108,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_STATUS,
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
@@ -124,7 +120,6 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x170,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
