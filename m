Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610ECC54EE9
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 06:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWoGZ55ppEbGZgPJS0gGCknWMgeqByzQDqesH33qLRM=; b=L+Q/6GwaRxRGeX
	yExVr0Oa3Z6yhnmVu4kZEPuRwW685k9vjnL8KejpUuNSk0PiZdDb9AbTs48DTBDl1LbexKwkNKqbf
	pXec/jbvozIv96LPfURIEhBIZLoZNOsfylDqlAQvW3o0YtddF/LhCHufSO+5LpS0RAziWtcLeh6/f
	pQJE/B5HbMr2sU61eMTAK7yzawWIZq8gHkRGfM331UYcfLw7FtkN4hABhbdG+7P0haj4lGe57TdR0
	TZPnYirTxSrk/1aCG7Kh8arTwrfnxrDLfDtTXCSnHfF3IU8igGUIWgFeb69Q870LM1SSJIr4pPqYm
	2NJKjI1QF0JHgkFXVBEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4fg-00960L-R7; Fri, 16 Sep 2022 06:17:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4fb-0095kZ-3t
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 06:17:49 +0000
Received: by mail-lf1-x12c.google.com with SMTP id x27so727411lfu.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Sep 2022 23:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=h15zYoPtFmkL9+pfwNW1mzpCDw+nxzJf4vGWrFpg24A=;
        b=kl9bLyNLLoMh3S6BCsesGgV0rfpcA0mbvlc12P/l1o2U8CSklGwnOOaG8xzX7gsMFz
         wla3Ad4K+vd14dMlog5GRIjRsSSB34K32/bWaEafBJS0aKLv20l0To59Efd8oOjgcNjJ
         21Dajd7KYMM/qI448oBEx9vdnf/hEXUMCmR65gE8wdd3x1/PEqbG+hiYP3pwz9La1uAl
         aJU/21Ucjpqat4LHzo53g2TPa+uonk6cVZbVdDrqosHr65l0Xc9VcDsJT+QPsWSpn0VR
         uUyPIkygFgQqOFOeWL6mcnJtUgJ8uGGOf8/XC1senuyNzE/UqW3f0mnFQCleanE021Yo
         OAiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=h15zYoPtFmkL9+pfwNW1mzpCDw+nxzJf4vGWrFpg24A=;
        b=sVAx5+B5poK00uYCjTEWVdfo3BFQcB4UYHOXPab4kjtUpAiNbmvQKT2Y8CGNk7kVnG
         H5IW6h5ayGEOqY4DGhNTo5wPiDRN/i90At/RAGzFVRRWzId6WcW4o/UG2AnrDU5pJw8X
         7zFvwFcULoCX6Wy1C3vgvqlOemRVkFboYdtyKgZw4DWOJAJZV2cL492GzJ7SxNPi82+O
         OMhkTqTicsjleGw+eLbVbdF6YZkUVyZxT4XycqqsYs43sxd9TPM8NXME/dl7q7oFBAa0
         qLZ2q1M4cbzcOGwrMzuAr7ck/At2KpJjKcIoZRdrWZQ+QGJc1FrTBKlT1ehhmxLsuW+F
         6QqA==
X-Gm-Message-State: ACrzQf3C62wwnF4STeN7F5REaQT+Ce8CY6L7owO7L9/GqU86tdHxzSls
	krV32p180Gk8bQ9PhsunUJN5DA==
X-Google-Smtp-Source: AMsMyM7Mca/LB0c/d4FbfBSjoIrm5mNDwjETSBwP5MtR+hsRhk//bUrR1me2tEHZ91ra8XKOOT8XpA==
X-Received: by 2002:a05:6512:3128:b0:499:3c1d:f9e with SMTP id p8-20020a056512312800b004993c1d0f9emr1116152lfd.634.1663309063290;
        Thu, 15 Sep 2022 23:17:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b15-20020a2eb90f000000b00261eaa819b7sm3529383ljb.30.2022.09.15.23.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 23:17:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v4 2/3] clk: fixed-rate: add devm_clk_hw_register_fixed_rate
