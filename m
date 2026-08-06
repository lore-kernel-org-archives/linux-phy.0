Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C280AC56203
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 09:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADQg3g70SHFQpJx/Ma2gd7DLEEOi1DolEuP7O6YMTkI=; b=KUJ0BLva7ZEZxW
	ERHEqDDjF3g/cqkHMp5jALMqG89tI6gCGToKhJihqKK3SW391crJrD+tMn2hjFFmy+sG9wMcm6uOd
	/cO0yduT7gPb2BcssJeylHKbNmLe4fSkuwk+QaUkX60gjuDmOVChhxAZpG3j8TWom8HQQrtxNEXKs
	BOWA6mqPaQwTaSjWmOqzzbd3bAiE2yhBls+D2VDBiObXDmP+IGQZYMWNmKjjqM74UaWEoMcHMLim9
	JPwCnQMbZ2LopHxneqbg894JbZSodmMOyYJga0L45HYYnpd7TshcynEYfrPJFKLf0kYjnmJnOIQV2
	bs3uwKarzLQVZZw8fLog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wru8O-00000005Lct-23gT;
	Thu, 06 Aug 2026 09:11:28 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wru8L-00000005LaQ-3DbP
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 09:11:27 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-49545ba3d4eso10540045e9.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 02:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1786007484; x=1786612284; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tu5iJEo6nOs2XgpyoZ9iLxBXAex16zJHHTE4sswtndw=;
        b=AgE9IskjYJ3k1X2KebcUbp6pC71YZ7jL3HKCdkzl47RHtSJSfS888Iv8j8ZvOYLeY0
         xPLJbsLKwusZoI/hgJE5YOX+Hfrv77cj/rAxAgIR6/tyZVhHo8aguHXk5dNhveUzRmFp
         GHA2+KjZIVO6nle0wHb0+8q09oKUH2x6YMTXm3pwxiX5onegjKL8ISriYlhEiDesFW7h
         P2LK9ROnbuJAXfXUp1RioOH4iUN+tOIu3PYyhsJ2Nfcb9axfyN2HyugoAomUCvfqkZV0
         zTsI/LHt1YZx+QfgMuQeIXvDTaZ1I2GyGFuKA3llkYf973dXZuGnbTlPXO/z+FSLEurR
         YOqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786007484; x=1786612284;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tu5iJEo6nOs2XgpyoZ9iLxBXAex16zJHHTE4sswtndw=;
        b=HJ6s/iz9Akb8MfTEfmz4YZ9l91648EFA8DliF0rXCuYsh9dN979fZnNnF33vZITNmv
         TlXfqSVxNzzRVCYoe2SdWz0WtDaJEGHry2ZN+uovfa5WPMmPgSq+DcCbLJPHDQkoAHK1
         Rlv8kCGDtTrRRoG85RN8OtBL5Kwzf1mI7EtPRYv9FvNecAmNdlSPExicy5l5F/7+zn9F
         nestTIfDH6jUdkn8zaCedHO0dKsBLGsveasGyafxjTBb6DL0Rl+pjv0gIvawMZWnt179
         sa/VPubooCgqI56TA1BuMPBWBtec3TNX2iqKrRILJoB+zK0L+O/VxdoxvtLGUTpNIpPQ
         PDrw==
X-Gm-Message-State: AOJu0Yx9M0c4jH8GTb/PIce1J+dXxrQ0TYQUH91KNMAxMz8c2aS9uzpE
	fT/sFL07ZM6aF9LlfBTFLhkNSGR0KuhfhKSZg7rGI6Qppj4CxlVUF/Y2NLuk5UrWqH2xAbIhzJu
	jVx6f1p2xdA==
