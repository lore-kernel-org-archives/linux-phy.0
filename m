Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CCF6C47073
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 14:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akvN7/gfdLb6KuorG0WXnkUyP1a/pEQ9rJBzLp8pGFY=; b=i2xo1+k9FxnkJw
	uiBx/1dZHgwMaySZIHlJ5NMk1evkvHsQbTCxqlCyXXaWJ2tU8ov1ogeZ5aAe/YoAHuCT/N1AQegwm
	jv7zt4xW2oKKBJZKY2Y0F7JMq90SuckLW5fWoNG0jxVhM5MN0ABwiMvK+9rpqreBIX1Rh4cLdSt4B
	ztjx3MG2f0hw/PJkb47qjNw1RhNKvdFpNSa5D1LB88g/zAOsBSg/SQPxSDVJQQg3Nd65E0Ya67mqf
	qKcWKy1Ki0HFaghXNTBbBMSzoybsYrwy3wUCvV9JSCWrtk8WnSFa8VjmiK4Tw9kGAnLV7E/TtCafm
	Yr0KC3bs3PZ1wJsDoR0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLP5L-00EOta-12;
	Thu, 04 Jan 2024 14:52:39 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLP5H-00EOs6-1f
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 14:52:36 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5534dcfdd61so995138a12.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Jan 2024 06:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704379949; x=1704984749; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XMnAxGfIQiueQAO1wNW7BfacgEmomUHtgI56o8wKSTE=;
        b=zSqimyR5etlUV54e+PQHx8NBbVQSD26hCubUOkpeIEVZZUa6uwvItWVs5v7y/m52Re
         eLBMSs8dALT3xQGgDjmq1gv4zqRwOjhL4QRDagp7pIUI0NWE6QwbK9olKqEZ3llBqzIn
         OQs5pe6MJBlvLi/boWU1MBoGK6iUEOoQsbHrwtx5ZgKdQJJlMXg83riTwYS5t7mFzuf0
         uh5DRKMg7BfSmH4qwOITU4xLg2xuI+OyPmz0vkER3iRzZARANhTIFM9I89ggbn9DJQJ7
         OWzI4nZR+FC69qfn2G5+DnaMYvxxwE0qDmEOWjePr9AsCoJCEFBV+CBVMdD4DpOgGH4s
         zFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704379949; x=1704984749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XMnAxGfIQiueQAO1wNW7BfacgEmomUHtgI56o8wKSTE=;
        b=EWg8vuCIIKo2EPmr75Q0woqejQ1iLR8cmo4IFKN1u2YAQpP36PcBBXAiAKoOr+R2gX
         +3VFsFHfK9ErlV+b5PO3nP3/SA/r2TVLQZrdZkAU9uxoq5n69gXQVbyNec8Cjo6+SCTd
         Dngw8RW0Bf3Z1YHOfHIZq8hqw4lfeQpeqlqv2QnXf7aI7/3XdYCUjjENiGtMTBTCEaDd
         PYyDVRulLTMTTTUdCxT3vbT4PhCokql4zR4oFlB5Ivk08GvSYyyBMz97ze3aMMcs5rzX
         3hSesLCd42+e82bspXob0d1LCh+PrznbBvGc2qzFVnCB83Q4zwJU/GEWF0CLyML/rE18
         kg+w==
X-Gm-Message-State: AOJu0Yxynq7SeGd9T3EQM2tOz408BHr26tL53Hpu8tncQkE8Q1OePpNg
	sdTX25BC1gf8/6Kkp/jBcjqm3PYZec065Q==
X-Google-Smtp-Source: AGHT+IHxyKF/EBhfovNxx2TGbkmvEiT1DyA5/F7/jc3DbI567b0y9mKHoTS0J4Otk1IiJ8CKBJ/Yxw==
X-Received: by 2002:a50:9b54:0:b0:556:e101:535 with SMTP id a20-20020a509b54000000b00556e1010535mr827944edj.37.1704379949460;
        Thu, 04 Jan 2024 06:52:29 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id k24-20020a056402049800b00555e52fed52sm7970592edv.91.2024.01.04.06.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jan 2024 06:52:29 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 04 Jan 2024 16:52:12 +0200
Subject: [PATCH 2/2] phy: qualcomm: eusb2-repeater: Drop the redundant
 zeroing
MIME-Version: 1.0
Message-Id: <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
In-Reply-To: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1320; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=7AliMaAdWROGg3fLvttKSstNZBNXuERKP+7k1vLYxm4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBllsYpqEYuM2KFJzq7R2FAgGA1XjlIL61uSTuld
 ETLicqGGsiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZZbGKQAKCRAbX0TJAJUV
 VkEmEAChX0fzzAbkg03l5iDp/SItTko3VZiDt+fJiOAGDqb7RIzW/6ArWDo/rAuhn2wZB/27VKe
 Y9i+hnWURv+aQRwNm5QWPYTVo0v8HL+PndukPgbiFMW4muElu+5haOTMvRNz3hlZpVKPbGI8uq5
 AdhIR9bDhMgZ0QSjVTHYUJ5WbdXk8Rnrz2eGfFh7Rski5mwZ/ohmdLZpfKo+Yo00ifhCZnydKQP
 yjnXj3pvKMecr5pv+XTcDm03VV0FUz5kTCS4nohhfvOxx9Uaw6UoTh4qYZIMmUNLg3TV8vgQxrK
 ykUXwjoToQ1v/53g1z55TuC49hZ5E//K8zhJUuzBnVeY0XrTnd0ANFna1+wdGxROhmuDAOynmC2
 pqPZqohLa8xDZsjQdhSk26YGbCsSZnXEOOpsbg6JiuTQHdSM9D9Vms72w8Tw42HYD3UTp4/aDDC
 L3Sjar4ix9hnLqz6UJXit/z9ImfZ2JBaj0ukTGLbPRsJ83eT9F4nYm+I8CyuoQ5koZh8PbkvdRb
 hrIwocC3wdlw8IvuddLdX8DW6gnflCONLYAmpceXCtT6baaWRlTjm43hFmzDbpT4cy1Fm7uXWMI
 Md0oThk0u7OHeRUJCFE1dlRqzkZIDoliMWbPo2LGr8212BBNsHplafdVeMCUUxrNo9wP+I7rWHX
 tMfpJMiu+mZjgsw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_065235_557514_AA80B411 
X-CRM114-Status: UNSURE (   8.42  )
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

The local init_tlb is already zero initialized, so the entire zeroing loop
is useless in this case, since the initial values are copied over anyway,
before being written.

Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 5f5862a68b73..3060c0749797 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -156,16 +156,6 @@ static int eusb2_repeater_init(struct phy *phy)
 
 	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
 
-	for (i = 0; i < F_NUM_TUNE_FIELDS; i++) {
-		if (init_tbl[i]) {
-			regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
-		} else {
-			/* Write 0 if there's no value set */
-			u32 mask = GENMASK(regfields[i].msb, regfields[i].lsb);
-
-			regmap_field_update_bits(rptr->regs[i], mask, 0);
-		}
-	}
 	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
 
 	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &override))

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
