Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3137CC83F16
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 02:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KC85e9Nu6xr7vvYdFE7UwIOMP9ypYp7VUTsjTr8ECCw=; b=UDYrIpaJBGlzjp
	45s3cf7u4ro+mOM64CubwqbBXC7eZA8LVdAWn9Eimb2/mPj8jUy43CduOsPK6Ja+oNekJ1NKW4jfG
	TFoMaKbhhDq/3iHBiH9ePUA4hacByPUYsCyygo+m6eshS9JjTgROGjdkAkrk3fuABWss+NecPc8sA
	vFU1BrvKYBUrRwuL6x77eIz+KWbrfywKZLNDBS3wQUAg/gcPVPz4FpSMQ+A6h/ykBQ6BKboliZuHo
	bZK86qowWurxIwo1qsHzTbceAiYNZaOi8eO4tV2JcpgsJJ5p8gRjV+tItp2Z1oSDeqs+VC+MR0aNS
	Je8Szj86TJ67JxyeQL6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB87-00Cgwg-2w;
	Wed, 30 Aug 2023 02:40:27 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB83-00CgsC-1M
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 02:40:25 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50078eba7afso8179098e87.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 19:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693363222; x=1693968022; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u79yO0iAhOgHSkdtiLEgJV1fUj3/h29d83dbFcGVhBU=;
        b=G7/c9VIK5MKG4EAxim+pAi1jl3s+7kv8+t6J9AJdGHmapl533t+t9pPp1M86yAjBil
         E884kiElteT4W6iUEV1YfNEewjq7hi8w3eXJx4rOkbtWHCWEuikiksbJbolWIdNy5qtK
         iHB+8z/eFiEUb+k7qAOUhYWA4LYxHLJJhD6tY8niYr5TXzpjWsWk7Z4+/CXwsmFfGRyO
         V03GQ8xykujN7cUVHd8FAGLR1en5v0pYBWTn1T3YWT+KfezRbybhmafbaxb49OJb1Db6
         9FsPoXlvO0av7iNNp5WZStlBXmxpQ8gNw6AjDbdbEMhBbg3gdhvN0TBpnpQz/HbGaiS6
         5w1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693363222; x=1693968022;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u79yO0iAhOgHSkdtiLEgJV1fUj3/h29d83dbFcGVhBU=;
        b=e+wHC5xEoDPPzgBHCe2SsGh6+lGfQa8dzyOg2eFSG6K+tM2COhmhN/W+d1YgrOwn8H
         A0987IvPVzA7WciydSto8rgf4n7oHZKqnHzFMrwVtcfnLuwA/Rjt5O1QMZJNqIjkTxe9
         wBniRiljjUoOh7CwYBP5PgA81VgLqWqfE2lhRMilmtwSWETumSGg/D0hSOzDNQqTcim8
         oIe/bfmfoCpk070GklWeWH0YFw9grG72vOuX73Q52yv64kUqhlBs3BDC9dV2/V5H1+AD
         wim1D1cKRiHOQnb7WFGKRXas7PREZ6TSBQPSlVzatyceabT0pDE103F/J+O0Mz8grMoZ
         PWsg==
X-Gm-Message-State: AOJu0YzCMk2esz8YdiZsk/vorH5vqUudEDzDhVh24yZwF8PmpxqhAkYf
	f4cACjJm7TvQmzITd2wfA9jG0w==
X-Google-Smtp-Source: AGHT+IEB+Pvy4SQ9xZVdKt+EmXsnpVvha1l5vFdek6iZ3eZULbMZNYOs++suiQW5lY4y3P0QFRWZaQ==
X-Received: by 2002:a05:6512:312b:b0:500:a0a3:80ff with SMTP id p11-20020a056512312b00b00500a0a380ffmr445095lfd.58.1693363221890;
        Tue, 29 Aug 2023 19:40:21 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id w7-20020ac254a7000000b004fb99da37e3sm2183878lfk.220.2023.08.29.19.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 19:40:21 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 30 Aug 2023 04:40:18 +0200
Subject: [PATCH 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add tuning
 overrides
MIME-Version: 1.0
Message-Id: <20230830-topic-eusb2_override-v1-4-ab23825385a8@linaro.org>
References: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
In-Reply-To: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693363215; l=1714;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=NiPnqK52QKHkd/CcD5h/xTEyUsqIlLXa328usvhRCnU=;
 b=VOEa0hyyG8UbttF1hLRne2t5QpVGEd7PBgEJAs3wp6uAI0TP1KnT9BEe4A+kAXPL1NCFnQmTd
 /cC2j3wCQ5fA7z1vShBb/7d6X7rOXpxgi457n+zuW2LVAKcm2t95ufT
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_194023_459989_723F7289 
X-CRM114-Status: GOOD (  11.74  )
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

There are devices in the wild, like the Sony Xperia 1 V that *require*
different tuning than the base design for USB to work.

Add support for overriding the necessary tuning values.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 645f0e95703a..53e10feb16a1 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -141,7 +141,9 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 static int eusb2_repeater_init(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	const u32 *init_tbl = rptr->cfg->init_tbl;
+	struct device_node *np = rptr->dev->of_node;
+	u32 init_tbl[F_NUM_TUNE_FIELDS] = { 0 };
+	u8 override;
 	u32 val;
 	int ret;
 	int i;
@@ -152,6 +154,17 @@ static int eusb2_repeater_init(struct phy *phy)
 
 	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
 
+	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
+
+	if (!of_property_read_u8(np, "qcom,tune-iusb2-value", &override))
+		init_tbl[F_TUNE_IUSB2] = override;
+
+	if (!of_property_read_u8(np, "qcom,tune-hsdisc-value", &override))
+		init_tbl[F_TUNE_HSDISC] = override;
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-preem-value", &override))
+		init_tbl[F_TUNE_USB2_PREEM] = override;
+
 	for (i = 0; i < F_NUM_TUNE_FIELDS; i++)
 		regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
 

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
