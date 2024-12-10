Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B199E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 14:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfvshwhAjQjqPaV8D7Ha24tnBhAF4ElKgOoIsfXVbzA=; b=zu9DJtL0DSGZPD
	1no3O7wxkOlegbvGCk2ZDE04G9CkwVWmeALvm/u+CDest0zZEfi1A7KKHBdYswOaQA3xShl9Dzx4L
	/8ZdKdZ0QXdcC4gFEXo6OFi5tuptWwb8wZK3OPlKsxsk61OskgfZX6BsDEbyI/LJn6qUELOK7QC07
	Cxildg2c0zXH1CfYBCNexfvxVDfjZDhB9o0UUmn/qFzITPynnO/13x2YJXDd7UseG8bXj07y6TgNa
	hA0+0qQEzUuJMBz2nAnEHBzKwXHL2cPsLvBEV63tgs4La6fXHeFEK0ipsDtxTp/L3a+o/+p6tNq5h
	ZqVj5p4/VBAwD45hlu5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1i1-0000000Bsao-1KE2;
	Tue, 10 Dec 2024 14:59:33 +0000
Received: from mail-vk1-f179.google.com ([209.85.221.179])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1hz-0000000BsaK-2DkC
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 14:59:32 +0000
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5188bd2aaf9so345881e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 06:59:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733842770; x=1734447570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=faO2LEB4d7HNsohjeHqWigf+jmzDcTwyV5VFG0HOFDw=;
        b=awTg+1fyt3QHoGMt68wfZaFZEbdF0jxpMWex5UpjnNh40eIVR61ZaCtRVIPSW1eOyG
         VyFLYEHQJtSqsLob6Bpcw65hDiInlchp++75m2qlzbaXZSwMM9ftZu0hsGGohJ0k0oNi
         aC2AI8Kgbd/oT701UAzpY0oAtd/K8Lij579AzogKA+8uzg7VJIvM6xHRrWvXP5N/F2sf
         kqxmjbCnR43CX8WX+Xyr9qM3VMb3vV/CsNvq97RXs62WzlcfDedYlTJqa+JSlejgnq6D
         ydDFoK2nOh2e4qzjaK6eltA7uu/6MALJDjjxa8ruT3Nr0YHVe7WcUO6T68SWlnjid1up
         ntsg==
X-Forwarded-Encrypted: i=1; AJvYcCV42KcvLvovHOqux8fSAwv66vLqUy0Ud2uedAzg2PcQWJv7OPpFX6BS+H1StnsvyjQ2JDxwwdVpvi8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNpg9nwcgZgAZlL+nBImIjG/RaFckw1UlR0D/wV7W58iHT6SNl
	ra/6uGiUsv12RRuLun7G4xsnQL3RWvKn4/LXZOQyGOrin690+2A0lPJJkrAl
X-Gm-Gg: ASbGnctBqPR8t4jZAXUJTsJjgsx9ffbI9ryxHeAMEd5HTITjvdco2YU5PcyxAFaCi+S
	XdOVsczgXUw5yAaB6IE0H8k+bAkjsxIYNUG6MmX4RrsqRjBzo9dkRFz3c91Iob9SPzj7xRnfYqG
	WRzn7zFBSRWVcdjlvMgpGnsu6sx6GPoT122V9ImrNEW4y4EZusf1om9AZeC5ckYGwN5bHGrBs8A
	dOrlGZGwjCg0kVuE3AZdX8Geo9Ppulmhv9HBTMXKfqYeObkTbjgg5eXTwrmhiVn0SEjbicDhYZh
	GovhFIb3yCJjj+Mp
