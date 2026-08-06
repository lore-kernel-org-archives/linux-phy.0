Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67991C56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyrrJ4NztCxvBcMKCG7EP59SJAlWoXeS8ASqaKAce0E=; b=2/9txqi8JgueTL
	jagAZ1jn+/HiGnvHOh/t2P0JxbwsygwAT649JbtvNkqW+p/K9qvSJIXYGFEy30aFVdbEBt/yMGGof
	LV2Gv2ppJQHez2c03i8decflO9b/O8Y8m8cB+BVTujaFwyvLX01oYtKKpjW1XzBC6rhAhpm97UPUK
	vassi24QDTRVWDRVU8i7WJJD4v38Q5eMeqhp251hhaTnCv4Xcz/hBuwHalHUT2fu+wWOiyQBsHzxb
	ooHsTCb1ZJ2hswAA1qy5eujmGxdpbQgs5HtIwDUxmECvnvGXChNworFp+KthKJzXL4hfUXZcI6aE7
	yP04regrgxaURFDtMHRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1OZ-00000006H4c-44fu;
	Thu, 06 Aug 2026 16:56:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1OY-00000006H4M-3R7i
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:56:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2FA554358E;
	Thu,  6 Aug 2026 16:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E41A1F000E9;
	Thu,  6 Aug 2026 16:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786035398;
	bh=jQalDzxS4F0x5EYDYWJ38lpm4ErORvj/HvawwC8RNU8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CJHvE8UeK6g0Q/nkJVrZ9dMbRr+2R73DUYQ/u1NZ7K4hkbHErHBlCaBVTVe36Bn/K
	 GqG+nGhxejIUCO8fN/5zNCwxBNB5U3jPogsqFntzDEw535k+k/mC751zHZDcrWdVVe
	 jeFbrgorWskrjs/qXGO0+AEKEGRNoXOKOacNZ5y9yjKI+8mBkkoAuD916+5TPet16q
	 JrmkMvKNxxg1i0UBSbOfa53IBoC7CbbJRM+YV6Efq8HWux+I78aeuforPUwlnH5z8s
	 43XsUO2PMgGHf/Yi5RiHZiHcxWm7bcbZVrJwLe2xdAADUd7EwUo2B3k/MKuQAwhmMP
	 dEbUogmm/m9fQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/2] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, linux-scsi@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260806161301.1010876-3-palash.kambar@oss.qualcomm.com>
References: <20260806161301.1010876-1-palash.kambar@oss.qualcomm.com>
 <20260806161301.1010876-3-palash.kambar@oss.qualcomm.com>
