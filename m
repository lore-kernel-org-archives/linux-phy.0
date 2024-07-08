Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62B3AC3271E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 17:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MOGA57GXHNROM93uVsQlNS+7ANLuMLvQFdTacqjxkXU=; b=Qq42yYOebj5ptn
	eviHC/PaVeiYj+0Q8EZYOP8qSH61NnJaTQUCaotvyLNGt5i/V0KnG2EPXwSRkVlwTBv1YS6Ar08Bz
	OO5FjGH43krSdLKZ0xbE94KeUZs4pYjb14plqegP6NS26VwhSrJUaFQrpZKU8/Fde88WameQNmdHX
	ZKAnXrcB8A1WYKXWWq9q6R97nZL/2H0tqyWEx7HFJJSbpymQBqbHy3jQ0OtS0kesxMSujXEesLtfP
	PreCVjnG0Gi8qft+GOqyfaUjJypqDABv2lyUAisL48mCoGJCFpgOrl+psS6EER8HB5ForNnjkhbWz
	WIlf/9AHLWwGRtrozByA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQrn8-00000004Wmn-32S6;
	Mon, 08 Jul 2024 17:04:42 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQrn4-00000004Wlh-45KB
	for linux-phy@lists.infradead.org;
	Mon, 08 Jul 2024 17:04:40 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5c6775ea6a3so731857eaf.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Jul 2024 10:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720458277; x=1721063077; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MvpNrB9c9Hl46wWiT75cgTZb/z1ngLdiVtG52BbExk8=;
        b=mk8yMr1o52BIs1BJx4J4cgd/TPh4fboBmADvICjEVBJfpZSTxr3r2kLejpwMgZpq4f
         GdHPHqmC3R/sgwwyIIKHfjLklIoFwS4FIPOjuXejmEKcno41GJKwIqgeuqXzF/ZRGP3L
         b0v9nkxbXAF32mC7ENovCyjWDNVbHSKR6IgXDWVuta0IIAARiF9+Hzk3yMK2Zcp0BVi+
         NKGUb/1FSbbG+NfwSQY797fqBJ3JZrO/9fz87GADELByVva6TnkJ0fYFJP+Xxcc8/lFU
         ahcK8RDP3HWH4DFLQ12zrQrkF0+UKc06HTfpKRdcMTidH/vmU2+phTof0U0/t1JZOyHG
         RrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720458277; x=1721063077;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MvpNrB9c9Hl46wWiT75cgTZb/z1ngLdiVtG52BbExk8=;
        b=kSMjqCRK+AJCkTezGHPAr0cZEFWLFEFiXv9ApdOX7k1aWg+mBTptspdlD59CptxE38
         jlLfvhMBfwWw4CSi0yLnMDL1eZgR9TfynWU+lVv58dvEWShT8f+wOn+flGZdLB6oFZz1
         EwFRwCKYMBKO9mO3+tv72E0r+BFdw33zyX1o1Nj9ZlvhnwDBXa/vDhabrESmO8IUni4u
         hla9meDcRK625vW32QlDgb48rJ6OF9BJzVo6T+JZh08cl/AVb5UBVLbVxjdjqe7K8cqT
         D7FziL7SANojGi7Z3ySOrGKc+Kn7ddI1e47f77NtGuwphPtcmAGYqUWmZJ8ed+JRSDqC
         +T4g==
X-Forwarded-Encrypted: i=1; AJvYcCVFJjdY5w4YbK4OwHaYf/L7jyiuizU2llb7AhArxHljtjK+f11o0KLryJioXvs1tQjhAduDrT0KqiRnI1HvDand9xeRzO0T/6JVC96Rdg==
X-Gm-Message-State: AOJu0YxTQKlmxitWqsBFYkwGgZSptrBhUR/FX3NKP9SMHrox7QJ4PpJt
	RActofHeVz1T9YSU4TKRcLyy5LERicbYg++8OmneHjJE1xedazS2w0LFUxMB9PE=
X-Google-Smtp-Source: AGHT+IHBVVH6omPzyI4LtKLmO7vYBh9XFRpTa35ZGKUdJwwwS7iIEWOMqHJsi48/VsYlkMNnwlk8qg==
X-Received: by 2002:a05:6871:299:b0:25e:170b:4470 with SMTP id 586e51a60fabf-25e2bf1e4ebmr12424412fac.50.1720458276907;
        Mon, 08 Jul 2024 10:04:36 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:cdd0:d497:b7b2:fe])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25ea9f8fce4sm79026fac.8.2024.07.08.10.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 10:04:36 -0700 (PDT)
Date: Mon, 8 Jul 2024 12:04:33 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH] phy: exynos5-usbdrd: fix error code in probe()
Message-ID: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_100439_038923_74758A05 
X-CRM114-Status: GOOD (  11.88  )
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

Return negative -ENOMEM instead of positive ENOMEM.

Fixes: 497ddafe915e ("phy: exynos5-usbdrd: convert Vbus supplies to regulator_bulk")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index df52b78a120b..9cbf90142950 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1745,7 +1745,7 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 					   sizeof(*phy_drd->regulators),
 					   GFP_KERNEL);
 	if (!phy_drd->regulators)
-		return ENOMEM;
+		return -ENOMEM;
 	regulator_bulk_set_supply_names(phy_drd->regulators,
 					drv_data->regulator_names,
 					drv_data->n_regulators);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
