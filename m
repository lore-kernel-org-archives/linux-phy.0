Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25C46C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 10:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wED8Jj4DTH1JnlHNWsPIbkYvpsdmuwGUDOPSPEkk2ME=; b=rzRQWYXKd/RQac
	zoqkI8UYauk6gpZtLZx5v8RAMYs/X6LONyo9yJz0Gq/EfC4MmuGNszrDHSQoEB4qpnuwfPkLoNfyc
	vfkBHi17u9KmRxy9dmsWkEXtHVlMALOSYTQ024pecaYf19dDvLgYrNDODtbJih+k+/rd2esl6mZqi
	WXtQoZFsRREyZYgVeLJ6jBzI3LZU2fVnAnQflzBV97EDKYSa3UNRFoeLZpSKd3craLoArYD3olhAa
	fkMWIUFvlAkjTwRN6Uq9cyakry92F4InNk7kpDLWb2vmRmCrvNIr3zOIjuZm617qEkPGudWJql8OD
	BnwIJ4kWdWFoxcUU82DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgQg-0000000Bsxd-2and;
	Tue, 16 Apr 2024 10:52:46 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgQd-0000000BswV-3GiR
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 10:52:45 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-5aa3af24775so3055625eaf.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 03:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713264761; x=1713869561; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0TxxrwK3iCE49uLbQ7sQ5tDEvF/HbWHLGi4XWFVqlw=;
        b=S6hPMyCNMo7sFJHuM0LPqt6XZ/wm3Gjti8e/1rrrCo/42dmsrX5DSG2bRtpKqv3zXk
         n2jwpXKFyxrIlcvKDlL7ZAbQIOXwoSFCGN4ZEC234wscY5lX1C6AXSSXSa27wSrSqUaj
         0i/eiXrN8a14vsfH4JYrHgULP8jnJQSypRYcEBiw8TRaVTpuqqw3IJPCCx/c8yGGCGb+
         zbdoPLqYEQT9d44763Xd0qX/xRBa968vvdoY+B6uOmS36sxjUVrKpv6nsXgphB9C+dxd
         TVQkceZgtkKIGwzrkT7pve4/s7f9UA0H6DVNqfNV1Pz2HwgW+jhrBbzmdoJvSSspGIQy
         DDog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713264761; x=1713869561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E0TxxrwK3iCE49uLbQ7sQ5tDEvF/HbWHLGi4XWFVqlw=;
        b=SfYNkubKCVjMSHi6LjWYwcF73kSXYmf3CcLyUa/kIeODBGUNw+ED/fptfchGO9iRFJ
         7bVie2ci8D/2cgM3VHkHZ2orxIJFzfDqouCE9/JN0+V9EEgcjKzg8W9d4vfyGwAf2Z51
         osVBn/QAFXLEMOHgiDihoVoZwcy8liAEOx1dfWdqQJJqbwucZF8okk7cOPIjs9T4fYH6
         Id1F0cUEpFyqTgPJr/LT7X+klNFhQGHISGIhGYdTc2rQfXQgACNa9dXOedapyMv/BE43
         /SWqM7XTJ8yF33APi3FhcITh/XA/qxZyWy6AsksXinHgpQBNdbHzi1cH7EjWaM16GuTo
         mmZA==
X-Forwarded-Encrypted: i=1; AJvYcCWcY7gk9p3T4hQervN6y0/HCHyZ+MAFzTtYfoq+QrzrImisX0zYHiWrdqmjxUD1yFpI0YXq3Dq2IjAD+Vy7u2ribYUvxFy+Fpzc29W9Og==
X-Gm-Message-State: AOJu0YwPv4SjjekflVP8Xtd0RpY8mGBvotIPW/kwLK6aHgg5C3yKHKns
	XLId3Bl7QgJj/rjlvfn2o346h/zTLFXePcZpujhUcWhti5Tnhjw/yAtWFeumNeHLy6k6jJ4WawT
	TASsPiIKiJX7p1qybkPAp2R4sLGLUfBxeTpOzgA==
X-Google-Smtp-Source: AGHT+IEqEeJmQdQehCPTNQQMD/tcR6Uw0Nol676WtmyqwgXlvaaJnzKAMXtuWis/RQBtHTHTt/sD2iWj7telCINa9U0=
X-Received: by 2002:a4a:aecb:0:b0:5ac:9efc:3b02 with SMTP id
 v11-20020a4aaecb000000b005ac9efc3b02mr5382919oon.8.1713264761347; Tue, 16 Apr
 2024 03:52:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-2-peter.griffin@linaro.org> <d1aaa3a350315b8eb60aaee416fad4382385ca3a.camel@linaro.org>
