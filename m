Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F384C61DB6
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 07:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4T57PFk4V8FUlzahlInCgBUo1CbpIHoN/dYfaPaV+OM=; b=nMs36GZQodflbe
	wv8j9ANJT+kG++9VUT7kFVb5+hg/3ikbYRTy0vucmCrBeGwGtgnC7tE7P8Xv96Py7POhyF+en6bMr
	02H8COrUMaLrmpA5EfAyGEiF4pA6t0q38fqhwa9tEeFtNI09i42rnAU0QD7rD/iSHWvnJqlNu488m
	MruVkiTicVhQtFO57c+ODma6q0owp3H3TdBh+kcMXwUUZ4zkVq5txaN4oPO/iAZfEVOpe3OoLEIaX
	HIocDeagTcaX3MDCZLLX05DiDqwS4rcD56UMWRvGZ//COBLLOmAli8psRoI0l06TEDlSYN9/nFj01
	3C+XHpc2EMZBqbN2ofTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wylBn-00000000G6P-3z9X;
	Tue, 25 Aug 2026 07:03:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wylBm-00000000G6B-2CmH
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 07:03:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A16E16011F;
	Tue, 25 Aug 2026 07:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C04EA1F000E9;
	Tue, 25 Aug 2026 07:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787641397;
	bh=QefB0YBX1wl9+ZiKmPm4EUBQrvRK9It1WTTvzXW21TA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MQqongKPEWUInyLzq/aXUovYyzUC5E6Lu5f6fcxg8qKDPM189809m52G1JeCUVIOP
	 +GIeYh9/c7BW5jbh/KvdSN69e5DNLCVWgfCBGvs5kF787YcEqGRTAfoncTteEFjrg+
	 fOwfNO1CrshWq+ooIEc7BYaXRdrSSkOlscu6+SAEbxPoBNiMN9HlEN9cwBzA1p0hj9
	 pnbm1+N96ifBiKNW31kiNGrRNZ6dTXPVQq3XjpFqm1pd9UJ76EY0rvPqHcJO3ZiUrO
	 5gFXUeW/bVqsAsITdIp2NUUBvWNG1Zy5b1zGO7p/RVNE1wBfuTZq0rJOSe/kw1VPiI
	 dlFiG64DlaTWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: spacemit: enable K1 USB 2.0 PHY by default
 on ARCH_SPACEMIT
To: "Bruno Banelli" <bbanelli@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260825065007.69353-3-bbanelli@gmail.com>
References: <20260825065007.69353-1-bbanelli@gmail.com>
 <20260825065007.69353-3-bbanelli@gmail.com>
