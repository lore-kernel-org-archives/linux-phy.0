Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2A9C982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 13:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YW7xPW04J5Y4mVl6HYwWiuApCTREJJ8jxdVJ3nVoJe4=; b=L/piwhTxsak3Qw
	y79HCQ/UybkDArVrENe7EkYsmnb0xBZZQ1c9fWZ/o4BzveZ/N942W1r8yBHHZ2wNQJkVT5GgiHpK4
	tCMZPskUKBtAMrTi6TnIg7R41FxvNnTyfB5M/TdFzteEQjJTFDeSrhaepM1US/XG/RiEYLGtD6tRP
	MMIucWMbwXFtJasvTEWxkEBLa2sPOMC4b2XFnIFZIGQrV8d8xMQZUy/+0i155kFFarAMIJejWJWKt
	BJfg44SmhNJjnHT1ncCL+ClkVpx8tx5dCc1zhgfBTiUREcDGr1NwXmH/N9oLA0PFDEV+F4ffdlWSD
	eng6JWYCffp6sN/X8UUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5H-0000000EdvV-2QkV;
	Fri, 18 Sep 2026 13:56:59 +0000
Received: from mail-ed2-x29.google.com ([2a00:1450:4864:33::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5A-0000000Edt4-469R
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 13:56:54 +0000
Received: by mail-ed2-x29.google.com with SMTP id 4fb4d7f45d1cf-6aa0ee64afdso884723a12.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 06:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789739811; x=1790344611; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I0tAWo8cXsvcEAHoDAoVuGWldwoawSSoU2jMNY+PQMI=;
        b=Nywk8q82+VRJWNykN3kY90aNIC3bsyYocwX97IH9d6pr7zYQzP+R+DhGDFhuvZKj4n
         4c/TN4aSZImr1xQbYFwSTd4tGNNXWJ9fl+BqFmtLlNS9PLRfrZrLndtUReeRE6mlRVAj
         TnMUZi8ueth8WAms2tDytzjs1dZdE1dw+EnCf9uGPwRoDmLbzp33pf9Utq1CPKYpOJQ+
         7Qpi3RCgM2jqHoBXega6Cjnr4u0Q/hRp4CQmRaYmexKl7Qij7VSJRYLLon2wEar/AC+c
         3uN+SzHmdIjEzpzeTv+KVCceWDwhFIvmNDvrQaRW9lpLatlE9q2aw5EuwAOgnTpibkrk
         vl+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789739811; x=1790344611;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I0tAWo8cXsvcEAHoDAoVuGWldwoawSSoU2jMNY+PQMI=;
        b=VLZVkhydafwnr45K2FQFjYpOmYZFAx5V2WHrrIyoy04QdoKdF8YoAD4uDXpKBcw6vp
         QjeVGa9gE1xGf6Ea3PbZQPnyQd/BND9/eHuF7bclXIyG5aD4Rg/gaplbPkikOd/Hyrcf
         WnEwWIgW+cYBFP6AXfbBfNJwhnjrr4YUmVCO836fP14BlnwJkp0Ew+urhb0vntOYU8DT
         RXMWakaI219P6GdMd3DhGjSJMdWusrzy/rFgSVA1LU0YSWHoQRk1DFTQ+YIeEkHnCCiS
         A2AYigZ1r8rYhMRMAfJCF8fLXQ4DimIICFaqF8nDZW9QMqJfqpwcJ51ZDHhWTpHfQlYm
         H6+g==
X-Forwarded-Encrypted: i=1; AKwUvBx55MMwCLU0/5Pf8jCrsuc1dO36M4KWquyDPCdkvrDt71X+aSKeiTlXoB4DauKB6KS4oHU8w00dGds=@lists.infradead.org
X-Gm-Message-State: AFuF++lLMNmoZ5O6/zL1y8IEaAMF4MZLhnppwXR1K1mGsolR5rRW3pos
	OyySwB/hQjeFMql9eQtsVcsQA0tt2287ME39qm9lcgyRYXfd7XlwrKY1OQ8qUcX8st8=
X-Gm-Gg: AYBFou1pwkdf+XsjXkzD3RIU+ZRE7ZAPANxWufygZiFP5ZOFoEhAdD7tvP1vFHVffVO
	tqbcOjB7yMrm01P4cD2dDs5Pi6OUcnGQxWzkuUloqYZaTZPt8douDQD/0pADMz6QphJOsVltUmj
	mCJk223kfFg1h+RolWIfnU+CQn/tyNTYyMtmHYwPbuj+uzjnY82RvoFs44lFZKIc1ZDf0Qy/8hL
	esU6u3KUBbYiPZ4Yi7iTYJaE+Tf+FRAObTi6wC9SIl+UT/Gm/vhrKPOi29uy00SSgOZlAsFjQWM
	zCgHlFOy45ng6KhiPgj3S6iYab93h0U+9lzRTbovuVOEqCUMzJeJAlguONHxZeBuqWfXDrlIHi+
	Hfdsz2o8VDiIClFBpLt8ZHg/5EVre3rArpyL7f+270RO9AxBQJx6IojSdrikwzSl2LSYzyOsSwB
	8t7eyZFVCY5grdYiJTEFKTTWx4g8C0K8cddQTQhgxgYQadBASsZnsrnpN5NhgLtHeFZeSHVPe+U
	0kiqXdduROd54nz21w=
X-Received: by 2002:a05:6402:320a:b0:6aa:1cf5:6076 with SMTP id 4fb4d7f45d1cf-6aa577f4d79mr3531952a12.1.1789739810897;
        Fri, 18 Sep 2026 06:56:50 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa59730866sm915455a12.18.2026.09.18.06.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 06:56:50 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 18 Sep 2026 14:56:37 +0100
Subject: [PATCH v20 2/6] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-2-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4675;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=X+b9HWNkFpTSELC+pQKN2+ErKNjGyicH/BBE9Xjuc5Q=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrUMbqFgCjhyQpekow1DUdmmicyQGC0P3oz5uu
 7moYJGlheOJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaq1DGwAKCRAicTuzoY3I
 OrJ/D/4wge7bDfnNEDFG4/o/jA8PUy3RPzymClxjXzIvlhLZqejrR5b7qxaEBTZmhlahQKYcgfT
 qz2XZQY0799xUctCfuGYodol59ufPT7BquJ/MqxOvO9p4//D2kcNWeUyC877Ipp9gjw6/eSquML
 VTU0VJOxESxVQmy/d58WzHTw529l+YxJD3+SobRA2wMNGmsyHP6pUC7mkLwyabwEED/HNl6G2Fx
 3uDRo83VfSa16FCoD+mpm7JH79rYrjXqjbpFl5VLzPpCeE50ZeLFWL7/pPAEVi606AXZ9ogfdJh
 6p2Ij6SP5JXZ/a3lLnH4NxciaBbuJHL28CJZUxYITZw4wAuNB16TSxvF4MglJ1C2F2BxVhdp30W
 kfb1YbtmBpFDhB8FuBPgxTxa43Og2ufZJ9IxGjdoJ+x2ci7+41EfMHDxhGzCEnHQHhvjBoOVEC4
 /Da858uqeB9p8g1iGPg32wb5/aBjMzDQ1HfujU3x6vZT2KkYgq8WUbCufjxO3Gp4NrdWLY5jpib
 3ZfDWRHa4wugCdMtnylvNiqYyoGY5I9Mk1QLu0/Dj8zAf6kXcE1IiTVTUS73jNkydkThIWl4Tul
 HwmvnLn/rph3jLWPQwTGWOYMJlBkclkgT25uxZS8+OnLSYmLVNVCALADqJ7vzJGtMREgvLotnoT
 Zi7ETVGmzOzA2Vg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_065653_082518_1848A2E1 
X-CRM114-Status: GOOD (  16.64  )
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

Add new function phy_get_by_of_node() allowing lookup of a phy by
device_node. Separates existing logic in _of_phy_get() into an internal
helper method _of_phy_get_with_args() to allow for reuse in new method.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/phy-core.c  | 83 ++++++++++++++++++++++++++++++++++++++-----------
 include/linux/phy/phy.h |  6 ++++
 2 files changed, 71 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 89addd732bff3..42c27a2b45159 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -606,6 +606,38 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 }
 EXPORT_SYMBOL_GPL(phy_validate);
 
+/**
+ * _of_phy_get_with_args() - lookup and obtain a reference to a phy by of_phandle_args
+ * @args: of_phandle_args to the phy
+ *
+ * Returns: the phy from the provider's of_xlate, -ENODEV if disabled,
+ * -EPROBE_DEFER if the provider is not yet registered.
+ */
+static struct phy *_of_phy_get_with_args(struct of_phandle_args *args)
+{
+	struct phy *phy;
+	struct phy_provider *phy_provider;
+
+	lockdep_assert_held(&phy_provider_mutex);
+
+	phy_provider = of_phy_provider_lookup(args->np);
+	if (IS_ERR(phy_provider) || !try_module_get(phy_provider->owner))
+		return ERR_PTR(-EPROBE_DEFER);
+
+	if (!of_device_is_available(args->np)) {
+		dev_warn(phy_provider->dev, "Requested PHY is disabled\n");
+		phy = ERR_PTR(-ENODEV);
+		goto out_put_module;
+	}
+
+	phy = phy_provider->of_xlate(phy_provider->dev, args);
+
+out_put_module:
+	module_put(phy_provider->owner);
+
+	return phy;
+}
+
 /**
  * _of_phy_get() - lookup and obtain a reference to a phy by phandle
  * @np: device_node for which to get the phy
@@ -620,8 +652,7 @@ EXPORT_SYMBOL_GPL(phy_validate);
 static struct phy *_of_phy_get(struct device_node *np, int index)
 {
 	int ret;
-	struct phy_provider *phy_provider;
-	struct phy *phy = NULL;
+	struct phy *phy;
 	struct of_phandle_args args;
 
 	lockdep_assert_held(&phy_provider_mutex);
@@ -637,22 +668,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 		goto out_put_node;
 	}
 
-	phy_provider = of_phy_provider_lookup(args.np);
-	if (IS_ERR(phy_provider) || !try_module_get(phy_provider->owner)) {
-		phy = ERR_PTR(-EPROBE_DEFER);
-		goto out_put_node;
-	}
-
-	if (!of_device_is_available(args.np)) {
-		dev_warn(phy_provider->dev, "Requested PHY is disabled\n");
-		phy = ERR_PTR(-ENODEV);
-		goto out_put_module;
-	}
-
-	phy = phy_provider->of_xlate(phy_provider->dev, &args);
-
-out_put_module:
-	module_put(phy_provider->owner);
+	phy = _of_phy_get_with_args(&args);
 
 out_put_node:
 	of_node_put(args.np);
@@ -1001,6 +1017,37 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(devm_of_phy_get_by_index);
 
+/**
+ * phy_get_by_of_node() - lookup and obtain a reference to a phy by device_node
+ * @np: node containing the phy
+ *
+ * Returns: the phy associated with the device node or ERR_PTR.
+ */
+struct phy *phy_get_by_of_node(struct device_node *np)
+{
+	struct of_phandle_args args = { .np = np, .args_count = 0 };
+	struct phy *phy;
+
+	mutex_lock(&phy_provider_mutex);
+
+	phy = _of_phy_get_with_args(&args);
+	if (IS_ERR(phy))
+		goto out_unlock;
+
+	if (!try_module_get(phy->ops->owner)) {
+		phy = ERR_PTR(-EPROBE_DEFER);
+		goto out_unlock;
+	}
+
+	get_device(&phy->dev);
+
+out_unlock:
+	mutex_unlock(&phy_provider_mutex);
+
+	return phy;
+}
+EXPORT_SYMBOL_GPL(phy_get_by_of_node);
+
 /**
  * phy_create() - create a new phy
  * @dev: device that is creating the new phy
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ea47975e288ae..71c2e16397130 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -284,6 +284,7 @@ struct phy *devm_of_phy_optional_get(struct device *dev, struct device_node *np,
 				     const char *con_id);
 struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 				     int index);
+struct phy *phy_get_by_of_node(struct device_node *np);
 void of_phy_put(struct phy *phy);
 void phy_put(struct device *dev, struct phy *phy);
 void devm_phy_put(struct device *dev, struct phy *phy);
@@ -493,6 +494,11 @@ static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct phy *phy_get_by_of_node(struct device_node *np)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline void of_phy_put(struct phy *phy)
 {
 }

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
