Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236C6CD4851
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 08:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MztGER76d6uvIQ/rjY+2/O/YdD5HqzJY6TTYo4wzxFE=; b=aT7bchbWpF7CNy
	OBnvd5H4NV0Jl0WRzWljMIfRJP/3RWkkfAR2GbmDNxOpdwpBrf1tFZaGHUnJHFJQOKW2VIfOB3DvR
	f6bVBZ73Rf3draBRbx/iJWXunQKhXy0v893Is1/OR1JG1iqvxDMYepkDD++XldMXjFdvrOZk4GM8C
	VPcSD9S/d07zGXJBeBX1unXDYlJZwkvk+D8l+CdHlneiaaDdGx8+FRjq+TD+SEUuuTVSAPuD3VgEe
	B4Ia+BpkvMwEB4vtjRojPbWWt0Ft5aVwvA4l/00xJSqdtjvs+0VHlzfeWTKxW5+SiVQBEW6frZsoF
	wk700QRjL87tZIRaoOhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNo3J-00000007kx7-2Q74;
	Fri, 15 May 2026 08:37:49 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNo3G-00000007kwa-3gCn
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 08:37:48 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-2f3c623322bso15205745eec.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 01:37:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778834266; cv=none;
        d=google.com; s=arc-20240605;
        b=jDpjH9J4ltrkLJy4R2oLh0LMxD474alGM7xC4k/74PS74C2FT7V5k6h+CAxrpWUSn7
         5CZOk1K7UXewfPJX4FZa1FSKSitLHrnW0tSikqMCjGqn6cCEyHhd61wm98vK+6rWXOrG
         soy7MuOgUnakjd2A95T0YYgfL7kdB8DnbU0if7YEn0Mf8/tjZPRyEBSTL+tdKOlCs8SX
         EovB9OfwS4LHs14z31R1rDqlQRXuDaeNK5+TlU6wmUxONMco+xxLNZVwLnzB4crQbduI
         PkwZIqrWXwVjKFBSEZfntL8Nrsxn2Se83/gvQQlJqLb5Wq1kRsEUo2Q3qWDcNb15Dnab
         09HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Me5hEq/uVA2vry/WusH3UXPaCOwfFKJKOpGLMOeOsm4=;
        fh=yfz2chVuNEzEm5FPXjjqs8/9d3YIOAM9re4ZoNuy/Uo=;
        b=VNTR14NuoZv8kpFRprJoBs+MoZAUNe4FDhbmpjQ78QSapho7Ge4DyO3EIsdqVGtyAC
         ECiWQEnAxghzG/o8xYeNwAbCKdZNbn8MA85/gE3BcBP+thT7y/0U3TbN5FSbmY+g4ft7
         CW2zeJ+Aftl9wzzb9E4kyjVEXT1QJZCBHYkPo8Nzvh8uq526pT3BE6jePsZ4OV22TQXh
         OrCTDiEdlUoCT4NHb3g9ukolf1PmBD70nEdiYBiWMTAne+T6Ttr6Isjz/6n+eAXEacwa
         6AXEQ74ptxN2o7PTh1//qspPqv9RlaYrrlBBuXxfYBfx0xIEGQsl0og71V2k5rmKgAxz
         ffJw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778834266; x=1779439066; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Me5hEq/uVA2vry/WusH3UXPaCOwfFKJKOpGLMOeOsm4=;
        b=e+ytpoB0quw9zZhkZglUHMcloqa4vkrRpU6UqoyNVq+fDV8YJy/u1ssolmapcgk8fB
         7/HHQbauG8npaNcvDCpN7ejGOMz4uaC3kOxtmEdj9pCtYhTeSiRHC8z21oTU4LAzxsE4
         tcCgV+8bTqO19E31RQ0vOly/5D6mIpm13HtTq+pBxRvlWCiMp0BVNd2s7RcskDs/E2iW
         wFN8nLvJK8NoDYm2AgjFBl3ilYBzWdMXZYs2xmvXEds2/j2ynG5ThnfmRF7iFLxo6cFN
         KI46cw1K3KaV2kNkFtBdy6DFfsYWKc4FC2xTOdEB9lxcqYhRkCJ7sRjepCSr5wOBIGTN
         gZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778834266; x=1779439066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Me5hEq/uVA2vry/WusH3UXPaCOwfFKJKOpGLMOeOsm4=;
        b=bF3DKh1nXx2k26X9jgx8ny7ZwM4YIZ3KXHNQN6dau45WEOpgknIfuSyJhiWw2tzQJ+
         LigEops0G0pLSGeSFKpc+k+vANXQI5QvMxUv4bClRUXhcHi3PPf7vdCoCia5Wy8P8swN
         jUy2ytIUK4FATKgQ4DMBJ2nb/bEYU59/54FBboeAnmQwOwrSrSlhvM3PIA4KuU/QaK2j
         Dy3sW7qTruSY2+sGIplB3hLJABUMqVXTjjm9GJj03azT9uFUDXFDh3r2hVM1Mg0Iknl9
         W5Ps3sTy7uHWOmzg55rpiUM34Dtqg/9rW5ScZL6ASh5c2S872yjjlfAZG8QxND4ZG4tf
         fxRg==
