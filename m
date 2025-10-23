Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A06D4CCD1BF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 22:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDQlITZwFt9aIi6mHmafN18jSypnRHYLpzBmcr6l7iM=; b=ZIlqATUK4Nr9vZ
	7J8/CC9CIH8XkRX5Gjmgpr9fQKzP3wrdDv6gUSXu/EtRAM0JPazxXX0ruVZPF01RUK4bz3oU12Zwr
	7mHvUITD+8X+r/gyeQn38a9LxJB5R00zrBPjUurJK9ztbs4SlrArFGhOQ2TPtASmBXXDSLRw/Yb1a
	iieLXsMquSL0xblXq+H29Tz2zU07ZnI3uweZjvVezQPIkB/I4FIlRiovBCwmDI+SFy4XbqZ4rzVNi
	JqcyIk5TJoM3+TtTGgEDY8RVgkgEL6HoJByYUYgRftvjE3Yz+1OwobHHuBLNzmD4htu1wvdE6Rp5x
	WtAy1DsR8fInpZpgxXkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC3iE-00000007jbK-0hWA;
	Thu, 23 Oct 2025 22:23:14 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC3iA-00000007jZu-3GlU
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 22:23:12 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-78f30dac856so15126496d6.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 15:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1761258189; x=1761862989; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+oAqH47cRsHD+glZ5Q5KatVvZ4QYYjYdLprWcY98JU=;
        b=0g8iYDzLIxgyAQJc71p7o/MSkkSZFYY9erhoa3Yo5hTa3QPjxFlXsDpWL6Mdvmcsja
         noyfAQ68uKlYOdyKDR5+kmUWrx0ork2WuvhDAlZTvkGIKxVu3xHUcXlq8sqUpNiBQsat
         0wRMd+jYHvobxnSMimNtql98yl0j/agsi6LkT+r07GE/FbxzQAcLFPZVZUvqqTafpWit
         lmlxodbTG9oCf2flBlHJEp2T0mGYCVMS7WNgKRWVZnrsyvfxGT+LACWXin5SNL2KgfD6
         q7D3SQHNxYfwEPuzMcUsatbILfDxI4B+GlOJFio3cgCeFQa53PPXY6JjHH4bYQFCtKXP
         DtWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761258189; x=1761862989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+oAqH47cRsHD+glZ5Q5KatVvZ4QYYjYdLprWcY98JU=;
        b=QHaiibVbOCgGDLK8BeJ4+Rahxn0nUjz1Cm2Mz8qXk12e5G66pkAMNUKP0w1+epMwTi
         KlqC3cEbHmUzLaXQ25cokVVtl3nScNM7lB1tMzjCslXWXkVSiBDyDnUh6bKE+SKAoHFv
         g5rVPMQtJO/CFLATXZpMdizH4eYFebMqRk6/zgc1vjXK1mI29YneZDW46HbYMbx6h9xa
         s1JAXFKFM0hNR3Wu/06RP+ZiKsvdsXixNGyMVqxW3TehxEMx2z3IqxPPeRbRcYeRQ1M2
         07P7kFWI0ciCPmwC4hKfelscn6v2Dk7cj4c3KQ+54ZJGK6rf9BnuoITRNECJYpvKzDnH
         pQFg==
X-Forwarded-Encrypted: i=1; AJvYcCVzKIB99XGVMWlrbnZgCRNP0nXrxxlbumQ1F63Rl4Hg2o0FwGwCWLs7dIWV8imQSRFlpedfvLILXTM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbDckyBiiHLnz/At1fTPQA6RYMX3GoxQXRi2dRAak8MvIIP/Nb
	mqi06b1q56KxHKSWmazMToqbZMr99HOnVQfsgHMACTYRPBZw3Zb75Vu6l5z6t6oc+ENuCLRKsUB
	MWmcPns8VhwcD/kyskgTWrz8nmNzh4oULWRiPV7Pa