In-Reply-To: <d1aaa3a350315b8eb60aaee416fad4382385ca3a.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 11:52:30 +0100
Message-ID: <CADrjBPoMWDqUQiW3YUxKxCRJAXzJb=-eL_kfpeMHgaqg8c1HJg@mail.gmail.com>
Subject: Re: [PATCH 01/17] dt-bindings: clock: google,gs101-clock: add HSI2
 clock management unit
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_035243_892553_70E2A35B 
X-CRM114-Status: GOOD (  15.39  )
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

SGkgQW5kcsOpLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IGZlZWRiYWNrLgoKT24gRnJpLCA1IEFw
ciAyMDI0IGF0IDA4OjE1LCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3Jn
PiB3cm90ZToKPgo+IEhpIFBldGUsCj4KPiBPbiBUaHUsIDIwMjQtMDQtMDQgYXQgMTM6MjUgKzAx
MDAsIFBldGVyIEdyaWZmaW4gd3JvdGU6Cj4gPiBBZGQgZHQgc2NoZW1hIGRvY3VtZW50YXRpb24g
YW5kIGNsb2NrIElEcyBmb3IgdGhlIEhpZ2ggU3BlZWQgSW50ZXJmYWNlCj4gPiAyIChIU0kyKSBj
bG9jayBtYW5hZ2VtZW50IHVuaXQuIFRoaXMgQ01VIGZlZWRzIGhpZ2ggc3BlZWQgaW50ZXJmYWNl
cwo+ID4gc3VjaCBhcyBQQ0llIGFuZCBVRlMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUGV0ZXIg
R3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRp
bmdzL2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1sICAgIHwgMzAgKysrKysrKysrKysrKysr
KystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y2xvY2svZ29vZ2xlLGdzMTAxLWNsb2NrLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLQo+ID4gY2xvY2sueWFtbAo+ID4gaW5kZXggMWQy
YmNlYTQxYzg1Li5hMjAyZmQ1ZDFlYWQgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLWNsb2NrLnlhbWwKPiA+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9nb29nbGUsZ3MxMDEtY2xv
Y2sueWFtbAo+ID4gQEAgLTMyLDE0ICszMiwxNSBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICAgIC0g
Z29vZ2xlLGdzMTAxLWNtdS1taXNjCj4gPiAgICAgICAgLSBnb29nbGUsZ3MxMDEtY211LXBlcmlj
MAo+ID4gICAgICAgIC0gZ29vZ2xlLGdzMTAxLWNtdS1wZXJpYzEKPiA+ICsgICAgICAtIGdvb2ds
ZSxnczEwMS1jbXUtaHNpMgo+Cj4gQ2FuIHlvdSBrZWVwIHRoaXMgYWxwaGFiZXRpY2FsIGFuZCBh
ZGQgaHNpIGJlZm9yZSBtaXNjIHBsZWFzZS4KCldpbGwgZml4Cgo+ID4KPiA+ICAgIGNsb2NrczoK
PiA+ICAgICAgbWluSXRlbXM6IDEKPiA+IC0gICAgbWF4SXRlbXM6IDMKPiA+ICsgICAgbWF4SXRl
bXM6IDUKPiA+Cj4gPiAgICBjbG9jay1uYW1lczoKPiA+ICAgICAgbWluSXRlbXM6IDEKPiA+IC0g
ICAgbWF4SXRlbXM6IDMKPiA+ICsgICAgbWF4SXRlbXM6IDUKPiA+Cj4gPiAgICAiI2Nsb2NrLWNl
bGxzIjoKPiA+ICAgICAgY29uc3Q6IDEKPiA+IEBAIC0xMTIsNiArMTEzLDMxIEBAIGFsbE9mOgo+
ID4gICAgICAgICAgICAgIC0gY29uc3Q6IGJ1cwo+ID4gICAgICAgICAgICAgIC0gY29uc3Q6IGlw
Cj4gPgo+ID4gKyAgLSBpZjoKPiA+ICsgICAgICBwcm9wZXJ0aWVzOgo+ID4gKyAgICAgICAgY29t
cGF0aWJsZToKPiA+ICsgICAgICAgICAgY29udGFpbnM6Cj4gPiArICAgICAgICAgICAgZW51bToK
PiA+ICsgICAgICAgICAgICAgIC0gZ29vZ2xlLGdzMTAxLWNtdS1oc2kyCj4KPiB0aGlzIGJsb2Nr
IHNob3VsZCBhbHNvIGNvbWUgYmVmb3JlIG1pc2MgcGxlYXNlLgoKV2lsbCBmaXgKCj4KPiBPbmNl
IGRvbmUsIGZlZWwgZnJlZSB0byBhZGQKPgo+IFJldmlld2VkLWJ5OiBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKVGhhbmtzIQoKcmVnYXJkcywKClBldGUKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
