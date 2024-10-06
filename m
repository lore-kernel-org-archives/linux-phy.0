Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72D20CFB424
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 08:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5ZVtm5YQ6AeFoeBgg/5tE5RvPC8UO+oF+5XFj94z5o=; b=t9DK9WYZzMqkpH
	bJfS6OtBfDaMkyJ7SmvHXr5WKy4tImADACJb5GHNEFXCs/R6bh6K+a2ms7R9DpdyYBOaCL6BQG5/m
	I2V9atuVonUOzT1KZjjMyiT3CBYdtNhrVLDU/4yr5TlbPfGxJfuqIpYzR+u+cQkZgwQJKmAIHi7Bk
	ikp6YDA4KD7cysZX9bP8gp6hDzwGHsLWHaPaI2kaZ49OMb0ThIwRe85zXelwkzWeYNw/Cagv68qq0
	BFE+immKSiPizPj5luiKY7KDBP2soXR3+H8Xir/PgDC6Nmb/TYsLPdFIDhterpDWhE0OjcKQpya8S
	4s01Echf1iuTZBdRJi+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxMSh-0000000HKFE-0A8y;
	Sun, 06 Oct 2024 08:17:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxMSd-0000000HKEk-1tLK
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 08:17:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 66EAF5C548D;
	Sun,  6 Oct 2024 08:17:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 812B6C4CEC5;
	Sun,  6 Oct 2024 08:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728202670;
	bh=xGCI2FGgHpzfQrpiTWZ0uhNTM+tB73Rm6p2+nfWO8BM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LacZMBBlcLYbxi1Wa/VofDZOOb8JWA4kcu6bVOpdLZyUk6b49yRNGsvcgytNlzNWQ
	 qJUOwMVQQml8uNusPljwvSgwfvogQe6UEMKeZ5YCK7+U0n2COqtRaqn9qkTb9yNfmS
	 4+tg0ucKABGCrE19g+Tv96nbBC4/R5gqKdk+uGEI2Mm9OugTuFBOzqGki1UTg9o38L
	 WGBM8fTwf42bCHutNNYZjVxylNt4Aoqrj2Ojz6Yr6kXAONSKxhr0t3Yn7RCb3R8Ut/
	 1UcRaVr5i0rSLXEl5VpDeiTlLzVMfVgjKyQB17Z8tFRyjnPj7LVjG7TfKep2CNW4mP
	 NIAFUYNRYLTGw==
Message-ID: <bab322ef-9d7a-4152-ae95-22d097121e1c@kernel.org>
Date: Sun, 6 Oct 2024 10:17:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Aw: Re: [PATCH 3/4] phy: Realtek Otto SerDes: include driver
To: Markus Stockhausen <Markus.Stockhausen@gmx.de>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-4-markus.stockhausen@gmx.de>
 <3765cbe1-1f3e-4dfa-8d5c-5956d7d3aa43@kernel.org>
 <trinity-8cffe44a-8a49-4447-916b-91c2a3b8272e-1728123162590@3c-app-gmx-bs38>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <trinity-8cffe44a-8a49-4447-916b-91c2a3b8272e-1728123162590@3c-app-gmx-bs38>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_011751_605150_DED74AEF 
X-CRM114-Status: GOOD (  12.54  )
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

