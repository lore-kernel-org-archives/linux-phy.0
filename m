Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C8E4C7EE2F
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 17:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAYvWywjjAPXc/Jh1G9k01eC/t0x9LVGP62M1EtpkJs=; b=SVsmqP0CQ2h65N
	0F+kgZa7zP1ZURdy58suUhaxzEnHsIlvpAkcWg3yrwRQzVM+xGVhtFtOVUxoGTjjFfBxuMCxfPFfo
	YDXzyuWQZ6UgiHyBEL9RsEuCR4AKzTpib9Y79rXXynf5J2tI6q3LeZmKW2Szko6JvXNaPyoOiwYyB
	zlw/ZSdmDmxFNfbra2MTZNajvrQBiB8n9u3YdEkL+8OCVaPtk3P2kQC6WuhY9GpAMBkbpzVjSr00O
	Dw1C3jdf3VTI2u9zSoKfmGzipAbUCo5F1r7SzQwvAKyB7tQTdxQhKtqkDOWA6JBOt9j8oi+sqrWx4
	oRXgaNwpn71VZ88Z2jKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q43RG-00EnIZ-02;
	Tue, 30 May 2023 17:47:18 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q43RE-00EnHm-0j
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 17:47:17 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-64d5f65a2f7so3525388b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 10:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685468834; x=1688060834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4KFcanc4CjzN6hzpjon4X1hruFFYHDR7ugE4zm99DHQ=;
        b=OdR4Y7H6Nx7sBNTAd11PEkft3yN3efyKaIhV51v9ftLHVjNGbfszMwZosHkg5dbvth
         fGKbqJWOkQEJBu9OgQv5/ubfry9JCPiWIKt6agjG7Z9uG13BkYg/lmLuPtIG+hdVAG/t
         WztyPKjFqolTIx3oqTGSy0hNZ+bgyO77i/EWyvAzYxdfOPWR07on947GOAxT3K1cYvcb
         dRauGNu4twfMxT+IxF3YuBxl3FxAjvRZnR2zhmO1CoAm7Y/bEdSRRZJFIh55JuuGY2HO
         NLZFONHUXgPe1Yd+JHK7+pyUnZAn8kTI1QC+L6ulzm5YhZyWROjecxT8gFsQvLpmTQwL
         jOxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685468834; x=1688060834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4KFcanc4CjzN6hzpjon4X1hruFFYHDR7ugE4zm99DHQ=;
        b=l0eqY8k2806WVAhXyRoavCnErd7h+aBzGWeir3RCkuz7JPgo8hT0KwaZrG7utb7/dr
         7L4lr5+hSIpz4kQiofQSj23bzjCRL0ReY5tj6qeQrKHbiBwze1oJ/1LXaENbz9upawWC
         RuaFpAsbY9HkLhH3W3aoqHGBr/CviL7IXL40vzYqgBHioWEWOCr4X6E+9g36Tds38cpR
         TsCbsAX8prIdD4aFpxj8NXKllBZJUaviRdxs54jLkmdIQPG9bsjLHiSI3QmIZ0gCU3SC
         VZOqOfxoSTIS1n/wheId4e0Phu/+5x1xZLw7ZUqxn/oZsY5PnhbWk1qNAadx8o0FlINF
         2fig==
X-Gm-Message-State: AC+VfDwMeBzrJn1qysm2GgHOgzhZblJx08KEVHxKqh2SLHK8yZ+X57aJ
	gny/xQoBdSPQN8xh66sbFjM=
X-Google-Smtp-Source: ACHHUZ5H1oTyoutcnUo3XiPYYzwua35COz5cA3FRa6JU3oW4ADLdTbZES7lj7v/2W8drbB6s7qiXwA==
X-Received: by 2002:a17:903:24e:b0:1af:ff02:bc19 with SMTP id j14-20020a170903024e00b001afff02bc19mr3552294plh.26.1685468834029;
        Tue, 30 May 2023 10:47:14 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id b4-20020a170902b60400b001a6f7744a27sm10604029pls.87.2023.05.30.10.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 10:47:13 -0700 (PDT)
Date: Tue, 30 May 2023 10:47:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Mark Brown <broonie@kernel.org>, Dipen Patel <dipenp@nvidia.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-spi@vger.kernel.org, timestamp@lists.linux.dev,
	linux-watchdog@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH 7/7] dt-bindings: watchdog: restrict node name suffixes
Message-ID: <2aaba5d8-37ad-4086-a81d-0d3e78cf5664@roeck-us.net>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-8-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-8-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_104716_265536_4B40CB8E 
X-CRM114-Status: GOOD (  15.82  )
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

On Tue, May 30, 2023 at 04:48:51PM +0200, Krzysztof Kozlowski wrote:
> Make the pattern matching node names a bit stricter to improve DTS
> consistency.  The pattern is restricted to -N suffixes to decimal
> numbers.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> 
> ---
> 
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/watchdog/watchdog.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/watchdog.yaml b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
> index 519b48889eb1..f0a584af1223 100644
> --- a/Documentation/devicetree/bindings/watchdog/watchdog.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
> @@ -17,11 +17,11 @@ description: |
>  select:
>    properties:
>      $nodename:
> -      pattern: "^watchdog(@.*|-[0-9a-f])?$"
> +      pattern: "^watchdog(@.*|-([0-9]|[1-9][0-9]+))?$"
>  
>  properties:
>    $nodename:
> -    pattern: "^(timer|watchdog)(@.*|-[0-9a-f])?$"
> +    pattern: "^(timer|watchdog)(@.*|-([0-9]|[1-9][0-9]+))?$"
>  
>    timeout-sec:
>      description:
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
