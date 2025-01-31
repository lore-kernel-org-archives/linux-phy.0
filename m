Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A421BC0218F
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uacLe8W+Jz30C+ZYNR8CdavPbTtJu/XCqZ4fWlLrkks=; b=xyHUcTwX3K1l1u
	P88S8Q1oZZiXul15/cvNaZJUe7i3BR062mN/KEtdD5VPhAGNftQ4PrbRR5tKknprCD5JLMowho2vB
	AKV5j69LTPI3D4SbHAImRiHeSQWaMvxmHF0S23PIDrTU7I4MMXL6ogMQztafgSS8dJNlxu9Zdotpm
	T3lmE9LphzIaDOm5/ge4VPGSZzAfuQqnnaqnflYK1R6aVfTkJwhhceXXk5+/KxgpChuBXw2H6Ggfj
	YQcfpejtP363PBylU+Jg3kS4qm8UpwWfBSgi4dFzeYMVJhcWcCVGZXmo3Q0e5tH7A1qugMPTxR2M6
	qdYUqBFsyeTGirZjBqNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxza-0000000BPCk-480s;
	Fri, 31 Jan 2025 20:51:58 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxzX-0000000BPCP-3SLp
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:51:57 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5f4cc48ab37so685510eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738356715; x=1738961515; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YSDpmKyHnv3yIYrHLwgKwckV132tbtKpwM8F+9YvHNM=;
        b=RAitPErmgVaQ5PTtCWVEw2M2pvAixZJfcTBq0Gcst/MSdoNEewtZPRAI9m75IZ9FIc
         1FIAYkCbef3VPffBjzNmdtqDUDK7wh9CQKjNr/Lw3zm3R9GAunbB5WJDWd9YEmQDyRuR
         KiinSPeISDfQtO3s83uGgpZXKBVa9cqY5RAE3r0iAelSlCV4AlFeopLUmA0sPheaLlUq
         /3/49WjPC9bBAlONc6Vx2twbdzXgbYHUxmCZL+AKgsDZwY/BCkzNDMYjO+1WPmj4/i0+
         QzOBM4R8ZxOclsBH/TMG0kv0gBKyOZBwdAEQxQkM+ugDFB/AQKb0Fgblz9dLT2WEy+KM
         /Miw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738356715; x=1738961515;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YSDpmKyHnv3yIYrHLwgKwckV132tbtKpwM8F+9YvHNM=;
        b=CCee0aiPxsA7NrIQu963XuytsuOoPP79fUvMIhYXP9J62l7O57XkV8MAMVijKKWucn
         2hbGbIBd7vc/Yn7JPTp0mGOhwYUi7tzdTBZsmoaUqq/5fcAJmC/1ZcN9Z/mHRYn0yCH2
         5lBwuZLLQUO8hxFLys+j1fc05JIOnVF88eZyATvi0sudII/AtJAMCPXDm4AC4ACJRlUu
         dDXwH4dVBsjCMyI+c7TBcSQ3mlXQbesIewgRevdNk6pBZq0KQwWdGmPZaXb8FUCnd+XR
         /f3UbwXWm07fsKEJgOvW8UVE69ISx2k+zQEzBfxQcxpB/BGAN+VuT5/A82/A1nvkxwW+
         UAfw==
X-Forwarded-Encrypted: i=1; AJvYcCXuPvAJualMQIEmjZ2P7aZGzp1tWi6S5LRRS38cuFhv2QUM5zZosQ3DK8Mqao3b+MUqEatVJ9K6Y4k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJmBwdwjo9bboxVX+ughOfdH11MmBUZlf/BnjR0xY4wK7gBpra
	+58L71rtDdD7g3zR7rBOwU+7mZDlpTVivTwdTSScSr78u5jJvQE28f5/tyeswYw=
X-Gm-Gg: ASbGnctVrYMry5Hh6MRIKhsfC7jyTQChddkMAsWeq6CCjRvBlEvkyR6/gD26CwSnZaK
	73/5VOuAivLVz+qV8XzxJwakqAjt+5oh/oNe1BgoRPpwCuSOFycQ/9qNcMFl6d9whsdR2fpSZLo
	f0t6CKbjPcLWNEiffKwIZIhqAnMFA/DXCYMlA8G/5ZKgU5lomIF0mVtQqV1p9bIBuTH3EZ7e8sx
	j9zfV6CGL1y3T0PevUqytXKVz4TzGrj9ge2ZXZb3mCHhMF/QrvBdgDM4fMpTyURn+3ryEWMBZXI
	GJ6jdEIflXDR66vUZwS/sjue0LdSQi8Yw7uN98BYl+M3IgtxpA86
X-Google-Smtp-Source: AGHT+IHPMh8KitUWz2IouQzz/azYXMRtpN/Za+AnvsTlT7ulHOR4Zb5ZOPuM1rHtwe4+cYrz1u66kg==
X-Received: by 2002:a05:6871:4915:b0:29e:684d:2739 with SMTP id 586e51a60fabf-2b32f2e092cmr7943100fac.32.1738356714641;
        Fri, 31 Jan 2025 12:51:54 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b356111477sm1426322fac.9.2025.01.31.12.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2025 12:51:53 -0800 (PST)
Message-ID: <2715ead8-cf6d-4b44-b6e3-343cb6489eca@baylibre.com>
Date: Fri, 31 Jan 2025 14:51:52 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: Andrew Lunn <andrew@lunn.ch>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Peter Rosin <peda@axentia.se>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <4ad45123-134a-4544-ad0a-24371105d96f@lunn.ch>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <4ad45123-134a-4544-ad0a-24371105d96f@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_125155_871032_AEB3D8A7 
X-CRM114-Status: GOOD (  12.65  )
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

On 1/31/25 2:38 PM, Andrew Lunn wrote:
>> So I'm proposing that we add a gpiods_set_array_value_cansleep()
>> function that is a wrapper around gpiod_set_array_value_cansleep()
>> that has struct gpio_descs as the first parameter to make it a bit
>> easier to read the code and avoid the hard-coding temptation.
>  
> This looks reasonable.
> 
> How do you plan to get it merged, since you cross a lot of subsystems
> here.
> 
> 	Andrew

Since these are mostly small changes and most of the touched drivers aren't
seeing much action, I think it would be OK for as much as possible to go through
the GPIO tree.

We might need an immutable branch from that though since I know that iio: adc:
ad7606 is currently being actively worked on.

If there are any patches leftover that don't get acked to go through the GPIO
tree, I can resubmit them after the next kernel release cycle since none of
this is urgent anyway.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
