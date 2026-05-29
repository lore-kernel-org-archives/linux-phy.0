Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C941FCD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MsqDiyqG7CSpNFAXkrVFQjBKRb9N+BupbxUE32NEbg=; b=GvcO8uKm331k8j
	7wHU2/UFayua9Y/Cb8YJB5hLA9LvHR7TVILIEVUwkWaibcKmDkuiRqUojqyM1kLNhs6CyHmTabdWO
	nPsmVsbaaQmvdi+gGxFx7/9G0ZUctdvjhfSDGqITQexRLRYQl3MNXgI4IR+Icg0zFzMaYQEGQchg2
	Dao2PoqBsa0nDbyC8lGfwA7q3+aq5EJw32ePr3M4X/CSUHdzHIUYc20y1TW82B6bK65e6Z6YA3btM
	6QeAsaVX7t/UU1ATMFD4ozrUgzyKLXDzYGjhKoBNYoXFPzrdnwj29A1AcEN1ZfQRQDsmirMqYe1Qt
	RNYGGEiGGv1N/w9ygnxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0zF-000000080Cv-1a5W;
	Fri, 29 May 2026 17:27:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0zD-000000080CW-1dIi
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:27:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A6274418D2;
	Fri, 29 May 2026 17:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50EC21F00893;
	Fri, 29 May 2026 17:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780075626;
	bh=TYK1BRyo9q33J2Nsqcp3y84nbC7gJRycIUrqKtImij4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DRT/xedkvFbzd9JpQEo2grzm+9UmspIG+FAGvpGoC98xiWEOHSzRp/zLlwY4t3cfR
	 zRIn/pAUuFvdoFNet9Mu8zl3RYZSU6uDAa4K0uRpmYFJ7rJyba1sGwBVJ/IUTOJEWA
	 Hx2zNDVP0IiIHJ0Pn/L7ZVjlOiLSaisVYeTGgErLwZE3dAD9giPcbbLm+CZTQPprwO
	 IMduawINkTNK31LcXg2CFg/6hyoL2EafOCY6MDIUxywMwjR0nw7IHKzdZxPCm+WLDN
	 Lvh3PAg57LKuWpBTK+xlXWECgk3vu377g4m5CWkCExO9cj47fASv0Wtg8d6IDElCim
	 jEC7jq8m77JwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 02/15] phy: lynx-28g: move lane mode helpers
 to new core module
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260529171509.1163787-3-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-3-vladimir.oltean@nxp.com>
Date: Fri, 29 May 2026 17:27:05 +0000
Message-Id: <20260529172706.50EC21F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_102707_452705_2E7C2FCB 
X-CRM114-Status: GOOD (  15.54  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGVudW0gdmFsdWVz
IGZvciBgbHlueF9sYW5lX21vZGVgIGFyZSBnbG9iYWxseSBleHBvc2VkIHdpdGhvdXQgcHJvcGVy
IG5hbWVzcGFjaW5nLCByaXNraW5nIGJ1aWxkIGZhaWx1cmVzIGR1ZSB0byBjb2xsaXNpb25zLgot
IFtMb3ddIEludmlzaWJsZSBLY29uZmlnIHN5bWJvbCBjb250YWlucyB1c2VsZXNzICdoZWxwJyB0
ZXh0LgotLQoKY29tbWl0IGFmY2Y2YzQ0ODE0Y2QxOTRhZGJhZGM3NzQ4YjIyYjUyMDk1ZDdkNDIK
QXV0aG9yOiBWbGFkaW1pciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAuY29tPgoKcGh5OiBs
eW54LTI4ZzogbW92ZSBsYW5lIG1vZGUgaGVscGVycyB0byBuZXcgY29yZSBtb2R1bGUKClRoaXMg
Y29tbWl0IGV4dHJhY3RzIGxhbmUgbW9kZSBoZWxwZXJzIGFuZCBzaGFyZWQgc3RydWN0dXJlcyBm
cm9tIHRoZQpseW54LTI4ZyBkcml2ZXIgaW50byBhIG5ldyBjb3JlIG1vZHVsZS4gVGhlIGxhbmUg
bW9kZXMgYXJlIGV4cG9ydGVkIHRvCmEgcHVibGljIGhlYWRlciB0byBhbGxvdyBjb29yZGluYXRp
b24gd2l0aCB0aGUgdXBjb21pbmcgbHlueC0xMGcgZHJpdmVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvZnJlZXNjYWxlL0tjb25maWcgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvS2NvbmZp
Zwo+IGluZGV4IDgxZjUzNTY0ZWUxNTYuLmE4NzQyOWY2MzRlYTggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvZnJlZXNjYWxlL0tjb25maWcKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUv
S2NvbmZpZwo+IEBAIC01MSwxMSArNTEsMTggQEAgY29uZmlnIFBIWV9GU0xfU0FNU1VOR19IRE1J
X1BIWQo+ICAJICBFbmFibGUgdGhpcyB0byBhZGQgc3VwcG9ydCBmb3IgdGhlIFNhbXN1bmcgSERN
SSBQSFkgaW4gaS5NWDhNUC4KPiAgZW5kaWYKPiAgCj4gK2NvbmZpZyBQSFlfRlNMX0xZTlhfQ09S
RQo+ICsJdHJpc3RhdGUKPiArCWhlbHAKPiArCSAgRW5hYmxlIHRoaXMgdG8gYWRkIGNvbW1vbiBz
dXBwb3J0IGNvZGUgZm9yIE5YUCBMeW54IDEwRyBhbmQgTHlueCAyOEcKPiArCSAgU2VyRGVzIGJs
b2Nrcy4KCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgZG9lcyB0aGlzIGlu
dmlzaWJsZSBLY29uZmlnIHN5bWJvbCBuZWVkIGEgaGVscCB0ZXh0PwoKU2luY2UgdGhpcyB0cmlz
dGF0ZSBkb2Vzbid0IGhhdmUgYSBwcm9tcHQgc3RyaW5nLCBpdCB3b24ndCBiZSB2aXNpYmxlIGlu
Cm1lbnVjb25maWcsIG1ha2luZyB0aGUgaGVscCB0ZXh0IGluYWNjZXNzaWJsZSB0byB1c2Vycy4K
ClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvc29jL2ZzbC9waHktZnNsLWx5bnguaCBi
L2luY2x1ZGUvc29jL2ZzbC9waHktZnNsLWx5bnguaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMDAwMC4uOTJlODI3MmQ1YWUxNQo+IC0tLSAvZGV2L251bGwKPiArKysg
Yi9pbmNsdWRlL3NvYy9mc2wvcGh5LWZzbC1seW54LmgKPiBAQCAtMCwwICsxLDE2IEBACj4gKy8q
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKyAqLwo+ICsvKiBDb3B5cmlnaHQgMjAy
My0yMDI2IE5YUCAqLwo+ICsKPiArI2lmbmRlZiBfX1BIWV9GU0xfTFlOWF9IXwo+ICsjZGVmaW5l
IF9fUEhZX0ZTTF9MWU5YX0hfCj4gKwo+ICtlbnVtIGx5bnhfbGFuZV9tb2RlIHsKPiArCUxBTkVf
TU9ERV9VTktOT1dOLAo+ICsJTEFORV9NT0RFXzEwMDBCQVNFWF9TR01JSSwKPiArCUxBTkVfTU9E
RV8xMEdCQVNFUiwKPiArCUxBTkVfTU9ERV9VU1hHTUlJLAo+ICsJTEFORV9NT0RFXzI1R0JBU0VS
LAo+ICsJTEFORV9NT0RFX01BWCwKPiArfTsKCltTZXZlcml0eTogTG93XQpTaW5jZSB0aGlzIGhl
YWRlciBpcyBub3cgZ2xvYmFsbHkgYWNjZXNzaWJsZSB1bmRlciBpbmNsdWRlL3NvYy8sIGNvdWxk
IHRoZXNlCmdlbmVyaWMgZW51bSB2YWx1ZXMgY2F1c2UgbmFtZXNwYWNlIGNvbGxpc2lvbnM/CgpW
YWx1ZXMgbGlrZSBMQU5FX01PREVfVU5LTk9XTiBhbmQgTEFORV9NT0RFX01BWCBsYWNrIGEgc3Vi
c3lzdGVtIG9yCmRyaXZlci1zcGVjaWZpYyBwcmVmaXggKGxpa2UgTFlOWF8gb3IgRlNMXykuIElm
IGFub3RoZXIgc3Vic3lzdGVtIGRlZmluZXMKYSBtYWNybyBvciBlbnVtIHdpdGggdGhlIHNhbWUg
Z2VuZXJpYyBuYW1lLCBpdCBtaWdodCBsZWFkIHRvIGJ1aWxkIGZhaWx1cmVzLgoKPiArCj4gKyNl
bmRpZiAvKiBfX1BIWV9GU0xfTFlOWF9IXyAqLwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUyOTE3MTUwOS4xMTYzNzg3LTEtdmxh
ZGltaXIub2x0ZWFuQG54cC5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