X-Gm-Gg: ASbGncujA5W6L2aQRdMr4O1zGXmW7djbYcz+C9+df3nsszWiLyu+LokXaxmfvAPWOoB
	3nrjIO5b4KpPe4kjteN5W/JeOGZjx2rY5q+2t+xCriC3irUvVoWI9wpMoXjPNJzznhzTFdg6qMl
	NSOhwdENYEGRcI/eUqXHNxmhoAwNAZKqB6mTt6ANwNt1G6njjxJH/fKd4T0DQswpjTm8nLzbh+P
	WHlbg+0ivDCu4O7ceWUQkhDpCunI/U1xklTLoWT2+yU4x/Hyu0Y13dU1k4HZZc+7kguuFmzjWIS
	qOrgXqSVxy3qdPrh52h8RrvYbQ==
X-Google-Smtp-Source: AGHT+IGuCtYibPzQqqrjGNwM0zHaChLdpzHrb0geAS9qmAdlqFhgbwbFHzP5YvFRilqFdVAT8PX1Hff+wlSfn57dinQ=
X-Received: by 2002:ad4:4ea4:0:b0:81c:6455:ec77 with SMTP id
 6a1803df08f44-87f9ee7d0f6mr50574026d6.40.1761258188413; Thu, 23 Oct 2025
 15:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <20251017235159.2417576-1-royluo@google.com> <20251017235159.2417576-2-royluo@google.com>
 <20251023-collie-of-impossible-plenty-fc9382@kuoka>
