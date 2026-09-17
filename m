Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD172C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3Dk8dqPmQ0SrPGDxf1B9RgoXKb1zvFyLkpkVGcGu34=; b=NI2GL2FxZPzMCQ
	c0p55dV2EGPdwXAZw5AnfkWznLiqoopZo5AELqTbef0ty+IEVR81YVTvx2+za0RPrhNgHLYPBbPlG
	CQbqQRrWtTSi6P1gGwkvJgdGjXrDdeptcljcV0jPEOA7m1CPznhNWJ6Msukif0S9v0Otyx7OY4Dk1
	kaXXnF6t3Yas7YFSI+2D2RlK9mAd+0BbmBXBdMG1sHeSr+uEk3wWiM7oJ5t+Oe5srTc6d8Okq89fN
	vSapVj6ZliciaaBAMFav/q3HsFegmdAIwynHItamnKiBQQNR9EDDfApVjvOKubHeTKZTNiyoo8Nrt
	DqQMvgU7Fm9FKyT0J1jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzB-0000000BfYd-1ZWX;
	Thu, 17 Sep 2026 15:25:17 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Dz9-0000000BfXg-0DO2
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:25:16 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c294af0caa8so158565866b.1
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789658713; x=1790263513; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AEJ+zdV5VeKxtZ9NMskLi/eRs52AJWTItT2AzvXaS5s=;
        b=AiKunqxAkCNUdq2mf3Yy+wHx0/7TUM9Wr3g0CK9K3+UurAmd9979NbviT2WxmUevc2
         AWEMnJwUfQFkN79KsUA/g1BjdVdbYlPw60FSFZuLeV3SmnYJX8bNYFtAgUeH4zZsIshL
         XGJ0k4r//D0/1YPUD7LElnpHuVwzXBbtnbx0pZIOe+n6eKGXATRBHtMZHj04rdOo7eGA
         ZS3DXE+P6579AukjNnLVee3kKM/WLg/HhQ4OsEMVjQzvNwzAdmDkw3pS5/LwByd7403b
         pVjtpJcJOsl6jHxSlERR0zVN2LV6CItgPSRrrFXLY34TQBk9v1hvWmNaB7mmsQXY0+WO
         ykDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789658713; x=1790263513;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AEJ+zdV5VeKxtZ9NMskLi/eRs52AJWTItT2AzvXaS5s=;
        b=onkiNdi8qCLVga3p4C4aWbBNMY4fV6NThQFufOOsvUZgr0bLVwLw0N9aeeAzyFME4L
         fQSL6Mi6qQmygg8QvOrWXPs1UV7tY/Rs2S1Wk/aRoEdO6WDfn950Jwu/arvY9afQ2e0L
         vw2F1Ff3CNbbYBnUvqZ1PKPlrizqE0LiiojP1Hj3fMdEHsXU6TTRHkaMNn21e9M9LGuS
         E/XZQb2x71HQeVaOKP8wPr7PkPw20FCmDKnrA4U3ydNTnC1PDX3AlZL6Ym2phdQt1SsZ
         EnFN9fN+UYHuFZkeChLCGj21HQ+wW+dCh3VeXEx4yTSgUXYq48QguWQRVrPyfIDgcq0c
         J4Jw==
X-Forwarded-Encrypted: i=1; AKwUvBy3BHOPot0v55siTnNAYwUgeWlmz0dj1mkN+6yhb+xbAgbxllkkiBhJ9O7X8uPjgeEXTWfSZR90DT0=@lists.infradead.org
X-Gm-Message-State: AFuF++kqYZJ6UGMqLB3Q+PK9j4gQ7eOLUVAC0JahCbAmH40zWuXNad+Y
	0N3fS9oVlInn/SZAj/794c4rX4scAmPaDmnTAobPeM6aoSpCgIaw/Y6Ekd9UwIJwjFs=
X-Gm-Gg: AYBFou0CtTw6KGswOYz8+Pvv0OcsHCvGQC0lbjgZAcKPUNXxC7FoHbti81IlG/U7fqw
	+CvsdNY8VEpG/6K4GKtJEwEDAAaN3x9M9FDx5K3LcUql7yc3BvLAQQgwMTgNXWL6Gaz0eCeOpon
	YyGZV0Dm4wfQ65z24VFnicTJDOJaMChdUXMtCfbHejxUGXv4vgYjy4arajdrjCPxlyLya9jOOvE
	wCrZ6J5ANN30FzOPyz4hOP7HCEyVVp+xsiyPW6uprNka8QydxdU2eUS+IFMr1m1Ia5tMfrzauhN
	phmCLB+jLCtgdGSQRV21G6NSm+SPl4nc1RGBIfBjt90wvSDWZnrqLeexlaEKUh5X2ycH5I3l2wo
	41DSaAYN/Axlqnbjb5Ovxj9AW9UWFkJYP67jxS+4bwZQHADZZvW+62Rr8yw48moDiLVs8EGPDi5
	xLGReZJoE4JVQH5FF2QzGZ56J47vQe3fhTwfmOoq4bWBxRHz+EA0C1hOi2JiQhxnqf04ucqSj1z
	1dCZ35RF78=
X-Received: by 2002:a17:907:1c1f:b0:c26:2fc8:4e91 with SMTP id a640c23a62f3a-c29e5392cccmr517140166b.29.1789658713014;
        Thu, 17 Sep 2026 08:25:13 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de48755asm310587366b.24.2026.09.17.08.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:25:12 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 16:25:06 +0100
Subject: [PATCH v19 1/5] phy: core: Fix race-condition between
 _of_phy_get() and try_module_get()
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-1-21ad8a76e941@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
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
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrAZUcpays4h8JXL+XeOMyUq3TXK/VODBXi/Xc
 5Ne9QjokSSJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqwGVAAKCRAicTuzoY3I
 OlpSEADC8Wf4hzNm01U+HNiK6W2iuoPHg+0s+ljuihZMu/yjAaIQCJ8cUfdyo2ANBUc6VYwDrZ6
 d3SZ+56IGDtrjeCJmMWvaPBdwDxK1Y0Kn4u3O/5t5nKnCcKfGSzG6BtrPyd0SvSv0WBanOfuACU
 SHRjN5bWDTH07xwACU7X2RcImVCizg8aNUOCeEzU/r3zx/mRy3/pAH5uu46LOu3dsNOohbrr36w
 FMSssMA99++wsIHp5ueR+sR4+5C51bxhCoc0DaLGjIyghjxbyXhDyFj5mlnwMcuF91JyMVc74Xs
 uT1g7jAaSyUt5vNvEMvv5jkLR1VeEk4fE/5H8uoqokLaJ11hMyXP8oYANSNz6CvtmFvd6n305kI
 yyy3ADm3h3hA1Q8qEgp7kkHRwMysnpN+iz3bA47AAPoj8wD/xC4iNKZCCb4xjwoOMHTrLDzKwW1
 yT9gz3Ulnlnh465vLNhAXmpfgNhrDC2B1W0BLA69jcUY/wWQZpRARsYHjqBAv7hNNuciqSjpaRj
 nAGjnjkua5Y/oIPupUek9jlHF1GrKTtP9lKrtBYC1wW8DWZB3BFdpofhkoKQ1mqwaup5rfGG4pR
 VlgC/w0eVfslozwyLPNfGbCfCH3BJHzvzcZsiAcUWIHJUxnU0sBgfZ5cEX3NFa26dXkRNYcmRmO
 JXZkJ6EoRI4XWYw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_082515_149929_4D14393A 
X-CRM114-Status: GOOD (  17.85  )
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
