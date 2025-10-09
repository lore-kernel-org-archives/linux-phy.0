Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7E7DCCA471
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 05:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hn52HyKLuPBCzAVPHpz5rnN1LzXmWHsM0FjtFtCgrI=; b=sDFOOPe682eyhm
	MuWNnRHBlnRWN7qtavbyqNPBo0JiSnZtPQ5T1r+H/Zi/xLCbSj8X6gQeB0Z1ScOVMa483hgCFrEq+
	T3tCyI8CPJDcyn9XHkUQ7ohRgPyk2Ipy1VF3utMUfDDyt0ohtVSfTIJSuu9nLPJ6C1hMAA3n/ERVh
	B6I/h8Fyb4n5agxK6Ca0vSeXGkIGIOMuI0TOD1qpafBE9MIrVYYroYMHEQDT2COf+ke513e2galsJ
	UU3XhI6NOJKq1ls3W5bwJgNsHKjDVG7CcVag+2WSE4kUeNL58ZmKGWvf+8Co4oNv7Q96sWfT189E5
	47uF4D5CNjlI3094Pr1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ixz-00000005CCS-2YkX;
	Thu, 09 Oct 2025 05:13:27 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ixw-00000005CBf-35x8
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 05:13:26 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-b5f2c1a7e48so329502a12.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 22:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759986804; x=1760591604; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BWewaHokP8ZtNf5xV3DaenIr+l1N9Mpv+SreL8jsLig=;
        b=OlrT2Q9I2d49uUwTFv3Yrv6LxXktiQH5XIXwPr9cBeUCsm0GzxCEG2W9O4JJkF2nB6
         tjSk7Nr4fSPMYfsXO1ezp0p8OQ1e2XfLrNe7BiLnk881Z2oPHV8UykjP1qctVG1ou5m5
         3F3GEdX+BXzJ5GztsajnaCgxQG6SaouMxgrwcv+euIm1RCx0HG3RGcsDKBe9taMqtBGt
         AhpK7msW4AygkQRa33MNh1Ssy+UShI3GDgllzBZMs1EXHS2Fbq4qXTQRQCjNCo7iKlGH
         s+uRuFncU6BHtnpxzw2PKK8H0/dj7uiXg035XBoH/IMvXYzRwyWA3v2ZJk6urTMPz+DW
         rCPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759986804; x=1760591604;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BWewaHokP8ZtNf5xV3DaenIr+l1N9Mpv+SreL8jsLig=;
        b=Is94agJBht6Ijv/iT9sPULFedUy6pAstdtPtI9MK3IJvozRz2GruYJlcGHLGQVnYep
         uuUMUyz5ZY6sCA7/odJsaLVXB5nmHkOTLv5A8ipB4AG1izt15pF7YF98IdWMqAaXU4zn
         XLCl1CvE+ND4Bf9LDEbTSWMCIYzVFYlszQMDVI4gP6W+NjNb4/l/ZPK553VUxXdQb15K
         Ei7wTtDhmlcr1QkflFbtoLvFKpgsqkZNx7pWsNo9hIl3yiImaXUsjGPqYD2swB/WGOir
         YTiz6JGsw0M+UMoH2g6PPvTxMHqX0Lx4F0yAYaUQUPCtc71TOclYqGOWYekZudQwYNVb
         pkNg==
X-Forwarded-Encrypted: i=1; AJvYcCXQ1azxrNF6S3N86Bs97yuYbbZ1/C9xHuf7nf7KlHyr1+Q1k8m3MUpDRjJUyohBWBYxcl9SwkrdzsY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWAAYZfwbJOpeuFxyXd3cPwIVmD8f+z39307oEsssfVyZ2O7qY
	mNFGuyhTeZkRmAxwFyKWkAQ9FZRocngucTMEWuxlzwHOpGPWr6+nKRztRrlzxU274bL5ChuWj/S
	aimmVcrFtNeGZATXj/slvBqliLVcNs547yJQAplUZ
