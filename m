Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CC1C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 20:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4vjvZCCYSQEdL6WzBGoxLvop3zIgkT4o5l5lqFQNY0=; b=2cqdhYkt49SfCX
	OU3mQ+bZKbkNCqR/+jeiAHYtZLdb/4MkS5o07/bSis/Ydaxl6V7rp6ylE/VbgrJYWCDXRW4iKFaUB
	nj1osUeKNb+/ZXC3VTPpI8avd+pt2CJJBjDLjy5cgvqINeJcpKmJL4Q3lgPZnRSj1xIdG+3cq7Cs5
	xGsA0/18EZeTIiNtASbxlAX/Z1zyEyWb6p5L6fRq5S4FUecS3ZoQb1E0WQdkCQOqdOfr3mvavNb7i
	gVxia6Wo7A79wyQs3bacinwH+Au+EIP3DmyZU8Zza+dn1YgwfMYaoauocGWJ/6fHA8Up6SRfHHoTs
	28JX331fLEboVTsmkXMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLVcY-00GRDM-2x; Fri, 27 Jan 2023 20:46:50 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUb5-00G8ub-1u
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:16 +0000
Received: by mail-wr1-x430.google.com with SMTP id h16so5870913wrz.12
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vhTZHhvTWH45tyGI0x4uU2VUFxdCNkd8qxpKaMX6L7Y=;
        b=e2dWa8i6qb8eJW7sdxfl584eKltFPVaJgKseQk3WtgyJ2cNt2DYBn4SO9SH9qgJ2Qo
         CuzoNnqcjvgl61vDlxJtdCpGstjCbazcEZRpImRp4VnaoVkjfCuMcZ8TPq4++jKBaC/0
         KZIA+CrKB1cgKIwsSE1jviGl4AJ+5sSq6pC5hpH3Q+0JmpqV8HUyY29YAUKSa+oyzJzt
         Cygsv1TnrWb9rsyGZIgMh1B2aaiWNuOMsLIFQUXdDDby4m2iKqeUs1Fjv6ZFAtfwKgTV
         6H2u7SyKE2n7W8C9Obf+NdVoZgPWNsK7QxuYi1B0LaeynW+OypgQPfNhM8DcTTiNdwOu
         //8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vhTZHhvTWH45tyGI0x4uU2VUFxdCNkd8qxpKaMX6L7Y=;
        b=1D8U3joLelAfe/p0xau17XjpNYw9Aydgdyjoo5bV6q7ZOrJX9BvEgXYAT70KQ6X877
         CYS6YseXc5uN+aHNKqzqZKV8QT0A5/8ezjsC8Uo0OFv5fj8J4D4u/YU9ck9xg/hZPoiZ
         tRvKqx/3ZU3Fw2xQZVvYr0xYvW/9fTPKAxxv31Bj4nNulZY86NggPAvykoqGu19rddLf
         dmdCtv5L3QdoRzSkFX/LZad6tGVn/oYnIbes9cD7ltiDYvUKZajtNOHPMaoWHeg9/PDp
         Yi5xUOxoiQ4xv3ULGHyIl89gcoC+bBxTq0usBfDhetJg37zKvOfNAf2XpwB1stFYhBmy
         GlQA==
X-Gm-Message-State: AFqh2kroBCV8/xMuN38plUwZr/csJJDqMrQx5x2oEMdPgspEJ2UC8R5H
	559Pean/PC9Sw799XoRtFKv8tA==
X-Google-Smtp-Source: AMrXdXs/PEB2tM0xo4K7W3J5nfYXPFlm8AtlFcItNJ0CV+x2XgfOEpsh96Tz7hnOXLSKgop7CBJGFA==
X-Received: by 2002:a5d:4ec7:0:b0:236:6c33:2130 with SMTP id s7-20020a5d4ec7000000b002366c332130mr30059728wrv.68.1674848474651;
        Fri, 27 Jan 2023 11:41:14 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:14 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: replicant@osuosl.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/8] phy: samsung,dp-video-phy: deprecate syscon phandle
Date: Fri, 27 Jan 2023 20:40:53 +0100
Message-Id: <20230127194057.186458-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114115_131844_B5A4A488 
X-CRM114-Status: GOOD (  11.21  )
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

The DisplayPort phy is actually part of the Power Management Unit system
controller, thus it should be its child, instead of sibling node with
syscon phandle.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---
---
 drivers/phy/samsung/phy-exynos-dp-video.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos-dp-video.c b/drivers/phy/samsung/phy-exynos-dp-video.c
index 2b670ef91deb..6069fedbd8f3 100644
--- a/drivers/phy/samsung/phy-exynos-dp-video.c
+++ b/drivers/phy/samsung/phy-exynos-dp-video.c
@@ -83,8 +83,11 @@ static int exynos_dp_video_phy_probe(struct platform_device *pdev)
 	if (!state)
 		return -ENOMEM;
 
-	state->regs = syscon_regmap_lookup_by_phandle(dev->of_node,
-						      "samsung,pmu-syscon");
+	state->regs = syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(state->regs))
+		/* Backwards compatible way */
+		state->regs = syscon_regmap_lookup_by_phandle(dev->of_node,
+							      "samsung,pmu-syscon");
 	if (IS_ERR(state->regs)) {
 		dev_err(dev, "Failed to lookup PMU regmap\n");
 		return PTR_ERR(state->regs);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
