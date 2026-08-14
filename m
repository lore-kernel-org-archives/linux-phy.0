Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A574C5B572
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 06:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lddM/TvZt8Ka9uiWm+HJkBxUo5ln1GHBgiKww2fvkv8=; b=GBTBcXs7BDIv9z
	gG9L9FGSiMB+LBu6f81J3XFblo3JKsyVsJ1ATifEh63LyGyAvts19JY165/VDTs24Yss/H2kOAAf0
	Dj3Y3U5a9+7EgV5WL2/bq7TT0UX9Eh62DYaaG6f8+6P/WP10XomgvPpL9l33L9LUxFOtYy8CJhijN
	30V0SSySlJ5PCuhsXtNgt/cXetkJ5XEJEMgvG0xhmHzD1nO6AG3IuCYGhsE7AH+bE1nVf21yCiriz
	rmIRY2UQm2RblmtWKfB2oXb9gtyjWWpixsKNXuKyuNG+/nrZyFEU0+PYIhaGkpAkVbiU0oJJ5/ACG
	31UD9NDiiDk1J4vE8MQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wulj9-000000023ij-3MnA;
	Fri, 14 Aug 2026 06:49:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wulj8-000000023iO-1Jqx
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 06:49:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A4F0343914;
	Fri, 14 Aug 2026 06:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 163721F000E9;
	Fri, 14 Aug 2026 06:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786690153;
	bh=pX0QRkpMl+k3cGxhQQb+Hcc/sTV7651aKREZ8PPhZpQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F6myGO0vid3/eoqklXyn8tAftg2ACJw49IwSh5Uyv+jl/ZKftd9XZSsf34MBplH/w
	 oXNY3QfaU1KlnznUOifkf+eiOjFJk6qh+gZLBl9+8uFllvXF0pat3rG4sygQfzpSaO
	 65ZVV4QmgS3oPPH+MEA2lZ2Bukncgz6n1MExxeGz3Gs1v71an4VKuuujzTLzLbgnoG
	 7NHrsQ6BP1x2J/zvHnRfETYUQbHqcgCpT/1K/AtDHZTOf8M+ugomXB1xOQHxcSWW/b
	 ++l7Ysjq7/zk7JAy0VCcJLwecPGiKQMEy0+5HoP17cAKsOHI5yf99fhNtv8j9eT4Jj
	 K2YZT6iGQDFvQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 37/38] phy: rockchip: usbdp: Re-init PHY on mux
 change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-37-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-37-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 06:49:12 +0000
