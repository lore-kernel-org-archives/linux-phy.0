Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46FDDC369A9
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 07:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJH6ILpbxm36k4X2bXW+qtExmJlBr0mrtqfhq5bBheo=; b=dlr1Hd46B8xS3+
	rh9jvXmGg2N0kwLEv68MbRmpR989KDbxyWSXlrf20JEHqzVYDj3nCL1MxWD6qaQbhWEDt8m8Qpu4f
	hCq4AbVomwedkzHodVUlQNzKum2jKnveHNk2JaKrdyVKfq5yazv4sr6xan46dcW27sLay+wuz8KkM
	zV3H+POfx/9m7VkaQN3nDN7N//YcNfsrF64OZHvUGGrXOD+AUj2bjhrqI235oSFhNyzxFJ1STvKr7
	XhevtD/jv7HkhESBpSoXfVevBKj30WOHZhEChynV+Pitqk9bw/LDlEcsDtZnMKjx40nw1NfAlf3FA
	4z49KAHLz7vSYPDwWkjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stMqu-00000004PK3-2e7N;
	Wed, 25 Sep 2024 07:54:24 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stMn9-00000004OXe-0sZ6
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 07:50:33 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3787ddbd5a2so3701179f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Sep 2024 00:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1727250629; x=1727855429; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YFiXClqbPRW4CJclRDKGkw40xsL++a9HxAmJhaouAR4=;
        b=MMrBB2K3X5uHEljVmzvGlZl6O8+IkUIxMBz6MN+CQ3XiCguqsPvaQ+D5GU4fnryRll
         bz4edfkFOSU4tcEgMQSAJIC9xiGLW7sewKkwNP6XRdhlGLkmNPEAcGc1FOQz6eNq+oMn
         z3JYxFjHBPLkk98N25E7MJnumjVqYG9O4j7X25mKSBGqf4GuCu0Upj+jqeX4iKLMobX8
         BCulK8ew7naJVmmuhF9hV/khuKhYBavCbSbcPUdW3/tpUSVir19lyzv7Eh3V6rQToDeE
         /eA0CJ8RdTeLAtqUoLJhSH3ZbIjlftHEK5v2ev7THXuCgDOCrfUXNSfkqBYropXE+8YY
         8pkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727250629; x=1727855429;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YFiXClqbPRW4CJclRDKGkw40xsL++a9HxAmJhaouAR4=;
        b=KAt1p5BG+H88LE7XXricAvFv6Cr0I99zN+Lrq2JvONh6wo2Ib5ToO8wrqIWDql32Eo
         Z8oCzV44b6VME5lIBPhhHsnDDuUSm4ZZcQMefWpQ2zlvBGw/CashPgMh0O6zTo+Da0Ge
         XvdsHIirhCWwE1DSti+tRrByFOk1oK6FP+MzgT9VHex7AIqu0APIgMaa/3BP+GAETh5B
         lpi6V6qkO06RNxWdq9ktBPGp0yevTrrwyLaZ8ihW+Lf+Fn9fkbn4xeNWB6Hqi0+deTJJ
         46ojALSZ1I3RFNKlWSrSLN98sbraHFz08+/Gk0wTXl5gzPrPV3TOPIU9T8DS4SY90L1c
         hOng==
X-Forwarded-Encrypted: i=1; AJvYcCW7yVLA+D6qz3EN2j61CJSn6cDUn6JQYFONyD9REcgtVTDZiwFQz6NbbmzsLyTI1k2Jf67KwXwEyv8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYJgp24AmYAl8x45A0tsHnVXixZMiT0Nw/CkFfb9ZLLTT8lUZx
	Bu43azwybcz8FtkNr9G4Ko3ezkt9kZFJaMbUJBvfEfe1QXLRkHI8ssbQMapZ5QA=
X-Google-Smtp-Source: AGHT+IFSqrWOgvLYloNvVXm1vEQkjP+JD1QteKQEPhT8fVsIjwexzPr+xFJfYUTXmrkXaAxZ4I2zWw==
X-Received: by 2002:adf:f58e:0:b0:36d:2984:ef6b with SMTP id ffacd0b85a97d-37cc2466ff9mr1203849f8f.11.1727250629008;
        Wed, 25 Sep 2024 00:50:29 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.115])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e969feb45sm10046135e9.20.2024.09.25.00.50.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2024 00:50:27 -0700 (PDT)
Message-ID: <23531a70-cf50-4b32-a9fd-81e6cfcbcf9d@tuxon.dev>
Date: Wed, 25 Sep 2024 10:50:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/16] soc: renesas: Add SYSC driver for Renesas RZ/G3S
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVQsHx0nC3xwQWVRWyWMnbXd1=RokNn8rkJv3bfG_0p-A@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVQsHx0nC3xwQWVRWyWMnbXd1=RokNn8rkJv3bfG_0p-A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_005031_456485_354E9ED6 
X-CRM114-Status: GOOD (  15.79  )
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

