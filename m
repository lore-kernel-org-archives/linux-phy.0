Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93BCCC79FA1
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 11:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDey9+UlJbo8Wdu4CZEP0y5e6nfct0g3fL8zjjNYVHI=; b=VODj8+zIK8vOEI
	V8MDghNTdwt1RVLy0FW2Ri1wp6Psoc/tlNExo+9zkYTvFtk51odstMxBxAlvEcIi+GB5SfGhfWtbX
	HE9kY2rBXmMXo5xLKboyR/DbWJrDCr/el5w4cWxbKNiVhYEmloEBL76vXhfXWTtE4+qv/sfQX2mJo
	J5QQi55UhvWEIADmY03UNH03PpdkVypgzr/dLzgg6vCjVov5xz2lqYmWPE4clJ735RMdJB2xVZNOg
	rqQX9Ptd29vhKxw7OtXDeKhL3PPLMHKN8HS67MwauBtXv8i9br3sMLwYbt48Mt0OJh5NK4kdCHbF9
	W8KyoUzCNBepXBgqR2mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BQ0-000000050Oi-1ATz;
	Sun, 06 Sep 2026 11:52:16 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BPy-000000050N8-1UT9
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 11:52:15 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-4859245e493so733172f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 04:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788695532; x=1789300332; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+LoCl+EbBl/1yupzEbeoWPgLAsEGydOXRIOMMFAJTXk=;
        b=vJzLCGEZUfL0uD5Bp5xszTcto6FWCXTDmWwHl6IctkP8C5Aem1lBJNwxER5hhT14eP
         Em8gRzhMI65wjgqFKBb4eOpYGr0eoOM5ooeYjPOctc20P5i0o7voRz+/3UHluEAtORzZ
         9P5QkVZZSDt/Q9UBIFQz1ru6ZjTCFOq4OEYN7pHiXFRr8kopYfIBL4DtvLsxruQJeFsO
         woPAYqzaPidpy1Ui9AMFi7PcMIU4EGTxC9q5oQ/wwd6BUjJJM8x6GG7z5LB/B8ZFJ0n0
         oWOy5nAMYpjMbZ9YRRv2bF2UxCIaXgHp0BJG01rzlFvZi73aDN5sFyexHLsNQebbxuSg
         o3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788695532; x=1789300332;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+LoCl+EbBl/1yupzEbeoWPgLAsEGydOXRIOMMFAJTXk=;
        b=Ud7juDO45rAkQ1Z5NwA1UIAvHefy3g/44jynvaK+rYRCd1P1kgTEPuulMQKH94Qhaj
         9N1qxDMmvM+aFNy1bJhg/5cbnXjcZ4LJgtixZ+gLdSnteac8f8PdEo2EoRcSRVquHQGo
         2kDlfX9kC11YxMk2ZUWHjsanZTHlmR748XrvaY0apn8VVmeUtNmFfaxWmxQ8L/N/+lqO
         nKkZvrqH9fZMYsVhv47h/gwt/Hv2FsqAtsUknodbcrw5bkRAQeVEXVSEzhLYDv9SJQep
         8E1xrkZ3XQMFHHZjWPnH6GFumvledAsu1liYQb/FpM/F0jKDvYH0ObgyIxSZWs3EPsFh
         wglA==
X-Forwarded-Encrypted: i=1; AKwUvBxmuFALObV7fsK93QojoISPpR92UWNqzi1JgE1nOdTQ5B8vt1ms9cWvdMaXyDcMWB5Tn6IxXIm2kOc=@lists.infradead.org
X-Gm-Message-State: AFuF++mBuXbEu7AsMZY33Dz4nFBm3xxjwZo8pvbnEg4eSVmt5ls3zD7M
	iywdc0qY+ACU1FcLsHa7CmHRYowdiHQ5XrgX0UPiuTdew4z+kMjs2NZHCSL2Nx5LAyw=