X-Google-Smtp-Source: AGHT+IFS704bMIJvVYbGBasGaVdKyDOz1noAQkfEobs7+tCr4yHuc2KiS/2EgcJB/oCGrk9gWvmaZQ==
X-Received: by 2002:a05:6122:2507:b0:515:d0b3:2520 with SMTP id 71dfb90a1353d-51887f89b7fmr4461490e0c.0.1733842769687;
        Tue, 10 Dec 2024 06:59:29 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5187a500e9bsm368428e0c.16.2024.12.10.06.59.29
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 06:59:29 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-4aff31b77e8so1120063137.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 06:59:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxsgvMYSFDynJbe1/GPltx3p5xmJIi3AYhDKvdCkhlvSounRknWDHlBqqtJnTa8lQeKRZwnVfipPE=@lists.infradead.org
X-Received: by 2002:a05:6102:54a3:b0:4af:bda1:8109 with SMTP id
 ada2fe7eead31-4b116250734mr4852879137.21.1733842769143; Tue, 10 Dec 2024
 06:59:29 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-5-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-5-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 15:59:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWhGvXhjTV+NYzw2WoDuH6BxQWFdUZC_qkon5vSYsjAhg@mail.gmail.com>
Message-ID: <CAMuHMdWhGvXhjTV+NYzw2WoDuH6BxQWFdUZC_qkon5vSYsjAhg@mail.gmail.com>
Subject: Re: [PATCH v2 04/15] soc: renesas: rz-sysc: Add SoC detection support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com, 
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_065931_568314_9448BAE4 
X-CRM114-Status: GOOD (  29.02  )
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