Date: Fri, 16 Sep 2022 09:17:39 +0300
Message-Id: <20220916061740.87167-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916061740.87167-1-dmitry.baryshkov@linaro.org>
References: <20220916061740.87167-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_231747_209459_C28FFAEF 
X-CRM114-Status: GOOD (  15.45  )
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

Add devm_clk_hw_register_fixed_rate(), devres-managed helper to register
fixed-rate clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/clk-fixed-rate.c | 28 ++++++++++++++++++++++++----
 include/linux/clk-provider.h | 29 +++++++++++++++++++++--------
 2 files changed, 45 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/clk-fixed-rate.c b/drivers/clk/clk-fixed-rate.c
index ac68a6b40f0e..7d775954e26d 100644
--- a/drivers/clk/clk-fixed-rate.c
+++ b/drivers/clk/clk-fixed-rate.c
@@ -49,12 +49,24 @@ const struct clk_ops clk_fixed_rate_ops = {
 };
 EXPORT_SYMBOL_GPL(clk_fixed_rate_ops);
 
+static void devm_clk_hw_register_fixed_rate_release(struct device *dev, void *res)
+{
+	struct clk_fixed_rate *fix = res;
+
+	/*
+	 * We can not use clk_hw_unregister_fixed_rate, since it will kfree()
+	 * the hw, resulting in double free. Just unregister the hw and let
+	 * devres code kfree() it.
+	 */
+	clk_hw_unregister(&fix->hw);
+}
+
 struct clk_hw *__clk_hw_register_fixed_rate(struct device *dev,
 		struct device_node *np, const char *name,
 		const char *parent_name, const struct clk_hw *parent_hw,
 		const struct clk_parent_data *parent_data, unsigned long flags,
 		unsigned long fixed_rate, unsigned long fixed_accuracy,
-		unsigned long clk_fixed_flags)
+		unsigned long clk_fixed_flags, bool devm)
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_hw *hw;
@@ -62,7 +74,11 @@ struct clk_hw *__clk_hw_register_fixed_rate(struct device *dev,
 	int ret = -EINVAL;
 
 	/* allocate fixed-rate clock */
-	fixed = kzalloc(sizeof(*fixed), GFP_KERNEL);
+	if (devm)
+		fixed = devres_alloc(devm_clk_hw_register_fixed_rate_release,
+				     sizeof(*fixed), GFP_KERNEL);
+	else
+		fixed = kzalloc(sizeof(*fixed), GFP_KERNEL);
 	if (!fixed)
 		return ERR_PTR(-ENOMEM);
 
@@ -90,9 +106,13 @@ struct clk_hw *__clk_hw_register_fixed_rate(struct device *dev,
 	else
 		ret = of_clk_hw_register(np, hw);
 	if (ret) {
-		kfree(fixed);
+		if (devm)
+			devres_free(fixed);
+		else
+			kfree(fixed);
 		hw = ERR_PTR(ret);
-	}
+	} else if (devm)
+		devres_add(dev, fixed);
 
 	return hw;
 }
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 86140ac2f9a5..49405b336cad 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -350,7 +350,7 @@ struct clk_hw *__clk_hw_register_fixed_rate(struct device *dev,
 		const char *parent_name, const struct clk_hw *parent_hw,
 		const struct clk_parent_data *parent_data, unsigned long flags,
 		unsigned long fixed_rate, unsigned long fixed_accuracy,
-		unsigned long clk_fixed_flags);
+		unsigned long clk_fixed_flags, bool devm);
 struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 		const char *parent_name, unsigned long flags,
 		unsigned long fixed_rate);
