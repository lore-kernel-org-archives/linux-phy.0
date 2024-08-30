Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2929CA0FEB
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 13:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5bVxFede/tg8enA676FRxjxvDa4PFGXIuHLp5wyW0I=; b=0NZ7yn96ezmJwo
	d7i+IGI4E2ZeNXgN0Lz0i1e3I0tx2Br8dwzm8asf4v0hgXcByRoteztsESOBRLOluyGGN9/ouS4AK
	UO1IgCjv5mkMI0AaV4zpUBkMGTBV8d/3y/MHG+CORjx87WGQPPOLXMjHDWIX2JowYlukYvrJtL57t
	B30h5gIowt75JuBPRtnf8sa6lfIr3Nrqf5RpCVl1nt7ui795BB50yZ3GPgNI59859LfKBvyR8lKEE
	ngTlM3UOxoXE4Uf/eDQNIRROQ2855/z9JAyTVcDSHICb9B/5tNURKQkCm9bjedMpuvOUGjjwsPhFH
	lpTJ97HLnBlPHJSYwdow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk1Xz-00000006OGS-2DRC;
	Fri, 30 Aug 2024 13:20:15 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk1K2-00000006KoY-2JDQ
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 13:05:52 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-7c691c8f8dcso1191476a12.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 06:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725023149; x=1725627949; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2/OAejnsiuYcRBFc3w40uVreuCzsZZuIbGLYT8lLiA=;
        b=UDvhg3/Hmj92pnV/hRdAAX1RJ0cEV3t99uEKlDCzieN4O/+A57jpQ3bjIuDx2InEzo
         N2BoFzyzex5NgJrLqTTU4KgIHn+cbh+5ELkpaMtL8Nja/KYax2/9CO6CmVtADIPdhBnD
         Z5YNXb/YI/PtR43HhSPfJKqTOGdXb8rkglOpmak79dv4CESE4bz9N81nv3mZqPkO08rf
         NEjrroHP7ALDTiyyioPpWGD3tp2KX7t932cQWA4KlIUFVaMRduV5Wj0dUXH2KG8wv63n
         4ts0yTO6bvZyFjC7KG/1esBwsH9JVZUC0EinoVg+kvn6ng6qGJm/XKmOBohmXee2QpZM
         y2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725023149; x=1725627949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2/OAejnsiuYcRBFc3w40uVreuCzsZZuIbGLYT8lLiA=;
        b=UccQ4GOKVeePS42mqF9+rv2xX32qJlIoriVlwlmfh7+9AYZscTVMb0jaKCaBFfj0XD
         sP4yIig846AXEMkTvmNIf4ao4oFEMiZnxJEjsR4ii99VWNstDpAlW4+jdV0G9rayO7Ex
         0krZveVSgGDdts+7/+T30OlgSp4+B1Dny/BsmUXh+Iwl+nvdD0PRA2Tu1J2xsd+gUaJw
         yEORot4jgSMaVqh7oTJZutCaRSov8tzTboAzQm9NRPjDPuiRG+jWTyXQwzUBjlWRJOrr
         Hcv5QoaYwhaujbYVYfatvvqO5s3dD3+OVoNFdV9OPwze7N7s1ZX3lOXcvuhCFq+YOVsZ
         eAaQ==
X-Gm-Message-State: AOJu0Yy2iUOWc5kSi5oNYWk7fUFmbFcN45YK4MIdY8IwptIWBFmfaOQf
	ibFcUalvCVbJIVNGGJBcHt0b+o7ePyAiNnOXZFnjzbWhE24TNjYIFcZTitYeFsqwVB07tay6mv8
	LXWF5Aa3LeWFM7EBv2gf9pFZlJ9s=
X-Google-Smtp-Source: AGHT+IGC+zn8BVsMs+l2GLH+s2gVQrfg2TWIeMQxR2Tdy2T9MoeJugkdwFdKqV3sDjE8Ceij5Mm7/cJpeOdB0yQ/KIw=
X-Received: by 2002:a17:90a:f281:b0:2d8:8509:85d1 with SMTP id
 98e67ed59e1d1-2d8850989c0mr500196a91.38.1725023149115; Fri, 30 Aug 2024
 06:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240829021256.787615-1-aford173@gmail.com> <20240829021256.787615-2-aford173@gmail.com>
 <ZtC2LhYAAdPdSRpz@vaman> <CAHCN7xKW=zxips+J73913eEfS+p_e3dN9BWU08=poj599JbUxA@mail.gmail.com>
 <ZtF69NSHFtAwDupq@vaman>
