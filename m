Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1D4DC54F4C
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 09:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddJBpzq0CYRsA0jvknCr/M5AjBsh/MG34vB3H1cqQRo=; b=A66nbLg0AFsY1G
	1lv3gcvURfHst8Uv6mDiF9cNamuGTqAZyNnWUBVtgoUbfdKGIUE5qzNin9BzElpL3KiVBOdRJ1VDS
	nTMZ5kpRCLvxJpDW9q6oXpcA9btTuiG5gOOroZHfJ/4OtzfN1QgT7sFUEfw5vNPaUwZXGTIgp0EZf
	1PiGHjZaNfk2KuqSK46pfAjqxnS+HtDyEfreqahLMESspnkcRfReHQ2vZS8/bxjBzYK8u8cxbmOVf
	rg79wkhJYDDKPYg1R/6dS++cnwNsbmtTDgxchXjXLOwoX3gG8Rs99Ttytoq2tryeH88NuPpq89Bqm
	JqD5c/l18EputXkAI1Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeE4-00000004qaA-1RH4;
	Tue, 28 Jul 2026 09:35:52 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeE0-00000004qXC-2QEh
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 09:35:50 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4955de8797cso22949685e9.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 02:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785231347; x=1785836147; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h+TX93WEDHS2lleBHb2XNYNRf0KeRjovIXFDjs6QHpI=;
        b=rddw7y1kqRPXofCgZS9ApnCevumM0gsTODUvCBHFc81kHspZbqlA5UInezPtn8N4tG
         q/0ptw7j6fuX9+Ngqi//3QHzkmEVKmSBZDKYKHbOJKFihCpP7NL35R0Mx8N8iFmPMSiI
         3uosmSb1SSq3LgdrHJeYvOc2SAlAIGpByR+RfPzyTgz+dEKKHxaZviu9Q2L1p0/aQGJh
         yEaefaPFI9FENG2IiAssSyqsNS7JwZTWX0PjdM+jaZe2Z1Aw8qkqdIWJyd1nypB2dcBJ
         F4YqJqSjCkJ3C1fQQudGDAsVyt75T/28gtmhtHSYr58zzmbe/QkbZXC8DF1MAHvARemD
         Xt/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785231347; x=1785836147;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=h+TX93WEDHS2lleBHb2XNYNRf0KeRjovIXFDjs6QHpI=;
        b=O3URkkxiwhUKNzME9oy/4YTKYzpMT2NZAcH5H3up9alLE3TAADapTFwEuxuB+0y+m3
         5rFIKQPhGAMj0vk7aylIxS4kQ4eGfcUoMWStMY/yfXDDRVJi7dbjpcOw4L5rrKOcmVvU
         c8q9FrHMA2L0Fl1SY70Yak9rPhX/k9nNsG7j85jySLII1OohCMdvAF1fSAIqSLgWgSeX
         Kn2OaM1lwDrgy0bDWVO1+exz1OOOY+2eJlVIIzQ5H1Kkqvwn33lUbjWAp00USTqaJIVi
         kudyLbicEcVah2Q5NGi1LcB02rZmipRWi2Sjj0Bvlo5Rlj95iUiiwcQA+9wmx7I0epzM
         mdCw==
X-Forwarded-Encrypted: i=1; AHgh+RrHJR5kfLXTouwb1TIjjiWUkiv+f4YZnT9ixqNRbInUHvHxX63WArg6HYgmPnkCXPUamed94F4YtzY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzo0vA+6Po/7aW2BuZYhOcpYCNOLjp51JrEcbSuEDsXofeNPpXe
	wxuEhpuam5yfXNucnCnXFKNZ3jH7kKcHHL+lDgR+rClm/gf5QrXzSV3y08kLSKsDIv0=
X-Gm-Gg: AR+sD122KKx/NY40rri8oFwMJAtK1OJjnwJE5/E9DMEtubYo4HAUHLFUc/GCafK1Y5k
	ig3BdrqnTFUHar9ezXAq23xuUICO+dYXeax5GQFq9Ui9jZhPbQVztrogvtHmWfCksxYUtNcML9c
	/1t5JsZM89El7OgboSjeENb0o9zQsVQfzoWAjmGZmuhBwEP8QNcbO0Co2GFKCITemOP9BQBby+I
	7hKsp0cnFtqulTQvhrKJrNeDQUK46Mz1k5nzwhVNdTPG2Mjy3JoAqcLMvPpxTx3yJKFfNyrWqo/
	PncMS2IH4bxifcICZWRpv54UYVQq5/C9KPJlXEIC151CsYsZUfUCbEgjWE3cRd0yzPy/69Y5mZu
	EFx/YO0Gmfhvffcza8ZQweJMPUIjZtJoB4Zndan2c/8Zwz0yRFhbZgWrYrwVG5rCSQpNW4IqbhW
	y2IV7t+OodixD3
X-Received: by 2002:a05:600c:4452:b0:493:e79e:da98 with SMTP id 5b1f17b1804b1-496c65c6d3amr14751025e9.39.1785231346764;
        Tue, 28 Jul 2026 02:35:46 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c4632263sm68190825e9.15.2026.07.28.02.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 02:35:46 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 28 Jul 2026 10:35:33 +0100
Subject: [PATCH v13 2/5] phy: core: Add devm_phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-2-ae811e2f0799@linaro.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
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
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2684;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=zxAwJ5BKNj20YMBukuuz7APJgs/aDnAycQAxPRHOCD4=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqaHfsgZ/sfKxwu0P8Z3nCvMBe13bWPbaLQ9Hwi
 4GAaaykGqyJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCamh37AAKCRAicTuzoY3I
 OmcPEACVEghltbYllYcdr5YBOZHE5gkNgEEv5m5p5/qD4pleuM8kKNvDktLHWcIq4n1UIw0FMn9
 wX+usHjylCBH2yTkCLv3LbMssHGgnQHb+9fwiA02wRwAJnGKRvlPb0sa1MlFL4sSdF5cjeI9XFZ
 82Pv7Zp+QCenq/BLlioa7FAbPh+6+tLyEzeLJvggTnCyFcx2YLkIt0+O3+n5r73o7WaVj2xyemh
 EbYOTy7c/+v32gf7m7dtw8sqobxIDkY3I1nyWznhZNix6roA1nOMBEj1YhqF8Nj2/wi4lsyCsd5
 kIPzVit7LyLCTLbt6GxABjW2FMrfLWYYmIDrrUVSoovjomYqQeOTPwgohZYc93RTaCKDX0A+osT
 6X8UEMvr0JWn/ycTmbicOqmrORBV6cxYo+dg0J0qoy+zsgJodQ2JbZPCNaXTa63I9POgocYfeo3
 oQD5HTeAq9/+m5XL2J8wXQlAaCE8Ef5FH1ty/Hd0+xTNqq0p18ljDn9pUGL3KFdWPiInWnZpqv8
 ka6TNa34caucHeFEpwf9a9bGjZ/TY8ktyWf9ngo3Rn2BUyvOMLC6RTt7sMsJpb6Sh22hawTrYDb
 iuTpDldUbZ0EBI/ttMGiFRFnY+ZLCRhfv1cFgoZnNKmYMW0AlpbFuwDdY5xrdvE6OoYEfa6Xx2M
 xaDatUjBg6PqA/w==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_023548_653832_9DBBF12C 
X-CRM114-Status: GOOD (  12.41  )
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
index ebfad5325072e..7af24f2f4120f 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1029,6 +1029,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
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
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
