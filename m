Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7A97C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 14:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jf/TqngCX87cHdV0q694xS3dE+vcO2JEmdUoQv80eVM=; b=YG5b8rvjmKbt3X
	tr4EV7BFsGPmaCM8/1hnjCE6dvTJeGN3rab76EK0CrGDHh8sWOYou7rH33pqB3KiXdxNEuqRA5P0g
	Mb0mbBwAKo/H3Q/rrJOCUKgaUVfj9MeneN9KqvSK4iigtfLsqm3C9P2Ef+iIi9sNHYdEb0BAMZyk/
	WUSWhoSnrQU8NrU9XzpLjc68X5TJXlr9DQQ6ZxsB6VnpNVdj6jIn1/PmeVPCyb/ZR/Wn/jRo3EFot
	q86pawVDlALxH+J3nY8nMV7nM/AtyzpmlVP1C4ZO0lnmR1O4vcXNXm/HQac313GYCEVY6i8o9t5Jn
	KCEqMbXLimeI41oAsH6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wew1F-00000002Ipd-0fFu;
	Wed, 01 Jul 2026 14:34:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wew1D-00000002IpV-2FCH
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 14:34:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3EC556001D;
	Wed,  1 Jul 2026 14:34:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F101F000E9;
	Wed,  1 Jul 2026 14:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782916466;
	bh=m8Ep+WztZKrXzs6aDdcLp08aRmZN/JP7RHztmzoUg70=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XVDjVM2W+LtBln79oqh1lxaXq75t1lo3qu/Glu5hGIdHX9CkKIvyyG9ke07HqTAC+
	 s04MIqelE/9OSSasprfamkN3ApTEz9tg9m0aDueZDenypb1zItWSSmOyxgQhx3yIop
	 Ly4yYdvynGEpfSJYsiE2lT589Pk53VHgMfLD9vbh/euFmlNqs5kBNR564hRI83TKLd
	 LyV7gs5p9Wucvp+T8EMeD91hnQJ5jb4YCYTr2JymZlizpne7FB1Q/thoMAk9Q/fQRo
	 5/EW7+LrMs+uHJ23Rom4dnPxT3dW8mlxfS6jiKTmWj8IrRZEWUnEPwhdGhYcqKV8X0
	 f3ezpyZ/RdjCQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 net-next 2/2] arm64: dts: ti: Add PLL1 refclk to
 J784S4 SoC SERDES node
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260701142457.81874-3-g-praveen@ti.com>
References: <20260701142457.81874-1-g-praveen@ti.com>
 <20260701142457.81874-3-g-praveen@ti.com>
