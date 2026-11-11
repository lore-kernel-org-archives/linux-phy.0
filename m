Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE39E606A324
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 03:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=c7Hn8gMx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Luxxnqso
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ALTrX14tiqom1vfijNB92POglObqZyP8eHzh83dsXoc=; b=c7Hn8gMx+V4bzi9hXT8EtFFCV8
	qduFm1Yxq1/USNtoqeJc4BvL6zQvfS3zsiFCKu0LoPUBj+ssFk4YW+pkDFYC+qz0WHWLVHRzCMzTc
	mixStPlxspfVnaLCbR2E42JMQNGv7x6DUZ9anJ1dSrsAdon5n1EV8V50XKedLT7bx5i2hMSv303Pk
	mUG3jSrhZxl1b38O2DLfy0YAt1ic3d1OJSfTkgB79rDYYwKW/iOX0gTmFv2mWOba87fo2ryFAp9CE
	39tkJWuysEVltRJEKSjdFsvjMdUy2fpAa8KoMxOlD9ci/qCPdG81NII71iMG7SAnJvQ6jGY7Eh5R6
	/h53Zt2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyvW-00000005XRR-2LOn;
	Wed, 11 Nov 2026 03:23:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyvV-00000005XR3-0tBf
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 03:23:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4903B63831;
	Wed, 11 Nov 2026 03:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ADFB1F0089F;
	Wed, 11 Nov 2026 03:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794367388;
	bh=8QjKzR1VguJw8D/MKsLYUOGbt7zIGd8HDj92xIUMoGk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LuxxnqsoZ7zHyXAvgGxiXaEeQuRtsZHdqDn8Z7nA9gn1KSYOuj+XR1djPT7D5jhYE
	 eTepCO8zhEStyQXppLXih70DR6usI53+0gjIWI1pY/aHgkkA9NcHS+A5u4a0yqq26U
	 BNinVqcmHQBQqI7D/doXhnin4m8LNdgOtHxLfrJBUwyvba788kEABuQDkTUX3d46dc
	 rbCURUKQR7Pjx5Nbz39LMP4EtqMwGAxxz4zw4fAkqBzZJhYALHRN5BUO2zzz2yTHFo
	 rEUMT0LmaGRSCj0Z2PoM4TCsC6AV8QwXheP8xQ4sGg+1OM9lPbUn7IsmWJZTHMBjis
	 CnO0YZW/zQV+w==
Message-ID: <sashiko-outbox-208174@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: Add CIX Sky1 USB3 PHY
To: "Hongliang Yang" <hongliang.yang@cixtech.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261111030937.2954646-2-hongliang.yang@cixtech.com>
References: <20261111030937.2954646-1-hongliang.yang@cixtech.com>
 <20261111030937.2954646-2-hongliang.yang@cixtech.com>
