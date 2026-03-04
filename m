Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71F94EFCE51
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 23:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PLwQ52kEllX/iUE9ZnSyJEoofZNIK8sXuA1/wuFnmgY=; b=Hv+l3tDiPLJ9hP
	/Z+KGf7ECfsURo8SSCwYa9u9cI5YPasSWyxReDh9DeQT9eBTcs0ts53aer9IsdaAYJiiOy0EPZ5yI
	WBZ4F7hIk3U+cozAk72R9o/wRrHZeL0qGXnZ3MAEdvj+6I7B09sb298hvDNm+enaYhKsTXG/kqvYN
	dYrwqCs93kGu0OyzIjMtrhBMcbkQvEBMmdanoX1b5Ui+5u9ZUVN3dSZkzBbEKjbFtPCTo4/X4T30f
	4rLIYL51gme0wydjKe6DH9/mwldIN/tvJBdgx+HlOemTrJYOT56lA65xGCGVk5w5PDhXDqsupSefD
	sU1EJaddqljddGiOdkHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxvIv-00000000cLP-3BIP;
	Wed, 04 Mar 2026 23:06:57 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxvIs-00000000cL3-30ZN
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 23:06:55 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-82418b0178cso4197794b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 15:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772665613; x=1773270413; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nuwkc66SGtvVybuj3enJtzvT05yj+40BgPg9Oazhc0c=;
        b=gXsjv4OpbcYy4Ag8L1zWh7fKiOkNL2xQXFyYoZLGmCLeFhsAxopy1o+t2G0QoOuOM/
         tlhuR11jUf1Srzs9LDUPjBRatDn+atYaLZeUaS6AbhFWZ6wE5UPU482E4ZDqcLjYEeI2
         R3XHy4LHVks2M4b0J2nwWg5dlyAYuFsJ4y/t29lYTf5jhjlL49+Ixka09jJwZPvD6kvG
         bvkrkn7tFdQWqobxd2K5uZzkBAqFOLc9zj1pcrAiiw9Pt/dgacsdPwz/4yocYhi9oiVu
         kMVI00hpDd36WgGJaKIg95Fxyj1UxAJ/kXD1NqMaSrLpcd2Ns7jdlZwQXL8CJ8OOeHV1
         GHsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772665613; x=1773270413;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nuwkc66SGtvVybuj3enJtzvT05yj+40BgPg9Oazhc0c=;
        b=N9IKurz9DiFz17hKTw/dFGt/6dgK4EX796uXxFg6rFdHy+afhEvN3y+SP0qMZmri43
         d2YBAsmMc0hB/HvVmAu1UGB43pi3hXZ4/O1HBOVtlD6pY8EgtbN8cHBGplhYdoiFHMPS
         A115yy8KI1nartY7EMrqohe/8KEgp+rbJsyfcb5JRDLYrH726SOKo+MGKEEeW8AHNTQp
         bQfN+p9G3/b1owbQUrX6IYPM0xeJrSGw+wcwnYD/Xlqp+06HLehZYz9glb1RMIhUPQ8Y
         SnCIjrdrxP3+k0juBvqRztlD3SNKe18jjmJfAJpUu5Qjl4hHXPNMdTlDgF1lRqSorClM
         To/Q==
X-Gm-Message-State: AOJu0YwDiNHaF6+v+1AvdhsJFujRoX9fnTzDNy5gmK7nUv5O8sPEqD4X
	JSGVHNY09eRHqkwyNvbPBS6VO8LS3Z1hQeouE9Ex4ey5nCnzE4plIbXLE3y9yiFxsPU=
X-Gm-Gg: ATEYQzwHzCXoNsS+vD3QUrWxbEfK7SFq16587rcctSspqvDQspBVW1rVy+rXkffNQwm
	mbBJ3ZPDirPZavzTCmLzaHtLoj2sOkwknwfnS3JoDoFcCqSxkOYzyap877McTI7AcEgeQ7nWd24
	ZPUpL1Zi7slRcFE1e8+r59R6DXbG5RufyJMMjrTLaxhmMiQpA2EgAzbkUeVvWWAtecMHSL4ydCz
	tt0is89fgoDU3Kl4do0NY9ZpC0bxJSSruQF1zai0tJsm/TYXr6fVF3uEsc9F5cYKlK2CnxQpDYM
	hg8rcbD/pjWwTB3kHNwQ0T5ZPi/yBeIS6nzGDQ5jgb/iPicKxA1ZkOcpBsWNKVzush9jwNYCjRd
	cnmQJBb4+EbNjyN+vVHMyl9O+nVuz2z6IfF56OD+opHPozPx31LHL5hUY7T+wMvFgaEuxu+PGXJ
	aX7bmpND/yIEJ1zft6gKyDiyeG9fF61IEWT3+pvBDke2zYAEueQ2dQlw==
X-Received: by 2002:a05:6a00:94c5:b0:81f:3c77:a24c with SMTP id d2e1a72fcca58-82972d5395amr2252997b3a.66.1772665613175;
        Wed, 04 Mar 2026 15:06:53 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d8805esm20511087b3a.16.2026.03.04.15.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:06:52 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM MAILING LIST),
	linux-kernel@vger.kernel.org (open list),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCH] phy: qualcomm: usb-hs-28nm: use flex array
Date: Wed,  4 Mar 2026 15:06:36 -0800
Message-ID: <20260304230636.27808-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_150654_761723_BBCB0CDE 
X-CRM114-Status: GOOD (  11.33  )
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

Allows simplifying allocation to a single kzalloc call.

Also allows using __counted_by for extra runtime analysis.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c b/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
index a52a9bf13b75..b2ea038a8f25 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
@@ -56,13 +56,13 @@ struct hsphy_data {
 
 struct hsphy_priv {
 	void __iomem *base;
-	struct clk_bulk_data *clks;
 	int num_clks;
 	struct reset_control *phy_reset;
 	struct reset_control *por_reset;
 	struct regulator_bulk_data vregs[VREG_NUM];
 	const struct hsphy_data *data;
 	enum phy_mode mode;
+	struct clk_bulk_data clks[] __counted_by(num_clks);
 };
 
 static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
@@ -309,23 +309,21 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	struct phy_provider *provider;
 	struct hsphy_priv *priv;
 	struct phy *phy;
+	size_t size;
 	int ret;
 	int i;
 
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	size = ARRAY_SIZE(qcom_snps_hsphy_clks);
+	priv = devm_kzalloc(dev, struct_size(priv, clks, size), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
+	priv->num_clks = size;
+
 	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
-	priv->num_clks = ARRAY_SIZE(qcom_snps_hsphy_clks);
-	priv->clks = devm_kcalloc(dev, priv->num_clks, sizeof(*priv->clks),
-				  GFP_KERNEL);
-	if (!priv->clks)
-		return -ENOMEM;
-
 	for (i = 0; i < priv->num_clks; i++)
 		priv->clks[i].id = qcom_snps_hsphy_clks[i];
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
