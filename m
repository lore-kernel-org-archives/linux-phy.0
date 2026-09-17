Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DAEC982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3Dk8dqPmQ0SrPGDxf1B9RgoXKb1zvFyLkpkVGcGu34=; b=f3USHTuRzIU16t
	IItfbY+74j3VKObNGJ2s5jZsKxQ/DxFSFC7PUVO5gRfTyDRnxuRb4QFPLC/elI9AXy/XwJb6ROx5F
	SUNJ3b/iF5OymXm/MUAYBURm1Dp6efPK0Z4xglNHKu0LMyuQ/Ab8tZx1RE/iNPfmQNk94MP00Olpy
	MrZ1zz/a9EA2wS5IdnmEWozNulvGI6xyh64J9XcoWkv5dETcMmGgpvHQlfIj8zjqv5puAq5nIu/gf
	JTEfnSFMQBIpZX1oD6+RTXqyokr0MlQiVirTwrRTEyoYXnlETXa6g28BwRXyB8rCm2vUuxPxftlVR
	dgRGZ7QQXqv4rm2RKWwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yK-0000000B9rq-1DsZ;
	Thu, 17 Sep 2026 11:08:08 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yH-0000000B9qn-3V2c
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:08:07 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a9984f9adcso1137459a12.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 04:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789643284; x=1790248084; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AEJ+zdV5VeKxtZ9NMskLi/eRs52AJWTItT2AzvXaS5s=;
        b=uAwY/W65yMvlww2Zdsk9ClbBPGTi2JmwLqiADB44wG5aNGPhUv5cSDCG7nlBQm0Uti
         PnqukP9K0RgjZ1xctbxBTKHQWi/Fuw6zg4bQTSEKNhTlz75NfBaY6343rx70+doYiipC
         Z9QjzfbODb8KC1HpPExrwQWQxkPrrfZlhfvZZz0zfiERd8Y7Tfc8tkKb1c8fzPaJ30Tb
         1VStiGXhCyR+yQfS40LURq4gwXQ4e6OkARlJvLVaTu1JWdHEQOnCYDlnIPVUqwITMFdg
         lHIwMVD4RqVhDn88BEdv4JSRqizgFNZdfkOfNRgUU+3F69dF401PZIPFDfI9Ud5BjF6/
         6QMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789643284; x=1790248084;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AEJ+zdV5VeKxtZ9NMskLi/eRs52AJWTItT2AzvXaS5s=;
        b=cNmKQVAdzKa6dyqZFWAL7diOySlTUGAIwNYvCI2mBzMu3HoOmtYXqHPToD8HMumK56
         38GqisZeTV8Y++id3OUF9HDHZknoMuH+ZEq1TL5OUT2zdNXooUVbi6vNjiTtqm7Y8y4r
         G80mN6M7sn+vBzOCtKFSojP3bPVvVyufF0fcGCNaQp2wms7ljCdYvrm2Wb8DbluZepLG
         vyg873sHrcMx/jr0ZMc4XYZxrkIdfA0umrcDnxQrQaHYhaBBb+MjxJ5Zu1p3YFPuNaJH
         aiDw57E3V1554hA+lQuz6nBAZxs5+PPfvp5T3S3dwHlohI4JQyuTarG87DwPMufrI9+z
         q9Hg==
X-Forwarded-Encrypted: i=1; AKwUvBwWLD2aN9GA6eGNg/FjIpUy5Tw6jmbA+pYmDo9aX4O3urSkiOb9xzxwgxMC6/pKJA1nUCxp7V6UWTA=@lists.infradead.org
X-Gm-Message-State: AFuF++mODG4JGTTtKICl9pQKglFtZOfORkjGjV+86qNTMSEcGQRyA0qE
	ZLa+9qg4X9Fi9mc0KjVilK2mi+2g/LSE7UzevHXeKor8STIBI5WRwcaYSgr+ugHcG5M=
X-Gm-Gg: AYBFou3/t4FbiOlsbPIZpUPyEpNC9ap1zeoV5yiWh54hdkzTZtbbgzWXgxYmEfLurj9
	FGlc7zdyTBuNQdgXS039+MV9FcgGVIIt92waavVolzjwRXO/HAoEvPPYiHzLvZjGvPjLR8oH3FU
	A+SpxJtRRr/rsPSS4iyptVpyg0Ecvvp58iPTZNI98K5+2Hef3nSPoGf+Zw4YJ8N840WjkQqV0wf
	zcuFx5mF2SD/81DKhhpzfI/A8Vl40Y5DvZxXPcrDmf+HDrxSVq9XFKJjD9R9ioPt5GAXwE7j62I
	W1XNDnV8PLKdQFuRujJZlIm5g13Yc9yLq9blm8VWSBVVgW4m+nlq+R7Nxf3i+SXBX1TNNUARoOp
	f3XYbG5ehhS7LA0f4uUlEO3fdeINDSnZTxzXkgosn8O+/OSTpaDU/Zm2v1BumCf2OivEv/JuCc4
	Yfq74yqnvO/cHugj9+DpI+Eby/x8ABOerH3BsY6U+xiBZa0N77JVtwj87Mrc8BpbuPUL96rmdRY
	hxgX7iPRw==
