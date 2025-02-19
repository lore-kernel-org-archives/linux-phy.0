Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B4CC021AA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 10:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rim1GyhoUnzMq8Y2JXPDPKtXsY9eKXyUxp3O7RsOqOU=; b=MAVJDfK8SD6YAe
	/YvGqaOcsrDuia1HzAPfZn19TV06t4ZC945nPJUkpubI5bunIvBaZrDBEKYUnAaH/XZ5s3W3FGZ/B
	m2WkU/7wnh4decRt8CANVoWaKUChKiJW9CjNQ1/GD7XRhZmhBdqig9OP0uPgeJ0haVPASK9klQYXM
	zmNr9HTt31+cAc16GUMULiZIT4dL7NLsaGWFxpaJF/1+OnkJcPb+3OVl1mSdTbUQpG396/2m6DVDt
	5rwQR4ExgAO6bPLa0/u7t0Sncl1vqaNP6P+81T4Oe0EtloOtm95VNwJFqEbvw2c/oHKNPNrSfzlh+
	dsE8Q0bJzg+CklknOJ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkhja-0000000CGeF-0YIQ;
	Wed, 19 Feb 2025 10:55:18 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkhit-0000000CGPy-3u6V
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 10:54:37 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-221050f3f00so78411725ad.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 02:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739962475; x=1740567275; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfmj99E5nF700uXzwTkIiBrbuZR5VJirYG+7BOy/lwo=;
        b=KtTR+YbfFQqDs1ID6Lm+MprsWlIiHgMkNeAxsYrx9+hH/7dzcKdftyaVdl8cJbR0UR
         4MEqAg8SW284XZzLdFPq9v5UxxW7SnWvzQYBh0BBOG5crOCaP5W6rNJN6YJITpp8kBsK
         s/nCcLI5hbLIYl9sikZ3hw1NIRzBIip61AiMjp/NzKC7m+pjChNWhTvm0AbqzkCZ4jPW
         6RXe2mY6+1FN6omRmyTpBvI4EBqulJEN4K2WnHsdRBOwJuFfe5AbR61Sb1IGmekiUNMJ
         w6XJaWcV1O3DiUevRJfLN1IgnsIPbChx8iibCZBgBJGf2WqPI8ikYEMszNasHg6aoebL
         mnrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739962475; x=1740567275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfmj99E5nF700uXzwTkIiBrbuZR5VJirYG+7BOy/lwo=;
        b=TlCVqEe4u8CWzO3L7Tgo3EAUEUSCTw3yVE6hbk62lwqOWLvGv66F6HVLTgzhvopLvx
         cmY2Ykm2cZW5p2jSmTjbGN/mb3gL4eyFOrkBNrJa02qzzJuoSpwjfG/8yIsm+rTa/lal
         nsIBY2hLHkA1nfgoucYn1p/SUViIJNvIA0RXCyLtjvlVakKcaBpEboFcOmuwh/jkgmC5
         cM6gy7kA0r/kR2yLtCtYu+Pi1DfHaz3MJ7pgGhqlbVxQNkkSSxg2dFPExcYw9SNJx02l
         MfQorz0xoojAH9J00Cv38Yo6nhI7F0zQSPAPUPzBqYfKUjskkdllyo2BlyhGJe7aJxXZ
         L/ag==
X-Forwarded-Encrypted: i=1; AJvYcCXOKBMcU+0lOaGRzVXPDXt0Nx1r3VqVYPG7mRJEE35E7UBsIlwvz0agGnah4HbWAgKsLlTbVWPQnIE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3ycrWGhBM9LwUqqCFKyc8c+cwZrtKXdSJ6bZdSyvTmkkoZD/g
	XXpLLdOtGcdoqsOiZWUTB8FPoImiGkI0QxK4QqUAJagkbowAyEP2
X-Gm-Gg: ASbGncvAN8EPkkVGTqiBqeZ0/JQD1NBMh8H3Z0iDpDO8lJuycSJYlACrBuOkfGL4mbk
	1YBZqWw/18XsrRWn/dbFkjROZzvi/W/FjaAueQa6+XEFsIZD9HfOLBfxJbMNcdy3WMFEV8U+Vwv
	aRuW8Np5nip7xcCc+b0OxZV1QIsDJBO7hbFL6EzJy39dxW4jh2fjYLrOBs3wjMY2IFvW57vOl6A
	zijxcvcYP8TOvaeUKxb9tJTYvE3kyrILbk/GxACK4+UjXSx8DeyI9HxT5a3Pc0OEiZDryKFYked
	rW8kxwKP55EQk409ifpDW6X7uxgicQ0D0BwaJAsCm8bPwQ==
X-Google-Smtp-Source: AGHT+IEz78X5zWQhTB+EMNYjdr2n6pZ5lHab8dXaoEyP99Eo4xdokhvPivhFVuTWK+S5WfuesEyPmQ==
X-Received: by 2002:a17:902:e550:b0:220:d078:eb16 with SMTP id d9443c01a7336-221040bf81dmr259337615ad.37.1739962474987;
        Wed, 19 Feb 2025 02:54:34 -0800 (PST)
Received: from mi-ThinkStation-K.mioffice.cn ([43.224.245.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d5364503sm101827285ad.80.2025.02.19.02.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 02:54:34 -0800 (PST)
From: Chongchong Gu <chongchonggu21@gmail.com>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	aford173@gmail.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	guchongchong <guchongchong@xiaomi.com>
Subject: [PATCH v3 1/1] phy: freescale: limit div value in FIELD_PREP()
Date: Wed, 19 Feb 2025 18:54:11 +0800
Message-ID: <19ac11d6b9e5988d190025255c5ffe08c57c8023.1739961770.git.guchongchong@xiaomi.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <cover.1739961770.git.guchongchong@xiaomi.com>
References: <cover.1739961770.git.guchongchong@xiaomi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_025435_967158_AAD916A7 
X-CRM114-Status: GOOD (  10.34  )
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

From: guchongchong <guchongchong@xiaomi.com>

In fsl_samsung_hdmi_phy_configure_pll_lock_det, the variable named
div becomes 4 after loop. It must less than 4 in function named
FIELD_PREP(REG12_CK_DIV_MASK, div).

A way to reproduce when run the following shell command
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j4

Fixes: <d567679f2b6a> ("phy: freescale: fsl-samsung-hdmi: Clean up")
Signed-off-by: guchongchong <guchongchong@xiaomi.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 45004f598e4d..0ad766359cbe 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -337,7 +337,7 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
 	/* Find int_pllclk speed */
 	for (div = 0; div < 4; div++) {
 		int_pllclk = pclk / (1 << div);
-		if (int_pllclk < (50 * MHZ))
+		if (int_pllclk < (50 * MHZ) || div == 3)
 			break;
 	}
 
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
