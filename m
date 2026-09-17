Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CA66C982D9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsJ9uXZl20gb+ZNRJAiYuYCS6Tvlr0wjv1XT4wyVlWA=; b=0dJeBIrhkAbjKc
	ouxGK7iIBbBIf7sq8QF862DSuzmL3HUZ3birGlFDnpdFzH3BWgrkmpXXu3h5hn8ZMJj8DGOkFqZOg
	kL2yxHW+Scst/AY2jmuOsW9oBilcU5DD9PLOMi8JZsHDEZoMg4dMPPd1vwklGJsQfqrSaBGdIAGaF
	xSq8Zl9VihaOEJnk+2l3CBKtb07sFgJG+T6pXuGmFO/ge29tpqNsecEo41w8uuOr+rz8mnqxxihIQ
	5/CRTxHe/RZqKUb7lPxN9QM/4nntD83LLLKulMCbBou3CE2+srnOHINVyx0fKuUayjZNIeqSAlaqP
	mj1k6l44aBHCWobTa8xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzG-0000000Bfaz-3I21;
	Thu, 17 Sep 2026 15:25:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzE-0000000BfZK-34VT
	for linux-phy@bombadil.infradead.org;
	Thu, 17 Sep 2026 15:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=NMwGESoTpoxCW93e8KzY70EiAiyUsNG/4JMq0LantCg=; b=llzjoY8ChqjeoXk3MMXjECsXNA
	1TvulEnMchzOegC4G3hNgK7/tlIr6Nl4rmDhL6G7tNZLASBXWARua3+zkNq34ZQYkkwlM+7Ib3d3r
	5lwenzqpeYy8kwsud/cnNAyVrZau2Pt83LvIdiken02gxHrqfTpy2SpmfyTBdYt36m3gM/VIFx3bt
	qQ/TR46imV9s3u9mAejkEbFt6A/Ij3197ewRjbYBXNBCNl0Lr+P4VZBz96KbbqL4PqqwCtyflR4XY
	7z3tgw5DI33+Dr1eU1VSx9+J5y1pVvhl1APJpOieR0/CVHWYrZXsoE2/LCl9o4G/B6PMq36TQTJHf
	w4Xc38Nw==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7DzB-00000008zPy-3YD2
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:25:19 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482f6350f89so670171f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789658716; x=1790263516; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NMwGESoTpoxCW93e8KzY70EiAiyUsNG/4JMq0LantCg=;
        b=hgK6wu7D4y4RtkwItrD5kD3q2z1PUCWvI7826TKzeWN+xPtpqnXa9eG+O3J850+2w1
         D8yy5efe1/pouO3HZsmTiD8aVLssMHv/oFuJjaKPml3zbTOsXGKZb3J9Q3Fs/4FhqMRy
         x7iFrxq8YuHWulXDw2TAFklsZqIapnlOLQAYGTIzGXRcV6B+dBNPiQ1zMZ7Kc2Cvna5a
         z01PXIasO1Xe2m2Eo8fP0rbCS0nxK3nGax2+uLSyxSP/89moleXoN8HVVfqAhRk6+itJ
         wYjCTJH2DAjuZDVJP2/Y+9riQ90QYTV506Ty7VWwR7EtT/6LhKXACDejDixgGC6JPkTX
         06Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789658716; x=1790263516;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NMwGESoTpoxCW93e8KzY70EiAiyUsNG/4JMq0LantCg=;
        b=vqSInXInu+r7l3sSgBzqudvif4aXeidEu6NKanNkQeYLAsqtHyml9ZH4YeQ8jdprgT
         VU+snhgDFvuVxvFskSHWYeRBgfVSa0v2Jjxf6urFpBWh85ISxy77HJ+vhezuNFOZWcNi
         iGldY4n937SqPSz5CpcY0NJIhqWbYvxLnCyFjyuAG2cHxMPVNICoCSak62mAbo7SLr4P
         ZNusVPJwETOGSm2ek/NS9IvUr5cwDrWuprc/kSAEbxyB0rw798SV9SHtFZ7wnLW/8tWv
         0G7S81CP5gspMD4n7PO3UQBmUqjI6LorztAP/9Sp7UAJFIj3RiozcJeUsrZ88lBb/l2v
         8hXA==
