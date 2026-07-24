Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D88EC531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 18:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qriFXhJKmEGsHbNXSaoLjMOZrBOfZdUVzygj48dqfeA=; b=aFj+PfuocQy6Y0
	DL61iejiZBkI9xdDwd+IozZ4iXljjnlsgxnt0domwwTRUVH+uM8j1P8NrSsuh9u8DCpPLsVJUMW9c
	efG25NlWrMwFYVXpZZUt5p4/y4AnkiODVYH5aeis97eCUdtaWZDTr2bWOe4xp3b8+8q+8vsDJ66p7
	GMfiGjKYWfw4XuLp4it7LcmXQhVNCxYT2dIQZuYQ22oK55OmKOzf9VJKXok6aHJ2oic/0q+PrIyh4
	c0PyBaOmTPU3dZ80htj8RabwJM6p07wVfJ8nnYUU4UdSx2N9D9MNgtOIIqYo6pW9poPnlKVdvPkPZ
	IgOS+1PwEjRuwDqSy9Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnL2r-0000000H6Ce-3pzU;
	Fri, 24 Jul 2026 18:54:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnL2q-0000000H6CV-2ygb
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 18:54:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1AB9841310;
	Fri, 24 Jul 2026 18:54:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C4001F000E9;
	Fri, 24 Jul 2026 18:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784919290;
	bh=eb26OAfco3uffdPcqncNqeLr8DgPBJuAarHg9Y1si9Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=omMxzNTLIYq1qWGIHwhi9Eu46GXA2a/7QO5dtw3zMUo8MpaJIV62QQ23zY3kt0aMD
	 5l7c5TxdhnVN8cJpOVY57xMvhHIHQNWWFbWZHrry0kj65ZqdbyDyT/ia2Mg6Wjvg6F
	 KL30Myaa+B0LhuKy2OBIQc/3bCGl+gcgwxuyPGObKQclG6KZCgQwucRhcsOvdnWTV1
	 BfWadNYH3+QtAWJ6uP5HFTzNJbeUQvGlFS9qFqkzRluMWsqgJOJ0Slj44Ippe1H3QI
	 aBc8uCiA01DY7odJNjmEmZnJp/kXYrz8fKr479CRLGckxNALC0JDvAaqOTt4+vEucG
	 mVRboFbHa67Kg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 2/3] phy: move and rename Airoha PCIe PHY driver to
 dedicated directory
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260724184523.193661-3-ansuelsmth@gmail.com>
References: <20260724184523.193661-1-ansuelsmth@gmail.com>
 <20260724184523.193661-3-ansuelsmth@gmail.com>
