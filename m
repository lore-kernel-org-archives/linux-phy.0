Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCE4606A886
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DOOrktQK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=GLPBlqfd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NbAUOE4GsJq67GeqcoAe2aQsQDLZNk67Jqm+hSNUh0w=; b=DOOrktQKHP6ixMC9TgramSLxt7
	i8nffND/gbA+VRbDk9cVC2R5NAYnSY+k1lJEV21pUmOndvqKwMRkYP4owS91MozoX6fnpfs2peDyw
	0nU1YZR0HV4gdK9/kJ1gVjoVEqDAqw42zLxZLMZ69Ld3Jj7umd7ZBKXnwQgQc4moVJ4Fqq50J8/la
	0i+GfRfVtLftZ2FApnB0nO/B8oRvUVOyuq9l37O49x6pdAMHGqEaaPS4mTmCqAQ0Dd2R9wA8SgQvN
	vO+0zEToxOjgyVqRQrN/plOJukTFFJ4kwae021X9ZjM2DpU1uqZFmGZsjus1PYrFwSrL6rdpRe3xM
	PRU1U/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRkIT-0000000BjoL-2BC2;
	Fri, 13 Nov 2026 05:58:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRkIS-0000000Bjnr-1iGK
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:58:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 83F3E60232;
	Fri, 13 Nov 2026 05:57:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B88DF1F000C5;
	Fri, 13 Nov 2026 05:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794549479;
	bh=7TFBvxJfw2BulY8oeHSN+/KEJ4bz66fs7mTRvIFpvC8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GLPBlqfd72xsuNhGbYBBBy3pyWOASf9KDAcQ2DGeb8jDsATFA01CnkitMul4q3EHT
	 EZzhaqRByl7FFi0+wN9Dw3Fu7mocXEoKnBWDYg0TZ8r7Jp0c7dBfgilffJe7MKX/xQ
	 v0fmzhTkIdi2joPNWQscScOStcMEIJQc8g636Qn8qAL1gddbN4g2oa/pNDufBm4MDd
	 v45O5/PlxuA5HLfTyBtn8Y7kx4DZb93LroadkS+Cdu55kIfqGhTFrhjfZ09DszU5yq
	 fYXomGP/lbfPLldwgupqsf8Qr7gblqoMe4agA6CT4X+Cw4UqeEm85l4On4+Dy7tA5x
	 pqss1iiGssIAw==
Message-ID: <sashiko-outbox-212261@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v25 12/15] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261112-kaanapali-camss-v25-12-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
 <20261112-kaanapali-camss-v25-12-1d709f57f370@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 05:57:58 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtIaWdoXSBhcm02NDogZHRzOiBxY29t
