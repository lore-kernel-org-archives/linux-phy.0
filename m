Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 725EFCCD185
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 18:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qd+Y36W8gJQjjzXheRMqm4jgrn8hkJz8/pO9Dq68i9Y=; b=ASqLCaTHTBTtwu
	dxy9xqHaQCiWeo1aJJMinR9tAayGqZJpHvMahzv12icziJENUeVfa67H9X+boVxV9SeH5qvQIEIKN
	CWQ/lsoEXyfEmINu9g+L2jdCIIlIjnEkrv4nuVZF8CTNqHUdtLN/FW3pFCchYEeRSpoJ24QqSy929
	o2JT6iNzdJC3Ss+PqWIn92/v4OrA7dXTG5yzjtAvKqhOIAlwbLlTrNmG+y/8M3Nlhd2286NQmRTjk
	ZPXMHznTzzIYwEfou4iNDdHR9oJrejRh30Zom2/9Tb2RtZkFBELrUf7GU8BqPRcV7dXx6c76lMdiN
	aohkc9kpRNnkL33mGqGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v96hk-00000002faP-0ApX;
	Wed, 15 Oct 2025 18:58:32 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v96hg-00000002fZ8-3GFW
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 18:58:29 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2681660d604so75185965ad.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 11:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760554708; x=1761159508; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fRwPKnk8qfrHFphbSwARuokxhcbVBpznEGtVMYZ7BTU=;
        b=U7sGp2lgB4ndQVYYAVtm3l7xfCLKqHD4e4pNp1gupWPEso31KcDskhbJ0wnoh4DKjf
         NvTun1vj1/YvXGwg7rooBt49l+IXKylAwSNCZ0zAm/vbD4SgO0cznE9mGcySY5xtrn50
         h8FK13pL8Knu5BqCNYu5B9hxWmv/XkGgd5FJE6PHJSX4NL7Xw5/G8l+WjWfWsZWBxnxt
         RfJEqulVrckRNyIdbh38RJmrZRzLmJEBOI40uRBuE5Q6ztwEgNLhSiRxmP/PiRJCxpeV
         l4byNdpcdODBQirAEh/7kUz/76Um4nuWE7KXMYoWb4rIySCs2urAOVIy+mw1KOjc3XQn
         8NiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760554708; x=1761159508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fRwPKnk8qfrHFphbSwARuokxhcbVBpznEGtVMYZ7BTU=;
        b=K+PP/S3KeTN/zjozB/goNs5e55e0VuoCecZOr9DXxsKNKg9gaGejIozXQgXcHezX0y
         X1G7eESzw7Q6vLteEvkN73re3SgAjHxvRDDALIYmdGCRwV9QCMLjMnpeBG2k8ENwQuZs
         /O5ugkaMhn7Q3t5yM02nX5AbZCnk9HHug09TtcC1ZBw5/xdRve7XBYMbz7dpsdryAh9u
         Ob3D/wrbBedSz1nmrAZjeLCkiZoYC0nAWYCSK4qa4cjj+bcModLEefKA3ZBnA18KPrGy
         52N+591sk5c6j1v3ib7m4a00I4nTSK/kFLzCpHSqz5fJe9REgldpEVwB72J2ZGaCf8Q+
         e2rA==
X-Forwarded-Encrypted: i=1; AJvYcCVWZNnsS93B0DaDTLhH+GAe/sdOtu5U92Y2+f7AMqAPoLq73G+sU/t67u0eiyF1bfoUwn/Bz6hUIM4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOBrRtHrW+3WNCyS0D+ek7DUo56aZG6tfmmg+YQV3RZxMdZSAx
	X6v4/dpW+60KUQwWYVCconn7+2XAecGlz1tjCD0bne0S1fzOH6QTSljAJyf6lP7ZhMc2uH0Vuwm
	74FcmX3EwpEjShB6pH5NexTeSEiUzoXP2C/+8otqB
