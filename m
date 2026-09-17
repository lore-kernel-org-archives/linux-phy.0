Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8A78C982D3
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqJinHdpqTdk21BBKzOXU+0/QgLZFo0NJ9iHLaOLZkI=; b=gnRj5YXEvT8wRJ
	kaKuLeNWC3JS1zlH0v4JlOI5D1lErD5Nm0bP+SsiszOoecxKSOWxzfSj45JIgzKQWnH7Vs4DN1Ms1
	QJ9yHeQ8930xbGxBS5vAaF5DCnJyNdt/auLD88gZVeW4VpTD1zUauyCqrEDz5RT0fwFTa9wRaXGZV
	KbH2M8OgBoqvW8QDY7iLMV0kOTACdDgXc43ojUcXhducOCjgJBH7g1O9ydkjX4dGrqAWccLDzQwg7
	UUXqmlFaE82IaFskTOOS50OwHTIulEKQBkNQ92pdPTSPa6yl3nQXsCljFjhLlznFl2z4b2vLXneCe
	4PHxB3mnd/m8m/7+tRWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yN-0000000B9tQ-1be0;
	Thu, 17 Sep 2026 11:08:11 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yJ-0000000B9rK-2Zpv
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:08:08 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a9a2b95b72so1109106a12.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 04:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789643286; x=1790248086; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=hg4k5fnIL4loAXQW7ZgjKbDRY5019HkTcUl5Djk5W2x/TJUFBP9kNb9aVSzrJVGjya
         v+UrifCovkHxBz7VzXmRWJURi8FnizHWNcfsgWTCAaPkKZv3n8bYsfrYG+4LqNsQbkWA
         mHBBrXqnML9jALnrdHfGG03wyc3If4Uvma2sEJxiq98DykimEsqwlqIM2+nJFzdjiNex
         tpjGRE6KF8lhd2VLIM22VhyzSf98/Z9zpLCmgsUfebJsYLSoUmdqwkP4JYIAFsA2TS1E
         cnAGCcC6xIrobYajleCAVv3tAk34VvrVD1ls9uHuLosvmlsFuvXqZmNvmEBYAyx7erFq
         nsZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789643286; x=1790248086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=WbNMW6aUMlhlvnwDqhGkUMNoMf1mMeArO6ixkpL/IrHFxNcju7mfEd9NYuiErjCqEZ
         qik2gcmTz7BoxkqD9DjhSUVWFzwmsalv0H2R9e92BY9FF4I9OUNwigat/A2dSa7xeAVg
         7I9aMc7ixPmGJLD92iNc4m5Wh7tiTAiavIsewnR+iec899M2vCFjknVFnF6ozOgOfxAs
         9LIcF45064A2TuTD2Ca/edEazTXN/4qaYNBlnPHuoCOmykN4S/a6Z6tdxEz5pZn8Kwsz
         VhUpK7U5uyfj316sJF2lxJteelUMwjfjtnZ0aRatLYdlflrZHICa2Q+LZOAUTjKEil9h
         mTmg==
X-Forwarded-Encrypted: i=1; AKwUvByz5+15XpIksvfPKP3O+s1ngEs8cscBcUipSpAwTy6TYZQtRz63M9hnXT/n/r0IUHnQ3w2U5QgVVOw=@lists.infradead.org
X-Gm-Message-State: AFuF++m/XEhrXa8Lrh2w9iLt0hqjbuGYuWdzkUGMBEoYKBnMIaeleDHu
	7YUA2pFBYbJiRJC/loZS/p9e0+YkkJ3XjsIjiSDjX/jbL7FnYINEK1UImPNlH7O8VIU=
X-Gm-Gg: AYBFou0VFV6MthUhNYpbBY3/V6hCOQalHlisXgmYxNd18FaauKD/QaZcPM4I24krlN9
	5LfZ454Ju64o6pKV2imBa4TM/9mAOAdt3Nh4Hmhynqnl+m9mLK0iKs6+bZTdlJjtRwyn4hw0Uuo
	gI7w23RIvzdYg2heQYQ0N3jBRKgR2dvNYug20sBGXY7KIjK8iekEIIxQSAbWGKv9fpK+FM2YrFm
	SkQKx4woE2E6+xSTAoU0oiJAplaBt8bF79icO/Q3FyvKULnLhfAvFe6gZ0LB1m6WlnJqSMGQhs2
	acf3yQfECHWAKl15UB0bEZBmkil+AXFVTJl0EQgBt2iDGNenV7Wo0YqtL1iGr1O0B4xGH1C9x3X
	73DdJL4iQbmn8bY9ITMpT9UgU33Tww+NJ2Htf7jef1uAVejSdf3Gpl2XLRrfQbFeAxsQg8Vn+zG
	M1pguXVHDOXtVosRqMYnPh7voO55aVRgW4g/Vshf6CcrfWOLYGqw/a2SAGdKHIwyxXYJm9RozAZ
	D3LXmikQ4qa/j8YvKBY
