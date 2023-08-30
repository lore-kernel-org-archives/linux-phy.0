Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B4E2C83F15
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 21:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqHBAbpcTTS+HcKcN0BuMuKwcrnv6QYjsGuRNHUY4/Q=; b=C7pvmSsm0UTxtC
	nUaYuruIwS4SiEc1Mf40GwhQVerNLitdHtOPTJ5IWeZnJb3Ts7xbNHMwDaQcSH4dnkmfwM23G2lNC
	g/nrkt1bXFuXWWIA0Wg5eua+v3PLeNOqcZjb0IgSxzm3gCTSZ1+PPHSONhLRylWr61/IHY/p+5RLI
	jQnmCDHz9wrg0xjkVdGFD4vCCVqhS6qzerttyg6F01vd+5iGwDu9iqvLn/6EkcMxRLuWLuGHsmyUx
	rYZcLqf1f7U8oVjEJsjwsm6iLdkLKUzO+gO6GHog4KTWuXFSkROicaehuOihAFnDxa9jXuDjSajNx
	OxshQauRgIoPXcUuNnxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbSVn-00EBeG-2p;
	Wed, 30 Aug 2023 21:14:03 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbSVj-00EBd2-0h
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 21:14:00 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4ff8f2630e3so478545e87.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 14:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693430037; x=1694034837; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lUJsE/IbwViG0qWxyMqWmvpU5f67FtToTgIAN58/gnQ=;
        b=ONlIFKcNr+fcIBYTWbSN4RqzjVPqMRaxa8EPqDDNXNl+oCg4bJJW2I058Rq77TK5XZ
         uAeXiB5e2q53J9UcIq2BBcvkPRy6flXfFpv36t0IzjYXUzbYOK/y+lAMzLMjp+rgbV1L
         z+W+0SiXhfs9538g8plDRKqzgCWVamu4NLWa6oo37vEqnujXQHVhovhrQczjomq0f1un
         hyCqxERf8h0N/xNxR0x+cEndBLqItP8pOTYZLAk+oeLmu8Le9uqi5Kg9gT4zdCuFzwU+
         uytTGNIEEmpe01Orl9d0FWeGILMFjBI3JjGrqGYJ7/E4KilZ/Xa/HCfUbD6Jxwvxg9Xu
         rwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693430037; x=1694034837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lUJsE/IbwViG0qWxyMqWmvpU5f67FtToTgIAN58/gnQ=;
        b=kqZiXoFqSU8/zlb10ttJyoMtHom/vUG/EGoyRJ17VLig2g0SAiSn8X7no6c9se/gNu
         7LcaORyVqwtHOqFnE7cwBVfGWrN31IJbTl0OG95TUuHtO5vrK7Ktb0aUuryDzQsyrQQr
         36Dex8GraEfMu25IBPYpIG52mttMMgYFD8+RVkhuzJ3/MBes8i/Wgl/zTHIl5WClZ8jS
         AmF0Z+ZHA9o/szt1ITDI1LxwxW/NlYoS5ZMWjO9hakEFpDi/DYHOKjz8mJb8M6SPnIlK
         mqkiMRdEM801dYRQb5dtsK06gQH2kgoGjvgRFqBJcaATFFYotoQrlNZgqVx9hXBX2KfO
         UQvA==
X-Gm-Message-State: AOJu0YwanmrpDXiC+uAcYlyVbjeKP/t87bgmb3lLI8F9EW/JS/117X03
	lW/ifqFcaKqEG9b9cw6W4qW4DA==
X-Google-Smtp-Source: AGHT+IFuvtSZyC/ZyAVYMYRqzuHbaGDwuwbCQZ6x1uKvm1iYzoVAGQXN7HtASDV8xE7fWPnZS3n/IA==
X-Received: by 2002:a19:e04a:0:b0:500:8f66:5941 with SMTP id g10-20020a19e04a000000b005008f665941mr2475516lfj.50.1693430036872;
        Wed, 30 Aug 2023 14:13:56 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id b3-20020ac25623000000b004f37bd02a89sm2516351lff.287.2023.08.30.14.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 14:13:56 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 30 Aug 2023 23:13:52 +0200
Subject: [PATCH 2/2] phy: qcom-snps-femto-v2: Add REFGEN supply
MIME-Version: 1.0
Message-Id: <20230830-topic-refgenphy-v1-2-892db196a1c0@linaro.org>
References: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
In-Reply-To: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693430032; l=869;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=rkGvm/uP3o+BPrXZ9OASaeUpr1X+J5fisqT1wJhd350=;
 b=nSuP6yC0wDbMiE97URjPi35b+qJ0KBMSeb/782bW8hUoixfduLz+NGIGXGWm0pI28AQBW/tWH
 CKJTBw7V3RlBkF1jGQOQXgGAKe5MgezRkaYRhIKsZrClHrTorwABIaa
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_141359_252224_4AE11AA0 
X-CRM114-Status: UNSURE (   9.89  )
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

The HSPHY is (or at least can be) one of the users of the reference
voltage generating regulator.

Add it to the regulator bulk data.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e..2bc9aeef26f9 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -79,7 +79,7 @@
 #define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
 
 static const char * const qcom_snps_hsphy_vreg_names[] = {
-	"vdda-pll", "vdda33", "vdda18",
+	"vdda-pll", "vdda33", "vdda18", "refgen",
 };
 
 #define SNPS_HS_NUM_VREGS		ARRAY_SIZE(qcom_snps_hsphy_vreg_names)

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
