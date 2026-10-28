Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3BD606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=b+3rEYdb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=dTsIaDuP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OlfXjwFAy1eFjq0b5PPOHCB8MUroITWBJqlpLmT/xoc=; b=b+3rEYdbhbEX8XqtTRIBjKFABc
	YQIxMzEUHUX0T4Wwm4OEXzRwtxPw9/tct3K8Cp7BU8N6c1duwwnzDlKXBWG7QqFEG0BH4g1BufWv5
	S8wuDb1WGlw2cf6D/tnh36HSkS3H5JC/tjzjs7QFVZUjYgTVCwkuSBufOyuIvoZqpdb7CVOi/6jiI
	yzJZDpv8/sYA3OZMkwwdQF+DqW6sR1Z62betGlJOVa3hEOlwUghO9x0SSya5/xyOv0E3CBKR8U++W
	mstEanKOXCGXNX1ClwiCfYsgFBs+Kl2sHnQCABi0opwGaprYR0JA0Ip1iNrk+26QvBA+VhUCF9ZXy
	R0+aHx4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5cD-00000007OUL-0gYz;
	Wed, 28 Oct 2026 15:31:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5cB-00000007OUF-0QR8
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:30:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8986C40BAC;
	Wed, 28 Oct 2026 15:30:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 031C71F01825;
	Wed, 28 Oct 2026 15:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793201458;
	bh=u5OAziH+XXCu1kidoGU7GB4Imqu8yDWQL+K8hIK3tP0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dTsIaDuPmNbYc85czKOjTglGn5Z8DQAWYvIJJfhrDvUN4Oiv4JQcFmPouBXmh3U4N
	 dhahV2WaVdWopuQOMPTwvl/tI+Z+NUUM0zA/SOSDEP4EWzqBHDFEvhauRa/hGUXZnE
	 taFb3d8ZnV7iOt+YmbyJI201dOt9d9qHnWxUs7cZ95zjx4ojt74+6XeWqg66M46UL+
	 w/ysNacXBRyeqjC5hcavxRPdpCEtpCrHp16BPtpCUt2kv7xgmziY5LLcHFO2HwK0/t
	 x/d17zt9omLMKSaS3WPS9BH25RmC922vDE0ZPtYn7HcZCuDdqQQPIMtnxHSBNASaLE
	 EKFma+VNwi9+w==
Message-ID: <sashiko-outbox-188055@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/5] phy: Add common Innosilicon HDMI PHY helpers
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261028-jh7110-inno-hdmi-phy-v6-2-f3379684d97e@samsung.com>
References: <20261028-jh7110-inno-hdmi-phy-v6-0-f3379684d97e@samsung.com>
 <CGME20261028152227eucas1p1ac945094a851893634a568a46cc2ee95@eucas1p1.samsung.com>
 <20261028-jh7110-inno-hdmi-phy-v6-2-f3379684d97e@samsung.com>