Date: Tue, 25 Aug 2026 07:03:16 +0000
Message-Id: <20260825070316.C04EA1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIGBzZWxlY3QgTUZEX1NZU0NPTmAgb3IgYGRlcGVuZHMgb24gTUZEX1NZ
U0NPTmAgZm9yIFBIWV9TUEFDRU1JVF9LMV9QQ0lFCi0gW01lZGl1bV0gSW5jb21wbGV0ZSBmaXg6
IFBIWV9TUEFDRU1JVF9LM19DT01CT19QSFkgaXMgbWlzc2luZyBgZGVmYXVsdCBBUkNIX1NQQUNF
TUlUYAotIFtNZWRpdW1dIFBIWV9TUEFDRU1JVF9LM19DT01CT19QSFkgaXMgbWlzc2luZyBgZGVw
ZW5kcyBvbiBIQVNfSU9NRU1gCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFUQ0ggdjIgMi8yXSBwaHk6
IHNwYWNlbWl0OiBlbmFibGUgSzEgVVNCIDIuMCBQSFkgYnkgZGVmYXVsdCBvbiBBUkNIX1NQQUNF
TUlUIC0tLQpjb21taXQgMjRjNzM3MDkwZTY5ZWQ3ZGI2NmFjMTI5ZjY4YjFhNDVlYjkyY2ExZQpB
dXRob3I6IEJydW5vIEJhbmVsbGkgPGJiYW5lbGxpQGdtYWlsLmNvbT4KCnBoeTogc3BhY2VtaXQ6
IGVuYWJsZSBLMSBVU0IgMi4wIFBIWSBieSBkZWZhdWx0IG9uIEFSQ0hfU1BBQ0VNSVQKClRoaXMg
Y29tbWl0IGFkZHMgYSBkZWZhdWx0IEFSQ0hfU1BBQ0VNSVQgdG8gdGhlIFBIWV9TUEFDRU1JVF9L
MV9VU0IyIEtjb25maWcKZW50cnkuIFRoaXMgcmVzb2x2ZXMgYW4gaXNzdWUgd2hlcmUgdGhlIFVT
QiAyLjAgUEhZIGRyaXZlciB3YXMgZGlzYWJsZWQgYnkKZGVmYXVsdCBvbiBTcGFjZW1pVCBLMSBi
b2FyZHMsIHByZXZlbnRpbmcgVVNCIGZyb20gd29ya2luZy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L3NwYWNlbWl0L0tjb25maWcgYi9kcml2ZXJzL3BoeS9zcGFjZW1pdC9LY29uZmlnCj4g
aW5kZXggY2Q3YWU0OGQ4ZWEyZi4uYjVmMzY2MjFiMjA3NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9zcGFjZW1pdC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9waHkvc3BhY2VtaXQvS2NvbmZp
Zwo+IEBAIC0yMiw2ICsyMiw3IEBAIGNvbmZpZyBQSFlfU1BBQ0VNSVRfSzFfVVNCMgo+ICAJZGVw
ZW5kcyBvbiBVU0JfQ09NTU9OCj4gIAlzZWxlY3QgR0VORVJJQ19QSFkKPiAgCXNlbGVjdCBSRUdN
QVBfTU1JTwo+ICsJZGVmYXVsdCBBUkNIX1NQQUNFTUlUCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMg
aXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBJIG5vdGljZWQgUEhZX1NQQUNFTUlUX0sxX1BD
SUUgaXMgbWlzc2luZwphIGRlcGVuZGVuY3kgb24gTUZEX1NZU0NPTjoKCmRyaXZlcnMvcGh5L3Nw
YWNlbWl0L0tjb25maWc6UEhZX1NQQUNFTUlUX0sxX1BDSUUgewogICAgY29uZmlnIFBIWV9TUEFD
RU1JVF9LMV9QQ0lFCiAgICAgICAgdHJpc3RhdGUgIlBDSWUgYW5kIGNvbWJvIFBIWSBkcml2ZXIg
Zm9yIHRoZSBTcGFjZW1pVCBLMSBTb0MiCiAgICAgICAgZGVwZW5kcyBvbiBBUkNIX1NQQUNFTUlU
IHx8IENPTVBJTEVfVEVTVAogICAgICAgIC4uLgp9CgpJZiBNRkRfU1lTQ09OIGlzIG5vdCBlbmFi
bGVkLCB0aGUga2VybmVsIHdpbGwgc3RpbGwgYnVpbGQgc3VjY2Vzc2Z1bGx5LApidXQgYXQgcnVu
dGltZSB0aGUgZHJpdmVyIHByb2JlIHdpbGwgc2lsZW50bHkgZmFpbCByZXR1cm5pbmcgLUVOT1RT
VVBQOgoKZHJpdmVycy9waHkvc3BhY2VtaXQvcGh5LWsxLXBjaWUuYzprMV9wY2llX2NvbWJvX3Bo
eV9wcm9iZSgpIHsKICAgIC4uLgogICAgcmVnbWFwID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlf
cGhhbmRsZShkZXZfb2Zfbm9kZShkZXYpLCBTWVNDT05fQVBNVSk7CiAgICAuLi4KfQoKRG9lcyB0
aGlzIGNvbmZpZyBuZWVkIHRvIHNlbGVjdCBvciBkZXBlbmQgb24gTUZEX1NZU0NPTiB0byBwcmV2
ZW50IHRoaXM/CgoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNz
dWUsIGJ1dCBQSFlfU1BBQ0VNSVRfSzNfQ09NQk9fUEhZIHNlZW1zIHRvIGJlCm1pc3NpbmcgdGhl
IHNhbWUgZGVmYXVsdCBjb25maWd1cmF0aW9uIGJlaW5nIGFkZGVkIGhlcmU6Cgpkcml2ZXJzL3Bo
eS9zcGFjZW1pdC9LY29uZmlnOlBIWV9TUEFDRU1JVF9LM19DT01CT19QSFkgewogICAgY29uZmln
IFBIWV9TUEFDRU1JVF9LM19DT01CT19QSFkKICAgICAgICB0cmlzdGF0ZSAiU3BhY2VtaVQgSzMg
VVNCMy9QQ0llIFBIWSBzdXBwb3J0IgogICAgICAgIGRlcGVuZHMgb24gKEFSQ0hfU1BBQ0VNSVQg
fHwgQ09NUElMRV9URVNUKSAmJiBPRgogICAgICAgIC4uLgp9CgpTaW5jZSB0aGUgSzMgY29tYm8g
UEhZIGRyaXZlciBtYW5hZ2VzIFVTQjMvUENJZSBvbiBTcGFjZW1pVCBTb0NzLCBjb3VsZAp0aGlz
IG1pc3NpbmcgZGVmYXVsdCBsZWFkIHRvIHNpbWlsYXIgYnJva2VuIFVTQiBiZWhhdmlvciBvbiBL
MyBib2FyZHM/CldvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8gYWRkIGRlZmF1bHQgQVJDSF9TUEFDRU1J
VCB0aGVyZSBhcyB3ZWxsPwoKCltTZXZlcml0eTogTWVkaXVtXQpUaGlzIGlzIGEgcHJlLWV4aXN0
aW5nIGlzc3VlLCBidXQgUEhZX1NQQUNFTUlUX0szX0NPTUJPX1BIWSBhbHNvIGFwcGVhcnMKdG8g
YmUgbWlzc2luZyBhIGRlcGVuZGVuY3kgb24gSEFTX0lPTUVNOgoKZHJpdmVycy9waHkvc3BhY2Vt
aXQvS2NvbmZpZzpQSFlfU1BBQ0VNSVRfSzNfQ09NQk9fUEhZIHsKICAgIGNvbmZpZyBQSFlfU1BB
Q0VNSVRfSzNfQ09NQk9fUEhZCiAgICAgICAgdHJpc3RhdGUgIlNwYWNlbWlUIEszIFVTQjMvUENJ
ZSBQSFkgc3VwcG9ydCIKICAgICAgICBkZXBlbmRzIG9uIChBUkNIX1NQQUNFTUlUIHx8IENPTVBJ
TEVfVEVTVCkgJiYgT0YKICAgICAgICBkZXBlbmRzIG9uIENPTU1PTl9DTEsKICAgICAgICBzZWxl
Y3QgUEhZX1NQQUNFTUlUX0szX0NPTU1PTl9PUFMKfQoKVGhlIFBIWV9TUEFDRU1JVF9LM19DT01C
T19QSFkgZHJpdmVyIHVzZXMgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCksCndoaWNo
IG9wZXJhdGVzIG9uIE1NSU8gbWVtb3J5LiBDb3VsZCBvbWl0dGluZyB0aGUgSEFTX0lPTUVNIGRl
cGVuZGVuY3kKbGVhZCB0byBidWlsZCBvciBwcm9iZSBmYWlsdXJlcyB1bmRlciBDT01QSUxFX1RF
U1Q/Cgo+ICAJaGVscAo+ICAJICBFbmFibGUgdGhpcyB0byBzdXBwb3J0IEsxIFVTQiAyLjAgUEhZ
IGRyaXZlci4gVGhpcyBkcml2ZXIgdGFrZXMgY2FyZSBvZgo+ICAJICBlbmFibGluZyBhbmQgY2xv
Y2sgc2V0dXAgYW5kIHdpbGwgYmUgdXNlZCBieSBLMSB1ZGMvZWhjaS9vdGcveGhjaSBkcml2ZXIu
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwODI1MDY1MDA3LjY5MzUzLTEtYmJhbmVsbGlAZ21haWwuY29tP3BhcnQ9MgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