In-Reply-To: <20251023-collie-of-impossible-plenty-fc9382@kuoka>
From: Roy Luo <royluo@google.com>
Date: Thu, 23 Oct 2025 15:22:31 -0700
X-Gm-Features: AWmQ_bmWas4lIuJKQxW2zSsbNKRRFte9quUEFbVLot4b-vV1AO7q94wTEgHcExg
Message-ID: <CA+zupgwQTLEs8_7i-VsGbGV7O2Y3XFA1C3aV7iuv2HLOwKns3w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_152310_822281_61941BC1 
X-CRM114-Status: GOOD (  25.11  )
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

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMTE6NDPigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMTE6NTE6
NThQTSArMDAwMCwgUm95IEx1byB3cm90ZToKPiA+IERvY3VtZW50IHRoZSBkZXZpY2UgdHJlZSBi
aW5kaW5ncyBmb3IgdGhlIFVTQiBQSFkgaW50ZXJmYWNlcyBpbnRlZ3JhdGVkCj4gPiB3aXRoIHRo
ZSBEV0MzIGNvbnRyb2xsZXIgb24gR29vZ2xlIFRlbnNvciBTb0NzLCBzdGFydGluZyB3aXRoIEc1
Cj4gPiBnZW5lcmF0aW9uLiBUaGUgVVNCIFBIWSBvbiBUZW5zb3IgRzUgaW5jbHVkZXMgdHdvIGlu
dGVncmF0ZWQgU3lub3BzeXMKPiA+IFBIWSBJUHM6IHRoZSBlVVNCIDIuMCBQSFkgSVAgYW5kIHRo
ZSBVU0IgMy4yL0Rpc3BsYXlQb3J0IGNvbWJvIFBIWSBJUC4KPiA+Cj4gPiBEdWUgdG8gYSBjb21w
bGV0ZSBhcmNoaXRlY3R1cmFsIG92ZXJoYXVsIGluIHRoZSBHb29nbGUgVGVuc29yIEc1LCB0aGUK
PiA+IGV4aXN0aW5nIFNhbXN1bmcvRXh5bm9zIFVTQiBQSFkgYmluZGluZyBmb3Igb2xkZXIgZ2Vu
ZXJhdGlvbnMgb2YgR29vZ2xlCj4gPiBzaWxpY29ucyBzdWNoIGFzIGdzMTAxIGFyZSBubyBsb25n
ZXIgY29tcGF0aWJsZSwgbmVjZXNzaXRhdGluZyB0aGlzIG5ldwo+ID4gZGV2aWNlIHRyZWUgYmlu
ZGluZy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb3kgTHVvIDxyb3lsdW9AZ29vZ2xlLmNvbT4K
PiA+IC0tLQo+ID4gIC4uLi9iaW5kaW5ncy9waHkvZ29vZ2xlLGdzNS11c2ItcGh5LnlhbWwgICAg
ICB8IDEwNCArKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTA0IGluc2Vy
dGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9nb29nbGUsZ3M1LXVzYi1waHkueWFtbAo+ID4KPiA+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2dvb2dsZSxnczUtdXNiLXBo
eS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9nb29nbGUsZ3M1
LXVzYi1waHkueWFtbAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uYzkyYzIwZWJhMWVhCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2dvb2dsZSxnczUtdXNiLXBoeS55YW1sCj4gPiBA
QCAtMCwwICsxLDEwNCBAQAo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4w
LW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4gKyMgQ29weXJpZ2h0IChDKSAyMDI1LCBHb29nbGUg
TExDCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9waHkvZ29vZ2xlLGdzNS11c2ItcGh5LnlhbWwjCj4gPiArJHNjaGVtYTogaHR0
cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiArCj4gPiArdGl0
bGU6IEdvb2dsZSBUZW5zb3IgU2VyaWVzIChHNSspIFVTQiBQSFkKPiA+ICsKPiA+ICttYWludGFp
bmVyczoKPiA+ICsgIC0gUm95IEx1byA8cm95bHVvQGdvb2dsZS5jb20+Cj4gPiArCj4gPiArZGVz
Y3JpcHRpb246IHwKPiA+ICsgIERlc2NyaWJlcyB0aGUgVVNCIFBIWSBpbnRlcmZhY2VzIGludGVn
cmF0ZWQgd2l0aCB0aGUgRFdDMyBVU0IgY29udHJvbGxlciBvbgo+ID4gKyAgR29vZ2xlIFRlbnNv
ciBTb0NzLCBzdGFydGluZyB3aXRoIHRoZSBHNSBnZW5lcmF0aW9uLgo+ID4gKyAgVHdvIHNwZWNp
ZmljIFBIWSBJUHMgZnJvbSBTeW5vcHN5cyBhcmUgaW50ZWdyYXRlZCwgaW5jbHVkaW5nIGVVU0Ig
Mi4wIFBIWSBJUAo+ID4gKyAgYW5kIFVTQiAzLjIvRGlzcGxheVBvcnQgY29tYm8gUEhZIElQLgo+
ID4gKyAgVGhlIGhhcmR3YXJlIGNhbiBzdXBwb3J0IHRocmVlIFBIWSBpbnRlcmZhY2VzLCB3aGlj
aCBhcmUgc2VsZWN0ZWQgdXNpbmcgdGhlCj4gPiArICBmaXJzdCBwaGFuZGxlIGFyZ3VtZW50IGlu
IHRoZSBQSFkgc3BlY2lmaWVyOjoKPgo+IEp1c3Qgb25lICc6JywgYW55d2F5IHRoaXMgc2VudGVu
Y2UgYW5kIGJlbG93IGRvZXMgbm90IGJlbG9uZyB0bwo+IGRlc2NyaXB0aW9uIGJ1dCB0byBwaHkt
Y2VsbHMuIFlvdSBkZXNjcmliZSB0aGUgY2VsbHMuCj4KPiBPciBqdXN0IG1lbnRpb24gdGhlIGhl
YWRlciB3aXRoIElEcyAtIGhlcmUgb3IgaW4gcGh5LWNlbGxzLgo+Cj4gPiArICAgIDAgLSBVU0Ig
aGlnaC1zcGVlZC4KPiA+ICsgICAgMSAtIFVTQiBzdXBlci1zcGVlZC4KPiA+ICsgICAgMiAtIERp
c3BsYXlQb3J0Cj4gPiArCj4gPiArcHJvcGVydGllczoKPiA+ICsgIGNvbXBhdGlibGU6Cj4gPiAr
ICAgIGNvbnN0OiBnb29nbGUsZ3M1LXVzYi1waHkKPiA+ICsKPiA+ICsgIHJlZzoKPiA+ICsgICAg
aXRlbXM6Cj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogVVNCMiBQSFkgY29uZmlndXJhdGlvbiBy
ZWdpc3RlcnMuCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogVVNCIDMuMi9EaXNwbGF5UG9ydCBj
b21ibyBQSFkgdG9wLWxldmVsIHJlZ2lzdGVycy4KPiA+ICsKPiA+ICsgIHJlZy1uYW1lczoKPiA+
ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogdTJwaHlfY2ZnCj4gPiArICAgICAgLSBj
b25zdDogZHBfdG9wCj4gPiArCj4gPiArICAiI3BoeS1jZWxscyI6Cj4gPiArICAgIGNvbnN0OiAx
Cj4gPiArCj4gPiArICBjbG9ja3M6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IFVTQjIgUEhZIGNsb2NrLgo+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IFVTQjIgUEhZ
IEFQQiBjbG9jay4KPiA+ICsKPiA+ICsgIGNsb2NrLW5hbWVzOgo+ID4gKyAgICBpdGVtczoKPiA+
ICsgICAgICAtIGNvbnN0OiB1c2IyX3BoeQo+Cj4gY29yZQo+Cj4gPiArICAgICAgLSBjb25zdDog
dTJwaHlfYXBiCj4KPiBhcGIKPgoKSnVzdCB0byBwcm92aWRlIHRoZSBmdWxsIGNvbnRleHQsIHRo
ZXNlIHR3byBjbG9ja3MvcmVzZXRzCih1c2IyX3BoeSBhbmQgdTJwaHlfYXBiKSBhcmUgc3BlY2lm
aWNhbGx5IGZvciBlVVNCMiBQSFkuClVTQjMvRFAgY29tYm8gUEhZIGhhcyBpdHMgb3duIGNsb2Nr
L3Jlc2V0IHRoYXQgaGFzbid0CmJlZW4gYWRkZWQgeWV0LCB3ZSB3b3VsZCBoYXZlIHRvIGRpZmZl
cmVudGlhdGUgdGhlbSBvbmNlClVTQjMgc3VwcG9ydCBpcyBhZGRlZCBpbiB0aGUgZnV0dXJlLgpJ
J20gZmluZSB3aXRoIHRoZSBzdWdnZXN0ZWQgbmFtZSBjaGFuZ2UsIGFuZCB3ZSBjYW4KYWRkcmVz
cyB0aGUgbmFtaW5nIGFnYWluIHdoZW4gVVNCMyBpcyByZWFkeSBmb3IKaW50ZWdyYXRpb24uCgpS
ZWdhcmRzLApSb3kgTHVvCgo+ID4gKwo+ID4gKyAgcmVzZXRzOgo+ID4gKyAgICBpdGVtczoKPiA+
ICsgICAgICAtIGRlc2NyaXB0aW9uOiBVU0IyIFBIWSByZXNldC4KPiA+ICsgICAgICAtIGRlc2Ny
aXB0aW9uOiBVU0IyIFBIWSBBUEIgcmVzZXQuCj4gPiArCj4gPiArICByZXNldC1uYW1lczoKPiA+
ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogdXNiMl9waHkKPiA+ICsgICAgICAtIGNv
bnN0OiB1MnBoeV9hcGIKPgo+IFNhbWUgaGVyZQo+Cj4gPiArCj4gPiArICBwb3dlci1kb21haW5z
Ogo+ID4gKyAgICBtYXhJdGVtczogMQo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
