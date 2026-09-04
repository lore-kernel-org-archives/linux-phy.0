Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89331C624DE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 11:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqJinHdpqTdk21BBKzOXU+0/QgLZFo0NJ9iHLaOLZkI=; b=F1ZAaRHjHoojEB
	+mkEYPedTMN+2W42AJkaCothT9RUebs17+AumCxZAUJvkT19K0g9LGrn+JdhlVF1CRcK0Eb9qUPkt
	5pw3jianbje84i6QQA84i7nHJC5VZ1VeUs2arl3jUplLMuFs1rMYbcsclDXrcyNCgOVmG2g1lm+IC
	89L83ZpL1lpOdXn2cgHMWeb33i8+mAn+trv9uBCanvTn95DwbrlbAod1LdcJDiy2Svsy4SCBu1sih
	F1Fy8wOeMRQNnlLDwX+6cRr7G+lk2gKmiiwTE2qJNyViw+Lo8JUSW8b0KQJZCB02xglFh3IEbesO4
	18VtdG06UJb7yK+ME+og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2STq-00000001wuV-0s79;
	Fri, 04 Sep 2026 11:53:14 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2STk-00000001wpR-2cFI
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 11:53:12 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-49b965570d7so10314895e9.0
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 04:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788522787; x=1789127587; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=e1PFlqCRSJj+9gQ0phuhy0LX1kvo9/cNYZfE/2Gz8jkON3B9oGCfIWIDWNIwvHSQ0w
         pRqrpkYvHnBVsmkQds3MMMz/yUVon1PuwJAN6lHa43IGQS8WhW1PgyyJSUU0pLFLwlp6
         5gRpY4E4+hMrNf8wDBmCWFuWQ0w02mfS0ftx2iYrBX1wWMeD3NDe/hFMtrrFDkn68WVh
         uUySRxiSEk/hTbhNsfcCd4QFkqmrtEZOQ4nRzACbR0Vsls060MNDtjY2E6zhCRWsEbmU
         cDYty2FbzsF/EXqOf/TEppziMI78QKxWBq1K38NcE9hD9gQH9PIpqJ9rUbzurp3iQ+ix
         69zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788522787; x=1789127587;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=rApYf29MWtXBFF3M2IZ9rGi5YyNaKcMQFCkYrqxUXk57f1tndpGlQbmu8RkaFXeMQ6
         YXthzBnJcto+VPX2eB7TTxFRHO5wUUu3eZo3XgLON1FsBTE3vSSzDomUJfChjecSVzBB
         3FUPD+GdVL2VkZrrGXJoAVWXNdJJPSaSVJQ4Dl+VSMT1aFSCivQL5xUikq3x4kIdC8I+
         +/S+C/zga4yT6l7wYUfu/m1FADckC30fsyTT8PmGeSw1LR1XGwsOIF0ehWqIQ+2v5mLU
         eWduDT7mmTiBU56EgS1EZN80o9VmXX061I9AggiPC4ODz7S4zhXRkZRXGAJErTMrW3V0
         vZOg==
X-Forwarded-Encrypted: i=1; AKwUvBx3/y0mfOvAcrAHjL5BYcyBOImAmZ6MD04Uus6gTj62D7X0c4mcAgWssSSRUkoHGrLQ8cUPt75Cqg0=@lists.infradead.org
X-Gm-Message-State: AFuF++lmjz2sR5ZebgFKb1OkZ5MgRfTVpYx9vlm2XB664YlUwbKMOdyK
	L5/mwL2zR2C3+yNPtvQayTkxUOl0I4zgZuQdrHK+csmHHHzRex5NMMi0RVF5Hm8AdMZ75tNuVP+
	ekkTPxKE=
X-Gm-Gg: AYBFou0VqprXpOlchmHG7Ppb8kaHeXMIuZevxko6SQy3eiqxdCG94E44RgaQwLKnXUW
	4iwsm1RZ4ic/KNA5Z6lAWODGBrLn4bnrwwc1Ov5fdA5gA7hdaZ7Ub1gZwkruShGJqGzbL0wRFg3
	Q+eB97q+whvpbHdgu+rAdl/HesAG7OTmbi407ooQbRWf61UypwhmPSRykTqvhZqxOeGAuWTIwuB
	DmuvWoYz/K3hvMcTDUfsvjNeHe2Bs/u8AO2QHhwim0VNIoooSTO+W4thSq/jKBNmrsbgZ3VeTtV
	eyj/otRRwnXqQPBYIqbYGbpJMFB2RxSnrlFa2W2K39OYJexUTWvj/iPKDJHqFzsrHZkREPXDu5u
	0tKdsO0MR4zRGvb2J8g8SXmuyfonMIDlr/bcAsV21W29158D4GiNbDx5OxjctDvhbxkjlDaPoCg
	fvpY8uLHWCMLzGqpm6LsabJXTVd1xSuffPTaCWldSvJtjoubjGp7jEIymCcfYdNx1giBPLIvZq
X-Received: by 2002:a05:600c:4fc9:b0:49c:fc6e:8cb9 with SMTP id 5b1f17b1804b1-49cfc6e8e1emr26351795e9.29.1788522786683;
        Fri, 04 Sep 2026 04:53:06 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.237.179])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885c5bbdsm5474207f8f.36.2026.09.04.04.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 04:53:06 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 04 Sep 2026 12:52:59 +0100
Subject: [PATCH v15 2/4] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-2-68b7916e7a3f@linaro.org>
References: <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-0-68b7916e7a3f@linaro.org>
In-Reply-To: <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-0-68b7916e7a3f@linaro.org>
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
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5277;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=jvWI5bCo2G0nPMiyIWWUCCvc8PV85ddqSgmXfNNkRqI=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqmrEcz6YX2Qfye+Tuh289sTURyVPCK9pk4RNQN
 BviaddB7NyJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapqxHAAKCRAicTuzoY3I
 Oln2D/wN3GaKgADkAMxwwdkbuS+Mn5CoPHU4MH9e8qSHKrmL1okdAu1Io0zfudgzLNIbNwaoLR4
 bm5c3d15ckYQW13zIMAgiW49AOzP5Rbch9LC0MZN2W+C5E0rZEyxXpzIPkPm9374C6upY6ky+8R
 51WqFeEKzHnA3+moQ+upkojdoua18kAsb5qEN36YiTXCb9E/KfFViv517IrRk+l+sMbx7wKIKdF
 KhhWYIl90Ba2WN3Sk67JeDyH3DwXL2H/2CtIW2IDfXSiY58s4YqJsR6q1ilvwgJAS1B9+d33rY/
 /bMvGOVs5UKKJAGC1s9OLIMIj5yqtHiEoMuD17JclxBK8+/5P2gxPlU0n3h9h0yBOr9a991Bdby
 eHG4bs1RzQTuFBV5qzMubfpaRQj67jreuXOwhi51G0jSDdLCGaEco7pfkahW3de4XSN/NY6cGAd
 BV8DDUY8sxdcOH7ETQhXW0lvO1F0sbkeCvcXQ+4tEPv6CCDW50Sdju40xf70UuEflLIF8GFNrOg
 nh6Wi8edqmTFxGh4GoGTZJi0WJFt+RbhrMd0UwyZhbd+peWbCJUH6KZZrTA7OxzvNi1iM+PgFPH
 DVY1c3ed3MdyKLn79soDGQhWuImRVBid+55HhymfDq3tatQxc0BbfjbnBwwtIEyI3e1/h0Mrfu6
 1mG1BTveYnk0mEg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_045308_707705_0855A98A 
X-CRM114-Status: GOOD (  20.59  )
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
