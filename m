Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D763CC982D8
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 13:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBvDXZ9FqIpembXAhvG4cUc8Q0yezYdoKiINieHObWo=; b=na/v9UJE7Aef2n
	YHweeaJDxDmGslJNilg+q+AFStbj8BBeGkMW8HOVHMnaZqoapmAvy1l5px0V9MU0UdVJPhbitENSQ
	9n3kRTH1wX2KuSnz+kUie0IjrslN5ZGKDWnwz/k6855EAx5ESc0mViuVkK/MzP99/puqKpf1Ld40u
	jkZ7vi0gKZ2w95LAW4pPvv8yOL8M4CRcBB25Gh0PdvUPJAikv/s4jveWWFhUgKGC2MDHq3VjIVJZ4
	U076lZbJZ929WaCOuzcCh9lBktpOYWbXhZ9Q/W4XLvrs8/bdTe9jlM2RWRrxppybNPOjfs1uvQinX
	y5eMTCCGy6A0pAVJuR8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5H-0000000EdvO-29wu;
	Fri, 18 Sep 2026 13:56:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5E-0000000Edua-3NKx
	for linux-phy@bombadil.infradead.org;
	Fri, 18 Sep 2026 13:56:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=yWeQAK/2AvrW9g7LNaT13bKf+X/ruOu9J45YLkmVnXE=; b=RAnexzwZqugKRmzZJma67+b/cI
	JWo0cxWhm51SF4ja7TwBlNi/TtvMA+SUDgwA0WOiH0WFCmsOgq2Z2BAlsKAa72vpkX44RQPMdK9Gg
	DJfpr3nqbnM4FBKsP+RAeEVBZVxqaVQzqCGZPaLFc9jyoWckNsRsmeOxqHe0r3cq2nB9ZMtkEWof4
	uwvIW0vToE6GaSm8gdZ7xWAKkt0iORau7kvcw2hTiHhfswqFl6mpPLqABiLIdhxP7u8XWxQ6bwMy4
	t+SISWUPmb6O80e+PQ0BlmrEv9H2lOKpLwB3SAo0UcdX68W5m5ZoEkCVxwTFEDEH2DMSbqv+6LxJ2
	R6TaJTmA==;
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7Z5B-0000000AAZs-48sl
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 13:56:55 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a67fa7a64eso1187068a12.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 06:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789739812; x=1790344612; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yWeQAK/2AvrW9g7LNaT13bKf+X/ruOu9J45YLkmVnXE=;
        b=qCdOMzbTF9GKSU5pB9G8XiaoKtcnIO+d88jSD5FUdzKWvNQRBUPtO+nBRohDmVFGtK
         2z+azjz8isbuf8fF4u+667NuCpTVhdr46eBIAbQWyJC6fxYxRxmgp3kzumOB9vH3JEDg
         3F3am4zxs2IJqOsmy1AvscO4zAcHuHPCVhUvjkQVuZcD42I8e+Mfq11YvBPQNqTD9SZZ
         acAsS5c1FsNDlbnWaxsQ20sIgjdwBPDclx/2bPVTVZZ3G7V1B9Rmp/exPCP2PAjTM9wM
         DUQs3zoErIUQQRbY26yz2ziiwx35dUnHzNKOY/zyTfLMtaMFrdxE+FVqdXWo343a1s29
         VERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789739812; x=1790344612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yWeQAK/2AvrW9g7LNaT13bKf+X/ruOu9J45YLkmVnXE=;
        b=10ZYOjL8coT/7WD8QhTpIBI4YtNggEyO3RoOYH+/PUVVZBx3YNo5lzE53AeKMRkjyy
         ZdeHc7cTjeJ2BFEEgO9PVUVIG8NYrO9SnF8P0J3qhZlYNylbZ8TBbx/lP1yQkvvz/7V+
         Uo8Y7V2I0pzEoN3g7iDYamSPeL9mwam955F+ofdaX1AjXGH7wt/XRZuiHZ8LoINfpWVK
         2grckvBg3XugLWv54I/3wQe8k+PYIWpFt04ZW/go+NlslzmeGLvNPrAGxlKEScQlYajT
         xjURmSg7SY/TfCgeM66nRUDh2u946O3UpYXNY6h44739Q/3oVwfW9PL6jJeHVnXcYe/K
         EixQ==
X-Forwarded-Encrypted: i=1; AKwUvBz7CkfK7ogyYw+AQI8U+U9LbPy9+xn8LguZpXP1yLReo9aBHfwrHMTiZUJMPIlaL21aXHPnx/P16Ec=@lists.infradead.org
X-Gm-Message-State: AFuF++m6H++qH20YVcoe7ksklvelu+nenHSewX7sIXyvpV7qKwA2/zQ2
	aPUm6TyYOKb1a+FdMiFJ89FxOQzmiHDiMzSS16giCGm2vQ2scvJH4F8ihS3GXgGEheQ=
