Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C654DC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 13:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZpHslAWyzN5ABuvkeBztS1tH8SWBREUHx5PryCHURg=; b=egco6cQIdWEkh6
	6JNoPMmBcfGFoILfOrUvUhX2810imVH8Fj5Mk/MAnZRrElHf4uUqujI7yQyUqxG5X6HNAqvoeBTeV
	vIJpnqX+sSmse9yAzoZ7JSGqsDYyC72IbiaYfG6j2dqoFU7IXvUV6Efvb1e4X7KH5wcsbCyjyca0Y
	x82EYS7ISyM9YpFQfAM8LYsdLyYKRgaj4fSpitPO/SyPHLq9g8P7NI9xmjHyswIvB7bLBqwCQbs2C
	8CeAnjbZt1MGMd9+uvDetWN1gO38q3dFT8S9/aA+EZG242t6ef5S5q3J+XRF2TGbML3VdAE/l4NWH
	hazs0/p4fAcAXz7l/kIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibWu-00863j-4v; Wed, 12 Oct 2022 13:12:12 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibWX-0085t0-ST
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 13:11:52 +0000
Received: by mail-qk1-x729.google.com with SMTP id o2so3173986qkk.10
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 06:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bSuVtxQGTyseURL7iIpqoWMIO787v64Us5vsJhx+Oqw=;
        b=m1+rxYNLiHD2G9lUxA+Q95eLdJFGk0q6Sq8J52YqKJbiaNQLieBLBpfNLJ9XUFZyYh
         BFUVMKWsoLanUwjefLRwM2mSIYd/DncQfo31RRuP1vxK+Kihs86O5rSPOtfXXu6JTr/w
         cj97doNfAZFipxpsOeqOapJBssPtA2wR9kuuOumxyc77u2/GgHRWYIAU4ktpAUWVMYpL
         n0b4W6eq7ReIyGLdtFtXxmqNd42EeiV1XDviro3LEWWtW5L0Z30b81WNHbXZkazdzPSl
         8PgdWWWjXvqm+2jHCWzUDHKdxJgdL6LHwKqu3B+cAP6XBC4v9YrPhBUuVLsGUbUBCDQ0
         TB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bSuVtxQGTyseURL7iIpqoWMIO787v64Us5vsJhx+Oqw=;
        b=NhBFRoAIwZVoYGMY6cnqKzpo+k2wdERsd2iqyjZT1TpGMmtdSMXz3Fz8O4h1IFVVbI
         TEFiwDJ5+6o8m6CcXTQAwV3joBQVkYRJUZDkLnH+WGUJJaS2MtoQaqWH0JMCLMGZB9V2
         ZfhE7ZrHbbF9Kgq/i8qR2bb4Yce5bQUA1XH/gOkLWzgRMmykIrKXKi5Yoa7g71qCfSF9
         ZuJiOHnZS/HyAqZBXXsZP8PuqBfPj9tpdnOUTn3T35j2025rb/t7bKzqUob55vBvQU94
         LiEn8F7HzNHaBIrYq09US88AIfpdHBVVfaiDZ4SUIweSxFhk6AkJR1ougT1okX0SM7Cr
         GPDg==
X-Gm-Message-State: ACrzQf2kRbA3XA7oxyU47usbcuOmpFFdjdeDk2JzzJBCeyglhEmmp2se
	M4ko4qE1GQ4GqDLFU+C9Eqg3zA==
X-Google-Smtp-Source: AMsMyM7SUhR3PVQDSvUa9yBhsfUnrnqqFXcAMd3v99I4PTx3kh5i4oD+kuf+3P8urNimrRb5d/BSqw==
X-Received: by 2002:a05:620a:178b:b0:6ce:7f8e:63b4 with SMTP id ay11-20020a05620a178b00b006ce7f8e63b4mr18978626qkb.686.1665580307679;
        Wed, 12 Oct 2022 06:11:47 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id f11-20020ac8068b000000b0039853b7b771sm9334123qth.80.2022.10.12.06.11.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 06:11:47 -0700 (PDT)
Message-ID: <5496481d-99b8-3ffb-2e90-85b959083c7a@linaro.org>
Date: Wed, 12 Oct 2022 09:09:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 09/10] dt-binding: arm: sunxi: add compatible strings
 for PopStick v1.1
Content-Language: en-US
To: Icenowy Zheng <uwu@icenowy.me>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
References: <20221012055602.1544944-1-uwu@icenowy.me>
 <20221012055602.1544944-10-uwu@icenowy.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221012055602.1544944-10-uwu@icenowy.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_061149_994597_E1232E94 
X-CRM114-Status: UNSURE (   9.20  )
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

On 12/10/2022 01:56, Icenowy Zheng wrote:
> SourceParts PopStick is a F1C200s-based stick-shaped SBC.
> 
> Add a compatible string list for its v1.1 version (the first public
> one).
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> New patch introduced in v2.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
