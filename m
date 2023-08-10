Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD44C001E0
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 11:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=234f7fUaE+amY7kwjMjA79o01vT6MDipmTP9lljR7kE=; b=uxDkX3/ApuDSK9
	uUglBPIUaQZa5GXUPC0Nll7DLccmOaojlaGPYDvIj8cZb1i+CyRp7y8IEX3h7zuaVgeo29lXDine8
	TmJYwtP286Cjo+I7iNVflcCCyeAze0AIF6OOwJh2CIKFPbgg0wFZIszuPDgTMVRQxK/FNTeeLvTZp
	S7JOGPpjdUiyR9AjEVcqp2LNvgz/QQUtjqOJ57663RRyXfMNcOxNorJOvGByYlhz1A4Yajm4gDbUM
	LTAjX714ADsshA+ReFzwBFcq/kk1GxTN/lKYsSdtIBSCjDS7yGXvRncWckg8BmVEAOWusuTaRk8C8
	xmrtwLFt36PjoNg7knDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3i1-007PIN-2t;
	Thu, 10 Aug 2023 11:20:05 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3hz-007PFE-10
	for linux-phy@lists.infradead.org;
	Thu, 10 Aug 2023 11:20:04 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5234f46c6f9so996090a12.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Aug 2023 04:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691666400; x=1692271200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1UVeu2Vv5taFKAYD/0MyJDQO4Vei8wwY49dAsoAUbBI=;
        b=GaS0OiypQfO7c2N6lrMtUELzqhh0hwcvcP5tbOJmrE0KkY5OemOqSs0Q/Y2HyzaZQx
         8uS94SAAXLzzHVVw4wKspvQOqjVQUFBtGgmL0J0Rp4dpwLfBL+KSrvFvZFF5oOPdqvGv
         473VAEJSejFFnkiNDxyoAzjmhzEgFTamNOJ9NT2FfsLWqjnILtLviGF+bPF4f8sTwRcB
         TfN1CVAUqxEohtc6nTqieXA9/1Gs2ZP7p1Jinz3ncUby2368+EwEvr95r7SgwfJvfTrF
         Rdydpvnv9NXV1Dy9H8QZqMaVq6BKIOAOt7sNAFkbUZNMd7htzIAPmiyWNMaGgTxX3GGm
         1g4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691666400; x=1692271200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1UVeu2Vv5taFKAYD/0MyJDQO4Vei8wwY49dAsoAUbBI=;
        b=We78DhpGp+0k3W4HVzrZGCtRv0Uq9sPTAZh3hokpAuAUXqpjcMXH+dqEW5A272un/0
         AplNhqdC86RIjrSWMivzXXXebkPO7pWeX3ygjDO6O+aqWtKQs1WpqbqPyw3fiHVGPhP5
         fXZKC9/H9UrWDzOxg1HvOFQ9TD9+lNsyFkH3dMYe646i/XeNX2BuFb3xbLUMCYcviOvR
         hT5/LH/llPlgwc8t6QKybx/7C0/61BYF6HXlQwe04+/CVeWCP9o1g431LM189lfRcz4e
         EYhv1YsOniraLIeTkB4IYqentgIVCYSFjoo9qfRQSXat4POBdJHAPAbLvDGm1438yvKa
         yr4Q==
X-Gm-Message-State: AOJu0Yz5plyYblISCRSLpJfRbwc1cYI5arTY1/W5clRy9ke0iBVqLXlF
	Bacht3rbcDo81aU0h5LJl2WH5jUA4CsBlA40gA+ahQ==
X-Google-Smtp-Source: AGHT+IE+/JXX6dWHY8t8osAFBHjh3S7EUWZJudr4+gH89YF9Ru/wR/Q59FEe5Hxs7Oi+9jjhxy8t6w==
X-Received: by 2002:a05:6402:5152:b0:522:2af1:1ffe with SMTP id n18-20020a056402515200b005222af11ffemr1797584edd.9.1691666400714;
        Thu, 10 Aug 2023 04:20:00 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id l10-20020aa7d94a000000b0051a2d2f82fdsm672190eds.6.2023.08.10.04.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 04:20:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] phy: broadcom: sata: fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 13:19:55 +0200
Message-Id: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_042003_345917_7D98166F 
X-CRM114-Status: GOOD (  10.09  )
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

'version' is an enum, thus cast of pointer on 64-bit compile test with
W=1 causes:

  phy-brcm-sata.c:775:19: error: cast to smaller integer type 'enum brcm_sata_phy_version' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/broadcom/phy-brcm-sata.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-brcm-sata.c b/drivers/phy/broadcom/phy-brcm-sata.c
index 769c707d9b71..ed9e18791ec9 100644
--- a/drivers/phy/broadcom/phy-brcm-sata.c
+++ b/drivers/phy/broadcom/phy-brcm-sata.c
@@ -772,7 +772,7 @@ static int brcm_sata_phy_probe(struct platform_device *pdev)
 
 	of_id = of_match_node(brcm_sata_phy_of_match, dn);
 	if (of_id)
-		priv->version = (enum brcm_sata_phy_version)of_id->data;
+		priv->version = (uintptr_t)of_id->data;
 	else
 		priv->version = BRCM_SATA_PHY_STB_28NM;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