X-Gm-Gg: AYBFou2sItknIhAmzEVSKkyhEb0E7Um4lk/UjKzLTLtyVURbULJqayEY10bMic18A1m
	dULse8G6dua/uIykmVm/QupVFpVoOu7yRw8tUMse+5xuwCEH8qiBvmOLuunPPt6rdBPX3vnwF+H
	XxlbB9niAdqyLDseOxxkFROJhgJnVk/HR40GVxKAlAbNPqJalM6M9sUw8rqV4wiGM2bpYeX/rDb
	UJIL60bG9eStRT/s9rYaeH78tN/9R5X/YBesOQ9TMEpN1VJnfjcicBNoHNqPbFJLfjsfnGaHf3P
	bYRIRtAmsX9Rqsw22zB1HYRz4ij4jICikPqGWpiSDiFizznH1HoO9/KtGayHl/NHs8lXhgtiWWp
	pqAi96Jno5l64lV3yOI5030LyLvkUzWEXwrQGi6UW3INyVeaZVW4N4ZDWkk5USgtndafkzMD326
	IryYpBbFMGAzGKue3GzJ/F2EYt1DcIflu5DgG64lnBSAKeiwaoGLld86PQD2UcDOUNj/+UcCPeW
	lOsTqEk
X-Received: by 2002:a05:6402:400a:b0:6a9:98dd:afd0 with SMTP id 4fb4d7f45d1cf-6aa569a1e28mr1580636a12.40.1789739812287;
        Fri, 18 Sep 2026 06:56:52 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa59730866sm915455a12.18.2026.09.18.06.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 06:56:51 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 18 Sep 2026 14:56:38 +0100
Subject: [PATCH v20 3/6] phy: core: Add devm_phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-3-dc244e124e71@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2762;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=U4KWrtkdrf8AbsEYFUaWO89GB+6jXI+2zX+mv1VyPB0=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrUMbBOYe0XufQ2avNCa6HRHZdYcePixEgjEVe
 BC7k+oLBkGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaq1DGwAKCRAicTuzoY3I
 Ojl9D/9AF6qr6+l61lUY+alwJ7Ou48uJiDa9f9SlzB4K5AcldLfJoBLHv4ZhTqGV3/dKuyxA6ks
 rKbLJdY8uTzCZvbi3B+4p6NO4bPxWNyePGDeHU3UDX3LFogG/q7AwtWJqmEbYKeW+TfrWrSDeFg
 7BGdlal14Mnc9XfV81HB6tjy8NozxyfJwOT6mIUs+9ce6OGXmLIpUftSVh6xtRnVn1qxlVHK7+O
 RjFqQJ6w1AIscpGZnCZz30zoX4/mHFuCM3MSJ3bynV91746dtpbNOgmSCBIsuVq9aKi/iwWnKe+
 bYLj48GbnZdS+HRbjJ7bDqnEIQJuiG7n46sz7+41cMe3j3+fDV5NcBOzUWsG0+tSGXrh5vbO7w6
 qt/WT7knNXadlnm5wd/jMgGeESeuZaw6ysleq7sB8gg/iBUYHpd7mnXKhN0Yi6SJ6OW5LFeDi8M
 FKF5sNoDEqO0KbDGLM1EQFB+y7cdXdBNblny1zsMx6tenoN362XFlo/FHZG3LTAfno82VtYYDcI
 x7YrQxjELY5UWouIC7hXG3SY0PPP5Uj6V0IilF8FUGmM/NeZ3GU8SrYI8GH+eLNvvoQMHSJ/55K
 EMJkan7xGZWEGT0lpwx96IJaM0Qma/KroCyXzSp+ELdLmwehQMyv+bQp8R+Pv3zqHaR7ZyqVOEo
 CFEY2A3MGzWjBCw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_145654_138956_5CFD070F 
X-CRM114-Status: GOOD (  12.49  )
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

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/phy-core.c  | 34 ++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h |  7 +++++++
 2 files changed, 41 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 42c27a2b45159..f0d2b50d1c76b 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1048,6 +1048,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(phy_get_by_of_node);
 
+/**
+ * devm_phy_get_by_of_node() - devm managed lookup and obtain phy reference by device node
+ * @dev: device requesting the PHY
+ * @np: device_node of the PHY provider
+ *
+ * Returns: phy associated with the device_node or ERR_PTR. devres manages
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
