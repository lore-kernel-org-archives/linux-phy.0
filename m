Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDFCEEB64D7
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jun 2023 14:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFfT+gwiabprHuTcZhg9AASudFkcnbayL+sACzjT0L4=; b=Bstn9xud1bSXCr
	Np6T4dvTpPdRmOMD33K26+a9Hqi1haGoovLM2x8DQn74a04fQM5vXPpnsDnagC+XuVYdh9JrAdhbV
	O1IcJYhWjnIsUs6gPz1f7Sr6l6M4gSKNWP+ugJbw2bn7F6gjUwUPKUs972nCefjJWyCR7G9VA8m6H
	Lk0zJm3G6mloTbF095sjJUgtwAtN41l4Tf8CLlQXF4Xiwgcr6ufi+Cx7bqpkcq4TVNNl0X5dC6rP4
	GW/5FUwrsMACmFsMPoXEWWsYCY9JDbUNuFn8juD2/WM2OWskolhFhXJwzBnKEXzBjLcfja2TCEwaS
	1Phs63/HFIbobzJaRmdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCi8u-003q9P-1p;
	Fri, 23 Jun 2023 14:52:08 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCi8q-003q3Q-0W
	for linux-phy@lists.infradead.org;
	Fri, 23 Jun 2023 14:52:06 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3112f256941so728494f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jun 2023 07:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687531913; x=1690123913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rJWtnTqZGQqiTeKl4r3aFL4RAd0yKamdEh9nm3JU/uE=;
        b=nZcAJ+sOqOwPNZAQ60lFA97QCbjofCc+XbSeSieNhhuKrWMtiE/O020aJCaGZig5Lf
         M+2Ra8MPpBVqUhcStWmEYd2ObUzA+kQ3K8H2ePAsYG1JWTf3WWXWaROYVC6t7QX+mx6J
         ESspbYNZ8OxGO/MfZaT0ORXOyftuTisX0q5bz1doEqX176Xd3AyztjKHNHN63UimszRn
         Dqv+xetGcZd2+R0LFeA2aONQHwXzUPMXk9dRWS8mqvQ8vpJvPrOKCvsRr9lGz/T5jW+G
         bbfDKveX+aL7d/d/Okx6QglyYu1YT1lUbE8K9aKT4exUm3nUwLqWGufz9RjrDc1FYimv
         EUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687531913; x=1690123913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rJWtnTqZGQqiTeKl4r3aFL4RAd0yKamdEh9nm3JU/uE=;
        b=QCw6ZK0jh0Y9M2ofydH5y8p16NOkuPcitTdAeLWlYMzuTv3z1jWNmmS/slRbo8J4n+
         lqwidYTliFra9K2pkm1rA3KSpF0uReHURvXRJhEEFQjKsG1SCfl1UQFiAnx1pNtUB2y0
         2LjPkcBHKoh0xgFNMPyCkw52tx4StaA7jdv4w2b/vN/E3Q+cfrmU4j+xmkwv1kVWFBie
         iv99p0/H7CwCKUZsrGtwI1xMciKxcFu/zbUeYi4u0QNuhqcGAq9s2ewew40jgUNUTtkU
         z9YwVfbG5WQAOiN6E1YVzxLbfJbwzh9DAbaX9YoRtw1dFYQq3FyKg6NWq7WiZ96VjFEQ
         116g==
X-Gm-Message-State: AC+VfDyw3CfKazDvRhmpe1sBsDAn3GIfL12GoyYlqedN591vAB0x/7yQ
	2N8sRj9WzPY/nkllKA3/BlE=
X-Google-Smtp-Source: ACHHUZ4EBaf4UIgKOYCqelucvQ5eoSxiLNvK3UwYGIN9g04VxMMagZ6W8cf/YKjEZ8A8mLc9ODWWzg==
X-Received: by 2002:a5d:5642:0:b0:311:13e6:6504 with SMTP id j2-20020a5d5642000000b0031113e66504mr14242204wrw.47.1687531913116;
        Fri, 23 Jun 2023 07:51:53 -0700 (PDT)
Received: from localhost (p200300e41f305300f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f30:5300:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b003113ccbf388sm9844475wrt.13.2023.06.23.07.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 07:51:52 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Dipen Patel <dipenp@nvidia.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-spi@vger.kernel.org,
	timestamp@lists.linux.dev,
	linux-watchdog@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tony Lindgren <tony@atomide.com>,
	Oleksij Rempel <linux@rempel-privat.de>
Subject: Re: (subset) [PATCH 0/7] dt-bindings: restrict node name suffixes
Date: Fri, 23 Jun 2023 16:51:36 +0200
Message-ID: <168753171977.1191890.3520383079920452323.b4-ty@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_075204_202574_97E7C8DF 
X-CRM114-Status: UNSURE (   9.44  )
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


On Tue, 30 May 2023 16:48:44 +0200, Krzysztof Kozlowski wrote:
> Tree-wide cleanup of DTS node name suffixes "-N", e.g. "pwm-5", so we allow
> only decimal numbers.  In few cases narrow the pattern to also disallow
> multiple suffixes, e.g. "pwm-5-5".
> 
> No dependencies, can be applied by individual subsystems.
> 
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> [...]

Applied, thanks!

[2/7] dt-bindings: pwm: restrict node name suffixes
      commit: 05b743db9d8cc4e51b3eb77889d24ab9aa2bf169

Best regards,
-- 
Thierry Reding <thierry.reding@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
