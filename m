Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D41CCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 00:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIOcMIjsHpdRnnkFqMjzfHE1IHl49eIiIKyozTpC/8w=; b=J1CPNHBarBVLdM
	WijqDTbODH/E4Qb9GT0mPjVtvzidL/2SWHIDwy9kBaidolenpvKn8N9ty8SgyHxyppX7UExTs8BG9
	njRTDbm/85MA0P0DrORJfbnkoNhedjkSmRCNPlvuw4E1YJsBF0+Ob+0/7iNBjh6/+JEqSV9HOQaw/
	RnQ7EtYNZF5qfxkt/wuL1p6/2dzU88xcqVd/tG4DEp/yZuyH6xQokGEIucR9lymjAHbSmb95eGizq
	4AtTk4oSEVb7CHTyyQRQFMQd1Rj4GbAnaKzb5jLcg5NH0nual2dcRI2ypRphb0OP3a8/FaOxMsqlR
	TMz0OrKV1aztoSlNPPfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8pjF-000000007De-35gd;
	Wed, 15 Oct 2025 00:50:57 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8pjD-000000007Cu-1sAv
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 00:50:56 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-339d53f4960so6228121a91.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 17:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760489454; x=1761094254; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pys06/P8lbZQqKUpds+GbSIWbUdLNbX77jOCPrn7W20=;
        b=ugfoCyrkjA7pQ/X99qkbUu3+zovm5KP9RZeqKalLlFAwtXmVCbNYH/tEZrnxVn8FOR
         yh3W9iYCgh9YM70y38ZIN1S8WcNqddd/GNXnxAUZEVRG51ZmbdVPIi2X6yUhxQ667OFK
         mX6XpmBCAzN4Ghpq2VsO14LspAGYmWu6wngmhxnSLRlpEBlSnaiIQx7E1CJkrAFyr5pr
         /UOLEF2I1Ce9LTvDC5siTtabmz7dZKvAdxk1kvyqYaJXCWRW+fHgMV9XqF/APzOYo2Bt
         W0BRrJ6uk4oeggVCuBHJ52QTJS4rlsU5sfoyUXk9Mh3l+9AhoxDkeq+xZmuAXWvxa/PI
         a0Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760489454; x=1761094254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pys06/P8lbZQqKUpds+GbSIWbUdLNbX77jOCPrn7W20=;
        b=uIFuFA0hcRC0EEprN0WkwzDSPKf5n5JYq2lp7Ye3Fp47QDnjzx92STPNW6BNC5n7n3
         JvSvazcY94tyaXC0+bOKme1AzwGlTPO9Ju3u4PUYBavH0rP2/UphVVe5BJ4VdP6l/dm2
         7Gk0fpTd6o1jhpoO8xHtNsWveJxhQEL6vWTN6oUGF41YdJtJuwrDMP9DexPxA3k7Jmq6
         SjRwTujKZB8s8nmWZ8a+QYUr9NnK7iljLNhe2Ch+BZbBbh3Fzs+TOOo+02pH41w9Fxtf
         SN0HYeD+iEL8Ir7CJ16DEAIKFm+BNz/PNb+Vo6Aj0f3kXQunvM09/MXCcrsTB0EwlB/U
         cmwA==
X-Forwarded-Encrypted: i=1; AJvYcCXg4KBwU1GislqTuW2lTmtglIHAOJNuEs5nXWNvy8r6d33gDcq9pOTlw6wRjPznspzGjok3MTzKyFQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/q89bV5OmSfY1K13TQxyvWuulBDAVgtyRc763QdehyocjS0sL
	0afxQY3lOmHvBfk3YQrR7K/ZmVIs7Nq2NkksbV1vhl0fD76xvYBuTeFN36JrwhvOGVLbRLNgCwP
	eZe3EeL15RuHTRY9AQ5mvZJfzwDYWISQwW0CrmIgY
X-Gm-Gg: ASbGncvhTsbMfEV14tBeC091fanVLYvkLWDyHEF4EtSwMWIW43iNrTyrcYs/IT50ibT
	H6AEQZGtfF3S49B8IQkVIHcCBMFEpfrcbthMZ4XA8nEvr/UZP5S9Xp0JvDerVjUkVZN1fqTMRy3
	/k7WM620jv2HDk0pPOrlwu2YqanTaehSdFXvAegQgg3fWK6gRCA1VLDckgizkmuOfjs9skfqTTu
	pw08JIpsVJku5d4ocm6Rra7VVDliHoBXHuVLLRGStZNXw==
