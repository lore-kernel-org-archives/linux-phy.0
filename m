Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4660DC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 12:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:Subject:From:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5WuBorLlwgi3bUI4P954XwPoGJIQT9kcWQkadTO2YU=; b=DnN9nJbO3q0uoT
	HaH5GxVK1g6O4jmh+cwdX4fruBmpELmNHaSF5/wg+O7bSJpy2N5pJUTPbbiSxzlkyo8hTtU+GnBh8
	2iKD0wsr/QQP6M7o28P/8eysWYjrNi0mULuIIJXj56mSxwj9rWztlw53VhklQAXZUFl2PxMBcbVUS
	P78Oy/1eA6MDsv6PrNzd8j6/1KNj76QLn/aduK0chOJmLXL6zRN0GPot4NttHgpFJ1QE19wDMLXtv
	Ps9VVwsD7sP/qJpbdadWF9crhnV+Q4WH1ZNHnlz5goO7Chmz/WFntxedL+9MzvPT4+0Ml1N5a0kZ3
	geneFKINhizx7MLk+flA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXlS-0000000H0yS-3ihW;
	Tue, 30 Jun 2026 12:40:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXlQ-0000000H0xq-2vz3
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 12:40:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C04BC600BB;
	Tue, 30 Jun 2026 12:40:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F11D11F000E9;
	Tue, 30 Jun 2026 12:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823231;
	bh=v+ylQS7T1PbxJbxcVCtCmB+Zu07GYw80PbAHrMGukNQ=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=hi/a4Tl8t8mGGqn3T7VFYq3PYxy9QhWxY1gIaKKtiMAx+4XS9Cq8zzJGe9JptgW0U
	 IRlMMacT7LfBCmI61zHRt2IP3N/IK3mqP1KJQZ6zGEqNZAa3dHHXf7txfE9FaLkEVq
	 q0+Z+U0GRKB9FPVK2xilis6qbF6flNKDx2kXRjFOB1YWsk/uMAPLwLRqRe3Y2Pi4do
	 VftaxmxVxRVF+ha+9YChYGr/NdMhPnRstGAn/v60WXccPU3L/aZ5irak97/Ue0JTsy
	 zgamnEQgYhAyFk9pQG0S16bc9w5MoF5VW3+A8hZzE7MLXsdYSULvMPo6AsLCoo+0Xd
	 1VSIasFCxPFCQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: phy-can-transceiver: Add suspend operation for
 tcan1043
Cc: olteanv@gmail.com, vkoul@kernel.org, "Vincent Mailhol" <mailhol@kernel.org>, "Oliver
 Hartkopp" <socketcan@hartkopp.net>, "Oleksij Rempel" <o.rempel@pengutronix.de>, linux-can@vger.kernel.org, "Marc
 Kleine-Budde" <mkl@pengutronix.de>, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260630-phy-can-transceiver-suspend-resume-support-v1-1-6842c2d697e4@bootlin.com>
