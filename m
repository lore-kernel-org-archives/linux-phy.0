Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D403C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 09:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCK5PMFZexFZov+N+yVPWXgBpxLtmP/saIgAWLi7Ld0=; b=XV3ZKUHoSBkRo9
	v8I/8W3wffpxEWrN4mDEe2l02Y78DqEbhmPTPbfKkXeqCRfainJncKhwiFvJpFN67wGg8rDRS1/pt
	Jx2Irkd3j6zGzp0g6FhS7e0f+fzWc7dQ+ofMmMmI1PwQWHMptdcrt7nHwuzE5rRp4jbWDHa9NyGNb
	1pyyd6dRVE++NU20vlO4EHqPKw+gcI+byNvBq99aJUtc59+wZH04WV3Sj7rAJX9r3Xw5wf6My25CR
	fN5mBh1bsXIWpBWhaYHfpKroqqHPVezxrkySBZuj+UAjIyupmSg9eFNxBLVU52Z9q6S321H4RS44M
	k6GcSEwrAYqE8jLFCx7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeE2-00000004qYe-0sPf;
	Tue, 28 Jul 2026 09:35:50 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeDz-00000004qX3-1lkT
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 09:35:49 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49548e01d02so18138475e9.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 02:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785231346; x=1785836146; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+KM9DJOnrmlW5Q6N+uSaGx7qHAnhN0rS4tyC6ETbAVY=;
        b=XR9EpMDDC9vXFRcWY/3kuV2viCo0r+XXER8vdTCBK4HxIt92Z12LLt3Ks7Ex3RIVRz
         JB/rctYzYH9Fje+bVK4GV6OWgk38YZqOotu2yIcUE6Ch98YG+0ZQlrreZ0EZTFpH6zxv
         RrjWt+2Qo+pScUTBPW/zCvNQuh3QVR4dDpxXQnGTkqvtsggChZRIWIcGpl1EX7vJDM+c
         EsTu9yjxhNuliE28uNx9v+M9YhtZzG3Q1+akyj2/O0LOM15443EGWwI1ooZpnv2fLGbt
         DZ+7CapZttWk/xTUFKQnNxzFtJNo6D8GJ7cobioR9a5VeBmNoKFzcC1tZG/12LUBmoqz
         2UGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785231346; x=1785836146;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+KM9DJOnrmlW5Q6N+uSaGx7qHAnhN0rS4tyC6ETbAVY=;
        b=sZn3TX2hVBYD0OKGnrZHaYROgKpV/+3Wtvv5CvPmxpTafbBXRDjjVmyMreyT+rP0W3
         hf7FVBeANEy5VTN+uRdLYdJOVs1tB55MVLfYbpOaWYAoeGAa/2VWycOqewOfEcCOGVbL
         YxxYqbbHPqQtsA+ywL00IP+A/AvwXeWkla3Bcs8Cjbs35u0rx/e3gaDS4tIjfUqMze4g
         FU5eEV6M//US49GhVbFfXAepMtaED2Snnyu2DiDqfFYtL9IawEJFTlKX4iR//af4mf2c
         AcLl1ReKRTySNsuozebLd8frD1oP5i4sR22RATro8gpD450JgcQsG29E3IGksgTj9rEb
         Gd/w==
X-Forwarded-Encrypted: i=1; AHgh+RqgM7TmO3txX7m0c1REW9FRC9GkPY5uPHsCHCWwYQvdvVzJa+z5lGlNLIz+sF8ixBerqfrJEZSn22k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/Npl3Vm+WNDa1GvvPtXbM5ah5/d0YAgwsmoaoZ4lnxMrYe447
	rmVF4JGBWCzjlpvk3Cv+n6xqcWD/24EwRMkm7yjpDtMjZrYh2ndPAEwbEQeqVFhV9YE=
