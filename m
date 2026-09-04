Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B6EC624D3
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 11:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0HOUlgQy03iKnrWyZ2GXgxonmIh+o/WzGwt+/mlWdc=; b=qc4jVbhy/rrXn3
	CoCeqEYLeGLKUGWLsf3E4fPaDOQZSpKROYr29y5gbwb/D03A9fWxP0nBX997jEvrtqtlH7kOvo8HJ
	TLl18PLXQlpIzhJULndWi2K0Cq/EZyssd801rmEcTRWxVCNBIybTG7EqzB5g9XULEU9Mf9q4cwvjU
	L+TbzDS7tyC+lWOh82bjD3rIKmewcKJL0c1VTew2kGDhs+vb0MlRt+F4rxsACrSYeE5tWkU8kcVjl
	8+tV1+T8Fe5mkNzp7qZ8EBqyB/celMieLCTVdl29/HAI9yReXCloUJACTa1kRl+wEhHnMs/H8Qaqr
	nrXJmEVnpCDZJTbpvw0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2STn-00000001wrx-3lwO;
	Fri, 04 Sep 2026 11:53:11 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2STi-00000001woW-3OO4
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 11:53:11 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-485850cbac3so585333f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 04:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788522785; x=1789127585; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0Gn3T5GKQVsKNu5CjSN12Pg6Gz0nGtd35pevkWP3bfA=;
        b=ZXM9r8xRxH+0eR30QHfLf/0XHMiYnrSGyN0cry4nsUGiis5l9Myajj2jjB6mgK2Kf4
         10N4flTYZdKlvuBLV2NWq+TQX30MSdChVD0bCi2/PA1QsWG4ThHRbIWhnhpMxO9ybT9F
         75qVErrkPEZatarpimz3Sfrq0tk27LuVp0RxSp56PiQFbd0OLyl4iD48AXMYYLR7C2UF
         PRhB3e8aTEa8UtNhR1tFSMwTnm+31xrViiY2G4LyJGs6z3ZbhAjjXa4y346d2gDmpTHZ
         pbh/vlsQPL0EnXBzc9rdmmTtsiiZj0QPDOdUtDDaDc5QSAed8OEYs7zlvQQoe9v6xB37
         sS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788522785; x=1789127585;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0Gn3T5GKQVsKNu5CjSN12Pg6Gz0nGtd35pevkWP3bfA=;
        b=I5u+kDV0SDIBRKbC7bQGDlNZmku+2mcB3UWiMOpPEDIPzNnLEYoqaXrfyXsHhaey4M
         wUivuBrc7Hgnyy5oq2j+VJnOlp5ptVNvFhmHuzKEWWTFOKT/4u2T2wrThbr0/gNNzbYw
         OVFsoRRLdL9Qs4sqy3aLu9scQHx6MzVWN8Z6CMaKsYt0L248qXGTKvPITzrREO1ZuIcH
         iLuplgKS4jLFaOaKa9xedgm+CAdytmJZDRqIBgGIvATSek03YAraZGBYs9Kq6HU3PUy+
         9VrGAqp66Yl29IPiNpG6XEafOHzOWsEfxzzZb2auYXIoH6VmCb42cNPlUf9VsARrBkKV
         oo/g==
X-Forwarded-Encrypted: i=1; AKwUvBwlbqOjGhqFnqUIPpGrjHPsJ7gE+Vq0MIt+3xb5r8K0rZGNMf5vN1DhPcRt+wBKye4AxtEyYnfVtwA=@lists.infradead.org
X-Gm-Message-State: AFuF++kSjxHqiYrvCe1A4TgLegoodoaWtCh5YubD1Ww9CUuAWMtOM9Go
	KPl45MUYfquwNhnbgwTHgj2rkDvKx1XGbpQ2xPCfS1H+aS84EJ/qESGrMrbDfHIKLT4=
