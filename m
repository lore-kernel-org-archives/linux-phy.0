Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ECC3C021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 17:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1PCusRkgwcITIncK59wm9D9KGY+xD9FNfYhqc4UmUw=; b=xMul2pLz0WJTni
	9gR78eXEk1nwVvrhH1KJt/G8xWrMtXdBqmJf70tsXI3thqWgBkNj5ATbXcS8lUEwBcG+rVOFKZysI
	CckVnE3p860/1r5cvi/RPOjJcFJNYRws/SMqKsDfawHxJGCpAdDW6eJFzQXbYqMktTWnl74WC/SP1
	kWRNdF8ePa8sbDYZ2MogT5KzE70QaIYvMZfql4nh+uCmxQfHTx2xHZmSz8+A8y526dSXe3C2ayDMC
	kRmhcm6siqfWvW0+KSXaZMX2uFWiz63RF4YtTKp7RepQuYHVZx5CNk6nbE74+S0OwDb2BLvfdPs2N
	9bw9MowU9WshZpXWK8tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlAAP-000000025Ep-2o1F;
	Thu, 20 Feb 2025 17:16:53 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlAAL-000000025DG-3SzW
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 17:16:51 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3f419eea844so686762b6e.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Feb 2025 09:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740071808; x=1740676608; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QcApaWVKSxQSIvLEEHhnSoFMNHumzt0nl4dOj28dnl0=;
        b=KOhuixC8CZjLro7zKwUIzRBerbXUzsDzqq8nqoCkKaJIm/1YmeS13pQMPDTflRe8/n
         DOWYnaD+WKrmnTYbDNLEUPDZ1z3ID6GSueBKlKj/CiwRbeeXu3izPWrF4PRbwhwRjUup
         e7vazhleRT+8XghKbFVsuNhup2p+UuXFThpDe2Y1qrPcV8qmcxN3iiWaIAM0bkj80RsV
         XkhR8VF/y4FYzQX7q9UuRnOdLu45NLASVbiRhiJVdDKH2JCbu9gj8Zhm6phCQDQ1GpcO
         rd+bfeETyLABHYPE4Ozpwa8h7jBpgWgVZBPOjFpoRQurv2Cq7wPaVfqYfSt/NU2Idn2j
         fXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740071808; x=1740676608;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QcApaWVKSxQSIvLEEHhnSoFMNHumzt0nl4dOj28dnl0=;
        b=DCcpH/jC77EUmutv46Q5YKQdR+iFlpWRtPRFajR95q5DigevqYWpwp0VbO0O0fEKS1
         vKJp73jZwpTm3dwkysI+0SkrAcCb1eUuhcfc3cswZOEoHvG7EbjfhEeSjMx77VZKmSU1
         XUKQdq1/z1QYoBKiN5WDVxtctzMp6oP5H2IGOcVEVbJ1DvVolgPHV/N7tao5bga0gtyD
         bZ34H5gfwj/6clYQHDGZwkq2+Qv8swUmIS25qKb4JVMO1Cp1E6NSEWZfEdSF6R8EgZA6
         BDNzuF+ERGr8L3AFjICD6p+LqFZmyg5RCAt+fVftiktBHu99+rWBpOdJeis1NGO1X5Rq
         /zqA==
X-Forwarded-Encrypted: i=1; AJvYcCWx0eODcUnwHjiN8lSNAx8/akax5fqeRXE8mMLK3BCbO50O5lFAFTgz+668Ab50wJdgM3TAqvJGWA0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBnpK0q1C/Puv8yNyfflVVJg4htiQvTCv3fgkuKBJM6Jn5LI7F
	JMo0YAmJumRbdvU464j6f13iGd5wJstFHcM8zBo8H7B46GLwjELzbkD+jl551Zo=
X-Gm-Gg: ASbGncuPrIKkeTixjiS/zSHLLd/SE2cOSvnXvlW6s9P9ijXr6DTyAIePwC/UDMtrTbc
	bCpJEq4F8EJroQU/YkoXNnzxVZAUZBVLtgku44lZ4zFm/d+OsnqEDfh4AEpecazfEOB6X1ls71Z
	LjGDrylRP3iSlrs1NB7zwUSNRfQhRlANTFgv7FEzHJydFktsANt+YuU2o8PviXdYQqgPRfi2nUO
	TyAQbUBpdoHbCuF6K+HWoxst1ofUHoG+T8nV4bW/2Bll/gezSeXBR/R+WMSmzg40bNyECFZZxlX
	Sy5mgfQQLFr/ZOEGVZXMjzAGWsnXAm0eBRP30Tpd0Z22F5bumR/k
