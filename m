Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAEBBC982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hTL83ebDjDZb9Gv7LFLs2HYiMmNySZ8ioNxBs5OZro=; b=mcc5Rvx8DjR9gr
	BbKUBaAVV3eUvnKQgqhbSYBCnHeZUEp9FCfDisASxr8JfDsgSz+9rm7urW7QFBbJ+5Ikn2OURz/6c
	9T4NBEoX7ou/TLNJPAn5RE2KEJRwNwWA4uFoVBzuLnhZhhCFAWv2676BBr23jRAAJmGeHT66SElsO
	Cux6+qHD/XUB9FptJYu9bY//vDsqK8zxTTQRPHY4SqMgWFWdfr6X/BbiU+kcd8m4DMOPRffrnJ6xM
	Q2/qcVnXIBwldQV+dEQU3vrShWqLSgH3lkoKxjkNBJ6ndP58VoDvb/eLzzfUtkOHI3/3OLI7wRQ2S
	4/qOiK44hLEs5BV3nASA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yP-0000000B9u7-1ncv;
	Thu, 17 Sep 2026 11:08:13 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yL-0000000B9sS-3p3d
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:08:11 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a99cd5115bso1133911a12.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 04:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789643288; x=1790248088; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Gk5CbotewI/hTG+Sbs6BsiiN0sqU8afmxYBSAW5T38Y=;
        b=WldsWaIPNFsQtqzytzJ0B6V00rP30il5nHad37jjJD2t5UeUUCMwEmmDHz0yTwg7CT
         trBjwXYChCJ6dE88ocktQrd5AmZp8VySLNZBEyH8KL/ZRP1NMzp1a3iz94EUb5QLHJ+U
         ChzzT1jz0myt5yk6XBT4BVw3SiDah8oqR0xgW/rzkUHcKkn1URrC1Fc5DW5q3z3IzLE2
         WstDxuCR0TEKRRdyf6S5COhyZeahOPC7DTQpW2FuIkGHHIn+8OCjLFDwotmQkO6q4PCN
         gLbSdC9Kojb5zVGv/TCgePT3Kx/0bGIJO+J0xtu4PaeFQk6bVGLk4Q93t5PhdtudkZMw
         SYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789643288; x=1790248088;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Gk5CbotewI/hTG+Sbs6BsiiN0sqU8afmxYBSAW5T38Y=;
        b=XedpEbHH3AqNtmy0TRLtk0PhDCxtS7bpij+2hTqZlqMkywwlGwsFpfXFowAp0luU9B
         wgMKzXu34F5pfWN+PQFtB3qFxodWLU+69PHywUO7DlVvTE8jnDtmwZWzdHdJ4LLelHjS
         YivlEKM7bSutKxDwgRd9ZWwgTSkVs+ABhVNKguryIKJl2lW6DCdkgnforqsHFs4ZrxII
         qDXwOv87AY68E0BXwRxB4JzK/zvTG49wFQuWIpfPbqCfmU5INRV6foJcHdQQzvihpVhu
         8+I5xiTqVcMxWQcbLQzaJ5lh/hq7XiN7SBY9fXkadVt0Xkwd8L9vMCsW4GdNQ+c6uWGA
         UQTg==
X-Forwarded-Encrypted: i=1; AKwUvBw1lKzuZdtsweft3aJUJ+P0pqhc76GQWqtMoRDT4NB4pUtG8tWLYJXspDK9/LODxbKPqYEZfu+4IYw=@lists.infradead.org
X-Gm-Message-State: AFuF++mAkOX+i717L5FjPn2xF4jfDeKljB/qmEKFSb9V8zd9TzNcEY9H
	LVmhgfH/wsTiHao/gnfTK8Tfy9c/WI276cbq3GFaZAnRb7YKyRMqKOlYOKqe3Vu7U+E=