X-Received: by 2002:a05:6402:4143:b0:6a9:8db2:5c61 with SMTP id 4fb4d7f45d1cf-6aa224695ccmr4351003a12.45.1789643284160;
        Thu, 17 Sep 2026 04:08:04 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1d27ad36sm3175656a12.21.2026.09.17.04.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 04:08:02 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 12:07:54 +0100
Subject: [PATCH v18 1/5] phy: core: Fix race-condition between
 _of_phy_get() and try_module_get()
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-1-f85c9103177e@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5374;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=d98IC8bz/qzZqOoRgoY7KC00p4aOgRN119tjHNyLlDk=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqq8oMMJX8EVikfzcwZo+32PzQIvs5wQtUxfWdE
 sUxbNbKSIGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqvKDAAKCRAicTuzoY3I
 Op4QEACLqBWFgsDynn7Sx8zizEGZQf0msF2clsc/4OOxnUZedrMbGoYJBncg5EFWGgmQYXHN/Tr
 q/EHXaU4yA1q+sE33FpsVL0vD+ZFX3B+qdFfPssZbjCJnosk+qr9oJU7z/EVFZ3iYKpT5Uw/yjk
 ibiwxeGZuHlHZKaI1/9hBJrBygc+MUj0ZeE/XFJk0p2oKE4+FRam7sQ4r6dObIacxQouRO4qria
 /e8EZYjMnX6ACat6MiUJP3Apl7aIAN02TlOMepauG5UEOS+4hZ8HW9vKdjr3WGmAR0g/R06L7AO
 czp5wzzNYL9ACJ9o9gPaL2CQ+aG10c7hrx0AWfFNzlvw9KQkM3lWdrki2nBxbqngh+JEDHOEHml
 iDHp/IoNzL18wP9iH2UsfanebC0m/MEdDLthbEEaFFE0elycfUzb4iFGqqKAswKZdhT+cLPl47g
 6Ay6HJ4BGvh8aSccNrbqkYss0ePy2CfjIjPFntYzNL/F+747Uz8dgI0+nVAbXoCsckRj1jvWb6i
 QPkQp1eImIMQbE+qtRgLYuclBVvVNFPC0po9XO/O/b/k7TwdhAYuXzw2qG0H0AMBb4BE/+OijG1
 MJKn28BoDey2+hDIsgC0ay24j6ahFK+OTRXQaGTg4xaHjBOk0kShV4taFFm1Nki8wUrFQKxjQA0
 eETl4wv2NWaGDNQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_040805_915359_775FD168 
X-CRM114-Status: GOOD (  17.74  )
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
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/phy-core.c | 45 ++++++++++++++++++++++++++++++---------------
 1 file changed, 30 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53e..89addd732bff3 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -124,13 +124,13 @@ static struct phy *phy_find(struct device *dev, const char *con_id)
 	const char *dev_id = dev_name(dev);
 	struct phy_lookup *p, *pl = NULL;
 
-	mutex_lock(&phy_provider_mutex);
+	lockdep_assert_held(&phy_provider_mutex);
+
 	list_for_each_entry(p, &phys, node)
 		if (!strcmp(p->dev_id, dev_id) && !strcmp(p->con_id, con_id)) {
 			pl = p;
 			break;
 		}
-	mutex_unlock(&phy_provider_mutex);
 
 	return pl ? pl->phy : ERR_PTR(-ENODEV);
 }
@@ -624,6 +624,8 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	struct phy *phy = NULL;
 	struct of_phandle_args args;
 
+	lockdep_assert_held(&phy_provider_mutex);
+
 	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
 		index, &args);
 	if (ret)
@@ -635,11 +637,10 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
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
@@ -653,8 +654,6 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 out_put_module:
 	module_put(phy_provider->owner);
 
-out_unlock:
-	mutex_unlock(&phy_provider_mutex);
 out_put_node:
 	of_node_put(args.np);
 
@@ -678,15 +677,21 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
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
@@ -786,6 +791,7 @@ struct phy *phy_get(struct device *dev, const char *string)
 	struct phy *phy;
 	struct device_link *link;
 
+	mutex_lock(&phy_provider_mutex);
 	if (dev->of_node) {
 		if (string)
 			index = of_property_match_string(dev->of_node, "phy-names",
@@ -796,15 +802,18 @@ struct phy *phy_get(struct device *dev, const char *string)
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
 
@@ -813,6 +822,8 @@ struct phy *phy_get(struct device *dev, const char *string)
 		dev_dbg(dev, "failed to create device link to %s\n",
 			dev_name(phy->dev.parent));
 
+out_unlock:
+	mutex_unlock(&phy_provider_mutex);
 	return phy;
 }
 EXPORT_SYMBOL_GPL(phy_get);
@@ -961,15 +972,17 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
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
@@ -982,6 +995,8 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
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
