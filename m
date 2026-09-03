Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE720C79F81
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 22:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLB7u/lXDpf/UigAuExh+LiymiVGkrgz0uKwVJ6HGe4=; b=DQ27MwZFxiYgmU
	D5DKj6M3X6PnmyiY3A+byGIQAEmm4SUbgBMo1tqT+3BSVzES0D6rE3kOd3TwqLxgH8PneFcR/5gAu
	xTQeRbfvS9H/0CmQO4t8CkD6FUWaL0j7p7m7INaeFnVrmVN6EJPIgmZ/9zzICIURaj2cqRUctyBjN
	WK2sOguOOYNifOKLhMPpdPc2gQDbA082o91ZCSadyu63ihx0Y3MxQCRjP3bohuLQicVNNeeYjJpjM
	xn7K/O6W7TWUoUSh6ccnxZgg+YcTgBvDrOBBvB7v+ZlzQv2YImCZGjBu5Fj3b/JMPK/9/T+5NBBg7
	usc1pgP4kEuB6Vm1haxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GP5-00000000jzY-1NT1;
	Thu, 03 Sep 2026 22:59:31 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GP2-00000000jtx-1gMC
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 22:59:29 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48441a2ba14so348659f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 15:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788476366; x=1789081166; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=f2qhZe+AZkcGx7QLrzdA5uk1gfgMc92J6S2jPh7AbCc=;
        b=CHOt1CYkRtMkAxo3NiKlnTOhwGZBpaMOgkLbfIWJOcRQoRgQ8FYxNqWq1HmJi1lGFo
         m2uNQUmzlSuXam7xcnSaZ0r8M6dJTpzeJUJq2OjGxB+scYIzriOVtCvB4TxV6dkSD2az
         w4S52FznQjUSgwpHE8Q3hN52jNY81Kf/WsWRw+o5Gy70No7kRieGn3AfbU3R+As0OT8N
         P6gmx6BNG2sjSMVZLzAkNrPuX1N97curLmE6iIc8MQQO00EYi1qYIj8FV3HTEdf/PzAS
         5cvkxkr5P6ha6/fbKIxMsiLilZR1FWR2YY115TM74EZBOt/XTqOKuWeqTH1m5tZ6O08m
         396A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788476366; x=1789081166;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=f2qhZe+AZkcGx7QLrzdA5uk1gfgMc92J6S2jPh7AbCc=;
        b=PkxPIxGkPn5+ussNSPo0xWwdqfZH04rApVSkYJM3TJ+UhXD2n3WmLtqfscWcAjYErS
         fcFZleHcfz14U7a7dXWKbWV93M9G2Brlhpt7DEHx/ULdpBdVQ/82JTYXzrlVxCYZ145q
         AMBdz1b7FIRkqx6IYYaJdMSBuoDkeyAviLCOEtt9DhLfcf3VUE5aUYApayBpuNiQ+NxH
         aNCuvwVzwSY8hMPB64R61Pe9v1c0v2KkwtdwELgWp40JnhN0dBlOI6jvcA0HfcuviCPI
         El5AeCE9N/TG0Fhvx66Boew68oQGmpk5VHQhyoPkqi4LcznMsS358TL25T0VBHyaEvbp
         7Slg==
X-Forwarded-Encrypted: i=1; AKwUvByH9M5/0iKtkWXLkQJtwbYYXUU1UXUBYTythdlbcALwrXXcpWM1Mftux5Sfg5bHO+48ozwFoqW/FtQ=@lists.infradead.org
X-Gm-Message-State: AFuF++mTTbnYfIizdr4mjoRZtFNEw+8XYwQYBtC5voJ9eGT3no/sqx1G
	bP6icSg/gHqB1fWfrUTZE4ukbbpVkQKvUk0YtJwKH0RQpQPokR6jaPLuYXhvT6+91u0=
