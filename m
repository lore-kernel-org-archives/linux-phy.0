Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A681CC7EE30
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 16:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwBtlCrhS4F5B5ScE2XBG6XVrONZomhxRyyVxnbDhdI=; b=MWuce7ECvCoDLC
	xDG+3jdAczXUKCCnHEk/U75DmDShBcd83AJx/Pg8MnUPK6Li8H/MoreID7UgICI08fpEbi1yONG9e
	mdDPifuZ87mYMdKn44EGjCZ1mIBDf+Ghc18O60R8fcRgWNg4o4Wa+8fr+vTNmp+vSmZQH5JK2bGHv
	xGaaoFIDVSBtLirpSds2+5pa9y0hTwQBhrX1dInKy4Ccekxia6NHjfuLr16u2fR7/q2JwPMKvBv1p
	teieGqYrume7lW/Q0IkE5UuyK9ygSjowOKvKgiW7ifYcD2LMOIgYWrqXiQDQzs6zMGnyrD+DFlAIg
	A4px9oZZzBu9MOdGbleA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUT0d-00000009HoB-0w6d;
	Wed, 25 Jun 2025 16:30:03 +0000
Received: from mail-ej1-f53.google.com ([209.85.218.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOUO-00000008VxT-1OTO
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 11:40:29 +0000
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ae0ccfd5ca5so14345166b.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 04:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750851626; x=1751456426; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Ta2U+QcnogTft9XpE1aWdMlfFtTXMxtf8HD/ZE2i+8=;
        b=jc0kmjXhm+QkXEIXjtlyIMbnsORIPhScNSWJ6Zbx0QI7mKDgnAq6tfQyMVEiE6Psmd
         am2U3kjrQ/GVg1ZVbrB0kxxpyFH27UoGmPywbnEFdIgNuY+GAR7VOihzyKeU0UQx72K1
         kSL90YQeDv4Q7CHeQSK1dYguJXmovehjeIcKt7ivW1uXAJYrhU1OgCUDg1k0mtqqU+Ag
         eNSTSvMHJRyEDKrw9LectPLpsAJsGSRKYoGwu8iT80CXi3N5foYvb3SWy/VZPqXtHvQJ
         fAovo5AwHKPa2/+nYz2QCYnuFcbY41XWoTJ/ESNd1XtURaxF4Vfma5YSAcDZpv+kcLk1
         i59w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750851626; x=1751456426;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Ta2U+QcnogTft9XpE1aWdMlfFtTXMxtf8HD/ZE2i+8=;
        b=vetTj9qKm3VXIr5Ejt9iLF5ENHV/+ubiT7CvcEN1UrF3NGg8OEWOoxe/ydUYSA+Vjk
         5V0E8eK/cXZMfkUMh9k7TV59ZDtIGAtF+EbYSc+ibr1flmm/eYTR9XQyrJajXVncNKrp
         e5jIkgaLH4nHHo1OtNN3XPllK1gNlnuLdA5fZMgM3hp8H8aeVEo/3GOMC8EdSorpuJB9
         G1eCXakWnK/ps/4TNc4HJaU9oIpe3D8+Nnx0hTM/2Is/tNzqXc7dcEEEYRYqZNGMrB5H
         buUhwx0VbJKUCMYiF8WBMHDOpDbsS0MCBC1P8RxVcO5bRo2Y5eUOBhe6YvBmf25yM9iZ
         yJrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWh2fwMV1fXdaH4L1FJLMzP56zRtYi1hrNL18ipxea2TqMayPWjXG4UlhUewAsSRuX1y1TVBviariI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuQQJWpOAZTWUhRKFZEeFJX0Iu+BbF+/8C1jWNWM9H7pSmK5PR
	/Ta88GLx/Otkj+vCCE8GDZkElh4ctGp68q/AvXMD8YrkRpM+ua7JCAs/l09BmQo6E00=
X-Gm-Gg: ASbGncuh9is+mhK3PZM2weZ4tJtYwe3mvMNA0jROXVlf2jW/fJsKa2dyQXs6A7Kq+73
	BYMyXpkwB15sFadEN7fG2f0d8P9a3RUORdvSSzjhdiQciE5HiKZhKFC7B8ifJaJ+iG2OEQipDaV
	NaeRZjx3t3N7d3yeEyDV99mn+jHMBzpyLvBk/8leeLiHoY9FrM043BDs5VwppiDR2PDEfosZrK0
	eS7M1hnoSR25vpZaj5XA0bidHZ47mXJTnLglJFHun6JV7MEyOUhBvpk6MCO1QHEtWQr+lBRv4tt
	5Yjyw76JwPqSYbMJLvYujvCLCgG9+iNdL1S04lQlVV7Czb584rVdE93YdG7ijL2vDP4Tsw==
X-Google-Smtp-Source: AGHT+IGymkDJa2PepqWKYweFBWWgXgdsKbBJ6SsAwFL8JIz/ma8KQ3iqRebiC+IPQmWTbUJCcGFyWA==
X-Received: by 2002:a17:907:9482:b0:ada:4b3c:ea81 with SMTP id a640c23a62f3a-ae0bef1b3f1mr265885666b.39.1750851625821;
        Wed, 25 Jun 2025 04:40:25 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b1b1ba3bsm235787566b.93.2025.06.25.04.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 04:40:25 -0700 (PDT)
Date: Wed, 25 Jun 2025 14:40:23 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for PMIV0104
Message-ID: <aFvgJ9euu1RwHXl+@linaro.org>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-4-19d85541eb4c@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-4-19d85541eb4c@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_044028_380035_488DDC67 
X-CRM114-Status: UNSURE (   8.59  )
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

On 25-06-25 11:14:59, Luca Weiss wrote:
> Add support for the eUSB2 repeater found on the PMIV0104. There is no
> default init table for this PMIC, just the board-specific tuning
> parameters are used on top of the default tuning values.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
