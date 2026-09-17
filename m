Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A4DC982D6
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMUfAGZ73J/oABNGhYrt1Bsara52EXfkPz3Qq9BhkDg=; b=Yj6+YYZrS7KyGk
	gCS9sj/yKaTxJT03qMdqQ+JmAaSs23QxIAtp2pFdA02+zHO6i6QRIk6lXWMsvrkh7nPvA7dHpKN9+
	qq7Gqc5wLJnkIBCCQaktEod7zH7QLPT/GX2ROHX+FTzRhm3Cxkh+a2cYsFOGPZzHAuSL4wP8RBdQ2
	LFVyDzc54prZA7cOr5xdQAdjUum2E4qckN6MfWtebf3IESYJvpY5PafDy+kVNmGNu3LDwU3gxWtQV
	Ni+0+wjGbFI5Eh1x7rY29n7iTAHjkOgNpFL4+3egVVHxAF8umsdddznCsKDMp/lCfyixvvjwuxx+C
	QX8yGIDP4Q5jwDP/0rzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzD-0000000BfZI-23do;
	Thu, 17 Sep 2026 15:25:20 +0000
Received: from mail-ej2-f12.google.com ([74.125.228.140])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzA-0000000BfY2-3CSo
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:25:17 +0000
Received: by mail-ej2-f12.google.com with SMTP id a640c23a62f3a-c254fa65080so144414666b.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789658714; x=1790263514; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=o60JRFM5WA2Unn1KPhBnuEVA9Bwozt76P6e95xSEIP4=;
        b=E5HUxMfxhJRLLnfIVa3mQVLaiy1VTmLjni0VnO1J7Y1Jb4Wc1PH1GFE5ha67qxGgTz
         nmMWFpNSPoTLSK2sO+oeGrTDNYn+hqH8zFemzvQXjDT1nG/LXg0dK++NTH3ts3pKVdBm
         lnglxHyUe22zQgeqdxyiXvQTp2DzoRd8bXhtc/cSNdaMi9GeEURa+4gwH0FoXtFtnsHX
         8bMcKOz78cNbwfcHMuBAAF6QE6KNvvMR9SyIhd+u7SC9eokc3osoUXwwo/+88bHE2T3Y
         1AvwlkH+/VrGu2/o85zYSAc4RT8LJ4UunRvVPU5S78GDa/lfCm6He1uPM0YQ4KdXKqCP
         ljiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789658714; x=1790263514;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o60JRFM5WA2Unn1KPhBnuEVA9Bwozt76P6e95xSEIP4=;
        b=BNw0EvIxdzqiaKKndaW5Ikk8avidr4o13r2cUktDsB7tGBeWocOs3d4+dyL+opPsFu
         47rZWMgUFEkBFdkS//cWJeZzFH2bGQR1k7l//mogprZ8v/6pm0VkVzkby/YAvTyMCc2Z
         RqMrCenqfuO7cOJid0AwcBXspAUBaLdlc2FABl9mj7YEIxlGm3Jp2Tapvqu+BpS/eZ2t
         i2fTsKrs8425m9tYgyoqIUdbDdRQzdJrdyMlmWvWVm1WPOxlpK2fDApy16SrKasI3omb
         nTvcV752dR+qYqqxXqrWbaOMg5vny7YYAtdeFQBt9VtqqVsqnsUI2+tHVno2khXR3knN
         jj1w==
X-Forwarded-Encrypted: i=1; AKwUvBxwbf6u9DGX8VXx+zGbT9jNR+6SJ6FHpTEHQZhCIxstcSXP/M7++HNq5QjD6/E1YwH8OkICa56P/Kw=@lists.infradead.org
X-Gm-Message-State: AFuF++lsxZAIYmFT+iTPoWtk8EzxX89KLvrrz+qMx3llFzOUJzg2Clx9
	X2TUVA7uFvIGugQL//c/HlXlpSgLvXEdeQz/7/FcSZxjLlHR5f31z8Oqs72jOqVYmM4=
