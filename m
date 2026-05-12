Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B56F5CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 06:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hChlGeFGYxbXl2IgSCJ34OpwKRtVX0wlmMLuDBLmvM=; b=jUCf5D3xCfBNK5
	OFiW/0OcFN9GkznGmv+IinMBTcKy+pOj//ihxNNh/2sKR81sWuGqffwT3gAWFbcB/BtTwUHi0RT1V
	UqLZgBy3p3G5YiqD4TksA/38piEO/q1dQZYlhhUOZ4kyxXqACFu0beITFPgYvkJ25GsiQJlSU2/UI
	Y7AkOFb1yl1/mGPEG+j1TInJ96EXI5dleoaSIOfCimLL2YcHnjN4JI5Q+KXECTIVsxz3h+wa5F2uh
	V+lgGeVHQwtwkwhzIz4o36HuobdLCD+OKfwyEbFQFiYlblZxlIjdn3m/CIv+MeGXOz1JGtvIf0Bgq
	DqKe66306IdT7gO1Ab3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgNP-0000000FkOX-19nB;
	Tue, 12 May 2026 06:13:55 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgNM-0000000FkO6-2bQy
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 06:13:53 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-2f36da5c8fbso5029028eec.0
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 23:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778566432; cv=none;
        d=google.com; s=arc-20240605;
        b=Dyj1ok0K1NjMVo2soj/gc9qo3ztJ0J1EzaJ9jaSGZw8YIPhqQdEJbIRL8GQ61MgWYu
         4aVDjlHRgvJJsmVkRuS81O4DHwcsAB+/MZx/kY4zzwZ4axHXDoyb7aFhPJOghskk9EA9
         V/nnXW88G+U/uhW1gtiXxBFe3V9NCsQZp+G1SiA5l31Y2ud4NB7Ac5s1sJJdaoELWQht
         xXm641e9h2ugef5qQI1Y6BCyHKRmstZ57AseeGtst0j1fC7KYNqtXES9/9MudNkgeocz
         zMpprFgI9GLs2ALlIMmZtDUWZ352hLNih7C8HakzZ4kUHXoG0aV5tJmf2hBg4oZZpDg9
         YbmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yr8QRs98bsPiw0gF0kGFiK+9h78W1fGBBJoeOfjYUCc=;
        fh=BQnnJ29840X0aDsDt2G94H9Rv3N4vd9YoYVpjFBLIPY=;
        b=QRZW0Otm0DMz2JdD+ydz5V20RYHCafolQHSHzoUBu2EDO3EC2vnU+UEsbD51u7ILkp
         xZcagEpLysU4KBBWdr5Dnxt+AT/v3RU3DoSBvklNLQyfJJQ9Eff/zImcad0EYn/KdlT3
         Yq+SGaCY6owbLpaBmPss2LFYACcOYl/pcsQ2sfop5nOU4tAwBHJOAI9TG5BkT1T6wEjB
         a5jE/+tqt7yVZbqhtmKQ4XELJUug0hLBBtBHdWq88aQ9OTFHqmyepBHU8h3X7lkoed8H
         IjNBg7pKCaC3MnHfnGLX3K4yfHf88M3tUxpP8nfalx75/g+TUrZzOQhOFEubl0klRRoB
         XLiw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778566432; x=1779171232; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yr8QRs98bsPiw0gF0kGFiK+9h78W1fGBBJoeOfjYUCc=;
        b=QTc7f0d4eKJuVVgSjNSWPZG7JLS88YE05X0xPWsTqYW57fmzT/azlc84WrEMy/+Ay8
         Pj+WTc2/U4kauPlHlmf2iWD1QPXhbnn+QHITQeJgKa1RxBtrIUfTO5MGtk3aHFpDyOR/
         lcktypcdQxdXZx4n6D0NJFMLEnS+aJNuZp+Fa7dn6qBSsHiPe6UbgkUkd0Ui6oLvAJcO
         KC0WsfZNTjTvqwewrCepotxD88VXOL/7Sw9Z4vB8a+wbnrvCggro79FU0Bi98pScQRM1
         Hx/r/PyufBs12FjGrHdSGWkhJVBUQoa8p/bpVspDMaw1l9dBdGY57kC0sxayXFi/O4VX
         qTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778566432; x=1779171232;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yr8QRs98bsPiw0gF0kGFiK+9h78W1fGBBJoeOfjYUCc=;
        b=Bp/6jdjd0xIpeOYissycDcnksWY3hPdhjpNHTmu6ktsTbu/V4r72t667zrWjDgbN4u
         MXfwgYbizNq3hVXjHVDozPvT2EEURfEb449FnS1I6NRbUvd3AjYFSZwIiirRtw11Z7wh
         zqNFPVIE2GABSRzL3by+HQ6ujYvOB9tvPn/tgcHFZYENhKLigUlMfzqVnfVBtL5p7QwI
         eKvDe0MOE4iAGuBpb3jcFXRhnlV67jSnVzpkjiz3U6+hReefT1b8aMoWEFFhjGNvHLur
         I1sl3jDMxLrP7bQFCxWcZ22+uEOHxT7/M92oUPw1CDZhtwPC6zmG3EM0vEBUvbF48qc1
         mpsw==