In-Reply-To: <ZtF69NSHFtAwDupq@vaman>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 30 Aug 2024 08:05:37 -0500
Message-ID: <CAHCN7xKsH4Rau23t_pmsjTsNS7Hz32Xb+GBydjLFDpgtni7w2A@mail.gmail.com>
Subject: Re: [RFC V2 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer divider
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com, 
	linux-imx@nxp.com, festevam@gmail.com, frieder.schrempf@kontron.de, 
	aford@beaconembedded.com, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Lucas Stach <l.stach@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_060550_610356_D89B1C65 
X-CRM114-Status: GOOD (  27.79  )
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

T24gRnJpLCBBdWcgMzAsIDIwMjQgYXQgMjo1NeKAr0FNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gMjktMDgtMjQsIDEzOjMwLCBBZGFtIEZvcmQgd3JvdGU6Cj4g
PiBPbiBUaHUsIEF1ZyAyOSwgMjAyNCBhdCAxMjo1NuKAr1BNIFZpbm9kIEtvdWwgPHZrb3VsQGtl
cm5lbC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiAyOC0wOC0yNCwgMjE6MTIsIEFkYW0gRm9y
ZCB3cm90ZToKPiA+ID4gPiBUaGVyZSBpcyBjdXJyZW50bHkgYSBsb29rLXVwIHRhYmxlIGZvciBh
IHZhcmlldHkgb2YgcmVzb2x1dGlvbnMuCj4gPiA+ID4gU2luY2UgdGhlIHBoeSBoYXMgdGhlIGFi
aWxpdHkgdG8gZHluYW1pY2FsbHkgY2FsY3VsYXRlIHRoZSB2YWx1ZXMKPiA+ID4gPiBuZWNlc3Nh
cnkgdG8gdXNlIHRoZSBpbnRnZXIgZGl2aWRlciB3aGljaCBzaG91bGQgYWxsb3cgbW9yZQo+ID4g
PiA+IHJlc29sdXRpb25zIHdpdGhvdXQgaGF2aW5nIHRvIHVwZGF0ZSB0aGUgbG9vay11cC10YWJs
ZS4gIElmIHRoZQo+ID4gPiA+IGludGVnZXIgY2FsY3VsYXRvciBjYW5ub3QgZ2V0IGFuIGV4YWN0
IGZyZXF1ZW5jeSwgaXQgZmFsbHMgYmFjawo+ID4gPiA+IHRvIHRoZSBsb29rLXVwLXRhYmxlLiAg
QmVjYXVzZSB0aGUgTFVUIGFsZ29yaXRobSBkb2VzIHNvbWUKPiA+ID4gPiByb3VuZGluZywgSSBk
aWQgbm90IHJlbW92ZSBpbnRlZ2VyIGVudHJpZXMgZnJvbSB0aGUgTFVULgo+ID4gPgo+ID4gPiBB
bnkgcmVhc29uIHdoeSB0aGlzIGlzIFJGQz8KPiA+Cj4gPiBTb21lb25lIHdhcyBhc2tpbmcgZm9y
IGZ1bmN0aW9uYWxpdHksIGJ1dCBJJ20gbm90IDEwMCUgc3VyZSB0aGlzIGlzCj4gPiB0aGUgcmln
aHQgYXBwcm9hY2ggb3IgaXQgd291bGQgZXZlbiB3b3JrLiAgSSBhbSB3YWl0aW5nIGZvciBmZWVk
YmFjawo+ID4gZnJvbSBEb21pbmlxdWUgdG8gZGV0ZXJtaW5lIGlmIHRoaXMgaGVscHMgc29sdmUg
dGhlIGRpc3BsYXkgZm9yIHRoYXQKPiA+IHBhcnRpY3VsYXIgZGlzcGxheS4KPiA+Cj4gPiA+Cj4g
PiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNv
bT4KPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5
LWZzbC1zYW1zdW5nLWhkbWkuYyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1
bmctaGRtaS5jCj4gPiA+ID4gaW5kZXggYmM1ZDM2MjVlY2U2Li43NmUwODk5YzYwMDYgMTAwNjQ0
Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1p
LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhk
bWkuYwo+ID4gPiA+IEBAIC0xNiw2ICsxNiw4IEBACj4gPiA+ID4KPiA+ID4gPiAgI2RlZmluZSBQ
SFlfUkVHKHJlZykgICAgICAgICAocmVnICogNCkKPiA+ID4gPgo+ID4gPiA+ICsjZGVmaW5lIFJF
RzAxX1BNU19QX01BU0sgICAgIEdFTk1BU0soMywgMCkKPiA+ID4gPiArI2RlZmluZSBSRUcwM19Q
TVNfU19NQVNLICAgICBHRU5NQVNLKDcsIDQpCj4gPiA+ID4gICNkZWZpbmUgUkVHMTJfQ0tfRElW
X01BU0sgICAgR0VOTUFTSyg1LCA0KQo+ID4gPiA+ICAjZGVmaW5lIFJFRzEzX1RHX0NPREVfTE9X
X01BU0sgICAgICAgR0VOTUFTSyg3LCAwKQo+ID4gPiA+ICAjZGVmaW5lIFJFRzE0X1RPTF9NQVNL
ICAgICAgICAgICAgICAgR0VOTUFTSyg3LCA0KQo+ID4gPiA+IEBAIC0zMSwxMSArMzMsMTcgQEAK
PiA+ID4gPgo+ID4gPiA+ICAjZGVmaW5lIFBIWV9QTExfRElWX1JFR1NfTlVNIDYKPiA+ID4gPgo+
ID4gPiA+ICsjaWZuZGVmIE1IWgo+ID4gPiA+ICsjZGVmaW5lIE1IWiAgKDEwMDBVTCAqIDEwMDBV
TCkKPiA+ID4gPiArI2VuZGlmCj4gPiA+ID4gKwo+ID4gPiA+ICBzdHJ1Y3QgcGh5X2NvbmZpZyB7
Cj4gPiA+ID4gICAgICAgdTMyICAgICBwaXhjbGs7Cj4gPiA+ID4gICAgICAgdTggICAgICBwbGxf
ZGl2X3JlZ3NbUEhZX1BMTF9ESVZfUkVHU19OVU1dOwo+ID4gPiA+ICB9Owo+ID4gPiA+Cj4gPiA+
ID4gK3N0YXRpYyBzdHJ1Y3QgcGh5X2NvbmZpZyBjdXN0b21fcGh5X3BsbF9jZmc7Cj4gPiA+ID4g
Kwo+ID4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV9jb25maWcgcGh5X3BsbF9jZmdbXSA9
IHsKPiA+ID4gPiAgICAgICB7Cj4gPiA+ID4gICAgICAgICAgICAgICAucGl4Y2xrID0gMjIyNTAw
MDAsCj4gPiA+ID4gQEAgLTQ0MCwxMCArNDQ4LDgzIEBAIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2Nv
bmZpZ3VyZV9wbGxfbG9ja19kZXQoc3RydWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCj4g
PiA+ID4gICAgICAgICAgICAgIHBoeS0+cmVncyArIFBIWV9SRUcoMTQpKTsKPiA+ID4gPiAgfQo+
ID4gPiA+Cj4gPiA+ID4gK3N0YXRpYyB1bnNpZ25lZCBsb25nIGZzbF9zYW1zdW5nX2hkbWlfcGh5
X2ZpbmRfcG1zKHVuc2lnbmVkIGxvbmcgZm91dCwgdTggKnAsIHUxNiAqbSwgdTggKnMpCj4gPiA+
ID4gK3sKPiA+ID4gPiArICAgICB1bnNpZ25lZCBsb25nIGJlc3RfZnJlcSA9IDA7Cj4gPiA+ID4g
KyAgICAgdTMyIG1pbl9kZWx0YSA9IDB4ZmZmZmZmZmY7Cj4gPiA+Cj4gPiA+ID4gKyAgICAgdTgg
X3AsIGJlc3RfcDsKPiA+ID4gPiArICAgICB1MTYgX20sIGJlc3RfbTsKPiA+ID4gPiArICAgICB1
OCBfcywgYmVzdF9zOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICBmb3IgKF9wID0gMTsgX3AgPD0g
MTE7ICsrX3ApIHsKPiA+ID4KPiA+ID4gc3RhcnRzIHdpdGggMSB0byAxMS4uIHdoeT8KPiA+Cj4g
PiBBY2NvcmRpbmcgdG8gUmV2IDIgb2YgdGhlIDhNUCBSZWZlcmVuY2UgTWFudWFsLCB0aGUgUHJl
dmlkZXIgcmFuZ2UgaXMKPiA+IGJldHdlZW4gMSBhbmQgMTEuCj4KPiBXb3VsZCBiZSBiZXR0ZXIg
dG8gZG9jdW1lbnQgdGhlc2UgYXNzdW1wdGlvbnMsIGFtIHN1cmUgaWYgc29tZW9uZSBhc2tzCj4g
eW91IHRoaXMgbmV4dCB5ZWFyLCBpdCB3b3VsZCBiZSBoYXJkIHRvIHJlY2FsbCA6LSkKCkkgdXBk
YXRlZCB0aGUgbm90ZSBuIFYzLgoKRG9taW5pcXVlIGNvbmZpcm1lZCBWMyBhcHBlYXJzIHRvIGJl
IHdvcmtpbmcsIHNvIEknbGwgaW52ZXN0aWdhdGUgaGlzCnN1Z2dlc3Rpb25zLCBhbmQgc3VibWl0
IGEgcGF0Y2ggYmFzZWQgb24gbXkgVjMgd2l0aG91dCB0aGUgUkZDLgoKYWRhbQo+Cj4gLS0KPiB+
Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
