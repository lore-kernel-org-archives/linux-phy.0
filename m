Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD02C77B76
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 13:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=giiVurdIrWY6w4UtsZyNuYyEjTqsqeE0CwU81+OoHe8=; b=s0bQXlhqGCZyLw
	Y4aUpK/uJyn3/xO+byON++PnUryV99RMWTWN+ufirqm1P4YYSvqyg/Bho8+HxaRhfBXFJZc1IrOqU
	tXhXAu8nsK9BoppGUkjSKgz91Hx/VSTUzlZP6n6Ren1zn2BqhNoKgYSBZJslJLAtWW1BuDyGY3eXT
	MMkaokHGdVqB1/ysJ5eATNPiXEwM11DFZ6DuhtzWjj60wBClGB3DlpktB2zlJjdUxtMSNX0PQXCXc
	ZtliJCykintEnlnn330zJbiSVzH4Se1g/CS8uo45SZMM0DgPehrq7q3peh8TMnAgS0ZlKmEY9ypm9
	JjOcPUsuslbym9lyLVnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poOY7-00GJPW-0o;
	Mon, 17 Apr 2023 13:05:39 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poOXw-00GJI9-1u
	for linux-phy@lists.infradead.org;
	Mon, 17 Apr 2023 13:05:38 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-2f3fe12de15so888440f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Apr 2023 06:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1681736725; x=1684328725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+pN7CHTmhcpk+kvQFe2Qj4nSZeBGIjHXqqKasTb6lhk=;
        b=Bgg3k2q1I4LWyoS114Sz0KymTKA2sEwO4Aef31BG8tNohuz0BdZB2B6nEsGZrY1GEo
         wOL+m/NcuDjyrWBSVrXOiH+20/n5djMM3Dj1qAOIbHSAXzClWaMolmUBcuAsxBtLFHk4
         HfxfOH2gCCClo5PVsp5KjDQEOY9g6s6MYLKtYEtkXErOp5Hxzh7wj5jce0B1LY4YewB+
         eE2pEIyZuyiVlWF7hMpadTMqa+h7dYLiQ/adwFBbZdTwXXm+6wt4KdRNMGo4T8XyxzPG
         gk8CmhFlPuxt4gFWkzqSI0ID94xRb4AU70e6df5XjkEEnTizT1/rtIICx00xrshMzWfP
         0ySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681736725; x=1684328725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+pN7CHTmhcpk+kvQFe2Qj4nSZeBGIjHXqqKasTb6lhk=;
        b=lkJs0kY6Y1fl6H5ZCeEnC526yq/5Wv83UP62Y0j/FRXX+EZnxjdcbhvFSZh0+XtwAC
         BKsA8IVPK6jlcbXk34H3MIfWIupEQ1CNNQ2iO/7JzmjybW6LK0VMyeAdPrINKYfE4gUg
         sRC1hC5h4wEGGWop1GxnMIJfCbyqaoGMvhFXCiyyrf5rCkFlKaKHxXPgYQlCl+DAVLMh
         JFjybeNKjwol5DtC7Fpj6Xj0Xpaxsqi23n+c2rhsVT1zQOiXXnCzcsh/kg0WHDyymAgk
         WSW40HOg8RKKBfiil9no1j4GcRNxn1HL20niCqgdNBurQXw04Jpo5R9ZWi7B298DvFt0
         y5CA==
X-Gm-Message-State: AAQBX9cbUr+G4FjdBMpclw1IUfuZcwOaONdlV0VJcSCUXM4m+ZVXn/2p
	HK1jWVXy6AZVV6efBe7ANjXKVw==
X-Google-Smtp-Source: AKy350Ya7/njYFXhgTJTc7VF5jmgWE3WlJqHe1HiKD8ysBAxGWWzpzzvX4+3LSjuaxGp4l/qwi72Uw==
X-Received: by 2002:a5d:4576:0:b0:2f2:501b:bca6 with SMTP id a22-20020a5d4576000000b002f2501bbca6mr6649069wrc.17.1681736725582;
        Mon, 17 Apr 2023 06:05:25 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:374a:ffae:fd26:4893])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600000ce00b002f0075ccf7bsm10509938wrx.71.2023.04.17.06.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 06:05:25 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] dt-bindings: phy: qmp-ufs: fix clock and clock-names for sa8775p
Date: Mon, 17 Apr 2023 15:05:22 +0200
Message-Id: <20230417130522.401605-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_060528_637197_ECE23C41 
X-CRM114-Status: UNSURE (   8.98  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

We must set *minItems* to 3, not maxItems as this platform requires
exactly three clocks and maxItems is already set to 3 globally.

Fixes: e5796a9cdf73 ("dt-bindings: phy: qmp-ufs: describe the UFS PHY for sa8775p")
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 94c0fab065a8..a1897a7606df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -78,9 +78,9 @@ allOf:
     then:
       properties:
         clocks:
-          maxItems: 3
+          minItems: 3
         clock-names:
-          maxItems: 3
+          minItems: 3
     else:
       properties:
         clocks:
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