X-Forwarded-Encrypted: i=1; AFNElJ8cEAOfFtYDvwtiavq4NFzFjQzHmD7NNX+CugMVD3uWRX7e1DJYsKI3B1zqhutJKU3ap889asYNLhg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzaZFNkB1X4qfPn3j/qoOv2QFbbxg7+wGC/SQr4Zh3oSShRsrwS
	U0BNa1z8imbS0+yNlmy7DPbQTkobNSsjmBqN+kI3HWe6spab2yTbzm+pXdexkH/KXGgZcLXCJFq
	uUBEPAk397ff24By5+eg4c4ZYcLXpaHY=
X-Gm-Gg: Acq92OFNaAMyZeYMQKmUNwXOqc/nxXmxGs2iGgYTbP0k5+fBkFoDFaIXAGwvE/vm9w4
	xwJLDHY/WtxLSMS5fSc4y8ApqzIsW2wURcsP7j3w++/L84ShXFW8Z3qICQFkWtQ7sPYf57BZEAR
	qfCw400su0SyhvFVPuII24m3Erx907KYB//sNqUk8i+HtnvJSjCnYyZlHQu+2bKLQJgogGQfje2
	rRKZNItBXGKQ5KeVN3w4cUistV2A3c75CmETKZ0i+QnGGFfa+Rjbp1OBLNBaykjimG1DYzgke4i
	Qw7Od2jQ
X-Received: by 2002:a05:7301:7213:b0:2e2:4979:ec7 with SMTP id
 5a478bee46e88-2fb4bff2949mr6162640eec.10.1778566431760; Mon, 11 May 2026
 23:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-3-clamor95@gmail.com>
 <agJ/T8nBGWEoblmd@nchen-desktop>
In-Reply-To: <agJ/T8nBGWEoblmd@nchen-desktop>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 12 May 2026 09:13:40 +0300
X-Gm-Features: AVHnY4L1_bWZXCrp3MmGLMUWBEn-sMyg9m87GKXzm_vHqR-lTAFW3X_ZqIO7y3g
Message-ID: <CAPVz0n173syW9rXy7Qt_N=mChe6WBRLvjRDypcJEC50hPL4OMQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init if
 bus is externally controlled
To: "Peter Chen (CIX)" <peter.chen@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_231352_666589_0A4DF2C7 
X-CRM114-Status: GOOD (  27.71  )
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

