Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB0A6C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 08:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mav7Ud+fin/5MskKPuBkuNT+qliXVPKXB5YqBH17fdo=; b=OnkJrIOa/CfJqc
	AAYGYqfDTJHmvIz53MGIl8qjLjgVX5heaw055X8QeV4QJVaL35vcp2kC/mFwgXHwk7cpu5rk3qdLg
	CnLqN2P1vMXu5NxDFiWxaihAvKSIuUALNVpucpkkRbHyPnISK8dxv6FIQYWJuapK+dc0Bp9TItrrT
	C//DdvrziQdxl0qx5VN0YpPOKQHn//7EHUlu2stadS3388I3HndNf74fY1NnOQ+vKYnb3qmS0xSOL
	4F18pFMTlNpvgjFYpWDvfjFD34mU3aqJp9DEiHLb4OnE+BRfXa0l5pPEsDcuAHDE+jwqi/oEgiDh1
	u0IHxBlByNmbZdWdSYpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHso-000000095m5-1IWF;
	Sun, 05 Jul 2026 08:07:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHsn-000000095lo-2NoX
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 08:07:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EA27343601;
	Sun,  5 Jul 2026 08:07:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C2C51F000E9;
	Sun,  5 Jul 2026 08:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783238840;
	bh=cEVYz5Nhmqec5ecwTr1IhTC6lpM1heAqJayBhgPgxHY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R3bgbpNvwSMBtvRVdHnCaMpeI96FDxvkpPaqnAdMlL6AtNKxtfFJin+JxkswZ2vMC
	 U4IbIWF4n/y3q8629oXxBg71/xvni/iTZxuTrvHQTkiGaSj1cASHPbIo9yo9OTEOSx
	 vcf5VjolCbUBUNlt22JizVHAbGQCBaAGsjHBUZJvD5UGdHSJW974bY60X4ukmKV0on
	 6CCRPe77QJ+Dy4RSK+r9276ylGpRO2ifoYc66Cvac1NQmNTqO+BuKoz6qo18skjCBH
	 +JpAqr6gRW9qqKA3U+M+9rbrjIsYPL0M/NB0Vkjcql1OAj6w9H2AtML93e68sx/lQ4
	 /MQrpfs8XfIwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] ARM: dts: ti: cpcap-mapphone: use charger
 detection interrupt for CPCAP USB PHY
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260705075809.1793784-4-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
 <20260705075809.1793784-4-ivo.g.dimitrov.75@gmail.com>
