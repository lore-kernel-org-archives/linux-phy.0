Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E8FC79F99
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 21:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADQg3g70SHFQpJx/Ma2gd7DLEEOi1DolEuP7O6YMTkI=; b=2U5OgpylzBLenh
	MMmizT5l5zZVBD+4+fy9CxaJdKlKWRp+N6SmkM41GH2n/+PhyeLGR/uEyVeB8JBnK0+IvH0OprNKN
	r0nOfxAACPjQipzU9vzH1dJvymlvFOOrbbV2OBq5DHk607usSipY3pcBvl3+XIReXTRRboZMPKdI+
	L2U91Wi6Iycq+jOsnh0UG9yn3ekUGTyg3fKOfb4WL4VK1tcH7vufGsvQC9ig7gAIn/HVTnNU6BVPE
	yEsnnB/bBLgz9zov6TfsFk/mHEv7WSWFZnVxJVdFnPGFD9hg8XewYQc+MoV0/jCNIx6n+ERl2fbxF
	oA8bL9KxoWfItZuAIwTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xkF-00000004QEn-1mYU;
	Sat, 05 Sep 2026 21:16:15 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xkA-00000004QDF-07rc
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 21:16:12 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so28331325e9.0
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 14:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1788642967; x=1789247767; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tu5iJEo6nOs2XgpyoZ9iLxBXAex16zJHHTE4sswtndw=;
        b=oBNc9t/J9nBmBYJa3BqZdEe1ETkUmbIxOnK0/TgchFbFzTc9B/tMlTf4j1c8UV7PAk
         aVRtDzPrW57CE8G6OcLE5Q7avzhcwof0L6L4kuPhYnymRhuJZbH8hE2LJ+nu0xJDe4/l
         6xN11eghqHtIJJiwNneiN4690rf8wvDbYDIOk6z930OtuTu+qem5ozm1In24Ky5IEzhz
         oB9TWl9gqxFYzJvuE6Gj2WApVZ/c/856J7NUrAVvAjbQZY8CQnLAvXbUdLWf3v6prZej
         AkYh20kg7HGvXMaRfF0Wa/buwovJ8HzRThRiWcNvV4G19k4jQeEVq5pthrRHq+m/39Lw
         u0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788642967; x=1789247767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tu5iJEo6nOs2XgpyoZ9iLxBXAex16zJHHTE4sswtndw=;
        b=G3ztI9S0W3LKPu+zKM1hx9bvQEhnWr3tPfWarwF9diqg0PK2ieHibY0YUpmEO02B5s
         pB8xN6e4DCcnfkOia9/neO7zj8XMfl+wTnnEaaSJTZD9H6yn7bt+Zq4xPYLbM6E9cwBy
         20kBvf04FNPqKKvRvX2H+54EOuSlf7pXW803miBc8m+4ZwGMJ0PwRkdJ4o5EaBqX6PR1
         c8tqbb0ZyQ9CPQ5wcbUD+yEszViiy0O3ON+wupxMnIiR8xb4Cyb3DiDDnGe1ThJg+Tfn
         LeLZ3j+ryTS8kSQ7Ngm8XrLtSsvB8nHfcL7HLt42IfdkdJSWE/vG6CGqUBmPDU1WNdq3
         C0dg==
X-Gm-Message-State: AFuF++lVIdpY9XnhEld8J/7WECmX2E0pWW87BNTqQNCsKzYqLNRJz/az
	ENH1RXvwbT+gtW6eO740IlyrOoVdwAUvl4DaD9dzupfxnYMEJsNyBAJ+Tf6qcZO5P6Y37IgVupL
	NBJCJ5/3mMA==
X-Gm-Gg: AYBFou1xbvwnnHoQzCVdkAvkMZV4HdI47ge1eCO+rob3iLZnI4yZ3Z1k4Zuc8pKYcZ4
	Gc8LQYhtMHc+jT8M7xQkxYbVWcv8a7y0rtDibh4GPZVSJGLHetsxuPazmWc55CZ0oBwabq/dcqW
	wi3C5mDFeKfL7AaLj9ZacgLLfeRUsnGT2Y+h8RxMUPRgfOELq+pHfskPxku542HC2wLc64svPNd
	AH1QbBV/vwmWP0XpGG6HKhVRbYenZh62ljl/YQSjdA2XfOJYe7J/b0x6V/peGja3C1z6iDmNt0E
	23fg8g8kA/ORpAsXn7+QaAuqK/nqcBy6cxdrmLcI5g5WV34cW1mjA+9vlm0yW1ZfZQwwl5cidWp
	i2rCmNFIuI7rRVRGZrrVnvWN+RtWDcZUH0zXkC/waRkRnC0hAnz7oC+tzUMdNKn8n/XrhowZYtf
	fQ0VnkIImiYM889DJxkftqrIbDEha2rG7PVkihx+ASd8b8ZofLqmW1egGru+nbtd8wvFu3ALUGt
	zE0hy8sgb6CoC7KyolRcJIJ8xXkiy6Cs9TqAdoZ01Y=
X-Received: by 2002:a05:600c:1c24:b0:498:952:e276 with SMTP id 5b1f17b1804b1-49cf824894cmr159819725e9.8.1788642967596;
        Sat, 05 Sep 2026 14:16:07 -0700 (PDT)
Received: from localtoast.fritz.box (clnet-p04-043.ikbnet.co.at. [83.175.81.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce5952560sm261416695e9.3.2026.09.05.14.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 14:16:07 -0700 (PDT)
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
Subject: [PATCH v3 2/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode
Date: Sat,  5 Sep 2026 23:15:55 +0200
Message-ID: <20260905211555.15944-3-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260905211555.15944-1-david.oberhollenzer@sigma-star.at>
References: <20260905211555.15944-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_141610_266716_33AF03D7 
X-CRM114-Status: GOOD (  13.62  )
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
