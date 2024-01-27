Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F9FC46CD2
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jan 2024 04:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmkfirAb4TAg9zSXKkLtSnFCdxx6WEpXfm/nDwZgQO8=; b=kIFUGSQjYerx9x
	TsNF+lRj9NKmvoUZ6Iua+99bcdLesQZHae/1NJxXIDPk0DNmdWeen0+aj49C7xi/G1OmUhFkekz5b
	xjVfqfz3K3WnBvu51l94dRO4svUO5KPiVpEOZkxLi6VLMTXjKLdiJ4lVOjmicOVJ5dRCMmUWcEDnA
	O8YJY0aP5Sc7uhiwWxSpul9BD6IBXELj81rYnJQSVvu6kIAs8Af3scYQMQAVI07FW7YPRBqy/kOZu
	dUXhYoMV0AmYGZzGgdcXqFe4q34egrGr8wBoCtWDQwE5sq0uqIL1CcvoVrv1Txhrj662D8wfhlERr
	9/3jcBZ1B7B0bC+MC6Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTZwL-00000006l3X-1b7n;
	Sat, 27 Jan 2024 04:05:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTYsT-00000006SCw-1wMX;
	Sat, 27 Jan 2024 02:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=AL25Cgmp65Z4nugzUiRaGUI1/k9OMV61U5cI0oX2Yhc=; b=JwHNMAAJ8uTUxj2InBJ/8g9XyN
	EFgEGMG0YhtdSEtryx47em76Z+NLI1mV/QJb4vvrljLY741wv0yJImsdvcnqdVo1PioM2peuI5uxn
	vSDPnOeWQa2cghTFeYLVgf9QqRAnMBrHUfbtc79aDD3zqBfzL/RAdKQ8YHSYJnUfg13h7+s4NIKXw
	nkgHBxpb1m8vhwnsjDks4zfY6md8m4wofjsKg+cOPwXQkYeB8rjlbGJw2++/g1fIEBz7UDCpb+h3b
	nK2gkJvi9YHscIR2TjC0gYJQDMdc/LdHzEpJ4sClP2WZ03mHtTRI4e7Q9Hi2h9IPZ/ub+pZk/dll0
	GouDcFbA==;
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTYsP-00000006PBN-1ru6;
	Sat, 27 Jan 2024 02:57:04 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6d9f94b9186so1142555b3a.0;
        Fri, 26 Jan 2024 18:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706324219; x=1706929019; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AL25Cgmp65Z4nugzUiRaGUI1/k9OMV61U5cI0oX2Yhc=;
        b=Yw0zH2PXC43mvJnv4WhT6mcEOFoAn1TGXnXsTOEFQik9QNvfk2d/7E4j4wcF9Jj4bU
         +A4uPVTHK6kgoj0Ht/bcq0jgY+WhCpJQaOFdfb9Xb4xCtSP+DMkBpSqcYWOlWwHTuyQ2
         8S+2yx3q+kBCBMIXPLNrSkJF6YQvMt7QFxo4L40gPVHrBTBz1grLidHPLVkIKjaP9L7d
         JNulFzYVQZU8rts9D8sUC335rbX/SWCMSmgZQB7iL7cAl1qj0346/B7m+SLd5YFppS5f
         zCCPL2ufUE9rZk0ndxvYFHRHFaDz2aF2NnE2yAJm/4AFIYUT0692uxos5+O9xWWkRw8c
         VDYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706324219; x=1706929019;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AL25Cgmp65Z4nugzUiRaGUI1/k9OMV61U5cI0oX2Yhc=;
        b=KHQ5330A01sDJa5LWhi0Bj6oxcNe+eF+YOcXUtI3XJozhET1xDDaubiIitcAqirRUu
         LXnlaG6iGL1Tn9v0Noq5QZmoDUOefR3uQiO9dZFTQX1YfHzaXyUzqt28Mb3XLsXDb5iZ
         6RfaYZI8UDXyUaBE9MZ5ZEUwo8ppfVyEJjCJd/YR+kgmwgtw6+8z41fFM0FUHDDAdDUV
         VNF2nsFsy2iSC/2/aaSd0/5mwsdieoCF1vKUlhqXHPW5VRKjhwIAuKIF0Bc5ZOmKXBWj
         G51PFVt4fosBWQoXDeclaL0gyWbwyTPl+jVCFpF+WtoTC6ew2+tlLShurf8Bv8CET0h0
         hj5w==