Message-Id: <20260814064913.163721F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSByZXNldHMgdGhlIFBIWSBkdXJp
bmcgVHlwZS1DIG11eCBjaGFuZ2VzIHdpdGhvdXQgcmVzdG9yaW5nIGFjdGl2ZSBEUCBzdGF0ZSwg
Y2F1c2luZyBwZXJtYW5lbnQgbG9zcyBvZiB0aGUgRFAgbGluay4KLS0KCi0tLSBQYXRjaCBbMzdd
OiBbUEFUQ0ggdjE0IDM3LzM4XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogUmUtaW5pdCBQSFkgb24g
bXV4IGNoYW5nZSAtLS0KY29tbWl0IGUwZjQ1NGY2ZWIwYzgyMTY0NTNlMDBkZmU1MGNmNzcxNmM0
YWE2MGIKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IFBIWSBvbiBtdXggY2hhbmdl
CgpUaGlzIGNvbW1pdCB1cGRhdGVzIHRoZSBkcml2ZXIgdG8gcmUtaW5pdGlhbGl6ZSB0aGUgUEhZ
IHdoZW4gdGhlIG1vZGUKY2hhbmdlcyBieSByZXBsYWNpbmcgYSByZXR1cm4gMCB3aXRoIGEgY2Fs
bCB0byBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKS4KVGhpcyBlbnN1cmVzIHRoZSBQSFkg
aXMgcmUtaW5pdGlhbGl6ZWQgd2hlbiBjYWJsZSBvcmllbnRhdGlvbiBjaGFuZ2VzIG9yCndoZW4g
c3dpdGNoaW5nIGZyb20gRFAtb25seSB0byBhIG1vZGUgd2l0aCBVU0Igc3VwcG9ydC4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTEzOTIsNyArMTM5Miw3IEBAIHN0YXRpYyBp
bnQgcmtfdWRwaHlfdHlwZWNfbXV4X3NldChzdHJ1Y3QgdHlwZWNfbXV4X2RldiAqbXV4LAo+ICAK
PiAgCXJrX3VkcGh5X3NldF90eXBlY19zdGF0ZSh1ZHBoeSwgc3RhdGUtPm1vZGUpOwo+ICAKPiAt
CXJldHVybiAwOwo+ICsJcmV0dXJuIHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZSh1ZHBoeSk7
CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2Vz
IGZvcmNpbmcgcmtfdWRwaHlfdXBkYXRlX3Bvd2VyX3N0YXRlKCkKdG8gcnVuIGltbWVkaWF0ZWx5
IG9uIG11eCBjaGFuZ2UgY2F1c2UgYW4gYWN0aXZlIERQIGxpbmsgdG8gZHJvcCBwZXJtYW5lbnRs
eT8KCldoZW4gdGhlIFR5cGUtQyBtdXggY2hhbmdlcyAoc3VjaCBhcyBwbHVnZ2luZyBhIFVTQiBk
ZXZpY2UgaW50byBhIGh1YiB0bwpzd2l0Y2ggZnJvbSBEUC1vbmx5IHRvIERQK1VTQiksIHJrX3Vk
cGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZSgpIHRyaWdnZXJzCnJrX3VkcGh5X2luaXQoKSB0byByZXNl
dCB0aGUgUEhZLgoKcmtfdWRwaHlfaW5pdCgpIGNsZWFycyBDTU5fRFBfTEFORV9FTl9BTEwsIHdo
aWNoIHBoeXNpY2FsbHkgZGlzYWJsZXMgdGhlCmFjdGl2ZSBEUCBsYW5lcy4gV2hpbGUgdGhlIHBv
d2VyIHN0YXRlIHVwZGF0ZSByZXN0b3JlcyB0aGUgVVNCIHBvcnQgc3RhdHVzLAp0aGVyZSBhcHBl
YXJzIHRvIGJlIG5vIGxvZ2ljIHRvIHJlLWVuYWJsZSB0aGUgRFAgbGFuZXMgdmlhCnJrX3VkcGh5
X2RwX2xhbmVfZW5hYmxlKCkgb3IgcmVzdG9yZSBEUCBjb25maWd1cmF0aW9ucy4KClNpbmNlIHN1
YnNlcXVlbnQgbGluayByZXRyYWluaW5nIHZpYSBwaHlfY29uZmlndXJlKCkgZG9lcyBub3QgcmUt
ZW5hYmxlIHRoZQpsYW5lcywgdGhlIERQIGxpbmsgY2FuIHBlcm1hbmVudGx5IGZhaWwgdG8gdHJh
aW4gdW50aWwgYSBmdWxsIERSTSBtb2Rlc2V0Cm9jY3VycywgbGVhdmluZyB0aGUgZGlzcGxheSBi
bGFjay4KCkFkZGl0aW9uYWxseSwgZG9lcyByZXNldHRpbmcgdGhlIFBIWSBtaWQtc3RyZWFtIHdp
dGhvdXQgYSByZXNldCBub3RpZmljYXRpb24Kc2VxdWVuY2UgZm9yIERQICh1bmxpa2UgdGhlIHNl
cXVlbmNlIHVzZWQgZm9yIFVTQikgcmlzayBBUEIgYnVzIGxvY2t1cHMKKFNFcnJvcnMpIGluIHRo
ZSBEUCBjb250cm9sbGVyPwoKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgcmtfdWRwaHlfdHlwZWNf
bXV4X3VucmVnaXN0ZXIodm9pZCAqZGF0YSkKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTMtcm9ja2NoaXAtdXNiZHAtY2xlYW51
cC12MTQtMC1iNWFkOWM2OGZhMTFAY29sbGFib3JhLmNvbT9wYXJ0PTM3CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