X-Google-Smtp-Source: AGHT+IFQ4fpht1GK2L64Lff/K3FzPWt1QsXeXeofzfatOKhBNQXj463x1jUtS3u3WnZ5Fb1+N2LaOQ==
X-Received: by 2002:a05:6808:3996:b0:3f4:205c:d9aa with SMTP id 5614622812f47-3f424701c1dmr163494b6e.21.1740071808115;
        Thu, 20 Feb 2025 09:16:48 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f3da962049sm5144033b6e.21.2025.02.20.09.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 09:16:46 -0800 (PST)
Message-ID: <37dc5907-b04f-4879-8271-68e36a6a2924@baylibre.com>
Date: Thu, 20 Feb 2025 11:16:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/15] bus: ts-nbus: use bitmap_get_value8()
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Simon Horman <horms@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-5-d6a673674da8@baylibre.com>
 <20250220101742.GR1615191@kernel.org>
 <CAHp75Vch7QKyT8Fbya3u=YrPR8z-2-mbWXjHyOwZ-fqcBjjm0A@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CAHp75Vch7QKyT8Fbya3u=YrPR8z-2-mbWXjHyOwZ-fqcBjjm0A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_091649_861243_9CBA5229 
X-CRM114-Status: GOOD (  14.13  )
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

T24gMi8yMC8yNSA2OjA2IEFNLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gT24gVGh1LCBGZWIg
MjAsIDIwMjUgYXQgMTI6MTfigK9QTSBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+IHdy
b3RlOgo+PiBPbiBNb24sIEZlYiAxMCwgMjAyNSBhdCAwNDozMzozMVBNIC0wNjAwLCBEYXZpZCBM
ZWNobmVyIHdyb3RlOgo+IAo+IC4uLgo+IAo+PiBCdXQgd2hlbiBjb21waWxpbmcgd2l0aCBHQ0Mg
MTQuMi4wIEkgc2VlIHdhcm5pbmdzIHRoYXQgdmFsdWVzCj4+IGlzIHVzZWQgdW5pbml0aWFsaXNl
ZCAtIGJpdG1hcF9zZXRfdmFsdWU4KCkgYXBwZWFycyB0byByZWx5IG9uCj4+IGl0IGJlaW5nIHNv
Lgo+IAo+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9idXMvdHMtbmJ1cy5jOjEzOgo+
PiBJbiBmdW5jdGlvbiDigJhiaXRtYXBfd3JpdGXigJksCj4+ICAgICBpbmxpbmVkIGZyb20g4oCY
dHNfbmJ1c19yZXNldF9idXPigJkgYXQgZHJpdmVycy9idXMvdHMtbmJ1cy5jOjExMToyOgo+PiAu
L2luY2x1ZGUvbGludXgvYml0bWFwLmg6ODE4OjEyOiBlcnJvcjog4oCYdmFsdWVz4oCZIGlzIHVz
ZWQgdW5pbml0aWFsaXplZCBbLVdlcnJvcj11bmluaXRpYWxpemVkXQo+PiAgIDgxOCB8ICAgICAg
ICAgbWFwW2luZGV4XSAmPSAoZml0ID8gKH4obWFzayA8PCBvZmZzZXQpKSA6IH5CSVRNQVBfRklS
U1RfV09SRF9NQVNLKHN0YXJ0KSk7Cj4+ICAgICAgIHwgICAgICAgICB+fn5efn5+fn5+Cj4gCj4g
SGVoLCB0aGUgY29tcGlsZXIgaXMgZHVtYi4gRXZlbiBpZiBpdCdzIG5vdCBpbml0aWFsaXNlZCB3
ZSBkbyBub3QgY2FyZS4KPiAKPiAuLi4KPiAKPiBXb25kZXJpbmcgaWYgdGhlIGJpdG1hcF93cml0
ZSgpIHdpbGwgd29yayBiZXR0ZXIuLi4KPiAKCkl0IGlzIGFscmVhZHkgdXNpbmcgdGhhdDoKCiNk
ZWZpbmUgYml0bWFwX3NldF92YWx1ZTgobWFwLCB2YWx1ZSwgc3RhcnQpCQlcCgliaXRtYXBfd3Jp
dGUobWFwLCB2YWx1ZSwgc3RhcnQsIEJJVFNfUEVSX0JZVEUpCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