X-Forwarded-Encrypted: i=1; AFNElJ9o0fDKpgNavRuArpbl0+s6Po2H9VHvvLI88fbwqgz6Pobiub2jybFI9ejgr0aUlfSo2ep5tOoyiwk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYz0qlsNlwP5Ipzz6IOXKM1fDjAsR6yiZY/wo/98+g+8aj+4u8
	Th+D3pXt+hJvKRA6WMfrT38FFaG7J1GJGeMN4rpHGgQCfJZBEC+bH8fxkdzg8R43qzjra+QFt0I
	WiQ9Rl3jwl0A4SKPbe8MXlaCmfA3+6zA=
X-Gm-Gg: Acq92OHDQmbRonDDvDuYpC0t2btTjiQ8JwXu6HsoyY9pTJA+HZi2lld/IcW3GsmWtrV
	JhUCOOO5aLB/ptZrr8pLLy62J6r+lxLo/aZhB+Fc1F6z7BCUTlmYgBEEpPyGTwZFbArRzppkAfl
	x5Je8t0eCGEc3DnlUnkZT4RA1zt+5ceQmDN3BYru2FqKvcn5UfQcWHwcyY+af11O8rGIyBso/rE
	uY/2N8vB3LsWod2nQZPhcLiu1WZnCIKwBtNzqzyDBdsiAVO4qO+tl/SGb7uH+ba10VK0dptpbrB
	BksuVkMX
X-Received: by 2002:a05:7300:fb83:b0:2ed:ff78:2c12 with SMTP id
 5a478bee46e88-303986b7f00mr1545456eec.34.1778834265492; Fri, 15 May 2026
 01:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-6-clamor95@gmail.com>
 <20260515-utopian-malamute-of-patience-367e8e@quoll>
In-Reply-To: <20260515-utopian-malamute-of-patience-367e8e@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Fri, 15 May 2026 11:37:34 +0300
X-Gm-Features: AVHnY4LfeFEmg-csCdRMVtN73Y-dqI06XuWSB80BMJnQTmRPDx1qbsh-tCMg8j0
Message-ID: <CAPVz0n2wrAdU0JKx7eb7uosCcoGayqNchK591VPph-5_nBAMXg@mail.gmail.com>
Subject: Re: [PATCH v1 5/6] dt-bindings: phy: tegra: Document Nvidia Tegra
 XMM6260 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen <peter.chen@kernel.org>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_013746_918863_13ECA3F6 
X-CRM114-Status: GOOD (  22.63  )
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

