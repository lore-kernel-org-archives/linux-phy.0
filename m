Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713B6C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyccA3MhnPehMQcDLocSwwbxElYmvw1IrOaltwdPGXU=; b=NyGahfpEHzE4sL
	DwKfxBQAz1FY64JQZenUsW0VFMbEDdGJbPP5Jl4xGkEcprg6CBbntITdnmqv3MozglySTvyrKG6HJ
	+jOCFeafilz3tSZ6FjW8axEXs0dgYEK8ryerNL+XY4v8qxeqxkeOxCeKS6rNM5feO8NWF3Q4PSEI0
	TQZqodCJBJWHTEd6B4IKlEBUqBAoq6KesrqKP+sTcchVT+njtQNO0GJVwkcbWZlNSPHvkZoqmV+Pp
	IXL46j938JDpPrtEnadQWx/cfuRNdI9T2kBee6RS2RG8qPHyuoaTr6IUKmu84UBxFGgz9DyVgX8PC
	ewHmJ0tEonHnr+JOwEWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GhE-0000000Bbq3-0du8;
	Wed, 09 Sep 2026 11:42:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GhD-0000000Bbpo-0bMR
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:42:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 485E76020A;
	Wed,  9 Sep 2026 11:42:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A46341F00A3A;
	Wed,  9 Sep 2026 11:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788954148;
	bh=pzRFhLD+IRSmHG6Ut/GykpgjFKmTcUSGep6zsiv54C8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WZMWdTZlk6VVSgN0eynfTJCI9XoSn3P64bpW6uBWNWIDJHH5pSc5kWxjQiqq3EQjL
	 5iRbSOduZYigMMBNct0Lzb/LJKEKTwy8+MI+oeoRj2ZnkuvZNH25AlILODTLznXRpu
	 WJ5q2jBAJggddmmnd6L8LIpC08vH3Pp1ujbGabLn4z/5lcSN5TY5IaAcMxfbaT6lAC
	 iDtqebnpGqSP93loThjItITEnwICEsFDxCQ2QqRo19DF8e2GQR6Djqh4PBE75qVdW3
	 vvaYAaZ8WINOc8xfoSuHZBYwD3e3G9TCXmjWI6x/EFQgsDcIt2+lJRXhL94Wvz0Hvw
	 D4b0WSMcM0gGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for
 clock  resources
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260909113433.1287454-4-zenghongling@kylinos.cn>
References: <20260909113433.1287454-1-zenghongling@kylinos.cn>
 <20260909113433.1287454-4-zenghongling@kylinos.cn>
