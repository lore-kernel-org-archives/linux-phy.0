Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E456C02198
	for <linux-phy@archiver.kernel.org>; Sun, 16 Feb 2025 14:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5c3hodqGzZW3nz8kMpCKqAW6ziVl+Ak2Az88o525N6I=; b=Uql8/IhKufDBqE
	26nbWuDIzu+j4U9x+uK8iwaTHxifLjzTNTlhFBKMuScCXHE8cx/Tex+yzu68soIwRuHJrJlxJmKJQ
	Lwem7w8C2e1wozqhlcz2wsz9SBG4kBwxSbb61FMN9PJWlqXu+fg5FgON/5jNOfUxhu0pwAyD5FQ0B
	98ogd61Uv72kM8Wg167nOg46OfMJO1V4cVJS5qFA3TtFQV391cLtZUTMz8MFy1uLc4EQTTZbWlpmP
	jf9HBjkCoXE7PaayTfwyCr1Tn95DggnoSY7o3fMNhW815dZfghvmVOKILleElJh0eg4QW3bbkaxMs
	2Xzjb4ibtLjOjCeJl1Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjfYR-00000001w20-3Sqq;
	Sun, 16 Feb 2025 14:23:31 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjfYP-00000001w1c-2ysO
	for linux-phy@lists.infradead.org;
	Sun, 16 Feb 2025 14:23:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C5CCCA40BD8;
	Sun, 16 Feb 2025 14:21:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 340B2C4CEDD;
	Sun, 16 Feb 2025 14:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739715807;
	bh=CHx2ST4zktCV02lmLrwqE/s3ts+t8MfWDPW0ZGK9ATc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=nLFeQF/y42wVWIR3fGqepgiiyhB1EMEB9TJ3SxTEdt2lKEf0g4hRNmC7jJ+NbpAOR
	 FbMTsQsbvPG0N5aYlW699M3UJR8kOZElpZ05ZhxdLoNuqk5WQHFqIV/BOKjWqhu95I
	 dVeYlaYtBZdi3TGnVNeIAqiSv6gHo/fwe2q80M5SxfwzQhapn+/E534ECVjw68f4Cx
	 3Y7i7V1iYpLbT9Wj2lta8S9X3+9CVDnTMRy0TEzfct3l5Hgzlkcz0UgKcmIYqiwoeo
	 Vn1UOBHP/I2zQV0z1jKxy/e5fBQg8ZsYsMj7VRz99WJUKJ+yOympCuVgQLJL9PAkos
	 +KMSCyNkdXjnQ==
Date: Sun, 16 Feb 2025 14:23:13 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Linus Walleij
 <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn
 <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, David
 Lechner <dlechner@baylibre.com>, Bartosz Golaszewski
 <bartosz.golaszewski@linaro.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, Jonathan
 Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add
 gpiod_multi_set_value_cansleep
Message-ID: <20250216142313.743af564@jic23-huawei>
In-Reply-To: <CAMRc=MefPRs-REL=OpuUFJe=MVbmeqqodp+wCxLCE8CQqdL4gQ@mail.gmail.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
	<173952845012.57797.11986673064009251713.b4-ty@linaro.org>
	<CAHp75VcjAFEdaDQAMXVMO96uxwz5byWZvybhq2fdL9ur4WP3rg@mail.gmail.com>
	<CAMRc=MefPRs-REL=OpuUFJe=MVbmeqqodp+wCxLCE8CQqdL4gQ@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_062329_879789_6BCCAEA2 
X-CRM114-Status: GOOD (  15.07  )
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

T24gRnJpLCAxNCBGZWIgMjAyNSAxNTozNzo0OCArMDEwMApCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiB3cm90ZToKCj4gT24gRnJpLCBGZWIgMTQsIDIwMjUgYXQgMzozNeKAr1BN
IEFuZHkgU2hldmNoZW5rbwo+IDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPiB3cm90ZToKPiA+
Cj4gPiBPbiBGcmksIEZlYiAxNCwgMjAyNSBhdCAxMjoyMeKAr1BNIEJhcnRvc3ogR29sYXN6ZXdz
a2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOiAgCj4gPiA+IE9uIE1vbiwgMTAgRmViIDIwMjUgMTY6
MzM6MjYgLTA2MDAsIERhdmlkIExlY2huZXIgd3JvdGU6ICAKPiA+ID4gPiBUaGlzIHNlcmllcyB3
YXMgaW5zcGlyZWQgYnkgc29tZSBtaW5vciBhbm5veWFuY2UgSSBoYXZlIGV4cGVyaWVuY2VkIGEK
PiA+ID4gPiBmZXcgdGltZXMgaW4gcmVjZW50IHJldmlld3MuICAKPiA+Cj4gPiAuLi4KPiA+ICAK
PiA+ID4gWzA3LzE1XSBpaW86IGFkYzogYWQ3NjA2OiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVl
X2NhbnNsZWVwCj4gPiA+ICAgICAgICAgY29tbWl0OiA4MjAzYmM4MWYwMjVhM2ZiMDg0MzU3YTNk
OGE2ZWIzMDUzYmM2MTNhCj4gPiA+IFswOC8xNV0gaWlvOiBhbXBsaWZpZXJzOiBobWM0MjVhOiB1
c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4gPiA+ICAgICAgICAgY29tbWl0OiBl
MThkMzU5YjBhMTMyZWI2NjE5ODM2ZDFiZjcwMWY1YjNiNTMyOTliCj4gPiA+IFswOS8xNV0gaWlv
OiByZXNvbHZlcjogYWQyczEyMTA6IHVzZSBncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xlZXAK
PiA+ID4gICAgICAgICBjb21taXQ6IDc5MjBkZjI5ZjBkZDNhYWUzYWNkOGE3MTE1ZDVhMjU0MTRl
ZWQ2OGYKPiA+ID4gWzEwLzE1XSBpaW86IHJlc29sdmVyOiBhZDJzMTIxMDogdXNlIGJpdG1hcF93
cml0ZQo+ID4gPiAgICAgICAgIGNvbW1pdDogYTY3ZTQ1MDU1ZWE5MDA0ODM3MjA2NjgxMWRhN2M3
ZmUyZDkxZjlhYSAgCj4gPgo+ID4gRldJVywgSm9uYXRoYW4gdXN1YWxseSB0YWtlcyBjYXJlIG9m
IHBhdGNoIHF1ZXVlIG9uIHdlZWtlbmRzLgo+ID4gQnV0IHdoYXRldmVyLCBpdCdzIG5vdCBteSBi
dXNpbmVzcyBhZnRlciBhbGwgOi0pCj4gPiAgCj4gCj4gVG9vIG1hbnkgY29uZmxpY3Rpbmcgc3Vn
Z2VzdGlvbnMuIEkganVzdCBwaWNrZWQgdXAgYWxsIEFja2VkIHBhdGNoZXMuIMKvXF8o44OEKV8v
wq8KClJlc29sdXRpb24gb2YgYW55IGlzc3VlcyAnc2hvdWxkJyBiZSBlYXN5IGVub3VnaC4gTGV0
J3Mga2VlcCBhbiBleWUgb24gaG93Cml0IGdvZXMgYXMgb3RoZXIgc2VyaWVzIGhpdCBMaW51eCBu
ZXh0LiAgTWlnaHQgYmUgYSBsaXR0bGUgd29yayB0byBiZSBkb25lIHRoZXJlCmFuZCBieSBMaW51
cyBpbiBuZXh0IG1lcmdlIHdpbmRvdy4KCkpvbmF0aGFuCgo+IAo+IEJhcnQKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
