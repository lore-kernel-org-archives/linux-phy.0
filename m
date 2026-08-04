Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86964C55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 18:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lf3LRYA2A64e4kH4rw5coCbQXBtcq9V1g/vwD7IQKZk=; b=ERcAaz4IRFpp0k
	YPly5EEJFHf5Tf3HggGonaNPWR/ATNUckjiOYggXIzMff3rrR4DpJRR0SRdi080t54HMIgU503cYR
	wv/KNOJTXQ0gCI4v+iMubQYJG2LMBnCQEseOkQJDahaZqv30z/OcAaOTOJspHsVuO+e6Xsedcx7ux
	sg5zDD0NQrcio73Gd0joBg2icHTD93ITTqiLU+f2FGLDuqaqct3qbffoHry2QM+hnocIjEAB4aLhy
	njAZ32tPIQxuZXvWNhImDZ21h4GwyC+Wpr9Ip7ouSvsluQTap4TA8Qz/m97kiiISU7h3fOvTtO8+S
	DHvuhNHE8GEOFCVBoAeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJkW-00000002baS-3FKf;
	Tue, 04 Aug 2026 18:20:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJkW-00000002baE-0snp
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 18:20:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F1AD3404BC;
	Tue,  4 Aug 2026 18:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AE951F000E9;
	Tue,  4 Aug 2026 18:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785867623;
	bh=HE73bSZgtxzzTvNz/PBn/nW4/fGGSKWGGgtsYMqaa6Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cNTgkSpk8//hsRf4j2ciYZDTStlHCW8ncUwmD2wNUtYg3ciP/8oT7NIAgxlqzJtJa
	 tbkpSLCg6uwpQzjn5+bc7sWyhlhXCp1OKX4+ASMmoUnBAvFBvPt1R/MGyANlEOTJhe
	 41vTXhqM/kSqX46B0DXliPOqjsdvQELDsIEXBITshyUA3LECWElbHdE9BIhO6YCmpc
	 ZNivor7CRMOiB9jl/8LgxuI4ddWlAVbv10yW4Szh41EHaPC6GxuiwPMvFnshESZ1IO
	 zIDM8AUWf4YN7TYznGKvWBOTnrBuUeDZU/eX8IYuWuoyFpLcScXS+zHZPN0KQhvZu6
	 IAXtsNszeJUyg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v3 2/2] phy: qcom: qmp-combo: Add SM8475 support
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20260804-sm8475-bup-usbss-v3-2-9a5b9ebf62de@proton.me>
References: <20260804-sm8475-bup-usbss-v3-0-9a5b9ebf62de@proton.me>
 <20260804-sm8475-bup-usbss-v3-2-9a5b9ebf62de@proton.me>