X-Gm-Message-State: AOJu0Yy6dNib5ijlIAIp3UW6rsbn0ZCVPGtjCtx7vfvlcLFQFLv9cJHv
	j0L4iqTw014lgyfqOdjgf+GOL7yYtn3J/4vf2D6kc5DqkSUbZ2psNd1WL2zoliFUXsBnOHJpPdc
	+nmgDeLNUHoYp50d32pmKHy7m/mA=
X-Google-Smtp-Source: AGHT+IEF1Zw4IcNrJv2meCpYlZEjakZVYWQiEvWlydUinf+M6VOyFuJ4RxjJJUPz5t8zNR7LHtVIVj8g/ogXTl9F+Ag=
X-Received: by 2002:a05:6a20:7f92:b0:19c:6ec0:33d0 with SMTP id
 d18-20020a056a207f9200b0019c6ec033d0mr972394pzj.37.1706324218699; Fri, 26 Jan
 2024 18:56:58 -0800 (PST)
MIME-Version: 1.0
References: <20240106221907.325127-1-aford173@gmail.com> <20240106221907.325127-2-aford173@gmail.com>
 <13783659.uLZWGnKmhe@steina-w>
In-Reply-To: <13783659.uLZWGnKmhe@steina-w>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 26 Jan 2024 20:56:47 -0600
Message-ID: <CAHCN7xLJ7fXePrjuXOo4WJovAG1vZm1LjJGJP29aEfPO8oJL+g@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] phy: freescale: add Samsung HDMI PHY
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: dri-devel@lists.freedesktop.org, 
	Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_025702_031294_607B5D00 
X-CRM114-Status: GOOD (  30.63  )
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

