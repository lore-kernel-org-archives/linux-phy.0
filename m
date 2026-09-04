Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70DC4C79F83
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 11:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDey9+UlJbo8Wdu4CZEP0y5e6nfct0g3fL8zjjNYVHI=; b=TE3flcwhe7m8A5
	zBWeWZ0peXE9qT6Ys2gs3Z2viAb94HmtzRiBX8VM6Cwg0SQOlumBsuGyKlFmstqKGF2gozPUUd2mE
	YAwO3OySPbRSlCN4LRZ3Jlz1T/R2EQdY8HsoMCRcAZQ3sQrSdrs4Am1TJcPXt/Y2O7C5BTmGtsscR
	QFXpBoFY8UEELC48Gw7/jt5mjnl2vsJ+jJ6AW1yNqUiuwhn3Ng5MhAeIx49KlqIskR/KTNg/iJyaZ
	VCV6OenTYyVXme7jwyj0U0EgK8JFFChtfRY6v5PL9fHSBq2snEd5/+GWDBtZdxaD7LaETq4skwBnY
	heaOTod7YYcZyZ/x6K4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2STp-00000001wtf-0RaA;
	Fri, 04 Sep 2026 11:53:13 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2STm-00000001wqL-0mil
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 11:53:12 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-49556f97a9dso7953665e9.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 04:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788522788; x=1789127588; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+LoCl+EbBl/1yupzEbeoWPgLAsEGydOXRIOMMFAJTXk=;
        b=CrzKLoJWTwn5QlqoEREqVNQu2OzcXUAGwih4z0iMFv63tN2IkAuRH3lgz0VABnRi2Q
         wkRn07JvuUY4VeK3Mwkq1nuV1vDyH5namuLOZkSGCz9sTJJgnjrpWNKaO2h7SHYIaNOR
         uZ4eWE8og3f+SdB69+1UBwOJKZBN5zr36pcCTyLXOcbISAhZDKNNtD+jeyQP/U4tLRLN
         GLt82BwIMiSmcPF4rBmPzY3VIRPZWgULpxuSWcPo/V++rsDYLzy9wQNt+m7K2GDip2vX
         0OUQyije0qrMMZgCmD8kIYiXacA6UwjDEEkxkGYZun6nI/Xg2rEd1gSvKZCCy6EqoNFX
         8S+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788522788; x=1789127588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+LoCl+EbBl/1yupzEbeoWPgLAsEGydOXRIOMMFAJTXk=;
        b=YYqGvzciN0SQKge1qRvMEv9wg1iUOl1J/7mXJZ3zx1tF4JIs981c75ZSru3Bx+slJN
         gJ2vfG4T+F8WbMwdlP5+zz055zRLNqg11FP199g3lYh8UENidf6FiXjWGYJlUcGEBq77
         NznsuGJKJm9qWnIo+GpAVYofIgrix9v2wTp6OIJhojuazJNCE1Vv/NOzVLZl4Yo5uxpp
         5aOOH+mgjPrTC7zML+vjybtvb+gqdJJ/mCV0mZurmOV9Yc5b/rCnZWdTZF3LeLQTWTCQ
         NLwh0tvYCH4DatVLIbZZLZ5IFVfKxcxJ6Amxgkc/q0THtiCf0lWFaCdnIDECLGnpNr2e
         +57g==
X-Forwarded-Encrypted: i=1; AKwUvBxRb7o0xb0qJ6JG0PAd/40mcmMKn4YdbeuldLI/45rB3sC+UbohmF/afo0st7BPMyhLKwEJsN8TbNw=@lists.infradead.org
X-Gm-Message-State: AFuF++lKSFVc0jfBppbqTpYkGFfXvIVuw76a8hAVh3+AOiYS/7kMig2w
	XQqTzS93lp9SX6qBhkfpSt3DaB1AVJA18W+DHzdtyy2KjyO8m//rRFi/lCCtHTB8lXA=
X-Gm-Gg: AYBFou3ZR3QweWIPtb9XoGAv9F3WRiBSktx/DXFKv0wMXMQg34Lg8b/bim//NlpQBWF
	DlGO4X6c/PaZFc+YLvho5sIsKCfePtVqhT4Q6CdD+aqfBwLiTzxPg6XTkBYu/C8d93AcwHKHoZy
	uc0UshyvP7jmfzLtNeCx4YLwUCr86wrLNSFD4G7JFfEr8qXhwq0xU9PyddOa0+i4CSn57ae6Ydp
	gYNeHFuOu2CiEHX9VL0xCXLZ+Q5VxhApuA/SoDHwI1uGWxseyGhzPJwqwS3RQJ3tvcgVwWi5pD8
	Mt7za+zkQtJoSfyH1QiQTusLiEzzn7ja2Nff1UV9X5t6/BUZwaz1QqxjVLuJNmhcv/ejY+MAn5b
	m2+VFVhfBOdZ3CJiS28QLm+Be2Z2PMF0f6B95dE2djlgKK9ulyAefUEVVO466FF5DnJoqFXmqWQ
	DeiIZTiPLvfu4DTe+EcCZl9Ow6eXPrgE9/KkoTJyycvfZaDQS2/iAPH0ia0KxxP2XmM4xvCuydN
	0DrFQKx+cFWa159SVi7Bec=
