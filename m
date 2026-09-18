Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDB18C982D8
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 13:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNGSYX8fahn//38cwHCgtoX8UG0Xy3RRxpkmIfxJxQE=; b=GJhY/ucSe2bXgf
	uRsFs7/K9vtCi9gO5UaNdyMNydBHJxpOZkFdw8Z3waciOuXy/aIt/pNALwlPOofrrzWR/GWyDXVyd
	u6qgv9DuS7Zo1bWyBCE5PKYY4V8kuHuv7agm5M8uSQKXlYNNhWbSWilVbK0ybXEHh6tfXiGSBnjB9
	g3oDhfh7m1+qugLP+OQFsJeYipiJj01CQ8fWrJL7P9WIo+CCGVhPXFk845/40hE7gIgyYoJdTC7BP
	70HvmU1VPh8vCmFh7+KqADsUcjeXwNuQzMjigpLRkjY9giy6F0dNkYTsZWdbbm+Tx0+5jBNv8IhJ2
	khcegR+fTRHm7bUtsJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5C-0000000Edu1-1bfR;
	Fri, 18 Sep 2026 13:56:54 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z59-0000000Edt3-24zS
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 13:56:52 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a99391ffb2so1243444a12.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 06:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789739809; x=1790344609; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LsT9IFRHhiJUngj7BjrND4Gxc3zxhQTn9THAcGWlf5k=;
        b=BkIlBpCDrxCwFHVRRXLIUKYvuvlrm1fWm8JkNGpI2BsQSEzJK9ZbB2JviWqvQ8WnHl
         AZ7WGn0agCrzsLHdbxNzaTU2YdcpWMQjMsv4qZ6aU3NQjtPioguBnilhMFjjWNFfYxIr
         0JLLNWbxsVs/Zj2kPaWTMAvrmRdXCB+MZfJMjdgoeeRAJNMB+3alNKv82Vm/Q9pyPkqf
         A9eC55hThARiP5dXv1QYdOAH7iJ3HVnyb+e87kn6rCBszfN1L/anc2D4C9SFDAORAgnI
         I9drAJTQfjGekjMpQrbPhyf9BeJ1pWNOxMaaTjZC23jf4ekC8912hgSqYgUXv1MR4I6F
         RMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789739809; x=1790344609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LsT9IFRHhiJUngj7BjrND4Gxc3zxhQTn9THAcGWlf5k=;
        b=j7mcW1u+eLJqdXeVYkeSvO5fpYIA9co9fEvCetaUgaGDryOm/AL+dT1DOxWPeH0SVZ
         2CxFrU36UWCHp5fvybSg6rQ9WHpp7wqvZjE9XIwM0drQtShxMUgXW0jRvy1eAKNtTo7/
         +95pzEeBq6KwirMxSRFiIL5qqcb3EfT9XfXXL+gQ376ewnKJadiYSzQ71fwklTDbJmEz
         i+maaYyArh4VJNw16lFzUgprmEgUk4ZksMDdLCZKm8K896yM8yuQ60PtA6aH0l52naTH
         LGXtd13d9tBzfjEKtW/eI73wQY+yN03o8z9BVaEy44RA9D14y4CJcTjXVQDXI45yXejn
         X1AA==
X-Forwarded-Encrypted: i=1; AKwUvBzUvbP2Zov5k0lCBhw3U6y2p1T9tgskj3PvUuizUaEJZ76BsQgq5j/BbzJd2UPfe45unTrwXsvpCeU=@lists.infradead.org
X-Gm-Message-State: AFuF++moC1fp/zYHwYsE2UnpaJJYbEsbEudzA6CuKAS8FRSuO0tNsqpm
	D2ZJ4mdnrGikMGmeje+pN3idYwwwFrwHA+QsvbTUIKeW5qTq/ud/EH7WQPxNV9ivAQA=