X-Gm-Gg: AYBFou1dxrL/6jKegst6W3amFjhLq/Zcm/6xr74o5ZNLA44oHusZXe3y4CTvQXTdlYw
	at0ncjtitiVHh+PtCfPUdzbDpSiMFkUcpQI7EAvuhvu0oKjL0U5b1pAgwHBY8YxI1R6Wf0suZ7M
	oMdKK6embGsdKwwQsNA4pYp72bklc2DxvHkPWhKQ5XwkxjP55z2n2rrt0uaSpVDkJoncT8yOkOf
	8acb8xUdNxo7jY8UIl3fGW+sxsBNTwnG3SFBXKK7abgqZNXI20SmkOu3+4MiccW3D4UspQnsr3L
	FG2feJze8dZBTrRxDap2f+MXW4ZcbULbOch2zHJyxq+7wvlQl8kggd6p3BL7Itc41dhhsbi3BGU
	2VtL1/Y0b5cQtPDpTNlkqdtwVLNn4+sweRASTJcQq1uzP50uUHtF3PZmHoyoIANs03sXxjOYabd
	yFLaZeTkV5/pVCCFkk+pyz3ap6xikU5XTa1p6ZXseHBkcCxfesPOQGQMBcD84Pw9HnNvHwsh+It
	H9f/kCYvQ==
X-Received: by 2002:a05:6402:3789:b0:6a9:98de:6d8d with SMTP id 4fb4d7f45d1cf-6aa2245fd0fmr4559524a12.45.1789643288181;
        Thu, 17 Sep 2026 04:08:08 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1d27ad36sm3175656a12.21.2026.09.17.04.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 04:08:07 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 12:07:56 +0100
Subject: [PATCH v18 3/5] phy: core: Add devm_phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3025;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=jZig0GPFi4JGT2mSmtHGaqcYKCoZ1vTJV6/UKomI3Ak=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqq8oN0qkfPJbt5KiSUYWeyLkllH1amOK1AmkdG
 ghzm8ZiDniJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqvKDQAKCRAicTuzoY3I
 OidvD/9Wbx1buQl9vPxQFx4ksC1URoaDw4zXpIA7asxsSY0Tw0FB7Sl/anU/VvUJubBDJQW8Ane
 OM9lxPTn9QeZygPlF0UFlruopLa4p2QorC7tz1yiZYnZFPZRNAQ/1pFRy4VXWdmH8073weEDaKz
 2REFS3hMUM+aqEtjC6Q2Rg1ss/D758r/32aQPKfhngY+9Fyj9isDEqQthLNyQP3p9u6e30xaXSm
 IQPpt2NqqktI+wV7kP4rmg033OMWYy2vhSGCXRm2mGGiuJWIWK1DNpoRxknFgBsb3TgkSJPQ6ZZ
 69yh6dvNHE03VdnSFs7vp5AnTncEUMwUnhbhbWCZAWomEBw4BDIreLcvYXV1jgOAl3x7ugNcE5J
 bMRREHchI8l3ToxtZVX+VBSm765mTQYF5uGP5ZJPGbuFN/asLnv4DgTk0extlc3UPTGvyhDaMyN
 u53BR6vWHWfnAiJARCfRMXnzbI+tySPwPxdpbdjvqP6TmqDoXfNlYeJN+qE0oUtRQytpVoBRSN+
 6K0qWeLXvs/SZeJ9zzO20hwipw73J9zsG9cPwEzqt7JtDugLvKM5LRXpBibQA2qfQNczk5YlZCJ
 aetO79SKbftdOqdNfKQxnwlehGjJ81bzT+Tu9SeVc7l0COOWG+n5ZNwFxGumXtZXGeK0rMwhIvk
 X37/gReJiudbw7w==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_040809_986036_FACF3847 
X-CRM114-Status: GOOD (  13.74  )
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
 drivers/phy/phy-core.c  | 36 +++++++++++++++++++++++++++++++++++-
 include/linux/phy/phy.h |  7 +++++++
 2 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 490a7cde6d40a..10e9323566803 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -833,7 +833,7 @@ struct phy *phy_get(struct device *dev, const char *string)
 
 	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
 	if (!link)
-		dev_dbg(dev, "failed to create device link to %s\n",
+		dev_err(dev, "failed to create device link to %s\n",
 			dev_name(phy->dev.parent));
 
 out_unlock:
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