X-Gm-Gg: AR+sD11pCDZEqHwWlFfH0IqeDsgmN9f9x5laZpD3JOoJEnFCqSoRCAJTEV9fXRxpIzO
	+YqrNE6hlcFhrXwJ9tXn1YR9CTxHo4ebIfIKRbHjTa3cj2S/o7ai497LBmxYcUvgqPEqsW/HjbY
	K/H5OUozdKhGc7Lxu0QUyh5TA2FHIES7v2f5xD20QO6zDB/BwQwEFBmRGSrDyCM5KlK+MZBgx/W
	ksFioOks0BTWUX18EcXC2ZTgkOyqQVxMKxN92CvPJn3x960iOLghzrwca8YB9fMTo/W+yTaLtkN
	AGni+4GphI/6GbSYGJXQGmaVB/0LX7pM4/hv++S85Je8aKe9a2WDcuwIE75j/j0swA3TsIG3gL7
	YADqkntPj2QaOW118TCQlObysV9lc3R0vwwqW4DZcWHqu+friJVnSFftGOwis2WaVe3U38tscCN
	vSXym3dxj+ylcU2ZecupiAbrg=
X-Received: by 2002:a05:600c:1391:b0:495:7888:281c with SMTP id 5b1f17b1804b1-496c60c1c42mr16278855e9.0.1785231345518;
        Tue, 28 Jul 2026 02:35:45 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c4632263sm68190825e9.15.2026.07.28.02.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 02:35:45 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 28 Jul 2026 10:35:32 +0100
Subject: [PATCH v13 1/5] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-1-ae811e2f0799@linaro.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
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
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5579;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=P97ou6LhnmZop/zMaTggD9yyLW0fOXd44DlYlbhv9fM=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqaHfsntFYW3ldHrzV1oCeA5iGKzUBhevD6ZJ1J
 VHNcQBiOB+JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCamh37AAKCRAicTuzoY3I
 OnMIEACqh/dOFGxCyT373Qqzk5Uf+OwaihSIZllxMugWHSDrAJR3GlHPB8qRs5PNeiADQy3aYvT
 +6bLY7XmhrfykBrdlN+cDVTft6VS4Nsh5ZAiSX2DL20SFJnaOmhDc6bYYkQzK/VT62sss/nOPhm
 wYJ1+y4GuoO86lz7AJWm9Do39zLrYG23lSU2IlIGoHxoCqqSPgCJD+uRC6FUECQRxP8xJPhVNQF
 2PwgO5tZcSsbX93uYq2tidHjVfzv76yQWX4+Q+geGkVPQohnbWiAd8aDJcH9ekq93NwXs3Q9pyg
 uFPlHtcws3v4ECseM4GAs0MIQfiv0qDwbCJLW+v7auqkV/ArbcCS3ugso0K0VPxaqjrF1ENpYj7
 R+5GgYCCZqtgZW9ShEu6jcUbDzsPpmamyK4YuKi0ApXM0NmIjWwjrUzABeDKjCZtFIjvqCr9cBM
 g4kINvpASyJuRemnJbKW4s50qBevFYqyjCYiL8f0kN8vpFA8J3Tz7tTCgeD0K5yPH9SngEd4RWY
 +Ch3sF5aXpA2HfBmEELdUfQV0uD+qcoZYiThwrvxjDNRQby8Ke9KbNcPrEXdLtGmHLIKnpfd5wa
 jWzBSvVw2/QgThxuX/WXGrNzw5agYV1wvCHuj6FrW5KIvVOcZeMI3PspD6rwOr9wug+Ns2tORFo
 l99zBEDct5hGYlQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_023547_508392_6585D333 