X-Gm-Gg: AR+sD11uQTQMDCJa3CpVghOVGv1bMMa34fu1AH9BM/QgDqfQ6H8vbBzZTEcF9wHX2Wo
	DN3JexOAkFiEM7rqzDUHjKgk8teV3lIczAHRT286jDLfd8Loukoc1hdKNArNjgA8M0LIldtwRRX
	cpDG4iG/+fk0grUWfq5Ckzr6Vc4Tk77Ix0hO2Jxqtx68lNqLbauFjIlz4Vhavx8ORgc7bpCRlUq
	fcaVysPEA4eoF+ENcCh15Lg1qRQgdv5OHjQymSidzUcbtvcIM4Tflcomsp5KLQ1wFyPDkxD3taA
	oNsqDte4SG+A4/X6zNRdtDmc4xCeCPeB/jAPKyjTl30ac+2qtanCOJe9suOWJ5vt6c7xR8qnPmZ
	aCq4o5yQmnAyz7mNDDNtfn6Jk3pXKJEfDKz4MvmOhGGa0nUu8qaOrQyoOY6okCe+GEWsSYrzUI4
	QvRM4cRq/hz+dMHj4kTPLAbAq7DGV9RsouOa6kIxf/NzrtQvt3B5PuE0ghwsAhUyotjAZhg5Lje
	h/uCM/QPuOOALRzbO6chA0OhjiPyzr4aJiDrr8=
X-Received: by 2002:a05:600c:354a:b0:496:c249:dd9b with SMTP id 5b1f17b1804b1-4994e7c594dmr174612905e9.13.1786007483869;
        Thu, 06 Aug 2026 02:11:23 -0700 (PDT)
Received: from localtoast.corp.sigma-star.at ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b31975sm4035213f8f.33.2026.08.06.02.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 02:11:23 -0700 (PDT)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	rogerq@ti.com
Cc: Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at,
	David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Subject: [PATCH v2 2/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode
Date: Thu,  6 Aug 2026 11:11:12 +0200
Message-ID: <20260806091112.164695-3-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
References: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_021125_819314_796B605F 
X-CRM114-Status: GOOD (  14.02  )
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

For the PCIe PHYs, read the property from the device tree and
update the RX/TX mode selection bits in the specified syscon
register.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 drivers/phy/ti/phy-ti-pipe3.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index b5543b5c674c..bc02010dadb7 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -115,6 +115,9 @@
 #define MEM_CDR_LOS_SOURCE_MASK		GENMASK(10, 9)
 #define MEM_CDR_LOS_SOURCE_SHIFT	9
 
+#define PCIE_TX_RX_CTRL_MASK		GENMASK(17, 16)
+#define PCIE_TX_RX_CTRL_SHIFT		16
+
 /*
  * This is an Empirical value that works, need to confirm the actual
  * value required for the PIPE3PHY_PLL_CONFIGURATION2.PLL_IDLE status
@@ -785,6 +788,24 @@ static int ti_pipe3_get_pll_base(struct ti_pipe3 *phy)
 	return PTR_ERR_OR_ZERO(phy->pll_ctrl_base);
 }
 
+static int ti_pipe3_acspcie_tx_rx_mode(struct ti_pipe3 *phy)
+{
+	struct device_node *np = phy->dev->of_node;
+	struct regmap *regmap;
+	unsigned int args[2];
+
+	regmap = syscon_regmap_lookup_by_phandle_args(np,
+						      "ti,syscon-acspcie-tx-rx",
+						      2, args);
+	if (IS_ERR(regmap)) {
+		dev_warn(phy->dev, "can't get ti,syscon-acspcie-tx-rx\n");
+		return -EINVAL;
+	}
+
+	return regmap_update_bits(regmap, args[0], PCIE_TX_RX_CTRL_MASK,
+				  args[1] << PCIE_TX_RX_CTRL_SHIFT);
+}
+
 static int ti_pipe3_probe(struct platform_device *pdev)
 {
 	struct ti_pipe3 *phy;
@@ -807,6 +828,12 @@ static int ti_pipe3_probe(struct platform_device *pdev)
 	phy->dpll_map = data->dpll_map;
 	phy->settings = data->settings;
 
+	if (phy->mode == PIPE3_MODE_PCIE) {
+		ret = ti_pipe3_acspcie_tx_rx_mode(phy);
+		if (ret)
+			dev_warn(dev, "failed to set ACSPCIe TX/RX mode\n");
+	}
+
 	ret = ti_pipe3_get_pll_base(phy);
 	if (ret)
 		return ret;
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
