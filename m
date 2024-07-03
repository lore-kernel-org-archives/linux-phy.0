Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B46C0C2BD09
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jul 2024 09:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bb26Jg9nNzkg57ZBAZqYzZVa1mnYfpZk4RHcVFUeJY=; b=sSRgROCGbwgt8T
	BWOgyxUfXZIbrX9oLDkyfqkpKtw2dl3yS5/eQ0lhN0G4RKo6ymDn7SGvjI8bf9oFzFOgSW7xkocf6
	01qkoqVq9JX4yC8QFuYlp7ftgZFGjwYiDAimJdOKEbKKbj40gz6n9Z6PKBQed7Fj3LaCyGabBK16v
	9yiwz7CiesHeTHhY1hj+2ChjsAnlUhCWhKqQxRaufE3Wx2eaitSMfT+SPUi8IQv0J6n8LrB6oQn2Q
	J3Kv9ZQh5LfJDPXlBj57oKV1/YBvrhlgwwgkBQ/aLRkk33tQrJRR8SRnnslkkW7ZHxtOmrkTo2Tot
	V5O7m273mtF0JTDXtA+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOwfH-00000009d4U-0pTo;
	Wed, 03 Jul 2024 09:52:39 +0000
Received: from mail-yw1-f182.google.com ([209.85.128.182])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOwe1-00000009cL0-418l
	for linux-phy@lists.infradead.org;
	Wed, 03 Jul 2024 09:51:23 +0000
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-64b05fab14eso49371437b3.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Jul 2024 02:51:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720000280; x=1720605080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ojKKZTj52h6Erb5/0PXhQtyS8JIAVZ4taUQH0cCCIKo=;
        b=Q1jj5uRRVXJPmHtfvCwuEVYb9hmLOjjT44prSAhjjhenqA7rSHEtRhNa2tL+gevcW+
         FjdGaTY7O3bhkIS44H/gECBnYvVXqxh/+PcpvCw7sfcRcB3IKJLw1pYQproTkSTYDyjV
         PWyeY8qIp9HwJdrQYuFGc/QN0MuQgt/3FKgNKefT2R8rkFtS448DhrIB4ytKOFU8KPoz
         PLnI2X03cErQVQDLvJsVCI+6GSwfTfcS2jA38QisJb6qKrL5VNioHc9JuAaM7L/3J3M6
         ND/asG5ottdQvXxu9B0oM1KibVA1EGGarmUXiRKZOe44cqSrvO7ddItiiWYwJZe+B2T4
         cCQA==
X-Forwarded-Encrypted: i=1; AJvYcCUMnes4Nm2KvGgdpCDGmVhaRYJ7NVG+D93y6f1lJtEbpN3S8vZw2qIpliTVCDgEXeFAxcIjS1Gf/EhgyGmqnv7dMuIMSD80KwKOtNQFlQ==
X-Gm-Message-State: AOJu0Yzgzu+SNFlaeUlH9d8n/Wt4xAYd44mUw3RkfmsR12b0MSciayPE
	wTcalReDq1LYWJK1MohOqHsGF9LQhCiCdRrnhLQi/c7F/acvhQev/K9G2kyu
X-Google-Smtp-Source: AGHT+IF5vUHMEb38zR2x4KTVr4UP+2YdxTq5PrRLdxKRSq9idXA80xCLMrad9bsMXO33ysG3rTvVBA==
X-Received: by 2002:a0d:e68c:0:b0:648:6733:e855 with SMTP id 00721157ae682-64c7123bf0cmr125768447b3.15.1720000280420;
        Wed, 03 Jul 2024 02:51:20 -0700 (PDT)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com. [209.85.128.173])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6518f4d686bsm1245447b3.0.2024.07.03.02.51.20
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jul 2024 02:51:20 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-64b05fab14eso49371247b3.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Jul 2024 02:51:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVhQ8LUm9R/t4+6v/bNgWHtJbjIH7BjfFPsODIF52rVyKmvgwStUzAROt7KFjQlqq1O4M3uLPQcycR0c7R9zvswIHsGjXd13JUAGV6Xnw==
X-Received: by 2002:a81:a9c4:0:b0:63b:f6c1:6068 with SMTP id
 00721157ae682-64c7277c692mr114262177b3.32.1720000279894; Wed, 03 Jul 2024
 02:51:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240702180032.207275-1-biju.das.jz@bp.renesas.com>
 <20240702180032.207275-5-biju.das.jz@bp.renesas.com> <CAMuHMdUmvWPPBVqhtpu2dovwQg7YA7TVZBRnATUiY+1QRy0B1w@mail.gmail.com>
 <TY3PR01MB11346C77668002325FD916DBD86DD2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346C77668002325FD916DBD86DD2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 3 Jul 2024 11:51:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUBV=qf11b2pb1rQnkYj6SrFJjm=iVpXu0GHky48Y0Pww@mail.gmail.com>
Message-ID: <CAMuHMdUBV=qf11b2pb1rQnkYj6SrFJjm=iVpXu0GHky48Y0Pww@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: renesas: rz-smarc: Replace fixed
 regulator for USB VBUS
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"biju.das.au" <biju.das.au@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_025122_051769_9D181E87 
X-CRM114-Status: GOOD (  26.79  )
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

