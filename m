Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048A4CF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 11:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtm3inqP5wMeowRmYZXmjAfcKHP9SJCN+dXwU3nrxbM=; b=hI0xVw/J8E13+i
	NKXVUB7V6dO5yZXjsgPzw60vG0RYOE8JMwu8B7jgzk2DvJCBVKUcjLf5Da1OZ3XLByqW6qi+VZTgr
	R0uVP9neDoIemEWBjAbmNFnUjNTNKeRPA1iJuODVu+bZITHNnk942AQbwUcfFwMHdouh7kRe/1yMP
	Bey1256oCIi7ktAzwTjgUkv0C186CrOQXUnTzTol4vFMHejNXOtTclc2Gbl0HeggVV/m0EA+IBU+8
	+5ud+iyTGb5pAGskPDiu5v/1mGhkx8fW2XCcQVkVtwJB8f6RDomMiTkSF7gmXuFInXpTzvw7bYeXC
	FIA7yW7W7aYIMeQWxNYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st3oY-00000002Awp-2NFV;
	Tue, 24 Sep 2024 11:34:42 +0000
Received: from mail-yb1-f173.google.com ([209.85.219.173])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st3mH-00000002AD9-3mnL;
	Tue, 24 Sep 2024 11:32:23 +0000
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e1dc358d6aeso4016371276.3;
        Tue, 24 Sep 2024 04:32:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727177540; x=1727782340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jm6h96BED8DQTfet2QAIovV1CqCtWAjpatPZ7/UosWI=;
        b=dtpftWe9m931tuuJ5cQF5sVf4+kfoojzeAKLne/elWCeMLYRM3xj6Z+IStC9l8YBBf
         jBFS1OSoLUdIlZ0hcyY1zL+jEbhkrUxLo6vSdpY+5LpelXz6tl6GP5JeugqUOvl4E2eS
         otxw9q4GWXYlJlNDvYI4PoDVPeX+0ls2lAGL4NT3SVBmaXv/dUeSRtoD9d9u9JhMDntJ
         R5JsjMfU7e2lU+nH+UkEP/e9UcRGev0wA94AfAt2+GZHZOMKWkdCSSAzs9BZzJSO2beO
         ib0KyylQt+7FJnb6yVvIxuD/bDiO7tZrXGMgjOivilZ0jcriDtVi10UD2Z3zBr/SiV+k
         fh4A==
X-Forwarded-Encrypted: i=1; AJvYcCVy4dVD3c8vPga8AQgiKEStuXmRclL3BAXkiCKbcPI/AOxlyV5RLgx3vOs+L6n2rgVSm8P0IZaaNm3l@lists.infradead.org, AJvYcCXvsX/pRDMsD44oxw9dLa8t/Aiu3EpNC1JuFM3+kBHe3Nc0p1nmzmhKeNqNS3NqMdW7g0mKt/C91IqqSPsweP6k@lists.infradead.org
X-Gm-Message-State: AOJu0YzVHQP7oKDwLDP8WEBGJDY+tamc2O8AlABHsNqy1+N+nJOMmKsb
	hKB1ALN+XEi1hfGRQLtDoguHcIZVANlWujz2kc1T51leQOl3UfJhiHtqY0fU
X-Google-Smtp-Source: AGHT+IG5WVo5eG22avj9SNaKsJYbW5KGsmUJx2+HUsiynKVD7chFptqQTvBpjhW/T9bSFtqFbxuDQA==
X-Received: by 2002:a05:6902:260a:b0:e1a:7830:c6e6 with SMTP id 3f1490d57ef6-e2250c46f84mr10040027276.27.1727177539646;
        Tue, 24 Sep 2024 04:32:19 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e2499ae672csm205457276.3.2024.09.24.04.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2024 04:32:17 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6dbb24ee2ebso47583547b3.1;
        Tue, 24 Sep 2024 04:32:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVCeyorSaoLyx01Jr0P1+b0L7AHMqSv5fVKU+ZSDh7z2+40PObIoLotEOqmmCzsbWbYrM8lXX6UBVxK@lists.infradead.org, AJvYcCXk7RoJBH7dk97H4756NNwzJP4dZlnoxEtWXgh9r8GQSLPUFniK82RLysd1p1JUudoyeR0jI5KqeHgZd2fLa3oo@lists.infradead.org
X-Received: by 2002:a05:690c:48c1:b0:6af:eaaf:2527 with SMTP id
 00721157ae682-6dfeed87f8cmr127931067b3.18.1727177537112; Tue, 24 Sep 2024
 04:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-5-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-5-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 24 Sep 2024 13:32:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVQsHx0nC3xwQWVRWyWMnbXd1=RokNn8rkJv3bfG_0p-A@mail.gmail.com>
Message-ID: <CAMuHMdVQsHx0nC3xwQWVRWyWMnbXd1=RokNn8rkJv3bfG_0p-A@mail.gmail.com>
Subject: Re: [PATCH 04/16] soc: renesas: Add SYSC driver for Renesas RZ/G3S
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_043221_990410_6EB4534B 
X-CRM114-Status: GOOD (  21.30  )
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