0L/RgiwgMTUg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTE6MjAgS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPiDQv9C40YjQtToKPgo+IE9uIE1vbiwgTWF5IDExLCAyMDI2IGF0
IDA0OjU3OjAwUE0gKzAzMDAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6Cj4gPiBEb2N1bWVudCB0
aGUgWE1NNjI2MCBQSFkgdXNlZCBieSB2YXJpb3VzIGRldmljZXMgYmFzZWQgb24gdGhlIE52aWRp
YSBUZWdyYQo+ID4gU29DLCBkZXNjcmliaW5nIGl0cyB1c2FnZQo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4u
Li9iaW5kaW5ncy9waHkvbnZpZGlhLHRlZ3JhLXhtbTYyNjAueWFtbCAgICB8IDU4ICsrKysrKysr
KysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKQo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L252
aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udmlkaWEsdGVncmEteG1tNjI2MC55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udmlkaWEsdGVncmEteG1tNjI2MC55
YW1sCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4wMzQ2
NDMzYzk3NzIKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvbnZpZGlhLHRlZ3JhLXhtbTYyNjAueWFtbAo+ID4gQEAgLTAsMCAr
MSw1OCBAQAo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0y
LUNsYXVzZSkKPiA+ICslWUFNTCAxLjIKPiA+ICstLS0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0
cmVlLm9yZy9zY2hlbWFzL3BoeS9udmlkaWEsdGVncmEteG1tNjI2MC55YW1sIwo+ID4gKyRzY2hl
bWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+
ID4gK3RpdGxlOiBOdmlkaWEgVGVncmEgUEhZIGZvciBYTU02MjYwIG1vZGVtCj4KPiBYTU02MjYw
IGlzIEluZmluZW9uIG1vZGVtLCBzbyBhbnkgY29tYmluYXRpb24gd2l0aCBudmlkaWEsdGVncmEg
aXMgdmVyeQo+IGNvbmZ1c2luZy4KPgoKTWF5IHlvdSBwbGVhc2Ugc3VnZ2VzdCBob3cgdG8gYWRq
dXN0IHRoZSBuYW1lIHRoZW4/IFRoYW5rIHlvdS4KCj4gPiArCj4gPiArZGVzY3JpcHRpb246Cj4g
PiArICBBIGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24gdXNlZCBpbiBUZWdyYSBTb0NzIHRvIHByb3Zp
ZGUgcHJvcGVyIGludGVyYWN0aW9uCj4gPiArICBiZXR3ZWVuIHRoZSBhcHBsaWNhdGlvbiBwcm9j
ZXNzb3IgYW5kIHRoZSBtb2RlbSwgYXMgd2VsbCBhcyBjb250cm9sIG92ZXIKPiA+ICsgIG9uZSBv
ZiB0aGUgU29DJ3MgVVNCIGxpbmVzIGZvciB0aGUgbW9kZW0uCj4gPiArCj4gPiArbWFpbnRhaW5l
cnM6Cj4gPiArICAtIFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWlsLmNvbT4KPiA+ICsK
PiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAgY29tcGF0aWJsZToKPiA+ICsgICAgY29uc3Q6IG52aWRp
YSx0ZWdyYS14bW02MjYwCj4KPiBBbHNvIGhlcmUuCj4KPiBXaGF0IHNvcnQgb2YgcGh5IGlzIHRo
aXM/IFNvIGZhciBsb29rcyBtb3JlIGxpa2UgYSBzb2Z0d2FyZSBjb25zdHJ1Y3QuCj4KCkluZmlu
ZW9uIFhNTTYyNjAgZG9lcyBub3Qgd29yayBhcyBhbiBvcmRpbmFyeSBVU0IgbW9kZW0sIGl0IGlz
IGEKc3RhbmRhbG9uZSBDUFUgd2hpY2gganVzdCBleHBvc2VzIGl0c2VsZiB0byBBUCB2aWEgVVNC
LiBJbiBvcmRlciB0byBkbwpzbywgaXQgaGFzIHRvIGhhdmUgY29udHJvbCBvdmVyIGEgVVNCIGJ1
cyBvZiBBUCB3aGljaCBpcyBkZWRpY2F0ZWQgdG8KaXQuIEluIGNhc2Ugb2YgVGVncmEgLSBYTU02
MjYwIGludGVyYWN0aW9uIGl0IGxvb2tzIGxpa2UgdGhpczogc2Vjb25kClRlZ3JhIFVTQiBjb250
cm9sbGVyIGlzIHNldCBpbnRvIEhTSUMgbW9kZSBhbmQgaXMgZGVkaWNhdGVkIHNvbGVseSB0bwp0
aGUgbW9kZW0sIG1vZGVtIGNvbnRyb2xzIHRoaXMgVVNCIGJ1cy4gVGhlbiB0aGUgbWFpbiBYTU02
MjYwIGRyaXZlcgpwZXJmb3JtcyBwb3dlciBhbmQgaW5pdCBzZXF1ZW5jZSBhbmQgb25jZSBpdCBp
cyByZWFkeSBpdCBjYWxscyBwaHkgdG8KcmVnaXN0ZXIgY29udHJvbGxlci4gUGh5IGhhcyBpdHMg
b3duIHN1cHBseSwgY29udHJvbHMgVVNCIGNvbnRyb2xsZXIKZGUvcmVnaXN0ZXIgYW5kIHVzaW5n
IGVuYWJsZSBHUElPIHNlbmRzIHNpZ25hbCB0byBtb2RlbSB0byBwcm9jZWVkLgpBZGRpdGlvbmFs
bHksIHNpbmNlIHNvbWUgWE1NNjI2IHZlcnNpb25zIGhhdmUgYSBmZXcgc3RlcHMgdG8gc2V0dXAK
ZXhwb3NpbmcgZGlmZmVyZW50IFVTQiBkZXZpY2VzLCBwaHkgaGFuZGxlcyBjb250cm9sbGVyIHJl
aW5pdCBmb3IgZWFjaApzdGVwLiBJZiB0cmVhdCBYTU02MjYwIGFzIGFuIHNpbXBsZSBVU0IgbW9k
ZW0gaXQgd2lsbCBuZXZlciBpbml0LgoKT25lIG1vcmUgYmVuZWZpdCBvZiBoYXZpbmcgUEhZIGlz
IHRoYXQgbW9kZW0gZHJpdmVyIGl0c2VsZiBpcyBnZW5lcmljCmFuZCBQSFkgaGFuZGxlcyBTb0Mg
c3BlY2lmaWMgY29uZmlndXJhdGlvbnMgcmVxdWlyZWQgYnkgdGhlIG1vZGVtLgpTaW5jZSB0aGlz
IG1vZGVtIHdhcyB1c2VkIG9uIGEgdmFyaWV0eSBvZiBkaWZmZXJlbnQgU29DJ3MgKEV4eW5vcyBh
bmQKT01BUCBmb3IgZXhhbXBsZSkgdGhleSBjYW4gcmV1c2UgbW9kZW0ncyBkcml2ZXIgYW5kIHBy
b3ZpZGUgb25seSBQSFkKd2hpY2ggaGFuZGxlcyBtb2RlbSBpbnRlcmFjdGlvbnMgd2l0aCB0aGUg
VVNCIGJ1cy4KCj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