Date: Wed, 28 Oct 2026 15:30:57 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBpbm5vLWhk
bWk6IDMyLWJpdCBvdmVyZmxvdyBpbiBpbm5vX2hkbWlfcGh5X3ByZV9wbGxfcmVjYWxjX3JhdGUo
KQotLQoKY29tbWl0IGRkYjYwZDk0NDk3NWRhYjBkZTM5YzUwYmQyM2QzMmU4ODRkMjM5YWUKQXV0
aG9yOiBNaWNoYWwgV2lsY3p5bnNraSA8bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKcGh5OiBB
ZGQgY29tbW9uIElubm9zaWxpY29uIEhETUkgUEhZIGhlbHBlcnMKClRoaXMgY29tbWl0IGludHJv
ZHVjZXMgYSBzaGFyZWQgaGVscGVyIGxpYnJhcnkgZm9yIHRoZSBJbm5vc2lsaWNvbiBIRE1JIFBI
WQpwcmUtUExMIGNvbmZpZ3VyYXRpb24sIGluY2x1ZGluZyB0YWJsZSBsb29rdXAsIGNsb2NrIHJh
dGUgY2FsY3VsYXRpb24gaGVscGVycywKYW5kIHJlZ2lzdGVyIHByb2dyYW1taW5nLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWlubm8taGRtaS5jIGIvZHJpdmVycy9waHkvcGh5LWlu
bm8taGRtaS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi42
OTAwZDRkODNlNDY0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1pbm5v
LWhkbWkuYwpbIC4uLiBdCj4gK3Vuc2lnbmVkIGxvbmcKPiAraW5ub19oZG1pX3BoeV9wcmVfcGxs
X3JlY2FsY19yYXRlKGNvbnN0IHN0cnVjdCBpbm5vX2hkbWlfcGh5X3ByZV9wbGwgKnBsbCwKPiAr
CQkJCSAgdW5zaWduZWQgbG9uZyBwYXJlbnRfcmF0ZSkKPiArewo+ICsJdW5zaWduZWQgaW50IGNv
bnRyb2wsIGRpdl8xLCBkaXZfMiwgZGl2XzMsIHBjbGtfZGl2X2FiLCBwY2xrX2Rpdl9jZDsKPiAr
CXVuc2lnbmVkIGludCBmcmFjX2Rpdl83XzAsIGZyYWNfZGl2XzE1XzgsIGZyYWNfZGl2XzIzXzE2
LCBkaXY7Cj4gKwl1OCBuZCwgbm9fYSwgbm9fYiwgbm9fZDsKPiArCXVuc2lnbmVkIGxvbmcgZnJh
YywgcmF0ZTsKPiArCXU2NCB2Y28sIHZjb19yYXRlOwo+ICsJdTE2IG5mOwo+ICsJaW50IHJldDsK
WyAuLi4gXQo+ICsJbmQgPSBkaXZfMSAmIElOTk9fUFJFX1BMTF9QUkVfRElWX01BU0s7Cj4gKwlu
ZiA9IChkaXZfMiAmIElOTk9fUFJFX1BMTF9GQl9ESVZfMTFfOF9NQVNLKSA8PCA4Owo+ICsJbmYg
fD0gZGl2XzM7Cj4gKwl2Y28gPSBwYXJlbnRfcmF0ZSAqIG5mOwo+ICsKPiArCWlmICghKGRpdl8y
ICYgSU5OT19QUkVfUExMX0ZSQUNfRElWX0RJU0FCTEUpKSB7Cj4gKwkJcmV0ID0gaW5ub19yZWFk
KHBsbCwgSU5OT19QUkVfUExMX0ZSQUNfRElWXzdfMCwgJmZyYWNfZGl2XzdfMCk7Cj4gKwkJaWYg
KHJldCkKPiArCQkJZ290byBlcnI7Cj4gKwkJcmV0ID0gaW5ub19yZWFkKHBsbCwgSU5OT19QUkVf
UExMX0ZSQUNfRElWXzE1XzgsICZmcmFjX2Rpdl8xNV84KTsKPiArCQlpZiAocmV0KQo+ICsJCQln
b3RvIGVycjsKPiArCQlyZXQgPSBpbm5vX3JlYWQocGxsLCBJTk5PX1BSRV9QTExfRlJBQ19ESVZf
MjNfMTYsCj4gKwkJCQkmZnJhY19kaXZfMjNfMTYpOwo+ICsJCWlmIChyZXQpCj4gKwkJCWdvdG8g
ZXJyOwo+ICsKPiArCQlmcmFjID0gZnJhY19kaXZfN18wIHwgKGZyYWNfZGl2XzE1XzggPDwgOCkg
fAo+ICsJCSAgICAgICAoZnJhY19kaXZfMjNfMTYgPDwgMTYpOwo+ICsJCXZjbyArPSBESVZfUk9V
TkRfQ0xPU0VTVChwYXJlbnRfcmF0ZSAqIGZyYWMsCj4gKwkJCQkJIEJJVChJTk5PX0ZSQUNfRElW
X1dJRFRIKSk7Cj4gKwl9CgpbU2V2ZXJpdHk6IE1lZGl1bV0KQ2FuIHRoZSBWQ08gY2FsY3VsYXRp
b25zIGluIGlubm9faGRtaV9waHlfcHJlX3BsbF9yZWNhbGNfcmF0ZSgpIGluCmRyaXZlcnMvcGh5
L3BoeS1pbm5vLWhkbWkuYyBvdmVyZmxvdyBvbiAzMi1iaXQgYXJjaGl0ZWN0dXJlcz8KCkJvdGgg
cGFyZW50X3JhdGUgYW5kIGZyYWMgaGF2ZSB0eXBlIHVuc2lnbmVkIGxvbmcsIHdoaWxlIG5mIGlz
IGEgdTE2IGFuZCB2Y28KaXMgYSB1NjQuIE9uIDMyLWJpdCB0YXJnZXRzIHdoZXJlIHVuc2lnbmVk
IGxvbmcgaXMgMzIgYml0cyB3aWRlLApwYXJlbnRfcmF0ZSAqIG5mIGlzIGV2YWx1YXRlZCBpbiAz
Mi1iaXQgYXJpdGhtZXRpYyBiZWZvcmUgYmVpbmcgd2lkZW5lZCB0bwp1NjQuIFdpdGggYSB0eXBp
Y2FsIDI0IE1IeiByZWZlcmVuY2UgY2xvY2ssIGFueSBmZWVkYmFjayBkaXZpZGVyIG5mID49IDE3
OQpleGNlZWRzIFUzMl9NQVgsIHdoZXJlYXMgdGhlIDEyLWJpdCBmZWVkYmFjayBkaXZpZGVyIHJl
YWNoZXMgdXAgdG8gNzU3IGluIHRoZQpJbm5vc2lsaWNvbiBwcmUtUExMIGNvbmZpZ3VyYXRpb24g
dGFibGVzLgoKU2ltaWxhcmx5LCB3aGVuIHRoZSBmcmFjdGlvbmFsIGRpdmlkZXIgaXMgZW5hYmxl
ZCwgcGFyZW50X3JhdGUgKiBmcmFjIGFuZApESVZfUk9VTkRfQ0xPU0VTVCgpIG9wZXJhdGUgb24g
MzItYml0IHVuc2lnbmVkIGxvbmcgdmFsdWVzIGJlZm9yZSBhZGRpbmcgdG8KdmNvLiBGb3IgYSAy
NCBNSHogcGFyZW50X3JhdGUgYW5kIGEgMjQtYml0IGZyYWMgdmFsdWUsIHBhcmVudF9yYXRlICog
ZnJhYwpyZXF1aXJlcyB1cCB0byA0OSBiaXRzIGFuZCBvdmVyZmxvd3MgMzItYml0IHVuc2lnbmVk
IGxvbmcgd2hlbmV2ZXIgZnJhYyA+PSAxNzkuCgpTaG91bGQgcGFyZW50X3JhdGUgYmUgY2FzdCB0
byB1NjQgaW4gcGFyZW50X3JhdGUgKiBuZiwgYW5kIHNob3VsZCB0aGUKZnJhY3Rpb25hbCBjYWxj
dWxhdGlvbiB1c2UgRElWX1JPVU5EX0NMT1NFU1RfVUxMKCh1NjQpcGFyZW50X3JhdGUgKiBmcmFj
LApCSVQoSU5OT19GUkFDX0RJVl9XSURUSCkpIHRvIGF2b2lkIDMyLWJpdCB0cnVuY2F0aW9uPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MTAyOC1qaDcxMTAtaW5uby1oZG1pLXBoeS12Ni0wLWYzMzc5Njg0ZDk3ZUBzYW1zdW5nLmNv
bT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
