Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA00CCD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GASvO3IKJVNGX5zlyKLs+AH+VAd+zktAFs1XOMFRPL4=; b=LQ+S4eLONpXEvd
	l8ksChkfUW67R/drF9Rm6ByN4ecUDczBYKxCIDBgWVDxsFve80tWmfmYaL6QC5QoRNDXTf6Rmj2z6
	DjO6zG5LCkUiV7rlRI1RONVTPKcMPnWbbILibMVUrUvdqU36FcZqDLmUji5FK0/VzxEqll5fcTjte
	iMCQScis3Rgcm34Ry6RVqlVbIZvQTwj2eDfjb0RG6wjjbEx4haT9pqjdhS44X8orlwnrTre0ObnCX
	CyWxNFSm56DEkSpn+DQSZYpxfu8cLBWdBi7/7XN4Hb201Zo/XyK8MhwTXlJQM8bbIIB5CLnUri6Xx
	DtOXFUqxU1Hkij31q3fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT17f-0000000819e-2bzp;
	Fri, 29 May 2026 17:35:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT17b-0000000818S-2cGn
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:35:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F140D405A4;
	Fri, 29 May 2026 17:35:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 908FE1F00893;
	Fri, 29 May 2026 17:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780076144;
	bh=TqoXZtFCecBDIRwlCszFm+ebrzNA1/9woDr7PD5hsVw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SWwvf18FiYMbFURR6pgQUEv4oQz6zUhUe1QWnTc4Lh1VaHbT6S3/M39v4MFmlDQ0T
	 7qoK17okU0RNyxMU1IReCDmglm25QV1XLswbGJKBo6LOfIikF/VY9mH5G+r5L3BHJV
	 uUgxLqICh69To4y8z0ruMDLW7ZNOAN/Xyc10yKSBqpO4sI5JtKn1IBet7FFUTP2qSU
	 NAH42vATrmpTGyC4qYuoF0lAiHHfYgf84iYi06RLgmfG8nha906OwQ6Hfoeb5PuZlp
	 +TkZk4fmhAUAvNvgKF5dc3zwzAXDnUdrlrSr40kikOaeoJl9xlYdOFj3eMO4xqUC0t
	 jelFeN0xUUXHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 01/15] phy: lynx-28g: reject probing on
 devices with unsupported OF nodes
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260529171509.1163787-2-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-2-vladimir.oltean@nxp.com>
Date: Fri, 29 May 2026 17:35:43 +0000
Message-Id: <20260529173544.908FE1F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_103548_018963_76E28EBC 
X-CRM114-Status: GOOD (  16.02  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgbHlueF8yOGdfeGxhdGUgY2FsbGJhY2sgY2FuIHJldHVybiBOVUxMIGZvciB1
bmluaXRpYWxpemVkIFBIWSBsYW5lcywgbGVhZGluZyB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVy
ZW5jZSBpbiB0aGUgUEhZIGZyYW1ld29yay4KLSBbSGlnaF0gVGhlIFBIWSBkZXZpY2UgcmV0YWlu
cyBhIHBvaW50ZXIgdG8gYW4gT0YgY2hpbGQgbm9kZSBhZnRlciBpdHMgcmVmZXJlbmNlIGNvdW50
IGhhcyBiZWVuIGRyb3BwZWQsIGxlYWRpbmcgdG8gYSBwb3RlbnRpYWwgVXNlLUFmdGVyLUZyZWUu
Ci0tCgpjb21taXQgNzRiZTRmM2Y4MjI3MmVhYzI0NGQzNDVmNTNkODM0MGU5YTIzMDA4NApBdXRo
b3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+CgpwaHk6IGx5bngt
MjhnOiByZWplY3QgcHJvYmluZyBvbiBkZXZpY2VzIHdpdGggdW5zdXBwb3J0ZWQgT0Ygbm9kZXMK
ClRoaXMgcGF0Y2ggZml4ZXMgYSBjcmFzaCB0cmlnZ2VyZWQgdmlhIHRoZSBkcml2ZXJfb3ZlcnJp
ZGUgbWVjaGFuaXNtIHdoZW4Kb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgcmV0dXJucyBOVUxM
IGZvciBhIGRldmljZSB3aXRoIGEgZGlmZmVyZW50CmNvbXBhdGlibGUgc3RyaW5nLiBJdCBhZGRz
IGEgY2hlY2sgdG8gcmV0dXJuIC1FTk9ERVYgaWYgdGhlIG1hdGNoIGRhdGEKaXMgbWlzc2luZy4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMjhnLmMg
Yi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTI4Zy5jCj4gaW5kZXggOTJiZmM1
ZjY1ZTBiOC4uNDQ2MWI0N2ExNmFkNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1seW54LTI4Zy5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtbHlueC0yOGcuYwo+IEBAIC0xNDc3LDYgKzE0NzcsOSBAQCBzdGF0aWMgaW50IGx5bnhfMjhn
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJcHJpdi0+ZGV2ID0g
ZGV2Owo+ICAJcHJpdi0+aW5mbyA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwo+ICsJ
aWYgKCFwcml2LT5pbmZvKQo+ICsJCXJldHVybiAtRU5PREVWOwo+ICsKPiAgCWRldl9zZXRfZHJ2
ZGF0YShkZXYsIHByaXYpOwo+ICAJc3Bpbl9sb2NrX2luaXQoJnByaXYtPnBjY19sb2NrKTsKPiAg
CUlOSVRfREVMQVlFRF9XT1JLKCZwcml2LT5jZHJfY2hlY2ssIGx5bnhfMjhnX2Nkcl9sb2NrX2No
ZWNrKTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRo
aXMgcGF0Y2gsIGJ1dCBkb2VzIHRoaXMgZnVuY3Rpb24gbGVhdmUgdGhlClBIWSBkZXZpY2Ugd2l0
aCBhIHBvaW50ZXIgdG8gYSBmcmVlZCBjaGlsZCBub2RlIGxhdGVyIGluIHRoZSBwcm9iZSBwcm9j
ZXNzPwoKRnVydGhlciBkb3duIGluIGx5bnhfMjhnX3Byb2JlKCk6CgogICAgZm9yX2VhY2hfYXZh
aWxhYmxlX2NoaWxkX29mX25vZGUoZG4sIGNoaWxkKSB7CiAgICAgICAgLi4uCiAgICAgICAgZXJy
ID0gbHlueF8yOGdfcHJvYmVfbGFuZShwcml2LCByZWcsIGNoaWxkKTsKICAgIC4uLgoKVGhlIGZv
cl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKCkgbWFjcm8gYXV0b21hdGljYWxseSBoYW5k
bGVzCnJlZmVyZW5jZSBjb3VudGluZyBmb3IgdGhlIGNoaWxkIG5vZGUuCgpXaGVuIGx5bnhfMjhn
X3Byb2JlX2xhbmUoKSBjcmVhdGVzIHRoZSBQSFksIHBoeV9jcmVhdGUoKSBzdG9yZXMgdGhpcwpj
aGlsZCBub2RlIGluIHBoeS0+ZGV2Lm9mX25vZGUsIGJ1dCBpdCBkb2VzIG5vdCBjYWxsIG9mX25v
ZGVfZ2V0KCkgdG8KYWNxdWlyZSBhbiBhZGRpdGlvbmFsIHJlZmVyZW5jZS4KCk9uY2UgdGhlIGxv
b3AgYWR2YW5jZXMsIHRoZSBpdGVyYXRvciBhdXRvbWF0aWNhbGx5IGNhbGxzIG9mX25vZGVfcHV0
KCksCmRyb3BwaW5nIHRoZSByZWZlcmVuY2UuIElmIHRoZSBub2RlIGlzIGxhdGVyIGR5bmFtaWNh
bGx5IGZyZWVkLCBzdWNoIGFzCmR1cmluZyBhIERUIG92ZXJsYXkgdW5sb2FkLCBjb3VsZCB0aGlz
IGNhdXNlIGEgdXNlLWFmdGVyLWZyZWUgd2hlbgpwaHktPmRldi5vZl9ub2RlIGlzIGFjY2Vzc2Vk
PwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgY2Fu
IHRoZSB4bGF0ZSBjYWxsYmFjayByZXR1cm4gTlVMTCBmb3IKdW5pbml0aWFsaXplZCBQSFkgbGFu
ZXMgYW5kIGNhdXNlIGEgY3Jhc2ggaW4gdGhlIFBIWSBmcmFtZXdvcms/CgpJZiBhIHJlcXVlc3Rl
ZCBsYW5lIGluZGV4IGlzIHdpdGhpbiBib3VuZHMgYnV0IHRoZSBsYW5lIHdhcyBub3QgcHJvYmVk
CihkdWUgdG8gYSBtaXNzaW5nIHN1Ym5vZGUgaW4gdGhlIGRldmljZSB0cmVlKSwgcHJpdi0+bGFu
ZVtpZHhdLnBoeSByZW1haW5zCk5VTEwgYW5kIGlzIHJldHVybmVkIGRpcmVjdGx5IGJ5IGx5bnhf
MjhnX3hsYXRlKCkuCgpXaGVuIHRoaXMgTlVMTCBpcyBwYXNzZWQgdG8gb2ZfcGh5X2dldCgpIGJ5
IF9vZl9waHlfZ2V0KCk6Cgpkcml2ZXJzL3BoeS9waHktY29yZS5jOm9mX3BoeV9nZXQoKSB7CiAg
ICAuLi4KICAgIGlmIChJU19FUlIocGh5KSkKICAgICAgICByZXR1cm4gcGh5OwoKICAgIGlmICgh
dHJ5X21vZHVsZV9nZXQocGh5LT5vcHMtPm93bmVyKSkKICAgIC4uLgp9CgpTaW5jZSBJU19FUlIo
TlVMTCkgZXZhbHVhdGVzIHRvIGZhbHNlLCBpdCBwcm9jZWVkcyB0byBkZXJlZmVyZW5jZSB0aGUg
TlVMTApwb2ludGVyIHZpYSBwaHktPm9wcy0+b3duZXIuIFNob3VsZCB0aGUgY2FsbGJhY2sgcmV0
dXJuIEVSUl9QVFIoLUVOT0RFVikKaW5zdGVhZCBmb3IgbWlzc2luZyBsYW5lcz8KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1Mjkx
NzE1MDkuMTE2Mzc4Ny0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9MQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
