Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4364C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 22:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yHLTK4f0lPjrcbJ5iGs+sieVMrSDp768WCYXY4gJUw=; b=Rz08CIhxGCFqWB
	c8b/rNJ6v4r5Lw3+kOK5eFXreBkcjN9fmYD8TgjN+IvK3+uJuqnOwRb+zYWe9NsR+PCa5DQ4lG3bW
	odPDLvd6drvNkLOZw9PG78VmuOvnb3PoEYIcJwA8mQVmPHBo8jxE+UqWUOSZUIpVy3NQj185TuujC
	QFASQo9LIzKeigcGPl+XKLoUh+Mt+Px8PCEIOlvNqUqzecMabtL8ilN29VLsc8x+D5DVKYm8EkJsl
	cs52gY/Gfo3z0beV/QZWeBkGzmTmCfQDjkwanvG8p9h/egbC7/+sKllWUOj4IBl2D0w1FGrVfm03A
	BMEasDNpQI1F8+ya6ssg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf56Y-0000000Gntz-14Wa;
	Mon, 03 Feb 2025 22:39:46 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf56U-0000000GnsX-3Kfq
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 22:39:45 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-2b3680e548aso2298371fac.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 14:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738622381; x=1739227181; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7FuOTM/5uq/stUm6NdRcMUJvmEyi2R5GtNjpDeIV2Ho=;
        b=L1Umhm38vzpUe5RyPcfDXfBjbhZK/OqzJW2jiTSH4V3LJZbrxDtHSghXcwLcLcWjZe
         DiGY8FwlDUw6r9OK0mM9AnRW+QOhuj0rj0RYK12b+jCDqKBnP4AClRUokcclma9t/FmP
         WoPn8pfzmt+tZraz8kL2Xwe47e39xH2z+v0vYoBqVvrwGwYhYjGaJeBK1iCAcYdx7Lkc
         eQxdsjMTxOjzA4g5Qfpetq+tT9Vy0hhz6hXYNAzy0Huw0qsdWSrYNyesh/0vRin1zxke
         nwdjJv8//v2Ih/PgrNLUuSMSrv4t6ako0H/vewH1Yt2MVAt8pelXYKXcyDHMx8LF1iTz
         E2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738622381; x=1739227181;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7FuOTM/5uq/stUm6NdRcMUJvmEyi2R5GtNjpDeIV2Ho=;
        b=ujjOFt/OGrKzcRK+ldiJ0iK8qhvgqB31bfjQGc0JbCSAY7Dg7i4HU/CTpDzDAR2+G1
         K2aLX9bK6/ClP2JKH9LSI+KiV3a5Joy0guoRdVXi+vRCoVn73NKc6FQHDRNDqGV6JMEu
         y3+8W0BZYn2bURgVOdM1M+AFysQVcuI/U4mQa9RCG2gVyu4iSnk6zDMR8Oyf6m7FQOi5
         De8YS0cTRlyKVk+FqlhazIueb2yBsx+MiS6i76buewaZpc/SAfWjihTfnurB7zQ3Fxm+
         8xuecauoEOhEJtjIRk/z3JNc87wgRX2fjhS4HZr2XV9ectIME0e5sAuB673MhQkE7oDF
         5KVA==
X-Forwarded-Encrypted: i=1; AJvYcCVkVbRu7rP4JZFQi3mWkOSNQlwc+L6RYr77AKjkgHk58URzb2RStrkQqlxjRF/sO9p1rCP0cFQWvTg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQKbtA4jZcymK55i68+YtEfLY+ADewTrhPMbS68t6t222CReYR
	4b7elmTNynJPWQvAOMFB+HJI9i1IW12Enht21qWkk06yddBtB0eGUiWCRZUCaSQ=
X-Gm-Gg: ASbGncvSV6jSyyV9bai4MYj1GOB5JIGJN9EDe3+ad02/8HUe6PsqmQFRpw1ZmuN+Llr
	c0D8TKUeO3ipYsiqJCDjw+yV4M2uSYZtYEsvEZsQrtB7doMviu7nFec9HntLmvh59hUk0b8cTeu
	yjk+bknMcy2Hyx9ZY7OqzIVvarzMv0lqRKmB0SNt9pednfpPFSISZ51atmOqqUWqxH17/FVHmBQ
	xW8oguUjk3AqLi8hnIQgspk5aN4i2jmfKlbjtakwI0WkIy3YeUrCJX+Or7vpqqCHjOWcVjNVl09
	Jge4PVaOyaoEmYlFRND5k8meebklw7s3B45wWcbgMvamCo1vG9Dx
X-Google-Smtp-Source: AGHT+IGaQH53OWXI018UHR+o3pOTGmyURoCZWzCbG0RQLmUMPYxUrDO3psb2lp4Kuy+CvmoE1eZtzw==
X-Received: by 2002:a05:6870:1b14:b0:29d:efe8:5a49 with SMTP id 586e51a60fabf-2b3e7450705mr688192fac.3.1738622381243;
        Mon, 03 Feb 2025 14:39:41 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35619ec30sm3589105fac.14.2025.02.03.14.39.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 14:39:40 -0800 (PST)
Message-ID: <b1c35782-f717-4fe5-8a00-7f13b341b5dd@baylibre.com>
Date: Mon, 3 Feb 2025 16:39:38 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>,
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
 Takashi Iwai <tiwai@suse.com>
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
 <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com>
 <CAMRc=McEdcDs01BAKN5vg9POg_xxJBY1k8bfgiDN60C1-e_jow@mail.gmail.com>
 <072be5a9-e0fb-4073-85b3-4a8efcafae09@baylibre.com>
 <CAMRc=Meq_Gfhcjzx0vCL0JPzfnOcijFgB6AuqtsqgGn1eOTMVg@mail.gmail.com>
 <CAHp75Ve+iwrm8dx49+6C7xFJgTQrh3XumKVzKvnYY=00J-j43A@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CAHp75Ve+iwrm8dx49+6C7xFJgTQrh3XumKVzKvnYY=00J-j43A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_143943_086526_B27C1816 