Date: Fri, 24 Jul 2026 18:54:49 +0000
Message-Id: <20260724185449.8C4001F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG5ld2x5IGFkZGVk
IGRyaXZlcnMvcGh5L2Fpcm9oYS9LY29uZmlnIGFuZCBkcml2ZXJzL3BoeS9haXJvaGEvTWFrZWZp
bGUgYXJlIG5vdCBjb3ZlcmVkIGJ5IHRoZSBNQUlOVEFJTkVSUyBlbnRyeS4KLS0KCi0tLSBQYXRj
aCBbMl06IFtQQVRDSCB2MTEgMi8zXSBwaHk6IG1vdmUgYW5kIHJlbmFtZSBBaXJvaGEgUENJZSBQ
SFkgZHJpdmVyIHRvIGRlZGljYXRlZCBkaXJlY3RvcnkgLS0tCmNvbW1pdCA4M2EzYzE3MGE1ZjA4
OTRiMTY2ODIyZDM2YmY0OTc5OGQ2NWY3M2U5CkF1dGhvcjogQ2hyaXN0aWFuIE1hcmFuZ2kgPGFu
c3VlbHNtdGhAZ21haWwuY29tPgoKcGh5OiBtb3ZlIGFuZCByZW5hbWUgQWlyb2hhIFBDSWUgUEhZ
IGRyaXZlciB0byBkZWRpY2F0ZWQgZGlyZWN0b3J5CgpUaGlzIGNvbW1pdCBtb3ZlcyB0aGUgQWly
b2hhIFBDSWUgUEhZIGRyaXZlciB0byBhIGRlZGljYXRlZCBkaXJlY3RvcnkgYW5kCnJlbmFtZXMg
dGhlIGZpbGVzIHRvIHNwZWNpZmljYWxseSByZWZlcmVuY2UgdGhlIEFONzU4MSBTb0MuIEl0IGFs
c28gYWRkcyBhCm5ldyBLY29uZmlnIGFuZCBNYWtlZmlsZSB0byB0aGUgbmV3bHkgY3JlYXRlZCBk
cml2ZXJzL3BoeS9haXJvaGEvIGRpcmVjdG9yeQp0byBzdXBwb3J0IGZ1dHVyZSBkcml2ZXJzIGZv
ciBkaWZmZXJlbnQgU29Dcy4KCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5F
UlMKPiBpbmRleCBjYjc4MzZhMjdiMTc3Li5iYmZhY2E1NzIxMThjIDEwMDY0NAo+IC0tLSBhL01B
SU5UQUlORVJTCj4gKysrIGIvTUFJTlRBSU5FUlMKPiBAQCAtNzY1LDggKzc2NSw4IEBAIE06CUxv
cmVuem8gQmlhbmNvbmkgPGxvcmVuem9Aa2VybmVsLm9yZz4KPiAgTDoJbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9yIG5vbi1zdWJzY3JpYmVycykKPiAg
UzoJTWFpbnRhaW5lZAo+ICBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L2Fpcm9oYSxlbjc1ODEtcGNpZS1waHkueWFtbAo+IC1GOglkcml2ZXJzL3BoeS9waHktYWlyb2hh
LXBjaWUtcmVncy5oCj4gLUY6CWRyaXZlcnMvcGh5L3BoeS1haXJvaGEtcGNpZS5jCj4gK0Y6CWRy
aXZlcnMvcGh5L2Fpcm9oYS9waHktYW43NTgxLXBjaWUtcmVncy5oCj4gK0Y6CWRyaXZlcnMvcGh5
L2Fpcm9oYS9waHktYW43NTgxLXBjaWUuYwoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBi
dWcsIGJ1dCBzaG91bGQgdGhlIG5ld2x5IGNyZWF0ZWQgZHJpdmVycy9waHkvYWlyb2hhL0tjb25m
aWcKYW5kIGRyaXZlcnMvcGh5L2Fpcm9oYS9NYWtlZmlsZSBmaWxlcyBhbHNvIGJlIGluY2x1ZGVk
IGluIHRoaXMgZW50cnk/CgpDdXJyZW50bHksIGdldF9tYWludGFpbmVyLnBsIG1pZ2h0IG5vdCBh
dXRvbWF0aWNhbGx5IGluY2x1ZGUgdGhlIEFpcm9oYSBQQ0llClBIWSBkcml2ZXIgbWFpbnRhaW5l
cnMgZm9yIHBhdGNoZXMgbW9kaWZ5aW5nIHRob3NlIGJ1aWxkIGZpbGVzLiBDb3VsZCB0aGlzCmVu
dHJ5IGJlIHNpbXBsaWZpZWQgdG8gY292ZXIgdGhlIG5ldyBmaWxlcyBieSB1c2luZyBhIGRpcmVj
dG9yeSBtYXRjaCBsaWtlCiJGOiBkcml2ZXJzL3BoeS9haXJvaGEvIiBpbnN0ZWFkPwoKWyAuLi4g
XQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDcyNDE4NDUyMy4xOTM2NjEtMS1hbnN1ZWxzbXRoQGdtYWlsLmNvbT9wYXJ0PTIKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