Date: Thu, 06 Aug 2026 16:56:37 +0000
Message-Id: <20260806165637.8E41A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgY29uZmln
dXJhdGlvbiBvdmVybGF5IGZvciBVRlMgR2VhciA0IGluIEhhd2kgVUZTIFBIWQotLQoKLS0tIFBh
dGNoIFsyXTogW1BBVENIIHY2IDIvMl0gcGh5OiBxY29tLXFtcC11ZnM6IEFkZCBVRlMgUEhZIHN1
cHBvcnQgb24gSGF3aSAtLS0KY29tbWl0IDY5ZDJhYjI5YjRmYmQzYTI3ZDg2MWM3NjE5YzNhNTQ2
ODk4NzU4ZDYKQXV0aG9yOiBQYWxhc2ggS2FtYmFyIDxwYWxhc2gua2FtYmFyQG9zcy5xdWFsY29t
bS5jb20+CgpwaHk6IHFjb20tcW1wLXVmczogQWRkIFVGUyBQSFkgc3VwcG9ydCBvbiBIYXdpCgpU
aGlzIHBhdGNoIGFkZHMgdGhlIGluaXQgc2VxdWVuY2UgdGFibGVzIGFuZCBjb25maWd1cmF0aW9u
IGZvciB0aGUgVUZTIFFNUApQSFkgZm91bmQgaW4gdGhlIEhhd2kgU29DLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gaW5kZXggMGY0YWQyNGFhNDA1OC4uZDRhY2Ey
MmMxODFlNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
dWZzLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKClsg
Li4uIF0KCj4gQEAgLTE4NDUsNiArMTg2OCwxMTkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBf
cGh5X2NmZyBzbTg3NTBfdWZzcGh5X2NmZyA9IHsKPiAgCj4gIH07Cj4gIAo+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgaGF3aV91ZnNwaHlfc2VyZGVzW10gPSB7CgpbIC4u
LiBdCgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgaGF3aV91ZnNwaHlf
ZzVfcGNzW10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19QTExfQ05U
TCwgMHgzYiksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19UWF9IU0dFQVJf
Q0FQQUJJTElUWSwgMHgwNSksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19S
WF9IU0dFQVJfQ0FQQUJJTElUWSwgMHgwNSksCj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IHFtcF9waHlfY2ZnIGhhd2lfdWZzcGh5X2NmZyA9IHsKPiArCS5sYW5lcwkJCT0gMiwKPiAr
Cj4gKwkub2Zmc2V0cwkJPSAmcW1wX3Vmc19vZmZzZXRzX3Y3LAo+ICsJLm1heF9zdXBwb3J0ZWRf
Z2Vhcgk9IFVGU19IU19HNSwKPiArCj4gKwkudGJscyA9IHsKPiArCQkuc2VyZGVzCQk9IGhhd2lf
dWZzcGh5X3NlcmRlcywKPiArCQkuc2VyZGVzX251bQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlf
c2VyZGVzKSwKPiArCQkudHgJCT0gaGF3aV91ZnNwaHlfdHgsCj4gKwkJLnR4X251bQkJPSBBUlJB
WV9TSVpFKGhhd2lfdWZzcGh5X3R4KSwKPiArCQkucngJCT0gaGF3aV91ZnNwaHlfcngsCj4gKwkJ
LnJ4X251bQkJPSBBUlJBWV9TSVpFKGhhd2lfdWZzcGh5X3J4KSwKPiArCQkucGNzCQk9IGhhd2lf
dWZzcGh5X3BjcywKPiArCQkucGNzX251bQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfcGNzKSwK
PiArCX0sCj4gKwo+ICsJLnRibHNfaHNfb3ZlcmxheVswXSA9IHsKPiArCQkucGNzCQk9IGhhd2lf
dWZzcGh5X2c1X3BjcywKPiArCQkucGNzX251bQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfZzVf
cGNzKSwKPiArCQkubWF4X2dlYXIJPSBVRlNfSFNfRzUsCj4gKwl9LAoKW1NldmVyaXR5OiBIaWdo
XQpEb2VzIHRoaXMgY29uZmlndXJhdGlvbiBuZWVkIGEgZmFsbGJhY2sgb3ZlcmxheSBmb3IgR2Vh
ciA0PwoKTG9va2luZyBhdCBxbXBfdWZzX2dldF9nZWFyX292ZXJsYXkoKSwgaWYgdGhlIFVGUyBj
b250cm9sbGVyIG5lZ290aWF0ZXMgR2VhciA0CihvciBsb3dlcikgd2l0aCB0aGUgY29ubmVjdGVk
IFVGUyBkZXZpY2UsIGl0IHdpbGwgcmV0dXJuIC1FSU5WQUwgYmVjYXVzZSB0aGUKb25seSBvdmVy
bGF5IHByb3ZpZGVkIGhlcmUgaGFzIG1heF9nZWFyID0gVUZTX0hTX0c1OgoKCWZvciAoaWR4ID0g
TlVNX09WRVJMQVkgLSAxOyBpZHggPj0gMDsgaWR4LS0pIHsKCQltYXhfZ2VhciA9IGNmZy0+dGJs
c19oc19vdmVybGF5W2lkeF0ubWF4X2dlYXI7CgoJCS8qIFNraXAgaWYgdGhlIHRhYmxlIGlzIG5v
dCBhdmFpbGFibGUgKi8KCQlpZiAobWF4X2dlYXIgPT0gMCkKCQkJY29udGludWU7CgoJCS8qIERp
cmVjdCBtYXRjaGluZywgYmFpbCAqLwoJCWlmIChxbXAtPnN1Ym1vZGUgPT0gbWF4X2dlYXIpCgkJ
CXJldHVybiBpZHg7CgoJCS8qIElmIG5vIGRpcmVjdCBtYXRjaGluZywgdGhlIGxvd2VzdCBnZWFy
IGlzIHRoZSBiZXN0IG1hdGNoaW5nICovCgkJaWYgKG1heF9nZWFyIDwgZmxvb3JfbWF4X2dlYXIp
IHsKCQkJcmV0ID0gaWR4OwoJCQlmbG9vcl9tYXhfZ2VhciA9IG1heF9nZWFyOwoJCX0KCX0KCgly
ZXR1cm4gcmV0OwoKV2l0aG91dCBhbiBvdmVybGF5IHdoZXJlIG1heF9nZWFyIDwgNSwgaXQgZmFp
bHMgdG8gZmluZCBhIGZhbGxiYWNrLiBJZiB0aGUKb3ZlcmxheSBmYWlscyB0byBhcHBseSwgY3Jp
dGljYWwgaGFyZHdhcmUgY29uZmlndXJhdGlvbnMgbGlrZQpRUEhZX1Y3X1BDU19VRlNfUExMX0NO
VEwgYW5kIHRoZSBIU0dFQVIgY2FwYWJpbGl0aWVzIGFyZSBvbWl0dGVkIHNpbmNlIHRoZXkKYXJl
IG9ubHkgcHJlc2VudCBpbiB0aGUgRzUgb3ZlcmxheSBhbmQgbm90IGluIHRoZSBiYXNlIGhhd2lf
dWZzcGh5X3BjcyB0YWJsZS4KCldpbGwgdGhpcyBjYXVzZSBVRlMgbGluayBmYWlsdXJlIGFuZCBy
ZW5kZXIgdGhlIHN0b3JhZ2UgdW51c2FibGUgZm9yIGFueSBnZWFyCmJlbG93IEc1PwoKPiArCj4g
KwkudnJlZ19saXN0CQk9IGhhd2lfdWZzcGh5X3ZyZWdfbCwKPiArCS5udW1fdnJlZ3MJCT0gQVJS
QVlfU0laRShoYXdpX3Vmc3BoeV92cmVnX2wpLAo+ICsJLnJlZ3MJCQk9IHVmc3BoeV92N19yZWdz
X2xheW91dCwKPiArfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDYxNjEzMDEuMTAxMDg3Ni0xLXBhbGFzaC5rYW1iYXJAb3Nz
LnF1YWxjb21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