X-Gm-Gg: ASbGncvcCUBMt52qnVFMM4cicr9fQzMBP9Z0LbfNFwqjyE4fHDbWDBv6Z/YugrT48Da
	lbx90j/uObwR5wqu1iwVFtZf5k3GtzIdJUkHWOv9uB/xzg1Mx+zrSxhyKgJR3yQTrrvUweR6HNr
	c+5GpD8YseaYhmCHaTTgvx+1wapahvY55rxXBazthzmupQglNkG0EzfbUGMpvmT1jMYdYXND4XS
	7D4ObkDumBoSBf/F24/hubnHLwmsld4YeyhOLi+xOD82iD+d5TGhzJm6Zaeg2eA197lNWfGpuJV
	9b4z1SHSPQyybbxFSYOxysF3
X-Google-Smtp-Source: AGHT+IFnYsW3w1gFetllx0+5CiL7Rf74v6cd4M6iTK6ClRMgKt3X+k4ZS1SInKpJctWdDoRuk+7QXEWu/txY1MI7yL0=
X-Received: by 2002:a17:903:37c7:b0:275:b1cf:6dd9 with SMTP id
 d9443c01a7336-290272f80dfmr360656995ad.52.1760554707274; Wed, 15 Oct 2025
 11:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-4-royluo@google.com>
 <75756635-b374-4441-8526-175210e01163@kernel.org> <CA+zupgwHFpP5GEwGxOksmLJBU7+Kr_o0p50Pad1NmwNB0AxcGA@mail.gmail.com>
 <20251015130538.GA3214399-robh@kernel.org>
