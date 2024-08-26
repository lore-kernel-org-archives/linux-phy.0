Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56692C5321E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 10:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wx3GL1p126GCvlKkHprAP4qoBmrMWGxOHhc5zpYEgo=; b=i5Zaq68nr/MZw4
	YSYST2+OAl4gVgITETuSBihRu2dxbPwEYNwp9VI//S+jNPPSb1yHZdXrCQkWM+nUMqj5mNELLohvA
	dn+eTuGj7Xpl6vhRAdoYo55xAQANx3HVDd7XwY5c82j5Wyr3PiJX1reX955EFtlYa2niAZkTN3Bum
	ddlbZAYuIxHFNtEmAq3n0bz7NZ9fqLVb0mzW5YRPeQ8b1qoXAV7uRNhcC3OfXhxr/dn4QSsZnjZ8I
	nYmt0aL9uK6848UzNggVwcl0qvYKH2vNFIuO5xG6Fs7T+3KfLI0xzVfsN49tX3LL++qp5El3HBEKX
	tuo4NZem30tT5fFYlueg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWft-00000006rVa-49qU;
	Mon, 26 Aug 2024 10:10:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWdR-00000006qed-48b3
	for linux-phy@bombadil.infradead.org;
	Mon, 26 Aug 2024 10:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=U/DdzSA0vze8jJF7vX2SLvT3UgFzgudCA7IbUx1PMAI=; b=ZxZrCSrvxs1w1VFMYt/BiIBhzl
	EkpIEq9OKL33TZlXReo5cUpMQiUrudys1bhfY797vmfMpKDHLEKoicO9GSvuel3R8hYQiWnDjKD0e
	fJkbT9tb2Y9YKzEScS9ZXwU5jhn7Ah/cooLRM5+Qmzh3U+sA3FBnKTLnxWJVRQQlzdDsdMpgl71bu
	qRY7E+Vd0bpMRPKFNEtVdCEslZa3aUeemH01RL09ZTSL3mb/S/UTG3Agu/z2xdVY9mia9+iznC7x5
	gfSvucQ4Bz+RVUSxwjBOOz255yoXVKm4b88y7GR3ccbLCa2T8OmTH8dEWTxioP30ZYn44NeIPDotU
	7h3baa+w==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWdO-0000000Ad6J-1Pxa
	for linux-phy@lists.infradead.org;
	Mon, 26 Aug 2024 10:07:40 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4281da2cdaeso6293935e9.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Aug 2024 03:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724666854; x=1725271654; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U/DdzSA0vze8jJF7vX2SLvT3UgFzgudCA7IbUx1PMAI=;
        b=j6t+eGS8Kg81wPwEG6D8uV/5y9952h2pRhA3uiv1v36k0dBwOdFNPJWFtcBEEqToI4
         wvlJSW3u+IqWVWmCs1b6NjF+TAevMjXk9rifuqCCOWJyRiQ3ubEpvDUVHO84XXwSK63E
         BCbuRtiOfUktZnsxtTjremeQJMz0vTz7+1NEE+EYlAwl5CX/WpjMsAp2XVsBPv/ks1RJ
         xrnV8Fb+rhb2EwRqVgBjvSXMMgbwzqjcR+iaVyBoF6x1QMCCCP4+UrW+Pq9ouK4FZMvr
         ir6hQn3IEx7YRVptkl9PZNAZgRIGlGS7/OGtXUNFdfPkvU+GchRCXjOChcrdY6DB4gCT
         44NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724666854; x=1725271654;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/DdzSA0vze8jJF7vX2SLvT3UgFzgudCA7IbUx1PMAI=;
        b=Xu6D40TCdzTpHKepOxDFFsSc95gYQRzaK5OT6jR9PFNtkL2u3WLSxBWsmasFZETKAW
         Q6ETiavwRXiB5sxglmjVW5+RPYHwI9JcocUXr4JFf1e8PzJaQU9LdgEFd3vkAwzyZGTd
         Kq07ToVZgeBkpf5SDVkA+vRS3Xxw7yQy3MDBSGx4BJbFe+S39nD5qhOVQhhLj1hxT2vW
         gP3zjdE+n+rbGHPHwoQPoTSBjb9LGricZ/jWIvLuIGZ/0/7xrOmQ1/ygeFKl/DDjKDPR
         mw1uLm8nqF6W9E8Vxmyp6l4+0MLjpNGfe9rH63tWVu4nST6RqfX4wvZgWyUZHueai5Wa
         dUzQ==
X-Gm-Message-State: AOJu0YxGKMyX0scQ5EwTO5ziO/qq0j+gnRf/g89nSra8wEhuUkjTclIJ
	OFOfcMg2qbfReWM1sIl5mRKn/jaosWmM6rkljpf63M9DJR/6o7tb8ndlIqOY6Gk=
X-Google-Smtp-Source: AGHT+IFCloPHVlipisTPRlj7L/4tT1LnRxXBniUHPmcalUaiFibCVkfryo9gCkJju4XSIkj5WwU/1g==
X-Received: by 2002:a05:6000:154f:b0:371:730c:b0 with SMTP id ffacd0b85a97d-373118b5e0amr3921043f8f.5.1724666854063;
        Mon, 26 Aug 2024 03:07:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37308110009sm10324821f8f.18.2024.08.26.03.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 03:07:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 26 Aug 2024 12:07:17 +0200