X-Gm-Gg: AYBFou0OKCBKLcFryoLtCRRbO1LXe8QAom8gvnqNcfx+JjNkmujGXgQFgFqdRD7eWb/
	ur7vj29a88kHC31K2/bG3cIFQOZZDdXouk0cAQZ0B28trdgLzLvyMo2AssDZd+rmoD7/Otv96EM
	Z6Cvqd7u5jMAM0X8oJPbQksErMDosvgkGGrpgQtQTq9pdekZ7+4E4WQhe+Hzml5xXLscKbk7++w
	l69dvjL8MLfcYSyxhlojy0ecd/4yTkukGHR4KDz+A2Uc4F9kaYE95zUm8rGfq7CQZdpR/6Bzm7v
	5zdM81UDsditFNwpVGCZ5xPEM0tW4RDD3XP8orBuuPzPu9DR7PvVrEKr+8g6x9ayK2STIrwewRN
	YnkL8owyAttI8dCuQgKuUI0KwBx1bWRhI+lkDL6NZndTjzutTA2nblvfbSvBaHctgv5CPiDvQ+5
	U3DCcF58epPL2gL1dQ7llvemqP6TjY+4KflM2wkOrktUI9jL+FX15VDP3tmivl/dLk16RsMgwp
X-Received: by 2002:a5d:5d02:0:b0:485:8c16:a35a with SMTP id ffacd0b85a97d-4858c16a5f9mr2923096f8f.50.1788522785044;
        Fri, 04 Sep 2026 04:53:05 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.237.179])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885c5bbdsm5474207f8f.36.2026.09.04.04.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 04:53:04 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 04 Sep 2026 12:52:58 +0100
Subject: [PATCH v15 1/4] phy: core: Fix use-after-free in phy_get paths
MIME-Version: 1.0
Message-Id: <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-1-68b7916e7a3f@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5238;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=SScZXkbAnXgnt8nSkpe9dZOfqBXgsPZesshLBsUkf8E=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqmrEcRRwG+Yi5Zk7Lrt1BMPnkhCjlvn3VMIIzK
 BkC/hH62jGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapqxHAAKCRAicTuzoY3I
 OkyVD/0ZJAcLsU1XsHqDMb70c/J8/RnY0iJ9KDXjiaBsC/hPi9OkMLpMqpeEtVnj7y0MwZcxpk5
 7cxvGhdk+2/L/wsH0HmD4l2eyJxJMPVMq15Xs7ulS9X0vpdW/o3574Xvz9MOlv+0Ki0Thd+zY9q
 GVeVe06Kk07GJfs1VdpgGL9GyPUp+OWKFQML0FoFVsqPdzPRRvR3mTrBtneZdtVBHAPjIyjIjoY
 THd+0ouYoS3lEzLQ99nxkH/Z6QBDTKv9qG4z3vEivXxMYr6u0CLgDCYbDskyClUsbX5VOoAbafl
 TD8XcA3D/9EaODdsLayLeRNm4/auXmijSKatzdRMPVbunt6MfaRDz8lZ7r1ZakxZwN1PUV6Eauh
 XS3RrvnowEhIvrpNQ959rX+CgdUYDqzz1kq3B7B+Qco+ZOkCb1PRY1dUljE8u/AaAr3hmFcHj3l
 dH2pyfko9J8zQRF9lhu73sPgt2HhZ6uiDE6IF4aga+VnoBr2h7QCAW3E1vY6o13ESssUcnzVWv/
 kDO5G6IWlmxOYy25fR03muU+1a2cEoEspMfQGk+vWKvFZEP5ih9cO1xq+5+fkwVnkMVlLlVVJSI
 MO9S57sgq8Rh5beNrNPCQxX6ot9+4BWV/0/YfdFjw/d6U8+96RV3pSX4r+wYcDgTC5NNu1J3kZT
 SiBA0RjaoV1GKGw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_045306_889734_A0E61740 
X-CRM114-Status: GOOD (  18.21  )
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