X-CRM114-Status: GOOD (  21.99  )
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
 drivers/phy/phy-core.c  | 95 +++++++++++++++++++++++++++++++++++--------------
 include/linux/phy/phy.h |  6 ++++
 2 files changed, 75 insertions(+), 26 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53e..ebfad5325072e 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -607,54 +607,69 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 EXPORT_SYMBOL_GPL(phy_validate);
 
 /**
- * _of_phy_get() - lookup and obtain a reference to a phy by phandle
- * @np: device_node for which to get the phy
- * @index: the index of the phy
+ * _of_phy_get_with_args() - lookup and obtain a reference to a phy by of_phandle_args
+ * @args: of_phandle_args to the phy
  *
- * Returns the phy associated with the given phandle value,
- * after getting a refcount to it or -ENODEV if there is no such phy or
- * -EPROBE_DEFER if there is a phandle to the phy, but the device is
- * not yet loaded. This function uses of_xlate call back function provided
- * while registering the phy_provider to find the phy instance.
+ * Returns the phy from the provider's of_xlate, -ENODEV if disabled,
+ * -EPROBE_DEFER if the provider is not yet registered.
  */
-static struct phy *_of_phy_get(struct device_node *np, int index)
+static struct phy *_of_phy_get_with_args(struct of_phandle_args *args)
 {
-	int ret;
+	struct phy *phy;
 	struct phy_provider *phy_provider;
-	struct phy *phy = NULL;
-	struct of_phandle_args args;
-
-	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
-		index, &args);
-	if (ret)
-		return ERR_PTR(-ENODEV);
-
-	/* This phy type handled by the usb-phy subsystem for now */
-	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
-		phy = ERR_PTR(-ENODEV);
-		goto out_put_node;
-	}
 
 	mutex_lock(&phy_provider_mutex);
-	phy_provider = of_phy_provider_lookup(args.np);
+	phy_provider = of_phy_provider_lookup(args->np);
 	if (IS_ERR(phy_provider) || !try_module_get(phy_provider->owner)) {
 		phy = ERR_PTR(-EPROBE_DEFER);
 		goto out_unlock;
 	}
 
-	if (!of_device_is_available(args.np)) {
+	if (!of_device_is_available(args->np)) {
 		dev_warn(phy_provider->dev, "Requested PHY is disabled\n");
 		phy = ERR_PTR(-ENODEV);
 		goto out_put_module;
 	}
 
-	phy = phy_provider->of_xlate(phy_provider->dev, &args);
+	phy = phy_provider->of_xlate(phy_provider->dev, args);
 
 out_put_module:
 	module_put(phy_provider->owner);
 
 out_unlock:
 	mutex_unlock(&phy_provider_mutex);
+
+	return phy;
+}
+
+/**
+ * _of_phy_get() - lookup and obtain a reference to a phy by phandle
+ * @np: device_node for which to get the phy
+ * @index: the index of the phy
+ *
+ * Returns the phy associated with the given phandle value after getting
+ * a refcount to it; -ENODEV if there is no such phy or the phy is
+ * disabled; -EPROBE_DEFER if the phy provider is not yet available.
+ */
+static struct phy *_of_phy_get(struct device_node *np, int index)
+{
+	int ret;
+	struct phy *phy;
+	struct of_phandle_args args;
+
+	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
+		index, &args);
+	if (ret)
+		return ERR_PTR(-ENODEV);
+
+	/* This phy type handled by the usb-phy subsystem for now */
+	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
+		phy = ERR_PTR(-ENODEV);
+		goto out_put_node;
+	}
+
+	phy = _of_phy_get_with_args(&args);
+
 out_put_node:
 	of_node_put(args.np);
 
@@ -986,6 +1001,34 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(devm_of_phy_get_by_index);
 
+/**
+ * phy_get_by_of_node() - lookup and obtain a reference to a phy by device_node
+ * @np: node containing the phy
+ *
+ * Returns the phy associated with the device node or ERR_PTR.
+ */
+struct phy *phy_get_by_of_node(struct device_node *np)
+{
+	struct of_phandle_args args = { .np = np, .args_count = 0 };
+	struct phy *phy;
+
+	if (!np)
+		return ERR_PTR(-EINVAL);
+
+	phy = _of_phy_get_with_args(&args);
+
+	if (IS_ERR(phy))
+		return phy;
+
+	if (!try_module_get(phy->ops->owner))
+		return ERR_PTR(-EPROBE_DEFER);
+
+	get_device(&phy->dev);
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
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
