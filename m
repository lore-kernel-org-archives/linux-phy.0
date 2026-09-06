Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B917EC79F99
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 11:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oGvzBa40M6dXDsLnht+eZMinWUdqeBdhFHM8DVhdcI=; b=JOU67+78Loc+9F
	SVXVFU0oaQ9jLWISQE3p15JauDQDKnIrfVBU/UCgYRkl0LaArkk6yvNb3AewWwz88EZHmqfHvVjzu
	gFtmOZBa61Df+mW2ASyTA7M4sCCYdAXuBDfGAdCO4c5Ip9zCyC4w5AMpmjTNtOQqDUC66m8t3GS/l
	yF2DbQaM0+SL8LKsKuNdmJY29XzeaTPYn/VFZITR5HglPn51GuN7C0JL/+9La7JZX4av+WifWp4ym
	bqzdvjsHZzb6nMQXPTMusZZC7uLH72y6lf5MW4Bld9iCWpEhjRU0NOaIOL7zwhByIEX7mK3zSbRcW
	rXQRBifYauOhaIq6O/kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BPy-000000050NI-0Ubp;
	Sun, 06 Sep 2026 11:52:14 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BPv-000000050MF-0e4T
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 11:52:12 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-47de0093c42so2170031f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 04:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788695529; x=1789300329; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OZO6dxofZbAitz209jLurPVDhx0uGUtYXwmfwELJ9t4=;
        b=oxFd6tpFGrP/gZXkheB8zlo9i7uPUwCE597yZtuxlHzQloVB5Uix+ha++5yBhZKpqa
         VZ19DJ01FJdDIGhz/MOdwKYHM4SyvYJGrIF2CsMsKaXGeEpP6A5FaD47iK54JDN4vDEk
         rTEqsb3oZWbNxSJu8IOjtlpczvtYM3pS7AX0rij86D/0JpxRRL4A33tXXI/4GiydcahL
         NjQUUNZbiT8eiDeml0FTpBVK69jP7hNr7LyZ/SwuILkq9PeO0zsDTInpFA6jgytzpn4h
         n8EDBHqHmizN0st9W3jOLmPGx/qhjoquKb7wgPzTSKCk1ycpBRq9uiddgUDouR6Xw6Gg
         lLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788695529; x=1789300329;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OZO6dxofZbAitz209jLurPVDhx0uGUtYXwmfwELJ9t4=;
        b=jaMJu+JztOceZHZGIsF2JI29+IJnEF3jG6yXFe3jeL/A9ISmKyLCfcXSbnDNAKbw1m
         oVB4z/AJBK6avzdt3yt4rugyeJtyQEfhbYF8edWQ96eefb2uhHwGbX58kwhTv25MuVZ0
         yYqPPAyhJBZo5bZ2jvqxV+XdztCU6zoHkUs0NyoFXu5YDOOOh/mgchTCQ5Va84qjIUEG
         BrtDMvdZ9pYKNEZMflngH3Lj9DxWdm4bTaSkEZccyFO7UK+PrU53r+D2ub96U6dQRNFf
         4CklbuCDdPB03IFLE2pGq/4RC3GutboiDY0EaHI/8rymE87D7aAJamCY+TkP1bx3Qn3O
         8KDw==
X-Forwarded-Encrypted: i=1; AKwUvBxOgATzmMyR0CYxZVub0A7luRUeLqFhv8uv6RUCjVP7IxCsuRi4DqIEK4+msXkb8Xa8ZGEXG22LuvU=@lists.infradead.org
X-Gm-Message-State: AFuF++lL/Ao/7nj9hzA9kF4lYx0btsuRPreq7gxGfbhQJk9kqDZaFvL6
	sYc9+xy9K9x7poGAUKsUX/1+nskwNFxCdjR2x07OwVVbT3j8FGHt5blYktl+6yPE+ck=
X-Gm-Gg: AYBFou3VZrseywvlhhNfq/XW1oH+cas+XwtagTMa7mRyrLVO5nepzpkn5tZLoTmdy4L
	9SA8MV/EX0oA/AX+Hx/bdG5q7jwuou+kn+rwLGbdzoq06O4Fd0AWoLlyxnn3+zcJgxdGx2rcgO1
	c4SspQanB2NUhQK+WoWQMtOE3l6c1M82d2LyEvX0rVMDHdBi65as7tIHzTv3XatGd0dJPuw6FPH
	Ut6gd76xJ8b9b/vJEfkCFZjibcVNDilTbIcNuhbyK4hNjaGXZZpd0NLpwh9N5G1uxcu24tZERjD
	1WhiwxRIi/a1WMu0YdJIpBc2pN3d9ruvY3aZ0B1p/CthGFESMAtW2+vXW38+R6JiHcmD0gEpJbZ
	C1HYHQkJQh5IszTIPt2C7Ui8IWTEh8iFyuus8hQH5vw3T1DyiZIhEn9s9LKdsNqRN2i/osHWDZt
	L78+V8/Gxs9jaxxDot4eUISXsR8SeJ/GgJuaZmgt6BgMwQM79rwGFyGgaggxjJpGa2rkexX8cO
X-Received: by 2002:a5d:5d08:0:b0:485:8c16:5ee3 with SMTP id ffacd0b85a97d-4858c166094mr13997876f8f.29.1788695529055;
        Sun, 06 Sep 2026 04:52:09 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858d2693e8sm19337821f8f.3.2026.09.06.04.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 04:52:08 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 12:52:02 +0100
Subject: [PATCH v16 1/5] phy: core: Fix use-after-free in phy_get paths
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-1-f7bd68b5369f@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5297;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=MtIxUv1HUhphqto5paraCNIhe7tNRBGeSF/voPqNm34=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnVPkzQreRDINC8gc6PVU9OptNsBHyPK2HTTLF
 HNWUVg2QlGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap1T5AAKCRAicTuzoY3I
 Oi7aEACVDXdnif71jagkrS3DzKgqQ6oTIlTQ9NUmf0Ym9BAFaZOLLl4C0BewDxxksy1N7hNXi8D
 BMD6g/ch+0X57Kh5p0PmwjB/+Vx8VCIThFyGplccRTwRN+DuOPGk2nWC+1XE/wO7uueLsv4Khwf
 snk+5k9KMTriW7cZt4Wi19GMRPP8IlDEzp6bqg56qlpzqkFDPI+PWU9Bs7k0/BPHvpd0p9/dHUY
 /NdwhpzvSw+TnhyS5Asl+RqBziBOFWXPIpAbnlbO2reopW8wq4+y5JvkPCPUMQiCnRMT85uU7PQ
 c/2dLT82MdJ5GqppK0Zde6SHF9a4e0X1u7m2WndNpTSEZ97is1ewLQMEH+IrJvREtXBXqfo9Rrt
 VIaFElW9qHPfrNoiCAf49D4qDpQM3hemY77ZD+MFLtk87KPTQ4YoHUzbMHkQD7TUF7o4hOmxwFB
 doC42uvAWgXF9PL8uUirO8VoHlOQjHNbA5Y5JF5wWzVz4+alPn4sdwI19jkGU++FvzNOetzt2ol
 7UkaNAR9s986SoXLHQGv/OxkxBtzOmCHoQFrbMlyBIVRFljM7GX5PP3Py0gGIivSfVgJ9Ms5Fkt
 7Dx6qbHE9aT5LlzVsKCE52ldXjqOxhYNkCPZVibTy8zDGyvPoSeEOOQikpxhq9yNEAn1dzglMT+
 KHF35dCy3KGQcbA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_045211_236202_AE7BD8B2 
X-CRM114-Status: GOOD (  17.69  )
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