0LLRgiwgMTIg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMDQ6MTYgUGV0ZXIgQ2hlbiAoQ0lYKSA8
cGV0ZXIuY2hlbkBrZXJuZWwub3JnPiDQv9C40YjQtToKPgo+IE9uIDI2LTA1LTExIDE2OjU2OjU3
LCBTdnlhdG9zbGF2IFJ5aGVsIHdyb3RlOgo+ID4gSWYgdGhlIFVTQiBjb250cm9sbGVyIGFuZCBQ
SFkgYXJlIGV4dGVybmFsbHkgY29udHJvbGxlZCwgdGhlbiB0aGUKPiA+IHJlZ2lzdHJhdGlvbiBv
ZiB0aGUgY29udHJvbGxlciBhbmQgdGhlIFBIWSBpbml0aWFsaXphdGlvbiBzaG91bGQgYmUKPiA+
IHNraXBwZWQsIHNpbmNlIHRoZXNlIGNvbmZpZ3VyYXRpb25zIG11c3QgYmUgZG9uZSBieSB0aGUg
ZGV2aWNlIHRoYXQKPiA+IGNvbnRyb2xzIHRoZSBidXMgdG8gd29yayBjb3JyZWN0bHkuCj4gPgo+
Cj4gSSBmaW5kIHlvdSBvbmx5IGNvbnRyb2wgVVNCIGNvbnRyb2xsZXIgZGV2aWNlIGFkZCBhdCBQ
SFkgZHJpdmVyLCBtb3N0IG9mIFVTQiBkcml2ZXJzCj4gaGFzIFBIWSBjb250cm9sLCBmb3IgY2hp
cGlkZWEsIGl0IGhhcyBQSFkgY29udHJvbCBhdCBjb3JlLmMsIHdvdWxkIHBsZWFzZSB0cnkgdG8K
PiBhZGFwdCBmb3IgaXQ/Cj4KClVzdWFsbHkgeWVzLCBidXQgdGhpcyBpcyBub3QgdGhlIGNhc2Ug
Zm9yIFRlZ3JhIHVuZm9ydHVuYXRlbHkuIEFzIHlvdQpjYW4gc2VlIFRlZ3JhIHNwZWNpZmljIHNl
Y3Rpb24gb2YgQ2hpcGlkZWEgZHJpdmVyIHNwZWNpZmljYWxseQpkZXNjcmliZXMgd2h5IGl0IGhh
cyB0byBzZXQgUEhZIG1hbnVhbGx5LgoKLyoKICogVVNCIGNvbnRyb2xsZXIgcmVnaXN0ZXJzIHNo
b3VsZG4ndCBiZSB0b3VjaGVkIGJlZm9yZSBQSFkgaXMKICogaW5pdGlhbGl6ZWQsIG90aGVyd2lz
ZSBDUFUgd2lsbCBoYW5nIGJlY2F1c2UgY2xvY2tzIGFyZSBnYXRlZC4KICogUEhZIGRyaXZlciBj
b250cm9scyBnYXRpbmcgb2YgaW50ZXJuYWwgVVNCIGNsb2NrcyBvbiBUZWdyYS4KICovCgpTbyBp
biBvcmRlciB0byBwcm92aWRlIGNvcnJlY3Qgd29yayBvZiBVU0Igd2hlbiBzZXQgYnkgYW4gZXh0
ZXJuYWwKZGV2aWNlLCBib3RoIFBIWSBhbmQgY29udHJvbGxlciBpbml0L2FkZCBtdXN0IGJlIHNr
aXBwZWQuCgo+IFBldGVyCj4KPiA+IFNpZ25lZC1vZmYtYnk6IFN2eWF0b3NsYXYgUnloZWwgPGNs
YW1vcjk1QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvdXNiL2NoaXBpZGVhL2NpX2hk
cmNfdGVncmEuYyB8IDM2ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdXNiL2NoaXBpZGVhL2NpX2hkcmNfdGVncmEuYyBiL2RyaXZlcnMvdXNi
L2NoaXBpZGVhL2NpX2hkcmNfdGVncmEuYwo+ID4gaW5kZXggMzcyNzg4ZjBmOTcwLi41OTMzOTBh
ODE4ZDEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3VzYi9jaGlwaWRlYS9jaV9oZHJjX3RlZ3Jh
LmMKPiA+ICsrKyBiL2RyaXZlcnMvdXNiL2NoaXBpZGVhL2NpX2hkcmNfdGVncmEuYwo+ID4gQEAg
LTMyLDYgKzMyLDcgQEAgc3RydWN0IHRlZ3JhX3VzYiB7Cj4gPiAgICAgICBzdHJ1Y3QgY2xrICpj
bGs7Cj4gPgo+ID4gICAgICAgYm9vbCBuZWVkc19kb3VibGVfcmVzZXQ7Cj4gPiArICAgICBib29s
IGV4dGVybmFsbHlfY29udHJvbGxlZDsKPiA+ICB9Owo+ID4KPiA+ICBzdHJ1Y3QgdGVncmFfdXNi
X3NvY19pbmZvIHsKPiA+IEBAIC0zMTIsMjAgKzMxMywyNSBAQCBzdGF0aWMgaW50IHRlZ3JhX3Vz
Yl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgaWYgKGRldmlj
ZV9wcm9wZXJ0eV9wcmVzZW50KCZwZGV2LT5kZXYsICJudmlkaWEsbmVlZHMtZG91YmxlLXJlc2V0
IikpCj4gPiAgICAgICAgICAgICAgIHVzYi0+bmVlZHNfZG91YmxlX3Jlc2V0ID0gdHJ1ZTsKPiA+
Cj4gPiArICAgICBpZiAoZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoJnBkZXYtPmRldiwgIm52aWRp
YSxleHRlcm5hbC1jb250cm9sIikpCj4gPiArICAgICAgICAgICAgIHVzYi0+ZXh0ZXJuYWxseV9j
b250cm9sbGVkID0gdHJ1ZTsKPiA+ICsKPiA+ICAgICAgIGVyciA9IHRlZ3JhX3VzYl9yZXNldF9j
b250cm9sbGVyKCZwZGV2LT5kZXYpOwo+ID4gICAgICAgaWYgKGVycikgewo+ID4gICAgICAgICAg
ICAgICBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIGVyciwgImZhaWxlZCB0byByZXNldCBjb250
cm9sbGVyIik7Cj4gPiAgICAgICAgICAgICAgIGdvdG8gZmFpbF9wb3dlcl9vZmY7Cj4gPiAgICAg
ICB9Cj4gPgo+ID4gLSAgICAgLyoKPiA+IC0gICAgICAqIFVTQiBjb250cm9sbGVyIHJlZ2lzdGVy
cyBzaG91bGRuJ3QgYmUgdG91Y2hlZCBiZWZvcmUgUEhZIGlzCj4gPiAtICAgICAgKiBpbml0aWFs
aXplZCwgb3RoZXJ3aXNlIENQVSB3aWxsIGhhbmcgYmVjYXVzZSBjbG9ja3MgYXJlIGdhdGVkLgo+
ID4gLSAgICAgICogUEhZIGRyaXZlciBjb250cm9scyBnYXRpbmcgb2YgaW50ZXJuYWwgVVNCIGNs
b2NrcyBvbiBUZWdyYS4KPiA+IC0gICAgICAqLwo+ID4gLSAgICAgZXJyID0gdXNiX3BoeV9pbml0
KHVzYi0+cGh5KTsKPiA+IC0gICAgIGlmIChlcnIpCj4gPiAtICAgICAgICAgICAgIGdvdG8gZmFp
bF9wb3dlcl9vZmY7Cj4gPiArICAgICBpZiAoIXVzYi0+ZXh0ZXJuYWxseV9jb250cm9sbGVkKSB7
Cj4gPiArICAgICAgICAgICAgIC8qCj4gPiArICAgICAgICAgICAgICAqIFVTQiBjb250cm9sbGVy
IHJlZ2lzdGVycyBzaG91bGRuJ3QgYmUgdG91Y2hlZCBiZWZvcmUgUEhZIGlzCj4gPiArICAgICAg
ICAgICAgICAqIGluaXRpYWxpemVkLCBvdGhlcndpc2UgQ1BVIHdpbGwgaGFuZyBiZWNhdXNlIGNs
b2NrcyBhcmUgZ2F0ZWQuCj4gPiArICAgICAgICAgICAgICAqIFBIWSBkcml2ZXIgY29udHJvbHMg
Z2F0aW5nIG9mIGludGVybmFsIFVTQiBjbG9ja3Mgb24gVGVncmEuCj4gPiArICAgICAgICAgICAg
ICAqLwo+ID4gKyAgICAgICAgICAgICBlcnIgPSB1c2JfcGh5X2luaXQodXNiLT5waHkpOwo+ID4g
KyAgICAgICAgICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZmFp
bF9wb3dlcl9vZmY7Cj4gPiArICAgICB9Cj4gPgo+ID4gICAgICAgLyogc2V0dXAgYW5kIHJlZ2lz
dGVyIENoaXBJZGVhIEhEUkMgZGV2aWNlICovCj4gPiAgICAgICB1c2ItPnNvYyA9IHNvYzsKPiA+
IEBAIC0zNDIsMTIgKzM0OCwxNCBAQCBzdGF0aWMgaW50IHRlZ3JhX3VzYl9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgaWYgKG9mX3VzYl9nZXRfcGh5X21vZGUo
cGRldi0+ZGV2Lm9mX25vZGUpID09IFVTQlBIWV9JTlRFUkZBQ0VfTU9ERV9VTFBJKQo+ID4gICAg
ICAgICAgICAgICB1c2ItPmRhdGEuZmxhZ3MgJj0gfkNJX0hEUkNfU1VQUE9SVFNfUlVOVElNRV9Q
TTsKPiA+Cj4gPiAtICAgICB1c2ItPmRldiA9IGNpX2hkcmNfYWRkX2RldmljZSgmcGRldi0+ZGV2
LCBwZGV2LT5yZXNvdXJjZSwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBkZXYtPm51bV9yZXNvdXJjZXMsICZ1c2ItPmRhdGEpOwo+ID4gLSAgICAgaWYgKElTX0VSUih1
c2ItPmRldikpIHsKPiA+IC0gICAgICAgICAgICAgZXJyID0gZGV2X2Vycl9wcm9iZSgmcGRldi0+
ZGV2LCBQVFJfRVJSKHVzYi0+ZGV2KSwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAiZmFpbGVkIHRvIGFkZCBIRFJDIGRldmljZSIpOwo+ID4gLSAgICAgICAgICAgICBnb3Rv
IHBoeV9zaHV0ZG93bjsKPiA+ICsgICAgIGlmICghdXNiLT5leHRlcm5hbGx5X2NvbnRyb2xsZWQp
IHsKPiA+ICsgICAgICAgICAgICAgdXNiLT5kZXYgPSBjaV9oZHJjX2FkZF9kZXZpY2UoJnBkZXYt
PmRldiwgcGRldi0+cmVzb3VyY2UsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHBkZXYtPm51bV9yZXNvdXJjZXMsICZ1c2ItPmRhdGEpOwo+ID4gKyAgICAg
ICAgICAgICBpZiAoSVNfRVJSKHVzYi0+ZGV2KSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGVyciA9IGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUih1c2ItPmRldiksCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZmFpbGVkIHRvIGFkZCBI
RFJDIGRldmljZSIpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gcGh5X3NodXRkb3du
Owo+ID4gKyAgICAgICAgICAgICB9Cj4gPiAgICAgICB9Cj4gPgo+ID4gICAgICAgcmV0dXJuIDA7
Cj4gPiAtLQo+ID4gMi41MS4wCj4gPgo+Cj4gLS0KPgo+IEJlc3QgcmVnYXJkcywKPiBQZXRlcgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