X-Gm-Gg: AYBFou1kCtxRD4OVnoSgrmekNNfmQ53zqb79VQS5SFCS2YfZcYP1JW4Xve8y9LLFSU+
	G/brw2x7lIYmBkD2LztInu8btbwHfuiNEI6Wj5zOiP304Xr0Mg2dKVFbZNEcrS3KsBLomiOWBhd
	jCSPLpPg7NzT4ioMidCjlu4TzcpBFEZ/S4CVigF8clhZs0n0MOQH4oUayPuBiRjCYEV5G/pMbxQ
	Lh3u3yHql0xy6QJ9WC9nnl5rxONuV3FwaSmRUltbvwh+kYa8ND2OLoOs1b/NiWH1VTv0UZHltux
	xz379TtTzMufb8hUgsCIGtn7Tdr8iCd5CGog7AgCHpOqyQdfW8nYf3IuEcZrOVZeDJlijL4frrP
	JX/mByxmtFO+9YLLLkhh1VWbQ6j2dapSrUBeRY/kJxJGrG0OvuxS5rbcAvM6183SZZ6fvagzUsb
	nRh54cdRJpN47kmUojzIve25xta+1SLZEKcoJehFE/AcJ8bZsLLjqoT1fmqDJQHHdTcibC
X-Received: by 2002:a05:6000:260d:b0:482:ea99:6166 with SMTP id ffacd0b85a97d-48587284922mr3907649f8f.7.1788476366585;
        Thu, 03 Sep 2026 15:59:26 -0700 (PDT)
Received: from [192.168.0.35] ([93.107.91.8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883a9a56sm1448006f8f.15.2026.09.03.15.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 15:59:25 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Sep 2026 23:59:08 +0100
Subject: [PATCH v14 2/4] phy: core: Add phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-2-01ef1eced075@linaro.org>
References: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-0-01ef1eced075@linaro.org>
In-Reply-To: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-0-01ef1eced075@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5245;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=k1XGa66sdyRnrjmsJGkxGLl+Wzt3DuRWA8x+khgbtf8=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqmfvGJt1zjBtwQ6Abzx2EPfIgcbCAp3sKMemHI
 dvh4tk7UVeJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapn7xgAKCRAicTuzoY3I
 Ooc9D/9NFN/v9wQ+NLNklcLOIdKQf5J3v705i225e0kCFe2VK0eLuGYxyeyWQ5foYwLz73aViQ0
 ydKGszoNMu026Xaxi1NUynmI2QORqdRbz7VyRPaHsk2njMb5dGj78v0VHrHFAUm7Q6BSOOzLhAO
 Wk3Sah8SBwfw3X1vdzO7ineseDiUOz1sDldyRbVz9s2/UFta1i2PHgSqjBiAQatqEJCutSlhXbR
 R/WSIOnKDFwiSnqxfZT1kQb6uPUPV5X12xcyBdDmec/mAiqiDpU7bkHM0lq4dMJlxpfJIE9Gqgb
 5nAVUhjug74LUY5G6CfeGcoHdrWyr40MpQZFIuBD+EAOckl/w8rw6rwx3nm9LxyuHGL+T1tVR8B
 TDIimnRqGx5mZFAoAJus4NFKywM9Or/P9S/g5i0k/TclYN+pYZBVMohKrI+5uK0owl/up8NRZMP
 dCnZW0+5ZbDu+wkj8RGs0SGSejBznZDTkcyixMiNY7K9yLSWo2IJva9SWbJC8XrR4Eyz2qJduUm
 ps2RJtNeb64rcP3BZ8BHQs4+lBe26T2WiNKBSTvGRDf+CRl0Smk4PT8YbXBWz8M0y3qW9Soly/D
 U/iaBpi51SnhhdQL1+MnkpkObnJ2vg0o1f60bCRbemVIh9qegYjmXFYG5tJZ42qZTs4LAa88j5t
 1h8PgVdlVH3Syyw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_155928_499822_7B7852F0 
X-CRM114-Status: GOOD (  21.02  )
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
 drivers/phy/phy-core.c  | 93 +++++++++++++++++++++++++++++++++++++------------
 include/linux/phy/phy.h |  6 ++++
 2 files changed, 76 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index cd9ace125567a..1d060bc22d02c 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -604,22 +604,49 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
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
 
 	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
@@ -633,22 +660,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
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
@@ -997,6 +1009,41 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
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