@@ -365,7 +365,20 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
  */
 #define clk_hw_register_fixed_rate(dev, name, parent_name, flags, fixed_rate)  \
 	__clk_hw_register_fixed_rate((dev), NULL, (name), (parent_name), NULL, \
-				     NULL, (flags), (fixed_rate), 0, 0)
+				     NULL, (flags), (fixed_rate), 0, 0, false)
+
+/**
+ * devm_clk_hw_register_fixed_rate - register fixed-rate clock with the clock
+ * framework
+ * @dev: device that is registering this clock
+ * @name: name of this clock
+ * @parent_name: name of clock's parent
+ * @flags: framework-specific flags
+ * @fixed_rate: non-adjustable clock rate
+ */
+#define devm_clk_hw_register_fixed_rate(dev, name, parent_name, flags, fixed_rate)  \
+	__clk_hw_register_fixed_rate((dev), NULL, (name), (parent_name), NULL, \
+				     NULL, (flags), (fixed_rate), 0, 0, true)
 /**
  * clk_hw_register_fixed_rate_parent_hw - register fixed-rate clock with
  * the clock framework
@@ -378,7 +391,7 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 #define clk_hw_register_fixed_rate_parent_hw(dev, name, parent_hw, flags,     \
 					     fixed_rate)		      \
 	__clk_hw_register_fixed_rate((dev), NULL, (name), NULL, (parent_hw),  \
-				     NULL, (flags), (fixed_rate), 0, 0)
+				     NULL, (flags), (fixed_rate), 0, 0, false)
 /**
  * clk_hw_register_fixed_rate_parent_data - register fixed-rate clock with
  * the clock framework
@@ -392,7 +405,7 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 					     fixed_rate)		      \
 	__clk_hw_register_fixed_rate((dev), NULL, (name), NULL, NULL,	      \
 				     (parent_data), (flags), (fixed_rate), 0, \
-				     0)
+				     0, false)
 /**
  * clk_hw_register_fixed_rate_with_accuracy - register fixed-rate clock with
  * the clock framework
@@ -408,7 +421,7 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 						 fixed_accuracy)	      \
 	__clk_hw_register_fixed_rate((dev), NULL, (name), (parent_name),      \
 				     NULL, NULL, (flags), (fixed_rate),       \
-				     (fixed_accuracy), 0)
+				     (fixed_accuracy), 0, false)
 /**
  * clk_hw_register_fixed_rate_with_accuracy_parent_hw - register fixed-rate
  * clock with the clock framework
@@ -423,7 +436,7 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 		parent_hw, flags, fixed_rate, fixed_accuracy)		      \
 	__clk_hw_register_fixed_rate((dev), NULL, (name), NULL, (parent_hw)   \
 				     NULL, NULL, (flags), (fixed_rate),	      \
-				     (fixed_accuracy), 0)
+				     (fixed_accuracy), 0, false)
 /**
  * clk_hw_register_fixed_rate_with_accuracy_parent_data - register fixed-rate
  * clock with the clock framework
@@ -438,7 +451,7 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 		parent_data, flags, fixed_rate, fixed_accuracy)		      \
 	__clk_hw_register_fixed_rate((dev), NULL, (name), NULL, NULL,	      \
 				     (parent_data), NULL, (flags),	      \
-				     (fixed_rate), (fixed_accuracy), 0)
+				     (fixed_rate), (fixed_accuracy), 0, false)
 /**
  * clk_hw_register_fixed_rate_parent_accuracy - register fixed-rate clock with
  * the clock framework
@@ -452,7 +465,7 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 						   flags, fixed_rate)	      \
 	__clk_hw_register_fixed_rate((dev), NULL, (name), NULL, NULL,      \
 				     (parent_data), (flags), (fixed_rate), 0,    \
-				     CLK_FIXED_RATE_PARENT_ACCURACY)
+				     CLK_FIXED_RATE_PARENT_ACCURACY, false)
 
 void clk_unregister_fixed_rate(struct clk *clk);
 void clk_hw_unregister_fixed_rate(struct clk_hw *hw);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
