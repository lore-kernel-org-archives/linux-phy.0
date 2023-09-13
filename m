Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC25CA553B
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 09:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkhN00E0+bmNegaKTxmtO6pq1LbxLWokD6Nu0TSpwfE=; b=4IePuDGUxzOdPL
	aMVq6TduooW9d+ycrFbsgo7tJpGs5cgVcclrOoUZZbGpzzNLNu07gc332wEbWEqywg4bFuZM1fKqi
	+jOkJY8J3vkVadFy2a+n64D+nTCcMuIcJ3Suahc0FYQrhhaHObqPxNhVWQKH5SunBwrfKy4Vr6lba
	w5Ykn320fqkjltgIBRLyRJodQrmAU9N9/n2mmMGuw2jVz1Asrz3LZ+7iLc3wJ3DTzox08cohgBe69
	rrA7P0wMrT8uCm8WFBrCVv7orA337CWjuMIcFYP0o0KBn7yqUOKqe4CsXjD7cqpHnvLJ32TPLuEcP
	pCOUxpEZ5wQKEs11iZJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZV-005M34-0F;
	Wed, 13 Sep 2023 09:54:09 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZS-005M1G-0a
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 09:54:07 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9ad8bf9bfabso203884666b.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Sep 2023 02:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694598844; x=1695203644; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y61vDLY2d3z1XABw8fo4c9R1eNGV9j8r0ag87ujCd/s=;
        b=Ag6UdKSA6m91aO6Gj4IcnnfwFiB/X95Ng8vSaw4p+TjE2ZF5jZeeXz9vK4zZI091S4
         s/l7InoW3zVlnk2w4Ox2bdCjqhY4Jn9XcoAhGWhIi8Bjmn16LszNW5wY+slxMnV5qjqB
         LKtMASvRN7wh06DHAuKm/0FlWRJQD59AraFLF6q7xMoPcuoj8EW+05GeQaVm78tIgXXC
         GdKAcjXTPltU7xZ3EwCAMy0vtjoLfQC0GvuGvfO6mXenkT/OZNsASedYR6L4gaTDHiVw
         /uZhR1EuTzzoiOKJmwiz0uCZ2hs7PVPmYHuk/ku9eFzJi/elRpG4Yar9bK2IAA7Guj4h
         Mnhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694598844; x=1695203644;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y61vDLY2d3z1XABw8fo4c9R1eNGV9j8r0ag87ujCd/s=;
        b=W5Jh6RGA0WjrMS+PiZ9qRg5jzwvKKmSpRis81FHPiqjqCIOCgYylJIPP4rORTXx5Q8
         ADzdrP/3Bac6TsHiy1HymjjFC+GMezt++cGXml6I3RUAa1ZLVLXUoI2l7B4z3VFx94ej
         EXub/vkJq3Nmzjh9nh7x6bPbf6ByiXkWH7yCqeS2e/Ny/lHC2N0+kl3yYhYOmf5k0hsx
         itbaFJtJXP716Nw/oY2gWlCRSDsR+tHR1+lIPkePlgMOzc/nJnztJabdFp6ABRSCgA8q
         hWJ46xf/BC4fT6sl+1sjBlivXjMmrYrK7iVymfsxQ/X49CNzzmp8qJ7c5bPxCOvX6ADd
         D5qA==
X-Gm-Message-State: AOJu0YzcW9xfntvQEEzqGKh8OCiW38TwxavnLp6knFLSKRuSmZX4QQ7D
	CjMcnqsssDdRl2thu2dk9QeLpw==
X-Google-Smtp-Source: AGHT+IFq5xptVCdrvn1Iw7ewtXMqSOxhBecllLxs5hb0dwAim5rm5D+Auq3O1vfHh7PKHxaom5Tmng==
X-Received: by 2002:a17:906:319a:b0:9a1:c00e:60c5 with SMTP id 26-20020a170906319a00b009a1c00e60c5mr1459575ejy.48.1694598844117;
        Wed, 13 Sep 2023 02:54:04 -0700 (PDT)
Received: from [10.167.154.1] (178235177106.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.106])
        by smtp.gmail.com with ESMTPSA id l21-20020a170906939500b00985ed2f1584sm8092669ejx.187.2023.09.13.02.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 02:54:03 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 13 Sep 2023 11:53:26 +0200
Subject: [PATCH v2 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add tuning
 overrides
MIME-Version: 1.0
Message-Id: <20230830-topic-eusb2_override-v2-4-7d8c893d93f6@linaro.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
In-Reply-To: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694598835; l=1798;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=vlWt+/crcyxMQdUhFQmb4WOVKaBs0wbkNDm3+xQ+iBc=;
 b=rj7SzS4MbUgXjzqv55kbUGwKD8esrMRttXxGkS+rICUBd8qFKbouTxfru32W5y6X7a00cfv4x
 32ZjJI8ZlwwBxD5Fbcx78qPt7e2le1FLdTFvkRx6e79+TsMPkhHqPYH
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_025406_224187_86279CD2 
X-CRM114-Status: GOOD (  12.20  )
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
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index d4fb85c20eb0..a623f092b11f 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -142,7 +142,9 @@ static int eusb2_repeater_init(struct phy *phy)
 {
 	struct reg_field *regfields = eusb2_repeater_tune_reg_fields;
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	const u32 *init_tbl = rptr->cfg->init_tbl;
+	struct device_node *np = rptr->dev->of_node;
+	u32 init_tbl[F_NUM_TUNE_FIELDS] = { 0 };
+	u8 override;
 	u32 val;
 	int ret;
 	int i;
@@ -163,6 +165,19 @@ static int eusb2_repeater_init(struct phy *phy)
 			regmap_field_update_bits(rptr->regs[i], mask, 0);
 		}
 	}
+	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &override))
+		init_tbl[F_TUNE_IUSB2] = override;
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &override))
+		init_tbl[F_TUNE_HSDISC] = override;
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &override))
+		init_tbl[F_TUNE_USB2_PREEM] = override;
+
+	for (i = 0; i < F_NUM_TUNE_FIELDS; i++)
+		regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
 
 	ret = regmap_field_read_poll_timeout(rptr->regs[F_RPTR_STATUS],
 					     val, val & RPTR_OK, 10, 5);

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
