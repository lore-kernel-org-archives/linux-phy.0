Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB5E0C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 22:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAm6dydh5m7jEo6jMcH8kfkUW+f3LZ+M7eajCWYChq0=; b=qavboOT7Xb9HRP
	0E8hCH5CcoBVktVowNjBT3KglOOJXd+qsDw3ONEI5uOT7jp6zi4cHgRftC0UNV3w5wtVjHrG/l3ef
	fkvo1VcpuOD9ZS/hEj50e1cZhV+1PDUao4XUk7UEPdGKdYpFIViQ/Rwl00Qi39lNC44tHxdWzu2QU
	YJkT9w8oEwrD7M8skCze2hXYIV1rW1QAfTKCUouAIsVWtp1KPJvsMWlLEzJDku+LwAj72PUyY3q8K
	677SSRJjTdslYM0k1pvi81BLn5HJvYM6F10qw/Riq8dyZQmVPZoOiYO5jkXtfamFINkhLqoqA9D7M
	Sr3m6iST+r1CKZwIeHkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GPB-00000000k2R-0VM8;
	Thu, 03 Sep 2026 22:59:37 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GP4-00000000jwV-1ovZ
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 22:59:31 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-484392e3d33so244679f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 15:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788476369; x=1789081169; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gQWYI1cx6ETxdXekq16SnwguXhi4xWpGMHf6wEC16d0=;
        b=MM6Zjd+WccadmoDmk+bvf+Uc3CJ2Y1fp2k8m9NZzsHIsmxQVy7hhAV03cidZoLPCpj
         C8WT7bOsDRc20KJykRO0lwdiS0zkce1dZXOG/ij+1CjDrZJ7ez4xL8vZAyEHZePfBlUt
         LDW6ZanmLCV8yInKAhpM4sJF5eXEb70OkKPOOoJIW0Lxfv9+WVa2e/VxA6E4PiwgzFdK
         o90ESmLXdmnUT8s4HN7Aj76R7Z0vJTab2SemtSy3z8fkO86aZiv9oCYcVxMf9vpPVp0+
         HG+QVKkwwPq3OWYdC1UeU4/KCI2TnDnUz71Hm+vvza/e4dtepFm/9uyZjFUhwqwAI05d
         TKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788476369; x=1789081169;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gQWYI1cx6ETxdXekq16SnwguXhi4xWpGMHf6wEC16d0=;
        b=nUbGOUfvhZhlEFyVZobjXCvHDQKXImiEssCDOhvwX3uRqAs+OHCxDOaSZjeRIkSxzy
         lbzRGrgAaBsTUHY68CuV2fuLPxLxlwrck/wR+J6vWJFQa+l8le+QPQHkEBNMbOo0v/Bu
         eXmW9OGoepzh8JiO/8fRFj5wybZKFNuSbc2zo2HTe4sP9X2QITGhsMdcc5ZfiHTl/8sj
         sOnZLOkan8wx256B7zoqR9kJZ6Yi59icViRWzb+HE3y4zIQeCRaS9vZBiQHcvE7pYHhR
         s1DE47lzS4c1bO0RuFZI+oCqOqKms9vjEXDGqema8RBeaEt1/xLHiaydy1RfCP7yT87V
         M7ag==
X-Forwarded-Encrypted: i=1; AKwUvBwVOJyUeJx3OO7kkDfSikxdfOJx4IGdq4+m/dgKwGWl1GJfqNxVPx2xfpkvi59vYq6a9TN6ag4T92w=@lists.infradead.org
X-Gm-Message-State: AFuF++mI3gue/ZtLbKDcp0Laa/hWlG6BVcJeugmFnu4/uP0AhNypfjzW
	XmOmSusyH5JHqlpLfckyAUrIX25Of8IrsfW0+Y2LEVd2TrZDQSRdU4DGLKgPgSt/RTE=
