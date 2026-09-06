Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81608C79FA0
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 11:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqJinHdpqTdk21BBKzOXU+0/QgLZFo0NJ9iHLaOLZkI=; b=QfzZ8wpYEnCMHn
	9bbUKH7qTdvE3C8nTzaraNysDBPrZ34w8baXA+sDe40Tj01GcpVFByvkdVONdAfUD4jpS/53WlK6R
	g3Eucvuu+hxXPkdTurkvDvXg9Si+7zWe6JUbRiDD1uUIDjZFxKJIoDNWXbkV3RmiLywjxIw6hLgEI
	QWbyZBtQSlZjQoiult4or46d2nOJN62j0I5XAxB9HgcYAMdnItIicfButQ4hVSXV+5cPNZED342Rn
	QnYasdYsHA9O7i5aiSmLHaaFGO/wGbn4WKgUTBNQe4sl38odW9avyB7TLgX6EWjQeXo6s7TxLuhs+
	4yPWpJ6TALLwot7kc9bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BPz-000000050O4-0xHh;
	Sun, 06 Sep 2026 11:52:15 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BPw-000000050Mk-3XFA
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 11:52:14 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4956869750eso20608115e9.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 04:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788695531; x=1789300331; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=c1bHKoQmSg7eKaoXvOo7a/WuklR/CzToMH9ThElgLaLnxhlIH4yWeAXy7TWlkAM+o1
         Lm4C2+p8m1utuKzgX140Yq9gRN2r+MED9Zen57e2Mj6+QefoefW0n8o9oEbhvo/2zvTb
         XMoMzynjePwxxxUY3G5wRXY9T5mmWTBU7y9gu2nd3k6K6fzrtbEDGyAO04V6VaeP0GSk
         KKjiP2qkNd3Dt3T6lVIcJ9gm17cjFzD2IAJOEvMDr+0L+FALtMStVP0KdXZIezfyT88z
         Yx3LXWelEKMwZZtmsF3vQBQO7dX8Y+LZk4hZ1EgMvIP1KkZlQEScTh97HeMgsyCCHKca
         7f4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788695531; x=1789300331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P6nCQrtjn5sjZ36INdWU9AmImwt4exmEpBcYwRBKS5A=;
        b=E35/uPCUch0KCkJVo+ziyxyqHlHhE5HfaukrCA9GYyzhXNRnhTo01IkhKeQLBoS4eY
         TMZa9A1ZXC18MibdGhG/44g/aE4B9+JdblPfLyQCGthowNjmWFZDQQQ9VKoDTykqAwyg
         aoOw8vDA44R/Q+Rj+Hk4Izx7UOPH2bq+lL8o9mi6jHgHUvF6pI+OrPToxrpiac/7l+Y1
         4QH4OL/5SLcnF4OVLZoTscIRcY9+f7ay1M8Xnqcuq5kgIk1EEITRljNqYhxzOmkYV8cv
         dldkRKJMI/3F9HBdEx5T8saYOJisWoOkMtNtGAtLL3B7mFg5DdTKcWP9SAujQ0gHx4Kb
         zk0g==
X-Forwarded-Encrypted: i=1; AKwUvBxUJIg6/5bFoY4AE/yl3UUxm/RrSALnAeDOmbvm+Otl/TM2bowIF5EfaMyrooloK6ffA7PAwSeEBUI=@lists.infradead.org
X-Gm-Message-State: AFuF++ltwh4M0tWgQkC5SQwkYc2AEF/fZetK+pzYXOcOL484B+mDz0ic
	dE6q5PbrSJueGUvOMIvq2z6nBaZgi5K39/VTNnDCwrb++fZn04jUAF8FvQbwyhgTELQ=
X-Gm-Gg: AYBFou0728nZcbu03qwg2RYlC9EMK33RjMfbzopmCfavcjOsGcYWx0NrroZVJeXMYX8
	oIRqrT5RnKioUAmPKIMHY+9blntKfeS1VdrJAhxSK8c7k5RTYOjGD5rU9oEO7meqcLQoRK9U+dE
	PC4KhBh124mGndR4YmEM22jTv5uKXkSVyg45nVHJNIQzAS3mQ1eqeqt+jpoeoUsqtAgSZJm8PHk
	Nmb+duvVIr+g89mDJ6RS0MB5h0J7aKLwnkFkWUWOrx9ghXYf3CZo1CWQnUtIxXNag0Jtu0uaNks
	qFM9TiGCcTqKh0D6TKQrWUhIFc7iCyCN7tj9MJTdSNasVJScPXlQy1TuuOYvDilZ2ALIQvakV9r
	R9OWHjewAiIsFe/E7Eettb7jbwBsAsRDPwMudbpDMbf2DLNxpUh/yuDvHZNFP6ZeapWabXeIInS
	FKawxZdG4/m7z9q6cHz7TlfXnwIIe+lhYwnAAeGGeOvBhwBwVw7CngHnxSvCW9T8EDaptDGvBQo
	g==
X-Received: by 2002:a05:600c:3495:b0:49c:dadb:18a7 with SMTP id 5b1f17b1804b1-49cf8244260mr167551925e9.10.1788695530692;
        Sun, 06 Sep 2026 04:52:10 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858d2693e8sm19337821f8f.3.2026.09.06.04.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 04:52:10 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 12:52:03 +0100
Subject: [PATCH v16 2/5] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-2-f7bd68b5369f@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
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
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnVPk6Z4QLozQ0/xd0w0EjWqBUNZ8L2r/JFgTh
 /1GqiOxcO6JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap1T5AAKCRAicTuzoY3I
 OnKFD/0V42uUIs8WXy0vyaESKTs53Yy+MFBwAjiwXBm8hulnaRoK657x/bgARJNZ7RQDpMrgO7X
 JmipAQVSr8XVfcwCTLzZfPvoE6SBWxZkdgNP2TME6qUhK9YsuhQysEjUCavha4SaCdseYM1dpKE
 P2mbKNbq9r+I6uLajGNnVk9h07c6JJ5A0/CJJ3rtJTsm4/hSxGsGqUY7gwXGHDKqyQm8LGtjn64
 g9xud4ulCGHhpytkNUjKaHJQ9WsU6pf7XPkP7OiHrvx6iMv53A3jJwNCdukeZFhV3uBEq6kWFmR
 jhxXe0Z4CJ8GXdewjX3e+eCQUK8ActlBeBUf+FeKFUYoBwk9sW/TEswV+9KxjHhBJ5hV7Vbx96D
 p0BOF/MUqUTZUz1s5ESC7/+QaqV0eVNHUhwwQOvj3Ddc29laWdgzD+kliHsFpz2vMzHxaseR5Wx
 Bx5Cj90iMjuLYmsoS/SCQtsd6UepCeodVn68UCEUApITKPAbv1A9QQnaE2SCd+A1gUlH1U2VwDY
 Zg9LUiUTYUTRalJiZNyaD6dvMQuF2G+Iyc8qz6Nkf/OmyCQz6rvZ3pW9qaSD0DGN9xB2745hnwJ
 Y5xLYlWTlRzJjmJSGFSEzg2hnzCASsZ/UZ+QISTxgfg8WjXeMPcc129BPyCbnPDk/lU6ri1Nc3q
 LzWDbMy+je+BPXA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_045212_935332_EDB58859 
X-CRM114-Status: GOOD (  20.14  )
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
