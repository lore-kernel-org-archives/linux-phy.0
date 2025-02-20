Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DACFC021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 17:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8QTQGe+WV/ypRdKMJ5oK7WIW/TU4PK5tlmn9Y56BkY=; b=tep7aRJqc82Rew
	pFW4EbVioRmvi2o4bFp9QGQJFs/j3SVlK9BFoED23z7b+q2xLyW92IW/FNgb0N1gZL2hNTNohjghU
	STrXC8C6JgW8+mluwgYsm2qEZSJZgKFXCNB2T6Xl2hARgzfcbLFtnhthB8uRLOVORZPwdH1IEtuxF
	/tWHfSvKGB1xHjWU1o5TaTCmZDPMfirhHUhT+Etw0sr16TbMgOOJM1cdqgQo7EkZRndROX7zODulJ
	DNE0Q4ME5Y2urEkXcU3MNOgmHN7WS2fde9qSop8uAGqfS5arf1tNlVda1OeG28k0jRhIE+5N5yvdz
	wULTj8EtflBmVYiU76eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlAU9-00000002App-2AFE;
	Thu, 20 Feb 2025 17:37:17 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlAPG-000000029h2-1SQ1
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 17:32:16 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5fcd686fe0fso734169eaf.3
        for <linux-phy@lists.infradead.org>; Thu, 20 Feb 2025 09:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740072733; x=1740677533; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AIc+j8TxBrdPej0mz926UOoeIMB5TisIsEjQp/BF3M8=;
        b=xK+q5w3vMyRRjcAJXy+4LkC3zxzPV2KetXr1WTjqE/wuPPO1qEZAloDaP4Vh9lg+Xq
         /JVFPlrH9eV7BFEB1Q77xAXHQfEJR3Aiqgn3k3YjGAmsgtLgFg8viUDKfkHh9xeoVnDb
         8r8n4R4oH3Z01YPh/31smPkxLCNIPil7CWL1O0FSFDGSUznp6IvaEDCd7W6uvReynnfa
         ZEQX3smWfaTA4DHiYlPtclATk65Ia2b9yH8ccqJ6YqxdrqvEF0Od6bWAt9IbGR0uS/87
         qeTpAxikq6NL19rYkFQ1GERtrM0CcdDA8DB3aX7QraGzQNTKhVCpAKzUGNBj4/4IxTL1
         3JPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740072733; x=1740677533;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AIc+j8TxBrdPej0mz926UOoeIMB5TisIsEjQp/BF3M8=;
        b=nOFATgrfxG/qKESKTKDfMWv+0xrZv1NMiiyxuJYHk4qPxl+KLl5NaRs/S6+Kz8ME4I
         otvaa66NMI8+Cokh5UxxtZF1rxUJtBgY5aSGyehfM2qTgc5Vjpg9P1/YGREJGx2jYSk1
         RbFa2pSx+yvizBTpQ5JzuxXIDylKjil8OQuoqyXtoLjvblJH9Dcd7o7+N/4TbfaeCLIt
         oPvrbo4CocdYOLKHATU9bPqtYri83Ce6/DydQEDnyJ/qz71WKovp4rsHXMsEw81zBStJ
         4pqU8JfEexNrMfbNC2ecdyK5n/SHyQEke3Q++xxMSPz/+stbTEfDEuG7u7M1x8apNiSv
         X3PQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJIcXbPU9u6fIB1fpsmNqRJQue+1LYG/W1sB73fCFyRaEfkVlMK37lSpFYHNgIZFShasqRNGVpvV0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxW1+iK0BW86KaTAY3sfAkx4F2MeQxcFZMEIGanJHq3J4L369Vk
	rbgKm2AkTUud842o/OFxUYd/SIeZ92uSm3lKHK0rgR9BSf5AuFyfE0rgUItDGLw=
X-Gm-Gg: ASbGnctAH0kR+TqNbtnWFmp2A/9XwGOX3TxBFu9zhWYlnCKyg5HzoJdVVe5dYfvZbVl
	1tVLovxIQdIWHrvm+s1sb8NYE7gl8JCpG83jaOvD1MYKu+JESIbNRQZPXvmH80Y9qtErimKzOZR
	NGh2MWGIea4Ah6p5vXH7J9H7KiiWbeMv9QT4ZwyPn/vhhHgj2QuwkE69r5dBEfUx1EFDSKFi5WK
	UXRepv2dGywPaNrA7SZtmiCHFkReeO1UJcoxIhXWZwf5Y/Wxk1ASeDOKcdZGeFx/ATddGdF/hES
	tQxSHzSBdPzGcXIBF0SU0AfUn2wk+VlcluOPn6Wty8s9Ke5gS+Y7
