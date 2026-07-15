Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F05DC44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 11:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wapx8QUG+kN231ZQpboctl4kh2tz17piuSl1w3hYMiY=; b=3Mht0RTipLy/RF
	sq5t0ajl4LsTi9P1mHRE1OjCllKIYeiDbb2ARRLRStNOKGO9kcZTITP3tsXKJCIjA8lNb0L3wMe/m
	kPK8NFg7xgX7tCCsmF4ZKmdDamPvrUWEM88/aRUHwyL0xtHkC02Fn48j8R3r/Ezra8nmaEWzuM9kk
	slD5kJtyRLlKbumZ9JdLJxBOxt0HJrD22DcTg9OrbyS75K9BxHi7FCwcoL6QKoKOJ8KWf0QGxFU2G
	lSQhAFBNm/2lzZPApgj2B+ecPbEShYkniQ1hDVZ+L//Wgi7E288HG0r00ZyntgsD0TnhqY9TwnkBp
	TQ5P5A64uwyQB8CqkhEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjyAT-0000000Ee6k-0DLe;
	Wed, 15 Jul 2026 11:52:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjyAR-0000000Ee63-38lc
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 11:52:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3404A601C6;
	Wed, 15 Jul 2026 11:52:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0271F00A3A;
	Wed, 15 Jul 2026 11:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784116366;
	bh=8WqZ8bb1F26TclUSKsQJWwuIFfBQNPQsGug8Bxh2k0U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fa5eJh0Gk0fbGSed649s/i4stEPtZd2Wbup2S168A0DOSD3zrywBKMsKCjvXI/0d8
	 soPqVT5UlO5n/Q7nJ6xaVsWm7YKiehf3TBlb/3e369sDYRb/gID3YaEOUk59xU9+0x
	 aaoCE8f4SMgEnXGPwLLF27facOx91qMMp6MT/B4RWJtKy1Hizolp+tqFL7LyplkEnT
	 Ilp9hnP3lJ9n5ViA5KRy0WanAhSJA2StsvFRX4+CAA5D68IasjBEkLGz+pAEDVTfSQ
	 doCoC9HLsnXZMKn4lbeoK0O3SFMHjQuS8VqNxzrPWFacpZBkvhOxQl9ufjIokE0ynz
	 Bx7CDJsYv+W1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/6] phy: fsl-imx8mq-usb: add runtime PM support
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: neil.armstrong@linaro.org, imx@lists.linux.dev, linux-phy@lists.infradead.org, Frank.Li@kernel.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260715-imx8mp-usb-phy-improvement-v6-3-00d95e270e4c@nxp.com>
References: <20260715-imx8mp-usb-phy-improvement-v6-0-00d95e270e4c@nxp.com>
 <20260715-imx8mp-usb-phy-improvement-v6-3-00d95e270e4c@nxp.com>
