Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 863F8C54E68
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdsBd0ID82/M+m8e5kHoQzoLL9GLNVEOgvARaRdaxHo=; b=jIECjBeiw5wvaa
	Zdmu6Z1dFnQU07jDJXPGQ1No11Rc46ACrYRf94/3ba2CKuHzWXnztrOGtF3jYoSWZ2nFEmkrfpsUm
	IP77hAmM/ZHdd8Z86kHppQFhg0aF+RDntdQHM1Mohg+nvXdFNALQnGf2j69XEIzLcb3wKPeQVAGLb
	LLPTOn6WVNCHhLQUsWjxPAXNkep/2nvWIsuMb4gWo5NVL4NDnS8BdvFyYljfuFJoXLCQmb5Fkg9Hs
	Iz9rdNto6/C3F+ZekV39BePzkAlX7/b1gtj7jnWljj3lxQCRn5XCXFedSrJtL0LTwzwBFg3D2tGd9
	KgTK7JDx8KCO0lXyRTDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxu-0000000CLP5-45tG;
	Tue, 19 Mar 2024 10:45:06 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxl-0000000CLFM-14Hg
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:45:01 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-33e1d327595so3425278f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845083; x=1711449883; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vaUDxu1aSxyRZXnYFOND1HceBfA/6o9Fk2GBTMCjqhg=;
        b=bdYJnQcUjzxGI1j7AlQQWLBFxBF+2zvBV6QbmOZx0kAzvJW1QZd7IvT99bUUhp1Yi7
         zFMYfSDwyXvf3V1DnauCWX1ucgDynUwLzb6nvAw4koufnsmJojMVK5zFYdjt8fSqn79A
         B2FUGTBTz42qyANrlHHk/ijgRDifXltAAmUumzeXh8fQsiZZqDYYVUvJl35SloZmI8kt
         M/cXHiOPZl8yLsoWLu3uxDSpvjRV9Md10MuTs42CWdfozw0H/eGN4L+JXNUuLy3GL5gT
         Ms4Big2WzCdtVS0lkGmLTv58LKF9MbyhrkwDKY+lYly5cGnzCBRbKS4nFvKUhrTKOXQD
         JlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845083; x=1711449883;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vaUDxu1aSxyRZXnYFOND1HceBfA/6o9Fk2GBTMCjqhg=;
        b=HcSVZriqntZwwjEcHRtYWUUNYYadqcVKK5zBASzBfwMy/1fxle7GHR/tW120Y0smxf
         v9YoBN+EZeqnEj6RHxcsNICniTfiS+sevT9jBoTg2fF7mlQRfvBeIK+uJewh//WPQKLO
         BG/QQx09OiFFy7Z3ww4vx8uZXyHfEGa4sAJgbBJ4tPsk8dbjGX73nMMifhqG1Ji24PKC
         7o388qZ0yzGVLTBeE1fSHvbNy95G/DvRiKM1FXJNB6we1u5eGdf9nX/AhX/geypfuYb8
         fKs0ACL1ciaxY0JTeZp8X2r6y8hXKlPx9VuW+3jK18jFbXgFb2ejtfmiFuBGhtDoL7N2
         vRsA==
X-Forwarded-Encrypted: i=1; AJvYcCViqSgdEhIhhyrljF9KTvea0kNMLm/MLVAQvHs0hewzKMzmOlAlJYjQjPPTUa+uyPaZZ4fi359gllOzw9alJNeuXP3tBEfCjANMC+klkQ==
X-Gm-Message-State: AOJu0YzErELIDtWzvsdUtWv1jjjsTgNX4t0niDtFIdH2hErMKOYmERyK
	pDCEUnBExft3vfL6Fgtny4IjFQBa5GSWHqS4B0ONkCsvhXJwjHn90JoNzQjiQN8=
X-Google-Smtp-Source: AGHT+IEI8FAubESL+OiWqRmez4YrJyHkp0zhMaROfLEYoQuQYkJSDscEjausMNnTYtuORRoHxflksw==
X-Received: by 2002:a5d:420e:0:b0:33f:6ec1:56dd with SMTP id n14-20020a5d420e000000b0033f6ec156ddmr7618246wrq.45.1710845083167;
        Tue, 19 Mar 2024 03:44:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:29 +0100
Subject: [PATCH 3/7] phy: qcom: qmp-pcie: register second optional PHY AUX
 clock
