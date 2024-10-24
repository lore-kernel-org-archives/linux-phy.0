Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62E04D10388
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 21:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N8vKWQQ3ZxgYRD+X1/ieHZGcP75H8aRP40xcfFGX2u0=; b=lmSP2YIbZrKf/1
	FpF1f7siEEiPpTk91C3jW6cMpuCa+hdv7KjyGeeGweYECaTdPZ10firD71fRQTfZ+x8tiLP8PAD5M
	qUy/iF5p9xGM8aj9Hp/JHXV1gydqM5amNiTYLIZMvewDMdPyvxrFZUt9dpnH287xZIxICqpdvXfz9
	JcRENwbv34Wa4YbPph9PJH4SPOZ+Zt9E6rTwhVVHUDGpGBeS3KS3+dm/aNktOppSJBOWEhb/XyWfW
	0QUSiBbKUVuk+JHITvIhklXcBVcA5xBS8Fo6fQ71pn+eJL/5pHKfouJL6oOW9FyqE63lAs5/8Ypau
	1CQT9gVBSUGfdBDDOhXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t45VX-00000001sb0-3zbf;
	Thu, 24 Oct 2024 21:36:39 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t45Ut-00000001sYd-2pbU
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 21:36:01 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-71807ad76a8so900565a34.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Oct 2024 14:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1729805757; x=1730410557; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TRMWESW1RM91+bOrr8Fk3PAnLYyspN3RchZfhlUjRQM=;
        b=CDlbMCpB6G9xWf/SM24ZSRKvckOo/IqEqHZgV+sLqdpcCgawNPK9vrdhVXK07/xbiW
         6R5Znlq0hHzIdu7jRQSa0as+XoB34VfO/SMRD+TRx/tw1VneWovi6/F/agxKKyLF5liU
         5rbvfg82R+nW3HEoADA+wc2gdpCg1CvP4ECSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729805757; x=1730410557;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRMWESW1RM91+bOrr8Fk3PAnLYyspN3RchZfhlUjRQM=;
        b=HyxLgs69QMB5IjrhNRLal6vPQpgS8f0KvP5rrGYxhhBcPFwGEMTZDQZk6m/gAaG3Ih
         Ik3qL73g/8ENZJWZv5BLTEE9lOxfmumY45cukl96addQ1cw+YiSnaHAygXSDJX5Ej7J1
         QPr5kaSW/0cJCCHs8qrMJT34bdVslTQmzk4L+rwYfwa2eHUadHDA2kH31cF+Tjk2G9Z+
         bop4T522jKR//YVb8lDOjYOBcPR+p3O5APSe2WGdz85Vb0IlEIxJARd9grV9F//1uix3
         gFevzB8NyuQ66A3MOBmVwJ5WeycW9CvYp4eZA8DY2Vls3rQyi1xqBm11OJK/tFIX4zwV
         2P+A==
X-Gm-Message-State: AOJu0Yxj84590NtZ+fBKutWkkxni/vFBhKe0U1SJDx/5gUNPm9yHlbbm
	QcJGSZHXtGME29VOCwhNHAb4oOVIoKnHbpUp2A79EUwBkYeMYHGvOc7tRwXEPUkoxw79gMI5/AL
	YedvEABe+N1wwX35n6byyC5v6R7GwG4ARsdcPuF5ocinw30UYvj6iuCM4W6mmkHiCcRmGAYgULI
	JpyyKbfpwQME78SfukQ2BF/FiG00tkDjsslkbnm7zMU0pikQH9LsY=
X-Google-Smtp-Source: AGHT+IHzm0aTR1kYtX5MHKkuMwge/m+Q0yZS+6BXcDc8a+DmMbAEb2HRSeVZUpKJspPVvT+Zyp5c5A==
X-Received: by 2002:a05:6358:71cd:b0:1c3:7866:591f with SMTP id e5c5f4694b2df-1c3d80db58fmr572202355d.10.1729805757054;
        Thu, 24 Oct 2024 14:35:57 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b177acd5b1sm305333585a.120.2024.10.24.14.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 14:35:56 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-phy@lists.infradead.org
Cc: f.fainelli@gmail.com,
	kishon@kernel.org,
	vkoul@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH] phy: usb: Toggle the PHY power during init
Date: Thu, 24 Oct 2024 14:35:40 -0700
Message-Id: <20241024213540.1059412-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_143559_962965_DE3B24D6 
X-CRM114-Status: GOOD (  11.08  )
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

When bringing up the PHY, it might be in a bad state if left powered.
One case is we lose the PLL lock if the PLL is gated while the PHY
is powered. Toggle the PHY power so we can start from a known state.

Fixes: 4e5b9c9a73b3 ("phy: usb: Add support for new Synopsys USB controller on the 7216")
Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index 4c10cafded4e..530b571607c0 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -323,6 +323,12 @@ static void usb_init_common_7216(struct brcm_usb_init_params *params)
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	USB_CTRL_UNSET(ctrl, USB_PM, XHC_S2_CLK_SWITCH_EN);
+
+	/*
+	 * The PHY might be in a bad state if it is already powered
+	 * up. Toggle the power just in case.
+	 */
+	USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
 	USB_CTRL_UNSET(ctrl, USB_PM, USB_PWRDN);
 
 	/* 1 millisecond - for USB clocks to settle down */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