X-Google-Smtp-Source: AGHT+IEdFC1oV2FCOk9D1OoKHtXpkscHEpfnoY4gL665jCzwvs2Cq1As6WI2zTWR3UXhYVWN4AQjO/wbTMtNWWION3M=
X-Received: by 2002:a17:90b:3804:b0:336:bfce:3b48 with SMTP id
 98e67ed59e1d1-33b51169060mr35644309a91.9.1760489453987; Tue, 14 Oct 2025
 17:50:53 -0700 (PDT)
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-2-royluo@google.com>
 <066a9598-ad30-4327-be68-87299bba6fda@kernel.org> <CA+zupgwc7b51pNRLWRy2CX=n4=FTm=AP7J0dRP2RLjyK5LxGtw@mail.gmail.com>
 <b7b3de64-c656-4a84-8ba4-2d5c7eda9783@kernel.org>
In-Reply-To: <b7b3de64-c656-4a84-8ba4-2d5c7eda9783@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Tue, 14 Oct 2025 17:50:17 -0700
X-Gm-Features: AS18NWACCqT3kxFlbATNFzqFu_XOiDjmmd9pdcyMxo1Erfx1Ha14-MwEazkZAV4
Message-ID: <CA+zupgzo9zRO2GHR2Np0Tm4M5_h8y0GF2JGGqE_S0BxSR_ZbqQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
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
X-CRM114-CacheID: sfid-20251014_175055_510134_76257D9C 
X-CRM114-Status: GOOD (  32.44  )
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

