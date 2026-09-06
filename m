Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3FB8C79FA1
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 14:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqJinHdpqTdk21BBKzOXU+0/QgLZFo0NJ9iHLaOLZkI=; b=1ht3bl+NCgeDR7
	wX3tzP11evrHXfLFNAeuxJmguibLn+GsoY/u1OVt7DAtDdluo8umF0+METTZTS6bGikyuXx0z7nzM
	zEQ8d+ooo+zOI34keLXYN8l7bELysk1RzitNB67qGQONnMCpaD+UKnyIaC3f+XTiRvfISOD9t9wR6
	3Sw0xy2ZtHbPrbrGCoie4t3ig8qlyKVOJ9KG+S/A3gymCNDOqb9AXIoEENIFcrXzVkocN15zveL3z
	FVYIsToRzQLQiCt3y0JEye3ofzGSKEcpIsvY8lkVG/aDWDZOdqYkdamDHPKyIV+BUTjk/yWfnJTO+
	ZnzgV2nKkgcOx9R2xc1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgR-000000054uF-2254;
	Sun, 06 Sep 2026 14:17:23 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgN-000000054sb-43pi
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 14:17:21 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-4858303de5dso3168384f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 07:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788704238; x=1789309038; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=vx11omq78egXlqoMWqG6zyOsDneaN6cm+yVg1GWwoAbP4IjI0TQyUS9FydG3fUbZz1
         GsLNSza3YIWRX5bETMqiBvu2ZedaISnu86JQ3tz3qTfe3wah8+L9b/4BEd2+u00fJmoN
         D/F5HIfWAJ/VXJBuCL2o8OM0UQtUVwT9OV4kdH+g4CMxVyQ53mQpx62htE6Le6hWJAJg
         EGQEHiIb9or/95AiLyKfv4owaYCYei09GVPphDjUO3qFBndvRlMg48e6inBC+2T8h6Sg
         EGtKMc9j1bCk3iGTlH/N7FhF7U1J5XqIxI7GOPJwvK6GMGZLPnKFmyQ2Az6G3Qmm4JGe
         gX2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788704238; x=1789309038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=tYF3wOQ8PNsubZWIIgG+Ff7pP6J8k3IUuYssh8guYup3Xjdn4ORMozy36YOD7DVpd2
         qHq0ehmpDs9I2DQSQ4oS+h4zhDiUFZ/nhpLHqDNJJU23b9Kr/nRwr6Iaye9yDYsKaGC5
         SgQxsZ4bY9wcXrtOmHUzQIy+ZY0po2phvT9Gwl4qzciFmmwOO9cJSqw8SnjUv5GzHc3X
         bb3i+TozjiSCA6mJqqiUg53SQVUSpgLuHqfWe3wjgaxmm1YdhMqSOEIjjDEl5y1dgIPu
         gEr4RxcgN+/gakrlsqAH96y90SyQhkzL/gz+D2kb6uqNn5H6/hDzboppisOwtI7pirSC
         itMQ==
X-Forwarded-Encrypted: i=1; AKwUvBzsOwqMuD64nD29zjxY+6p40AisfamSken0sVBzGqbz4hv+2t+jW2x/8yUwJerGb6djn1vaWkfvIOQ=@lists.infradead.org
X-Gm-Message-State: AFuF++lX94G4Si+k6DYe8MrR1t0C0IgA4SsFSabrTSllmwUP4NfRuWTC
	LPid9ikiq1QFMx/+cUwbg4BcvSaEH6teLeZT7PN8SbGsaktuzbqFjis/O5PMpLN6uTc=
X-Gm-Gg: AYBFou0IruB2o3EUZ18UnU8FgefHdWOJigV7lzkJCpUi6VjCTWr1gteCBseh/hTHIqi
	k8ptaEgaS5zO5Mmh7b2xqurF0dWcUkkCzySHvpkQZRrkU64H6LJP6YFoTb61fas9kydYTIMGXCy
	GS9lVWJgHS0t+tkvVqXUewym2Lw+V02Nn2lkZrryAQxB9qUDMIFf4/JVh3MLxVN87yPpw60HIvN
	+aPtVO8bouIYM4VJpV1Ezt1FL1VKlopbGL9FXSewHXyjNPkie5tEdi8By0AZ4WiEE3vTlduJ+8n
	iwGQT3g1ulVhVEELEdL/39kI9uRIhf3M1kuFcIRBnd/qLdj5tmwi/iTXvYhFB8lI6zvQTCnHgIw
	7T8baNCzPmMkFohQEUVKauTa4KBnLmwgRp8Et1JO0qm7UoN1fnGYp3eQUwwRtc/Xb+z0zqX0uSg
	UbQLZrBy+zXiuZoYsg+KuPLhzC03qib/jNomvt/9Y41e67Fh+z2Lg19ncB6cz9tEZ7/F3Bv1i4
X-Received: by 2002:a05:6000:288e:b0:485:8c16:a33f with SMTP id ffacd0b85a97d-4858c16a5d0mr15303316f8f.52.1788704237969;
        Sun, 06 Sep 2026 07:17:17 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588390e30sm21669763f8f.7.2026.09.06.07.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 07:17:17 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 15:17:06 +0100
Subject: [PATCH v17 2/5] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-2-e2197a3e2551@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
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
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnXXnDSGHKwKTESqqDCOzytTAZZJRnV69xpAvH
 JPy2g1Mp3CJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap115wAKCRAicTuzoY3I
 OphMD/0QQhIpf3hL1zoUSontuG9Asjf87QOcmpl33UcLPb/2dC+pgdjGNqTuw4/BVYHdyyVmmhs
 tI7fOu1gmTrHTFsKb4Soyx1SNf8MRPBLIYDnUMOJqwOtPkWna6chShd/S5JXAwUCWp+XN+QbbNO
 ToDneWwCAEw5J013xX9sdunn6QeI3RZcDzOYYDLUAhk/Mr+q4rNlV1uVnLVkMPJoVmrsEEoq+Zu
 UQcN4V4RwyKb8tN6HkcYtnie6YEvuuAfTT7P7O5zg0uAUGyFLj7ToF2wgTYu6t3VsjaCjdHpkOX
 AULqXQ7aUSxqfmWUMdytonNfm4gSSjKtMhnW9YPM5DDe3O1DxuOhoB1wHILuAUURy59tIOfrgdA
 RGr2yg1yB2Igz4PPrZGgJrfHFRKzEqixnU6L1d2RUbpBQpgZie9VKn4Hjk4grMq1oFUL9ZgavwQ
 gaeM3OipCV+Ziw8U+LuPWY23LzqI5b7uLwHr3Z4toV40P0kn0+5rljJsCihkeAlgZWXiAhV/v+q
 5HTVZ1A4EKKZLJUo0RfRlOu791SODL+bwM4neUCs+SPNW6fBLHYoyz9wkBnKfHT2vzZ2MSfiD3k
 g6JLkChI7RqSAgNDasCJ3ZmBd9nWV/pXKYmjMv6wZl0r+aKPzChhX09eZOJ9pi7k12bNfiE89Ks
 35FPHPmWjhZLygA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_071720_039231_D0567E32 
X-CRM114-Status: GOOD (  20.17  )
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