X-CRM114-Status: GOOD (  14.40  )
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

T24gMi8xLzI1IDE6NDcgUE0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiBPbiBTYXQsIEZlYiAx
LCAyMDI1IGF0IDY6MjLigK9QTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPiB3
cm90ZToKPj4gT24gU2F0LCBGZWIgMSwgMjAyNSBhdCA1OjE34oCvUE0gRGF2aWQgTGVjaG5lciA8
ZGxlY2huZXJAYmF5bGlicmUuY29tPiB3cm90ZToKPj4+IE9uIDIvMS8yNSAxMDoxNCBBTSwgQmFy
dG9zeiBHb2xhc3pld3NraSB3cm90ZToKPj4+PiBPbiBTYXQsIEZlYiAxLCAyMDI1IGF0IDU6MDni
gK9QTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+Pj4+PiBP
biAyLzEvMjUgNDozNiBBTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiAKPiAuLi4KPiAK
Pj4+Pj4+IFRoaXMgbG9va3MgZ29vZCB0byBtZSBleGNlcHQgZm9yIG9uZSB0aGluZzogdGhlIGZ1
bmN0aW9uIHByZWZpeC4gSSB3b3VsZAo+Pj4+Pj4gcmVhbGx5IGFwcHJlY2lhdGUgaXQgaWYgd2Ug
Y291bGQgc3RheSB3aXRoaW4gdGhlIGV4aXN0aW5nIGdwaW9kXyBuYW1lc3BhY2UgYW5kCj4+Pj4+
PiBub3QgYWRkIGEgbmV3IG9uZSBpbiB0aGUgZm9ybSBvZiBncGlvZHNfLgo+Pj4+Pj4KPj4+Pj4+
IE1heWJlOiBncGlvZF9tdWx0aXBsZV9zZXRfIG9yIGdwaW9kX2NvbGxlY3RlZF9zZXQuLi4/Cj4+
Pj4+Cj4+Pj4+IEkgd2FzIHdhaXRpbmcgZm9yIHNvbWVvbmUgdG8gY29tcGxhaW4gYWJvdXQgdGhl
IG5hbWluZy4gOy0pCj4+Pj4+Cj4+Pj4+IEkgd2FzIGdvaW5nIGZvciBhcyBzaG9ydCBhcyBwb3Nz
aWJsZSwgYnV0IE9LLCB0aGUgbW9zdCBvYnZpb3VzIHByZWZpeCB0byBtZQo+Pj4+PiB3b3VsZCBi
ZSBgZ3Bpb19kZXNjc18uLi5gICh0byBtYXRjaCB0aGUgZmlyc3QgcGFyYW1ldGVyKS4gQW55IG9i
amVjdGlvbnMgdG8KPj4+Pj4gdGhhdD8KPj4+Pgo+Pj4+IFllcywgb2JqZWN0aW9uISBBcyBmYXIg
YXMgYW55IGV4cG9ydGVkIGludGVyZmFjZXMgZ286IGluIG15IGJvb2sKPj4+PiAiZ3Bpb18iIGlz
IHRoZSBwcmVmaXggZm9yIGxlZ2FjeSBzeW1ib2xzIHdlIHdhbnQgdG8gZ28gYXdheSBhbmQKPj4+
PiAiZ3Bpb2RfIiBpcyB0aGUgcHJlZml4IGZvciBjdXJyZW50LCBkZXNjcmlwdG9yLWJhc2VkIEFQ
SS4gQW55dGhpbmcKPj4+PiBlbHNlIGlzIGEgbm8tZ28uIEkgcHJlZmVyIGEgbG9uZ2VyIG5hbWUg
dGhhdCBzdGFydHMgd2l0aCBncGlvZF8gb3Zlcgo+Pj4+IGFueXRoaW5nIHRoYXQncyBzaG9ydGVy
IGJ1dCBkb2Vzbid0Lgo+Pj4KPj4+IE9vcHMsIHRoYXQgd2FzIGEgdHlwby4gSSBtZWFudCB0byB3
cml0ZSBncGlvZF9kZXNjc18uCj4+Cj4+IEVoLi4uIHRoZSBEIGluIGdwaW9EIGFscmVhZHkgc3Rh
bmRzIGZvciAiR1BJTyBEZXNjcmlwdG9yIiBidXQgaWYKPj4gdGhlcmUncyBubyBiZXR0ZXIgb3B0
aW9uIGluIHlvdXIgb3BpbmlvbiB0aGFuIEkgZ3Vlc3MgSSBjYW4gbGl2ZSB3aXRoCj4+IHRoYXQu
Cj4gCj4gZ3Bpb2Rfc2V0X21hbnlfdmFsdWVfY2Fuc2xlZXAoKSA/Cj4gCgpPSywgdGFraW5nIGFs
bCB0aGVzZSBzdWdnZXN0aW9ucyBpbnRvIGNvbnNpZGVyYXRpb24gYWxvbmcgd2l0aCBoYXZpbmcg
cmVjZW50bHkKY29tZSBhY3Jvc3MgcmVnbWFwX211bHRpX3JlZ193cml0ZSgpLCBJIHRoaW5rIEkn
bGwgZ28gd2l0aDoKCmdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcCgpCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
