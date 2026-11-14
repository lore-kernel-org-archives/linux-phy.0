Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9CB606A323
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 08:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T4mwQ2Xr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UDtdXLtw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Eah7UXvDu9gq9yPMU73jOoMWy1RGuUKO67/5zWBwcdk=; b=T4mwQ2XrU4SgU/nlM4oQ9x0ZNt
	B/6GaBqsyuGauJtQKhB7l8DjOyh00DkNmdyOmr7hEKtejsLbikApCEcdvTaWUed1VqjqIB7eFMb8W
	eqhT0EW1zEMb21+E3ycVa6F+1gpTJLyM4jpnVNtFTfYNYdlZgaoympS51r4na9V2ENxwV1KJRC8hB
	v8MabzSBEVTv7++x0mXvSUl/x8VJlEMqR1OCPsh5lg1zVMa7/XpzxvAzDJKNYSR1GKV7/0gePo2ms
	nMudYghRbvfQEaj0FZtFOK6Tz9L4fwFBONRCeYrdExjGGSY4uk0ifoQdcMdOs7agHxgu3+4wmzZBP
	y1jb3kFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS9Xg-0000000FcO0-0fYP;
	Sat, 14 Nov 2026 08:55:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS9Xe-0000000FcNt-0ZSH
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 08:55:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1A1F660018;
	Sat, 14 Nov 2026 08:55:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DDE41F000C4;
	Sat, 14 Nov 2026 08:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794646520;
	bh=Q1/P+bPtgD2V3RPgoRQp6AqrV4+asKkLVxsg1b8gEOY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UDtdXLtw0N+DDEVEP42NqeVEhmwfxEqfkHhnH8bweNBCQ2wb79zpVl06x4z3xXWYC
	 eS22PMS755e6MHEtm4cgbOuQjZnF9FK3RPCxI6gD0hkrMdIKz/FhhTIGr/023LDqDq
	 /z5Ej9tdSg6TVH1fX0HgvwFPQj65InHIBSLYqMYN6S/ChVoNfeSclCFRAPyHw/GEmz
	 FP4MQuSxMO380MWLP8hBKugDul9ZtjpsLWd+lprKXYBy5SBQvRE7sKjXbuFeOzJ8zR
	 GLmOFG+syX80jHvVzLQDvizdu9L6TzKuLwutPL/LPA2amQkm3XehVgWCWkoqPb8+Z4
	 4d2W022E7kxRA==
Message-ID: <sashiko-outbox-214312@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/4] arm64: dts: rockchip: rk356x: Add eDP controller
 and phy nodes
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114083339.600986-4-damon.ding@rock-chips.com>
References: <20261114083339.600986-1-damon.ding@rock-chips.com>
 <20261114083339.600986-4-damon.ding@rock-chips.com>
