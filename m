Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C3DDC61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 22:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6zx/hmjnyb3gydUEpL9oJyFpi8FLG1ySaf6twi0Iuw=; b=C5bwciO5DnEQbL
	6S/LuUPdKSkLWAhq2caN+dgMfGaXYRxJr6G7ZJ34an5Z72xWscz4ykPW+z/yWa4Y5kGeZ2WMnwkPN
	WlCQ9K9gXg1xDRIt5uBvSDucui1OGB1MSlTikpGr8aa9bcD3/5i215nbOsl6LEpenB4tCfuuvCDES
	H55a7hzlp1jIS4jHNn5KrQgni1/dmHf7SlSP9oinQW3mGGFcfbyg+KS3yMxrxOgo3xkVhkaBpNPUx
	xvKhDXnoIJOQwg5Bl9wC6yaKELWhwu+kns4fafbfPHnCbYTdySdUZlTJ+sSzEHSkZckLnYZo76fDs
	jnan1/wTN9E5GUQyp87g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GP1-00000000juL-3E9z;
	Thu, 03 Sep 2026 22:59:27 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GP0-00000000jtB-0XdZ
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 22:59:27 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-4858303de5dso472985f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 15:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788476364; x=1789081164; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hKArYctGJ4c8BFSi537cYU55OgevfeFg9JTuZatHHeY=;
        b=sJj48GBun2xeZUKIz1kxoosJH7tjw6SfvSQpNOAC+JTVw03U6PE+WKg1/nJdBZ6zSI
         09KKB5pFDn4553+qxhE8jn9ww31GGJQE1dtQy5ke8KELWa7/iqlLp17Y6R75S30jjret
         HJZM1bh3JIKmFgFlgYmLXPT1bk2aVScSQ7l3wH4T66G0xgGWuJsrYwyvoNoEeGqfWcLo
         fvNWhd6BLhEiEocIXmlubdZWxHrP9RMPo8YKoKhi/FoWGCpqKO16DrDulkIDN/nZdiXY
         OZtjNDOIe++DPmI78ur3VhSHqTaR13qct7VgdzOJP21SVowI/tMZ0JPZ8Bxl5AOqIcP3
         gVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788476364; x=1789081164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hKArYctGJ4c8BFSi537cYU55OgevfeFg9JTuZatHHeY=;
        b=OXVh5yaduaO7OhAmI5KwavTOg3zpS+Id1mV4RJLwWiaBNI8kTSRECuMxUqEHCMGiTA
         1vd1ymswo/p/2bKfjA59QyvzAb3g+hWvUZz355E17yhIjOyvJy9qDj08Omg48CqXi9no
         xJEzrIPWRNQFwnh3tneNF1ryBMUCT71vYNIiUYs7nIxuUalkGP7MCdTPIE3ypScw4vVd
         0PrqMnUHD1WRwT2NIYTSi4HnVQSvLhHH01LsGK+4L9MTMrVpaVBOobHAxHoj7MTrwUWh
         S9iNrhRMXhgk0TvzBPlUteEuUKjnR49jxNeL00cIvgrr3JX+u/DAPZhbuYPewWln2gdf
         vaqw==
X-Forwarded-Encrypted: i=1; AKwUvBxpRxL5934Iux4ko5qopUei+plYvT92cMOb5Gj3iHm3Fjl2FLo53+0EkkXY1aLSrhxETd/kwT36iG8=@lists.infradead.org
X-Gm-Message-State: AFuF++kVWn6beRxNSwl859hhUHOsVwnnuttoY09tGmWJvMqX0FJ/i/Lo
	nOTO47IHUoEqMPvGZJpxbRdG6UjuFR5dTrfIcAEvwf73DohJ9QMcBWyHWU/pPO/ZWwk=
X-Gm-Gg: AYBFou0sDMzjGhlBNtGcUYMCPlcs/TP5rzLBQePSdoAiSelWBwjeisLnPT9HD/Go9Fq
	e0mYiLTSp2AYLnHOMOjic2gitZpxd3TGmzEiRrhLXSfmgRJaLLiiEWbLUXP+H4SlPIb88eX+I+J
	pMXr8iR4RhtCUwZljCdoFCWtKeg2o8M8k+V6TMoBaim1IL1EgRnELuShvyFGX7eBDqDD+6z9h7W
	J5p35+G8z2kp1XglNVb3dNcOo0Mghssi/mGFfn9qygn56SFRSfi8Iuy8ExqIC+42+2NwsofbN1u
	mtOiFUoFmBvSyl0cYEXxoHJhrL7mxwuU3k2fXw7t74Lpdltr6J3LM7UkIWGbYEnbATwBC49ZwxQ
	Q9Jd1f7BFBDdQ537LyyE/y87gx02T6UNE+WrKD1awX/9RkV7B/JmFUbgw/GdxtYtIeY5h1e9zIz
	RExwpqFu7VNJnfsMQqPysyGEYQa2qnj2Vh1S4fO3ERTmIAI2s0ChsG+a1HZgQI2a22zLKs