X-Gm-Gg: AYBFou1o5ltX46Th0B8CSBwvQec07nxuakcwPJ5Q87ULSXf+nrKAhpaG6eVAjPEeY08
	+OhNWBe7IkfjL1XWiHDrSZNemUleqGSzQvADqiR6bMxrJXW7s11BuUbAgnKdIBQ6nMwM81CVt2P
	53hjVlIB8exB84c29LEK6gELt3PiJ6jHBRvyIIyiypw2ZNllqyAXJ6/X17R6nHi7nwDRrndvA2n
	Cv1yfev1bLHkpX3y41CQoO2w1jhu/dKQ42vPcak5U0t11xk8Qw7t7l45uO1ub+gVq2DY8dcFyDl
	PkYyNY2J7WJbVhloeoBdXjHkvgjH/JITs8uMAnUeohsaRGtx3aQG/+zwPX9Ot2jddiU62yPJns7
	d1tNnxwAEcX25nBQAWNrvVZ3T6chMHMKu7d8S+HzIeDw5MRdip8Q2sl+XVjiLD4BEHhvYagEiwy
	+9mwsV2gimE979XMEVCgPnqNTclJiip2KMFE3Qr3FR42HZIbDjB0Ei4Awj9lIE7gSGHgm3xwYP
X-Received: by 2002:a05:600c:3b1f:b0:49c:ee06:9c58 with SMTP id 5b1f17b1804b1-49cf821eff7mr167414805e9.4.1788695532336;
        Sun, 06 Sep 2026 04:52:12 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858d2693e8sm19337821f8f.3.2026.09.06.04.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 04:52:11 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 12:52:04 +0100
Subject: [PATCH v16 3/5] phy: core: Add devm_phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-3-f7bd68b5369f@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2684;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ov6l6XYXYWQFGwdR6skU1nY1vxsBWDotX7Kg0ih6rxA=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnVPkhgJEj+MuSgyHrBaFkz9XqtYCTR6R+pqF1
 i/H/gSspV2JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap1T5AAKCRAicTuzoY3I
 OtBAEACdIbMNteN9fIlQi8sud4+XXBijDxHoP6CT55S3kiK9pcb6if0/ESIPuE9WB8O5czjY4Em
 Z8xSqrCOb/OcUxbq33GVbInFzieoTTTN3cv+GJCWQk4eiJJLIk6RuEirjhksxUIp7dBBg5cKr7T
 hI2BSMsHBAs/Gpmh7Lyb8wa9Ik7La+p9unXLCXkkmzpkrVsqO54dLs8UQlM+HF0wZISWB8RzIiA
 /L2yFa14iwie0y+wYuEE3HzOIltEK7tGrwHwsAEOvhgb2aucn2iOBrJbPTrHOoSOFREwG1CsxzQ
 6+WD0Paz6Y9PJ8D/ZiB4UM/JoffzHDycdokAsWkF8smWh12HSqUO93+WoDX5nkqFuMAp0jwjw8A
 gtrLFNIlu4hfDprwN92bO3XtPlYWopNHS7BkspS/n2uc75t97/V2qx01UO/cpLR84eeWL8PBR+d
 tMHtZ7x7ZqngZUJJ0cRCpEvhtvNwR92W0z9Ngkc3+K2ia0VJAwbYwJHqjvJSDKbon7DnwYSdOjI
 xrY3WmbrtWp9SXzRuATt3/ctLEQcnTMXtDGx/TRAU0TWjZUl+GxkimvkTGGX406gn6JYRQfswZ/
 H9bBrjUAaF2qOVG+VF2Wg16PBCI9OV988T7IUHQiEG3WzNNMdSTzeAYEg6A9dwMk/ZCTkLSCfLM
 1qlOVKIl5v4hgoA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_045214_433225_1AB87EF3 
X-CRM114-Status: GOOD (  12.36  )
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
