Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6508CC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 28 Jan 2022 11:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGw7V0dS1dC/roOyla7iWlR7wmpHdiKiFd/F4JFi6RE=; b=HxbJpan2kwioQu
	hVXitDfDCTY2sfrdoyhV5WlsY6WvT/YTJYYISv+czbGLkO6AAM4uWJZZED6pIIuhWE5L0YCBf4Ksw
	jZEILA9ezHFK+NoUqb3qLHWFjvgRnmSnK2AkEe/OCh6V2XCZsd3a2tc9AAj1PaPKSd4acdl6LWvSG
	Ylh6YSfJt0jxfRnaDK+S8AevGTX1LO3u4SS9ohSlNB/xQqynrkDQoFf53VnJ83LfAqMcNfm/XWFay
	sibQkWqZCyeIlt0b4ftbg+5p/wPMtc8rvuR1AbcG/nZr/My9Tl9wOBEX6dsL/ljyawW2SWmVNJ58j
	QCu/G6Gjqi4H26qho9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDPGd-001eMD-Rv; Fri, 28 Jan 2022 11:18:11 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDPGa-001eLP-PK
 for linux-phy@lists.infradead.org; Fri, 28 Jan 2022 11:18:10 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 250A63F1E0
 for <linux-phy@lists.infradead.org>; Fri, 28 Jan 2022 11:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643368681;
 bh=QuTH87KiP8Tt78Eff179Z1pDjtt4cP7PtS8IM8AhHso=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:In-Reply-To;
 b=Cd9c4CG4s/J5ujOFYPcyk3V9DU0RSI6ZCWQ8ul4iLHp2KDS2ahkghXGp/JARgkbu2
 GWx0+Z+cKuP5PkfH0DaFfe9+0frSZ2FxNk3WlDmCqRDFAB4bXM+tuZpTTJgEEc6Tb2
 I6oZpOagGTL1vCDOlm2QSeFl6LFvHa7oXLq2MWc5lz0sCH7hzRXyQrGAc3pc/+PAhf
 001G5GEaJ0XDmFn9lgrtRf8cLn+bjNJfvt8b4gbyZthrI13iF2Ab26xX89OjuNN204
 SyN3h8EkDl92qWDFXn6jtjihpYw0gPovGH/H/riJr5D84VA0HwQIVZeJMx05xXPqEX
 1y3WhwWKhgOyg==
Received: by mail-ed1-f70.google.com with SMTP id
 o5-20020a50c905000000b00403bbdcef64so2425889edh.14
 for <linux-phy@lists.infradead.org>; Fri, 28 Jan 2022 03:18:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=QuTH87KiP8Tt78Eff179Z1pDjtt4cP7PtS8IM8AhHso=;
 b=bVu3JEWpDoK1tip5nJUEl4Dti6nKeA7dafDNjcjfvJfnluJEGOemMx77D25E54Zi8u
 ZaeBBaZjckGsCB9J4yS6dAZCRJhvYDbhkYq+WIfwbG+NBoCpMZ7aUaiiKdAt0PQ5OaHS
 +5XNpGH+o6p8/omRdGnVJfhlQjpSfb2VsUYMPZsBhd6fnjwM6ABtVrqbxue6EWi1puC8
 MV5ZVjjGqHotNhn6vfLpDecOqE8XTOG2hOHQ0XLXg5ulWQfQd70tBkdICi54hpVrz6K8
 0jY9VR4+JVB/Ypt9JYRBLK3MLo+Vt6vo+UYMtqhiubv5yaPIaVp+2jkkJpzycuSLzLOZ
 ckwA==
X-Gm-Message-State: AOAM532zbjpUYKMoGQSgT9LSjqnLLnccHvBbS5EmMw2gl5JI9FL64OhP
 7yScEIvYCfOuy/e2gnA3FDtEKr78Gr9MCTSoYJBh0QO5cDNz0d3eOWB2UIgvbCuz8YbLCUKyZD8
 sXicA9P600G1pAyXrAvJjnC2JflaO0LAe6VkChB2T2Sg=
X-Received: by 2002:aa7:d702:: with SMTP id t2mr7686972edq.20.1643368680735;
 Fri, 28 Jan 2022 03:18:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz9tV0bmjkXOaMd30OS4EOlfQJ/lR7E8orL/OW3DBqYDIqZz0WdCWcZtXD1/f+IlgoQPLPnJw==
X-Received: by 2002:aa7:d702:: with SMTP id t2mr7686960edq.20.1643368680539;
 Fri, 28 Jan 2022 03:18:00 -0800 (PST)