X-Received: by 2002:a05:6000:25c2:b0:482:e2f2:19c1 with SMTP id ffacd0b85a97d-4858703f827mr3881421f8f.2.1788476364322;
        Thu, 03 Sep 2026 15:59:24 -0700 (PDT)
Received: from [192.168.0.35] ([93.107.91.8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883a9a56sm1448006f8f.15.2026.09.03.15.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 15:59:23 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Sep 2026 23:59:07 +0100
Subject: [PATCH v14 1/4] phy: core: Fix use-after-free in phy_get paths
MIME-Version: 1.0
Message-Id: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-1-01ef1eced075@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4896;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=PqW9tqmW9F2B4lcssAx2e+YT+CUUTBw6AIB9Ts0OgxQ=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqmfvGaPneFS+DA4dpavnsinID7MBmg4q52oC3G
 HG/1MMsjaeJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapn7xgAKCRAicTuzoY3I
 Ou7qD/0Vwb+/DK1cHGSRf047U7hRatmKhpsTaydg7KJzmBxNz15oSuVvm8xp86gIXG75+V4c3XZ
 W7uJeLm9oEeN0XXnBSooRDOLIWdLh2600gRTuKMI0EIz1HXPi8X7GWTg5cVE1KTHBZC+jQSPUzs
 TP0uhPgA9rn4UDe2FgC9+At4P3EhFQtvKCoU9eMQ9Z/g6jvLUw5Bl2/QCJZI9xDj1vUu1OGzf4B
 dXS8jILQyaJvHE7vQHeOHsYgBT9ftVzLwGXDMEjbJzLL+s5j3wauE9pCQdMa/o5CWxoeISzI/cb
 /z2Hn4mpZ2wlsMHR5FI+JpBS9jNR/CsQQiFWggJEJeYT7UcvKj01Pt4QWg/l4IRhxeHPRtUswDp
 aaO+XQ/RVYpGoYpzMkhw8w0RkAgoMpiJXl1dflGJ8fuA5Uz1+NB4itT09q6/n0DgmDz1rBaKWuU
 ryZMRkrJvyhXmYVdoR6DL5nYdmwEkAVvHhyTmy9ZIhHxxBAylFfl8+0Z7iFm1O8OcVew0SKwuEV
 bgiEv0+p9V47WvtHua1uZLYeWnt0HgIZGBzTIIywpkJ96R4kLDMor/akP9juZR6LYzFjTqc86YN
 Ag7m1ndHZljlibM2L8BwVTuIdK4mIUJHZck7QXh5oXkUeDOB7SlpVkVJPmB6z8laxl9rS9daFdi
 yT6NMd6qoiYqZEQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_155926_214192_DBBFEC38 
X-CRM114-Status: GOOD (  18.44  )
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

Sashiko asked during a patch review if the existing usage pattern had a
race condition; specifically in of_phy_get() if it was possible between
returning from _of_phy_get() and running try_module_get() that a module
might be unbound leading to use-after-free.

Looking at the code this appears to be so, there is no linkage between the
phy and module under a synchronisation primitive.

Using the phy_provider_mutex in phy_get() will ensure there is a link between
the returned phy pointer and the module_get() bumping the module reference
count.

Amend phy_get(), of_phy_get() and devm_of_phy_get_by_index() to fix the
same usage pattern.

phy_provider_unregister() must take the phy_provider_mutex so amending
phy_get()/of_phy_get() to take that same mutex guarantees there is no
use-after-free.

Fixes: ff764963479a1 ("drivers: phy: add generic PHY framework")
Cc: stable@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/phy-core.c | 41 ++++++++++++++++++++++++++---------------
 1 file changed, 26 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53e..cd9ace125567a 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -124,13 +124,11 @@ static struct phy *phy_find(struct device *dev, const char *con_id)
 	const char *dev_id = dev_name(dev);
 	struct phy_lookup *p, *pl = NULL;
 
-	mutex_lock(&phy_provider_mutex);
 	list_for_each_entry(p, &phys, node)
 		if (!strcmp(p->dev_id, dev_id) && !strcmp(p->con_id, con_id)) {
 			pl = p;
 			break;
 		}
-	mutex_unlock(&phy_provider_mutex);
 
 	return pl ? pl->phy : ERR_PTR(-ENODEV);
 }
@@ -635,11 +633,10 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 		goto out_put_node;
 	}
 