SGkgQ2xhdWRpdSwKCk9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0IDEwOjIx4oCvQU0gQ2xhdWRpdSA8
Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8
Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4KPiBUaGUgUlogU1lTQyBjb250cm9s
bGVyIGhhcyByZWdpc3RlcnMgdGhhdCBrZWVwIHRoZSBTb0MgSUQgZGF0YS4gQWRkCj4gZHJpdmVy
IHN1cHBvcnQgdG8gcmV0cmlldmUgdGhlIFNvQyBJRCBhbmQgcmVnaXN0ZXIgYSBTb0MgZHJpdmVy
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJw
LnJlbmVzYXMuY29tPgo+IC0tLQo+Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIHRoaXMgd2FzIHBhdGNo
IDA1LzE2IGluIHYxCj4gLSBjaGFuZ2VkIHBhdGNoIHRpdGxlIGFuZCBkZXNjcmlwdGlvbgo+IC0g
YWRkZWQgU29DIGluaXRpYWxpemF0aW9uIGNvZGUgaW4gaXRzIG93biBmdW5jdGlvbgo+IC0gYWRk
cmVzc2VkIHRoZSByZXZpZXcgY29tbWVudHMKPiAtIGludHJvZHVjZWQgc3RydWN0IHJ6X3N5c2Nf
c29jX2lkX2luaXRfZGF0YSBhbmQgYWRqdXN0ZWQgdGhlIGNvZGUKPiAgIGFjY29yZGluZ2x5Cj4g
LSBkcm9wcGVkIHRoZSBSWi9HM1MgU29DIGRldGVjdGlvbiBjb2RlIChpdCB3aWxsIGJlIGludHJv
ZHVjZWQgaW4KPiAgIGEgc2VwYXJhdGUgcGF0Y2gpCgpUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCgo+
IC0tLSBhL2RyaXZlcnMvc29jL3JlbmVzYXMvcnotc3lzYy5jCj4gKysrIGIvZHJpdmVycy9zb2Mv
cmVuZXNhcy9yei1zeXNjLmMKPiBAQCAtMjExLDYgKzIxNCw1OSBAQCBzdGF0aWMgaW50IHJ6X3N5
c2Nfc2lnbmFsc19pbml0KHN0cnVjdCByel9zeXNjICpzeXNjLAo+ICAgICAgICAgcmV0dXJuIDA7
Cj4gIH0KPgo+ICtzdGF0aWMgaW50IHJ6X3N5c2Nfc29jX2luaXQoc3RydWN0IHJ6X3N5c2MgKnN5
c2MsIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKm1hdGNoKQo+ICt7Cj4gKyAgICAgICBjb25z
dCBzdHJ1Y3Qgcnpfc3lzY19pbml0X2RhdGEgKnN5c2NfZGF0YSA9IG1hdGNoLT5kYXRhOwo+ICsg
ICAgICAgY29uc3Qgc3RydWN0IHJ6X3N5c2Nfc29jX2lkX2luaXRfZGF0YSAqc29jX2RhdGEgPSBz
eXNjX2RhdGEtPnNvY19pZF9pbml0X2RhdGE7Cj4gKyAgICAgICBzdHJ1Y3Qgc29jX2RldmljZV9h
dHRyaWJ1dGUgKnNvY19kZXZfYXR0cjsKPiArICAgICAgIGNvbnN0IGNoYXIgKnNvY19pZF9zdGFy
dCwgKnNvY19pZF9lbmQ7Cj4gKyAgICAgICB1MzIgdmFsLCByZXZpc2lvbiwgc3BlY2lmaWNfaWQ7
Cj4gKyAgICAgICBzdHJ1Y3Qgc29jX2RldmljZSAqc29jX2RldjsKPiArICAgICAgIGNoYXIgc29j
X2lkWzMyXSA9IHswfTsKPiArICAgICAgIHU4IHNpemU7Cgp1bnNpZ25lZCBpbnQgKG9yIHNpemVf
dD8pCgo+ICsKPiArICAgICAgIGlmICghc29jX2RhdGEgfHwgIXNvY19kYXRhLT5mYW1pbHkgfHwg
IXNvY19kYXRhLT5vZmZzZXQgfHwKPiArICAgICAgICAgICAhc29jX2RhdGEtPnJldmlzaW9uX21h
c2spCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwoKQ2Fubm90IGhhcHBlbj8KCj4g
Kwo+ICsgICAgICAgc29jX2lkX3N0YXJ0ID0gc3RyY2hyKG1hdGNoLT5jb21wYXRpYmxlLCAnLCcp
ICsgMTsKPiArICAgICAgIHNvY19pZF9lbmQgPSBzdHJjaHIobWF0Y2gtPmNvbXBhdGlibGUsICct
Jyk7Cj4gKyAgICAgICBzaXplID0gc29jX2lkX2VuZCAtIHNvY19pZF9zdGFydDsKPiArICAgICAg
IGlmIChzaXplID4gMzIpCj4gKyAgICAgICAgICAgICAgIHNpemUgPSAzMjsKCnNpemVvZihzb2Nf
aWQpIGluc3RlYWQgb2YgaGFyZGNvZGVkIDMyCgo+ICsgICAgICAgc3Ryc2NweShzb2NfaWQsIHNv
Y19pZF9zdGFydCwgc2l6ZSk7CgpEb2Vzbid0IHRoaXMgd2lwZSB0aGUgbGFzdCBjaGFyYWN0ZXIs
IGFzIHN0cnNjcHkoKSBhbHdheXMKTlVMLXRlcm1pbmF0ZXMgdGhlIGRlc3RpbmF0aW9uIGJ1ZmZl
cj8KCj4gKwo+ICsgICAgICAgc29jX2Rldl9hdHRyID0gZGV2bV9remFsbG9jKHN5c2MtPmRldiwg
c2l6ZW9mKCpzb2NfZGV2X2F0dHIpLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmICghc29jX2Rl
dl9hdHRyKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiArCj4gKyAgICAgICBz
b2NfZGV2X2F0dHItPmZhbWlseSA9IHNvY19kYXRhLT5mYW1pbHk7CgpTaG91bGRuJ3QgeW91IGR1
cGxpY2F0ZSBmYW1pbHk/IEl0J3MgaW4gX19pbml0Y29uc3QsIGhlbmNlIGZyZWVkIGxhdGVyLgoK
PiArICAgICAgIHNvY19kZXZfYXR0ci0+c29jX2lkID0gZGV2bV9rc3RyZHVwKHN5c2MtPmRldiwg
c29jX2lkLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmICghc29jX2Rldl9hdHRyLT5zb2NfaWQp
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ICsKPiArICAgICAgIHZhbCA9IHJl
YWRsKHN5c2MtPmJhc2UgKyBzb2NfZGF0YS0+b2Zmc2V0KTsKPiArICAgICAgIHJldmlzaW9uID0g
ZmllbGRfZ2V0KHNvY19kYXRhLT5yZXZpc2lvbl9tYXNrLCB2YWwpOwo+ICsgICAgICAgc3BlY2lm
aWNfaWQgPSBmaWVsZF9nZXQoc29jX2RhdGEtPnNwZWNpZmljX2lkX21hc2ssIHZhbCk7Cj4gKyAg
ICAgICBzb2NfZGV2X2F0dHItPnJldmlzaW9uID0gZGV2bV9rYXNwcmludGYoc3lzYy0+ZGV2LCBH
RlBfS0VSTkVMLCAiJXUiLCByZXZpc2lvbik7Cj4gKyAgICAgICBpZiAoIXNvY19kZXZfYXR0ci0+
cmV2aXNpb24pCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ICsKPiArICAgICAg
IGlmIChzb2NfZGF0YS0+aWQgJiYgc3BlY2lmaWNfaWQgIT0gc29jX2RhdGEtPmlkKSB7Cj4gKyAg
ICAgICAgICAgICAgIGRldl93YXJuKHN5c2MtPmRldiwgIlNvQyBtaXNtYXRjaCAocHJvZHVjdCA9
IDB4JXgpXG4iLCBzcGVjaWZpY19pZCk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVW
Owo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIGRldl9pbmZvKHN5c2MtPmRldiwgIkRldGVjdGVk
IFJlbmVzYXMgJXMgJXMgUmV2ICVzXG4iLCBzb2NfZGV2X2F0dHItPmZhbWlseSwKPiArICAgICAg
ICAgICAgICAgIHNvY19kZXZfYXR0ci0+c29jX2lkLCBzb2NfZGV2X2F0dHItPnJldmlzaW9uKTsK
PiArCj4gKyAgICAgICBzb2NfZGV2ID0gc29jX2RldmljZV9yZWdpc3Rlcihzb2NfZGV2X2F0dHIp
Owo+ICsgICAgICAgaWYgKElTX0VSUihzb2NfZGV2KSkKPiArICAgICAgICAgICAgICAgcmV0dXJu
IFBUUl9FUlIoc29jX2Rldik7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0
YXRpYyBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyByel9zeXNjX3JlZ21hcCA9IHsKPiAgICAgICAgIC5u
YW1lID0gInJ6X3N5c2NfcmVncyIsCj4gICAgICAgICAucmVnX2JpdHMgPSAzMiwKPiBAQCAtMjM1
LDE0ICsyOTEsMTUgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgcnpfc3lzY19tYXRjaCk7Cj4g
IHN0YXRpYyBpbnQgcnpfc3lzY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICB7Cj4gICAgICAgICBjb25zdCBzdHJ1Y3Qgcnpfc3lzY19pbml0X2RhdGEgKmRhdGE7Cj4gKyAg
ICAgICBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsKPiAgICAgICAgIHN0cnVjdCBk
ZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gLSAgICAgICBzdHJ1Y3Qgcnpfc3lzYyAqc3lzYzsK
PiAgICAgICAgIHN0cnVjdCByZWdtYXAgKnJlZ21hcDsKPiArICAgICAgIHN0cnVjdCByel9zeXNj
ICpzeXNjOwo+ICAgICAgICAgaW50IHJldDsKPgo+IC0gICAgICAgZGF0YSA9IGRldmljZV9nZXRf
bWF0Y2hfZGF0YShkZXYpOwo+IC0gICAgICAgaWYgKCFkYXRhIHx8ICFkYXRhLT5tYXhfcmVnaXN0
ZXJfb2Zmc2V0KQo+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiArICAgICAgIG1h
dGNoID0gb2ZfbWF0Y2hfbm9kZShyel9zeXNjX21hdGNoLCBkZXYtPm9mX25vZGUpOwo+ICsgICAg
ICAgaWYgKCFtYXRjaCB8fCAhbWF0Y2gtPmRhdGEpCgohbWF0Y2gtPmRhdGEgY2Fubm90IGhhcHBl
bgoKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4KPiAgICAgICAgIHN5c2MgPSBk
ZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnN5c2MpLCBHRlBfS0VSTkVMKTsKPiAgICAgICAgIGlm
ICghc3lzYykKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2Vl
cnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9u
ZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25z
IHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4g
SSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29t
ZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51
cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
