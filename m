Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8543BC982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1cHKmZ1Tkl+FO0UybMqQaJsEHLWGyNFxCvv/Tf0sUY=; b=TmUDZcwFtWFac2
	lHy/qGzlMjYLqYuEZWuUmIwF6432E1tB6PHBSW9d2tQW5sPiom2I7HJECRIeoG421Inx0bh9RH1cN
	d39ewv2c0dcOvVJnjjRwNcnPbbCwEQRF0FxzmBEF/tj2SOwdyS/X3s4FqxtvB0IduS2L8wCWn4AOk
	337P4d5waSdTU4QC9h5azJiOPu5B0JCkZChE2lO+yYSl/t977QYL29Ksggk/IEY19IeUbKCBhRL7y
	/ItmWKuZsVp184yNLtjkPkEx+GZP2DXI8Ayqtb3oLxpo2H7j4NqY772woesb+LmVx8o/zsZzwNdNI
	Vxd9TEJuqFFDes0RhfiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wqu-00000000xcc-0bkz;
	Mon, 21 Sep 2026 05:46:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wqs-00000000xcR-2iLe
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:46:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 13CF641FFF;
	Mon, 21 Sep 2026 05:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A8631F000FF;
	Mon, 21 Sep 2026 05:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789969566;
	bh=J/kAvxPdVNaVb0n5O8bYcuDBkBCgxS17oz1Lu6OLAEw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GJ64kA1V6mB9zRFZwMiRFlsViVb9s8YKzl45xRGB3PPQTGh1zahcizBoM9aFjhqPn
	 d+yEniEYGH42gLXKPqXjKYYB7iLO2/VAzv5FVUHhjXlwHE8ymC+jPifS01Zjr6oaqe
	 K/KGPj9qqYKy7ePYtcV4OU3Sg5jgkaHYyzgCZEIwygDjJ090sqb+Iwx+z4LimqG+qT
	 aGqaPAXTjD+8aZ0A6tDA/bs2e1dPo+MIEc9NA3zHs/CKQBbDkrdV8q+HQ9KjVRHl/7
	 snpqbMoXyG9Xec3JfBJt7F5WYfJDz+qX3meU5mGfMNWoR2c8dld9Tizr06D9+3UYCd
	 un5RVJSyXBq1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/6] PCI: qcom: Add Nord PCIe controller support
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260921-nord-v4-3-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-3-ed05c6e09240@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 05:46:05 +0000
Message-Id: <20260921054605.7A8631F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGNpOiBxY29tOiBtaXNz
aW5nIGtlcm5lbC1kb2MgZm9yIGRpc2FibGVfY2djIGluIHN0cnVjdCBxY29tX3BjaWVfY2ZnCi0t
Cgpjb21taXQgZTU4NmY2YmYwMzliZDBjZGJjMjE0ODA3MzljNDE2NWRkYjAzODUwOQpBdXRob3I6
IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0u
Y29tPgoKUENJOiBxY29tOiBBZGQgTm9yZCBQQ0llIGNvbnRyb2xsZXIgc3VwcG9ydAoKQWRkIHRo
ZSBOb3JkIFBDSWUgY29udHJvbGxlciBjb25maWd1cmF0aW9uIGFuZCB0aGUgcGxhdGZvcm0tc3Bl
Y2lmaWMgc2V0dGluZ3MKcmVxdWlyZWQgZm9yIGNvcnJlY3Qgb3BlcmF0aW9uLiBJbmNsdWRlcyBh
IGNsb2NrLWdhdGluZyB3b3JrYXJvdW5kIGFuZCBkaXNhYmxlcwpMMHMsIGFzIGRvY3VtZW50ZWQg
aW4gYSBwcml2YXRlIGVycmF0dW0uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNv
bS5jCj4gaW5kZXggYjU4YTYwN2I3MTNmNS4uMzA0NjI4YjU3ZjMzYiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gQEAgLTI4MSw2ICsyODEsNyBAQCBzdHJ1Y3Qg
cWNvbV9wY2llX2NmZyB7Cj4gIAlib29sIG92ZXJyaWRlX25vX3Nub29wOwo+ICAJYm9vbCBmaXJt
d2FyZV9tYW5hZ2VkOwo+ICAJYm9vbCBub19sMHM7Cj4gKwlib29sIGRpc2FibGVfY2djOwo+ICB9
OwoKW1NldmVyaXR5OiBMb3ddClNob3VsZCB0aGlzIG5ldyBmaWVsZCBiZSBkb2N1bWVudGVkIGlu
IHRoZSBhY2NvbXBhbnlpbmcga2VybmVsLWRvYyBibG9jaz8KClRoZSBzdHJ1Y3QgcWNvbV9wY2ll
X2NmZyBoYXMgYSBrZXJuZWwtZG9jIGNvbW1lbnQgYmxvY2sgdGhhdCBleHBsaWNpdGx5CmRvY3Vt
ZW50cyBpdHMgbWVtYmVycy4gVGhlIG5ldyBkaXNhYmxlX2NnYyBmaWVsZCB3YXMgbm90IGFkZGVk
IHRvIHRoZQprZXJuZWwtZG9jIGJsb2NrLCB3aGljaCBsZWF2ZXMgdGhlIHN0cnVjdCBkb2N1bWVu
dGF0aW9uIGluY29tcGxldGUgYW5kIHdpbGwKdHJpZ2dlciBrZXJuZWwtZG9jIHNjcmlwdCB3YXJu
aW5ncy4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA5MjEtbm9yZC12NC0wLWVkMDVjNmUwOTI0MEBvc3MucXVhbGNvbW0uY29tP3Bh
cnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