X-Gm-Gg: AYBFou2q77Y6Ow4/7oEGsvwUBfYEqqYeWsKbtme9yKtoEC6AZV3S+H0LGvfz5ijFzpf
	t8tox3tjWazrDRIobu+ir7pQSTUZV0Ltm5PmfgAWZDlyWr/lSuDa1LCbAMVdRoFnOjKiCZKaSip
	q3VV/R27nXWU+OxDt+Jyk2RncLkbCUI0D3rPwAG7zLRrT7PKCqXJ0HnV2NDH5ptVB94VeedzNmr
	VrvSk8XYl/dhfHW/LtrZTLyeyUyDE/BvBjfV3Mg90+h+8lGgzc2r7gPukwZizVfNjppps+M0dpH
	hHFzFZELjq546S0PlYhLRrpkAv2od3ThPK0GClcDis3DX5+9Rs5RAf+Hv5BR42YiLuBeDMfTYXx
	26FmBesKNgI9+TZbibco0cpfu3KmUN1Xm68A2609VC3RmzRP1zN6qwVqmPnPdSNe9kKqLt4AHnS
	Ri3f30jRyLZbh52A0nnXXsnC4JQzL0R/c58NnLmZiHEYCb2FBiBSxtwigZ7m92yBGzUbLcXgQCZ
	eiG1k0idw==
X-Received: by 2002:a05:6402:400a:b0:6a7:ee55:dcc9 with SMTP id 4fb4d7f45d1cf-6aa57861e81mr1539832a12.24.1789739808949;
        Fri, 18 Sep 2026 06:56:48 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa59730866sm915455a12.18.2026.09.18.06.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 06:56:48 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 18 Sep 2026 14:56:36 +0100
Subject: [PATCH v20 1/6] phy: core: Fix race-condition between
 _of_phy_get() and try_module_get()
MIME-Version: 1.0
Message-Id: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-1-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
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
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Oleg Keri <okerixx@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5454;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=IoXZ1reQlvpqJte8Azuyv4AEJ1+ZnvZqFWxjllzwkAs=;
 b=kA0DAAoBInE7s6GNyDoByyZiAGqtQxuhxTNWuBxqGuGf4V9voyix+7h2Kuf1dI47lzHHNmTBP
 okCMwQAAQoAHRYhBOaT+yqro23hF6tvtCJxO7Ohjcg6BQJqrUMbAAoJECJxO7Ohjcg6384P/2Eh
 8FioUFRtKvwe+A5sax2BlOE4qxn9ftzFmOdVa4B2dygKtvtNV/+kvY5kVAtlP/JTiJFrDum9DD5
 cK4rRdBM8uNLSTPE2NqXT64fJOsUoh6f7vNq7QFHV/VDbMQB1CTuVogQHt39lQC8N7uM+Cxl0NF
 qvhdMQLt6OdscwOFltQA9MtQasI1P6oF3OP+NZ28dEiKIznl+2eMWwxVJivnyYNdqoipXzc7++M
 B3S2pV3hM12q5Ue7u78V7mljnO8hpCIi3EtSE3qpL6Y/WS356g0vH5b1Sp3TOHLDOez9B+ClpGx
 6ifC2wmhq9u1oNmMFPAsR+bVCfJJ0ABv3Pu4ARjzTM49iNTB9vzWrMIPMBEtovb658J/VueYMCA
 l8pr4Akln3NVS6hfymeXoUfDgoMuKb5eoR9gYW3/V12td55PlAs7VgKcBQdhuYj9VNcXEf/i2Ot
 8+OYZld8Qajo022Xrab/ZFu4W3gFpkLKiMXBhMAWgYNOYcIP2/Q2jjaZfn+wkidvrfAuUwjCMQs
 R+XJ8bAKr8ypCM0iKtjmdFIqYN53SQYPZlLrGzlYxk37Mku2WSIyI1NRUtWCuqpxnOIh1jtz1A/
 VtKAWUBCLe3pG0/atadTuCgu1KYwO1+B2nbsgc/gXo5UgeT590/Zbb5eDvkpFSEV9T8rD2kH0xJ
 vJm09
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_065651_606386_12477EFA 
X-CRM114-Status: GOOD (  17.94  )
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
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Tested-by: Oleg Keri <okerixx@gmail.com> # Lenovo Yoga Slim 7x Gen 11 (Glymur)
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
