Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A13D0CD5BD5
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 18:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTv89CSgkDMrL7btGVCvKtgXYYk2ZJ3LGnMLRMwhEdM=; b=hYZyOE4xe/al3z
	Hb+L95iwOn5/mUEJs4vPI645AMlK1TYGXsvJRLTW1OYoyVl7w5ZAogKDaLTb/E7RANOWkONipw+Zp
	HQkmQEKdZlyaUYzemBoL7onahEVmtrco5TayCcpT7Z3qizcfoSLf58jtaIaBxt/vY7Xprm9ivLlxo
	yMmeea00WwuGsRfQSGQ/ftrz6K0RpHCTml/508lbxLL6lHX6JXRZqsNeGBi1Gv0V9h5ql6dv66hca
	0nX/SWopDzKpDsvqJK5vAbB6TCtlnqCa/h1NfCp2OjpTWL+MC0/F/n4lZLdz5azhHhauf9XL+fI5Z
	R+qeliSFfZ3p/NWMri4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSf3j-000000069oM-19bQ;
	Thu, 28 May 2026 18:02:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSf3g-000000069nw-3bCG
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 18:02:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 05F8B43E3C;
	Thu, 28 May 2026 18:02:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B1D41F000E9;
	Thu, 28 May 2026 18:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779991335;
	bh=NoHSKqvT4Uq25uK81zLoauOZPp8Liu9tk65g3sjreS0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vuth4eV09p9ffpMh6XYU9XlOSQqDFzA7tuf1D+U8KccpGTjA1/yzRgM8Pw0xQDUOU
	 SQNKQ6vObZkDF3zcvtlhHAtZiKjhLw7LSKnu53hKfoI5IqKkvVdjCca9T53YJNhDwN
	 T8lwfZIdon1rthcriKexacGl8OqoWDECAjsUNVhvKQw4gE9+Jb2Yed2zVaK+O2ZAYB
	 M9EMM5dqSAb6TrE9mSns5M94bP03UGLqmScOymGA6V3M5g0Kfxpz6/qZPwAa7Ho7W4
	 pFgIr6jk5D23Tz34gk6b/A4t/b8FmgHRzdDaM1PuclM5hLx73g6ipj+jkPRdeoSNvW
	 +XrzGFltgnA4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH phy-next 09/13] phy: lynx-28g: common probe() and
 remove()
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260528172404.733196-10-vladimir.oltean@nxp.com>
References: <20260528172404.733196-10-vladimir.oltean@nxp.com>
Date: Thu, 28 May 2026 18:02:15 +0000
Message-Id: <20260528180215.9B1D41F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_110216_935010_3CFC6C5F 
X-CRM114-Status: GOOD (  14.42  )
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
IFtIaWdoXSBNaXNzaW5nIE5VTEwgY2hlY2sgZm9yIHRoZSByZXN1bHQgb2YgYG9mX2RldmljZV9n
ZXRfbWF0Y2hfZGF0YShkZXYpYC4KLS0KCmNvbW1pdCA0MzA3YWY0MmE4MjMxM2VhZjE5MTUzZTkw
ZDdjNDhlMGJkNWY5NjI2CkF1dGhvcjogVmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5A
bnhwLmNvbT4KCnBoeTogbHlueC0yOGc6IGNvbW1vbiBwcm9iZSgpIGFuZCByZW1vdmUoKQoKRmFj
dG9yIHRoZSBkZXZpY2UtYWdub3N0aWMgbG9naWMgZnJvbSBseW54XzI4Z19wcm9iZSgpIGFuZAps
eW54XzI4Z19yZW1vdmUoKSBpbnRvIGx5bnhfcHJvYmUoKSBhbmQgbHlueF9yZW1vdmUoKSBpbnNp
ZGUKcGh5LWZzbC1seW54LWNvcmUuYy4gVGhlc2Ugd2lsbCBiZSBzaGFyZWQgd2l0aCB0aGUgMTBH
IEx5bnggZHJpdmVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtbHlueC0yOGcuYyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMjhnLmMK
PiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTI4Zy5jCj4gKysrIGIv
ZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC0yOGcuYwpbIC4uLiBdCj4gIHN0YXRp
YyBpbnQgbHlueF8yOGdfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+
ICAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiArCWNvbnN0IHN0cnVjdCBseW54
X2luZm8gKmluZm87Cj4gIAo+ICAJLyoKPiAgCSAqIElmIHdlIGdldCBoZXJlIGl0IG1lYW5zIHdl
IHByb2JlZCBvbiBhIGRldmljZSB0cmVlIHdoZXJlCj4gIAkgKiAiZnNsLGx5bngtMjhnIiB3YXNu
J3QgdGhlIGZhbGxiYWNrLCBidXQgdGhlIHNvbGUgY29tcGF0aWJsZSBzdHJpbmcuCj4gIAkgKi8K
PiArCWluZm8gPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKCltTZXZlcml0eTogSGln
aF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHNob3VsZCB3ZSBjaGVjayBpZiBp
bmZvIGlzIE5VTEwgYmVmb3JlCnByb2NlZWRpbmc/CgpJZiBhIHVzZXIgYmluZHMgdGhlIGRyaXZl
ciB0byBhIGRldmljZSB1c2luZyB0aGUgc3lzZnMgYmluZCBpbnRlcmZhY2UsIGFuZAp0aGUgZGV2
aWNlJ3MgT0Ygbm9kZSBkb2VzIG5vdCBtYXRjaCB0aGUgZHJpdmVyJ3Mgb2ZfbWF0Y2hfdGFibGUs
Cm9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpIHdpbGwgcmV0dXJuIE5VTEwuCgo+ICsJaWYgKGlu
Zm8gPT0gJmx5bnhfaW5mb19jb21wYXQpCj4gIAkJZGV2X3dhcm4oZGV2LCAiUGxlYXNlIHVwZGF0
ZSBkZXZpY2UgdHJlZSB0byB1c2UgcGVyLWRldmljZSBjb21wYXRpYmxlIHN0cmluZ3NcbiIpOwo+
ICAKPiArCXJldHVybiBseW54X3Byb2JlKHBkZXYsIGluZm8sICZseW54XzI4Z19vcHMpOwo+ICB9
CgpbIC4uLiBdCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5
bngtY29yZS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC1jb3JlLmMKPiAt
LS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LWNvcmUuYwo+ICsrKyBiL2Ry
aXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtY29yZS5jClsgLi4uIF0KPiAraW50IGx5
bnhfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwgY29uc3Qgc3RydWN0IGx5bnhf
aW5mbyAqaW5mbywKPiArCSAgICAgICBjb25zdCBzdHJ1Y3QgcGh5X29wcyAqcGh5X29wcykKPiAr
ewpbIC4uLiBdCj4gKwlwcml2LT5kZXYgPSBkZXY7Cj4gKwlwcml2LT5pbmZvID0gaW5mbzsKPiAr
CWRldl9zZXRfZHJ2ZGF0YShkZXYsIHByaXYpOwo+ICsJc3Bpbl9sb2NrX2luaXQoJnByaXYtPnBj
Y19sb2NrKTsKPiArCUlOSVRfREVMQVlFRF9XT1JLKCZwcml2LT5jZHJfY2hlY2ssIGx5bnhfY2Ry
X2xvY2tfY2hlY2spOwo+ICsKPiArCXByaXYtPmxhbmUgPSBkZXZtX2tjYWxsb2MoZGV2LCBwcml2
LT5pbmZvLT5udW1fbGFuZXMsCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50
cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgaWYgaW5mbyB3YXMgTlVMTCBhcyBtZW50aW9uZWQK
YWJvdmUsIHdvdWxkIHRoaXMgdW5jb25kaXRpb25hbGx5IGRlcmVmZXJlbmNlIGl0IGFuZCBjYXVz
ZSBhIGtlcm5lbCBwYW5pYz8KCj4gKwkJCQkgIHNpemVvZigqcHJpdi0+bGFuZSksIEdGUF9LRVJO
RUwpOwo+ICsJaWYgKCFwcml2LT5sYW5lKQo+ICsJCXJldHVybiAtRU5PTUVNOwpbIC4uLiBdCgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNTI4MTcyNDA0LjczMzE5Ni0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9OQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