MIME-Version: 1.0
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3998;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=WsGgAE39xLO1WpNxrXfF0aN/WkAyS4SNo1d7Voxy384=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyVxmma2DSKw3/90m56VEW2t4wrDj06AsVmW6xr
 jurjn3aJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslQAKCRB33NvayMhJ0eJ7EA
 Ci49/QyBonFj6tTlibAF/GecKy1f4werx+qj80VTNMHp4lnZqaFjmcd5Mf36y+mo8ejHbBNVJk448Q
 TXtX8ILRoQzCPl4EhvAJIKLQdqoS9jynPhkVnN/BfMvt4Z3KGwIQGjNCcBjJZJdo2LVBs6qlWGsivm
 Lwru5OgO1kRvo0JYWs9INIqH2Pkua4sen+yy4repsxhxS1+pnY3Cbt+ijHz7Meq/BmJKjQ51iPoR1o
 uoB0Mk9xEPgAHTZZKA214XRQL2UsvUsf3V//3wuHX5Qu5GrEZ2XVNxwDw3hD1gyYFXNNac12iGWVYu
 Xi5pT5vu0HkqR9bGSepW2fKD+rAvqUpWqRJ2MDzSjrtX2i0K/7mQP79ZtZiJ1UQhraZyJkiWmwH44m
 8TAaLzuQhsPoAQtcfCmYnkXI4uU+INxioz23jM1kFZ2tsqevV5Top4womKXrL0xt0FfSDFnerrGWNr
 eqUD1iQ7PYDRYg0qh7O6WpkJHEEOiioIFSmTMBPgAF8/N475ppBZJ8n3HZcTiAOpUdtmFeC9WxHJli
 v1lo+blY9rjF7fmF3Bdf3VOLa7kZ6/esa1aZNHKOlls8R38Bdv6m2Xhr87ZvQZ6tbLSeJTmLkNLMid
 x8sC12HuRi8gFf9hB8eUEj6p813xjDgMr0BoYTnxpBxOP8CvB+bGmMtvTM4A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034457_416703_C46F2CE5 
X-CRM114-Status: GOOD (  16.25  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
add the code to register it for PHYs configs that sets a aux_clock_rate.

In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
IDs and also supports the legacy bindings by returning the PIPE clock.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 70 ++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 079b3e306489..2d05226ae200 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -22,6 +22,8 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
+#include <dt-bindings/phy/phy-qcom-qmp.h>
+
 #include "phy-qcom-qmp-common.h"
 
 #include "phy-qcom-qmp.h"
@@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
 
 	/* QMP PHY pipe clock interface rate */
 	unsigned long pipe_clock_rate;
+
+	/* QMP PHY AUX clock interface rate */
+	unsigned long aux_clock_rate;
 };
 
 struct qmp_pcie {
@@ -2420,6 +2425,7 @@ struct qmp_pcie {
 	int mode;
 
 	struct clk_fixed_rate pipe_clk_fixed;
+	struct clk_fixed_rate aux_clk_fixed;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -3681,6 +3687,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 	return devm_clk_hw_register(qmp->dev, &fixed->hw);
 }
 
+/*
+ * Register a fixed rate PHY aux clock.
+ *
+ * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
+ * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
+ * by the PHY driver for its operations.
+ * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
+ * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
+ * Below picture shows this relationship.
+ *
+ *         +---------------+
+ *         |   PHY block   |<<---------------------------------------------+
+ *         |               |                                               |
+ *         |   +-------+   |                      +-----+                  |
+ *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
+ *    clk  |   +-------+   |                      +-----+
+ *         +---------------+
+ */
+static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
+{
+	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
+	struct clk_init_data init = { };
+	int ret;
+
+	ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
+	if (ret) {
+		dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
+		return ret;
+	}
+
+	init.ops = &clk_fixed_rate_ops;
+
+	fixed->fixed_rate = qmp->cfg->aux_clock_rate;
+	fixed->hw.init = &init;
+
+	return devm_clk_hw_register(qmp->dev, &fixed->hw);
+}
+
+static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct qmp_pcie *qmp = data;
+
+	/* Support legacy bindings */
+	if (!clkspec->args_count)
+		return &qmp->pipe_clk_fixed.hw;
+
+	switch (clkspec->args[0]) {
+	case QMP_PCIE_PIPE_CLK:
+		return &qmp->pipe_clk_fixed.hw;
+	case QMP_PCIE_PHY_AUX_CLK:
+		return &qmp->aux_clk_fixed.hw;
+	}
+
+	return ERR_PTR(-EINVAL);
+}
+
 static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
 {
 	int ret;
@@ -3689,6 +3751,14 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
 	if (ret)
 		return ret;
 
+	if (qmp->cfg->aux_clock_rate) {
+		ret = phy_aux_clk_register(qmp, np);
+		if (ret)
+			return ret;
+
+		return devm_of_clk_add_hw_provider(qmp->dev, qmp_pcie_clk_hw_get, qmp);
+	}
+
 	return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
 					   &qmp->pipe_clk_fixed.hw);
 }

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