Date: Sat, 14 Nov 2026 08:55:19 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiByazM1NjgtZWRwIGxhY2tzIGJpbmRpbmcvZHJpdmVyIG1hdGNoCiAgYW5kIHJvY2tj
aGlwLGdyZgotIFtMb3ddIGFybTY0OiBkdHM6IHJvY2tjaGlwOiByazM1Nng6IGR1cGxpY2F0ZSBQ
Q0xLX0VEUFBIWV9HUkYgY2xvY2sgaW4KICBlZHBfcGh5X2dyZgotLQoKY29tbWl0IGY3YTlhZTQ3
ZGQ5MzQ4OGQ1YTg1YjY2M2FiNTg0NjE4NmU4NTFjYmUKQXV0aG9yOiBEYW1vbiBEaW5nIDxkYW1v
bi5kaW5nQHJvY2stY2hpcHMuY29tPgoKYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2eDogQWRk
IGVEUCBjb250cm9sbGVyIGFuZCBwaHkgbm9kZXMKClRoaXMgY29tbWl0IGFkZHMgdGhlIGVEUCBQ
SFkgR1JGIHN5c2NvbiwgY2hpbGQgZURQIFBIWSwgYW5kIGVEUApjb250cm9sbGVyIGRldmljZSB0
cmVlIG5vZGVzIHRvIHJrMzU2eC1iYXNlLmR0c2kgZm9yIFJLMzU2NiBhbmQgUkszNTY4LgoKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpCj4gaW5kZXgg
MWE0NTYyZGYyMGVlNS4uZTNmMzcwY2FkNWQ1MSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiBAQCAtNDAyLDYgKzQwMiwyNCBAQCB1c2Iy
cGh5MV9ncmY6IHN5c2NvbkBmZGNhODAwMCB7Cj4gIAkJcmVnID0gPDB4MCAweGZkY2E4MDAwIDB4
MCAweDgwMDA+Owo+ICAJfTsKPiAgCj4gKwllZHBfcGh5X2dyZjogc3lzY29uQGZkY2IwMDAwIHsK
PiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1lZHAtcGh5LWdyZiIsICJzeXNjb24i
LCAic2ltcGxlLW1mZCI7Cj4gKwkJcmVnID0gPDB4MCAweGZkY2IwMDAwIDB4MCAweDgwMDA+Owo+
ICsJCWNsb2NrcyA9IDwmY3J1IFBDTEtfRURQUEhZX0dSRj47Cj4gKwkJcmFuZ2VzID0gPDB4MCAw
eDAgMHhmZGNiMDAwMCAweDEwMD47Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJI3Np
emUtY2VsbHMgPSA8MT47Cj4gKwo+ICsJCWVkcF9waHk6IHBoeUAwIHsKPiArCQkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazM1NjgtZWRwLXBoeSI7Cj4gKwkJCXJlZyA9IDwweDAgMHgxMDA+Owo+
ICsJCQljbG9ja3MgPSA8JnBtdWNydSBYSU5fT1NDMF9FRFBQSFlfRz4sIDwmY3J1IFBDTEtfRURQ
UEhZX0dSRj47Cj4gKwkJCWNsb2NrLW5hbWVzID0gInJlZiIsICJhcGIiOwoKW1NldmVyaXR5OiBM
b3ddClNob3VsZCBjbG9ja3MgPSA8JmNydSBQQ0xLX0VEUFBIWV9HUkY+IGJlIHJlbW92ZWQgZnJv
bSB0aGUgcGFyZW50CmVkcF9waHlfZ3JmIG5vZGUgKGFuZCBmcm9tIHJvY2tjaGlwLHJrMzU2OC1l
ZHAtcGh5LWdyZi55YW1sKT8KClRoZSBjaGFuZ2Vsb2cgc3RhdGVzIHRoYXQgUENMS19FRFBQSFlf
R1JGIHdhcyBtb3ZlZCBmcm9tIHRoZSBwYXJlbnQKc3lzY29uIG5vZGUgdG8gdGhlIGNoaWxkIFBI
WSBub2RlLCBhbmQgcm9ja2NoaXBfZWRwX3BoeV9wcm9iZSgpIG1hcHMgaXRzCm93biBNTUlPIHdp
bmRvdyBhbmQgZW5hYmxlcyB0aGUgImFwYiIgY2xvY2sgZGlyZWN0bHkgb24gZWRwX3BoeSB3aXRo
b3V0CnVzaW5nIHRoZSBwYXJlbnQgc3lzY29uLgoKWyAuLi4gXQoKPiBAQCAtODc4LDYgKzg5Niwz
MyBAQCBoZG1pX291dDogcG9ydEAxIHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwllZHA6IGVkcEBm
ZTBjMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtZWRwIjsKPiArCQly
ZWcgPSA8MHgwIDB4ZmUwYzAwMDAgMHgwIDB4MTAwMDA+Owo+ICsJCWNsb2NrcyA9IDwmcG11Y3J1
IFhJTl9PU0MwX0VEUFBIWV9HPiwgPCZjcnUgUENMS19FRFBfQ1RSTD4sIDwmY3J1IEhDTEtfVk8+
Owo+ICsJCWNsb2NrLW5hbWVzID0gImRwIiwgInBjbGsiLCAiaGNsayI7Cj4gKwkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDE4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCXBoeXMgPSA8JmVkcF9w
aHk+Owo+ICsJCXBoeS1uYW1lcyA9ICJkcCI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIg
UkszNTY4X1BEX1ZPPjsKPiArCQlyZXNldHMgPSA8JmNydSBTUlNUX0VEUF8yNE0+LCA8JmNydSBT
UlNUX1BfRURQX0NUUkw+Owo+ICsJCXJlc2V0LW5hbWVzID0gImRwIiwgImFwYiI7Cj4gKwkJc3Rh
dHVzID0gImRpc2FibGVkIjsKCltTZXZlcml0eTogTWVkaXVtXQpDYW4gdGhlIGVkcCBub2RlIHBh
c3MgZHRic19jaGVjayBvciBwcm9iZSB3aGVuIGVuYWJsZWQgb24gYSBib2FyZD8KCiJyb2NrY2hp
cCxyazM1NjgtZWRwIiBpcyBub3QgZG9jdW1lbnRlZCBpbgpEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxhbmFsb2dpeC1kcC55YW1sCm9y
IG1hdGNoZWQgYnkgcm9ja2NoaXBfZHBfZHRfaWRzW10gaW4KZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMuICBJbiBhZGRpdGlvbiwgdGhlIG5vZGUKb21pdHMg
dGhlIHJlcXVpcmVkIHJvY2tjaGlwLGdyZiBwcm9wZXJ0eSwgd2hpY2ggY2F1c2VzCnJvY2tjaGlw
X2RwX29mX3Byb2JlKCkgLT4gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShucCwKInJv
Y2tjaGlwLGdyZiIpIHRvIGZhaWwgd2l0aCAtRU5PREVWLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExNDA4MzMzOS42MDA5ODYt
MS1kYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