T24gVHVlLCBPY3QgMTQsIDIwMjUgYXQgMToyMuKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAxNC8xMC8yMDI1IDAzOjQwLCBSb3kgTHVvIHdy
b3RlOgo+ID4gT24gRnJpLCBPY3QgMTAsIDIwMjUgYXQgNTowOeKAr1BNIEtyenlzenRvZiBLb3ps
b3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAxMC8xMC8yMDI1IDIy
OjE2LCBSb3kgTHVvIHdyb3RlOgo+ID4+PiBEb2N1bWVudCB0aGUgZGV2aWNlIHRyZWUgYmluZGlu
Z3MgZm9yIHRoZSBEV0MzIFVTQiBjb250cm9sbGVyIGZvdW5kIGluCj4gPj4+IEdvb2dsZSBUZW5z
b3IgU29Dcywgc3RhcnRpbmcgd2l0aCB0aGUgRzUgZ2VuZXJhdGlvbi4KPiA+Pj4KPiA+Pj4gVGhl
IFRlbnNvciBHNSBzaWxpY29uIHJlcHJlc2VudHMgYSBjb21wbGV0ZSBhcmNoaXRlY3R1cmFsIGRl
cGFydHVyZSBmcm9tCj4gPj4+IHByZXZpb3VzIGdlbmVyYXRpb25zIChsaWtlIGdzMTAxKSwgaW5j
bHVkaW5nIGVudGlyZWx5IG5ldyBjbG9jay9yZXNldAo+ID4+PiBzY2hlbWVzLCB0b3AtbGV2ZWwg
d3JhcHBlciBhbmQgcmVnaXN0ZXIgaW50ZXJmYWNlLiBDb25zZXF1ZW50bHksCj4gPj4+IGV4aXN0
aW5nIFNhbXN1bmcvRXh5bm9zIERXQzMgVVNCIGJpbmRpbmdzIGFyZSBpbmNvbXBhdGlibGUsIG5l
Y2Vzc2l0YXRpbmcKPiA+Pj4gdGhpcyBuZXcgZGV2aWNlIHRyZWUgYmluZGluZy4KPiA+Pj4KPiA+
Pj4gVGhlIFVTQiBjb250cm9sbGVyIG9uIFRlbnNvciBHNSBpcyBiYXNlZCBvbiBTeW5vcHN5cyBE
V0MzIElQIGFuZCBmZWF0dXJlcwo+ID4+PiBEdWFsLVJvbGUgRGV2aWNlIHNpbmdsZSBwb3J0IHdp
dGggaGliZXJuYXRpb24gc3VwcG9ydC4KPiA+Pgo+ID4+IFlvdSBzdGlsbCBtaXgsIGNvbXBsZXRl
bHkgdW5uZWNlc3NhcmlseSwgc3Vic3lzdGVtcy4gRm9yIEdyZWcgdGhpcyBpcwo+ID4+IGFjdHVh
bGx5IGV2ZW4gdW5kZXNpcmVkLCBidXQgcmVnYXJkbGVzcyBkb24ndCBkbyB0aGlzIGZvciBhbnkg
Y2FzZXMKPiA+PiBiZWNhdXNlIGl0IGp1c3QgbWFrZXMgZXZlcnl0aGluZyBzbG93ZXIgb3IgbW9y
ZSBkaWZmaWN1bHQgdG8gYXBwbHkuCj4gPj4KPiA+PiBSZWFsbHksIHRoaW5rIGhvdyBtYWludGFp
bmVycyBzaG91bGQgZGVhbCB3aXRoIHlvdXIgcGF0Y2hlcy4KPiA+Pgo+ID4KPiA+IFVuZGVyc3Rv
b2QsIEkgd2lsbCBzZXBhcmF0ZSB0aGUgcGF0Y2hlcyBpbnRvIHR3byBkaXN0aW5jdCBzZXJpZXM6
IG9uZSBmb3IKPiA+IHRoZSBjb250cm9sbGVyIGFuZCBvbmUgZm9yIHRoZSBQSFkuCj4gPiBBcHBy
ZWNpYXRlIHRoZSBmZWVkYmFjayBhbmQgdGhlIGV4cGxhbmF0aW9uLgo+ID4KPiA+Pj4KPiA+Pj4g
U2lnbmVkLW9mZi1ieTogUm95IEx1byA8cm95bHVvQGdvb2dsZS5jb20+Cj4gPj4+IC0tLQo+ID4+
PiAgLi4uL2JpbmRpbmdzL3VzYi9nb29nbGUsZ3M1LWR3YzMueWFtbCAgICAgICAgIHwgMTQxICsr
KysrKysrKysrKysrKysrKwo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDE0MSBpbnNlcnRpb25zKCsp
Cj4gPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3VzYi9nb29nbGUsZ3M1LWR3YzMueWFtbAo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nb29nbGUsZ3M1LWR3YzMueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ29vZ2xlLGdzNS1kd2MzLnlh
bWwKPiA+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi42
ZmFkZWE3ZjQxZTgKPiA+Pj4gLS0tIC9kZXYvbnVsbAo+ID4+PiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2dvb2dsZSxnczUtZHdjMy55YW1sCj4gPj4+IEBAIC0w
LDAgKzEsMTQxIEBACj4gPj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBP
UiBCU0QtMi1DbGF1c2UpCj4gPj4+ICsjIENvcHlyaWdodCAoYykgMjAyNSwgR29vZ2xlIExMQwo+
ID4+PiArJVlBTUwgMS4yCj4gPj4+ICstLS0KPiA+Pj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUu
b3JnL3NjaGVtYXMvdXNiL2dvb2dsZSxnczUtZHdjMy55YW1sIwo+ID4+PiArJHNjaGVtYTogaHR0
cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPj4+ICsKPiA+Pj4g
K3RpdGxlOiBHb29nbGUgVGVuc29yIFNlcmllcyAoRzUrKSBEV0MzIFVTQiBTb0MgQ29udHJvbGxl
cgo+ID4+PiArCj4gPj4+ICttYWludGFpbmVyczoKPiA+Pj4gKyAgLSBSb3kgTHVvIDxyb3lsdW9A
Z29vZ2xlLmNvbT4KPiA+Pj4gKwo+ID4+PiArZGVzY3JpcHRpb246Cj4gPj4+ICsgIERlc2NyaWJl
cyB0aGUgRFdDMyBVU0IgY29udHJvbGxlciBibG9jayBpbXBsZW1lbnRlZCBvbiBHb29nbGUgVGVu
c29yIFNvQ3MsCj4gPj4+ICsgIHN0YXJ0aW5nIHdpdGggdGhlIEc1IGdlbmVyYXRpb24uIEJhc2Vk
IG9uIFN5bm9wc3lzIERXQzMgSVAsIHRoZSBjb250cm9sbGVyCj4gPj4+ICsgIGZlYXR1cmVzIER1
YWwtUm9sZSBEZXZpY2Ugc2luZ2xlIHBvcnQgd2l0aCBoaWJlcm5hdGlvbiBhZGQtb24uCj4gPj4+
ICsKPiA+Pj4gK3Byb3BlcnRpZXM6Cj4gPj4+ICsgIGNvbXBhdGlibGU6Cj4gPj4+ICsgICAgY29u
c3Q6IGdvb2dsZSxnczUtZHdjMwo+ID4+PiArCj4gPj4+ICsgIHJlZzoKPiA+Pj4gKyAgICBpdGVt
czoKPiA+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IENvcmUgRFdDMyBJUCByZWdpc3RlcnMuCj4g
Pj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBVU0IgaG9zdCBjb250cm9sbGVyIGNvbmZpZ3VyYXRp
b24gcmVnaXN0ZXJzLgo+ID4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogVVNCIGN1c3RvbSBpbnRl
cnJydXB0cyBjb250cm9sIHJlZ2lzdGVycy4KPiA+Pj4gKwo+ID4+PiArICByZWctbmFtZXM6Cj4g
Pj4+ICsgICAgaXRlbXM6Cj4gPj4+ICsgICAgICAtIGNvbnN0OiBkd2MzX2NvcmUKPiA+Pj4gKyAg
ICAgIC0gY29uc3Q6IGhvc3RfY2ZnCj4gPj4+ICsgICAgICAtIGNvbnN0OiB1c2JpbnRfY2ZnCj4g
Pj4+ICsKPiA+Pj4gKyAgaW50ZXJydXB0czoKPiA+Pj4gKyAgICBpdGVtczoKPiA+Pj4gKyAgICAg
IC0gZGVzY3JpcHRpb246IENvcmUgRFdDMyBpbnRlcnJ1cHQuCj4gPj4+ICsgICAgICAtIGRlc2Ny
aXB0aW9uOiBIaWdoIHNwZWVkIHBvd2VyIG1hbmFnZW1lbnQgZXZlbnQgZm9yIHJlbW90ZSB3YWtl
dXAgZnJvbSBoaWJlcm5hdGlvbi4KPiA+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFN1cGVyIHNw
ZWVkIHBvd2VyIG1hbmFnZW1lbnQgZXZlbnQgZm9yIHJlbW90ZSB3YWtldXAgZnJvbSBoaWJlcm5h
dGlvbi4KPiA+Pgo+ID4+IFdyYXAgYXQgODAgKHNlZSBjb2Rpbmcgc3R5bGUpIG9yIGp1c3Qgc2hv
cnRlbiB0aGVzZS4KPiA+Cj4gPiBBY2ssIHdpbGwgZml4IGl0IGluIHRoZSBuZXh0IHBhdGNoLgo+
ID4KPiA+Pgo+ID4+PiArCj4gPj4+ICsgIGludGVycnVwdC1uYW1lczoKPiA+Pj4gKyAgICBpdGVt
czoKPiA+Pj4gKyAgICAgIC0gY29uc3Q6IGR3Y191c2IzCj4gPj4KPiA+PiBTbyBqdXN0ICJjb3Jl
Ij8KPiA+Cj4gPiBJJ2QgcHJlZmVyIHRvIHN0aWNrIHRvICJkd2NfdXNiMyIgYXMgdGhhdCdzCj4g
PiAxLiBtb3JlIGV4cHJlc3NpdmUgYnkgcmVmZXJyaW5nIHRvIHRoZSB1bmRlcmx5aW5nIElQIG5h
bWUsCj4KPgo+IEJ1dCB0aGF0J3MgY29tcGxldGVseSByZWR1bmRhbnQgbmFtZS4KPgo+ID4gMi4g
Y29uc2lzdGVudCB3aXRoIGVzdGFibGlzaGVkIGR3YzMgYmluZGluZ3Mgc3VjaCBhcwo+ID4gICAg
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Ivc25wcyxkd2MzLnlhbWwsCj4K
PiBJZiB5b3UgdXNlIG9ubHkgb25lIGludGVycnVwdC4gWW91IGRvbid0IHVzZSBvbmUgaW50ZXJy
dXB0IGhlcmUuCgpBZnRlciBsb29raW5nIGludG8gaXQgZnVydGhlciwgSSBmb3VuZCB0aGF0IHRo
ZSBpbnRlcnJ1cHQgbmFtZSAiZHdjX3VzYjMiCm11c3QgYmUgdXNlZCBoZXJlIHRvIGFkaGVyZSB0
byB0aGUgaW50ZXJydXB0IG5hbWluZyBkZWZpbmVkIGluCiJzbnBzLGR3YzMueWFtbCIuCgpUaGlz
IHJlcXVpcmVtZW50IHN0ZW1zIGZyb20gdGhlIGRldmljZSdzIGNvcnJlc3BvbmRpbmcgZ2x1ZSBk
cml2ZXIKdXRpbGl6aW5nIGEgc28tY2FsbGVkICJmbGF0dGVuZWQiIG1vZGVsIChzZWUgWzFdIGZv
ciBjb250ZXh0KS4gVGhpcyBtb2RlbApjYXVzZXMgdGhlIGdsdWUgZHJpdmVyIHRvIHByb2JlIGFu
IHVuZGVybHlpbmcgInNucHMsZHdjMyIgZGV2aWNlLgpDb25zZXF1ZW50bHksIHRoZSBjb3JlIERX
QzMgaW50ZXJydXB0IGRlZmluZWQgaGVyZSBpcyBjb25zdW1lZCBieQp0aGUgZHJpdmVyIGhhbmRs
aW5nIHRoZSAic25wcyxkd2MzIiBkZXZpY2UsIG1ha2luZyBpdCBtYW5kYXRvcnkgdG8KZm9sbG93
IHRoZSBpbnRlcnJ1cHQgbmFtaW5nIGVzdGFibGlzaGVkIGluICJzbnBzLGR3YzMueWFtbCIuCkVz
c2VudGlhbGx5LCB0aGUgaW50ZXJydXB0cyBkZWZpbmVkIGhlcmUgYXJlIGEgbWl4IG9mIHZlbmRv
ciBzcGVjaWZpYwppbXBsZW1lbnRhdGlvbiAobGlrZSAiaHNfcG1lIiwgInNzX3BtZSIpIGFuZCB0
aGUgRFdDMyBjb3JlIGluCiJzbnBzLGR3YzMueWFtbCIgKCJkd2NfdXNiMyIpLgoKSSBkb24ndCBr
bm93IGlmIHRoZXJlJ3MgYSBiZXR0ZXIgd2F5IHRvIGV4cHJlc3MgdGhpcyBpbXBsaWNpdCBkZXBl
bmRlbmN5Cm9mIHRoZSBjb3JlIERXQzMgaW50ZXJydXB0IGV4Y2VwdCBmb3IgZG9jdW1lbnRpbmcg
aXQgaW4gdGhlIGJpbmRpbmcKZGVzY3JpcHRpb24uIEFueSBhZHZpY2Ugd291bGQgYmUgd2VsY29t
ZS4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA0MTQtZHdjMy1yZWZhY3Rv
ci12Ny0wLWYwMTViMzU4NzIyZEBvc3MucXVhbGNvbW0uY29tLwoKVGhhbmtzLApSb3kgTHVvCgo+
Cj4gPiAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9xY29tLHNucHMt
ZHdjMy55YW1sLAo+ID4gdW5sZXNzIHlvdSBoYXZlIGEgc3Ryb25nIHByZWZlcmVuY2UgZm9yIHRo
ZSBhbHRlcm5hdGl2ZSBuYW1pbmcuCj4KPiBTdWNoIG5hbWluZ3MgYXJlIGRpc2NvdXJhZ2VkLCBi
ZWNhdXNlIHRoZXkgdGVsbCBhYnNvbHV0ZWx5IG5vdGhpbmcuCj4gQWxzbywgc2NoZW1hdGljcyBv
ciBkYXRhc2hlZXRzIHVzdWFsbHkgZG8gbm90IHVzZSB0aGVtLCBlaXRoZXIuCj4KPgo+IEJlc3Qg
cmVnYXJkcywKPiBLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