T24gTW9uLCBKYW4gOCwgMjAyNCBhdCA5OjAz4oCvQU0gQWxleGFuZGVyIFN0ZWluCjxhbGV4YW5k
ZXIuc3RlaW5AZXcudHEtZ3JvdXAuY29tPiB3cm90ZToKPgo+IEhpIEFkYW0sCj4KPiB0aGFua3Mg
Zm9yIHB1c2hpbmcgdGhpcyBmb3J3YXJkLgo+Cj4gQW0gU2Ftc3RhZywgNi4gSmFudWFyIDIwMjQs
IDIzOjE5OjA1IENFVCBzY2hyaWViIEFkYW0gRm9yZDoKPiA+IEZyb206IEx1Y2FzIFN0YWNoIDxs
LnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4KPiA+IFRoaXMgYWRkcyB0aGUgZHJpdmVyIGZvciB0
aGUgU2Ftc3VuZyBIRE1JIFBIWSBmb3VuZCBvbiB0aGUKPiA+IGkuTVg4TVAgU29DLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4g
U2lnbmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4gPiAtLS0KPiA+
IFYyOiAgRml4ZWQgc29tZSB3aGl0ZXNwYWNlIGZvdW5kIGZyb20gY2hlY2twYXRjaAo+ID4gICAg
ICBDaGFuZ2UgZXJyb3IgaGFuZGxpbmcgd2hlbiBlbmFibGluZyBhcGJjbGsgdG8gdXNlIGRldl9l
cnJfcHJvYmUKPiA+ICAgICAgUmViYXNlIG9uIExpbnV4LU5leHQKPiA+Cj4gPiAgICAgIEkgKEFk
YW0pIHRyaWVkIHRvIGhlbHAgbW92ZSB0aGlzIGFsb25nLCBzbyBJIHRvb2sgTHVjYXMnIHBhdGNo
IGFuZAo+ID4gICAgICBhdHRlbXB0ZWQgdG8gYXBwbHkgZml4ZXMgYmFzZWQgb24gZmVlZGJhY2su
ICBJIGRvbid0IGhhdmUKPiA+ICAgICAgYWxsIHRoZSBoaXN0b3J5LCBzbyBhcG9sb2dpZXMgZm9y
IHRoYXQuCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmln
IGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25maWcKPiA+IGluZGV4IDg1Mzk1OGZiMmMwNi4u
NWMyYjczMDQyZGZjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25m
aWcKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnCj4gPiBAQCAtMzUsNiAr
MzUsMTIgQEAgY29uZmlnIFBIWV9GU0xfSU1YOE1fUENJRQo+ID4gICAgICAgICBFbmFibGUgdGhp
cyB0byBhZGQgc3VwcG9ydCBmb3IgdGhlIFBDSUUgUEhZIGFzIGZvdW5kIG9uCj4gPiAgICAgICAg
IGkuTVg4TSBmYW1pbHkgb2YgU09Dcy4KPiA+Cj4gPiArY29uZmlnIFBIWV9GU0xfU0FNU1VOR19I
RE1JX1BIWQo+ID4gKyAgICAgdHJpc3RhdGUgIlNhbXN1bmcgSERNSSBQSFkgc3VwcG9ydCIKPiA+
ICsgICAgIGRlcGVuZHMgb24gT0YgJiYgSEFTX0lPTUVNCj4gPiArICAgICBoZWxwCj4gPiArICAg
ICAgIEVuYWJsZSB0aGlzIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgU2Ftc3VuZyBIRE1JIFBIWSBp
biBpLk1YOE1QLgo+ID4gKwo+ID4gIGVuZGlmCj4gPgo+ID4gIGNvbmZpZyBQSFlfRlNMX0xZTlhf
MjhHCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL01ha2VmaWxlIGIvZHJp
dmVycy9waHkvZnJlZXNjYWxlL01ha2VmaWxlCj4gPiBpbmRleCBjZWRiMzI4YmM0ZDIuLmRiY2Fm
ZGNjODc1MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9NYWtlZmlsZQo+
ID4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL01ha2VmaWxlCj4gPiBAQCAtMyw0ICszLDUg
QEAgb2JqLSQoQ09ORklHX1BIWV9GU0xfSU1YOE1RX1VTQikgICAgICArPSBwaHktZnNsLWlteDht
cS11c2Iubwo+ID4gIG9iai0kKENPTkZJR19QSFlfTUlYRUxfTFZEU19QSFkpICAgICArPSBwaHkt
ZnNsLWlteDhxbS1sdmRzLXBoeS5vCj4gPiAgb2JqLSQoQ09ORklHX1BIWV9NSVhFTF9NSVBJX0RQ
SFkpICAgICs9IHBoeS1mc2wtaW14OC1taXBpLWRwaHkubwo+ID4gIG9iai0kKENPTkZJR19QSFlf
RlNMX0lNWDhNX1BDSUUpICAgICArPSBwaHktZnNsLWlteDhtLXBjaWUubwo+ID4gK29iai0kKENP
TkZJR19QSFlfRlNMX1NBTVNVTkdfSERNSV9QSFkpICArPSBwaHktZnNsLXNhbXN1bmctaGRtaS5v
Cj4gPiAgb2JqLSQoQ09ORklHX1BIWV9GU0xfTFlOWF8yOEcpICAgICAgICAgICAgICAgKz0gcGh5
LWZzbC1seW54LTI4Zy5vCj4KPiBJIGRvbid0IGtub3cgaWYgdGhlcmUgd2FzIGRpZmZlcmVudCBm
ZWVkYmFjayBhbHJlYWR5LiBCdXQgSSB3b3VsZCBoYXZlIGFkZGVkCj4gdGhlIGVudHJ5IHNvcnRl
ZCBhbHBoYWJldGljYWxseSwgdGh1cyBhZnRlciBDT05GSUdfUEhZX0ZTTF9MWU5YXzI4Ry4gU2Ft
ZSBnb2VzLAo+IGZvciBLY29uZmlnIGFzIHdlbGwuCgpUaGUgTWFrZWZpbGUgaXMgZWFzeSB0byBy
ZWFycmFuZ2UsIGJ1dCBLY29uZmlnIGlzIGFscmVhZHkgb3V0IG9mCmFscGhhYmV0aWNhbCBvcmRl
ciwgYW5kIFBIWV9GU0xfU0FNU1VOR19IRE1JX1BIWSBpcyBlbmNhcHN1bGF0ZWQgaW4gYW4KaWYg
c3RhdGVtZW50LCBzbyBpdCBjYW5ub3QgZ28gYWZ0ZXIgUEhZX0ZTTF9MWU5YXzI4Ry4gIEl0IGlz
CmFscGhhYmV0aWNhbCBhZnRlciBQSFlfRlNMX0lNWDhNLgoKPgo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gPiBiL2RyaXZlcnMv
cGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjU0ZTkzZWE4OThmNwo+ID4gLS0tIC9kZXYvbnVsbAo+
ID4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiA+
IEBAIC0wLDAgKzEsMTA3OCBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wKwo+ID4gKy8qCj4gPiArICogQ29weXJpZ2h0IDIwMjAgTlhQCj4gPiArICogQ29weXJpZ2h0
IDIwMjIgUGVuZ3V0cm9uaXgsIEx1Y2FzIFN0YWNoIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+Cj4g
PiArICovCj4gPiArCj4gPiArI2luY2x1ZGUgPGxpbnV4L2Nsay1wcm92aWRlci5oPgo+ID4gKyNp
bmNsdWRlIDxsaW51eC9jbGsuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiA+ICsj
aW5jbHVkZSA8bGludXgvaW8uaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4gPiAr
I2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2Uu
aD4KPiA+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZv
cm1fZGV2aWNlLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KPiA+ICsKPiA+
ICsjZGVmaW5lIEhETUlfVFhfQ09OVFJPTDAgICAgICAgICAgICAgMHgyMDAKPiA+ICsjZGVmaW5l
ICBIRE1JX1RYX0NPTlRST0xfUEhZX1BXUkRXTiAgQklUKDMpCj4KPiBUaGVzZSBkZWZpbmVzIGFy
ZSB1bnVzZWQgaGVyZS4KCkkgY2FuIGRyb3AgdGhlc2UuCj4KPiA+ICsKPiA+ICsjZGVmaW5lIFBI
WV9SRUdfMzMgICAgICAgICAgIDB4ODQKPiA+ICsjZGVmaW5lICBSRUczM19NT0RFX1NFVF9ET05F
IEJJVCg3KQo+ID4gKyNkZWZpbmUgIFJFRzMzX0ZJWF9EQSAgICAgICAgICAgICAgICBCSVQoMSkK
PiA+ICsKPiA+ICsjZGVmaW5lIFBIWV9SRUdfMzQgICAgICAgICAgIDB4ODgKPiA+ICsjZGVmaW5l
ICBSRUczNF9QSFlfUkVBRFkgICAgIEJJVCg3KQo+ID4gKyNkZWZpbmUgIFJFRzM0X1BMTF9MT0NL
ICAgICAgICAgICAgICBCSVQoNikKPiA+ICsjZGVmaW5lICBSRUczNF9QSFlfQ0xLX1JFQURZIEJJ
VCg1KQo+ID4gKwo+ID4gKwo+ID4gKyNkZWZpbmUgUEhZX1BMTF9SRUdTX05VTSA0OAo+ID4gKwo+
ID4gK3N0cnVjdCBwaHlfY29uZmlnIHsKPiA+ICsgICAgIHUzMiAgICAgY2xrX3JhdGU7Cj4gPiAr
ICAgICB1OCByZWdzW1BIWV9QTExfUkVHU19OVU1dOwo+Cj4gU2hvdWxkbid0IHJlZyBiZSBhbGln
bmVkIGFsb25nIGNsa19yYXRlPwoKV2h5IHNvPyAgVGhleSBhcHBlYXIgdG8ganVzdCBiZSBzdHJ1
Y3R1cmVzIHdoZXJlIGluZGl2aWR1YWwgcGFydHMgYXJlCnJlYWQvd3JpdHRlbiBpbmRpdmlkdWFs
bHkuICBMb29raW5nIGF0IGFub3RoZXIgSERNSSBwaHkgZHJpdmVyLCBpdCdzCm5vdCByZWFsbHkg
YW55IGRpZmZlcmVudC4KCj4KPiBEZXNwaXRlIHRoYXQuIFRlc3RlZCBvbiBUUU1hOE1QUUwvTUJh
OE1QeEwgKyBGdWxsLUhEIEhETUkgbW9uaXRvci4KPgo+IFRlc3RlZC1ieTogQWxleGFuZGVyIFN0
ZWluIDxhbGV4YW5kZXIuc3RlaW5AZXcudHEtZ3JvdXAuY29tPgo+CgpUaGFua3MgZm9yIHRlc3Rp
bmcuCgphZGFtCj4gQmVzdCByZWdhcmRzLAo+IEFsZXhhbmRlcgo+CjxzbmlwPgoKPgo+Cj4gLS0K
PiBUUS1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxpbmcgfCA4MjIyOSBT
ZWVmZWxkLCBHZXJtYW55Cj4gQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKPiBHZXNj
aMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBT
Y2huZWlkZXIKPiBodHRwOi8vd3d3LnRxLWdyb3VwLmNvbS8KPgo+CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