Received: from krzk-bin (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
 by smtp.googlemail.com with ESMTPSA id o11sm12717427edq.5.2022.01.28.03.17.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jan 2022 03:17:59 -0800 (PST)
Date: Fri, 28 Jan 2022 12:17:58 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: =?utf-8?B?7J207JmV7ISd?= <wangseok.lee@samsung.com>
Cc: "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH] phy: add axis artpec8 pcie phy driver
Message-ID: <20220128111758.ynftwfc5mnwxcatw@krzk-bin>
References: <CGME20220128060142epcms2p1d8ad5b735ed3594abdfc3b951fd56d00@epcms2p1>
 <20220128060142epcms2p1d8ad5b735ed3594abdfc3b951fd56d00@epcms2p1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220128060142epcms2p1d8ad5b735ed3594abdfc3b951fd56d00@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_031809_060733_811E992A 
X-CRM114-Status: GOOD (  24.87  )
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

T24gRnJpLCBKYW4gMjgsIDIwMjIgYXQgMDM6MDE6NDJQTSArMDkwMCwg7J207JmV7ISdIHdyb3Rl
Ogo+IGFkZCBheGlzIGFydHBlYzggcGNpZSBwaHkgZHJpdmVyCj4gCj4gU2lnbmVkLW9mZi1ieTog
d2FuZ3Nlb2subGVlIDx3YW5nc2Vvay5sZWVAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
cGh5L2FydHBlYy9LY29uZmlnICAgICAgICAgICAgfCAgIDcgKwo+ICBkcml2ZXJzL3BoeS9hcnRw
ZWMvTWFrZWZpbGUgICAgICAgICAgIHwgICAyICsKPiAgZHJpdmVycy9waHkvYXJ0cGVjL3BoeS1h
cnRwZWM4LXBjaWUuYyB8IDg4MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
IDMgZmlsZXMgY2hhbmdlZCwgODg5IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvcGh5L2FydHBlYy9LY29uZmlnCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3BoeS9hcnRwZWMvTWFrZWZpbGUKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L2Fy
dHBlYy9waHktYXJ0cGVjOC1wY2llLmMKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYXJ0
cGVjL0tjb25maWcgYi9kcml2ZXJzL3BoeS9hcnRwZWMvS2NvbmZpZwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uNjhjNWVjYgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9k
cml2ZXJzL3BoeS9hcnRwZWMvS2NvbmZpZwo+IEBAIC0wLDAgKzEsNyBAQAo+ICtjb25maWcgUEhZ
X0FSVFBFQzhfUENJRQo+ICsJYm9vbCAiQVJUUEVDLTggUENJZSBQSFkgZHJpdmVyIgo+ICsJZGVw
ZW5kcyBvbiBPRiAmJiAoQVJDSF9BUlRQRUM4IHx8IENPTVBJTEVfVEVTVCkKCldoYXQgaXMgQVJD
SF9BUlRQRUM4PwoKPiArCXNlbGVjdCBHRU5FUklDX1BIWQo+ICsJaGVscAo+ICsJICBFbmFibGUg
UENJZSBQSFkgc3VwcG9ydCBmb3IgQVJUUEVDLTguCj4gKwkgIFRoaXMgZHJpdmVyIHByb3ZpZGVz
IFBIWSBpbnRlcmZhY2UgZm9yIEFSVFBFQy04IFBDSWUgY29udHJvbGxlci4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvYXJ0cGVjL01ha2VmaWxlIGIvZHJpdmVycy9waHkvYXJ0cGVjL01ha2Vm
aWxlCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwLi40NWQ4NTNjCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L2FydHBlYy9NYWtlZmlsZQo+IEBAIC0wLDAg
KzEsMiBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gK29iai0kKENP
TkZJR19QSFlfQVJUUEVDOF9QQ0lFKQkJKz0gcGh5LWFydHBlYzgtcGNpZS5vCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L2FydHBlYy9waHktYXJ0cGVjOC1wY2llLmMgYi9kcml2ZXJzL3BoeS9h
cnRwZWMvcGh5LWFydHBlYzgtcGNpZS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwLi4xZDFmMzdmCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L2FydHBl
Yy9waHktYXJ0cGVjOC1wY2llLmMKPiBAQCAtMCwwICsxLDg4MCBAQAo+ICsvLyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gKy8qCj4gKyAqIFBIWSBwcm92aWRlciBmb3Ig
QVJUUEVDLTggUENJZSBjb250cm9sbGVyCj4gKyAqCj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBT
YW1zdW5nIEVsZWN0cm9uaWNzIENvLiwgTHRkLgo+ICsgKgkJaHR0cDovL3d3dy5zYW1zdW5nLmNv
bQo+ICsgKgo+ICsgKiBBdXRob3I6IEphZWhvIENobyA8amFlaG83OS5jaG9Ac2Ftc3VuZy5jb20+
Cj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICsjaW5jbHVkZSA8bGludXgv
aW8uaD4KPiArI2luY2x1ZGUgPGxpbnV4L2luaXQuaD4KPiArI2luY2x1ZGUgPGxpbnV4L21mZC9z
eXNjb24uaD4KPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgv
b2YuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L29mX3BsYXRmb3JtLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAr
I2luY2x1ZGUgPGxpbnV4L3BoeS9waHkuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+
ICsjaW5jbHVkZSA8bGludXgvbWZkL3NhbXN1bmctc3lzbWdyLmg+CgpUaGlzIGRvZXMgbm90IGV4
aXN0LiBJIGRvbid0IHRoaW5rIHlvdSBjb21waWxlZCBpdC4gSWYgdGhhdCdzIHRoZSBjYXNlLApz
dWNoIGNvZGUgc2hvdWxkIG5vdCBiZSBwb3N0ZWQgdG8gdGhlIG1haWxpbmcgbGlzdC4uLgoKT25l
IG1vcmUgY29tbWVudCBsYXRlciBidXQgaW4gZ2VuZXJhbCB0aGVyZSBpcyBubyBwb2ludCBpbiBy
ZXZpZXdpbmcKdW5idWlsZGFibGUgY29kZS4KCj4gKyNpbmNsdWRlIDxsaW51eC9kZWJ1Z2ZzLmg+
Cj4gKwo+ICsvKiBBUlRQRUMtOCBQQ0llIFBIWSByZWdpc3RlcnMgKi8KPiArLyogQ01OIHJlZ2lz
dGVycyAqLwoKKC4uLikKCj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV9vcHMgYXJ0cGVj
OF9waHlfb3BzID0gewo+ICsJLmluaXQJCT0gYXJ0cGVjOF9wY2llX3BoeV9pbml0LAo+ICsJLmV4
aXQJCT0gYXJ0cGVjOF9wY2llX3BoeV9leGl0LAo+ICsJLnJlc2V0CQk9IGFydHBlYzhfcGNpZV9w
aHlfcmVzZXQsCj4gKwkucG93ZXJfb24JPSBhcnRwZWM4X3BjaWVfcGh5X3Bvd2VyX29uLAo+ICsJ
LnBvd2VyX29mZgk9IGFydHBlYzhfcGNpZV9waHlfcG93ZXJfb2ZmLAo+ICsJLm93bmVyCQk9IFRI
SVNfTU9EVUxFLAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBhcnRwZWM4X3BjaWVf
cGh5X2RhdGEgYXJ0cGVjOF9wY2llX3BoeV9kYXRhID0gewo+ICsJLm9wcwkJPSAmYXJ0cGVjOF9w
aHlfb3BzLAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYXJ0
cGVjOF9wY2llX3BoeV9tYXRjaFtdID0gewo+ICsJewo+ICsJCS5jb21wYXRpYmxlID0gInNhbXN1
bmcsYXJ0cGVjOC1wY2llLXBoeSIsCgpXaGVyZSBpcyBpdCBkb2N1bWVudGVkPyBEaWQgeW91IHJ1
biBjaGVja3BhdGNoPwoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCj4gKwo+ICsJaWYgKGFydHBl
YzhfcGh5LT5zb2NfcGxsX2NsaykKPiArCQljbGtfZGlzYWJsZV91bnByZXBhcmUoYXJ0cGVjOF9w
aHktPnNvY19wbGxfY2xrKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHN0
cnVjdCBwbGF0Zm9ybV9kcml2ZXIgYXJ0cGVjOF9wY2llX3BoeV9kcml2ZXIgPSB7Cj4gKwkucHJv
YmUJPSBhcnRwZWM4X3BjaWVfcGh5X3Byb2JlLAo+ICsJLnJlbW92ZQk9IF9fZXhpdF9wKGFydHBl
YzhfcGNpZV9waHlfcmVtb3ZlKSwKPiArCS5kcml2ZXIgPSB7Cj4gKwkJLm9mX21hdGNoX3RhYmxl
CT0gYXJ0cGVjOF9wY2llX3BoeV9tYXRjaCwKPiArCQkubmFtZQkJPSAiYXJ0cGVjOF9wY2llX3Bo
eSIsCj4gKwl9Cj4gK307Cj4gKwo+ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGFydHBlYzhfcGNp
ZV9waHlfZHJpdmVyKTsKPiArCj4gK01PRFVMRV9MSUNFTlNFKCJHUEwgdjIiKTsKPiArTU9EVUxF
X0FVVEhPUigiSmFlaG8gQ2hvIDxqYWVobzc5LmNob0BzYW1zdW5nLmNvbT4iKTsKPiAtLSAKPiAy
LjkuNQo+IAo+IC0tIAo+IGxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKPiBsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
