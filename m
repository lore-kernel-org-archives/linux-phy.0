Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22B19C77B60
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 19:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6IybH7Uz0CemnzXMYXIOZ8jIvwNfKg/9CP0D22fScc=; b=JX9Jo41NIAP9ZI
	XlcRtsAQB+XgHc1D+jvlptwRvn6QbkAw1eftyH1c5HVtgzloVjKSzBItjzbxAkb7dp5vW0ovlAiAX
	IFwPOqbTtoGxaWprHa1vlh7CceAqvaqp7MMQitPgm/SBmU1QeqfZB2Z9o1CulbGxO4UUEJHv1Mra6
	bMrKEjdctyNuCjZKhf4vk6rpEhogZWumNlDP8yO+tgNc9EhDKIfNHrvRbKQipaCAlnHKkWIDOIiSY
	0q7d5D+csqU66r12u8JrFXr57B14szb5WZCgvduWQyT5YAj/Wubr3FDTQMdf4Pl9jG4QKtM/ZlBmv
	3e+EOJ6kx0cOnAMxDnJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluJ-002Z3C-24;
	Tue, 04 Apr 2023 19:01:27 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluG-002Yzi-25
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 19:01:25 +0000
Received: by mail-ed1-x52a.google.com with SMTP id eg48so134560803edb.13
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 12:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=siX//wbRdPcHa0A32GfJh/26lg5gyZzU6mUPQs/OP4g=;
        b=b3D9uKATuq9rmH7AV2GGxzPklV56XhdLO9DS5guHITk7eqy6UQrJRjqwbmJ5af81GV
         fvdto36kqeltwH+0n0PlLXkgDf7mxnt64Ax4gRuHyXIN5T0osvTuV/zEScgUzZf6Qsgd
         GYvXumzNNZJBtXbn9OU1bfrVvzO1j4f9BChH9ppvzK+v3SA3LMN1npc/2VtOIKJgyLAz
         F7sgv5sbptfuQx6IqUOUaRTyip7KmHu18Jpuqk2ivm7H4oDAKWDvg/wk9UGEnQEU61w3
         lIIpC+gh5+7LYOBGlIdOWdI/4671qqczYZIqlRNssK+U3TuIeWWIbLepiV0ddDLEMKPL
         E1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=siX//wbRdPcHa0A32GfJh/26lg5gyZzU6mUPQs/OP4g=;
        b=5YG5sQtXjF7Kjx4nWflEtT2TxduUzqCBSl5BXtMOTg+qzomyRW7YaaJSm9nC8tG+m9
         T7gSd/b+BrgnQxx7V+l22HGJiaLSOOqsBEMU19o26d3QanYn90t/MUBOkjG/VGdZhFhe
         ce1U6/HQRAKZa9SfRuUF/pmgjTsUMplf9xKf2FZCbDD2DLVxgZ0XdqJzDhtfKpJdWrIy
         cQvGc/cEjgRyZxMd36RlHpDsne5RG8WKWtq+qd0NVXKM1GqUAuTdDsl/AcYJevJ+Jhf/
         NYwIzMLDJYkeK7/q8yHqVMu9NxH9V7+/xlTqehjML2n+r9faNwMQdzrUcCgQCsdQ8AT2
         /IPQ==
X-Gm-Message-State: AAQBX9epVvTCNfU6kVKgiHmHILaqAyPK0hlGN8DKfo+2Ko5wLRCcNuKj
	qn/SBdQvTwnIiXRl47eftYCuFxMwprLxudlF7O4=
X-Google-Smtp-Source: AKy350axTcQuqtRhNBq4mwSO6xgliAFnNzA4wAjIj1P1fJbgBspY8TwtsK7eCEGwYkoPwn0dMmSUPg==
X-Received: by 2002:a17:906:b199:b0:8fa:b2b:9de with SMTP id w25-20020a170906b19900b008fa0b2b09demr548651ejy.25.1680634880861;
        Tue, 04 Apr 2023 12:01:20 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id dx21-20020a170906a85500b008d044ede804sm6257079ejb.163.2023.04.04.12.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 12:01:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Yuti Amonkar <yamonkar@cadence.com>,
	Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/5] dt-bindings: phy: cadence-torrent: drop assigned-clocks
Date: Tue,  4 Apr 2023 21:01:12 +0200
Message-Id: <20230404190115.546973-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_120124_684536_8C3393B8 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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

The meta schema from DT schema already defines assigned-clocks, so there
is no need for device schema to mention it at all.  There are also no
benefits of having it here and a board could actually need more of clock
assignments than the schema allows.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/phy-cadence-torrent.yaml        | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index 2ad1faadda2a..033a24172b01 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -44,12 +44,6 @@ properties:
       - const: refclk
       - const: phy_en_refclk
 
-  assigned-clocks:
-    maxItems: 3
-
-  assigned-clock-parents:
-    maxItems: 3
-
   reg:
     minItems: 1
     items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
