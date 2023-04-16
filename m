Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 020FFC77B79
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 17:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCccoAUbNI9K9BsIa7MIAXukxin+nX2pkryfbbih2sE=; b=f1YCEXsNuTeAEB
	vDbJHi0CFcUkttIKrwASAUX8MJFO7mJa+QxnMIGse/aX1kcSc30gmg4q8Bym4c30cC9lAfxTajOf8
	aN2KMtgLFa+FtfNd6Gb3GVz2PYSHrpUYCuMIdBUM8xZiUlCS4TntMZAh6SPocEiicv8wtdholVyAJ
	0Eq54C8m7lE7enVo95Ks3bqui6tWF9OCLaaiFEIGBXReYGH3/CvTVlKHb0ZViTTaS/5Pn3Xw7EDin
	sftQQQE3qOruRVxSM8kcim5Z3FifrC02gvAr/Tyd0SaPWBAjiDEojTFXEOGtEL9z8m0SN21Js51J5
	8CRILv3Vd2ICF00xN8HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po6b4-00EECL-1v;
	Sun, 16 Apr 2023 17:55:30 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po6b0-00EEAe-1E
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 17:55:27 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5067736607fso2515444a12.0
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 10:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681667724; x=1684259724;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x7wT7n+DJMWXCwF/JmEqtyfQLfvwMTp3PMeKPlacVvI=;
        b=N50SBxfRyEvNTrmfJYbWrp3K5WfAffRN7269lKy7ZahDLbF6YzyDwCeQmn5st8ZNVU
         TiWP59+AIx+c+ZAGcexmwq8zozFdGU5WSKa0UB25+PDCSc4DR2aFOxSshDG+yG6lZTtE
         VMUmyj7xEqwhgDxlwjVLbKZKrUgLZnSKjeZhv+bN3aVy2SnxHo3wD+ssFpSxvT0fw9Ji
         nJvfEOqJZiPies9FMmCiYIx+QgQtaXzqnJjIOFIiaOXhUbVZsKOGnjX81ore0i2FBzsQ
         emUEEbZhA3wQAmVg2rwJObOsNrFJMsE1DgyeFgvnwHPLIUuX6x4NX+GzS89nY5R8k+q6
         g9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681667724; x=1684259724;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x7wT7n+DJMWXCwF/JmEqtyfQLfvwMTp3PMeKPlacVvI=;
        b=HsmPetGD7yc0rQ8B9aQcBkw21Kzv/nzoKTc0N3CTzsV0g1cmYUummh9pblIi4hlQHo
         CpZtXsDGx/fXaeihBj+YWE46jyULwhUmJqohjOdW6txAJFLduPaZIOR5vqHSCq5AbUYv
         LOoMx3V9jCUaOUxuBWGIC2fyaBl1S8BjbVuOanLbAAui7Btr8UvuNlfWVJ4kYS054m+3
         kcCEalvCJib9HxGw9LUQ5Z+Rsj/yU8e2IssIh4F/wr5kXDpoX+IdqpAIUNIrsWdv8pr+
         Ch6zbGxKFOD+lehORO847MTNe3jPj0Uy8+TOImkLUB5Pl0gC7A3hyDefjn5Z7/TNNi3h
         lPzQ==
X-Gm-Message-State: AAQBX9dJdMEHngK0Ha3AyDeCuZGdJPQG+I+hOoi0RRlKjXlg4KqPIojW
	dro4txZdwpGiu49maJWGGKraLg==
X-Google-Smtp-Source: AKy350avKh9PmUHvsOygNn3GPct8a9xHAE66Mg83Bz+YU/JqH0f5dabMl/mfcrMIbTTp5Lai6EdXjw==
X-Received: by 2002:aa7:d352:0:b0:505:394:157b with SMTP id m18-20020aa7d352000000b005050394157bmr12230901edr.17.1681667724514;
        Sun, 16 Apr 2023 10:55:24 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id b11-20020a056402138b00b0050690bc07a3sm2240983edv.18.2023.04.16.10.55.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 10:55:24 -0700 (PDT)
Message-ID: <99b7f216-114b-c01a-cb27-7dbcfc0c3b5c@linaro.org>
Date: Sun, 16 Apr 2023 19:55:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 02/12] dt-bindings: clock: add Exynos4212 clock
 compatible
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
 <20230416133422.1949-3-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230416133422.1949-3-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_105526_420374_666728D3 
X-CRM114-Status: GOOD (  11.09  )
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

On 16/04/2023 15:34, Artur Weber wrote:
> The platform was originally dropped in commit bca9085e0ae9 ("ARM:
> dts: exynos: remove Exynos4212 support (dead code)"), as there were
> no boards using it.

Also wrong commit. Reference the one which dropped compatible from bindings.

> 
> We will be adding a device that uses it, so add it back.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