X-Gm-Gg: ASbGncvZexQ8HXeV43zHruIwvH5V9Do1V0ttIenUbup1d5ROkKs8E7svmNlJ6GgTord
	1i39/8Q3/4LPOrZJlocFXxy+712ppQqjq6bV/EUU12tf4ig69raVr/e3QUAQyffq03LThRZ9j2j
	ysVCTJL5BogYbJvemd5unyMsmUoVbUm/M+vrOUdbzvzen7Tn0MgFkIPEAEJpZ2jQ9ZSBZeknTcW
	Ey3Z6wZJd+1+XVoWH8cfLk2pcWceOcweks3YrQ3SXKrcJnlXMEax218phlbYo6rn9Fea2Y1C7z/
	cKZ/Sg==
X-Google-Smtp-Source: AGHT+IHftw1sTR4jx+skzjrqSGdfm/Q0+OudIaUszRZ3Jo7Mtg1ENnay4Sa6Pgawbis09A4Kl1WSaKxYdl0Pty1Yfo8=
X-Received: by 2002:a17:903:1b46:b0:269:b65a:cbb2 with SMTP id
 d9443c01a7336-2902738685emr79503305ad.47.1759986803355; Wed, 08 Oct 2025
 22:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com> <20251008060000.3136021-2-royluo@google.com>
 <8966b6a9-ff70-4833-a5c7-c6d6c13c6c8b@kernel.org>
In-Reply-To: <8966b6a9-ff70-4833-a5c7-c6d6c13c6c8b@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Wed, 8 Oct 2025 22:12:46 -0700
X-Gm-Features: AS18NWAeUlPdfPhpwSxxFxgtGGF4Sy9E3bq34jSmHpsPo17xNshrcbYfSpJ1QNc
Message-ID: <CA+zupgwLu-y26X9eiENyC28i9ZxCkuhb0X8X9H6HBpqkqJ7O3w@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_221324_805771_757A7987 
X-CRM114-Status: GOOD (  31.57  )
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