Date: Wed, 09 Sep 2026 11:42:27 +0000
Message-Id: <20260909114227.A46341F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gQSByZWR1bmRhbnQgZGV2
X2VycigpIGNhbGwgaW1tZWRpYXRlbHkgYmVmb3JlIGRldl9lcnJfcHJvYmUoKSBkZWZlYXRzIHRo
ZSBwcm9iZSBkZWZlcnJhbCBzdXBwcmVzc2lvbiBtZWNoYW5pc20gYW5kIGNhdXNlcyBkb3VibGUg
bG9nZ2luZy4KLS0KCmNvbW1pdCAwOWVkYWJlODNlOTVjYzk2NzY5OGVjMGE1NmI4OTAxNDE2OTA3
ZTBlCkF1dGhvcjogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3MuY24+CgpwaHk6
IHRpLXBpcGUzOiBGaXggRVBST0JFX0RFRkVSIGhhbmRsaW5nIGZvciBjbG9jayByZXNvdXJjZXMK
ClRoaXMgY29tbWl0IGZpeGVzIEVQUk9CRV9ERUZFUiBoYW5kbGluZyBpbiB0aV9waXBlM19nZXRf
Y2xrKCkgYnkgcHJvcGFnYXRpbmcKdGhlIGFjdHVhbCBlcnJvciBjb2RlIGZvciB0aGUgc3lzdGVt
IGNsb2NrIGluc3RlYWQgb2YgcmV0dXJuaW5nIC1FSU5WQUwuIEl0CmFsc28gdXNlcyBkZXZtX2Ns
a19nZXRfb3B0aW9uYWwoKSBmb3IgdGhlIFNBVEEgcmVmY2xrIHRvIGNvcnJlY3RseSBoYW5kbGUK
bWlzc2luZyBvcHRpb25hbCBjbG9ja3Mgd2hpbGUgcHJvcGVybHkgcHJvcGFnYXRpbmcgcHJvYmUg
ZGVmZXJyYWxzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMg
Yi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IGluZGV4IDAyMTY1N2NiY2U0ODEuLmE2
N2Y1ZGE0M2M4M2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMK
PiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwoKWyAuLi4gXQoKPiBAQCAtNjA4
LDE0ICs2MDgsMjEgQEAgc3RhdGljIGludCB0aV9waXBlM19nZXRfY2xrKHN0cnVjdCB0aV9waXBl
MyAqcGh5KQo+ICAJc3RydWN0IGNsayAqY2xrOwo+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gcGh5
LT5kZXY7Cj4gIAo+IC0JcGh5LT5yZWZjbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicmVmY2xrIik7
Cj4gKwkvKgo+ICsJICogcmVmY2xrIGlzIG9wdGlvbmFsIGZvciBTQVRBIFBIWSB0byBzdXBwb3J0
IG9sZGVyIERUQnMsIGJ1dAo+ICsJICogcmVxdWlyZWQgZm9yIG90aGVyIG1vZGVzLiBVc2UgZGV2
bV9jbGtfZ2V0X29wdGlvbmFsKCkgZm9yIFNBVEEKPiArCSAqIHdoaWNoIHJldHVybnMgTlVMTCBm
b3IgLUVOT0VOVCwgYWxsb3dpbmcgdXMgdG8gcHJvcGFnYXRlIGFsbAo+ICsJICogb3RoZXIgZXJy
b3JzIGluY2x1ZGluZyAtRVBST0JFX0RFRkVSLgo+ICsJICovCj4gKwlpZiAocGh5LT5tb2RlID09
IFBJUEUzX01PREVfU0FUQSkKPiArCQlwaHktPnJlZmNsayA9IGRldm1fY2xrX2dldF9vcHRpb25h
bChkZXYsICJyZWZjbGsiKTsKPiArCWVsc2UKPiArCQlwaHktPnJlZmNsayA9IGRldm1fY2xrX2dl
dChkZXYsICJyZWZjbGsiKTsKPiArCj4gIAlpZiAoSVNfRVJSKHBoeS0+cmVmY2xrKSkgewo+ICAJ
CWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGdldCByZWZjbGtcbiIpOwo+IC0JCS8qIG9sZGVyIERU
QnMgaGF2ZSBtaXNzaW5nIHJlZmNsayBpbiBTQVRBIFBIWQo+IC0JCSAqIHNvIGRvbid0IGJhaWwg
b3V0IGluIGNhc2Ugb2YgU0FUQSBQSFkuCj4gLQkJICovCj4gLQkJaWYgKHBoeS0+bW9kZSAhPSBQ
SVBFM19NT0RFX1NBVEEpCj4gLQkJCXJldHVybiBQVFJfRVJSKHBoeS0+cmVmY2xrKTsKPiArCQly
ZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIocGh5LT5yZWZjbGspLAo+ICsJCQkJInVu
YWJsZSB0byBnZXQgcmVmY2xrXG4iKTsKCltTZXZlcml0eTogTG93XQpEb2VzIGtlZXBpbmcgdGhp
cyBkZXZfZXJyKCkgY2FsbCBkZWZlYXQgdGhlIHB1cnBvc2Ugb2YgdXNpbmcgZGV2X2Vycl9wcm9i
ZSgpCmJlbG93IGl0PwoKU2luY2UgZGV2X2Vycl9wcm9iZSgpIHN1cHByZXNzZXMgbG9nZ2luZyBk
dXJpbmcgLUVQUk9CRV9ERUZFUiwgbGVhdmluZyB0aGUKdW5jb25kaXRpb25hbCBkZXZfZXJyKCkg
aGVyZSB3aWxsIHN0aWxsIG91dHB1dCAidW5hYmxlIHRvIGdldCByZWZjbGsiIHRvCnRoZSBrZXJu
ZWwgbG9nIGR1cmluZyBub3JtYWwgcHJvYmUgZGVmZXJyYWxzLiBJdCB3aWxsIGFsc28gY2F1c2Ug
dGhlIHNhbWUKZXJyb3IgbWVzc2FnZSB0byBiZSBsb2dnZWQgdHdpY2Ugb24gYWN0dWFsIGZhaWx1
cmVzLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDkwOTExMzQzMy4xMjg3NDU0LTEtemVuZ2hvbmdsaW5nQGt5bGlub3MuY24/cGFy
dD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