SGksIEdlZXJ0LAoKT24gMjQuMDkuMjAyNCAxNDozMiwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gT24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENs
YXVkaXUgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4+IEZyb206IENsYXVkaXUg
QmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4KPj4gVGhlIFJaL0cz
UyBTWVMgQ29udHJvbGxlciBoYXMgMiByZWdpc3RlcnMgKG9uZSBmb3IgUENJRSBvbmUgZm9yIFVT
QikgdGhhdAo+PiBuZWVkIHRvIGJlIGNvbmZpZ3VyZWQgYmVmb3JlL2FmdGVyIHBvd2VyaW5nIG9m
Zi9vbiB0aGUgUENJIG9yIFVTQgo+PiBhcmVzLiBUaGUgYml0cyBpbiB0aGVzZSByZWdpc3RlcnMg
Y29udHJvbCBzaWduYWxzIHRvIFBDSUUgYW5kIFVTQiB0aGF0Cj4+IG5lZWQgdG8gYmUgZGUtYXNz
ZXJ0ZWQvYXNzZXJ0ZWQgYWZ0ZXIvYmVmb3JlIHBvd2VyIG9uL29mZiBldmVudC4gRm9yIHRoaXMK
Pj4gYWRkIFNZU0MgY29udHJvbGxlciBkcml2ZXIgdGhhdCByZWdpc3RlcnMgYSByZXNldCBjb250
cm9sbGVyIGRyaXZlciBvbgo+PiBhdXhpbGlhcnkgYnVzIHdoaWNoIGFsbG93cyBVU0IsIFBDSUUg
ZHJpdmVycyB0byBjb250cm9sIHRoZXNlIHNpZ25hbHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENs
YXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPiAKPiBUaGFu
a3MgZm9yIHlvdXIgcGF0Y2ghCj4gCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9y
ZXNldC9yZXNldC1yemczcy1zeXNjLmMKPj4gQEAgLTAsMCArMSwxNDAgQEAKPj4gKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4+ICsvKgo+PiArICogUmVuZXNhcyBSWi9HM1Mg
U1lTQyByZXNldCBkcml2ZXIKPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjQgUmVuZXNh
cyBFbGVjdHJvbmljcyBDb3JwLgo+PiArICovCj4+ICsKPj4gKyNpbmNsdWRlIDxsaW51eC9hdXhp
bGlhcnlfYnVzLmg+Cj4gCj4gVXNpbmcgdGhlIEF1eGlsaWFyeSBCdXMgcmVxdWlyZXMgc2VsZWN0
aW5nIEFVWElMSUFSWV9CVVMuCgpUaGFuayB5b3UgZm9yIHBvaW50aW5nIGl0LiBJJ2xsIGFkanVz
dCBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLCBpZiBpdCB3aWxsCmJlIG9uZS4KCgo+IEVsc3NlIHlv
dSBtaWdodCBydW4gaW50byBidWlsZCBmYWlsdXJlczoKPiAKPiBhYXJjaDY0LWxpbnV4LWdudS1s
ZDogZHJpdmVycy9zb2MvcmVuZXNhcy9yemczcy1zeXNjLm86IGluIGZ1bmN0aW9uCj4gYHJ6ZzNz
X3N5c2NfcHJvYmUnOgo+IHJ6ZzNzLXN5c2MuYzooLnRleHQrMHgyMWMpOiB1bmRlZmluZWQgcmVm
ZXJlbmNlIHRvIGBhdXhpbGlhcnlfZGV2aWNlX2luaXQnCj4gYWFyY2g2NC1saW51eC1nbnUtbGQ6
IHJ6ZzNzLXN5c2MuYzooLnRleHQrMHgyNjQpOiB1bmRlZmluZWQgcmVmZXJlbmNlCj4gdG8gYF9f
YXV4aWxpYXJ5X2RldmljZV9hZGQnCj4gYWFyY2g2NC1saW51eC1nbnUtbGQ6IGRyaXZlcnMvcmVz
ZXQvcmVzZXQtcnpnM3Mtc3lzYy5vOiBpbiBmdW5jdGlvbgo+IGByemczc19zeXNjX3Jlc2V0X2Ry
aXZlcl9pbml0JzoKPiByZXNldC1yemczcy1zeXNjLmM6KC5pbml0LnRleHQrMHgxYyk6IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8KPiBgX19hdXhpbGlhcnlfZHJpdmVyX3JlZ2lzdGVyJwo+IGFhcmNo
NjQtbGludXgtZ251LWxkOiBkcml2ZXJzL3Jlc2V0L3Jlc2V0LXJ6ZzNzLXN5c2MubzogaW4gZnVu
Y3Rpb24KPiBgcnpnM3Nfc3lzY19yZXNldF9kcml2ZXJfZXhpdCc6Cj4gcmVzZXQtcnpnM3Mtc3lz
Yy5jOiguZXhpdC50ZXh0KzB4MTApOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvCj4gYGF1eGlsaWFy
eV9kcml2ZXJfdW5yZWdpc3RlcicKPiAKPiBHcntvZXRqZSxlZXRpbmd9cywKPiAKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBHZWVydAo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