Subject: [PATCH 01/11] phy: broadcom: bcm-cygnus-pcie: Simplify with scoped
 for each OF child loop
MIME-Version: 1.0
Message-Id: <20240826-phy-of-node-scope-v1-1-5b4d82582644@linaro.org>
References: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
In-Reply-To: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2359;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=TpIPQN7XozxtTe7qsA1gv0aDxiJmfS+D7twYSKLPk5Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmzFPZPsNHfRqaWN7YWNfr2xfCg/Ckdjq6GIWH9
 BAyU2h1RcKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsxT2QAKCRDBN2bmhouD
 129nD/9VqOSzQXsR+Oo8j0WtHebQVSWq/Nu9rJNndOKdLXNRZ5htUwQmDUASfOxefNbc/4/Y2nj
 leHbwHrisD89b1WugrAkPOOzmyfMpMFw5bEEHeeHkI3AVHrzrt4Al1zj1qkHc70iR00gs+ELyUX
 2VfIS6XW9NLIFlEHX03DPl5xvVc4x/7xQyanGYmh6eFVxM2izPCBTK+K9vkIj2qtclovgLrNTie
 KmncHhcBLslYvJKEef7dioNPu33lEMhw9+7CGrG+zgCBaaGqGUS3MisioaFN644cMhSi+qDhrz3
 HGLji6BcmVQUjd7t0FgLhAZUx4GH2bKxj9WtLErzerzj0cOOlVOLhDGTniGfC+R6sdGbwKtuzOS
 jo25+LfkcVHVR3Bg4JZOVeH7EF6m3NGGmULvHf5ZtXALU3BTFClcJK3rO/8t0rBOGiAPv4ku8LR
 9PT16AIvtCMXq4rlbLtdd36Kb9coYjfvsK3/Eb5J9+eRyVAO6+T0xj/qkFwqghcv6xjZrn8FoMd
 dh0aGhv7r2JqiKoYCNqT+JL9jYI/UXBF39X2dk5ekyjEXuZRM8idspON3hIdFs22m/JCIDS5uB/
 yYjbGZVPLtKC0EdrJ2ZtkEOhhPuY9mPt3D1oTIpRH3oFSzWD0mqDGwOyB5u6OXTbPWn+xTwvSR9
 fB8wOieD0ABnnww==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_110738_628058_C228A0FD 
X-CRM114-Status: GOOD (  13.34  )
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

Use scoped for_each_available_child_of_node_scoped() when iterating over
device nodes to make code a bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/broadcom/phy-bcm-cygnus-pcie.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/broadcom/phy-bcm-cygnus-pcie.c b/drivers/phy/broadcom/phy-bcm-cygnus-pcie.c
index cc29b08e49eb..462c61a24ec5 100644
--- a/drivers/phy/broadcom/phy-bcm-cygnus-pcie.c
+++ b/drivers/phy/broadcom/phy-bcm-cygnus-pcie.c
@@ -113,11 +113,10 @@ static const struct phy_ops cygnus_pcie_phy_ops = {
 static int cygnus_pcie_phy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *node = dev->of_node, *child;
+	struct device_node *node = dev->of_node;
 	struct cygnus_pcie_phy_core *core;
 	struct phy_provider *provider;
 	unsigned cnt = 0;
-	int ret;
 
 	if (of_get_child_count(node) == 0) {
 		dev_err(dev, "PHY no child node\n");
@@ -136,35 +135,31 @@ static int cygnus_pcie_phy_probe(struct platform_device *pdev)
 
 	mutex_init(&core->lock);
 
-	for_each_available_child_of_node(node, child) {
+	for_each_available_child_of_node_scoped(node, child) {
 		unsigned int id;
 		struct cygnus_pcie_phy *p;
 
 		if (of_property_read_u32(child, "reg", &id)) {
 			dev_err(dev, "missing reg property for %pOFn\n",
 				child);
-			ret = -EINVAL;
-			goto put_child;
+			return -EINVAL;
 		}
 
 		if (id >= MAX_NUM_PHYS) {
 			dev_err(dev, "invalid PHY id: %u\n", id);
-			ret = -EINVAL;
-			goto put_child;
+			return -EINVAL;
 		}
 
 		if (core->phys[id].phy) {
 			dev_err(dev, "duplicated PHY id: %u\n", id);
-			ret = -EINVAL;
-			goto put_child;
+			return -EINVAL;
 		}
 
 		p = &core->phys[id];
 		p->phy = devm_phy_create(dev, child, &cygnus_pcie_phy_ops);
 		if (IS_ERR(p->phy)) {
 			dev_err(dev, "failed to create PHY\n");
-			ret = PTR_ERR(p->phy);
-			goto put_child;
+			return PTR_ERR(p->phy);
 		}
 
 		p->core = core;
@@ -184,9 +179,6 @@ static int cygnus_pcie_phy_probe(struct platform_device *pdev)
 	dev_dbg(dev, "registered %u PCIe PHY(s)\n", cnt);
 
 	return 0;
-put_child:
-	of_node_put(child);
-	return ret;
 }
 
 static const struct of_device_id cygnus_pcie_phy_match_table[] = {

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