Date: Sun, 05 Jul 2026 08:07:19 +0000
Message-Id: <20260705080720.5C2C51F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGRldmljZSB0
cmVlIHBhdGNoIGFwcGVuZHMgdGhlIGBjaHJnX2RldGAgaW50ZXJydXB0IHRvIHRoZSBlbmQgb2Yg
dGhlIGFycmF5cywgdmlvbGF0aW5nIHRoZSBzdHJpY3QgcG9zaXRpb25hbCBvcmRlcmluZyBkZWZp
bmVkIGluIHRoZSBgbW90b3JvbGEsY3BjYXAtdXNiLXBoeS55YW1sYCBzY2hlbWEgYW5kIGJyZWFr
aW5nIGBtYWtlIGR0YnNfY2hlY2tgIHZhbGlkYXRpb24uCi0tCgpjb21taXQgY2Y3MTA3NjMxMmUx
YjgyMmE2NzdjMTBiMjM2MTNkMzhkMmNjZTFiMApBdXRob3I6IEl2YXlsbyBEaW1pdHJvdiA8aXZv
LmcuZGltaXRyb3YuNzVAZ21haWwuY29tPgoKQVJNOiBkdHM6IHRpOiBjcGNhcC1tYXBwaG9uZTog
dXNlIGNoYXJnZXIgZGV0ZWN0aW9uIGludGVycnVwdCBmb3IgQ1BDQVAgVVNCIFBIWQoKVXBkYXRl
IHRoZSBDUENBUCBVU0IgUEhZIGludGVycnVwdCBtYXBwaW5nIHRvIHVzZSB0aGUgY2hhcmdlcgpk
ZXRlY3Rpb24gaW50ZXJydXB0IGFuZCBjb3JyZXNwb25kaW5nICJjaHJnX2RldCIgaW50ZXJydXB0
IG5hbWUuClRoaXMgbWF0Y2hlcyB0aGUgZHJpdmVyIGFuZCBiaW5kaW5nIHVwZGF0ZXMgZm9yIERD
UCBkZXRlY3Rpb24uCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy90aS9vbWFwL21v
dG9yb2xhLWNwY2FwLW1hcHBob25lLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy90aS9vbWFwL21v
dG9yb2xhLWNwY2FwLW1hcHBob25lLmR0c2kKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy90aS9v
bWFwL21vdG9yb2xhLWNwY2FwLW1hcHBob25lLmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0
cy90aS9vbWFwL21vdG9yb2xhLWNwY2FwLW1hcHBob25lLmR0c2kKPiBAQCAtMTA2LDExICsxMDYs
MTMgQEAgY3BjYXBfdXNiMl9waHk6IHBoeSB7Cj4gIAkJCWludGVycnVwdHMtZXh0ZW5kZWQgPQo+
ICAJCQkJPCZjcGNhcCAxNSAwPiwgPCZjcGNhcCAxNCAwPiwgPCZjcGNhcCAyOCAwPiwKPiAgCQkJ
CTwmY3BjYXAgMTkgMD4sIDwmY3BjYXAgMTggMD4sIDwmY3BjYXAgMTcgMD4sCj4gLQkJCQk8JmNw
Y2FwIDE2IDA+LCA8JmNwY2FwIDQ5IDA+LCA8JmNwY2FwIDQ4IDA+Owo+ICsJCQkJPCZjcGNhcCAx
NiAwPiwgPCZjcGNhcCA0OSAwPiwgPCZjcGNhcCA0OCAwPiwKPiArCQkJCTwmY3BjYXAgMTMgMD47
Cj4gIAkJCWludGVycnVwdC1uYW1lcyA9Cj4gIAkJCQkiaWRfZ3JvdW5kIiwgImlkX2Zsb2F0Iiwg
InNlMGNvbm4iLAo+ICAJCQkJInZidXN2bGQiLCAic2Vzc3ZsZCIsICJzZXNzZW5kIiwKPiAtCQkJ
CSJzZTEiLCAiZG0iLCAiZHAiOwo+ICsJCQkJInNlMSIsICJkbSIsICJkcCIsCj4gKwkJCQkiY2hy
Z19kZXQiOwoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgdGhpcyBvcmRlciBvZiBpbnRlcnJ1cHQt
bmFtZXMgY2F1c2UgYSBmYWlsdXJlIGR1cmluZyBtYWtlIGR0YnNfY2hlY2s/CgpUaGUgZGV2aWNl
IHRyZWUgYmluZGluZyBzY2hlbWEgbW90b3JvbGEsY3BjYXAtdXNiLXBoeS55YW1sIGV4cGVjdHMg
Y2hyZ19kZXQKdG8gYXBwZWFyIGJlZm9yZSBkbSBhbmQgZHAgaW4gdGhlIGl0ZW1zIGxpc3QuCgpX
aGlsZSB0aGUgZHJpdmVyIHVzZXMgcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUoKSBzbyB0aGUgcnVu
dGltZSBiZWhhdmlvciB3b3JrcwpyZWdhcmRsZXNzIG9mIG9yZGVyLCBhcHBlbmRpbmcgY2hyZ19k
ZXQgdG8gdGhlIGVuZCBvZiB0aGUgYXJyYXkgaGVyZSB2aW9sYXRlcwp0aGUgcG9zaXRpb25hbCBv
cmRlcmluZyBkZWZpbmVkIGluIHRoZSBzY2hlbWEgYW5kIGJyZWFrcyB2YWxpZGF0aW9uLgoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDcwNTA3NTgwOS4xNzkzNzg0LTEtaXZvLmcuZGltaXRyb3YuNzVAZ21haWwuY29tP3BhcnQ9MwoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
