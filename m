Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BDF8C001E0
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 11:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQCYBZrktzuUjlfwRBg7R5Sndvfvi+n2VMVkF2lIiTM=; b=bJKmvO6OyXZeAu
	MxBAb56ri8FfCaJWaAfF0KiRqITeTqZhBCCsznaxDh4S5nt8aEVWvkW+5vg+RI2wiL3BQl2nOMe6a
	PdFky2b1knwn/01njYCsFb7kBQX+Y7ZiwmaQ1HNmYW+k0FK/92thzV9O00/xAHRieu9ZRcIYtMGuE
	1uHIC/LEAwBj8TPLuDYo22b9dVqhSXwVTKlusY8+xDNILKURxics9NYsnpz8IT5HcJ+nGb5sEyLQX
	/iaL8KxH3O4d9xvdG7NQgD7qZOC5LpLgYuJhHqm0zj83N68WpOPyDjx2NXqUUsl8VuDUXDQWtQPMy
	TqTZNk53Io5eiZF0prpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3i6-007PLD-2q;
	Thu, 10 Aug 2023 11:20:10 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3i0-007PGf-2H
	for linux-phy@lists.infradead.org;
	Thu, 10 Aug 2023 11:20:06 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-523100882f2so952856a12.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Aug 2023 04:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691666403; x=1692271203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ktcs5NdTv2cCWAPg+nMpm3PUtm7rQSXE36l7Rn+flIg=;
        b=QSIhYdpdako5VYTZrsQt+ObZhMajMDlSo2PgCENCIMK0yRWLTDjCYs1qjNoEfGviwh
         oTjljpxyfQblKRN/m0swdnmQzVlZ+EceTO0aEWV0VOPctl51zss0Wkf1Drq3PlE786iF
         myAXejODadpaPJsrvq0IwLodeT3sNKBNXUyk/ScecsGYRpXnHzjA8skfym6ueIjCGS2H
         g8fpfPOK1cZMGfEYStA8etmijTDZ6jxhrALVb/HINLGrVaP4Z8sXv6c6TpqDeWJ6E3Og
         bn7QF0KxwVOQ+oKGWyHDP0d7F5RC78wrn50RBvKw2ORq9zL8q7D+3hEc4c5b/Ve+D2Jm
         pcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691666403; x=1692271203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ktcs5NdTv2cCWAPg+nMpm3PUtm7rQSXE36l7Rn+flIg=;
        b=Gy2KY2MgJkJwUDZNGzo67/BgAW7JDpMMcQsOCWg4RHslym3C52bpsShBA06X+JgjR9
         zmoz22PJT939svG3NwMfWrU8Cjs0eneK0dKPNWnaTUr6eEKndcZF5xKHREhIibXbfpQe
         OPbdDMSJpj1NtwpY2UPa7RB33pi9VVUOTufO/5cPCm5MgavUXY6xltCdaBCmNsorYg8I
         rnOHnQngoWJOjdSRZmlihgUm0UX6mFY+MKe7HHLTH0SVyR7HwTbbA1gBWhLVj5b/CW4i
         8ywlRUH0v+x364cGVYBIS1pwzP2tPqVL+xGp5qsYjAPe+UixO6PSI4PKhpVq01ZbfwVb
         YEYA==
X-Gm-Message-State: AOJu0YxcMg00dy5nY93uDC26l4I5U7/45wL/vc9Vi96RXKLVYTXsKqfh
	tWify2ZikQoLxMk457BAhK1U0Q==
X-Google-Smtp-Source: AGHT+IFUPx4e6WTIaWFS8XfPyJLCyfbqVQwy1oe+1dz/OcKdK+SDb+aWckxRLLJOvALWF+MJz4Fnqg==
X-Received: by 2002:aa7:d4c3:0:b0:523:4922:c9c4 with SMTP id t3-20020aa7d4c3000000b005234922c9c4mr1886784edr.11.1691666403284;
        Thu, 10 Aug 2023 04:20:03 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id l10-20020aa7d94a000000b0051a2d2f82fdsm672190eds.6.2023.08.10.04.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 04:20:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] phy: broadcom: sr-usb: fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 13:19:57 +0200
Message-Id: <20230810111958.205705-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
References: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_042004_753671_CC97D89D 
X-CRM114-Status: GOOD (  10.72  )
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

  phy-bcm-sr-usb.c:314:13: error: cast to smaller integer type 'enum bcm_usb_phy_version' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/broadcom/phy-bcm-sr-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-sr-usb.c b/drivers/phy/broadcom/phy-bcm-sr-usb.c
index 0002da3b5b5d..b0bd18a5df87 100644
--- a/drivers/phy/broadcom/phy-bcm-sr-usb.c
+++ b/drivers/phy/broadcom/phy-bcm-sr-usb.c
@@ -311,7 +311,7 @@ static int bcm_usb_phy_probe(struct platform_device *pdev)
 
 	of_id = of_match_node(bcm_usb_phy_of_match, dn);
 	if (of_id)
-		version = (enum bcm_usb_phy_version)of_id->data;
+		version = (uintptr_t)of_id->data;
 	else
 		return -ENODEV;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