X-Received: by 2002:a05:600c:6819:b0:49c:de80:b833 with SMTP id 5b1f17b1804b1-49cf81fb1acmr54922535e9.2.1788522788268;
        Fri, 04 Sep 2026 04:53:08 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.237.179])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885c5bbdsm5474207f8f.36.2026.09.04.04.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 04:53:07 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 04 Sep 2026 12:53:00 +0100
Subject: [PATCH v15 3/4] phy: core: Add devm_phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-3-68b7916e7a3f@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2684;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ov6l6XYXYWQFGwdR6skU1nY1vxsBWDotX7Kg0ih6rxA=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqmrEcsnrGBJeocLVI+O9+brnUFW6FqlooZlsl7
 ZQrlZxFXwiJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapqxHAAKCRAicTuzoY3I
 Oh1cD/4x23nTIQZWK3SoWzTz69RZm5zv2SQvYRXMjI/nTAsWspK6u3DZytcTIZvNrPbSfUX3IOh
 03tILSVIul2ljDB/mLHI5ISqXnWDwFSZrw5TPGhQAwuLk3eSb2shn7Rpy6+gyGH2gJJyYAamMrb
 S9wnHssvLy1A37Adohv7PxZNC0woy6kZrPzZWbsWw+xrc3tLoTAW6Nk7twCcbnYNdNurrBGaY8P
 EldjRAd+h7toDSC88y8Z/NsbepmHVPJIYt+B4QDcDeVZVzp4IWW98+SlokPKjDwK7aHGUQv55Vo
 0SmqSTbXfbej0xA1J3Ey7yJQyj0DyLaz4mEuvalyTzEFC7zrHGRuZLLkGiNOatAr91JRawxt7PE
 t5WYUNGg47apx/Usr6MBKDiFJcg2vOObOITZSgN3uyEIRlY1plfy1+TrlDchN3dnbLoS/cCxW4R
 ABtFaPiEfa8GpcUTRIX57wDOZ6ntwgxpWS4JqufJenxB4+08/7oXqv94mfwXT5LroFCQ/7kMVWB
 /yKwZqPHMA4d19ViDg10ZLSCIPRsx+dp64FfoHJwszTQxrIImNLphq0gKyQKc9rqPWM9468Wlvy
 1+Vg4ExvzOos48xua7GCdEegUfYaJag2LOU3kB2fY41GNScmAfODvW8m4HpCF0nFLN36sgLfLqf
 aF+qLSyR77k9s1A==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_045310_796766_E91D02EA 
X-CRM114-Status: GOOD (  12.69  )
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

Add a devm variant of phy_get_by_of_node() to allow for the familiar
pattern of having devres automatically release resources on the driver's
exit path.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/phy-core.c  | 34 ++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h |  7 +++++++
 2 files changed, 41 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 490a7cde6d40a..2e3581ecb42ee 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1050,6 +1050,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(phy_get_by_of_node);
 
+/**
+ * devm_phy_get_by_of_node() - devm managed lookup and obtain phy reference by device node
+ * @dev: device requesting the PHY
+ * @np: device_node of the PHY provider
+ *
+ * Returns phy associated with the device_node or ERR_PTR. devres manages
+ * releasing resources.
+ */
+struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np)
+{
+	struct phy **ptr, *phy;
+	struct device_link *link;
+
+	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	phy = phy_get_by_of_node(np);
+	if (IS_ERR(phy)) {
+		devres_free(ptr);
+		return phy;
+	}
+
+	*ptr = phy;
+	devres_add(dev, ptr);
+	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
+	if (!link)
+		dev_dbg(dev, "failed to create device link to %s\n",
+			dev_name(phy->dev.parent));
+
+	return phy;
+}
+EXPORT_SYMBOL_GPL(devm_phy_get_by_of_node);
+
 /**
  * phy_create() - create a new phy
  * @dev: device that is creating the new phy
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 71c2e16397130..14b924a88411f 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -285,6 +285,7 @@ struct phy *devm_of_phy_optional_get(struct device *dev, struct device_node *np,
 struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 				     int index);
 struct phy *phy_get_by_of_node(struct device_node *np);
+struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np);
 void of_phy_put(struct phy *phy);
 void phy_put(struct device *dev, struct phy *phy);
 void devm_phy_put(struct device *dev, struct phy *phy);
@@ -499,6 +500,12 @@ static inline struct phy *phy_get_by_of_node(struct device_node *np)
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct phy *devm_phy_get_by_of_node(struct device *dev,
+						  struct device_node *np)
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
