Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D10BEC55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 11:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5QDycdtyFLkZ7j/qD0pvSk8nMdLa/T06A0emyEyEaY=; b=4Pq2R+jEPaegBL
	/QOQ6VePNwJJUb9an/iXdfaSdRHFQEekBshmbJAloT7WlQYkXYFGF8Zh3vlHuMso1Os6WIkBscFvB
	JypmG/+Ul3ZU07yD4bOWKdvV7i3D5cq75CeXNepXwMEVacsbO91YoROww8h4ht93m1n5r3xWoQUpw
	r2AsuhrVpInUYOxgpI7L5bqJq8wCzDyLD+SMe0bKnUOWEPeBttg8RLM96EiblB23ocGpfyO6Egpm+
	wzmiZGVSZrjj0SnPWB/qHHVODVcfyLMUmcJusNvPlnYj8E877XXeHhn00A3vyJoD6Kv3bVAGji4KX
	9LlFp73wivq7g9clLnzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDAt-00000001fNV-1mHZ;
	Tue, 04 Aug 2026 11:19:11 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDAp-00000001fMP-1gw2
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 11:19:09 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-47f93b2fe4cso2767650f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 04:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1785842345; x=1786447145; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2ZghHONKKBi4x/YVb7PG1LTu4YhILxIkRapbWwNntgo=;
        b=PXyPlmvlerhWWyyRzVvTIUMvI8+zoBD6rZoMfSHIcbQH4HuTFtU0gNHFUtQaszjIwW
         aD9wJHKWupJmWMQ5jRBeqCcAOv8C6S9b8x6ApoJcFBc1niulXFMCqxGA0D91YhO+tmD8
         hTyPT+MFTJPjdbk6K23vtToDpr5hN6chxs01/BWvbWTyEy3s6tFW2x8HM5WvHVZprcc5
         EdbEYYd9xgwxRQ6RK5s4lDu301KQczTTd1UoeAjqWs8s7dyf2Rhp3Mq7aTS9U2Yf4UyV
         6oaMcMKbDTbs7ZJXR6Vf7wtzymIPv7zH8iU6400v6T6gh6Us2GyR+2WHx6NwHlSo8VQm
         eJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785842345; x=1786447145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=2ZghHONKKBi4x/YVb7PG1LTu4YhILxIkRapbWwNntgo=;
        b=o4ni6ghimHB5kksXywGXaKmIC2LcJGlLC0dVuWlob9SG37UnaP5DXViGGopJANKB2b
         G+ICKifZb+At9Sews0wV0cSpsLY68MCvMehMdIx3Ul3fnBGFkNBFX0IgcaXGZKLyRFQo
         NqTs/8LY6n/WxzRbGjKBqT9tnalBPj7Ah3UeV2E6IGDNPT5FOmOynOuTQ5KmCMqtyEnb
         8oIvN+8EyjgcV8Nk7auxAFBthb8UbHtmgu52IH1ubIHtU7MJ6KAMWebBCAH0j8M3BIUw
         i+rb5yXc4Z1SQu0HEZrOel5YfT8z+EQT/ehAKJiSJ9E6xHSUSVqDnTRBEiA+5A2U8cLZ
         spYQ==
X-Gm-Message-State: AOJu0YzfcIuBddyTpk99L0QtgBWWQW40yXX8KlRdLC7qHRjko53JWjuY
	ffS3wROGzBShx1MNRwRDUu5wBvACrZdQyju48Cr/p9cqwazqHCMstdMDqLYUancL13sPAnXEs/w
	ELZF8RP77VA==
X-Gm-Gg: AR+sD111LOIAiaqcA+2KT6j3nqoR1COXXqjDyorqQhxqEykjH4/6NukEeFIzwDSNxpj
	MmA9pi0NT91tJtC97x+ZVq6x/X4rqNAJCI+LPNunuhQPF78cuE0TE5xT27PrR8KzawSnCu511PZ
	K8jjWaf8Zt+qHgYtet9AF7Y2WAbIZvoylWX4ciaDtQI7c6IwwmlqjgNoSCz42umO/8a5ZQznBUw
	g5qMdNEeLqsXOr9Is2Q4m8pB0ijx0lOSywQSGPDkGYHyntZD9w806MCweZP35BbpfjHpdspcDuu
	mHq7RIKFuE3MexY7DpDgn2oXA3gUQdhEL2feYfwCvQp524XsWFm2p7L45PZQPjSVnjK4Z7ZxbR6
	7hBJ0SYDcWuDYXYphRGmeCJo9ClDWywVGTbjEoMw8cHGUEVev9RQEoQGYYT7HitJQJ/SPuS1ciu
	6NTADsV8oTlQR54w7CgNTGAUR/LWwB3n4Lm0oAwLSgwUAspIiZNtuCVLveaYQA8wISiRwnNZB5I
	VvUC3xAKa6OQ9egv96NTfKQBsy0q/z6CbgCZNE=
X-Received: by 2002:a05:6000:41de:b0:47f:25db:8161 with SMTP id ffacd0b85a97d-47fd72fa195mr38835127f8f.28.1785842345442;
        Tue, 04 Aug 2026 04:19:05 -0700 (PDT)
Received: from localtoast.corp.sigma-star.at ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd458b05fsm44414682f8f.28.2026.08.04.04.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 04:19:05 -0700 (PDT)
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
Subject: [PATCH 1/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode
Date: Tue,  4 Aug 2026 13:18:48 +0200
Message-ID: <20260804111849.92046-2-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
References: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_041907_486762_C3EDDD13 
X-CRM114-Status: GOOD (  15.10  )
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

Besides power control, the PHY control logic in the OMAP PCIe PHY
subsystem has a configurable reference clock selection. It can
either use the ljcb_clkp/ljcb_clkn pin as inputs, recovering the
clock from the bus (RX mode), or generate the reference clock
internally, driving the bus pins as outputs (TX mode).

This patch adds a device tree setting to the PIPE3 PHY, allowing
the syscon node, register offset and RX/TX mode setting to be
attached and set up correctly.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 drivers/phy/ti/phy-ti-pipe3.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index b5543b5c674c..801a6239328e 100644
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
+						      "syscon-acspcie-tx-rx",
+						      2, args);
+	if (IS_ERR(regmap)) {
+		dev_warn(phy->dev, "can't get syscon-acspcie-tx-rx\n");
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
