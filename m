Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B78FC48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:27:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D93760FDA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:27:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D93760FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCldmf36tEYgd7OG2lp7RVpw00/b/g+kuS+poZ3jK1s=; b=GI9CiJgU5i/8ok
	/nua/RNjyHYZxUD6dgXCatxWCWAY65OQDzEMgTMZ/DYE3zf/kAIx5YVTq9w3FXijY13oeICmmcFzx
	H5r2rigcL6ycOOolyXQkzCegfMgvhtpYS8SmWTm2rhJn64ZOtt2gXHViuqvQzYdRYiXL+z/7jq086
	Ub0dqcut35OqTLH6v9qsK2NVkLEuE6c8QoaNTX28aWElm3JK485NO2Xv9OP6uUncfkrB5k9cYOSft
	Ai5M6MrRLmZNjGO5glnIzovuddXUoc/QD58HO/10kUppRaooBpzDr7zChbgMyGrBgHge2u0NybH6Z
	es5bCzHrN7tymwnvd0/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEKh-002Ufz-CF; Mon, 21 Jun 2021 07:26:59 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEJ0-002TvI-JA
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:25:16 +0000
Received: by mail-pf1-x435.google.com with SMTP id w71so2922014pfd.4
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/pGjb2AmXz+lBmXRvuYK+0My7OEKqfzWIwfNjkS45hA=;
 b=B9B52vgxd/J4eTdK7UlVsZJ7csp6Wy5F6P2A20Mfw0H1RRWpOrSZaJTujs3hnlfzCz
 lquOWxd8ZvszDgJBt5LkR7OIgGAYPjCdylfqn/O2NYN4AtmxpZNGZJgy/JPcPkMTY5hX
 nywtvsNF2KIYxRwwwQnWW7ejXPXt/r/tOk/hU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/pGjb2AmXz+lBmXRvuYK+0My7OEKqfzWIwfNjkS45hA=;
 b=Wfk31bSMsSRz2w4IAHh0ZIyCBAKIMrDlWLSnZsLSxtqyREZN1d55ztkb9hII+4xeHp
 h9oy2I1lyV/m45o1nuIXki/P1paJKh8NJxzTj4A73zWsVMPIfl6K+CCHYJ78S92vrUVt
 UN1gDpaWDz6aF3aKzA+rPKdr6aE9Upw7Nxx90uK5zP4d2cgnxsv6de4OhgacXJi+uAsu
 Pcrh24jW/vXI9IuL2Kik5OpiuGDXjprp8sf6Q0rBYapHZ54t1w3PyTdV16T9hlv/hTYg
 06FKSkHe6MsF5bDLfYcS0owVSfT/lgYH0wdilGd5O2Q/LtW29hnOB+HdmsnY97H4EHvS
 6FnQ==
X-Gm-Message-State: AOAM531sDZL9iQPscZSwENDV8ytOVd/xB9KLt1CgtoxtZZyVVz9rega4
 6DEDTZBpQ8TWPwFnenwkL8hEJQ==
X-Google-Smtp-Source: ABdhPJxo+t1TLHHi1OZRYJMnwd/WKQz+bnqZydSgYB9/egnda8r4P1VP3GSrFWZ7KhGsl+nW3aljHQ==
X-Received: by 2002:a63:ed17:: with SMTP id d23mr22382992pgi.107.1624260313749; 
 Mon, 21 Jun 2021 00:25:13 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.25.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:25:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>,
 Fancy Fang <chen.fang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-amarula@amarulasolutions.com,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [RFC PATCH 5/9] soc: imx8mm: blk-ctl: Add MIPI DPHY reset enable
Date: Mon, 21 Jun 2021 12:54:20 +0530
Message-Id: <20210621072424.111733-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002514_683177_46C6745C 
X-CRM114-Status: GOOD (  12.06  )
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

Add MIPI DPHY reset enable pin in blk-ctl driver for i.MX8MM.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/soc/imx/blk-ctl-imx8mm.c         | 4 ++++
 include/dt-bindings/power/imx8mm-power.h | 5 +++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/blk-ctl-imx8mm.c b/drivers/soc/imx/blk-ctl-imx8mm.c
index 5ca8d6c52917..a9d900754faf 100644
--- a/drivers/soc/imx/blk-ctl-imx8mm.c
+++ b/drivers/soc/imx/blk-ctl-imx8mm.c
@@ -25,6 +25,7 @@
 #define MEDIA_BLK_MIPI_CSI_I_PRESETN_SFT_EN			BIT(4)
 #define MEDIA_BLK_CAMERA_PIXEL_RESET_N_SFT_EN			BIT(3)
 #define MEDIA_BLK_CSI_BRIDGE_SFT_EN				GENMASK(2, 0)
+#define MEDIA_BLK_GPR_MIPI_M_RESETN				BIT(17)
 
 #define MEDIA_BLK_BUS_PD_MASK					BIT(12)
 #define MEDIA_BLK_MIPI_CSI_PD_MASK				GENMASK(11, 10)
@@ -41,6 +42,9 @@ static struct imx_blk_ctl_hw imx8mm_dispmix_blk_ctl_pds[] = {
 	IMX_BLK_CTL_PD("MIPI_DSI", "mipi", IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DSI, 0x4,
 		       MEDIA_BLK_MIPI_DSI_PD_MASK, 0, MEDIA_BLK_MIPI_DSI_I_PRESETN_SFT_EN,
 		       IMX_BLK_CTL_PD_RESET),
+	IMX_BLK_CTL_PD("DPHY", "dphy", IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY, 0x4,
+		       MEDIA_BLK_MIPI_DSI_PD_MASK, 0x8, MEDIA_BLK_GPR_MIPI_M_RESETN,
+		       IMX_BLK_CTL_PD_RESET),
 	IMX_BLK_CTL_PD("MIPI_CSI", "mipi", IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_CSI, 0x4,
 		       MEDIA_BLK_MIPI_CSI_PD_MASK, 0,
 		       MEDIA_BLK_MIPI_CSI_I_PRESETN_SFT_EN | MEDIA_BLK_CAMERA_PIXEL_RESET_N_SFT_EN,
diff --git a/include/dt-bindings/power/imx8mm-power.h b/include/dt-bindings/power/imx8mm-power.h
index a10266befa9c..8becb123e191 100644
--- a/include/dt-bindings/power/imx8mm-power.h
+++ b/include/dt-bindings/power/imx8mm-power.h
@@ -27,7 +27,8 @@
 #define IMX8MM_BLK_CTL_PD_DISPMIX_CSI_BRIDGE	0
 #define IMX8MM_BLK_CTL_PD_DISPMIX_LCDIF		1
 #define IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DSI	2
-#define IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_CSI	3
-#define IMX8MM_BLK_CTL_PD_DISPMIX_MAX		4
+#define IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY	3
+#define IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_CSI	4
+#define IMX8MM_BLK_CTL_PD_DISPMIX_MAX		5
 
 #endif
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
