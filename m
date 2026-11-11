Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF7160A5BD4
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 07:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nPqZ3oen;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OUEbEfrF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=efIM9FjnMdyLIAzzqjK2foaUXLVLm8u8x1hFTEl6sGU=; b=nPqZ3oensnIa6cxsaRjU8lm11V
	y/mmWpe7goeDEq7bPvwbAZjjVkgsJBA0ehh8+PtjTI0lr3e2vpiGl2aP1s5J0fQuaoToKn5crXR+3
	6GUjt3dhBa0LtADrddeSt9leU1AlWilhzZNa1GPemTEEdcnSmGIF8Rf1u5eIEDtfTHtCAW24vfZqJ
	nvSfYMznJWxS1+qCaq/HUvVQ48GYIh3EcXybF2UhK0PVbIIv6SHLY8z8ueaxK6Y05BcJhhj3CEneV
	R/gW8SzcZJmdx2enLtuVHJyTiAXZuVhNVCWy7/J+ArGqRox8dcwzDMwz4AMQbzPvQaTcVVIoBhiPK
	JBh64+Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2oH-00000005uh2-3Cyy;
	Wed, 11 Nov 2026 07:31:58 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2oF-00000005uen-1PS7
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 07:31:56 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-3720addb068so5266295eec.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 23:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794382314; x=1794987114; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C7z8/qe+AfvmJGG4y2bRYtRiZGRNOq/Sl0ivxixfInc=;
        b=OUEbEfrFwjRXh/3W9X5a0ype6YUmYlsExWRoCIgFVEVWRvznYGh/jKqf36LYfqjATr
         T/Ss8Mv2IUGIM9/tVCeq5JpuCDID62ZX8yX8oPu7OrGm/VXZQxaztO+wjWFGBzArB0z2
         51bj5V2joHnzCNXFQ5oV6YQ16tCcGihZPOXj93OBTjuy9TuJ47grzInTsy0BGuxYDinf
         QmppONFaujzwAKA4MnDyoxff3YcbesXdiF2knfKQzIha1oSL+rrAdUQZG85KtNtWTGwc
         jVW24zr6Oq4HPArHVUb/dBkd6XWQH+bSAOOOF+BTZoQIrxI5f0/WcicMmHdreOHLr6lC
         xE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794382314; x=1794987114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=C7z8/qe+AfvmJGG4y2bRYtRiZGRNOq/Sl0ivxixfInc=;
        b=d/ovmx9TJYkY0eIWIswoM5atSk6C2jv8zZBAaQHoSnlBNiM9dvYcSUNyWcTb9vlbhK
         NZMU/38dEco1cwENGY1B9Mo54MeNSpfkUvNe17keI9vN0V8xqqt/+wE8bnLMbqjD5MI0
         VgQMxp7s0/9yjBxhFVs1bkxlRqjfFBXoh4GAH1qp00ySaXwGGbJehKX+X2HwPVYYveFB
         Ot4Px77sp0D+lJeiY4gpAgr8KirKlabTHscrj0+8r2Fiudy/nKufAJ7v1+91y7jgVa/U
         xGpcWNRvRfVwBaack8ayA1vNBbo4eJ+pPjORLq8SehQBknk6bFrIibk3f/DaOw3rOpOV
         dPXw==
X-Forwarded-Encrypted: i=1; AL+hErE13wuMBwnxQx0JEDNJTwmE6Izh7ORptJuDzneFYiUDfjczCk1phaG0urIjn0iPkXBoAWU7tldZ7ZU=@lists.infradead.org
X-Gm-Message-State: APuU4Z+idk2McDpEpU/DIGS3mANPn6kXFh0Uxxf62RiiizOswR3Sgpyl
	LRXmslLab0NQQlLpgAoxyeBqFvUogsvSRaUAWIA00walMQv9dq0sx6WIpH7+SQ==
X-Gm-Gg: AYBFou1NDPcF+h+14eHZhEHjVnESapR4bm8f/hXAe0/uAG5ITk6WsyM0NBdefhIX63J
	bRXFRuYXbCF77FsTnftz4vW2A5KNa0FsmjfTETI7DjyQE+OeYY70aVGlT/CqEppkvwV7gK0IXlv
	EmzyugqtPU5h/qg/Bsbc3uSHrhZq0CR6Duwl2+ktYzeGl7L1PplCKNDay66tDeWO2AVn+FilFBW
	cDMp2T/+IbDAKz3iU3ZnLVG7BBSEcnhK0bymUccAgh218SMS/ny3dpTf/BGiMeQP5ZjyiI1pna5
	DdYv1ZPYWYZVx5YxVHdotdxVDAqeInn6XRT9JWSxd/JHtHIlEBhcvuXk8Lr+DXIRD9NLVfQPWea
	jKs2x/eZESIDSfbLpb1gjmbS6U8QOjVyC/5fUrlPskzM6cejBvRsHP5zwzjrfE4CtzNukTz3S3P
	CuuGxNIFq996FEEyO2Rt/Q2FsT/oSx8RTH9rWfx3bbiVzfllar+SUNkUJFS/6aM5l+dJLAAW7OV
	8Saa4ap8qIHNp0to4hSbsdUER1nz1sEQfxJCpkgIUtArIff0SqTg+DYx2/g7RcQ0pfTkOs0kNu3
	jDUci+Kukdo4D/lEEgYS5VDCRX6M5pHq4XIkNTqX1RY0utgc2+WEcbK7Pzm2r/1HphdQfilZVFL
	U3oc1amEFPiXg546mxg==
X-Received: by 2002:a05:7022:8b:b0:143:26cf:8615 with SMTP id a92af1059eb24-1b3c036359dmr1596278c88.25.1794382314148;
        Tue, 10 Nov 2026 23:31:54 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751fe32276sm12640655eec.8.2026.11.10.23.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 23:31:53 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v9 3/4] phy: nuvoton: phy-ma35d1-usb2: remove unused linux/io.h include
Date: Wed, 11 Nov 2026 15:31:36 +0800
Message-ID: <20261111073137.381966-4-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261111073137.381966-1-a0987203069@gmail.com>
References: <20261111073137.381966-1-a0987203069@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_233155_384159_FE8BF88D 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,FROM_LOCAL_HEX,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This driver never performs direct MMIO access (no readl()/writel()/
ioremap()/__iomem); all register access goes through regmap via
syscon_regmap_lookup_by_phandle(). linux/io.h has therefore been
unused since the driver was first added.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 drivers/phy/nuvoton/phy-ma35d1-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/nuvoton/phy-ma35d1-usb2.c b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
index 9a459b700ed4..0b9976fb15c1 100644
--- a/drivers/phy/nuvoton/phy-ma35d1-usb2.c
+++ b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
@@ -5,7 +5,6 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
-#include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