T24gMDUvMTAvMjAyNCAxMjoxMiwgTWFya3VzIFN0b2NraGF1c2VuIHdyb3RlOgo+PiBHZXNlbmRl
dDrCoFNhbXN0YWcsIDA1LiBPa3RvYmVyIDIwMjQgdW0gMTE6MTIgVWhyCj4+IFZvbjrCoCJLcnp5
c3p0b2YgS296bG93c2tpIiA8a3J6a0BrZXJuZWwub3JnPgo+PiBBbjrCoCJNYXJrdXMgU3RvY2to
YXVzZW4iIDxtYXJrdXMuc3RvY2toYXVzZW5AZ214LmRlPiwgbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcsIGNocmlzLnBhY2toYW1AYWxsaWVkdGVsZXNpcy5jby5uego+PiBCZXRyZWZmOsKg
UmU6IFtQQVRDSCAzLzRdIHBoeTogUmVhbHRlayBPdHRvIFNlckRlczogaW5jbHVkZSBkcml2ZXIK
Pj4gT24gMDQvMTAvMjAyNCAyMTo1NiwgTWFya3VzIFN0b2NraGF1c2VuIHdyb3RlOgo+Pj4gTWFr
ZSB0aGUgZHJpdmVyIGF2YWlsYWJsZSBpbiB0aGUgYnVpbGQgc3lzdGVtLgo+Pj4gLS0tCj4+PiBk
cml2ZXJzL3BoeS9yZWFsdGVrL0tjb25maWcgfCA3ICsrKysrKysKPj4+IGRyaXZlcnMvcGh5L3Jl
YWx0ZWsvTWFrZWZpbGUgfCAxICsKPj4+IDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvS2NvbmZpZyBiL2RyaXZl
cnMvcGh5L3JlYWx0ZWsvS2NvbmZpZwo+Pj4gaW5kZXggNzVhYzdlN2MzMWFlLi4yYzcxMTAxNjk1
MmQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9yZWFsdGVrL0tjb25maWcKPj4+ICsrKyBi
L2RyaXZlcnMvcGh5L3JlYWx0ZWsvS2NvbmZpZwo+Pj4gQEAgLTMwLDMgKzMwLDEwIEBAIGNvbmZp
ZyBQSFlfUlRLX1JURF9VU0IzUEhZCj4+PiBvZiB0aGUgcGFyYW1ldGVycy4KPj4+Cj4+PiBlbmRp
ZiAjIEFSQ0hfUkVBTFRFSyB8fCBDT01QSUxFX1RFU1QKPj4+ICsKPj4+ICtjb25maWcgUEhZX1JF
QUxURUtfT1RUT19TRVJERVMKPj4+ICsgdHJpc3RhdGUgIlNlckRlcyBkcml2ZXIgZm9yIHRoZSBS
ZWFsdGVrIE90dG8gcGxhdGZvcm0iCj4+Cj4+IFdoYXQgaXMgb3R0byBwbGF0Zm9ybT8KPj4KPj4g
V2h5IHRoaXMgaXMgb3V0c2lkZSBvZiBhYm92ZSBBUkNIX1JFQUxURUs/Cj4gCj4gVGhlIE90dG8g
cGxhdGZvcm0gaXMgYSBNSVBTIG5ldHdvcmsgU29DLiBBUkNIX1JFQUxURUsgaXMgQVJNdjguIFNl
ZQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcnRsLW90dG8uYz9o
PXY2LjEyLXJjMQo+IGZvciBhbm90aGVyIGRyaXZlciBJIHdyb3RlIHNvbWUgdGltZSBhZ28gdGhh
dCBnb3QgdXBzdHJlYW1lZCBsYXRlbHkgZnJvbSBDaHJpcyBQYWNraGFtLgoKTm90aGluZyBpbiBj
b21taXQgbXNnIGdhdmUgYW55IGRldGFpbHMgb24gdGhhdC4KCj4gCj4+PiArIGRlcGVuZHMgb24g
T0YKPj4+ICsgc2VsZWN0IEdFTkVSSUNfUEhZCj4+PiArIGhlbHAKPj4+ICsgRW5hYmxlIHRoaXMg
Zm9yIFNlckRlcyBzdXBwb3J0IGluIFJUTDgzeHggYW5kIFJUTDkzeHggc3dpdGNoZXMuCj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVhbHRlay9NYWtlZmlsZSBiL2RyaXZlcnMvcGh5L3Jl
YWx0ZWsvTWFrZWZpbGUKPj4+IGluZGV4IGVkN2I0N2ZmOGEyNi4uNTdlMTQ5NjFkODUxIDEwMDY0
NAo+Pj4gLS0tIGEvZHJpdmVycy9waHkvcmVhbHRlay9NYWtlZmlsZQo+Pj4gKysrIGIvZHJpdmVy
cy9waHkvcmVhbHRlay9NYWtlZmlsZQo+Pj4gQEAgLTEsMyArMSw0IEBACj4+PiAjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4+PiBvYmotJChDT05GSUdfUEhZX1JUS19SVERfVVNC
MlBIWSkgKz0gcGh5LXJ0ay11c2IyLm8KPj4+IG9iai0kKENPTkZJR19QSFlfUlRLX1JURF9VU0Iz
UEhZKSArPSBwaHktcnRrLXVzYjMubwo+Pj4gK29iai0kKENPTkZJR19QSFlfUkVBTFRFS19PVFRP
X1NFUkRFUykgKz0gcGh5LXJ0bC1vdHRvLXNlcmRlcy5vCj4+Cj4+IFdoeSBhcmUgeW91IGludHJv
ZHVjaW5nIG93biBuYW1pbmcgc3R5bGU/IEV2ZXJ5dGhpbmcgaXMgUlRLLCBubz8KPiAKPiBJIGp1
c3QgY29waWVkIHRoZSB0aW1lciBuYW1pbmcgY29udmVudGlvbi4KClJhdGhlciBwbGVhc2UgYWxp
Z24gd2l0aCB1cHN0cmVhbSBMaW51eCBrZXJuZWwgY29udmVudGlvbnMuCgpCZXN0IHJlZ2FyZHMs
CktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