X-Received: by 2002:a05:6402:4613:b0:6a9:8d5e:66a6 with SMTP id 4fb4d7f45d1cf-6aa22250e8emr3965332a12.11.1789643285855;
        Thu, 17 Sep 2026 04:08:05 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1d27ad36sm3175656a12.21.2026.09.17.04.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 04:08:05 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 12:07:55 +0100
Subject: [PATCH v18 2/5] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-2-f85c9103177e@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5277;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=jvWI5bCo2G0nPMiyIWWUCCvc8PV85ddqSgmXfNNkRqI=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqq8oNQFwYjOrE5sJSPDVGnBsCu7pHv0Xs4Nip5
 +q6A5L2XnSJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqvKDQAKCRAicTuzoY3I
 OoN/D/9/ujwtfypWaiH4Z1lIQEe5mE67i5ps3oTGkIyMPMGUlL1YT4d1xW65q1Hb8qHoTMqKOIY
 7MB/6mlluGLLvEqx0lKoFOMUI6eklV7KSqaJbzQU071gtGJCXyxQ71IfPienvv2DovfDawKIQGV
 E5cWLUjeH1d/Jz7GwXQ7aXduTbbE6AvhJMFkLJ4IBJpMjspjPFgVzy08wnje3bdEzgpud0WvQah
 HZ05ort2X2ceV34Xq/ohdulHB2ePbsw0K/WGSw0XBjkwJJGrxIux31pJJezuqhJv3stLntTIgdi
 oVi0FSUTiHWtJqVeLZBJBpAS+uZUaYE04bO0tzluUFDG1Cl5OFmmjHYpBA4hIVYTJB0BNGB8eQr
 CCNps0y9bDpFf0ICj6O1Zg+whA1H7QTYlpP01ZBuxJg6Uvr+u78uol404/zLUU52PHL1Rgm1np1
 P13peA4UH49/RzipVuUqda09koVEKMzn+MNt/U4JRZlYyfaqc082baNNyUErJrQVLfpZcLcDe/D
 G8XhN/sg9hZWojTgel2EECFFHQOuZMP3/IKT6d8vlrHP/M+sHe33x8ZV6tf74tPCrJS62A3wBe7
 MDow1qYEbg6bd9QBTH1gXDyacLiZ2DaYS5EXTamnnWfZ+2bPCZ53K7lfrF8GUvQcvhNHzQrnJz6
 fXC5li+1i8oILnA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_040807_697584_FDF270C6 
X-CRM114-Status: GOOD (  20.21  )
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
 drivers/phy/phy-core.c  | 95 +++++++++++++++++++++++++++++++++++++------------
 include/linux/phy/phy.h |  6 ++++
 2 files changed, 78 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 89addd732bff3..490a7cde6d40a 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -606,22 +606,51 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
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
  * @index: the index of the phy
  *
- * Returns the phy associated with the given phandle value,
- * after getting a refcount to it or -ENODEV if there is no such phy or
- * -EPROBE_DEFER if there is a phandle to the phy, but the device is
- * not yet loaded. This function uses of_xlate call back function provided
- * while registering the phy_provider to find the phy instance.
+ * Returns the phy associated with the given phandle value after getting
+ * a refcount to it; -ENODEV if there is no such phy or the phy is
+ * disabled; -EPROBE_DEFER if the phy provider is not yet available.
  */
 static struct phy *_of_phy_get(struct device_node *np, int index)
 {
 	int ret;
-	struct phy_provider *phy_provider;
-	struct phy *phy = NULL;
+	struct phy *phy;
 	struct of_phandle_args args;
 
 	lockdep_assert_held(&phy_provider_mutex);
@@ -637,22 +666,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
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
@@ -1001,6 +1015,41 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
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