X-Gm-Gg: AYBFou1FmR4sa03bzxvK/f8TBCgcbqlLTnIm8aEbDTxc2ertoVOmPbtqMA1IMxm1f64
	1P5/Ww4xDHuGMuXgrcPps7rw8p3c6KTwEwMqe2oeGFVdJIt79lfuyxKkUaTmpm5zXP8S2zvmjd+
	Vp1WENQJPpoOjKtW4UIpWATej0yt71lJrh/47upNK5XeYsI4YdfHjwhPnlsI91YLJN+x+oCP0yf
	tWjyE3zSwEcCRvJzKakyuf/wPyeqcfqAg2hKV3u/wazwCxCK4swWFeCzUExXrLtL/bx+vYCZcWc
	L/Zj5/2VQKp9jHBGo6Yjz7JejZAGxVA7i30oZXyRmdH/LRwdXczINSVTPhZxuZuAoGNxjmbMTep
	elnIarQBqak9Gj+N+glZRqHlyRLQiRfCd0N0PTEePnDj8f1d93G40EOaFIagQEpKIm0tM/OaLsC
	h02q8MP+10esYZp02W/vHM9vcoxNGzHxd1CC7/PxXyLbr5Q1On/1oxYHrhz666o6mTUmP0
X-Received: by 2002:a05:6000:4615:b0:484:479f:4152 with SMTP id ffacd0b85a97d-485872b733cmr4421178f8f.23.1788476368674;
        Thu, 03 Sep 2026 15:59:28 -0700 (PDT)
Received: from [192.168.0.35] ([93.107.91.8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883a9a56sm1448006f8f.15.2026.09.03.15.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 15:59:28 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Sep 2026 23:59:09 +0100
Subject: [PATCH v14 3/4] phy: core: Add devm_phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-3-01ef1eced075@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2684;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ndolWswy+O9/qD9RL4QroF6XcipBnK/74bun1DICPsM=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqmfvGWyClLrdFQNWcv0QQnA07Bt2KOuowzZmB2
 QuGP82VKdqJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapn7xgAKCRAicTuzoY3I
 OvyVD/9SDtQyPstNp2SadMUM9Lrp+mM80IIacCZhr157303laM3+5XcJEr7DME3YJc9+DEN/z/C
 J/ZrYoJ1DZ+6CN8qccn8t8MAcGY/M4xFKFgsb1cttGsHg+X6BqlC3QIadHAvhgllUuosmAscHX+
 3BjI1KAGYHOBQjmOO0zMXaUdQX80n39TWFAx0Xa9+MH7rGsdb2Y7n8rd/B2bJi5UGMclpWExlfa
 5Bk1KYfUuW3KuPqAF0uXdkOdPIE2HhRsQJGtSypbfSaQsUDibke6O5v3V32TaQ+eztHURT2T6d/
 JjzAkNxO1W+y+XIwDnalY+kD9LWlo5wwi9C9kWJ1zuC8oinGquh/FYDHhLPuvO4xUTT0EyEJPLr
 X8wPezPU+N2CB/CaZpFHimk+ghjft5hZPE8JQfCME0JDVcStTojJxOaYy2G2xS65c837JPZOQ3B
 AIdPBOFq/njP3nxB6tJCojW/BigqZBCuS6TojC0emXnN/YoNgFs3KxRcGSPXS0IiwGjmC5F2daR
 IXc2k2n2eN54Ng7lioUdQPJdzn0qpmsTfciRSRYPDeVEWjJvYikhM+g3z3E1JL4mRT/Zo4PZvqU
 DIeZEVuS1k/fX0dm6rPIxzXu8FtFN4HzXv1trrX+6lyloHtfs/xzXkjWpncQv6YggcSlgLjnQz4
 kYREh4zrnFtRYmA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_155930_506282_3A8DF690 
X-CRM114-Status: GOOD (  12.72  )
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
index 1d060bc22d02c..1316cd477bcba 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1044,6 +1044,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
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