Date: Tue, 04 Aug 2026 18:20:22 +0000
Message-Id: <20260804182023.4AE951F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBN
aXNzaW5nIGAuY2FsaWJyYXRlX2RwX3BoeWAgY2FsbGJhY2sgYXNzaWdubWVudCBpbiB0aGUgbmV3
bHkgYWRkZWQgYHNtODQ3NV91c2IzZHBwaHlfY2ZnYCBzdHJ1Y3QuCgpQcmUtZXhpc3RpbmcgaXNz
dWVzOgotIFtIaWdoXSBTQVIyMTMwUCBjb25maWd1cmF0aW9uIGlzIG5vdCB1cGRhdGVkIHRvIHVz
ZSB0aGUgbmV3IHYxIERQIFBMTCB0YWJsZXMgZGVzcGl0ZSBiZWluZyBleHBsaWNpdGx5IGlkZW50
aWZpZWQgYXMgYSB2MSBTb0MuCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFUQ0ggUkVTRU5EIHYzIDIv
Ml0gcGh5OiBxY29tOiBxbXAtY29tYm86IEFkZCBTTTg0NzUgc3VwcG9ydCAtLS0KY29tbWl0IDFi
MzA3NTdlNTBlMTdlOWY3ZTM2MGM4OTg3YzlhYWZjNzY0MTFlMjAKQXV0aG9yOiBFc3RlYmFuIFVy
cnV0aWEgPGVzdGV1d3VAcHJvdG9uLm1lPgoKcGh5OiBxY29tOiBxbXAtY29tYm86IEFkZCBTTTg0
NzUgc3VwcG9ydAoKVGhpcyBwYXRjaCBhZGRzIFVTQjMgYW5kIERQIGNvbWJvIFBIWSBzdXBwb3J0
IGZvciB0aGUgUXVhbGNvbW0gU004NDc1IFNvQy4KSXQgaW50cm9kdWNlcyBuZXcgUlggYW5kIFBD
UyBVU0IgdGFibGVzLCByZXVzZXMgb3RoZXJzIGZyb20gZXhpc3RpbmcgU29DcywKYW5kIGFkZHMg
c3BlY2lmaWMgdjEgUExMIHN0cnVjdHVyZXMgZm9yIDRubS12MSBTb0NzIHRvIGZpeCBsaW5rIHRy
YWluaW5nCmZhaWx1cmVzIGNhdXNlZCBieSByZWZlcmVuY2UgY2xvY2sgZGlmZmVyZW5jZXMuCgo+
IFNvbWUgU29DcyBzdWNoIGFzIFNBUjIxMzBQLCBTTTc1NTAsIFNNNzYzNSBhbmQgU004NDc1IHVz
ZSA0bm0tdjEgUExMcy4KPiBGb3IgU004NDc1LCB0cnlpbmcgdG8gdXNlIHFtcF92Nl9kcF9zZXJk
ZXNfdGJsIHN0cnVjdHMgKHdoaWNoIGFyZSBmb3IKPiA0bm0tdjEuMSBQTExzKSBjYXVzZXMgbGlu
ayB0cmFpbmluZyB0byBmYWlsIGJlY2F1c2Ugb2YgcmVmIGNsb2NrCj4gZGlmZmVyZW5jZXMsIHdo
aWNoIGluIHR1cm4gbWFrZXMgdGhlc2Ugc3RydWN0cyBkaWZmZXIuCgpbU2V2ZXJpdHk6IEhpZ2hd
ClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBzaW5jZSB0aGlzIHBhdGNoIGludHJv
ZHVjZXMgdGhlIHYxIERQIFBMTAp0YWJsZXMgdG8gZml4IGxpbmsgdHJhaW5pbmcgZm9yIDRubS12
MSBQTExzLCBzaG91bGRuJ3QKc2FyMjEzMHBfdXNiM2RwcGh5X2NmZyBhbHNvIGJlIHVwZGF0ZWQg
dG8gdXNlIHRoZW0/CgpDdXJyZW50bHkgc2FyMjEzMHBfdXNiM2RwcGh5X2NmZyBzdGlsbCByZWZl
cmVuY2VzIHRoZSBpbmNvbXBhdGlibGUgdjEuMQp0YWJsZXMgKHFtcF92Nl9kcF9zZXJkZXNfdGJs
KSwgd2hpY2ggYWNjb3JkaW5nIHRvIHRoaXMgY29tbWl0IG1lc3NhZ2UKY2F1c2VzIGxpbmsgdHJh
aW5pbmcgdG8gZmFpbCBvbiB0aGVzZSBTb0NzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtY29tYm8uYwo+IGluZGV4IGNkY2ZhZDJlODZiMWQuLjUyYjA3ZGUyYzUyYjUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiAr
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwoKWyAuLi4gXQoK
PiBAQCAtMjg0NSw2ICsyOTY1LDUxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcg
c204MzUwX3VzYjNkcHBoeV9jZmcgPSB7Cj4gIAkuaGFzX3B3cmRuX2RlbGF5CT0gdHJ1ZSwKPiAg
fTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgc204NDc1X3VzYjNkcHBo
eV9jZmcgPSB7Cj4gKwkub2Zmc2V0cwkJPSAmcW1wX2NvbWJvX29mZnNldHNfdjMsCgpbIC4uLiBd
Cgo+ICsJLmRwX2F1eF9pbml0CQk9IHFtcF92NF9kcF9hdXhfaW5pdCwKPiArCS5jb25maWd1cmVf
ZHBfdHgJPSBxbXBfdjRfY29uZmlndXJlX2RwX3R4LAo+ICsJLmNvbmZpZ3VyZV9kcF9jbG9ja3MJ
PSBxbXBfdjNfY29uZmlndXJlX2RwX2Nsb2NrcywKPiArCS5jb25maWd1cmVfZHBfcGh5CT0gcW1w
X3Y0X2NvbmZpZ3VyZV9kcF9waHksCgpbU2V2ZXJpdHk6IEhpZ2hdCklzIHRoZSAuY2FsaWJyYXRl
X2RwX3BoeSBjYWxsYmFjayBpbnRlbnRpb25hbGx5IG9taXR0ZWQgaGVyZT8KCldpdGhvdXQgdGhl
IGNhbGlicmF0aW9uIGxvb3AgYmVpbmcgYXNzaWduZWQgKGUuZy4sIHRvCnFtcF92NF9jYWxpYnJh
dGVfZHBfcGh5KSwgRFAgbGluayB0cmFpbmluZyB3aWxsIG5vdCBpdGVyYXRlIHRocm91Z2gKZGlm
ZmVyZW50IHZvbHRhZ2Ugc3dpbmcgYW5kIHByZS1lbXBoYXNpcyBzZXR0aW5ncyB1cG9uIGEgZmFp
bHVyZS4gVGhpcwpjb3VsZCBjYXVzZSBsaW5rIHRyYWluaW5nIGZhaWx1cmVzIHdpdGggY2VydGFp
biBjYWJsZXMgb3IgZXh0ZXJuYWwgZGlzcGxheXMuCgo+ICsKPiArCS5yZWdzCQkJPSBxbXBfdjZf
dXNiM3BoeV9yZWdzX2xheW91dCwKPiArCS5yZXNldF9saXN0CQk9IG1zbTg5OTZfdXNiM3BoeV9y
ZXNldF9sLAo+ICsJLm51bV9yZXNldHMJCT0gQVJSQVlfU0laRShtc204OTk2X3VzYjNwaHlfcmVz
ZXRfbCksCj4gKwkudnJlZ19saXN0CQk9IHFtcF9waHlfdnJlZ19sLAo+ICsJLm51bV92cmVncwkJ
PSBBUlJBWV9TSVpFKHFtcF9waHlfdnJlZ19sKSwKPiArfTsKCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDQtc204NDc1LWJ1cC11
c2Jzcy12My0wLTlhNWI5ZWJmNjJkZUBwcm90b24ubWU/cGFydD0yCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