References: <20260630-phy-can-transceiver-suspend-resume-support-v1-1-6842c2d697e4@bootlin.com>
Date: Tue, 30 Jun 2026 12:40:30 +0000
Message-Id: <20260630124030.F11D11F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgYC5yZXN1
bWVgIGNhbGxiYWNrIGluIFBNIG9wZXJhdGlvbnMgbGVhdmVzIHRoZSBDQU4gUEhZIHBlcm1hbmVu
dGx5IGluIFNsZWVwIG1vZGUgYWZ0ZXIgc3lzdGVtIHJlc3VtZS4KLSBbTWVkaXVtXSBNaXNzaW5n
IGRlbGF5IHdoZW4gdHJhbnNpdGlvbmluZyB0aHJvdWdoIE5vcm1hbCBtb2RlIG1heSByZXN1bHQg
aW4gdGhlIHRyYW5zaXRpb24gYmVpbmcgaWdub3JlZCBieSB0aGUgdHJhbnNjZWl2ZXIgaGFyZHdh
cmUuCi0tCgpjb21taXQgMmQyZTFhNzcyY2U4YWFjMmZhZWEyN2IwMTM1YWJjMmE3ZWQ3MDA3MgpB
dXRob3I6IFRob21hcyBSaWNoYXJkIChUSSkgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgoK
cGh5OiBwaHktY2FuLXRyYW5zY2VpdmVyOiBBZGQgc3VzcGVuZCBvcGVyYXRpb24gZm9yIHRjYW4x
MDQzCgpUaGlzIGNvbW1pdCBhZGRzIGEgc3VzcGVuZCBvcGVyYXRpb24gZm9yIHRoZSB0Y2FuMTA0
MyBQSFksIHN3aXRjaGluZyBpdAp0byBTbGVlcCBtb2RlIGR1cmluZyBzeXN0ZW0gc3VzcGVuZC4g
SXQgdHJhbnNpdGlvbnMgdGhlIFBIWSB0aHJvdWdoIE5vcm1hbAptb2RlIHRvIGNsZWFyIHRoZSBX
QUtFUlEgZmxhZyBiZWZvcmUgZW50ZXJpbmcgR28tdG8tU2xlZXAgYW5kIGZpbmFsbHkKU2xlZXAg
bW9kZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYyBi
L2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYwo+IGluZGV4IDc1ZGM0OWU3NWNhMGUu
LjJiY2ExYTE3M2ZjYzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNhbi10cmFuc2Nl
aXZlci5jCj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNhbi10cmFuc2NlaXZlci5jClsgLi4uIF0K
PiBAQCAtNzYsMTIgKzgwLDI4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X29wcyBjYW5fdHJh
bnNjZWl2ZXJfcGh5X29wcyA9IHsKPiAgCS5vd25lcgkJPSBUSElTX01PRFVMRSwKPiAgfTsKPiAg
Cj4gK3N0YXRpYyBpbnQgdGNhbjEwNDNfc3VzcGVuZChzdHJ1Y3QgY2FuX3RyYW5zY2VpdmVyX3Bo
eSAqcGh5KQo+ICt7Cj4gKwkvKiBTd2l0Y2ggdG8gTm9ybWFsIG1vZGUsIGl0IGNsZWFycyBXQUtF
UlEgKi8KPiArCWdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChwaHktPnN0YW5kYnlfZ3BpbywgMCk7
Cj4gKwlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGh5LT5lbmFibGVfZ3BpbywgMSk7Cj4gKwo+
ICsJLyogU3dpdGNoIHRvIEdvLXRvLVNsZWVwIG1vZGUgKi8KPiArCWdwaW9kX3NldF92YWx1ZV9j
YW5zbGVlcChwaHktPnN0YW5kYnlfZ3BpbywgMSk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KV2lsbCB0
aGlzIGJhY2stdG8tYmFjayBHUElPIHRvZ2dsZSBleGVjdXRlIHRvbyBxdWlja2x5IG9uIHBsYXRm
b3JtcyB3aXRoIGZhc3QKbWVtb3J5LW1hcHBlZCBHUElPcz8KCldpdGhvdXQgYW4gaW50ZXJtZWRp
YXRlIGRlbGF5LCB0aGUgc3ViLW1pY3Jvc2Vjb25kIHN0YXRlIGNoYW5nZSBtaWdodCBub3QKZ2l2
ZSB0aGUgdHJhbnNjZWl2ZXIncyBpbnRlcm5hbCBzdGF0ZSBtYWNoaW5lIGVub3VnaCB0aW1lIHRv
IHJlZ2lzdGVyIHRoZQpOb3JtYWwgbW9kZSB0cmFuc2l0aW9uLiBDYW4gdGhpcyBjYXVzZSB0aGUg
dHJhbnNjZWl2ZXIgdG8gaWdub3JlIHRoZQp0cmFuc2l0aW9uLCBmYWlsIHRvIGNsZWFyIHRoZSBX
QUtFUlEgZmxhZywgYW5kIHRodXMgZmFpbCB0byBlbnRlciBTbGVlcAptb2RlPwoKPiArCj4gKwkv
KiBXYWl0IHRyYW5zaXRpb24gdG8gU2xlZXAgbW9kZSAqLwo+ICsJZnNsZWVwKDUpOwo+ICsKPiAr
CXJldHVybiAwOwo+ICt9ClsgLi4uIF0KPiBAQCAtMTE1LDYgKzEzNSwyNiBAQCBzdGF0aWMgc3Ry
dWN0IHBoeSAqY2FuX3RyYW5zY2VpdmVyX3BoeV94bGF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4g
IAlyZXR1cm4gcHJpdi0+Y2FuX3RyYW5zY2VpdmVyX3BoeVtpZHhdLmdlbmVyaWNfcGh5Owo+ICB9
Cj4gIAo+ICtzdGF0aWMgaW50IGNhbl90cmFuc2NlaXZlcl9waHlfc3VzcGVuZChzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gK3sKPiArCXN0cnVjdCBjYW5fdHJhbnNjZWl2ZXJfcHJpdiAqcHJpdiA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsJY29uc3Qgc3RydWN0IGNhbl90cmFuc2NlaXZlcl9kYXRh
ICpkYXRhID0gcHJpdi0+ZGF0YTsKPiArCWludCByZXQsIGk7Cj4gKwo+ICsJZm9yIChpID0gMDsg
aSA8IHByaXYtPm51bV9jaDsgaSsrKSB7Cj4gKwkJaWYgKGRhdGEtPnN1c3BlbmQpIHsKPiArCQkJ
cmV0ID0gZGF0YS0+c3VzcGVuZCgmcHJpdi0+Y2FuX3RyYW5zY2VpdmVyX3BoeVtpXSk7Cj4gKwkJ
CWlmIChyZXQpCj4gKwkJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiArCX0KPiArCj4gKwlyZXR1cm4g
MDsKPiArfQo+ICsKPiArc3RhdGljIERFRklORV9TSU1QTEVfREVWX1BNX09QUyhjYW5fdHJhbnNj
ZWl2ZXJfcGh5X3BtX29wcywKPiArCQkJCWNhbl90cmFuc2NlaXZlcl9waHlfc3VzcGVuZCwgTlVM
TCk7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgbGVhdmluZyB0aGUgcmVzdW1lIGNhbGxiYWNrIGFz
IE5VTEwgcGVybWFuZW50bHkgbGVhdmUgdGhlIENBTiBQSFkgaW4KU2xlZXAgbW9kZSBhZnRlciBh
IHN5c3RlbSByZXN1bWU/CgpTaW5jZSB0aGUgcGFyZW50IENBTiBNQUMgZHJpdmVyIHR5cGljYWxs
eSByZWxpZXMgb24gdGhlIFBIWSBmcmFtZXdvcmsgZm9yCnBvd2VyIG1hbmFnZW1lbnQgYW5kIG1h
eSBub3QgbWFudWFsbHkgd2FrZSB0aGUgUEhZIGR1cmluZyBpdHMgb3duIHJlc3VtZQpmbG93LCBj
b3VsZCB0aGlzIHByZXZlbnQgdGhlIENBTiBpbnRlcmZhY2UgZnJvbSBiZWNvbWluZyByZXNwb25z
aXZlIGFnYWluCnVudGlsIGl0IGlzIG1hbnVhbGx5IGJyb3VnaHQgZG93biBhbmQgYmFjayB1cD8K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA2MzAtcGh5LWNhbi10cmFuc2NlaXZlci1zdXNwZW5kLXJlc3VtZS1zdXBwb3J0LXYxLTEt
Njg0MmMyZDY5N2U0QGJvb3RsaW4uY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
