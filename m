Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFB8606A32C
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 07:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IaSNVzm0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Gd2RaALu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KDjUG2N72lj/+gl+EaNPsBKr50y5ScfiEGfzdpQFJ7o=; b=IaSNVzm0JWd6V9eTSb6NtqnTuj
	R7tj0q6Ixk7gz0mnWbegnFq2WXmzC0V4WMSzWBEWtaErYl/GG8QpbdxfQixLmrvxgwp4CceaX6yr7
	DNRgSU+Y8QkGbFr4nQp7G4FhTNdVSNDSu5NFywqWZhG49q9TRATTh1FGUAPB1pl14WNNuLcXILHX8
	U1JblbyBOlT+AqBYFzhWV5kxbxHXEJdalX2BmslmyuZHBn11zizPfIid27eo6bpuEUJNWM0rMgoJ/
	VdWVVjyGjdZjJ88b8Dk5jIN+V7/B1RXB1oJZAFy/EvA96DIXlT8Zwlr9KA6SaU9HpCb1sNgPZo/1e
	8JHuIP0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfmr-0000000GtD0-0kBl;
	Sat, 21 Nov 2026 07:45:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfmp-0000000GtCu-2q0w
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 07:45:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5744C4117E;
	Sat, 21 Nov 2026 07:45:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C94FD1F000C0;
	Sat, 21 Nov 2026 07:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795247127;
	bh=g7uVbYqCYWmetjl6f9vcUu3yNhR9LD4vfFPastZ9L80=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gd2RaALu/YwbhvRDd0Z4V8W6BDTN9LuaxkRmnYQ3o29ncAnI2Yy07hmk6WoEs5M8C
	 0uaGgL6Dpq9MBTHFE+ELK8/L3ih2cjUaNW5g7xsHPgRUEJDqDW2UQrCx9JmlcWU1s0
	 xIzR5pD30TG84Ry+nSipDMeqlFRrT2ovl41W3X39S4wTH8PcZS6kkCgiIgASvtEu3m
	 MeKxmjon2kT9EHKitQHsJOv3rVPuW2neXaWWNX0zhhKHVuMOuGsxaYng0im3etEtny
	 1kugrSda3VgMibAhhXnKbUueroRVF76HoK1T9SPMBSZc4mFaLbhjmQevzCbyQQTCXh
	 jcVnZHUezUDCQ==
Message-ID: <sashiko-outbox-226793@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 03/17] dt-bindings: display: spacemit: add K3
 Innosilicon DP/eDP controller
To: "Cody Kang" <codykang.hk@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261121-k3-display-v3-3-ec419e8e96b8@gmail.com>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <20261121-k3-display-v3-3-ec419e8e96b8@gmail.com>
Date: Sat, 21 Nov 2026 07:45:26 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IGRpc3Bs
YXk6IHNwYWNlbWl0OiBpbnRlcnJ1cHRzIGxpc3RlZCBiZWZvcmUgY2xvY2tzCiAgaW4gazMtaW5u
by1kcAotLQoKY29tbWl0IGVjMTIzZGRkMGRjYjg2ZDIxNjhkMDdlZjA5NTRmZmFlMWRkOWQ5YWEK
QXV0aG9yOiBDb2R5IEthbmcgPGNvZHlrYW5nQHZzaXQuYWk+CgpkdC1iaW5kaW5nczogZGlzcGxh
eTogc3BhY2VtaXQ6IGFkZCBLMyBJbm5vc2lsaWNvbiBEUC9lRFAgY29udHJvbGxlcgoKVGhpcyBj
b21taXQgYWRkcyB0aGUgRGV2aWNlIFRyZWUgYmluZGluZyBzY2hlbWEgZm9yIHRoZSBTcGFjZW1p
VCBLMwpJbm5vc2lsaWNvbiBEaXNwbGF5UG9ydCBhbmQgZW1iZWRkZWQgRGlzcGxheVBvcnQgY29u
dHJvbGxlci4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L3NwYWNlbWl0L3NwYWNlbWl0LGszLWlubm8tZHAueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3NwYWNlbWl0L3NwYWNlbWl0LGszLWlubm8t
ZHAueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uNDkx
ZDI1NzMwZGE5Zgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9zcGFjZW1pdC9zcGFjZW1pdCxrMy1pbm5vLWRwLnlhbWwKPiBA
QCAtMCwwICsxLDE0MSBAQAoKWyAuLi4gXQoKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxl
Ogo+ICsgICAgY29uc3Q6IHNwYWNlbWl0LGszLWlubm8tZHAKPiArCj4gKyAgcmVnOgo+ICsgICAg
bWF4SXRlbXM6IDEKPiArCj4gKyAgaW50ZXJydXB0czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKyAg
ICBkZXNjcmlwdGlvbjogTGluayBhbmQgaG90LXBsdWcgZXZlbnRzLgo+ICsKPiArICBjbG9ja3M6
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlvbjogUGl4ZWwgY2xvY2sgZm9yIHRo
ZSBjb250cm9sbGVyLgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgUGl4ZWwg
Y2xvY2sgZ2VuZXJhdGVkIGJ5IHRoZSBEUCBQSFkgUExMOyB0aGUgcGl4ZWwgY2xvY2sgYWJvdmUg
aXMKPiArICAgICAgICAgIHBhcmVudGVkIG9udG8gaXQgaW4gdXNlLgo+ICsKPiArICBjbG9jay1u
YW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBweGNsawo+ICsgICAgICAtIGNv
bnN0OiBwbGwKClsgLi4uIF0KCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0g
cmVnCj4gKyAgLSBpbnRlcnJ1cHRzCj4gKyAgLSBjbG9ja3MKPiArICAtIGNsb2NrLW5hbWVzCgpb
IC4uLiBdCgo+ICsgICAgICAgIGVkcEBjYWM4NDAwMCB7Cj4gKyAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAic3BhY2VtaXQsazMtaW5uby1kcCI7Cj4gKyAgICAgICAgICAgIHJlZyA9IDwweDAgMHhj
YWM4NDAwMCAweDAgMHg0MDAwPjsKPiArICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwxMzIgSVJR
X1RZUEVfTEVWRUxfSElHSD47Cj4gKyAgICAgICAgICAgIGNsb2NrcyA9IDwmc3lzY29uX2FwbXUg
Q0xLX0FQTVVfRURQMF9QWENMSz4sIDwmZWRwMF9waHk+Owo+ICsgICAgICAgICAgICBjbG9jay1u
YW1lcyA9ICJweGNsayIsICJwbGwiOwoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcs
IGJ1dCBEVCBiaW5kaW5nIHNjaGVtYXMgYW5kIGV4YW1wbGUgbm9kZXMgZm9sbG93IHRoZQpjYW5v
bmljYWwgcHJvcGVydHkgb3JkZXJpbmcgd2hlcmUgY2xvY2tzIGFuZCBjbG9jay1uYW1lcyBhcHBl
YXIgYmVmb3JlCmludGVycnVwdHMuICBDb3VsZCBpbnRlcnJ1cHRzIGJlIG1vdmVkIGFmdGVyIGNs
b2NrLW5hbWVzIGluIHByb3BlcnRpZXMsCnJlcXVpcmVkLCBhbmQgdGhlIGVkcEBjYWM4NDAwMCBl
eGFtcGxlIG5vZGU/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYxMTIxLWszLWRpc3BsYXktdjMtMC1lYzQxOWU4ZTk2YjhAZ21haWwu
Y29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
