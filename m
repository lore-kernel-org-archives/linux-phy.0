Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45C9FC44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 07:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0phg5jjP6XzNVBhFWuCWQXfWqql7ZNgD6u2PZHFiLPM=; b=D/0hs2EQCT7GzP
	0u+xKsCUJT3giHATp8zdcPlLmcrzyCmjM91SLj0sETe8oimiciE+wQysi5uDl10DR4VdOB8gl6RT5
	FLzQ0sxfeXx33ehy4q8v5j0fZweuwn29PKtSlzNAywrgM5JQhxxtk9N0i3aWjYj8iijsEL2avk0XM
	ZUwCfSm/AddD3Kzd/KUnUMQVetJS21h3iOD7yIKyhbZVY9NNZU5gOxp2Q3vtTqEEmmCCqUQdwUp7b
	WVFc5Y5/7xna8b6hjhFMRW6bbc31Y3biUSsf2BGUMb5rAEXi/Gz8meYqhKfpre4CcTKVEBOsK1QAj
	PqqkNkwf9diP2kgLgeug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtsG-0000000E0TV-3ZtH;
	Wed, 15 Jul 2026 07:17:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtsF-0000000E0T9-2tN4
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 07:17:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2650C6136E;
	Wed, 15 Jul 2026 07:17:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BFDD1F00A3A;
	Wed, 15 Jul 2026 07:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784099862;
	bh=hFhJs0y5X0H6FtuJTRBdyVP4BWXv3CWXssiSLcCfi8A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gjXoaiLaekWbr6Xo61Y/NJkra4Za30CL7WTXJ1m0IhxpWkbwI4O50XJn3YQlAkRRP
	 aZLKK40QDOowiWLo6w13eUuAGuEV5PfSLCrPGZp7puXpiBH/axJdLMut5sB8Z3PqA/
	 /pXU0/+VQJveLvkpHHtM34xAe/09l5tCnBuLUY8rBGyoSjd00HDNsTp2BFEKRAlEnN
	 v8dV7mdQHmITW8+C9i+cpWplbh9T5aLYP+HAjYfD4npHL1DD9TkLrRMzO5ZOilmKZe
	 9KBbyh8Q+Qg1wEgZxptDEgL7XDlse20ibCFEgcnsROnZEAR0yV/qQcIDv5KRhKxxkB
	 mRUbXhWw/5GYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: qmp-combo: Add SM8475 support
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260715-sm8475-bup-usbss-v2-3-2d8def39b190@proton.me>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
 <20260715-sm8475-bup-usbss-v2-3-2d8def39b190@proton.me>
Date: Wed, 15 Jul 2026 07:17:42 +0000
Message-Id: <20260715071742.6BFDD1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBgLmNh
bGlicmF0ZV9kcF9waHlgIGNhbGxiYWNrIGluIGBzbTg0NzVfdXNiM2RwcGh5X2NmZ2AuCi0tCgot
LS0gUGF0Y2ggWzNdOiBbUEFUQ0ggdjIgMy8zXSBwaHk6IHFjb206IHFtcC1jb21ibzogQWRkIFNN
ODQ3NSBzdXBwb3J0IC0tLQpjb21taXQgYTBhNTgyNDYyZGIyMzM2NmZkMzI1Njg5ZTM5ZjRiZjE3
MmQyNzBjYQpBdXRob3I6IEVzdGViYW4gVXJydXRpYSA8ZXN0ZXV3dUBwcm90b24ubWU+CnBoeTog
cWNvbTogcW1wLWNvbWJvOiBBZGQgU004NDc1IHN1cHBvcnQKClRoaXMgY29tbWl0IGFkZHMgc3Vw
cG9ydCBmb3IgdGhlIFNNODQ3NSBTb0MgdG8gdGhlIFFNUCBjb21ibyBQSFkgZHJpdmVyLAppbmNs
dWRpbmcgUlggYW5kIFBDUyBVU0IgdGFibGVzLCBhbmQgbmV3IHYxIFBMTCB0YWJsZXMuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggNjk5YzcxODc2
OTEyYS4uMTFhNjdjZWNmMjlkNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtY29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1jb21iby5jCgpbIC4uLiBdCgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2Zn
IHNtODQ3NV91c2IzZHBwaHlfY2ZnID0gewo+ICsJLm9mZnNldHMJCT0gJnFtcF9jb21ib19vZmZz
ZXRzX3YzLAoKWyAuLi4gXQoKPiArCS5kcF9hdXhfaW5pdAkJPSBxbXBfdjRfZHBfYXV4X2luaXQs
Cj4gKwkuY29uZmlndXJlX2RwX3R4CT0gcW1wX3Y0X2NvbmZpZ3VyZV9kcF90eCwKPiArCS5jb25m
aWd1cmVfZHBfY2xvY2tzCT0gcW1wX3YzX2NvbmZpZ3VyZV9kcF9jbG9ja3MsCj4gKwkuY29uZmln
dXJlX2RwX3BoeQk9IHFtcF92NF9jb25maWd1cmVfZHBfcGh5LAo+ICsKPiArCS5yZWdzCQkJPSBx
bXBfdjZfdXNiM3BoeV9yZWdzX2xheW91dCwKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMg
Y29uZmlndXJhdGlvbiBpbnRlbnRpb25hbGx5IG9taXQgdGhlIC5jYWxpYnJhdGVfZHBfcGh5IGNh
bGxiYWNrPwoKT3RoZXIgRFAgY29uZmlndXJhdGlvbnMgaW4gdGhpcyBkcml2ZXIsIHN1Y2ggYXMg
c204NTUwX3VzYjNkcHBoeV9jZmcsIGFzc2lnbgp0aGlzIHRvIHFtcF92NF9jYWxpYnJhdGVfZHBf
cGh5LiBXaXRob3V0IGl0LCB3aGVuIERQIEFsdCBNb2RlIGxpbmsgdHJhaW5pbmcKZmFpbHMsIHFt
cF9jb21ib19kcF9jYWxpYnJhdGUoKSB3aWxsIHNlZSBhIE5VTEwgY2FsbGJhY2sgYW5kIHNpbGVu
dGx5IHJldHVybiAwLgoKVGhpcyBza2lwcyB0aGUgRFAgQVVYIFBIWSBjYWxpYnJhdGlvbiBwcm9j
ZXNzIHdoaWNoIGN5Y2xlcyB0aHJvdWdoIGRpZmZlcmVudApBVVggY29uZmlndXJhdGlvbiBzZXR0
aW5ncy4gQ291bGQgdGhpcyBjYXVzZSBEaXNwbGF5UG9ydCBBbHQgTW9kZSB0byBmYWlsCm5lZ290
aWF0aW5nIHdpdGggc29tZSBtb25pdG9ycyBvciBjYWJsZXM/Cgo+ICsJLnJlc2V0X2xpc3QJCT0g
bXNtODk5Nl91c2IzcGh5X3Jlc2V0X2wsCj4gKwkubnVtX3Jlc2V0cwkJPSBBUlJBWV9TSVpFKG1z
bTg5OTZfdXNiM3BoeV9yZXNldF9sKSwKPiArCS52cmVnX2xpc3QJCT0gcW1wX3BoeV92cmVnX2ws
Cj4gKwkubnVtX3ZyZWdzCQk9IEFSUkFZX1NJWkUocW1wX3BoeV92cmVnX2wpLAo+ICt9OwoKWyAu
Li4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDcxNS1zbTg0NzUtYnVwLXVzYnNzLXYyLTAtMmQ4ZGVmMzliMTkwQHByb3Rvbi5t
ZT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
