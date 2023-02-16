Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBB8CC636D4
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 01:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ndV74/loIKr0te6S8vEbPiBIv8CBsCukPpLj42hGLao=; b=C39fZ9N8ANtRF2
	MiEChdgN0HXEQEXDDqT2oGLGmT/uPWqKGRUuc34/yWPubYXDjHQA8ZMLPlOBtlcuqbthGsVOhgQXl
	t0tT72BI9fUSpq4mXDzEvknzNSJSn4hpGzcV0lL28HG0uNFNMNuhMqdebATeVWmcCe7T7ndgJ1uwq
	q6tq/YwksvbrqyvLTsf05VHfe4IrHMAzvqrfgogk+2PqYeIpVAoIHXLFHKdNBNncScp1PNi1QDbkO
	LmJZYf4DdvACKIiKWZ8QKcLkJc1TSs8XI51Gqwgf5xZZGaFWO5tcOef8ZUCJnzWiJde6lG8z88ZFL
	TPVTknAoDCDLePNjWPsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSTDO-008Dbo-K7; Thu, 16 Feb 2023 01:37:39 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSTDM-008DXb-9b
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 01:37:37 +0000
Received: by mail-pg1-x52f.google.com with SMTP id x31so322559pgl.6
        for <linux-phy@lists.infradead.org>; Wed, 15 Feb 2023 17:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LRWndtf1MfAj2ZhkN4PTYCt6BLCOsDbhtwenSf5gYEI=;
        b=ikG9wYqSon6yeDIZ8/HLH4K6l7GUwJqTSDldmDtiKk0LOcz/BTS7VNLwZoloroz2D9
         oVD4AbiML29i1GxpgZcL46osr4lSsMHnVRsQ9rS+Z00YM67x3toEHXEhCosCp5yKIetC
         RAzHf54kGMjYljwDklADhRgK3YCRYr16I/5zF/1MaWjG9eNDuNPaslKSPphPunImAR+a
         oaf+yIO4Ok0fCJG5J3RlumUqzJAPzUj+FWROrmGx5xRLlffpFh5TPoILkmt+d9EBmE91
         cyIDe7TuwHBO9FB7Hv2qo/8Ft1+cdysWkUrvNOLsPJbtErLjd3ypuvyMbhF0uduCZxzB
         ShOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LRWndtf1MfAj2ZhkN4PTYCt6BLCOsDbhtwenSf5gYEI=;
        b=OdPfT42hFwJd2iu1g+MerlhjQixh9d+f/Z/aFjOkNvN7VqvbOaRxe1vsFxapqPYx2l
         JzRFj5/R/HTS62yOPj3d2YYXUkDOJRxxs0iSpGYJ3rLIGc1rkyIQyI6A5Mby1D7OJ8rk
         gajr/hMLt+If4QL13Fw069/Hx8D9joOrgFfLXYUFWun/h0t7TEESMwSCmaR+AH8T4uMt
         xdInpsOVS2V8KLOzD3nBuJVUd3dNXRWsl2tCNouLr/T4zRuYG+fujMF28StS6224JNyy
         2axoZPW9LlZsn8C8y8g9yY1m+wMC9EU926nCB1AZ+dqlgzl9dwdzxaz+76UF/p8tP+xT
         mbFQ==
X-Gm-Message-State: AO0yUKWDMb5B6RLObtqlmNcJ1Jx/aaUibL3dWCqcIYxAgYPdYYCuFZ6q
	lf36DrT0v/obTEouivLSP7Q=
X-Google-Smtp-Source: AK7set9LEj/YDhRySm8fzqHdYGLT65Td4y7Y6NmEb9R0Bmc5pY2UTnMI0BsHDKrk54W56G/6crxcQA==
X-Received: by 2002:a62:1b52:0:b0:583:9b05:d1f0 with SMTP id b79-20020a621b52000000b005839b05d1f0mr3588869pfb.33.1676511446969;
        Wed, 15 Feb 2023 17:37:26 -0800 (PST)
Received: from y.home.mmyangfl.win ([104.28.245.200])
        by smtp.gmail.com with ESMTPSA id p19-20020aa78613000000b005a8d3d311b8sm22620pfn.22.2023.02.15.17.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Feb 2023 17:37:26 -0800 (PST)
From: David Yang <mmyangfl@gmail.com>
To: mmyangfl@gmail.com
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: hisilicon: Adopt phy-hisi-inno-usb2 to ARM
Date: Thu, 16 Feb 2023 09:37:13 +0800
Message-Id: <20230216013714.1480736-1-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_173736_351494_34E6A178 
X-CRM114-Status: GOOD (  11.21  )
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

Hisilicon also uses phy-hisi-inno-usb2 on some ARM32-only SoCs (for
example, Hi3798), with a slightly different register convention.

Signed-off-by: David Yang <mmyangfl@gmail.com>
---
 drivers/phy/hisilicon/Kconfig              |  2 +-
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 16 ++++++++++++++--
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/hisilicon/Kconfig b/drivers/phy/hisilicon/Kconfig
index d3b92c288..6c89136fc 100644
--- a/drivers/phy/hisilicon/Kconfig
+++ b/drivers/phy/hisilicon/Kconfig
@@ -54,7 +54,7 @@ config PHY_HISTB_COMBPHY
 
 config PHY_HISI_INNO_USB2
 	tristate "HiSilicon INNO USB2 PHY support"
-	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
+	depends on ARCH_HISI || COMPILE_TEST
 	select GENERIC_PHY
 	select MFD_SYSCON
 	help
diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
index b133ae067..624899536 100644
--- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
+++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
@@ -20,12 +20,24 @@
 #define PHY_CLK_STABLE_TIME	2	/* unit:ms */
 #define UTMI_RST_COMPLETE_TIME	2	/* unit:ms */
 #define POR_RST_COMPLETE_TIME	300	/* unit:us */
+
 #define PHY_TEST_DATA		GENMASK(7, 0)
+#define PHY_TEST_ADDR_OFFSET	8
+#ifdef CONFIG_ARM64
 #define PHY_TEST_ADDR		GENMASK(15, 8)
+#define PHY_TEST_PORT_OFFSET	16
 #define PHY_TEST_PORT		GENMASK(18, 16)
 #define PHY_TEST_WREN		BIT(21)
 #define PHY_TEST_CLK		BIT(22)	/* rising edge active */
 #define PHY_TEST_RST		BIT(23)	/* low active */
+#else
+#define PHY_TEST_ADDR		GENMASK(11, 8)
+#define PHY_TEST_PORT_OFFSET	12
+#define PHY_TEST_PORT		BIT(12)
+#define PHY_TEST_WREN		BIT(13)
+#define PHY_TEST_CLK		BIT(14)	/* rising edge active */
+#define PHY_TEST_RST		BIT(15)	/* low active */
+#endif
 #define PHY_CLK_ENABLE		BIT(2)
 
 struct hisi_inno_phy_port {
@@ -47,8 +59,8 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
 	u32 val;
 
 	val = (data & PHY_TEST_DATA) |
-	      ((addr << 8) & PHY_TEST_ADDR) |
-	      ((port << 16) & PHY_TEST_PORT) |
+	      ((addr << PHY_TEST_ADDR_OFFSET) & PHY_TEST_ADDR) |
+	      ((port << PHY_TEST_PORT_OFFSET) & PHY_TEST_PORT) |
 	      PHY_TEST_WREN | PHY_TEST_RST;
 	writel(val, reg);
 
-- 
2.39.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
