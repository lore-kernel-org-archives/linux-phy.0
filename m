Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10448D690F9
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 10:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTo/DS3pHgNfuoBk25LDP5tOe0wOsTbIMHzkSsdN0i0=; b=KPYBoz+27/jOms
	ByAkQ0cY/jBHLyUXS/YgsPgc45UwHJTL+SkftJcWvqR0b1UYbu1M4tyW336pGC0iQrbdmCRXYfmP6
	14hkUdRREeYYb4qtUmGNyUhd5JLKqCJA1Kf1CFST+vjSiKSQyS0mXZu6L66IJwp+BQ8HpPKMbr0hh
	SoZ5EBYYkzkcjDMdZejpGe+/FF4hbwDWyuZzhwEp+ESV/8AcQldzw7nCIZHAgZE+yAYlsUv+sQwsa
	PGzT+FjRQa91Abxcjc+npdanC4e0hwQOUYLtvrru6jZZ80b48V/ByDmfIt0XmLFr/zim4jCgjGwDa
	LwXtesWJCKoTx+/bc0sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGcDj-0000000FJLL-3RGA;
	Thu, 28 Nov 2024 10:58:03 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGcC3-0000000FJ51-1vj3
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 10:56:20 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5f1e7639391so283333eaf.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 02:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732791378; x=1733396178; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHpZFedHEBtUcb+szMjru33LYi0CiBGsIbwkSU8NyIs=;
        b=gJwUcxrlh/cBO4qa9PCZiDU1N1Vo1FNNUP9JIGOotFvjKSj99DzqwKJAFnIjQ8ibGe
         dugDXStcV9qVI1Hd0icuShJIB3DviiPf/rd8DNGC7wIpIljgfKgZ+PmmlUWgfvrP7gdf
         wssGTam+ZzxvPv0x90lv+8RoLY0ek+YK9GYgeFcr9IpbcYR5Uw7yn01kEfqgqCbYpX08
         nWBoaD7RZ2uxkQt1ZaM9mn7j6fW8XYrdzZmm/FMYC4+uok58HIkYYrGX8X8Eurd77vxk
         f3CA9efgwFLJnBkWzevqW3AgsXkh1Th/PrVS1BgJnIdcKNbKJ5R2HV7G0fYm3TXPGU31
         koYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732791378; x=1733396178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UHpZFedHEBtUcb+szMjru33LYi0CiBGsIbwkSU8NyIs=;
        b=hQN9IyzrPpdKLQrqgEAkTnP53YOTS4pb24/vqTvW9gWfXBLqEJWr3PpKHKFwsP+GJK
         EIHUsCD2o/GpeAu7qloss//LkD7POfPJqr44ng+UuP64JNlkHBzmGdOZNHxhLQnKxv4w
         pMPpGzqFGJ/VkYWLfNQ7gzf8yLaERL6j24hkUD7edvcaTtC5O6EVAiwqG/kyYPQjO+rX
         gyy7rnHRCIH0wNiihipunO2p1eVbehfXAkxuGsAxwL/lbM0Ds6jfLVfFsUPloYVR9Id+
         tt5Tw6rWX/4gBIjGpRiKuzXYP6/2eymnO+R6f4ijXrb7HM8/Ur/fDHGtDXFjVFD2R6f5
         QK3g==
X-Forwarded-Encrypted: i=1; AJvYcCUcGkOvn8fXjsm/wCZZlwSPPB3dUKyZ5xn57IKweekmKGKXXBWDN5vEAzVkG0+QisRm3UPfWQfAAao=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxk3nyXIAJzQT9lfC/+dGn0qCvRUTaXfVD7bdlpNxud/FpwyTO6
	JKASBhzOVFhaahKIXMfk5iVurqSvbyqtD9nEdK+S8fjqW7+s6muK1ArLQ3JAT8msjEjoh/O92eJ
	bkmC1hvB+YFzeL1DKUeikRgHC0IrON8476oHS8Q==
X-Gm-Gg: ASbGncuxIIOdRI2cqy+/lfHQt3CWAXC2brQc4aWqhabQ+gK0LM7ME7Zfm1gAl5n9Uso
	7cdZebGb61+5aDoRNogA2fGJOiDo/nj6n
X-Google-Smtp-Source: AGHT+IExQGgfObepg/1Hx1vn3/3ajGhOjBe+ADkPuF/jgeiOTQLuy+sihE6vDknoDDEFX2CMag6bWzzgs3MwxWCbYFk=
X-Received: by 2002:a05:6820:2704:b0:5f1:fd30:f45b with SMTP id
 006d021491bc7-5f20a275359mr5606418eaf.8.1732791378483; Thu, 28 Nov 2024
 02:56:18 -0800 (PST)
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-4-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-4-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 28 Nov 2024 10:56:07 +0000
Message-ID: <CADrjBPrVgnS3NFVvouRYQ32xBfyYBHKAgFyhEerMzenarE3G7A@mail.gmail.com>
Subject: Re: [PATCH 4/9] phy: exynos5-usbdrd: convert to dev_err_probe
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_025619_494947_47A60B4F 
X-CRM114-Status: UNSURE (   5.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgQW5kcsOpLAoKT24gV2VkLCAyNyBOb3YgMjAyNCBhdCAxMDo1OCwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBkZXZfZXJyX3Byb2JlKCkgZXhp
c3RzIHRvIHNpbXBsaWZ5IGNvZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IFBldGVyIEdyaWZm
aW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KCnJlZ2FyZHMuLAoKUGV0ZXIKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