-	mutex_lock(&phy_provider_mutex);
 	phy_provider = of_phy_provider_lookup(args.np);
 	if (IS_ERR(phy_provider) || !try_module_get(phy_provider->owner)) {
 		phy = ERR_PTR(-EPROBE_DEFER);
-		goto out_unlock;
+		goto out_put_node;
 	}
 
 	if (!of_device_is_available(args.np)) {
@@ -653,8 +650,6 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 out_put_module:
 	module_put(phy_provider->owner);
 
-out_unlock:
-	mutex_unlock(&phy_provider_mutex);
 out_put_node:
 	of_node_put(args.np);
 
@@ -678,15 +673,21 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
 	if (con_id)
 		index = of_property_match_string(np, "phy-names", con_id);
 
+	mutex_lock(&phy_provider_mutex);
+
 	phy = _of_phy_get(np, index);
 	if (IS_ERR(phy))
-		return phy;
+		goto out_unlock;
 
-	if (!try_module_get(phy->ops->owner))
-		return ERR_PTR(-EPROBE_DEFER);
+	if (!try_module_get(phy->ops->owner)) {
+		phy = ERR_PTR(-EPROBE_DEFER);
+		goto out_unlock;
+	}
 
 	get_device(&phy->dev);
 
+out_unlock:
+	mutex_unlock(&phy_provider_mutex);
 	return phy;
 }
 EXPORT_SYMBOL_GPL(of_phy_get);
@@ -786,6 +787,7 @@ struct phy *phy_get(struct device *dev, const char *string)
 	struct phy *phy;
 	struct device_link *link;
 
+	mutex_lock(&phy_provider_mutex);
 	if (dev->of_node) {
 		if (string)
 			index = of_property_match_string(dev->of_node, "phy-names",
@@ -796,15 +798,18 @@ struct phy *phy_get(struct device *dev, const char *string)
 	} else {
 		if (string == NULL) {
 			dev_WARN(dev, "missing string\n");
-			return ERR_PTR(-EINVAL);
+			phy = ERR_PTR(-EINVAL);
+			goto out_unlock;
 		}
 		phy = phy_find(dev, string);
 	}
 	if (IS_ERR(phy))
-		return phy;
+		goto out_unlock;
 
-	if (!try_module_get(phy->ops->owner))
-		return ERR_PTR(-EPROBE_DEFER);
+	if (!try_module_get(phy->ops->owner)) {
+		phy = ERR_PTR(-EPROBE_DEFER);
+		goto out_unlock;
+	}
 
 	get_device(&phy->dev);
 
@@ -813,6 +818,8 @@ struct phy *phy_get(struct device *dev, const char *string)
 		dev_dbg(dev, "failed to create device link to %s\n",
 			dev_name(phy->dev.parent));
 
+out_unlock:
+	mutex_unlock(&phy_provider_mutex);
 	return phy;
 }
 EXPORT_SYMBOL_GPL(phy_get);
@@ -961,15 +968,17 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 	if (!ptr)
 		return ERR_PTR(-ENOMEM);
 
+	mutex_lock(&phy_provider_mutex);
 	phy = _of_phy_get(np, index);
 	if (IS_ERR(phy)) {
 		devres_free(ptr);
-		return phy;
+		goto out_unlock;
 	}
 
 	if (!try_module_get(phy->ops->owner)) {
 		devres_free(ptr);
-		return ERR_PTR(-EPROBE_DEFER);
+		phy = ERR_PTR(-EPROBE_DEFER);
+		goto out_unlock;
 	}
 
 	get_device(&phy->dev);
@@ -982,6 +991,8 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 		dev_dbg(dev, "failed to create device link to %s\n",
 			dev_name(phy->dev.parent));
 
+out_unlock:
+	mutex_unlock(&phy_provider_mutex);
 	return phy;
 }
 EXPORT_SYMBOL_GPL(devm_of_phy_get_by_index);

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
