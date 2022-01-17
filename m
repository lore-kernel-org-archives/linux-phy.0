Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF86C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jan 2022 00:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t/9uHVBQ+FL3UiCYPduTwX/IBYVrzQPSQjW3VATwv8k=; b=cdh5MCZJjQFiNH
	XFI0+8ZCxZELTDFsHx6SyekgcwpTU7mES5j5s00gx3d1Nb8e/UGveiA+ehWpKULl8L2bDNgoCSk1b
	d0qDG/1BfCOLX7IkHxooScZqlGQpCeMhpe6K6o4bKn/RtvTz1HtF/DEedNkUChNrb4K0/pB7MeVaS
	7Ix1iQI6rqOL5e3dQh1fISo6z80xVpl/kONS21QDNbNb/fv0tpBYkJLrZpNibv/BvXys9E618FOO6
	H0aAKjvHEB2J6f2xSHgmFeeiHi+0/6EdQht6NOHFwhqbzZ8EAqGMVpW2ZVZGk5XK3eSgB/XWhvLTD
	YYNP+PGxxdclac15IqzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9G7v-00DAtS-QV; Mon, 17 Jan 2022 00:44:03 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9G7t-00DAss-4u
 for linux-phy@lists.infradead.org; Mon, 17 Jan 2022 00:44:02 +0000
Received: by mail-ed1-x532.google.com with SMTP id m4so58579720edb.10
 for <linux-phy@lists.infradead.org>; Sun, 16 Jan 2022 16:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fVBwHqjRiTPngWkNGF9zdvdA//oHQIGX1K8FVBmadoE=;
 b=ahBnotuLo2MHhRJNsnoJSvsPJeP0nuIPb74JifxhzfTNUva1Vmp1Vq4Zc6ZivaEViv
 9nq4+vSH2/FTECHhEJ5ZraYvkWRYoVPACRbUrsTyq04YFJlVjA84kPBFfByykgRgdoMr
 jLb8Vn6+kUjpFVcV9kzZs3cU9OGrLl8CE/fDn00mAdVmOzsRFFwAO7D0wh0wIp1ELnfW
 NmGahlbaSFhpcKXd3wSPcTtXW8eEj6PNOWnELVoei3BM6f1mImANOlqsHabqdzcteXxh
 NV75MnAUb9Mmjx/jNPhOnmIKw6ZiFM97QBQWZ052DWG/yyCkLf8r7UTvLzr+wm0GQX/l
 joLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fVBwHqjRiTPngWkNGF9zdvdA//oHQIGX1K8FVBmadoE=;
 b=s8yNgXffNcpV/Dsc5f1Stf21SVKr/biN9obqt9p6/Wnx+/LfrpI0DH0uB8ZO4x6gPu
 UcxtywzQMjpi+yPYJPRtKi/dh3givRyOkL1dQLreT49fUu40Rf9yyHW112d84xrBmlON
 /L+rG16yftmG2tQstTgxx+G1I9e/Sy2jxPOP+FjHh9vgUGe/vBpy0OfmjPM4deZn5SCR
 Eg+Bm9kskcimJ665dJdN5/DwEfBxKTWHjPWF0EHyZVG9Gd/pAN8o9PAekszI+3h+ziSk
 6nG8So9jn3Cd21HFA/KMSFtGH+zHR47/v2BEVx8c/jn5WiBao0PLaZxvw3N0GYoo4BTv
 x9aQ==
X-Gm-Message-State: AOAM5301LLniG8KsSO5tRkPGH6ium6YEl+e3dnbIMxPhda2OcQsRMG3u
 qvV/OUo7aKoKaQ6GBiYJNNU=
X-Google-Smtp-Source: ABdhPJzueh6U+3ebTRaJF4BFO4gi/HSDdXR09qU0X172/JUL/EVbKDFdN4yPWzvoVNgrxesnWeUZ1A==
X-Received: by 2002:a05:6402:1bd9:: with SMTP id
 ch25mr14458702edb.84.1642380239563; 
 Sun, 16 Jan 2022 16:43:59 -0800 (PST)
Received: from localhost.localdomain (93-42-71-246.ip85.fastwebnet.it.
 [93.42.71.246]) by smtp.googlemail.com with ESMTPSA id
 go41sm3879266ejc.200.2022.01.16.16.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Jan 2022 16:43:59 -0800 (PST)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Ansuel Smith <ansuelsmth@gmail.com>
Subject: [PATCH 1/2] drivers: phy: qcom: ipq806x-usb: convert to BITFIELD macro
Date: Mon, 17 Jan 2022 01:26:40 +0100
Message-Id: <20220117002641.26773-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_164401_209844_3BF4076B 
X-CRM114-Status: UNSURE (   9.09  )
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

Convert some define to BITFIELD macro to tidy things up.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index bfff0c8c9130..6788e0e8272a 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -10,6 +10,7 @@
 #include <linux/delay.h>
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
+#include <linux/bitfield.h>
 
 /* USB QSCRATCH Hardware registers */
 #define QSCRATCH_GENERAL_CFG		(0x08)
@@ -74,20 +75,20 @@
 		 PHY_PARAM_CTRL1_LOS_BIAS_MASK)
 
 #define PHY_PARAM_CTRL1_TX_FULL_SWING(x)	\
-		(((x) << 20) & PHY_PARAM_CTRL1_TX_FULL_SWING_MASK)
+		FIELD_PREP(PHY_PARAM_CTRL1_TX_FULL_SWING_MASK, (x))
 #define PHY_PARAM_CTRL1_TX_DEEMPH_6DB(x)	\
-		(((x) << 14) & PHY_PARAM_CTRL1_TX_DEEMPH_6DB_MASK)
+		FIELD_PREP(PHY_PARAM_CTRL1_TX_DEEMPH_6DB_MASK, (x))
 #define PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB(x)	\
-		(((x) <<  8) & PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB_MASK)
+		FIELD_PREP(PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB_MASK, x)
 #define PHY_PARAM_CTRL1_LOS_BIAS(x)	\
-		(((x) <<  3) & PHY_PARAM_CTRL1_LOS_BIAS_MASK)
+		FIELD_PREP(PHY_PARAM_CTRL1_LOS_BIAS_MASK, (x))
 
 /* RX OVRD IN HI bits */
 #define RX_OVRD_IN_HI_RX_RESET_OVRD		BIT(13)
 #define RX_OVRD_IN_HI_RX_RX_RESET		BIT(12)
 #define RX_OVRD_IN_HI_RX_EQ_OVRD		BIT(11)
 #define RX_OVRD_IN_HI_RX_EQ_MASK		GENMASK(10, 7)
-#define RX_OVRD_IN_HI_RX_EQ(x)			((x) << 8)
+#define RX_OVRD_IN_HI_RX_EQ(x)			FIELD_PREP(RX_OVRD_IN_HI_RX_EQ_MASK, (x))
 #define RX_OVRD_IN_HI_RX_EQ_EN_OVRD		BIT(7)
 #define RX_OVRD_IN_HI_RX_EQ_EN			BIT(6)
 #define RX_OVRD_IN_HI_RX_LOS_FILTER_OVRD	BIT(5)
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