Date: Wed, 01 Jul 2026 14:34:24 +0000
Message-Id: <20260701143425.97F101F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgQ2FkZW5jZSBUb3JyZW50IFBIWSBtdWx0aWxpbmsgY29uZmlndXJhdGlvbiB3
aWxsIGZhaWwgb24gb3RoZXIgSzMgcGxhdGZvcm1zIChlLmcuLCBKNzIxUzIpIGR1ZSB0byBhIG1p
c3NpbmcgcGxsMV9yZWZjbGsgcHJvcGVydHkgaW4gaWRlbnRpY2FsIHNlcmRlcyBub2Rlcy4KLS0K
CmNvbW1pdCBjYWQyOTJlNTQ0NTc4ZGMwZmM0YjkwMGFiZDY4YjIyOWE5N2RjMTE2CkF1dGhvcjog
R29rdWwgUHJhdmVlbiA8Zy1wcmF2ZWVuQHRpLmNvbT4KCmFybTY0OiBkdHM6IHRpOiBBZGQgUExM
MSByZWZjbGsgdG8gSjc4NFM0IFNvQyBTRVJERVMgbm9kZQoKVGhpcyBjb21taXQgYWRkcyB0aGUg
UExMMSByZWZlcmVuY2UgY2xvY2sgdG8gdGhlIGNsb2NrcyBhbmQgY2xvY2stbmFtZXMKcGFyYW1l
dGVycyBvZiB0aGUgU0VSREVTIG5vZGVzIGZvciB0aGUgSjc4NFM0IGFuZCBKNzQyUzIgU29Dcy4g
VGhpcyByZXNvbHZlcwphbiBpc3N1ZSB3aGVyZSBzZXJkZXMgbXVsdGlsaW5rIGNvbmZpZ3VyYXRp
b25zIGZhaWwgd2l0aG91dCBQTEwxLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy90aS9rMy1qNzg0czQtajc0MnMyLW1haW4tY29tbW9uLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3RpL2szLWo3ODRzNC1qNzQyczItbWFpbi1jb21tb24uZHRzaQo+IGluZGV4IGMyNjM2ZTYy
NGYxOGIuLmU1MjI0YmQ3ZjUzODMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy90
aS9rMy1qNzg0czQtajc0MnMyLW1haW4tY29tbW9uLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3RpL2szLWo3ODRzNC1qNzQyczItbWFpbi1jb21tb24uZHRzaQo+IEBAIC0xMTQ5LDgg
KzExNDksOSBAQCBzZXJkZXMwOiBzZXJkZXNANTA2MDAwMCB7Cj4gIAkJCXJlc2V0cyA9IDwmc2Vy
ZGVzX3dpejAgMD47Cj4gIAkJCXJlc2V0LW5hbWVzID0gInRvcnJlbnRfcmVzZXQiOwo+ICAJCQlj
bG9ja3MgPSA8JnNlcmRlc193aXowIFRJX1dJWl9QTEwwX1JFRkNMSz4sCj4gKwkJCQkgPCZzZXJk
ZXNfd2l6MCBUSV9XSVpfUExMMV9SRUZDTEs+LAo+ICAJCQkJIDwmc2VyZGVzX3dpejAgVElfV0la
X1BIWV9FTl9SRUZDTEs+Owo+IC0JCQljbG9jay1uYW1lcyA9ICJyZWZjbGsiLCAicGh5X2VuX3Jl
ZmNsayI7Cj4gKwkJCWNsb2NrLW5hbWVzID0gInJlZmNsayIsCSJwbGwxX3JlZmNsayIsICJwaHlf
ZW5fcmVmY2xrIjsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2Vk
IGJ5IHRoaXMgcGF0Y2gsIGJ1dCBkb2VzIHRoZSBzYW1lIG11bHRpbGluawpjb25maWd1cmF0aW9u
IGZhaWx1cmUgb2NjdXIgb24gb3RoZXIgSzMgcGxhdGZvcm1zIGxpa2UgSjcyMVMyPwoKTG9va2lu
ZyBhdCBzZXJkZXMwIGluIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMXMyLW1haW4uZHRz
aSwgaXQgbGFja3MKdGhlIHBsbDFfcmVmY2xrIHByb3BlcnR5IGluIHRoZSBjbG9ja3MgYXJyYXk6
CgogICAgY2xvY2tzID0gPCZzZXJkZXNfd2l6MCBUSV9XSVpfUExMMF9SRUZDTEs+LAogICAgICAg
ICAgICAgPCZzZXJkZXNfd2l6MCBUSV9XSVpfUEhZX0VOX1JFRkNMSz47CiAgICBjbG9jay1uYW1l
cyA9ICJyZWZjbGsiLCAicGh5X2VuX3JlZmNsayI7CgpXaGVuIGEgbXVsdGlsaW5rIGNvbmZpZ3Vy
YXRpb24gaXMgcmVxdWVzdGVkIG9uIHRoZXNlIHBsYXRmb3JtcyAoZS5nLiwgUENJZSBvbgpsYW5l
IDAgYW5kIFNHTUlJIG9uIGxhbmUgMSksIHdpbGwgdGhlIHBoeS1jYWRlbmNlLXRvcnJlbnQgZHJp
dmVyIGZhaWwgdG8KZW5hYmxlIHRoZSBQTEwxIHJlZmVyZW5jZSBjbG9jaz8KCkNvdWxkIHRoaXMg
Y2F1c2UgZXNzZW50aWFsIHBlcmlwaGVyYWwgaW5pdGlhbGl6YXRpb24gdG8gZmFpbCB3aGVuIHRo
ZQpQSFkgaXMgdW5hYmxlIHRvIGxvY2sgUExMMT8KClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDExNDI0NTcuODE4
NzQtMS1nLXByYXZlZW5AdGkuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