OiBrYWFuYXBhbGk6IGNzaXBoeV9teGNfb3BwX3RhYmxlIHVzZXMgaW52YWxpZAogIDMwMCBNSHog
T1BQCi0gW0xvd10gYXJtNjQ6IGR0czogcWNvbToga2FhbmFwYWxpOiB1bnVzZWQgcGh5LmggaW5j
bHVkZSBhbmQKICBvcHAtdGFibGUtbXhjIG9yZGVyCi0tCgpjb21taXQgYmVmYjQzM2Q1MDFiNTg3
OTkwMzA2ZjFmYmM4NzQ1NTI0MTVkNjM4ZApBdXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5n
Lm1hQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBrYWFuYXBhbGk6IEFkZCBD
QU1TUyBhbmQgQ1NJUEhZIGJsb2NrIGRlZmluaXRpb25zCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBD
QU1TUywgQ1NJUEhZMC4uNSwgYW5kIENTSVBIWSBPUFAgdGFibGUgZGV2aWNlIHRyZWUgbm9kZXMK
Zm9yIHRoZSBRdWFsY29tbSBLYWFuYXBhbGkgU29DLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L2thYW5hcGFsaS5kdHNpCj4gaW5kZXggOWYwNGE1YWQ3NWYyMS4uMjM0MDY2OTgzNzBmYiAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPiBAQCAtMjAsNiArMjAs
NyBAQAo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJjb25uZWN0L3Fjb20sa2FhbmFwYWxp
LXJwbWguaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2Fy
bS1naWMuaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL21haWxib3gvcWNvbS1pcGNjLmg+Cj4g
KyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5Lmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9waHkvcGh5LXFjb20tcW1wLmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9xY29t
LXJwbXBkLmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZWd1bGF0b3IvcWNvbSxycG1oLXJl
Z3VsYXRvci5oPgoKWyAuLi4gXQoKPiBAQCAtNjU2Niw2ICs2OTQzLDI4IEBAIHBkcF90eDogc2Nw
LXNyYW0tc2VjdGlvbkAxMDAgewo+ICAJCX07Cj4gIAl9Owo+ICAKPiArCWNzaXBoeV9teGNfb3Bw
X3RhYmxlOiBvcHAtdGFibGUtbXhjIHsKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVn
LCBidXQgZHQtYmluZGluZ3MvcGh5L3BoeS5oIGlzIG5vdCB1c2VkIGluIHRoaXMgZmlsZSwgYW5k
Cm9wcC10YWJsZS1teGMgaXMgcGxhY2VkIGFmdGVyIHNvY0AwIGluc3RlYWQgb2YgaW4gYWxwaGFi
ZXRpY2FsIG9yZGVyIGJ5IG5vZGUKbmFtZSBiZXR3ZWVuIG1lbW9yeUBhMDAwMDAwMCBhbmQgcG11
LgoKPiArCQljb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+ICsKPiArCQlvcHAt
MzAwMDAwMDAwIHsKPiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAwMDA+Owo+ICsJCQly
ZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+LAo+ICsJCQkJCTwmcnBtaHBk
X29wcF9sb3dfc3ZzX2QxPjsKPiArCQl9OwoKW1NldmVyaXR5OiBIaWdoXQpTaG91bGQgdGhpcyBs
b3dlc3QgT1BQIGluIGNzaXBoeV9teGNfb3BwX3RhYmxlIGJlIDI2NjY2NjY2NyBIeiBpbnN0ZWFk
IG9mCjMwMDAwMDAwMCBIej8KClRoZSBDU0lQSFkgY29yZSBjbG9ja3MgKENBTV9DQ19DU0lQSFkw
X0NMSy4uQ0FNX0NDX0NTSVBIWTVfQ0xLKSBwYXJlbnQgdG8KY2FtX2NjX2NwaHlfcnhfY2xrX3Ny
Yywgd2hpY2ggdXNlcyBjbGtfcmNnMl9zaGFyZWRfb3BzIChjZWlsaW5nIHJhdGUgbG9va3VwKQph
bmQgb25seSBzdXBwb3J0cyAyNjYuNjcgTUh6LCA0MDAgTUh6LCBhbmQgNDgwIE1IejoKCmRyaXZl
cnMvY2xrL3Fjb20vY2FtY2Mta2FhbmFwYWxpLmM6CnN0YXRpYyBjb25zdCBzdHJ1Y3QgZnJlcV90
YmwgZnRibF9jYW1fY2NfY3BoeV9yeF9jbGtfc3JjW10gPSB7CglGKDI2NjY2NjY2NywgUF9DQU1f
Q0NfUExMMF9PVVRfTUFJTiwgNC41LCAwLCAwKSwKCUYoNDAwMDAwMDAwLCBQX0NBTV9DQ19QTEww
X09VVF9NQUlOLCAzLCAwLCAwKSwKCUYoNDgwMDAwMDAwLCBQX0NBTV9DQ19QTEwwX09VVF9NQUlO
LCAyLjUsIDAsIDApLAoJeyB9Cn07CgpXaGVuIGEgc2Vuc29yIHN0cmVhbXMgd2l0aCBsaW5rX2Zy
ZXEgLyA0IDw9IDMwMCBNSHosCnBoeV9xY29tX21pcGlfY3NpMl9zZXRfY2xvY2tfcmF0ZXMoKSBz
ZWxlY3RzIG9wcC0zMDAwMDAwMDAsIHZvdGVzIHRoZSBNTUNYIGFuZApNWEMgcG93ZXIgZG9tYWlu
cyB0byBycG1ocGRfb3BwX2xvd19zdnNfZDEsIGFuZCBjYWxscyBkZXZfcG1fb3BwX3NldF9yYXRl
KCkKZm9yIDMwMCBNSHouICBCZWNhdXNlIDMwMCBNSHogZXhjZWVkcyAyNjY2NjY2NjcgSHosIHRo
ZSBSQ0cgcm91bmRzIHRoZSBDU0lQSFkKY29yZSBjbG9jayB1cCB0byA0MDAgTUh6IHdoaWxlIGxl
YXZpbmcgTU1DWCBhbmQgTVhDIHVuZGVyLXZvbHRlZCBhdApycG1ocGRfb3BwX2xvd19zdnNfZDEg
aW5zdGVhZCBvZiBycG1ocGRfb3BwX2xvd19zdnMsIGFuZCB0aGUgMjY2LjY3IE1IeiByYXRlCmNh
biBuZXZlciBiZSBzZWxlY3RlZC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMTIta2FhbmFwYWxpLWNhbXNzLXYyNS0wLTFkNzA5
ZjU3ZjM3MEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