Date: Wed, 15 Jul 2026 11:52:46 +0000
Message-Id: <20260715115246.7A0271F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGBQTV9SVU5USU1FX0FD
UVVJUkVgIGZhbHNlbHkgc3VjY2VlZHMgd2hlbiBydW50aW1lIFBNIGlzIGRpc2FibGVkIChlLmcu
LCBkdXJpbmcgc3lzdGVtIHNsZWVwKSwgbGVhZGluZyB0byBhIHN5c3RlbSBoYW5nIHdoZW4gZGlz
YWJsZWQgaGFyZHdhcmUgcmVnaXN0ZXJzIGFyZSBhY2Nlc3NlZC4KLS0KCi0tLSBQYXRjaCBbM106
IFtQQVRDSCB2NiAzLzZdIHBoeTogZnNsLWlteDhtcS11c2I6IGFkZCBydW50aW1lIFBNIHN1cHBv
cnQgLS0tCmNvbW1pdCBkODVlNDQxZDUyYTdmZWU4MjlmYzg2MGVlODc5NTk2NGE5OWU0NTU1CkF1
dGhvcjogWHUgWWFuZyA8eHUueWFuZ18yQG54cC5jb20+CgpwaHk6IGZzbC1pbXg4bXEtdXNiOiBh
ZGQgcnVudGltZSBQTSBzdXBwb3J0CgpUaGlzIGNvbW1pdCBhZGRzIHJ1bnRpbWUgUE0gc3VwcG9y
dCB0byBlbnN1cmUgdGhlIFBIWSBpcyBwcm9wZXJseSBwb3dlcmVkCmFuZCBjbG9ja2VkIGR1cmlu
ZyByZWdpc3RlciBhY2Nlc3MuIEl0IGd1YXJkcyByZWdpc3RlciBhY2Nlc3NlcyBpbiBQSFkKb3Bl
cmF0aW9ucyBhbmQgVHlwZS1DIG9yaWVudGF0aW9uIHN3aXRjaGluZy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYyBiL2RyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+IGluZGV4IDNhNTc4OGM2MDllMWIuLmJj
ODA0ZDJiNWFlZWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
aW14OG1xLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1x
LXVzYi5jCgpbIC4uLiBdCgo+IEBAIC0xMzYsMTcgKzEzNywxNSBAQCBzdGF0aWMgaW50IHRjYV9i
bGtfdHlwZWNfc3dpdGNoX3NldChzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCj4gIHsKPiAg
CXN0cnVjdCBpbXg4bXFfdXNiX3BoeSAqaW14X3BoeSA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0
YShzdyk7Cj4gIAlzdHJ1Y3QgdGNhX2JsayAqdGNhID0gaW14X3BoeS0+dGNhOwo+IC0JaW50IHJl
dDsKPiAgCj4gIAlpZiAodGNhLT5vcmllbnRhdGlvbiA9PSBvcmllbnRhdGlvbikKPiAgCQlyZXR1
cm4gMDsKPiAgCj4gLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoaW14X3BoeS0+Y2xrKTsKPiAt
CWlmIChyZXQpCj4gLQkJcmV0dXJuIHJldDsKPiArCVBNX1JVTlRJTUVfQUNRVUlSRSgmaW14X3Bo
eS0+cGh5LT5kZXYsIHBtKTsKPiArCWlmIChQTV9SVU5USU1FX0FDUVVJUkVfRVJSKCZwbSkpCj4g
KwkJcmV0dXJuIC1FTlhJTzsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNoZWNrIGZhbHNl
bHkgc3VjY2VlZCB3aGVuIHJ1bnRpbWUgUE0gaXMgZGlzYWJsZWQsIHN1Y2ggYXMgZHVyaW5nCnN5
c3RlbSBzbGVlcD8KCkR1cmluZyBzeXN0ZW0gc3VzcGVuZCwgcG1fcnVudGltZV9mb3JjZV9zdXNw
ZW5kKCkgZGlzYWJsZXMgcnVudGltZSBQTQooZGlzYWJsZV9kZXB0aCA+IDApIGFuZCB0dXJucyBv
ZmYgdGhlIFBIWSBjbG9ja3MuIElmIGEgVHlwZS1DIG9yaWVudGF0aW9uCmNoYW5nZSBvY2N1cnMg
dmlhIGludGVycnVwdCBhdCB0aGlzIHRpbWUsIFBNX1JVTlRJTUVfQUNRVUlSRSAod2hpY2ggd3Jh
cHMKcG1fcnVudGltZV9nZXRfYWN0aXZlIHdpdGggUlBNX1RSQU5TUEFSRU5UKSB3aWxsIHJldHVy
biBzdWNjZXNzIGRlc3BpdGUgdGhlCmRldmljZSBiZWluZyBzdXNwZW5kZWQuCgpUaGUgZHJpdmVy
IHdvdWxkIHRoZW4gcHJvY2VlZCB0byB0Y2FfYmxrX29yaWVudGF0aW9uX3NldCgpLCB3aGljaCBh
Y2Nlc3Nlcwp1bmNsb2NrZWQgUEhZIHJlZ2lzdGVycywgcG90ZW50aWFsbHkgY2F1c2luZyBhIHN5
bmNocm9ub3VzIGV4dGVybmFsIGFib3J0IG9yCnN5c3RlbSBoYW5nLgoKQ291bGQgUE1fUlVOVElN
RV9BQ1FVSVJFX0lGX0VOQUJMRUQoKSBiZSB1c2VkIGhlcmUgaW5zdGVhZCB0byBzYWZlbHkgY2hl
Y2sKaWYgdGhlIGRldmljZSBpcyBhY3RpdmUgYW5kIGZhaWwgYXBwcm9wcmlhdGVseSBpZiBydW50
aW1lIFBNIGlzIGRpc2FibGVkPwoKPiAgCj4gIAl0Y2FfYmxrX29yaWVudGF0aW9uX3NldCh0Y2Es
IG9yaWVudGF0aW9uKTsKPiAtCWNsa19kaXNhYmxlX3VucHJlcGFyZShpbXhfcGh5LT5jbGspOwo+
ICAKPiAgCXJldHVybiAwOwo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzE1LWlteDhtcC11c2ItcGh5LWltcHJvdmVtZW50
LXY2LTAtMDBkOTVlMjcwZTRjQG54cC5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
