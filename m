Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ABF2C54EFC
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 09:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIzAKSaXTvS3aW/tmpdVsa2sVlWPScjuEw4rz0XEB78=; b=rhCCe+v79ZNb4I
	kmbCrepxwlBFvPuElDKOqpdc00vQvIwy2VNswgWugu0dSQvkwUQrfv6D8Rl+OAL/x1pZA03j3wjdM
	6bhFX/Q6BiD2f8Qc18Huxt07A+XJEZkXT7tZwLRN5DyvRE4nXnpjvtZTEPTAdwrZFOrYA/nTSnHwL
	BElDrTxEzmO57NF8lhOviZsBp1pqCgToEPXWL54zubk9vbvnUcy5UX2D1eunUVv/o+vYqsObzcALd
	dIXTpclUgn5FEkvUixAEbMBk5WkYjeyXeNOpAPVip8QKNpVsaFHFsVLhRTNjxio1AULSEGZWawqPP
	fEGEZry/hn3QPnVBkdRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeKG-00000004rCn-1255;
	Tue, 28 Jul 2026 09:42:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeKE-00000004rCU-0Zl2
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 09:42:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2032B60A8D;
	Tue, 28 Jul 2026 09:42:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F6511F000E9;
	Tue, 28 Jul 2026 09:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785231732;
	bh=7Hxsh9sHfq64qWKITTQcYyw6k2PaFygn62uJh0kl2gM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RaF4w/TrYxZBGOBQUVokUxVMKGTNOhqxnyWyqJ7EOnmETnzcM93M3bkFTj1nx8x0p
	 sNv/ufK5IxaGET/GNEeTR9qQ5eus+mNDBI23TCaV+3qODz9tjg+v7o2BEfRAG6BWIu
	 rQuGPJBxbHvvH08RlmhnStaYZaYTZIrc1Sl8PopKMmUmurxUXhjd6KrfpnTuz+c/wR
	 aZjnJEcQx0HfWj/j4mWY6WmvY7pdR0H6F300AnvstqpxmSdNbcJ9ahC1I7/Dg0EwBy
	 jnmCGHluuEf+Ceg9sT35mm7NFZlSm/+RdkfK+T4rHybD3tlxSmSFk6oK84L2by2K3s
	 x5Na5P+a3sMjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 5/5] dt-bindings: media: qcom,x1e80100-camss: Make
 vdd-csiphy supplies optional
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: media-ci@linuxtv.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-5-ae811e2f0799@linaro.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-5-ae811e2f0799@linaro.org>
Date: Tue, 28 Jul 2026 09:42:11 +0000
Message-Id: <20260728094212.0F6511F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSW5jb21wbGV0ZSBz
Y2hlbWEgdXBkYXRlIGZvciBzcGxpdCBQSFkgdG9wb2xvZ3kgY2F1c2VzIGR0X2JpbmRpbmdfY2hl
Y2sgZmFpbHVyZXMgYW5kIGluY29ycmVjdCBoYXJkd2FyZSBkZXNjcmlwdGlvbnMuCi0tCgotLS0g
UGF0Y2ggWzVdOiBbUEFUQ0ggdjEzIDUvNV0gZHQtYmluZGluZ3M6IG1lZGlhOiBxY29tLHgxZTgw
MTAwLWNhbXNzOiBNYWtlIHZkZC1jc2lwaHkgc3VwcGxpZXMgb3B0aW9uYWwgLS0tCmNvbW1pdCA4
Y2EwMTdjY2NhNmFiODBkYTY5NmVmN2VjMTliM2ZjNzQ5NGQ2MTg3CkF1dGhvcjogQnJ5YW4gTydE
b25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+CgpkdC1iaW5kaW5nczogbWVkaWE6
IHFjb20seDFlODAxMDAtY2Ftc3M6IE1ha2UgdmRkLWNzaXBoeSBzdXBwbGllcyBvcHRpb25hbAoK
VGhpcyBjb21taXQgcmVtb3ZlcyB0aGUgdmRkLWNzaXBoeS0wcDgtc3VwcGx5IGFuZCB2ZGQtY3Np
cGh5LTFwMi1zdXBwbHkgZnJvbQp0aGUgcmVxdWlyZWQgbGlzdCBpbiB0aGUgcWNvbSx4MWU4MDEw
MC1jYW1zcyBiaW5kaW5nLiBUaGlzIG1ha2VzIHRoZSBzdXBwbGllcwpvcHRpb25hbCB0byBzdXBw
b3J0IG1vdmluZyB0aGUgY3NpcGh5IHRvIHBlZXIgbm9kZXMgd2hpbGUgbWFpbnRhaW5pbmcKYmFj
a3dhcmRzIGNvbXBhdGliaWxpdHkuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWVkaWEvcWNvbSx4MWU4MDEwMC1jYW1zcy55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Fjb20seDFlODAxMDAtY2Ftc3MueWFtbAo+
IGluZGV4IDEyNjQwMDc3MmQwMjguLjU3YTgzOGZlMmQyMjkgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Fjb20seDFlODAxMDAtY2Ftc3MueWFt
bAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLHgx
ZTgwMTAwLWNhbXNzLnlhbWwKPiBAQCAtMTg2LDggKzE4Niw2IEBAIHJlcXVpcmVkOgo+ICAgIC0g
aW9tbXVzCj4gICAgLSBwb3dlci1kb21haW5zCj4gICAgLSBwb3dlci1kb21haW4tbmFtZXMKPiAt
ICAtIHZkZC1jc2lwaHktMHA4LXN1cHBseQo+IC0gIC0gdmRkLWNzaXBoeS0xcDItc3VwcGx5Cgpb
U2V2ZXJpdHk6IE1lZGl1bV0KU2luY2UgdGhlIENTSVBIWSBub2RlcyBhcmUgYmVpbmcgbW92ZWQg
b3V0IHRvIHBlZXIgbm9kZXMsIGRvIG90aGVyIHByb3BlcnRpZXMKaW4gdGhpcyBzY2hlbWEgYWxz
byBuZWVkIHRvIGJlIHVwZGF0ZWQgdG8gcHJldmVudCB2YWxpZGF0aW9uIHJlZ3Jlc3Npb25zPwoK
Rm9yIGV4YW1wbGUsIHRoZSByZWctbmFtZXMsIGNsb2NrLW5hbWVzLCBhbmQgaW50ZXJydXB0LW5h
bWVzIGluIHRoaXMgc2NoZW1hCmFyZSBjdXJyZW50bHkgZGVmaW5lZCBhcyBzdHJpY3QsIGZpeGVk
LW9yZGVyIGFycmF5cyB0aGF0IGV4cGVjdCBjc2lwaHkgZWxlbWVudHMKYXQgc3BlY2lmaWMgaW5k
aWNlcy4gSWYgdGhvc2UgZWxlbWVudHMgYXJlIHJlbW92ZWQgZnJvbSB0aGUgQ0FNU1Mgbm9kZSB0
byBhdm9pZApyZXNvdXJjZSBjb25mbGljdHMsIHdvbid0IHRoZSByZW1haW5pbmcgZWxlbWVudHMg
c2hpZnQgYW5kIGNhdXNlCmR0X2JpbmRpbmdfY2hlY2sgdG8gZmFpbD8KCkFkZGl0aW9uYWxseSwg
dGhlIHBvcnRzIHNjaGVtYSBtYW5kYXRlcyBkYXRhLWxhbmVzIG9uIHRoZSBDQU1TUyBlbmRwb2lu
dHMuCklzIHRoaXMgcmVxdWlyZW1lbnQgc3RpbGwgY29ycmVjdCBmb3IgaW50ZXJuYWwgbGlua3Mg
YmV0d2VlbiB0aGUgQ0FNU1MgY29yZQphbmQgYSBwZWVyIFBIWSwgcmF0aGVyIHRoYW4gcGh5c2lj
YWwgbGFuZXMgdG8gdGhlIHNlbnNvcj8KCj4gICAgLSBwb3J0cwo+ICAKPiAgYWRkaXRpb25hbFBy
b3BlcnRpZXM6IGZhbHNlCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNzI4LWI0LWxpbnV4LW5leHQtMjUtMDMtMTMtZHRzaS14MWU4
MDEwMC1jYW1zcy12MTMtMC1hZTgxMWUyZjA3OTlAbGluYXJvLm9yZz9wYXJ0PTUKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