Date: Wed, 11 Nov 2026 03:23:07 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHBoeTog
Y2l4LHNreTEtdXNiMy1waHkgdXNlcyAjcGh5LWNlbGxzID0gMCBmb3IKICB0d28tbGFuZSBQSFkK
LS0KCmNvbW1pdCAyZGRiYjIzYWM0ZmE3N2I2NjY3YWQxOTk2YmE3NzhhYWViMGQ3YTZjCkF1dGhv
cjogSG9uZ2xpYW5nIFlhbmcgPGhvbmdsaWFuZy55YW5nQGNpeHRlY2guY29tPgoKZHQtYmluZGlu
Z3M6IHBoeTogQWRkIENJWCBTa3kxIFVTQjMgUEhZCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBEZXZp
Y2UgVHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhlIENJWCBTa3kxIFVTQjMKU3VwZXJTcGVlZCBQ
SFkuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L2NpeCxza3kxLXVzYjMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L2NpeCxza3kxLXVzYjMtcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMDAuLjIwNTE0MGJmODRlN2MKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9jaXgsc2t5MS11c2IzLXBoeS55
YW1sCj4gQEAgLTAsMCArMSw3OCBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9jaXgsc2t5MS11c2IzLXBoeS55YW1sIwo+
ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMK
PiArCj4gK3RpdGxlOiBDSVggU2t5MSBVU0IzIFBIWQo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAg
LSBIb25nbGlhbmcgWWFuZyA8aG9uZ2xpYW5nLnlhbmdAY2l4dGVjaC5jb20+Cj4gKwo+ICtkZXNj
cmlwdGlvbjogfAo+ICsgIFRoZSBDSVggU2t5MSBVU0IzIFBIWSBwcm92aWRlcyB0aGUgU3VwZXJT
cGVlZCBsYW5lcyBvZiB0aGUgVVNCMyBUeXBlLUEKPiArICBwb3J0cyBvZiB0aGUgU29DLgo+ICsK
PiArICBCb3RoIGxhbmVzIGFyZSBwcm9ncmFtbWVkIHRocm91Z2ggb25lIHJlZ2lzdGVyIGJsb2Nr
IGFuZCBzaGFyZSB0aGUKPiArICBzYW1lIGNsb2NrcyBhbmQgcmVzZXRzLCBzbyB0aGUgbm9kZSBp
cyBhIHNpbmdsZSBQSFkgcHJvdmlkZXIgd2l0aAo+ICsgICNwaHktY2VsbHMgPSA8MD4gdGhhdCBh
bGwgY29uc3VtZXJzIHJlZmVyZW5jZS4gVGhlIGRyaXZlciByZWZlcmVuY2UKPiArICBjb3VudHMg
cGh5X2luaXQoKSBhbmQgcGh5X2V4aXQoKSwgc28gdGhlIGJsb2NrIGlzIHNldCB1cCBvbmNlIGZv
ciBhbGwKPiArICBpdHMgY29uc3VtZXJzLgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRp
YmxlOgo+ICsgICAgY29uc3Q6IGNpeCxza3kxLXVzYjMtcGh5Cj4gKwo+ICsgIHJlZzoKPiArICAg
IG1heEl0ZW1zOiAxCj4gKwo+ICsgICIjcGh5LWNlbGxzIjoKPiArICAgIGNvbnN0OiAwCgpbU2V2
ZXJpdHk6IExvd10KQXMgcmVwb3J0ZWQgYnkgS3J6eXN6dG9mIEtvemxvd3NraSBvbiB2NiBbMV0s
IHNob3VsZCAjcGh5LWNlbGxzIGJlIDEgc28KdGhhdCBlYWNoIFVTQjMgY29udHJvbGxlciBjb25z
dW1lciBub2RlIGNhbiBzcGVjaWZ5IHdoaWNoIG9mIHRoZSB0d28gUEhZCmxhbmVzIGl0IGlzIHdp
cmVkIHRvPwoKVGhlIGhhcmR3YXJlIGJsb2NrIGNvbnRhaW5zIHR3byBpbmRlcGVuZGVudCBTdXBl
clNwZWVkIGxhbmVzIHdpdGggc2VwYXJhdGUKcGVyLWxhbmUgcmVnaXN0ZXIgc2V0cyBhbmQgbGFu
ZS1kaXNhYmxlIGNvbnRyb2xzIHNlcnZpbmcgdHdvIGRpc3RpbmN0IFVTQjMKY29udHJvbGxlcnMu
IENvbnN0cmFpbmluZyAjcGh5LWNlbGxzIHRvIDAgb21pdHMgd2hpY2ggY29udHJvbGxlciBjb25u
ZWN0cwp0byB3aGljaCBsYW5lIGZyb20gdGhlIERldmljZSBUcmVlIEFCSSwgcHJldmVudGluZyBw
ZXItbGFuZSBjb250cm9sLApwb3dlciBtYW5hZ2VtZW50LCBvciB0dW5pbmcgd2l0aG91dCBicmVh
a2luZyB0aGUgYmluZGluZy4KCkluIGFkZGl0aW9uLCB0aGUgZGVzY3JpcHRpb24ganVzdGlmaWVz
ICNwaHktY2VsbHMgPSA8MD4gYnkgY2l0aW5nIExpbnV4CmRyaXZlciByZWZlcmVuY2UgY291bnRp
bmcgb2YgcGh5X2luaXQoKSBhbmQgcGh5X2V4aXQoKSwgd2hlcmVhcyBiaW5kaW5ncwpzaG91bGQg
ZGVzY3JpYmUgdGhlIGhhcmR3YXJlIHJhdGhlciB0aGFuIGRyaXZlciBpbXBsZW1lbnRhdGlvbiBk
ZXRhaWxzLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjExMDUta2luZC1tYWNh
cXVlLW9mLWVuaGFuY2VtZW50LWVlMDM2NUBxdW9sbAoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExMTAzMDkzNy4yOTU0NjQ2LTEt
aG9uZ2xpYW5nLnlhbmdAY2l4dGVjaC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
