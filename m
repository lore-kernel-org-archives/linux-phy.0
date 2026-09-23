Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF9E9C98304
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqHM8ZYTwGTeHA0RZI/WAIHsxp3547p3598UIiPTomU=; b=xmxOxMMMw7SAFB
	zbI2K0DR4Dgx6clPMFOu22TDcIW2IRgRFQRrFfYQAgPXNT8sKczcz2dt+8f7Wf6PoF4mXf1d9pWw/
	QGBcFA0/bJ+rkZm8Zpifan3V8P/dVLt32+Xoe/DyKwJrhdQoN8z0mekMpnklZgi6kVUTVwSp7jPBl
	58TtI4DvKrESCsHRz5taw2M++9IHJ8Smh4dBPqcnMeMD3/s/R76qyvopR6s/Qrja4NMo+xwf2Pfwf
	xaMJYmROOOfUtQsdxpjowfi17k9sNjEK3+i2nEuW3T/UCMkG5tqqN58DkP6bhHT7YpFmttO1Hs5Od
	hGSRdOGJMtKfskhi7QFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rwu-00000009G8k-2Ega;
	Wed, 23 Sep 2026 18:44:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rwp-00000009G4z-1kD1
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:44:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D902E60515;
	Wed, 23 Sep 2026 18:44:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03FC81F00898;
	Wed, 23 Sep 2026 18:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790189042;
	bh=vY+fV+5XhRrH8ORseBN/5+X0cHjWElspRWHxqy28BNk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Yy10ClU228CUQlF9cmx5ZUnXCNAcEh+VeMv3hifsnBeNa/usGDnGZueePPJmyi6M1
	 mIJpXXv+qBXVWmsKFPwWFLbzklZ0fZhNa8oF09A/c5yuKMSIRsCfNRZD/dfOPe9u9U
	 zPCcWtSUGTQ3po31RXGApubv7+lI/URSzsInxtD+BCO3MKZiKtu6zteKtn7zOa7YpH
	 RkutzVaFBjEv0nUAAW6eY7fBcZmljIH1oz1sFiGWBYo0j0rgC8LUFXvp89AqGQb2NS
	 VMV2zZ4NyCLFn01YKis+QaWj6ceVRfe75iqht29vFWQXCQzhwqO0TNXdk5e3PhQYr2
	 WiG1eyXxKJvHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 08/12] clk: zte: Introduce a driver for zx297520v3
 top clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: olteanv@gmail.com, lee@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, mfd@lists.linux.dev, vkoul@kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20260923-zx29clk-v12-8-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-8-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:44:01 +0000