T24gV2VkLCBPY3QgOCwgMjAyNSBhdCA0OjU24oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA4LzEwLzIwMjUgMTQ6NTksIFJveSBMdW8gd3Jv
dGU6Cj4gPiBEb2N1bWVudCB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3MgZm9yIHRoZSBEV0MzIFVT
QiBjb250cm9sbGVyIGZvdW5kIGluCj4gPiBHb29nbGUgVGVuc29yIFNvQ3MsIHN0YXJ0aW5nIHdp
dGggdGhlIEc1IGdlbmVyYXRpb24uCj4gPgo+ID4gVGhlIFRlbnNvciBHNSBzaWxpY29uIHJlcHJl
c2VudHMgYSBjb21wbGV0ZSBhcmNoaXRlY3R1cmFsIGRlcGFydHVyZSBmcm9tCj4KPgo+IEc1IGRv
ZXMgbm90IGhhdmUgYSBtb2RlbCBudW1iZXIgbGlrZSBHMS1HND8KClRoZXJlJ3Mgbm8gbW9kZWwg
bnVtYmVyIGZvciBHNSwgSSdtIHN0aWNraW5nIHRvIHRoZSBleGlzdGluZyAiZ3MiIHByZWZpeAph
cyB0aGV5J3JlIHN0aWxsIGluIHRoZSBzYW1lIFNvQyBmYW1pbHkuICBQbGVhc2UgbGV0IG1lIGtu
b3cgaWYgeW91IGhhdmUgYW55CmNvbmNlcm5zLgoKPgo+ID4gcHJldmlvdXMgZ2VuZXJhdGlvbnMg
KGxpa2UgZ3MxMDEpLCBpbmNsdWRpbmcgZW50aXJlbHkgbmV3IGNsb2NrL3Jlc2V0Cj4gPiBzY2hl
bWVzLCB0b3AtbGV2ZWwgd3JhcHBlciBhbmQgcmVnaXN0ZXIgaW50ZXJmYWNlLiBDb25zZXF1ZW50
bHksCj4gPiBleGlzdGluZyBTYW1zdW5nL0V4eW5vcyBEV0MzIFVTQiBiaW5kaW5ncyBhbmQgZHJp
dmVycyBhcmUgaW5jb21wYXRpYmxlLAo+Cj4gRG8gbm90IHJlZmVyZW5jZSBkcml2ZXJzLiBFeHBs
YWluIHRoZSBoYXJkd2FyZS4KCkFjaywgYWxsIG1lbnRpb25zIG9mICJkcml2ZXIiIHdpbGwgYmUg
cmVtb3ZlZCBpbiB0aGUgbmV4dCBwYXRjaC4KCj4KPiA+IG5lY2Vzc2l0YXRpbmcgdGhpcyBuZXcg
ZGV2aWNlIHRyZWUgYmluZGluZy4KPiA+Cj4gPiBUaGUgVVNCIGNvbnRyb2xsZXIgb24gVGVuc29y
IEc1IGlzIGJhc2VkIG9uIFN5bm9wc3lzIERXQzMgSVAgYW5kIGZlYXR1cmVzCj4gPiBEdWFsLVJv
bGUgRGV2aWNlIHNpbmdsZSBwb3J0IHdpdGggaGliZXJuYXRpb24gc3VwcG9ydC4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBSb3kgTHVvIDxyb3lsdW9AZ29vZ2xlLmNvbT4KPiA+IC0tLQo+ID4gIC4u
Li9iaW5kaW5ncy91c2IvZ29vZ2xlLGdzLWR3YzMueWFtbCAgICAgICAgICB8IDE0NSArKysrKysr
KysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQ1IGluc2VydGlvbnMoKykKPiA+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9n
b29nbGUsZ3MtZHdjMy55YW1sCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvZ29vZ2xlLGdzLWR3YzMueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ29vZ2xlLGdzLWR3YzMueWFtbAo+ID4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uOWViMGJmNzI2ZThkCj4gPiAtLS0g
L2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNi
L2dvb2dsZSxncy1kd2MzLnlhbWwKPiA+IEBAIC0wLDAgKzEsMTQ1IEBACj4gPiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ID4gKyMgQ29weXJp
Z2h0IChjKSAyMDI1LCBHb29nbGUgTExDCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlk
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy91c2IvZ29vZ2xlLGdzLWR3YzMueWFtbCMK
PiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKPiA+ICsKPiA+ICt0aXRsZTogR29vZ2xlIFRlbnNvciBTZXJpZXMgKEc1KykgRFdDMyBVU0Ig
U29DIENvbnRyb2xsZXIKPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0gUm95IEx1byA8
cm95bHVvQGdvb2dsZS5jb20+Cj4gPiArCj4gPiArZGVzY3JpcHRpb246IHwKPgo+Cj4gRG8gbm90
IG5lZWQgJ3wnIHVubGVzcyB5b3UgbmVlZCB0byBwcmVzZXJ2ZSBmb3JtYXR0aW5nLgoKQWNrLCB3
aWxsIGZpeCB0aGlzIGluIHRoZSBuZXh0IHBhdGNoLgoKPgo+ID4gKyAgRGVzY3JpYmVzIHRoZSBE
V0MzIFVTQiBjb250cm9sbGVyIGJsb2NrIGltcGxlbWVudGVkIG9uIEdvb2dsZSBUZW5zb3IgU29D
cywKPiA+ICsgIHN0YXJ0aW5nIHdpdGggdGhlIEc1IGdlbmVyYXRpb24uIEJhc2VkIG9uIFN5bm9w
c3lzIERXQzMgSVAsIHRoZSBjb250cm9sbGVyCj4gPiArICBmZWF0dXJlcyBEdWFsLVJvbGUgRGV2
aWNlIHNpbmdsZSBwb3J0IHdpdGggaGliZXJuYXRpb24gYWRkLW9uLgo+ID4gKwo+ID4gK3Byb3Bl
cnRpZXM6Cj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGVu
dW06Cj4gPiArICAgICAgICAgIC0gZ29vZ2xlLGdzNS1kd2MzCj4gPiArCj4gPiArICByZWc6Cj4g
PiArICAgIG1pbkl0ZW1zOiAzCj4KPiBEcm9wCj4KPiA+ICsgICAgbWF4SXRlbXM6IDMKPiA+ICsK
PiA+ICsgIHJlZy1uYW1lczoKPiA+ICsgICAgZGVzY3JpcHRpb246IHwKPiA+ICsgICAgICBUaGUg
Zm9sbG93aW5nIG1lbW9yeSByZWdpb25zIG11c3QgcHJlc2VudDoKPiA+ICsgICAgICAgIC0gZHdj
M19jb3JlOiBDb3JlIERXQzMgSVAgcmVnaXN0ZXJzLgo+ID4gKyAgICAgICAgLSBob3N0X2NmZ19j
c3I6IEhpYmVybmF0aW9uIGNvbnRyb2wgcmVnaXN0ZXJzLgo+ID4gKyAgICAgICAgLSB1c2JpbnRf
Y3NyOiBIaWJlcm5hdGlvbiBpbnRlcnJ1cHQgcmVnaXN0ZXJzLgo+Cj4gRHJvcCBkZXNjcmlwdGlv
biBvciBtb3ZlIGl0IHRvIGl0ZW1zIGluIHJlZy4gU2VlIG90aGVyIGJpbmRpbmdzLgoKQWNrLCB3
aWxsIHVzZSBhbiBpdGVtIGxpc3QgaW4gcmVnIGluc3RlYWQuCgo+Cj4gPiArICAgIGl0ZW1zOgo+
ID4gKyAgICAgIC0gY29uc3Q6IGR3YzNfY29yZQo+ID4gKyAgICAgIC0gY29uc3Q6IGhvc3RfY2Zn
X2Nzcgo+ID4gKyAgICAgIC0gY29uc3Q6IHVzYmludF9jc3IKPiA+ICsKPiA+ICsgIGludGVycnVw
dHM6Cj4gPiArICAgIG1pbkl0ZW1zOiAzCj4KPiBEcm9wCgpBY2ssIHdpbGwgdXNlIGFuIGl0ZW0g
bGlzdCBpbnN0ZWFkLgoKPgo+ID4gKyAgICBtYXhJdGVtczogMwo+ID4gKwo+ID4gKyAgaW50ZXJy
dXB0LW5hbWVzOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAgICAgIFRoZSBmb2xsb3dp
bmcgaW50ZXJydXB0cyBtdXN0IHByZXNlbnQ6Cj4gPiArICAgICAgICAtIGR3Y191c2IzOiBDb3Jl
IERXQzMgaW50ZXJydXB0Lgo+ID4gKyAgICAgICAgLSBoc19wbWVfaXJxOiBIaWdoIHNwZWVkIHJl
bW90ZSB3YWtldXAgaW50ZXJydXB0IGZvciBoaWJlcm5hdGlvbi4KPiA+ICsgICAgICAgIC0gc3Nf
cG1lX2lycTogU3VwZXIgc3BlZWQgcmVtb3RlIHdha2V1cCBpbnRlcnJ1cHQgZm9yIGhpYmVybmF0
aW9uLgo+Cj4gRnJvbSB3aGVyZSBkaWQgeW91IGdldCB0aGlzIHN0eWxlPyBEb24ndCB3cml0ZSBi
aW5kaW5ncyB3aXRoIGNoYXQgZ3B0IG9yCj4gd2hhdGV2ZXIgb3RoZXIgdG9vbC4gaXQgaXMgYSB3
YXN0ZSBvZiBvdXIgdGltZS4KCkkgcmVmZXJlbmNlZCB0aGUgc3R5bGUgZnJvbSBhIHJlY2VudCBk
dCBiaW5kaW5nIGNoYW5nZSBbMV0gdGhhdCBhZGRzCiJEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdXNiL3Fjb20sc25wcy1kd2MzLnlhbWwiLgpJIHRob3VnaHQgaXQgd291bGQgYmUg
YSBnb29kIHJlZmVyZW5jZSBiZWNhdXNlIGl0J3MgcmVsYXRpdmVseSBuZXcKYW5kIGlzIGFsc28g
YSBiaW5kaW5nIGZvciBTTlBTIGR3YzMgZ2x1ZSBsb2dpYy4gUGVyaGFwcyB0aGF0IHN0eWxlCmRv
ZXNuJ3QgYXBwbHkgaGVyZSBiZWNhdXNlIHFjb20sc25wcy1kd2MzLnlhbWwgc3VwcG9ydHMKbXVs
dGlwbGUgY29tcGF0aWJsZSBhbmQgaGVyZSB3ZSBoYXZlIG9ubHkgb25lPwoKSnVzdCB0byBjbGFy
aWZ5LCBJJ20gYSBHZW1pbmkgdXNlciBhbmQgdGhpcyBwYXRjaCBpcyAxMDAlIG9yZ2FuaWMsCmhh
bmQtY3JhZnRlZCBieSBhIGxpdmluZyBodW1hbiBicmFpbiA6KQoKWzFdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDI1MDQxNC1kd2MzLXJlZmFjdG9yLXY3LTItZjAxNWIzNTg3MjJkQG9z
cy5xdWFsY29tbS5jb20vCgpUaGFua3MsClJveSBMdW8KCj4KPiA+ICsgICAgaXRlbXM6Cj4gPiAr
ICAgICAgLSBjb25zdDogZHdjX3VzYjMKPiA+ICsgICAgICAtIGNvbnN0OiBoc19wbWVfaXJxCj4g
PiArICAgICAgLSBjb25zdDogc3NfcG1lX2lycQo+ID4gKwo+ID4gKyAgY2xvY2tzOgo+ID4gKyAg
ICBtaW5JdGVtczogMwo+ID4gKyAgICBtYXhJdGVtczogMwo+ID4gKwo+ID4gKyAgY2xvY2stbmFt
ZXM6Cj4gPiArICAgIG1pbkl0ZW1zOiAzCj4gPiArICAgIG1heEl0ZW1zOiAzCj4KPiBGcm9tIHdo
ZXJlIGRpZCB5b3UgZ2V0IHN1Y2ggc3ludGF4Pwo+Cj4gPiArCj4gPiArICByZXNldHM6Cj4gPiAr
ICAgIG1pbkl0ZW1zOiA1Cj4gPiArICAgIG1heEl0ZW1zOiA1Cj4gPiArCj4gPiArICByZXNldC1u
YW1lczoKPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogdXNiY19ub25fc3RpY2t5
Cj4gPiArICAgICAgLSBjb25zdDogdXNiY19zdGlja3kKPiA+ICsgICAgICAtIGNvbnN0OiB1c2Jf
ZHJkX2J1cwo+ID4gKyAgICAgIC0gY29uc3Q6IHUycGh5X2FwYgo+ID4gKyAgICAgIC0gY29uc3Q6
IHVzYl90b3BfY3NyCj4gPiArCj4gPiArICBwb3dlci1kb21haW5zOgo+ID4gKyAgICBtaW5JdGVt
czogMgo+ID4gKyAgICBtYXhJdGVtczogMgo+ID4gKwo+ID4gKyAgcG93ZXItZG9tYWluLW5hbWVz
Ogo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAgICAgIFRoZSBmb2xsb3dpbmcgcG93ZXIg
ZG9tYWluIG11c3QgcHJlc2VudDoKPiA+ICsgICAgICAgICAgLSB1c2JfcHN3X3BkOiBUaGUgY2hp
bGQgcG93ZXIgZG9tYWluIG9mIHVzYl90b3BfcGQuIFR1cm5pbmcgaXQgb24gcHV0cyB0aGUgY29u
dHJvbGxlcgo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBpbnRvIGZ1bGwgcG93ZXIgc3Rh
dGUsIHR1cm5pbmcgaXQgb2ZmIHB1dHMgdGhlIGNvbnRyb2xsZXIgaW50byBwb3dlcgo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICBnYXRlZCBzdGF0ZS4KPiA+ICsgICAgICAgICAgLSB1c2Jf
dG9wX3BkOiBUaGUgcGFyZW50IHBvd2VyIGRvbWFpbiBvZiB1c2JfcHN3X3BkLiBUdXJuaW5nIGl0
IG9uIHB1dHMgdGhlIGNvbnRyb2xsZXIKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgaW50
byBwb3dlciBnYXRlZCBzdGF0ZSwgdHVybmluZyBpdCBvZmYgY29tcGxldGVseSBzaHV0cyBvZmYg
dGhlCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRyb2xsZXIuCj4KPiBTYW1lIGNv
bW1lbnRzLgo+Cj4KPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogdXNiX3Bzd19w
ZAo+ID4gKyAgICAgIC0gY29uc3Q6IHVzYl90b3BfcGQKPiA+ICsKPiA+ICsgIGlvbW11czoKPiA+
ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
