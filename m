Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B874CED628
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzjTOzo6psfb32pcB0F86KySskHFVSbv9pVhJ9VwsxM=; b=l9kK5EWg4jU/ut
	wCmOLGlYKJ6ynWUIy+RUPrX65ap0I7FV25MA1lyKOnGhfSeu7lejp0N2V6UCplc4y2H5efMtwobcD
	eX1GCKCDIyz/9KsO9n+kLlgURV2EgGPtYz0vbQJYxX/JzMn3yzeabSynQ6yHPVrAMOwGAUlg+Bozg
	74W7wAypoatG4HvXpiL55d4RZmEzU3sNTdSq/64Ah6x+2efnVqhMzPB0Uai60KZis4dJ2bAqvIZYE
	haCinJJBnaAQzG84qavYSPr0fIBJ2xpfgjuKmkDJXUu3ZEY8damCI7DSK4JKlCtGg0INE+CnG5hKY
	21MyftiexIMcWrAy0MsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syS1Y-00000008RqZ-21vz;
	Wed, 09 Oct 2024 08:26:24 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syS1V-00000008Rp9-2fgr
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 08:26:22 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2fad100dd9fso94595201fa.3
        for <linux-phy@lists.infradead.org>; Wed, 09 Oct 2024 01:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1728462380; x=1729067180; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TLhzHB7jiqaUdp6L8vmJycmlbC4To6/gc8QcXQMUb/E=;
        b=Gss/cw7s+FWoay72oagvhP1FTV8P8UpDL9nfVi4377Hs2xpRgqB+V2ErK8QDAaU+j0
         wooyRJUB+KlcAd/UuixRmzAeS4YgDAZmpIBPchS2jxULZWshELjk8mqrBRAzd0gyMNBw
         hr0PB4F1o3IfE2q5QJwra5d7hWlIrFFntas25UfJQCwOMAdS40hjfUT4zCdafbqrvhCg
         2IvOR1rQE7U1GBf3ie391w7CRVM+GFMbaXZOZnLWDMZHrBCulCuTielx8NvMpaFJfhfm
         6p+woH33p/4kdHeYLkSpINGmIUCwsZMpHdzzb33um6Rx38zEu3bNgKVGxNkDrke4jNmW
         0HiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728462380; x=1729067180;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TLhzHB7jiqaUdp6L8vmJycmlbC4To6/gc8QcXQMUb/E=;
        b=kjKEE9qtOmG5m5qIYBtp9xc0+rlYk5znSHYrvYZxK8KZDsKUaRhuindt37P/UcEVyh
         enPVa1gkSGAMdffAXR0KNXpkSjsDW7AzPhcEKhfva5ROaboYuHfNxOiOJiqYYsbw6uk3
         AZ1t54CZxy9whHENrzBJUaLQwifxRr0VmyqeK7y65p4/LHTCtS1RduuJJLxbO6hJVqX4
         dws7x3WIWNDmPRmJJLRsfrJHoht6SA8Qu3/TO9qmo2Nro2LdsQHE44mb6Tm/LxXIt1Y2
         1KRB5Xe6RSEZ5EvdMwKyGRyKv6YFdRfq96+zPVP8MruvHu/DGCo6rFjsdumwWS5g/Jmo
         hwOg==
X-Forwarded-Encrypted: i=1; AJvYcCXdsFleVedHL0cvBLEaDP/kKgiYV7A8BcGHq6SZt206eoeIcjX+ECdb4sIddCn54cad5UrupLeOrQ0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy55Fym00tfUvSVgvYM/LhDSthqp1g1niy55LHH/TYgBs3Gqvv1
	d6WRlmLsYP81HkK3eRdXv/QlECKiw49EXbnKFT3z0rHdU8F+dUYSP7dcJWlq+cs=
X-Google-Smtp-Source: AGHT+IECwquztc5SDa5khaaQXBkSkMjoGXF+/YXZtyWMOkWs1onDNY2dNBzakxpW7WCrmqB0Ej/WGQ==
X-Received: by 2002:a05:6512:3d22:b0:52e:936e:a237 with SMTP id 2adb3069b0e04-539c4899783mr1251682e87.16.1728462379592;
        Wed, 09 Oct 2024 01:26:19 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9960ba14cfsm285051066b.187.2024.10.09.01.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 01:26:19 -0700 (PDT)
