Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCC15EB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 06:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n8HFbjjzqt/LSTspXrG7NMZF/jkQ9u5EQNKSWoR2bNw=; b=tOPU53u6+e0S2E
	pDDK/tojGWzY1INae+qoma5ZcOa4UzrTMUtCmAiSAjiZQ4BYX3mpPaYm1IWcA5msLeMOOW/BE2Tjg
	SJUcdqfVnW/H3o4Zl/fyR7FWNAk8c4EzYLNDMMMoackKmkA2Y02KsSkS8uquYiD1HLR9AIapzmW8o
	hb3Q74iE3uPiWOtyLiTM3cgJ/56LoDcXPniej0nLz+sGgo43HYZoJGzHJXueoHb/e14teieBPvxzC
	vl4/B3ZYgWMCwyjbNPZYRdu5dQFj9j65IPdwqL24K5WS+8QXa/W3wEAbwxtXaRgU3hy0eLIW7Boow
	T6VOR/8spaNrI1EW0n5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0z7-005uHR-1R;
	Wed, 19 Jul 2023 06:48:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0z2-005uDU-1R
	for linux-phy@bombadil.infradead.org;
	Wed, 19 Jul 2023 06:48:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=bG4Gx1r967zeIAmFVh7HaIXrYyoqtUrm+PE+5CcrQ0Q=; b=msNzc6rpG2qMuOfjhHN9ZD/GPK
	n5ae0YepDcfiQN1sHynjKhQFwu3PvoaDm7XAsaXC2qmx6/gVUcAAC0hdWDzCx1ehI5NFjdDtYe38i
	FoLlJv8WcPiu0q9uikgbovbjzMcIYWk/pe03fniFCIG2RogzYrneQOBxB8W1X1JNYPGW88GyOv+nI
	BLXqYMKB0CnvpJ9ginec07+0FOTPx0WeOx7UbhO689qzpy8o/jU4az60hnRe4+qunLzEJkinr7Q6f
	dgtXyt7dzf3eKQc5AmA08Xlv6FGfjuJm9kNjCJmQNvjPgYeYdNo0g2NhlpynqLhT1phS0fs6iSpSx
	n+jdqflA==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLekX-00BFQf-32
	for linux-phy@lists.infradead.org;
	Tue, 18 Jul 2023 07:03:59 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fb863edcb6so8758778e87.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Jul 2023 00:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689663774; x=1692255774;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bG4Gx1r967zeIAmFVh7HaIXrYyoqtUrm+PE+5CcrQ0Q=;
        b=UV2a3zWVG67FpBgM02Vq235xIfJqY8fdHcFvwU2XaCuyHhmDXYXggsijJlpYJkoe+U
         OO0cDn9Hdc5Sf3eKYlrf+JUt7gGvUMx6+WNusK4m5iZZFKxk2XJV3m6ZhTnsOWj1Mi8+
         3cO31j+G1EePdCKDXBo6lF4LkedI0A87RzzqlFr0d6BlK3zR6RG2uIudH9OOMPnY6tO0
         Di/+ahlfEp1s3RRaY4P8+xGtiROW6BPOmKXMIa/qe6DdfDftTMUjsGwVAeeXt9FZoN3Z
         tNbIYbvwQC3i3QkY1+sV0XGzdgAfjelvrZ8PNiP89olPfeAXfRYOM//aF/Zr29QVCd3W
         8dPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689663774; x=1692255774;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bG4Gx1r967zeIAmFVh7HaIXrYyoqtUrm+PE+5CcrQ0Q=;
        b=gLGjzth9A0RNk5D7jxvh/fOpIgBfI/QWPvPbkC0rkAzm2dMaKUiFlgnkVcBEaVu3if
         Y+lPhe47g2oiBx9ihweQARIDFurZKYKIEP5TH+H/YGY1g+5cYLMXy6ehZ+/Onfec6/tX
         M+AiPRBfkdlrxm3krw1rW4QUKWbmZzvqbKW2YKo/RVaW5wYWz55JHTS0TapVqTlR7ybE
         dekFIh+QQb5V9nYslXCvfsXw7TB6PCybBXdP2rQS/WA/JhDOpuX/tvZKDE7nn4nD94Wz
         n6gnnJWmsWMJdy2XBbssNTCMVej3tJHfN+szMsnldJHahLwVsTNeHaOYeEgLV9D8l74R
         ZnHA==
X-Gm-Message-State: ABy/qLbbv1xdIB8U6m6co8FCiOE/tRQv5R2SGDVUANVkrUL1OpolbUrf
	x/dOMa6wp58YND5b59YyRP35kA==
X-Google-Smtp-Source: APBJJlEfO0vlpxHTle2tSQS6B5dc1OXhx+xoMrBGuDDfxGMmbx+fo7H8//sWJfifOYJa7dfGE5T6Bg==
X-Received: by 2002:ac2:4559:0:b0:4f7:604f:f4c8 with SMTP id j25-20020ac24559000000b004f7604ff4c8mr966844lfm.18.1689663774421;
        Tue, 18 Jul 2023 00:02:54 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id 2-20020a05600c248200b003faef96ee78sm9682608wms.33.2023.07.18.00.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 00:02:53 -0700 (PDT)
Date: Tue, 18 Jul 2023 10:02:49 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Roger Quadros <rogerq@kernel.org>, linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH] phy: starfive: fix error code in probe
Message-ID: <3cc81f2a-efd7-4ef7-ae6b-e38c91efe153@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_080358_202994_CE91C3A3 
X-CRM114-Status: GOOD (  10.98  )
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

This is using the wrong pointer, "phy->regs" vs "phy->phy".

Fixes: 26cea0e28057 ("phy: starfive: Add JH7110 PCIE 2.0 PHY driver")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/phy/starfive/phy-jh7110-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/starfive/phy-jh7110-pcie.c b/drivers/phy/starfive/phy-jh7110-pcie.c
index cbe79c1f59d3..734c8e007727 100644
--- a/drivers/phy/starfive/phy-jh7110-pcie.c
+++ b/drivers/phy/starfive/phy-jh7110-pcie.c
@@ -151,7 +151,7 @@ static int jh7110_pcie_phy_probe(struct platform_device *pdev)
 
 	phy->phy = devm_phy_create(dev, NULL, &jh7110_pcie_phy_ops);
 	if (IS_ERR(phy->phy))
-		return dev_err_probe(dev, PTR_ERR(phy->regs),
+		return dev_err_probe(dev, PTR_ERR(phy->phy),
 				     "Failed to map phy base\n");
 
 	phy->sys_syscon =
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