SGkgQ2xhdWRpdSwKCk9uIFRodSwgQXVnIDIyLCAyMDI0IGF0IDU6MjjigK9QTSBDbGF1ZGl1IDxj
bGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxj
bGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPgo+IFRoZSBSWi9HM1MgU1lTIENvbnRy
b2xsZXIgaGFzIDIgcmVnaXN0ZXJzIChvbmUgZm9yIFBDSUUgb25lIGZvciBVU0IpIHRoYXQKPiBu
ZWVkIHRvIGJlIGNvbmZpZ3VyZWQgYmVmb3JlL2FmdGVyIHBvd2VyaW5nIG9mZi9vbiB0aGUgUENJ
IG9yIFVTQgo+IGFyZXMuIFRoZSBiaXRzIGluIHRoZXNlIHJlZ2lzdGVycyBjb250cm9sIHNpZ25h
bHMgdG8gUENJRSBhbmQgVVNCIHRoYXQKPiBuZWVkIHRvIGJlIGRlLWFzc2VydGVkL2Fzc2VydGVk
IGFmdGVyL2JlZm9yZSBwb3dlciBvbi9vZmYgZXZlbnQuIEZvciB0aGlzCj4gYWRkIFNZU0MgY29u
dHJvbGxlciBkcml2ZXIgdGhhdCByZWdpc3RlcnMgYSByZXNldCBjb250cm9sbGVyIGRyaXZlciBv
bgo+IGF1eGlsaWFyeSBidXMgd2hpY2ggYWxsb3dzIFVTQiwgUENJRSBkcml2ZXJzIHRvIGNvbnRy
b2wgdGhlc2Ugc2lnbmFscy4KPgo+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1
ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KClRoYW5rcyBmb3IgeW91ciBwYXRjaCEKCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcmVzZXQvcmVzZXQtcnpnM3Mtc3lzYy5jCj4g
QEAgLTAsMCArMSwxNDAgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
PiArLyoKPiArICogUmVuZXNhcyBSWi9HM1MgU1lTQyByZXNldCBkcml2ZXIKPiArICoKPiArICog
Q29weXJpZ2h0IChDKSAyMDI0IFJlbmVzYXMgRWxlY3Ryb25pY3MgQ29ycC4KPiArICovCj4gKwo+
ICsjaW5jbHVkZSA8bGludXgvYXV4aWxpYXJ5X2J1cy5oPgoKVXNpbmcgdGhlIEF1eGlsaWFyeSBC
dXMgcmVxdWlyZXMgc2VsZWN0aW5nIEFVWElMSUFSWV9CVVMuCkVsc3NlIHlvdSBtaWdodCBydW4g
aW50byBidWlsZCBmYWlsdXJlczoKCmFhcmNoNjQtbGludXgtZ251LWxkOiBkcml2ZXJzL3NvYy9y
ZW5lc2FzL3J6ZzNzLXN5c2MubzogaW4gZnVuY3Rpb24KYHJ6ZzNzX3N5c2NfcHJvYmUnOgpyemcz
cy1zeXNjLmM6KC50ZXh0KzB4MjFjKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgYXV4aWxpYXJ5
X2RldmljZV9pbml0JwphYXJjaDY0LWxpbnV4LWdudS1sZDogcnpnM3Mtc3lzYy5jOigudGV4dCsw
eDI2NCk6IHVuZGVmaW5lZCByZWZlcmVuY2UKdG8gYF9fYXV4aWxpYXJ5X2RldmljZV9hZGQnCmFh
cmNoNjQtbGludXgtZ251LWxkOiBkcml2ZXJzL3Jlc2V0L3Jlc2V0LXJ6ZzNzLXN5c2MubzogaW4g
ZnVuY3Rpb24KYHJ6ZzNzX3N5c2NfcmVzZXRfZHJpdmVyX2luaXQnOgpyZXNldC1yemczcy1zeXNj
LmM6KC5pbml0LnRleHQrMHgxYyk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8KYF9fYXV4aWxpYXJ5
X2RyaXZlcl9yZWdpc3RlcicKYWFyY2g2NC1saW51eC1nbnUtbGQ6IGRyaXZlcnMvcmVzZXQvcmVz
ZXQtcnpnM3Mtc3lzYy5vOiBpbiBmdW5jdGlvbgpgcnpnM3Nfc3lzY19yZXNldF9kcml2ZXJfZXhp
dCc6CnJlc2V0LXJ6ZzNzLXN5c2MuYzooLmV4aXQudGV4dCsweDEwKTogdW5kZWZpbmVkIHJlZmVy
ZW5jZSB0bwpgYXV4aWxpYXJ5X2RyaXZlcl91bnJlZ2lzdGVyJwoKR3J7b2V0amUsZWV0aW5nfXMs
CgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAt
LSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5v
cmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNh
bGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJ
IGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