Message-Id: <20260923184402.03FC81F00898@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGNsazogenRlOiBjbG9j
ayBwcm92aWRlciByZWdpc3RlcmVkIHdpdGggTlVMTCBvZl9ub2RlIGJyZWFrcyBEVCBjb25zdW1l
cnMKLS0KCmNvbW1pdCA5NDFkZTdiMmY2ZTRiNzlkMzM0ZDc0ZWRkMGQyZGQ5NjIwZmFiZDdlCkF1
dGhvcjogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KCmNsazog
enRlOiBJbnRyb2R1Y2UgYSBkcml2ZXIgZm9yIHp4Mjk3NTIwdjMgdG9wIGNsb2NrcwoKVGhpcyBj
b21taXQgaW50cm9kdWNlcyBhIG5ldyBjbG9jayBkcml2ZXIgZm9yIHRoZSBaVEUgengyOTc1MjB2
MyBTb0MgdG9wCmNsb2Nrcywgd2hpY2ggY29udHJvbCBjb3JlIGRldmljZXMgbGlrZSBQTExzLCBB
SEIgYnVzLCB0aW1lcnMsIGFuZCBVU0IuCkl0IHJlZ2lzdGVycyBhcyBhbiBNRkQgY2hpbGQgZGV2
aWNlIGFuZCBwcm92aWRlcyB2YXJpb3VzIGNsb2NrIGdhdGVzLApkaXZpZGVycywgYW5kIG11eGVz
IHRvIHRoZSBzeXN0ZW0uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay96dGUvS2NvbmZpZyBi
L2RyaXZlcnMvY2xrL3p0ZS9LY29uZmlnCj4gaW5kZXggMTUyYzI0MjNiOGYwMi4uMGNjYzZlZGYz
YzViMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay96dGUvS2NvbmZpZwo+ICsrKyBiL2RyaXZl
cnMvY2xrL3p0ZS9LY29uZmlnCj4gQEAgLTE1LDMgKzE1LDE0IEBAIGNvbmZpZyBDT01NT05fQ0xL
X1pURQo+ICAJICBvZiB0aGlzLgo+ICAKPiAgCSAgRW5hYmxlIHRoaXMgaWYgeW91IGFyZSBidWls
ZGluZyBhIGtlcm5lbCBmb3IgYSBaVEUgZGVzaWduZWQgYm9hcmQuCj4gKwo+ICtjb25maWcgQ0xL
X1pURV9aWDI5NzUyMFYzCj4gKwl0cmlzdGF0ZSAiQ2xvY2sgZHJpdmVyIGZvciBaVEUgengyOTc1
MjB2MyBiYXNlZCBTb0NzIgo+ICsJZGVwZW5kcyBvbiBDT01NT05fQ0xLX1pURSAmJiAoTUZEX1pU
RV9aWDI5NzUyMFYzX0NSTSB8fCBDT01QSUxFX1RFU1QpCgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhp
cyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHdpbGwgZW5hYmxpbmcgdGhpcyBuZXcgY29u
ZmlndXJhdGlvbiBjYXVzZSAKbGlua2VyIGVycm9ycyBvbiBidWlsZHMgd2hlcmUgQ09ORklHX1JB
VElPTkFMIGlzIG5vdCBzZWxlY3RlZCBlbHNld2hlcmU/CgpCdWlsZGluZyB0aGUga2VybmVsIHdp
dGggQ09ORklHX0NPTU1PTl9DTEtfWlRFPXkgKHdoaWNoIGlzIGZvcmNlZCBieSB0aGlzIG5ldyAK
Y29uZmlnKSB3aXRob3V0IENPTkZJR19SQVRJT05BTCBjYXVzZXMgYW4gdW5kZWZpbmVkIHJlZmVy
ZW5jZSB0byAKcmF0aW9uYWxfYmVzdF9hcHByb3hpbWF0aW9uLgoKVGhlIGZhaWx1cmUgb2NjdXJz
IGluIGRyaXZlcnMvY2xrL3p0ZS9wbGwtenguYzp6eDI5X3BsbF9jYWxjX3ZhbHVlcygpOgoKICAg
ICAgICByYXRpb25hbF9iZXN0X2FwcHJveGltYXRpb24odmNvLCBwYXJlbnRfcmF0ZSwKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKDEgPDwgaHdlaWdodDMyKFpYMjlfUExMX0ZC
RElWX01BU0spKSAtIDEsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICgxIDw8
IGh3ZWlnaHQzMihaWDI5X1BMTF9SRUZESVZfTUFTSykpIC0gMSwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJmZiZGl2LCAmcmVmZGl2KTsKClNob3VsZCBSQVRJT05BTCBiZSBl
eHBsaWNpdGx5IHNlbGVjdGVkIGJ5IHRoaXMgbmV3IGNvbmZpZywgb3IgcGVyaGFwcyBhZGRlZCB0
byAKQ09NTU9OX0NMS19aVEUgZGlyZWN0bHk/Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay96
dGUvY2xrLXp4Mjk3NTIwdjMuYyBiL2RyaXZlcnMvY2xrL3p0ZS9jbGstengyOTc1MjB2My5jCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi42OGJmZWFiODRkNzQ1
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvY2xrL3p0ZS9jbGstengyOTc1MjB2My5j
CgpbIC4uLiBdCgo+ICtzdGF0aWMgaW50IGNsa196eDI5NzUyMHYzX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Vf
aWQgKmlkID0gcGxhdGZvcm1fZ2V0X2RldmljZV9pZChwZGV2KTsKPiArCj4gKwlpZiAoIWlkKQo+
ICsJCXJldHVybiAtRU5PREVWOwo+ICsKPiArCXJldHVybiB6eF9jbGtfY29tbW9uX3Byb2JlKCZw
ZGV2LT5kZXYsIHBkZXYtPmRldi5wYXJlbnQtPm9mX25vZGUsCj4gKwkJCQkgICAoY29uc3Qgc3Ry
dWN0IHp4X2Nsa19kYXRhICopaWQtPmRyaXZlcl9kYXRhKTsKPiArfQoKW1NldmVyaXR5OiBIaWdo
XQpTaW5jZSB0aGlzIGRyaXZlciBpcyBhbiBNRkQgY2hpbGQsIHdpbGwgcmVnaXN0ZXJpbmcgdGhl
IGNsb2NrIHByb3ZpZGVyIHVzaW5nIAp0aGUgY2hpbGQncyBkZXZpY2UgcG9pbnRlciByZXN1bHQg
aW4gYSBOVUxMIGRldmljZSB0cmVlIG5vZGU/CgpJbiBjbGtfengyOTc1MjB2M19wcm9iZSwgdGhl
IGNvZGUgY29ycmVjdGx5IHBhc3NlcyBwZGV2LT5kZXYucGFyZW50LT5vZl9ub2RlIAp0byB6eF9j
bGtfY29tbW9uX3Byb2JlIHRvIGhhbmRsZSByZWdtYXAgbG9va3Vwcy4gSG93ZXZlciwgdGhlIGRl
dmljZSBwb2ludGVyIApwYXNzZWQgaXMgc3RpbGwgcGRldi0+ZGV2OgoKZHJpdmVycy9jbGsvenRl
L2Nsay16eDI5NzUyMHYzLmM6Y2xrX3p4Mjk3NTIwdjNfcHJvYmUoKQogICAgICAgIHJldHVybiB6
eF9jbGtfY29tbW9uX3Byb2JlKCZwZGV2LT5kZXYsIHBkZXYtPmRldi5wYXJlbnQtPm9mX25vZGUs
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGNvbnN0IHN0cnVjdCB6eF9jbGtf
ZGF0YSAqKWlkLT5kcml2ZXJfZGF0YSk7CgpXaGVuIHp4X2Nsa19jb21tb25fcHJvYmUgcmVnaXN0
ZXJzIHRoZSBwcm92aWRlciwgaXQgdXNlcyB0aGUgcGFzc2VkIGRldmljZSAKc3RydWN0dXJlIHdo
aWNoIGxhY2tzIGFuIG9mX25vZGU6Cgpkcml2ZXJzL2Nsay96dGUvY2xrLXp4LmM6enhfY2xrX2Nv
bW1vbl9wcm9iZSgpCiAgICAgICAgcmV0dXJuIGRldm1fb2ZfY2xrX2FkZF9od19wcm92aWRlcihk
ZXYsIG9mX2Nsa19od19vbmVjZWxsX2dldCwgZXhwb3J0cyk7CgpCZWNhdXNlIHRoZSBNRkQgY2hp
bGQgY2VsbCBkb2Vzbid0IGhhdmUgYW4gZXhwbGljaXQgZGV2aWNlIHRyZWUgbm9kZSwgCmRldi0+
b2Zfbm9kZSBpcyBOVUxMLiBDb3VsZCB0aGlzIGNhdXNlIGRldmljZSB0cmVlIGNvbnN1bWVycyB0
byBmYWlsIHRvIGZpbmQgCmFuZCBhY3F1aXJlIHRoZXNlIGNsb2NrcyBkdXJpbmcgYm9vdD8KClNo
b3VsZCBwZGV2LT5kZXYub2Zfbm9kZSBiZSBleHBsaWNpdGx5IGFzc2lnbmVkIHRvIHBkZXYtPmRl
di5wYXJlbnQtPm9mX25vZGUgCnByaW9yIHRvIGNhbGxpbmcgenhfY2xrX2NvbW1vbl9wcm9iZT8K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA5MjMtengyOWNsay12MTItMC05YzI0Mzc5NmI2ZDJAZ21haWwuY29tP3BhcnQ9OAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
