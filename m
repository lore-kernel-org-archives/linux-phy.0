Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12F80C55822
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 15:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQNVA+ZH3neiI9qrse7ffnTUE5ZzO+n8t+3w4wVhW3Q=; b=FEUMGrnBBhsHiq
	851z219lw8NZ503zErJ8FFcHbXCi2Ab63jdzs70pGGJiVMYRYA69H1+LTLtuLF3P8x+qsat4LVZ3t
	T1XpO7/cmyH0ppkkaYJQlpSxGBXLM5oYgr6BGJper4P8A0BZWr6AKXQHP40QQlBpMdHFrFT39h3Xt
	UAARVzHTQ0H5bYHa8FklW78CLQrsgSU/2EY/aw1W/GWouYwKZe6+bh73F0/AJu0VqFYVvB41FrWW0
	SIRnQqSwCy3vY6fiQnTduc+F7NvSpPE4dmGbn1UsSTwHoUTd0Ke4JeGfJzA1o5wnPhSnzBzpT1NK8
	yRWCxCK+lwxBmSueq0rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0P-00000002Cw8-38E3;
	Tue, 04 Aug 2026 15:24:37 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0M-00000002Cv8-2ZFN
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 15:24:35 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-8484f229529so3895579b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 08:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785857074; x=1786461874; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FBV25FHnbtj4yfXf4y/tjyzU6LlfwbEPVATRcbf7jt0=;
        b=pTVfa8rar8K4VY2GdaV5tOEd2qqI4OEVcpyz4wBw6dnqoGN3VLVg3qlWBcev6BKQoz
         vUUKS80RgDaMiqVAa1n90n2I35GX+MJTrk6NXObAlXFQXKJNznwzJgJ9qyMntE2XhewP
         luF5VIIXg9o8FyPxDjtm1SYIlchaZtKkfyzEkTEzytOI0ffhJPDXp1Q/HdeTaecnptlC
         bcyS/lItduZkkXKs/kQcENpv1mRL7Ybl8qnfDRp2tMs51teX8oq+yfKmRQ7VZQlmx8kW
         KdnvKeSSgO+cvxXgeEBaLQqmMQnBdTZaqj7PxFjv2YL+yMZC8ZxSRk+vdDXWlJnbZr7c
         XgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785857074; x=1786461874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FBV25FHnbtj4yfXf4y/tjyzU6LlfwbEPVATRcbf7jt0=;
        b=O+8uj0bdJ3wR5hma6Lj+WV6A3a7fHG8BqxXK8FooI3VkgYeG6Zc7RQ9T8S0Nn97bw6
         z0oxEvIECWWDoBycrt9hcF/g42vROXxLOCvfZcHk6gL+4Ie7DK8pJIYqvpmeOBjBDmG0
         AtGZLQ/PKqoOZUQNgdBM7wuBmkll5DeJsH+ozn5Fd5JH4jj+WG4L0h/xXQ+iadNDa29Z
         a40zZpYy9YhTesVt3qnp5MGxPcY4hw4hPxFmu2Vw1vfQvnO4Zo+yZejokT0va+WdZFK2
         z0r5YOTgVwt0Ou/L1XwAL32yIm4y9hmTZMl95Bf/cHC78sK2efPgakyN2vLxLVOklMab
         ukhg==
X-Gm-Message-State: AOJu0Yw+OF6DyB/lxIVx6SKXcrwPKWSbgf80dQ1/yMjyawORshUTuwdv
	FVTNkfRobMzN6+Cn3at9q88X+V6OPc9g17tSfLOJmrfN7yvV4tRp9kma
X-Gm-Gg: AR+sD104Vmlp/ffXiliNqtU1BJKM0nhnAdFz0bfd+CfnPKUG9Y40UzlCMWMr7OgTNeO
	XasRnJ2o15KYF7NiUeaVpjaisqCeS8LKjYTOQ+Yl5dY2NW/S9BumNmHKqI2sL5rMKh69bbSrYEi
	EmzHsgACcah1+PD6PPBWNvAHgbQNJG8iDv8QtjRONGk3CBnbSWefkn9FfSs0Eu9am+Z6wDpAspx
	oN3qvZajHgFFyc79YPKlKFfciEfW/6GdsgWR18MMhr7v9VRvnlvWi6HpmwzMEL5TZ12HRj1mpwE
	q6oafp5Mr5XDFQ1GITwaF/iSJoheOMgrJ0qANT7IAY2FhxpVQiNhk6jggfZIeMgUUICNpnTeSPC
	8FibLbU5B/DCEtg9nSod+cG/o8CK9ym+oWbuTqHXGrBx/We3ri2dCz/rWZsJ70fbA7T2QFH8S3G
	FuWz7kyjHmL55vqLNXhr2S29Z3jA4o3pX0v8YIeVbZk+PtMBCJzUG8y7z5U9etacbatZO8H0mBd
	w1Jhn13onu9KM2gFvkOOtuhJy9YJSaaJWTRtE88L0rKlCAB
X-Received: by 2002:a05:6a00:3d44:b0:845:2ff5:b66d with SMTP id d2e1a72fcca58-84ee48bc72bmr12127911b3a.35.1785857073491;
        Tue, 04 Aug 2026 08:24:33 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe564b3sm5586778b3a.14.2026.08.04.08.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 08:24:33 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 04 Aug 2026 23:24:18 +0800
Subject: [PATCH v2 2/3] phy: renesas: rcar-gen2: Return -EINVAL for
 out-of-range channel reg
MIME-Version: 1.0
Message-Id: <20260804-rcar-gen2-v2-2-829cb84112ca@gmail.com>
References: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
In-Reply-To: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785857060; l=1024;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=OopYQvhAzOgtFkvIvP9rtCLorwAIPYHcEYrvhnabJkA=;
 b=BsDksh2TdDHRuuWFLX2lyAqs3HxunCcOgfL9ctOYsr3hJ8MAEq/fJvK3TGgzc+SXCD58Mqjag
 BWpevYb9t1uBC4XdEjt8ivY5n2ryEPBd5wOmV2P/WXBB2U86s1LEReX
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_082434_680374_3A85CA16 
X-CRM114-Status: GOOD (  11.52  )
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

When of_property_read_u32() succeeds but channel_num exceeds
data->num_channels, rcar_gen2_phy_probe() returns error which is 0,
so probe reports success even though no PHY provider is registered.

Return -EINVAL in that case.

Fixes: 1233f59f745b ("phy: Renesas R-Car Gen2 PHY driver")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/renesas/phy-rcar-gen2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
index 5a272e25e051..b18727ed41a1 100644
--- a/drivers/phy/renesas/phy-rcar-gen2.c
+++ b/drivers/phy/renesas/phy-rcar-gen2.c
@@ -390,7 +390,7 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 		error = of_property_read_u32(np, "reg", &channel_num);
 		if (error || channel_num >= data->num_channels) {
 			dev_err(dev, "Invalid \"reg\" property\n");
-			return error;
+			return error ?: -EINVAL;
 		}
 		channel->select_mask = select_mask[channel_num];
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