X-Gm-Gg: AYBFou1hfK3CEk9MRb3S3UE8grEGkyxbxl1H+4HE+w44/kQsCwKAHU390SE9xB1Pjro
	X0pk0M7O3Nx+nffGGE25ek0Udia9AFF6srfLa7+vJZWr+Ww7n8uTO5i6Zlj8NX/vrfoOOKyZZ6T
	16EfLfOCy0DAWto3C/0IdRe5qPhwuVlgzzr7RQUz9vKUbX9qsmcwFRkgIpfqh2HSPEGz2adUMB6
	0jHvRcsm1AXx3dFjQnvYs0pskj2UYW0Ib77MgPcWEUlZiE3WepwoEX4fVAq/3A87AQXD84l2wZC
	HWd7Y7CIV9lGB3uwimmQs/4mHyQK8aO2WIc4FUx6VJFjOBfUY8C2eghV9fe8JlvODD7eebFDvSk
	RJF0tDbfMOaBO+bt0SPJEDUQhRtyHxDV/xGoyuXj5TYM1zxDNRIFFcKIpfO8vlzG7qLvwODNrWm
	+MBJj/Au5wlYf8DpqQnHPlJUNzQZiI4d+6YhYXqPqGPxGM7iiG12Q236Q079fYRKbe+sPVGxBXm
	78JnclRLw==
X-Received: by 2002:a17:907:9710:b0:c29:5021:f6f8 with SMTP id a640c23a62f3a-c29e53242afmr538141166b.36.1789658714541;
        Thu, 17 Sep 2026 08:25:14 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de48755asm310587366b.24.2026.09.17.08.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:25:14 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 16:25:07 +0100
Subject: [PATCH v19 2/5] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-2-21ad8a76e941@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4777;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=mbGaKzht6FTlTs32snTkWI2to5iPenkW5iUX9UmH+is=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrAZUHU+EUBv2jfs/6uvx3XSpJcXQOAF2wkNhp
 4xPSk+jVhmJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqwGVAAKCRAicTuzoY3I
 Oj/JD/0cpegEhQJY+utxEKWKYDFyWdT/4jJLzXhcgV6CvyR3ZjDIylxCRO7VLw1hbn3ZNUBqTeQ
 RvlFIPUkPiwHrwxKcQ9IV72nAvFge9vf4EOfwOG4m+35E2LoSKyJDcQpl72qnizIBHpDw1b7pom
 pRyy63h3OTJqnNk1H9yW/2Iy/ngUemQLZNnght68QnFCowIjufu6y4ZgMT6/q2vqpSFe4NS2+9Z
 hWA8mJtFxiG5WHF2maX5EONgaQ+7edW8wWKcUVHBynIJiBNE2j+am9P/7I4xVhnQwqQNUV52F4C
 YlPz4hDIfD493XC7Ofufes2KwGNqimwi1IRnrT5cDfuQtF6vy6cdm0UUWsCuHwI5y6sggZybpnG
 IF3Q3E3zxQ20LeABfZrPdOx4MH7cyEeDsAmDzbvnc+39VXwbDpyeffztcpQCqxdEJnSQdUWD89U
 IjztmonFiLmRbJM1dx1URij3pdGi3PVSARx6A1LozuJzxvgLiZ5d3K197MRQJFMpt39L75Hipda
 WtenBqsGgQGtuOM1ijIW4X1yWjmAL4IJiCIjGYhjSz/5n4Z8er/nsQEu8Optsy5cj2K64qNWO/R
 ZeLkRjGYUKCT8yTBBqH0H05rUwW8/oZ3PYi4HsKytb9VVzxr643QhzzBzp3qyk8CrQGtTxUMQdn
 A5lPsQBjVKU33+A==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_082516_845213_5FB99B55 
X-CRM114-Status: GOOD (  16.42  )
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

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/phy-core.c  | 87 +++++++++++++++++++++++++++++++++++++++----------
 include/linux/phy/phy.h |  6 ++++
 2 files changed, 75 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 89addd732bff3..4a8e1d3cdfe75 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -606,6 +606,38 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 }
 EXPORT_SYMBOL_GPL(phy_validate);
 
+/**
+ * _of_phy_get_with_args() - lookup and obtain a reference to a phy by of_phandle_args
+ * @args: of_phandle_args to the phy
+ *
+ * Returns the phy from the provider's of_xlate, -ENODEV if disabled,
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
@@ -1001,6 +1017,41 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
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
+	mutex_lock(&phy_provider_mutex);
+
+	phy = _of_phy_get_with_args(&args);
+
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