X-Google-Smtp-Source: AGHT+IHr8T5reKexqMOxlmPqVf7GUavXfHMshpa/XldJ83QUP4dtM6xNCp5f26J8xaA/wL6S5nPJuQ==
X-Received: by 2002:a05:6820:260d:b0:5fc:92b3:2b03 with SMTP id 006d021491bc7-5fd1949807fmr168082eaf.1.1740072733243;
        Thu, 20 Feb 2025 09:32:13 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7271f7c5ba8sm2752929a34.32.2025.02.20.09.32.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 09:32:12 -0800 (PST)
Message-ID: <0084eef7-3831-4e62-acf1-6c2dc0e15dd1@baylibre.com>
Date: Thu, 20 Feb 2025 11:32:10 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/15] bus: ts-nbus: use bitmap_get_value8()
To: Simon Horman <horms@kernel.org>
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
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-5-d6a673674da8@baylibre.com>
 <20250220101742.GR1615191@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250220101742.GR1615191@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_093214_386043_8ABCD739 
X-CRM114-Status: GOOD (  24.85  )
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

T24gMi8yMC8yNSA0OjE3IEFNLCBTaW1vbiBIb3JtYW4gd3JvdGU6Cj4gT24gTW9uLCBGZWIgMTAs
IDIwMjUgYXQgMDQ6MzM6MzFQTSAtMDYwMCwgRGF2aWQgTGVjaG5lciB3cm90ZToKPj4gVXNlIGJp
dG1hcF9nZXRfdmFsdWU4KCkgaW5zdGVhZCBvZiBhY2Nlc3NpbmcgdGhlIGJpdG1hcCBkaXJlY3Rs
eS4KPj4KPj4gQWNjZXNzaW5nIHRoZSBiaXRtYXAgZGlyZWN0bHkgaXMgbm90IGNvbnNpZGVyZWQg
Z29vZCBwcmFjdGljZS4gV2Ugbm93Cj4+IGhhdmUgYSBoZWxwZXIgZnVuY3Rpb24gdGhhdCBjYW4g
YmUgdXNlZCBpbnN0ZWFkLCBzbyBsZXQncyB1c2UgaXQuCj4+Cj4+IFN1Z2dlc3RlZC1ieTogQW5k
eSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPgo+IHU+IFNpZ25lZC1vZmYt
Ynk6IERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4KPj4gLS0tCj4+ICBkcml2
ZXJzL2J1cy90cy1uYnVzLmMgfCA1ICsrKy0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9idXMvdHMt
bmJ1cy5jIGIvZHJpdmVycy9idXMvdHMtbmJ1cy5jCj4+IGluZGV4IGI0YzkzMDhjYWYwNjQ3YTMy
NjEwNzFkOTUyN2ZmZmNlNzc3ODRhZjIuLmJlYWM2N2YzYjgyMDM3N2Y4YmIxZmM0ZjRlZTc3ZTE1
ZWUyNDA4MzQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvYnVzL3RzLW5idXMuYwo+PiArKysgYi9k
cml2ZXJzL2J1cy90cy1uYnVzLmMKPj4gQEAgLTEwLDYgKzEwLDcgQEAKPj4gICAqIFRTLTQ2MDAg
U29NLgo+PiAgICovCj4+ICAKPj4gKyNpbmNsdWRlIDxsaW51eC9iaXRtYXAuaD4KPj4gICNpbmNs
dWRlIDxsaW51eC9iaXRvcHMuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+
Cj4+ICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4+IEBAIC0xMDcsNyArMTA4LDcgQEAgc3Rh
dGljIHZvaWQgdHNfbmJ1c19yZXNldF9idXMoc3RydWN0IHRzX25idXMgKnRzX25idXMpCj4+ICB7
Cj4+ICAJREVDTEFSRV9CSVRNQVAodmFsdWVzLCA4KTsKPj4gIAo+PiAtCXZhbHVlc1swXSA9IDA7
Cj4+ICsJYml0bWFwX3NldF92YWx1ZTgodmFsdWVzLCBieXRlLCAwKTsKPiAKPiBIaSBEYXZpZCwK
PiAKPiBieXRlIGRvZXNuJ3QgYXBwZWFyIHRvIGV4aXN0IGluIHRoZSBzY29wZSBvZiB0aGlzIGZ1
bmN0aW9uLgo+IAo+IEkgdHJpZWQgdGhpczoKPiAKPiAJYml0bWFwX3NldF92YWx1ZTgodmFsdWVz
LCAwLCA4KTsKPiAKPiBCdXQgd2hlbiBjb21waWxpbmcgd2l0aCBHQ0MgMTQuMi4wIEkgc2VlIHdh
cm5pbmdzIHRoYXQgdmFsdWVzCj4gaXMgdXNlZCB1bmluaXRpYWxpc2VkIC0gYml0bWFwX3NldF92
YWx1ZTgoKSBhcHBlYXJzIHRvIHJlbHkgb24KPiBpdCBiZWluZyBzby4KCkFoIHllcywgSSBzZWUg
dGhlIHByb2JsZW0gKEkgZG9uJ3QgdGhpbmsgdGhpcyBkcml2ZXIgY29tcGlsZXMgd2l0aAphbGxt
b2Rjb25maWcgc28gdGhlIGNvbXBpbGVyIGRpZG4ndCBjYXRjaCBpdCBmb3IgbWUpLgoKPiAKPiAg
IENDICAgICAgZHJpdmVycy9idXMvdHMtbmJ1cy5vCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRy
aXZlcnMvYnVzL3RzLW5idXMuYzoxMzoKPiBJbiBmdW5jdGlvbiDigJhiaXRtYXBfd3JpdGXigJks
Cj4gICAgIGlubGluZWQgZnJvbSDigJh0c19uYnVzX3Jlc2V0X2J1c+KAmSBhdCBkcml2ZXJzL2J1
cy90cy1uYnVzLmM6MTExOjI6Cj4gLi9pbmNsdWRlL2xpbnV4L2JpdG1hcC5oOjgxODoxMjogZXJy
b3I6IOKAmHZhbHVlc+KAmSBpcyB1c2VkIHVuaW5pdGlhbGl6ZWQgWy1XZXJyb3I9dW5pbml0aWFs
aXplZF0KPiAgIDgxOCB8ICAgICAgICAgbWFwW2luZGV4XSAmPSAoZml0ID8gKH4obWFzayA8PCBv
ZmZzZXQpKSA6IH5CSVRNQVBfRklSU1RfV09SRF9NQVNLKHN0YXJ0KSk7Cj4gICAgICAgfCAgICAg
ICAgIH5+fl5+fn5+fn4KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2th
c2FuLWNoZWNrcy5oOjUsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9hc20tZ2Vu
ZXJpYy9yd29uY2UuaDoyNiwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL3g4Ni9pbmNs
dWRlL2dlbmVyYXRlZC9hc20vcndvbmNlLmg6MSwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9p
bmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzQ0LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2lu
Y2x1ZGUvbGludXgvYnVpbGRfYnVnLmg6NSwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNs
dWRlL2xpbnV4L2JpdHMuaDoyMiwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xp
bnV4L2JpdG9wcy5oOjYsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9i
aXRtYXAuaDo4Ogo+IGRyaXZlcnMvYnVzL3RzLW5idXMuYzogSW4gZnVuY3Rpb24g4oCYdHNfbmJ1
c19yZXNldF9idXPigJk6Cj4gZHJpdmVycy9idXMvdHMtbmJ1cy5jOjEwOToyNDogbm90ZTog4oCY
dmFsdWVz4oCZIGRlY2xhcmVkIGhlcmUKPiAgIDEwOSB8ICAgICAgICAgREVDTEFSRV9CSVRNQVAo
dmFsdWVzLCA4KTsKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4gLi9p
bmNsdWRlL2xpbnV4L3R5cGVzLmg6MTE6MjM6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g
4oCYREVDTEFSRV9CSVRNQVDigJkKPiAgICAxMSB8ICAgICAgICAgdW5zaWduZWQgbG9uZyBuYW1l
W0JJVFNfVE9fTE9OR1MoYml0cyldCj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgXn5+
fgo+IAo+IAo+PiAgCj4+ICAJZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKHRzX25idXMt
PmRhdGEsIHZhbHVlcyk7Cj4+ICAJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHRzX25idXMtPmNz
biwgMCk7Cj4+IEBAIC0xNTEsNyArMTUyLDcgQEAgc3RhdGljIHZvaWQgdHNfbmJ1c193cml0ZV9i
eXRlKHN0cnVjdCB0c19uYnVzICp0c19uYnVzLCB1OCBieXRlKQo+PiAgewo+PiAgCURFQ0xBUkVf
QklUTUFQKHZhbHVlcywgOCk7CgpXZSBjYW4gZml4IGJ5IHplcm8taW5pdGlhbGluZyB0aGUgYml0
bWFwLgoKCURFQ0xBUkVfQklUTUFQKHZhbHVlcywgOCkgPSB7IH07CgpXb3VsZCB5b3UgbGlrZSBt
ZSB0byBzZW5kIGEgbmV3IHZlcnNpb24gb2YgdGhlIHBhdGNoPwoKPj4gIAo+PiAtCXZhbHVlc1sw
XSA9IGJ5dGU7Cj4+ICsJYml0bWFwX3NldF92YWx1ZTgodmFsdWVzLCBieXRlLCA4KTsKPj4gIAo+
PiAgCWdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcCh0c19uYnVzLT5kYXRhLCB2YWx1ZXMp
Owo+PiAgfQo+Pgo+PiAtLSAKPj4gMi40My4wCj4+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