In-Reply-To: <20251015130538.GA3214399-robh@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Wed, 15 Oct 2025 11:57:50 -0700
X-Gm-Features: AS18NWDABi6Rc7VHdjUz_InyfGjFdsf7Veklfegj5HRf0gGUj-mD1x86yUCd9pU
Message-ID: <CA+zupgxAhErw4i0Q13hyXE2_sQSowzDgZ4Yv8o1tcZQS7G7a-Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_115828_812655_C7D4CAE2 
X-CRM114-Status: GOOD (  30.70  )
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

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgNjowNeKAr0FNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBPY3QgMTMsIDIwMjUgYXQgMDY6NDY6MzlQTSAtMDcw
MCwgUm95IEx1byB3cm90ZToKPiA+IE9uIEZyaSwgT2N0IDEwLCAyMDI1IGF0IDU6MTHigK9QTSBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBP
biAxMC8xMC8yMDI1IDIyOjE2LCBSb3kgTHVvIHdyb3RlOgo+ID4gPiA+ICsgIHJlZzoKPiA+ID4g
PiArICAgIGl0ZW1zOgo+ID4gPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBVU0IyIFBIWSBjb25m
aWd1cmF0aW9uIHJlZ2lzdGVycy4KPiA+ID4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogRGlzcGxh
eVBvcnQgdG9wLWxldmVsIHJlZ2lzdGVycy4KPiA+ID4gPiArICAgICAgLSBkZXNjcmlwdGlvbjog
VVNCIHRvcC1sZXZlbCBjb25maWd1cmF0aW9uIHJlZ2lzdGVycy4KPiA+ID4gPiArCj4gPiA+ID4g
KyAgcmVnLW5hbWVzOgo+ID4gPiA+ICsgICAgaXRlbXM6Cj4gPiA+ID4gKyAgICAgIC0gY29uc3Q6
IHUycGh5X2NmZwo+ID4gPiA+ICsgICAgICAtIGNvbnN0OiBkcF90b3AKPiA+ID4gPiArICAgICAg
LSBjb25zdDogdXNiX3RvcF9jZmcKPiA+ID4gPiArCj4gPiA+ID4gKyAgIiNwaHktY2VsbHMiOgo+
ID4gPiA+ICsgICAgY29uc3Q6IDEKPiA+ID4gPiArCj4gPiA+ID4gKyAgY2xvY2tzOgo+ID4gPiA+
ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4gPiArCj4gPiA+ID4gKyAgcmVzZXRzOgo+ID4gPiA+ICsg
ICAgbWF4SXRlbXM6IDEKPiA+ID4gPiArCj4gPiA+ID4gKyAgcG93ZXItZG9tYWluczoKPiA+ID4g
PiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ID4gKwo+ID4gPiA+ICsgIG9yaWVudGF0aW9uLXN3aXRj
aDoKPiA+ID4gPiArICAgIHR5cGU6IGJvb2xlYW4KPiA+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+
ID4gPiA+ICsgICAgICBJbmRpY2F0ZXMgdGhlIFBIWSBhcyBhIGhhbmRsZXIgb2YgVVNCIFR5cGUt
QyBvcmllbnRhdGlvbiBjaGFuZ2VzCj4gPiA+ID4gKwo+ID4gPiA+ICtyZXF1aXJlZDoKPiA+ID4g
PiArICAtIGNvbXBhdGlibGUKPiA+ID4gPiArICAtIHJlZwo+ID4gPiA+ICsgIC0gcmVnLW5hbWVz
Cj4gPiA+ID4gKyAgLSAiI3BoeS1jZWxscyIKPiA+ID4gPiArICAtIGNsb2Nrcwo+ID4gPiA+ICsg
IC0gcmVzZXRzCj4gPiA+ID4gKyAgLSBwb3dlci1kb21haW5zCj4gPiA+ID4gKyAgLSBvcmllbnRh
dGlvbi1zd2l0Y2gKPiA+ID4gPiArCj4gPiA+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxz
ZQo+ID4gPiA+ICsKPiA+ID4gPiArZXhhbXBsZXM6Cj4gPiA+ID4gKyAgLSB8Cj4gPiA+ID4gKyAg
ICBzb2Mgewo+ID4gPiA+ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ID4gPiA+ICsg
ICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgICB1c2Jf
cGh5OiB1c2JfcGh5QGM0MTAwMDAgewo+ID4gPiA+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0g
Imdvb2dsZSxnczUtdXNiLXBoeSI7Cj4gPiA+ID4gKyAgICAgICAgICAgIHJlZyA9IDwwIDB4MGM0
NTAwMTQgMCAweGM+LAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICA8MCAweDBjNjM3MDAwIDAg
MHhhMD4sCj4gPiA+Cj4gPiA+IFlvdSBwcm9iYWJseSBtaXNzIERQIHN1cHBvcnQgYW5kIHRoaXMg
ZG9lcyBub3QgYmVsb25nIGhlcmUuCj4gPgo+ID4gVGhpcyByZWdpc3RlciBzcGFjZSBpc24ndCBz
b2xlbHkgZm9yIERQIG9wZXJhdGlvbiwgYSBzaWduaWZpY2FudCBwb3J0aW9uCj4gPiBtYW5hZ2Vz
IHRoZSBjdXN0b20gY29tYm8gUEhZLiBDb25zZXF1ZW50bHksIHRoaXMgc3BhY2UgaXMgZXNzZW50
aWFsCj4gPiBldmVuIGZvciBVU0Itb25seSBvcGVyYXRpb24uIFdlIGNhbiBleHBlY3QgbW9yZSBy
ZWdpc3RlcnMgaW4gdGhlIHNwYWNlCj4gPiB0byBiZSB1dGlsaXplZCB3aGVuIERQIHN1cHBvcnQg
aXMgYWRkZWQuCj4gPgo+ID4gV2hpbGUgSSBhY2tub3dsZWRnZSB0aGUgY3VycmVudCBuYW1lIGlz
IGNvbmZ1c2luZywgaXQgZGlyZWN0bHkgcmVmbGVjdHMKPiA+IHRoZSBoYXJkd2FyZSBkb2N1bWVu
dGF0aW9uLiBXZSBjYW4gZWl0aGVyIGFkaGVyZSB0byB0aGUgaGFyZHdhcmUKPiA+IGRvY3VtZW50
YXRpb24ncyBuYW1pbmcgb3IgcHJvcG9zZSBhIG1vcmUgZGVzY3JpcHRpdmUgYWx0ZXJuYXRpdmUu
Cj4gPiBXaGF0J3MgeW91ciBwcmVmZXJlbmNlPwo+ID4KPiA+ID4KPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgPDAgMHgwYzQ1MDAyYyAwIDB4ND47Cj4gPiA+Cj4gPiA+IFRoYXQncyBub3QgYSBz
ZXBhcmF0ZSBhZGRyZXNzIHNwYWNlLiBJIHJlYWxseSwgcmVhbGx5IGRvdWJ0IHRoYXQKPiA+ID4g
aGFyZHdhcmUgZW5naW5lZXJzIGNhbWUgd2l0aCBhZGRyZXNzIHNwYWNlcyBvZiBvbmUgd29yZCBs
b25nLgo+ID4KPiA+IEkgaW5pdGlhbGx5IGNyZWF0ZWQgdGhpcyBzcGFjZSB0byBhY2Nlc3MgdGhl
IHVzYjJvbmx5IG1vZGUgcmVnaXN0ZXIsCj4gPiB3aGljaCBtdXN0IGJlIHByb2dyYW1tZWQgd2hl
biB0aGUgY29udHJvbGxlciBvcGVyYXRlcyBpbiBoaWdoLXNwZWVkCj4gPiBvbmx5IG1vZGUgd2l0
aG91dCB0aGUgVVNCMyBQSFkgaW5pdGlhbGl6ZWQuIFVwb24gcmV2aWV3LCBJIG5vdwo+ID4gYmVs
aWV2ZSB0aGUgY29udHJvbGxlciBkcml2ZXIgaXMgdGhlIGJldHRlciBsb2NhdGlvbiBmb3IgdGhp
cyBjb25maWd1cmF0aW9uLAo+ID4gYXMgdGhlIHJlZ2lzdGVyIGxvZ2ljYWxseSBiZWxvbmdzIHRo
ZXJlIGFuZCB0aGUgY29udHJvbGxlciBjYW4gdGVsbAo+ID4gd2hldGhlciB1c2IzIHBoeSBpcyBn
b2luZyB0byBiZSBpbml0aWFsaXplZC4KPiA+Cj4gPiBUaGF0IGlzLCBJJ20gcmVtb3ZpbmcgdGhp
cyByZWdpc3RlciBzcGFjZSBpbiB0aGUgbmV4dCBwYXRjaC4KPgo+IFlvdSBhcmUgbWlzc2luZyB0
aGUgcG9pbnQuIFdoYXQgZXhpc3RzIGZyb20gMHgwYzQ1MDAyMC0yYyBhbmQKPiAweDBjNDUwMDAw
LTB4MTQgZm9yIHRoYXQgbWF0dGVyPyBIYXJkd2FyZSBibG9ja3MgZG9uJ3QganVzdCBzdGFydCBv
bgo+IHVuYWxpZ25lZCBib3VuZGFyaWVzIGxpa2UgMHgxNCBvciAweDJjLiBEVCBkZXNjcmliZXMg
dGhlIGgvdyBibG9ja3MsIG5vdAoKUm9iLAoKVGhhbmtzIGZvciBjaGltaW5nIGluLiBMZXQgbWUg
ZWxhYm9yYXRlIHRoZSByZWdpc3RlciBsYXlvdXQgaGVyZToKVGhlIHJlZ2lzdGVyIHNwYWNlIDB4
MGM0NTAwMDAgLSAweDAwNDUwMDQzIGlzIHN1cHBvc2VkIHRvCmJlIGFzc2lnbmVkIHRvIHRoZSBV
U0IgY29udHJvbGxlci4gSG93ZXZlciwgdGhlIFVTQiBwaHkgaGFzCnRvIGFjY2VzcyBhIHNtYWxs
IHBvcnRpb24gb2YgaXQsIGkuZS4gMHgwYzQ1MDAxNCAtIDB4MGM0NTAwMjAsCmluIG9yZGVyIHRv
IGluaXRpYWxpemUgdXNiMiBwaHkuIFRoaXMgaXMgcmVhbGx5IHVuZm9ydHVuYXRlIGFuZAptYWtl
cyB0aGluZ3MgbW9yZSBjb21wbGljYXRlZCB0aGFuIGl0IHNob3VsZCd2ZSBiZWVuLgoKVGhlIGN1
cnJlbnQgcGF0Y2ggaXMgYWRkcmVzc2luZyBpdCBieSBzcGxpdHRpbmcgdGhlIHJlZ2lzdGVyIHNw
YWNlOgotIFVTQiBwaHk6IDwwIDB4MGM0NTAwMTQgMCAweGM+Ci0gVVNCIGNvbnRyb2xsZXI6IDww
IDB4MGM0NTAwMDAgMCAweDE0PiwgPDAgMHgwYzQ1MDAyMCAwIDB4MjM+Cgo+IGp1c3Qgbm9kZXMg
b2Ygd2hhdCBhIGRyaXZlciBuZWVkcy4gU28gaWYgdGhlIDB4MmMgcmVnaXN0ZXIgbmVlZHMgdG8g
YmUKPiBhY2Nlc3NlZCBieSB0aGUgVVNCIGRyaXZlciwgdGhhdCdzIGZpbmUsIGJ1dCB0aGUgcmVn
aXN0ZXIgZG9lc24ndCBnbyBpbgo+IHRoZSBVU0IgY29udHJvbGxlciBub2RlICdyZWcnLiBBIHBy
b3BlcnR5IHdpdGggYSBwaGFuZGxlIHRvIHRoZSBub2RlCj4gZGVmaW5pbmcgYWxsIHRoZSAweDBj
NDUwMDAwIHJlZ2lzdGVycyBhbmQgYW4gb2Zmc2V0IChpZiBuZWVkZWQpIGlzCj4gdHlwaWNhbGx5
IHdoYXQgd2UgZG8gdGhlcmUuIE9yIHlvdSBjYW4ganVzdCBmaW5kIHRoYXQgbm9kZSBieQo+IGNv
bXBhdGlibGUuCgpKdXN0IHRvIG1ha2Ugc3VyZSB3ZSdyZSBvbiB0aGUgc2FtZSBwYWdlLCBhcmUg
eW91IHN1Z2dlc3RpbmcKbWFraW5nIHRoZSByZWdpc3RlciBzcGFjZSBhIHN5c2NvbiBub2RlIFsx
XT8gc29tZXRoaW5nIGxpa2UgdGhpczoKCnVzYl9jZmdfY3NyOiB1c2JfY2ZnX2NzckBjNDUwMDAw
IHsKICBjb21wYXRpYmxlID0gInN5c2NvbiI7CiAgcmVnID0gPDAgMHgwYzQ1MDAwMCAweDAgMHg0
Mz47Cn07Cgp1c2JAYzQwMDAwMCB7CiAgLi4uCiAgdXNiLWNmZy1zeXNjb24gPSA8JnVzYl9jZmdf
Y3NyPjsKICAuLi4KfTsKCnVzYl9waHlAYzYzNzAwMCB7CiAgLi4uCiAgdXNiLWNmZy1zeXNjb24g
PSA8JnVzYl9jZmdfY3NyPjsKICAuLi4KfQoKWzFdIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZmQvc3lzY29uLnlhbWwKClRoYW5rcywKUm95IEx1bwoKPgo+IFJvYgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