X-Forwarded-Encrypted: i=1; AKwUvBwvDoLYsBg58ryD5wyPrbR+/lDwxe9ILgL7aCqCXINO+ukMDNZx1IOAoEutLH/8F5hZjSPU6ce+mSs=@lists.infradead.org
X-Gm-Message-State: AFuF++m/3JN249C5w2jwu6IneFOzzuIGqs+Yy3G5hG/o2LmnGlvDUjbI
	U+9z3HqPK8PQXSVSLMSXYJvWOJsaTR09VoAsV+3Z0tXHHfer0MwH1m9ANPlZ3FVqu04=
X-Gm-Gg: AYBFou0hKVgE7fGqQOVq1U+/0z7OP0HtCB1HTlYT56G5Z865r2sWRjOnrAtqT7ibmDC
	CyYVTRw9XazToSxf3/UK4GlH45j60Qv2UKkFhUh/nUBpY53lo7fdfUeyWootXZYWlFxSruOHBWn
	0J3jWoBJcAQZTiV6g8FVGDKbQ1iSELSeUvECfofQT5ho6PdXyer2n6OfHiKySQ1j05OnUvne8UC
	B8+iNMvJNTMHbERnC8Z8sLa3rQcmbjep6lNWmVGwnq1VTT7s3zlEMdfvvWqjQWcNLpR1eDUEbe0
	07QERv4WB9rjJWLWN6PhMZX+LcvQqQOc7OwtkU8kZqi/ytBn8gq3JnEGiVMNHLrzVk3UWf/WAGH
	jh1LM4CRMJEdSMxLu1gHBJsKPBTmimy2jpH1kwYStRuHlOKBpJ0ccjp4k6CGhfCx9XGP+633edM
	jJHnSTRUNoxgCTXo+qQL8UwdXYfH0tDzwuNp0/k0x7mWbNqDlRS4kMgth9qM9DWoPUIIBEU8FVR
	t1XPcNHwgkjb4AErWHj
X-Received: by 2002:a17:906:7948:b0:c29:3838:dd5e with SMTP id a640c23a62f3a-c29e530a3femr490991866b.40.1789658716124;
        Thu, 17 Sep 2026 08:25:16 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de48755asm310587366b.24.2026.09.17.08.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:25:15 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 16:25:08 +0100
Subject: [PATCH v19 3/5] phy: core: Add devm_phy_get_by_of_node()
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-3-21ad8a76e941@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2761;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=cDzuifZ35uySk/UpiYP0iSj8OxDSP029LxC//N6wFuk=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrAZU/wHfXG/AsAs5KrgH5lFusNCZNVd+gD81A
 7AhwLisQJiJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqwGVAAKCRAicTuzoY3I
 Om1dD/43gYbDziRG/DuUzuN10axrWDggX4LKPE8in+SbMC1NywaNlOiv1v9HkNmMyUOu4oVYUSM
 2OCymKhNER21y5sVRJA2j5jBKIFmecAKnW52FHzSEkuoeFd15U3wwocAU6arz7MrEAD9bSVIvvX
 JL1dGNm5Ze/bGeiL/RAGDDPITyjnbVfCIrwwin8DfQw0zMXFyabDVPsysXNYSC/zZ5a6HxTrcqe
 hn5NBF+m08nF0ZDfbUEhUeKJGW3OsqgcThRINrR4ZRZFxHf6uYVfqdcLq+HTdtKtBdAnBvkHgOa
 SHVJQ79VuefwsnWvWsBrBEKnlja2iLBVo2q35FdTnd0ZqRI0QcXSuVcuBhua/zzQ1xCgC2/hi4/
 qX/Tts/1Fcj7r/h1w1RusuP3ySmiwo8ehmYuUKXFYBGFnEbKIepxYnloOZU8zgJtJU8A1qo/hb6
 lRc9sYBLwSuyh1UKQl5YcxF4hXi5wWrCY73MGp0Bz5m4UbYCt8dwbALJgAfvVeycpmMujRLKwEY
 P8EnYQtGfqvf8lBT1F6NzDMarmCp2lNsvV8Q/RwN5gSlJ8WxaYfGeP/EnoofIMJbdPyChKS/MNO
 7V5+mYWP2F/UQZJatdHn3i8aBXbWmnP1Nx7lKBniOh6LhbC0kN8H9Z3v42Bbee252sNk1YYBZFx
 I9n6sWr9c3Jm6gQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_162518_048588_6C33D460 
X-CRM114-Status: GOOD (  12.45  )
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
index 4a8e1d3cdfe75..e24a38662b484 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1052,6 +1052,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
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
