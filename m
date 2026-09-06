Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D146EC79FA0
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 14:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oGvzBa40M6dXDsLnht+eZMinWUdqeBdhFHM8DVhdcI=; b=YvCbPFvPCpDjDB
	FVMwxT1g9gOhQDgvqUi9+my0JBeLaVqG6QSQO1pu4wXacjnNYOWl429R1nY0KcUT/DzqO+lhiId8a
	K4cjjJtDHAanFvzNt0AWM6vld4Jtz3JPSls5686gMhxGct1Dio73GAisFoRyHSW8JhigIpTVe5cDR
	thXsNZi360+toJLm0lVJSChHFujszqhXNNVdwTPuwe+GH71SNV+PxESJqICdaKQRfsTfW7/1KaHnP
	3d4h8XqKbiZOqE7RLrA5Rtg9doxdtFNZT27ScSoYY0ghkQtm3kovOFzFFZ7CYwXlrxHZL26N3AhiJ
	JlkwoX4Hanll6PIg9AhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgP-000000054t2-1A7n;
	Sun, 06 Sep 2026 14:17:21 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgM-000000054s7-1JwA
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 14:17:19 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-482e4998d28so1969728f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 07:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788704236; x=1789309036; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OZO6dxofZbAitz209jLurPVDhx0uGUtYXwmfwELJ9t4=;
        b=pWNcfjeu3HQ+MU0EnS5G4SKmoMJSvqIGHg2aCyJTxQWB+sYtGbdaoB+O/Bi7E2UTzh
         CvURd+5hwhNM0lskx509mkOeHFSEkeMJRRTT7qHaQWpTkP3qPfNqbX99CmUsU4pvjZWn
         t8ioegNLRCAF4Z/IbLZ4JsUsRE0njGweptlHWojdlxV7Iez0pgD4E3wRTO5Y7ltWYpdu
         6TmGPZNPTgLsMzZQz7eXkunhTcPgI+sw2w2CkoLvDxNfFZH6n4fksttG1sGm6xAsXPVh
         P/5IvFRGPSJN32+WfIYBZl6Ibx9vlL0Op227ed11vmOP7bgg6kZzu7xsk/B98Fx7pvG5
         g+Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788704236; x=1789309036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OZO6dxofZbAitz209jLurPVDhx0uGUtYXwmfwELJ9t4=;
        b=lLXE3pJh6tG6htXS53zM96M5JVtaR26bwu6n2VuY/OKQom/xrpYhH1/EeyPOb47lBM
         KHZRbVzZAUOqV5dHoFBw/F3hholK8sWUAMJjpXqYSjkGPgRFe7hP1kW8Cz4uslB163Mi
         qYX7vNST2wmg+VZmkHixednYveuhtlIKLAmXsSFzNvN1unCX4vZtxKsLzl0xfNxBXFv7
         4bv8+OgaefTC35f+egGWI2QxtVOOLJ+ltL2Bai8G1zwO79vPv+MsR187VvGgRmi63d19
         rGbEeqBNfEkguVepmAJF8jFuzZJghWlviA2RaKxxOzxGIX+/HmTqgvOju5+bnonX19iF
         B23g==
X-Forwarded-Encrypted: i=1; AKwUvBxVmrC6AYGOWXPCRaiQvu8zNr8o5iyOK0CUsyYkA5hJ7hPegZ+AyEkbS37eGX+7uP8+TowWwA/+GEo=@lists.infradead.org
X-Gm-Message-State: AFuF++n7CDRWBPosYRDLPoX6J4shfiqMduHSNaGTirm4bN5fpf3giVOL
	H9db6eDJfd8hgvQ78DM+AQzyTShOMMQ7845b8HEhyE2WYpGxIH5aSXAMOF/k9E0lCaU=
X-Gm-Gg: AYBFou0b89qYPD+c46vzVW+ZSFrJFy5UMNdekg+3vk95D/n+g6y4HUMZu0AyHXB5ovE
	4nxSrSCCs8eurfQ6EZSr1/g1ktmDQ+ZiMMGD+ylHMmwuFKdMu1xp+Gl3TRjEuigyqnYQJ/IdUQh
	ygjZX23lUOUzOREFmCkv+zcZrPk5G1okPmm//NNaICHZLr0yeQMcjXi3gKw10nd6yaXABFQBZly
	z0jTzXiwrvUbXuitd8Kdqd5Y3/n5auftc2iBhXEq9/NXhJPxqoJpT3NUSpbZpFeRquOD9uEzP2W
	Nd3SRiObBwpx+iRYooGVyevrTtajChG5wwOe+H9jQxKRiTjA6E59iK8PPnGlOyggNHFXxhdT/9U
	sChdwtQCt1CPkbtShKCzYC8qdEuzpT58NECTXQ9yI9OII38gMH/vXI+EWmO04n7QuTa9CLejlSo
	/RFTKMAmd+vgpiTklNr33T4zZYg3Xa5snjIUy8l5wu8LH3CAwW9f15HcZJla0AAQ6odWHp2zCOG
	FneN6FDWu0=
X-Received: by 2002:a05:6000:4694:b0:482:ee81:f0ca with SMTP id ffacd0b85a97d-485872a56e6mr16211183f8f.12.1788704236345;
        Sun, 06 Sep 2026 07:17:16 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588390e30sm21669763f8f.7.2026.09.06.07.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 07:17:15 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 15:17:05 +0100
Subject: [PATCH v17 1/5] phy: core: Fix use-after-free in phy_get paths
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-1-e2197a3e2551@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5297;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=MtIxUv1HUhphqto5paraCNIhe7tNRBGeSF/voPqNm34=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnXXnNTbjHP1icmE8CNbsM2qqgpcwLeDli3+4S
 jx/nJgd6m6JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap115wAKCRAicTuzoY3I
 OsvCD/9XaIr+mf2+5wtcbGX1M8ZayA8JGUaFMtEP5bzX9qb6j99iLte9gvMMF+ng+mVpDDlMXlq
 F4viiBVP7DRZ6PFDURdFYdvVjixU5+cqqS6IL0PYo5MVwAYaofA3xmhVrWGtSfZbi7crF4ak9x/
 OMDSglf2fIxnav+lOrXGatz0SwtavCSwLe/JnySXNq3foHMiiIUXFrtqYSyNk8nR9L/sv9onkaG
 aEQB5Oq1mTbptQjHngGnbB0aWpH76u0KRxZbEiD99it5nmT1JJVx1rDt9ht5NhgtJ/BHfj0cs+a
 ksTGZzSYe7theqmfYeBr5gkSYezPBTksdCd1Hc1Tp32F5BZ2SmQRyHhYRLOPb17m/u6zZ4g/ff8
 0bObPz+KXCW8z1PNZG6DNuzcmzpaQB20P97OSpFzNs/6KGqrXqq/4W2PS6WFT0P9J6pKWiDqW2C
 9llL0FlhKe2AYv3xY7mBvxhNOt1J2Vx+auz0sWJyzTA/P0cbVFiwyzHN643hGh3rC5QuQDCMl5S
 Z4ADJmtDiNi3G+E9t01e51ROIAOSuFD8kKemoPUaFnJW5G1wjSG16lvFf/PdH8R8ESa24UOloMo
 hl3hNZ30QIYsFPZ723dX78PvOZnY7GNnENHKxqKo0lNzGgbkxv3001jqrFWFXS46T7QJcviNrKd
 k5PA22ShQ8STAGQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_071718_385784_7843968F 
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