Message-ID: <61842083-32c1-49d7-a1f5-de1fff0c9655@tuxon.dev>
Date: Wed, 9 Oct 2024 11:26:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/16] soc: renesas: sysc: Move RZ/G3S SoC detection on
 SYSC driver
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 ulf.hansson@linaro.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-6-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdU_kyPb9VAosStrwmQg9vOMgyogQu==u1XQEBWFQLbSdQ@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdU_kyPb9VAosStrwmQg9vOMgyogQu==u1XQEBWFQLbSdQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_012621_707348_992AF9D8 
X-CRM114-Status: GOOD (  23.36  )
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

SGksIEdlZXJ0LAoKT24gMDguMTAuMjAyNCAxNjoyMywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gT24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENs
YXVkaXUgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4+IEZyb206IENsYXVkaXUg
QmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4KPj4gTm93IHRoYXQg
d2UgaGF2ZSBhIGRyaXZlciBmb3IgU1lTQyBkcml2ZXIgZm9yIFJaL0czUyBtb3ZlIHRoZSBTb0Mg
ZGV0ZWN0aW9uCj4+IGZvciBSWi9HM1MgaW4gU1lTQyBkcml2ZXIuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPiAK
PiBUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCj4gCj4+IC0tLSBhL2RyaXZlcnMvc29jL3JlbmVzYXMv
cnpnM3Mtc3lzYy5jCj4+ICsrKyBiL2RyaXZlcnMvc29jL3JlbmVzYXMvcnpnM3Mtc3lzYy5jCj4+
IEBAIC04NSw2ICs5NywzOSBAQCBzdGF0aWMgaW50IHJ6ZzNzX3N5c2NfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPj4gICAgICAgICBzeXNjLT5kZXYgPSBkZXY7Cj4+ICAgICAg
ICAgc3Bpbl9sb2NrX2luaXQoJnN5c2MtPmxvY2spOwo+Pgo+PiArICAgICAgIGNvbXBhdGlibGUg
PSBvZl9nZXRfcHJvcGVydHkoZGV2LT5vZl9ub2RlLCAiY29tcGF0aWJsZSIsIE5VTEwpOwo+PiAr
ICAgICAgIGlmICghY29tcGF0aWJsZSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVW
Owo+IAo+IFBsZWFzZSB1c2Ugb2ZfbWF0Y2hfZGV2aWNlKCkgYW5kIG9mX2RldmljZV9pZC5jb21w
YXRpYmxlIGluc3RlYWQuCgpPSy4KCj4gCj4+ICsKPj4gKyAgICAgICBzb2NfaWRfc3RhcnQgPSBz
dHJjaHIoY29tcGF0aWJsZSwgJywnKSArIDE7Cj4+ICsgICAgICAgc29jX2lkX2VuZCA9IHN0cmNo
cihjb21wYXRpYmxlLCAnLScpOwo+PiArICAgICAgIHNpemUgPSBzb2NfaWRfZW5kIC0gc29jX2lk
X3N0YXJ0Owo+PiArICAgICAgIGlmIChzaXplID4gMzIpCj4+ICsgICAgICAgICAgICAgICBzaXpl
ID0gMzI7Cj4+ICsgICAgICAgc3Ryc2NweShzb2NfaWQsIHNvY19pZF9zdGFydCwgc2l6ZSk7Cj4+
ICsKPj4gKyAgICAgICBzb2NfZGV2X2F0dHIgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnNv
Y19kZXZfYXR0ciksIEdGUF9LRVJORUwpOwo+PiArICAgICAgIGlmICghc29jX2Rldl9hdHRyKQo+
PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4+ICsKPj4gKyAgICAgICBzb2NfZGV2
X2F0dHItPmZhbWlseSA9ICJSWi9HM1MiOwo+PiArICAgICAgIHNvY19kZXZfYXR0ci0+c29jX2lk
ID0gZGV2bV9rc3RyZHVwKGRldiwgc29jX2lkLCBHRlBfS0VSTkVMKTsKPj4gKyAgICAgICBpZiAo
IXNvY19kZXZfYXR0ci0+c29jX2lkKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07
Cj4+ICsKPj4gKyAgICAgICBkZXZpZCA9IHJlYWRsKHN5c2MtPmJhc2UgKyBSWkczU19TWVNfTFNJ
X0RFVklEKTsKPj4gKyAgICAgICByZXZpc2lvbiA9IEZJRUxEX0dFVChSWkczU19TWVNfTFNJX0RF
VklEX1JFViwgZGV2aWQpOwo+PiArICAgICAgIHNvY19kZXZfYXR0ci0+cmV2aXNpb24gPSBkZXZt
X2thc3ByaW50ZihkZXYsIEdGUF9LRVJORUwsICIldSIsIHJldmlzaW9uKTsKPj4gKyAgICAgICBp
ZiAoIXNvY19kZXZfYXR0ci0+cmV2aXNpb24pCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVO
T01FTTsKPj4gKwo+PiArICAgICAgIGRldl9pbmZvKGRldiwgIkRldGVjdGVkIFJlbmVzYXMgJXMg
JXMgUmV2ICVzXG4iLCBzb2NfZGV2X2F0dHItPmZhbWlseSwKPj4gKyAgICAgICAgICAgICAgICBz
b2NfZGV2X2F0dHItPnNvY19pZCwgc29jX2Rldl9hdHRyLT5yZXZpc2lvbik7Cj4+ICsKPj4gKyAg
ICAgICBzb2NfZGV2ID0gc29jX2RldmljZV9yZWdpc3Rlcihzb2NfZGV2X2F0dHIpOwo+PiArICAg
ICAgIGlmIChJU19FUlIoc29jX2RldikpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VS
Uihzb2NfZGV2KTsKPj4gKwo+PiAgICAgICAgIHJldHVybiByemczc19zeXNjX3Jlc2V0X3Byb2Jl
KHN5c2MsICJyZXNldCIsIDApOwo+PiAgfQo+IAo+IE15IGZpcnN0IHRob3VnaHQgd2FzICJvaCBu
bywgbm93IHRoaXMgaXMgaGFuZGxlZC9kdXBsaWNhdGVkIGluIHR3bwo+IHBsYWNlcyIsIGJ1dCBp
ZiB5b3UgbGF0ZXIgbWlncmF0ZSB0aGUgY2hpcCBpZGVudGlmaWNhdGlvbiBzdXBwb3J0IGZvcgo+
IHRoZSByZXN0IG9mIFJaL0cyTCBkZXZpY2VzIHRvIGhlcmUsIGl0IG1heSBzdGFydCB0byBsb29r
IGJldHRlciA7LSkKClllcywgdGhpcyBpcyBob3cgSSBzZWUgaXQgZ29pbmcgZm9yd2FyZC4KCj4g
Cj4gT25lIGNhdmVhdCBpcyB0aGF0IHNvY19kZXZpY2VfbWF0Y2goKSBjYW4gYmUgY2FsbGVkIHF1
aXRlIGVhcmx5IGluCj4gdGhlIGJvb3QgcHJvY2VzcywgaGVuY2UgcmVuZXNhc19zb2NfaW5pdCgp
IGlzIGFuIGVhcmx5X2luaXRjYWxsKCkuCj4gU28gcmVnaXN0ZXJpbmcgdGhlIHNvY19kZXZpY2Ug
ZnJvbSBhIHBsYXRmb3JtX2RyaXZlciBtaWdodCBiZSB0b28gbGF0ZSwKPiBlc3BlY2lhbGx5IHNp
bmNlIGZ3X2RldmxpbmtzIHdvbid0IGhlbHAgeW91IGluIHRoaXMgcGFydGljdWxhciBjYXNlLgo+
IEhvd2V2ZXIsIEkgdGhpbmsgYWxsIHJlYWwgZWFybHkgY2FsbHMgdG8gc29jX2RldmljZV9tYXRj
aCgpIGFyZSBnb25lCj4gc2luY2UgdGhlIHJlbW92YWwgb2YgdGhlIHN1cHBvcnQgZm9yIFItQ2Fy
IEgzIEVTMS54LCBhbmQgYWxsIHJlbWFpbmluZwo+IGNhbGxzIGltcGFjdCBvbmx5IFItQ2FyIGFu
ZCBSWi9HeCAobm90IEcyTCkgU29Dcy4KClRoYXQgaXMgZ29vZCB0byBrbm93LiBJIGdldCB0aGF0
IHdlIHNob3VsZCBiZSBzYWZlIGdvaW5nIGZvcndhcmQgd2l0aCB0aGlzCmFwcHJvYWNoLgoKVGhh
bmsgeW91LApDbGF1ZGl1IEJlem5lYQoKPiAKPiBHcntvZXRqZSxlZXRpbmd9cywKPiAKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBHZWVydAo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