SGkgQmlqdSwKCk9uIFdlZCwgSnVsIDMsIDIwMjQgYXQgMTA6NTbigK9BTSBCaWp1IERhcyA8Ymlq
dS5kYXMuanpAYnAucmVuZXNhcy5jb20+IHdyb3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KPiA+IEZyb206IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+
Cj4gPiBTZW50OiBXZWRuZXNkYXksIEp1bHkgMywgMjAyNCA5OjM2IEFNCj4gPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHY1IDQvNF0gYXJtNjQ6IGR0czogcmVuZXNhczogcnotc21hcmM6IFJlcGxhY2Ug
Zml4ZWQgcmVndWxhdG9yIGZvciBVU0IgVkJVUwo+ID4KPiA+IE9uIFR1ZSwgSnVsIDIsIDIwMjQg
YXQgODowMeKAr1BNIEJpanUgRGFzIDxiaWp1LmRhcy5qekBicC5yZW5lc2FzLmNvbT4gd3JvdGU6
Cj4gPiA+IFJlcGxhY2UgdGhlIGZpeGVkIHJlZ3VsYXRvciBmb3IgVVNCIFZCVVMgYW5kIHVzZSB0
aGUgcHJvcGVyIG9uZSB0aGF0Cj4gPiA+IGNvbnRyb2xzIHJlZ3VsYXRvciBiYXNlZCBvbiBWQlVT
IGRldGVjdGlvbi4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQmlqdSBEYXMgPGJpanUuZGFz
Lmp6QGJwLnJlbmVzYXMuY29tPgo+ID4gPiAtLS0KPiA+ID4gdjQtPnY1Ogo+ID4gPiAgKiBVcGRh
dGVkIGNvbW1pdCBkZXNjcmlwdGlvbi4KPiA+Cj4gPiBUaGFua3MgZm9yIHRoZSB1cGRhdGUhCj4g
Pgo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcnotc21hcmMtY29tbW9u
LmR0c2kKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3J6LXNtYXJjLWNv
bW1vbi5kdHNpCj4gPiA+IEBAIC01NCwxNCArNTQsNiBAQCBjb2RlY19kYWk6IHNpbXBsZS1hdWRp
by1jYXJkLGNvZGVjIHsKPiA+ID4gICAgICAgICAgICAgICAgIH07Cj4gPiA+ICAgICAgICAgfTsK
PiA+ID4KPiA+ID4gLSAgICAgICB1c2IwX3ZidXNfb3RnOiByZWd1bGF0b3ItdXNiMC12YnVzLW90
ZyB7Cj4gPiA+IC0gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
Cj4gPiA+IC0KPiA+ID4gLSAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gIlVTQjBfVkJV
U19PVEciOwo+ID4gPiAtICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
NTAwMDAwMD47Cj4gPiA+IC0gICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9
IDw1MDAwMDAwPjsKPiA+ID4gLSAgICAgICB9Owo+ID4gPiAtCj4gPiA+ICAgICAgICAgdmNjcV9z
ZGhpMTogcmVndWxhdG9yLXZjY3Etc2RoaTEgewo+ID4gPiAgICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZ3BpbyI7Cj4gPiA+ICAgICAgICAgICAgICAgICByZWd1bGF0b3It
bmFtZSA9ICJTREhJMSBWY2NRIjsgQEAgLTEzOSw2ICsxMzEsOSBAQAo+ID4gPiAmb2hjaTEgewo+
ID4gPgo+ID4gPiAgJnBoeXJzdCB7Cj4gPiA+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4g
PiArICAgICAgIHVzYjBfdmJ1c19vdGc6IHJlZ3VsYXRvci12YnVzIHsKPiA+Cj4gPiBUaGUgbGFi
ZWwgaXMgbm90IHJlYWxseSBuZWVkZWQsIGlzIGl0Pwo+Cj4gVGhlIGxhYmVsIGlzIHVzZWQgaW4g
dXNiMl9waHkwIG5vZGUuCj4KPiB2YnVzLXN1cHBseSA9IDwmdXNiMF92YnVzX290Zz47CgpPaCBy
aWdodCwgdGhhdCdzIGEgZGlmZmVyZW50IG5vZGUgKHRvbyBtYW55IFVTQi1yZWxhdGVkIG5vZGVz
KS4KKG15IG1pbmQgbXVzdCBoYXZlIGJlZW4gbWl4aW5nIHRoaXMgdXAgd2l0aCB0aGUgUlovVjJI
IFNESGkgcmVndWxhdG9yKQoKPgo+ID4KPiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1u
YW1lID0gInZidXMiOwo+ID4gPiArICAgICAgIH07Cj4gPgo+ID4gQWxzbywgYXMgdGhlIHJlZ3Vs
YXRvci12YnVzIHN1Ym5vZGUgaXMgcmVxdWlyZWQsIHBlcmhhcHMgaXQgc2hvdWxkIGJlIG1vdmVk
IHRvIHRoZSBTb0MtCj4gPiBzcGVjaWZpYyAuZHRzaT8gT3IgZG8geW91IGtlZXAgaXQgaGVyZSBm
b3IgYm9hcmQtc3BlY2lmaWMgY29udHJvbCBvZiB0aGUgcmVndWxhdG9yIG5hbWUsIGkuZS4gdG8K
PiA+IGF2b2lkIGNvbmZsaWN0cz8KPgo+IFllcywganVzdCB0byBhdm9pZCBjb25mbGljdHMuIExh
dGVyIEkgY2FuIG1vdmUgdG8gaW5kaXZpZHVhbCBTb0Mgc3BlY2lmaWMgZHRzaSdzCgpPSy4gR29v
ZCB0byBnbyhuZSkuLi4KCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAg
ICAgIEdlZXJ0CgotLQpHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4
IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJz
YXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0
CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIg
b3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAt
LSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
