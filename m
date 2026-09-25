Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5373BC9830E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 19:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8MjBBAuywR71KvXEj4NXm0dy0AOXc9kFFP/KHQPFA4=; b=IpKuPxjz7xiKgD
	+PpHmnO+EPoaQNMIz4+t649hPL+9f01l16NhSm2YbwsPeyxnECXgOduvEMAyu0WGyLDDhz2E/rqCk
	1d0V/ln1FG1JfDS+Uv7cvLJgaQdJiCiMERATPL4iDYt7RTUFfGFT+C2vhhe2kivUD50vEBZSy7rrS
	PXQTn5lzDIjF1Wxoe30fhU5t9a0FDW0Xqo7pPGcPcwiBtd4ufqoz1SmQfJ8HrqTgKI5kQdw+1z5yK
	IiVMWRRSKhXOz2iL8ne/iCApm4gINbnSy7zd5eqgLs6gj9nnuH2UogF1Z7cD7sQ58n/psBZACk33i
	9hsF7IvUpocCaSRb1qlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xABmo-0000000EHqL-30XL;
	Fri, 25 Sep 2026 19:40:46 +0000
Received: from mail-oi2-x10.google.com ([2607:f8b0:4864:32::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xABml-0000000EHp7-1mdr
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 19:40:45 +0000
Received: by mail-oi2-x10.google.com with SMTP id 5614622812f47-4b37a2ffef2so609556b6e.3
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 12:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790365241; cv=none;
        d=google.com; s=arc-20260327;
        b=LVqBO7bITtsGxH2Be8PA0k14OloyEa5ppN6sv6lsybzw5a2KFtLTc37cb8GW3okhgf
         GdM/eo/W5wA8mUV2rde9wRepyWO2cO7f9tc5FK75MB/9nivLDUnbHJFXg1kZxiIFr/72
         zTQHvqgbSByHdOdfYwBQwlTPqbufp0Me5MqsErln2NrroHt19JDFnTE/Mg2XQHG8u/gZ
         ZXxbKU+SWHxhnbLl6sv7W7kLp1RBSHah1ovkXk2fANuFvJbfStowLFPsKyCjyhLM38pH
         jY/7NMVpDjBIuR6SBxlZEDzlmTcs4KhmmHli3B8zFVPrnkCXwWQwoVx8YC0EeKrfqo+g
         N8Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QRtQwrI36+tl+6Prwhx/Tagi3Pi4qOHQ7OtnSC5ifgE=;
        fh=mKU75VEHIRzXrZ0ToISaFhlAIlgJv7XiTARPLdBYjNE=;
        b=lbivtaH44XzEmrp76dTbBikcoXTi1LORYURzXuSwyR2qsx0xaVNrFFQOgp+68/rBc6
         HUElwHQUUC/X0X9rWJkAw3NLPtrck6fg/1Tmicvb3hpUv6ru/HN5MmD+QtrPK30SEeT3
         glEMp7CBpRGgGcxIHsV/51/f+zKqCs8iTAWKA6T86ElhTCdSYMcM3tKVjRsx+guOGERJ
         /UB2/ZJY8y9AENFkMT5FRsz8NgfyIlcEotqCCQRiuswuBckI1cJ8GU/sAtf2V1btxz5c
         HmltvVM8Z0Yhx2hC1f4N8PZda/HN9CLoycygqTPI4Q0oYBvYZ7U1bjyc6kuyibYWUhJR
         Z6jQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1790365241; x=1790970041; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QRtQwrI36+tl+6Prwhx/Tagi3Pi4qOHQ7OtnSC5ifgE=;
        b=qhj7o5hNSoguEdq5uFjmY3CjGNviYqgbonY0mBWbN5yexjhUon636+F5EobQkKgHyF
         vYSYjet6mwIs/jscY0qft9e0jWW8L3hUcwKkW4SMEbMyYyDi9eDkP/POBfqCxOBhbBVE
         6plqsbqdRmq/oV0enhxMXoGxmHu6NIUg/ERjecTcJ+paEIg27G6ixsruAdlwMk4j8vmS
         Qe5FLtTlxSKc/vZi1ifsWPJdeWZZ4qAkNdPtUtDVS22rkTdJXFTXA3M4BlqEh/YuUtMD
         LWW0z8dvManl8R2mYBaYwlIHpGIM8MzOsioz2tb40+OIHwa3EhqPYcd6ZLYw21GjtOe5
         Q/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790365241; x=1790970041;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QRtQwrI36+tl+6Prwhx/Tagi3Pi4qOHQ7OtnSC5ifgE=;
        b=SdruaXrI1AIpZ9uGV/gHTtQVepWCss6K1/1tZV32Ab1dWyt60kU0tryp8YAEwDwji4
         tgBCBhfr/fBH+9r5I9RbhIiQ7gGYE45JyydfXyEMOfEXqtG8Beothmm30+J50GwSS320
         HSekiZlcCAlMfdxy4pNuyM8vACX7h2duE54tguCOPa7lU9XHN6Ty8ARdCFT3LYwqSzmy
         S71QR4zMNbODriXdcHWtVy00xdPCOIJtLpPGz0uio73gsSidsg7aTW9eNzXvxYH46Zgf
         j7c/nJLGNcTfcGbz3ddiev1QPtIIu5yq7FRz8o/ekvnkIWkXzlKD1q2OZoWMtpbyq52l
         5vLg==
X-Forwarded-Encrypted: i=1; AKwUvBzYTQ1VtFgjTTS91DQuCwanzQdETyzcXV4S4Zn3ySs4jlbqPCucMrZTvzjDfm+BkZhUn9Ay68R+Vxo=@lists.infradead.org
X-Gm-Message-State: AFuF++kJa7aajD7i2ymKzLjClCt50GJKFQ7ZUPKTEWWoer9kYO1VH7qs
	quS9oMoSp/vqc3lBVim/cRbO2oJZQBiyGAQ7IIIEM3KuK3FzM/PTn/wtFHG38VEbV64QpTVuXR5
	uh4UxaTUZe0qtJOTSKeya7JzuraDrKVnNwMgVLoS9
X-Gm-Gg: AYBFou1LnB/TxFRxagUUkVTRVhmlYfJvKV4TkPuyPz5Kbz2ol/nO6n4lbxn4FciN9vg
	7AyeIrgFYU1nuZkpe1nAmGMgQI85Sbs9uMYcUbPZVNJULWoFWGC69N1frvJI+RWb01YZPUkVidJ
	g007/2+cwpuPYI+OCVxf8vNUCAnI0MYnfgCQzxIPo/Y/znfBvv0EjUUyFEYEasXv+1kCuxC3NeE
	4w22ZHvPL/NNI0fByI4OUlbkX/XuMKPxRm5LyIgFF1yvVCfHtGCcoVjycCkdl4HQzIdHp9MN7GH
	HKqvvnduL5CeMO6bpodnYCmCRoOsC0sWkdMhFIhpJuyyeTJSPdwcciJhIVLB2hkzSCybUIc6Zc3
	T/QWLSaTtZQbq
X-Received: by 2002:a05:6808:30aa:b0:4d6:90f3:74ae with SMTP id
 5614622812f47-4dc6606bcc9mr4067609b6e.46.1790365240133; Fri, 25 Sep 2026
 12:40:40 -0700 (PDT)
MIME-Version: 1.0
References: <20260918222513.2633456-2-rdbabiera@google.com> <arF3fynAGG5khe3B@google.com>
In-Reply-To: <arF3fynAGG5khe3B@google.com>
From: RD Babiera <rdbabiera@google.com>
Date: Fri, 25 Sep 2026 12:40:29 -0700
X-Gm-Features: AclHuK_91DQZxLqN7uLYqBpJX2aYJ1LY4FTA5TNLS7LM4bAkU5HscFKOZ-tm8pA
Message-ID: <CALzBnUEw4J1SB8a7is5Q-OKhkuQuPWUJcu9KHRrZO37k==FEOQ@mail.gmail.com>
Subject: Re: [PATCH v7] phy: Add USB3 PHY support to Google Tensor SoC USB PHY driver
To: Neill Kapron <nkapron@google.com>
Cc: vkoul@kernel.org, peter.griffin@linaro.org, andre.draszik@linaro.org, 
	tudor.ambarus@linaro.org, p.zabel@pengutronix.de, neil.armstrong@linaro.org, 
	badhri@google.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_124043_481663_031817A2 
X-CRM114-Status: GOOD (  25.41  )
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

SGkgTmVpbGwsIHRoYW5rcyBmb3IgdGhlIHRob3JvdWdoIHJldmlldy4gV2lsbCBzZW5kIHY4IG91
dCBzaG9ydGx5LgoKT24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMTE6MjnigK9BTSBOZWlsbCBLYXBy
b24gPG5rYXByb25AZ29vZ2xlLmNvbT4gd3JvdGU6Cj4gVGhlIGRyaXZlciBpcyBub3cgdXNpbmcg
cmVhZGxfcG9sbF90aW1lb3V0KCkgYW5kCj4gcG1fcnVudGltZV9nZXRfaWZfYWN0aXZlKCksIHdl
IHNob3VsZCBiZSBpbmNsdWRpbmcgbGludXgvaW9wb2xsLmggYW5kCj4gbGludXgvcG1fcnVudGlt
ZS5oIGV4cGxpY2l0bHkuCgpBY2tub3dsZWRnZWQuCgo+ID4gKyNkZWZpbmUgVENBX0NUUkxTWU5D
TU9ERV9DRkcxX1hBX1RJTUVPVVRfVkFMXzEwME1TIDB4MWU4NQo+ID4gKyNkZWZpbmUgVENBX1BT
VEFURV8wX09GRlNFVCAweDUwCj4gPiArI2RlZmluZSBUQ0FfUFNUQVRFXzBfVVBDU19MQU5FMF9Q
SFlTVEFUVVMgQklUKDgpCj4gPiArCj4gPiArI2RlZmluZSBHUEhZX1RDQV9ERUxBWV9VUyAxMAo+
ID4gKyNkZWZpbmUgR1BIWV9UQ0FfVElNRU9VVF9VUyAxMDAwMDAKPgo+IFdpdGggdGhlIGFkZGl0
aW9uIG9mIFRDQV9DVFJMU1lOQ01PREVfQ0ZHMV9YQV9USU1FT1VUX1ZBTF8xMDBNUywgd2UKPiBz
aG91bGQgY29uc2lkZXIgYnVtcGluZyBHUEhZX1RDQV9USU1FT1VUX1VTIHRvIGJlIHNsaWdodGx5
IGxhcmdlciAoZS5nLgo+IDExMDAwMHVzKSB0byBlbnN1cmUgdGhlIGhhcmR3YXJlIHRpbWVvdXQg
aXMgZ3VhcmFudGVlZCB0byBleHBpcmUgYmVmb3JlCj4gdGhlIHNvZnR3YXJlIHBvbGwgdGltZW91
dC4KCldpbGwgY2hhbmdlIGhlcmUuCgo+ID4gK3N0YXRpYyBjb25zdCBjaGFyICogY29uc3QgdTJw
aHlfY2xrX25hbWVzW10gPSB7Cj4gPiArICAgICAidXNiMiIsCj4gPiArICAgICAidXNiMl9hcGIi
LAo+ID4gK307Cj4gPiArc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCB1M3BoeV9jbGtfbmFtZXNb
XSA9IHsKPiA+ICsgICAgICJ1c2IzIgo+ID4gK307Cj4gPiArc3RhdGljIGNvbnN0IGNoYXIgKiBj
b25zdCB1MnBoeV9yc3RfbmFtZXNbXSA9IHsKPiA+ICsgICAgICJ1c2IyIiwKPiA+ICsgICAgICJ1
c2IyX2FwYiIsCj4gPiArfTsKPiA+ICtzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHUzcGh5X3Jz
dF9uYW1lc1tdID0gewo+ID4gKyAgICAgInVzYjMiCj4gPiArfTsKPgo+IG5pdDogY2hlY2twYXRj
aC5wbCAtLXN0cmljdCBmbGFncyBtaXNzaW5nIGJsYW5rIGxpbmVzIGJldHdlZW4gdGhlc2UKPiBh
cnJheSBkZWNsYXJhdGlvbnMgKGFuZCB0aGUgaW5saW5lIGhlbHBlciBmdW5jdGlvbnMgKyBERUZJ
TkVfX0ZSRUUKPiBtYWNyb3MgYmVsb3cpLgoKV2lsbCBjaGVjay4KCj4gPiAgc3RhdGljIGludCBn
b29nbGVfdXNiX3NldF9vcmllbnRhdGlvbihzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIHR5cGVjX29yaWVudGF0
aW9uIG9yaWVudGF0aW9uKQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBnb29nbGVfdXNiX3BoeSAq
Z3BoeSA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0YShzdyk7Cj4gPiArICAgICBpbnQgcmV0ID0g
MDsKPiA+Cj4gPiAgICAgICBkZXZfZGJnKGdwaHktPmRldiwgInNldCBvcmllbnRhdGlvbiAlZFxu
Iiwgb3JpZW50YXRpb24pOwo+ID4KPiA+IC0gICAgIGdwaHktPm9yaWVudGF0aW9uID0gb3JpZW50
YXRpb247Cj4gPiArICAgICBndWFyZChtdXRleCkoJmdwaHktPnBoeV9tdXRleCk7Cj4gPgo+ID4g
LSAgICAgaWYgKHBtX3J1bnRpbWVfc3VzcGVuZGVkKGdwaHktPmRldikpCj4gPiAtICAgICAgICAg
ICAgIHJldHVybiAwOwo+ID4gKyAgICAgZ3BoeS0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsK
PiA+Cj4gPiAtICAgICBndWFyZChtdXRleCkoJmdwaHktPnBoeV9tdXRleCk7Cj4gPiArICAgICBp
ZiAoSVNfRU5BQkxFRChDT05GSUdfUE0pKSB7Cj4gPiArICAgICAgICAgICAgIGlmIChwbV9ydW50
aW1lX2dldF9pZl9hY3RpdmUoZ3BoeS0+ZGV2KSA8PSAwKQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIHJldHVybiAwOwo+ID4gKyAgICAgfQo+ID4KPiA+ICAgICAgIHNldF92YnVzX3ZhbGlkKGdw
aHkpOwo+ID4KPiA+IC0gICAgIHJldHVybiAwOwo+ID4gKyAgICAgaWYgKGdwaHktPnBoeV9zdGF0
ZSA9PSBDT01CT19QSFlfVENBX1JFQURZICYmIG9yaWVudGF0aW9uICE9IFRZUEVDX09SSUVOVEFU
SU9OX05PTkUpCj4gPiArICAgICAgICAgICAgIHJldCA9IHByb2dyYW1fdGNhX2xvY2tlZChncGh5
KTsKPiA+ICsKPiA+ICsgICAgIHBtX3J1bnRpbWVfcHV0KGdwaHktPmRldik7Cj4gPiArCj4gPiAr
ICAgICByZXR1cm4gcmV0Owo+ID4gIH0KPgo+IFByZXZpb3VzbHksIHNhc2hpa28gcmVjb21tZW5k
ZWQgbW92aW5nIHRvIHBtX3J1bnRpbWVfZ2V0X2lmX2FjdGl2ZSgpLAo+IHdoaWNoIHdhcyBkb25l
IGluIHY2LiBIb3dldmVyIEkgdGhpbmsgdGhpcyBtYXkgaGF2ZSBjaGFuZ2VkIHRoZSBiZWhhdmlv
cgo+IG9mIGdvb2dsZV91c2Jfc2V0X29yaWVudGF0aW9uKCkgYW5kIHBvdGVudGlhbGx5IGludHJv
ZHVjZWQgYSByZWdyZXNzaW9uCj4gZHVlIHRvIHRoZSBwcmUtZXhpc3Rpbmcgb3JkZXJpbmcgb2Yg
Y2FsbHMgaW4gZ29vb2dsZV91c2JfcGh5X3Byb2JlKCksCj4gY2F1c2luZyB0aGlzIGZ1bmN0aW9u
IHRvIGFsd2F5cyB0YWtlIHRoZSBlYXJseSAncmV0dXJuIDAnIHBhdGguCj4KPiBJbiBnb29nbGVf
dXNiX3BoeV9wcm9iZSgpLCB3ZSBjYWxsIGRldm1fcGh5X2NyZWF0ZSgpIHByaW9yIHRvIGNhbGxp
bmcKPiBwbV9ydW50aW1lX2VuYWJsZShkZXYpLgo+Cj4gSW4gZHJpdmVycy9waHkvcGh5LWNvcmUu
YywgZGV2bV9waHlfY3JlYXRlKCkgY2FsbHMgcGh5X2NyZWF0ZSgpLCB3aGljaAo+IGhhcyB0aGUg
Zm9sbG93aW5nIGNoZWNrOgo+Cj4gICAgIGlmIChwbV9ydW50aW1lX2VuYWJsZWQoZGV2KSkgewo+
ICAgICAgICAgcG1fcnVudGltZV9lbmFibGUoJnBoeS0+ZGV2KTsKPiAgICAgICAgIHBtX3J1bnRp
bWVfbm9fY2FsbGJhY2tzKCZwaHktPmRldik7Cj4gICAgIH0KPgo+IFRoZXJlZm9yZSwgdGhlIHBo
eSBkZXZpY2UgbmV2ZXIgaGFzIHBtX3J1bnRpbWVfZW5hYmxlZCwgY2F1c2luZyB0aGlzCj4gY2Fs
bCB0byBwbV9ydW50aW1lX2dldF9pZl9hY3RpdmUoKSB0byBhbHdheXMgcmV0dXJuIDAsIGFuZCB0
aGUgZnVuY3Rpb24KPiBleGl0cyBwcmlvciB0byBjYWxsaW5nIGBzZXRfdmJ1c192YWxpZCgpYC4K
Pgo+IEkgdGhpbmsgbW92aW5nIHRoZSBwbV9ydW50aW1lX2VuYWJsZShkZXYpIGNhbGwgcHJpb3Ig
dG8KPiBkZXZtX3BoeV9jcmVhdGUoKSB3aWxsIHJlc29sdmUgdGhlIGlzc3VlLCBidXQgd2Ugc2hv
dWxkIGF1ZGl0IHBvd2VyCj4gbWFuYWdtZW50IGluIHRoaXMgZHJpdmVyIHRvIHZlcmlmeS4KClRo
ZSBjaGVjayBoZXJlIGlzIGNhbGxlZCBvbiBncGh5LT5kZXYgYXMgb3Bwb3NlZCB0byBwaHktPmRl
di4gZndfZGV2bGluayB1c2VzCkZXX0RFVkxJTktfRkxBR1NfUlBNIGJ5IGRlZmF1bHQsIHNvIHRo
ZSBkd2MzIGNvbnN1bWVyIGNvbnRyb2xsZXIgaG9sZHMKRExfRkxBR19QTV9SVU5USU1FIG9uIHRo
ZSBwaHkgcGxhdGZvcm0gZGV2aWNlLiBFdmVyeSByZXN1bWUgY2FsbCBvbgp0aGUgZHdjMyBjb250
cm9sbGVyIHJlc3VsdHMgaW4gdGhlIHN1cHBsaWVyIHJlc3VtaW5nIGFzIHdlbGwgdW5kZXIgdGhp
cwptb2RlbCwgc28gdGhlIHJ1bnRpbWVfZ2V0KCkgY2FsbCBoZXJlIHBhc3Nlcy4KCj4gSSB0aGlu
ayB0aGlzIGludHJvZHVjZXMgYSByZWdyZXNzaW9uIGJldHdlZW4gdjYgYW5kIHY3LCBhcyB1c2Iz
X3RjYV9iYXNlCj4gbWF5IGJlIGFjY2Vzc2VkIHByaW9yIHRvIHRoZSAndXNiMycgY2xvY2sgYmVp
bmcgZW5hYmxlZCwgYW5kCj4gZnVydGhlcm1vcmUsIHRoZSBjYWxsIHRvIHJlc2V0X2NvbnRyb2xf
YnVsa19kZWFzc2VydCgpIHdpbGwgY2xlYXIgdGhpcwo+IHZhbHVlLgo+Cj4gVGhlcmVmb3JlLCBJ
IHRoaW5rIHdlIG5lZWQgdG8gdGhpcyBhZnRlciB0aGUgY2FsbCB0bwo+IHJlc2V0X2NvbnRyb2xf
YnVsa19kZWFzc2VydCgpLgoKdXNiM190Y2FfYmFzZSBpcyBwb3dlcmVkIGJ5IGEgZGlmZmVyZW50
IGNsb2NrIGFzIG9wcG9zZWQgdG8gdGhlICd1c2IzJwpvbmUsIHNvIHRoZSByZWdpc3RlciBhY2Nl
c3Mgd2lsbCBiZSBzYWZlIGFzIGxvbmcgYXMgdGhlIHBsYXRmb3JtIGRyaXZlcidzCnBvd2VyIGRv
bWFpbiBpcyBvbi4gUmVnaXN0ZXIgcmVhZHMgaW4gZWl0aGVyIG9yZGVyIGJvdGggcmVzdWx0IGlu
IHRoZQpzYW1lIGJlaGF2aW9yIGR1cmluZyB0ZXN0aW5nLCBidXQgSSB3b3VsZCBhcmd1ZSB0aGF0
IHdyaXRpbmcgYmVmb3JlCnRoZSBjYWxsIHRvIHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydCgp
IGVuc3VyZXMgdGhhdCB0aGUgcGFyYW1ldGVyCmlzIGFwcGxpZWQgb24gUG9SLgoKQmVzdCwKUkQK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
