Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DE7C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71F8AlyTeB+pz2/1QBvutpvaxt+Ae7m9RzS1ycsqjDs=; b=MotbF95tVGphGx
	ykrm6s9d9GxEutvmkG/3iWQxzpHcFebNbkUmetEVxV8NFmoykN+2MqDU+m9pJURKIwdfL3Q91iAyf
	sB5yFR8DftGzofkYt1UzHfTLa6w7ReB62Q8v8q/RJX0WBReEOv/HxQlDCXjJRG+pzG2CQfCAKIt9B
	okey48ggNF9YYwtDNRBdIBhlKkVrnfp1rPtsLj5AP6dnjb01jxDlrdeoAhSOKqjSQl+5nHIUrIUQH
	y7r4Kwq6kJqr8UJjXQYGkxd82RvVBWAYJ23J7dWOhKQxkVS+eMZiAWh4evWsrrdhI9s39kAjlQ6Ip
	nW1qHLRrzzngWZt0hdPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXOd-0000000BxBP-3Fq5;
	Wed, 22 Jul 2026 13:54:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXOc-0000000BxAv-2y8o
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:54:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C5947600AB;
	Wed, 22 Jul 2026 13:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 132D01F000E9;
	Wed, 22 Jul 2026 13:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784728441;
	bh=7Q6mUCfhwfAcNesi7GUe/ruL9qYDvUNdQ/OgMwqTwec=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gYxSjnBvbiyvPaAbK0PAGCUk9EQCri3Si8CbYrnpnXVCtOAeXS7yZrrGqtpq4cGTb
	 YtSjE1aws0jRDdYIFLzD/oBq0Df4F8mfXOjdsMk2AUi2+RE5T0syp2+BWHqOj45e9q
	 zvu8GxI8sFu2bC/Dk11+ObGeSKLYjhURm9cHL6zRzJ8YGWQZilVXnvuh+hJeOphtOC
	 okqwBzaE+HiXBvULJR69JX+KKUSiKsbTICmyy/YFjwd6UnLshHXdUU5v+TIka7gYSy
	 9HgXAtZq/kKpwFMYchUWiLXEafeg5VtO+BSmAAKg9kFoWYwP1Zm7DTlfyoYCBfx3ee
	 IfTkIqyhfB9Mg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Add sa8255p USB PHY
To: "Mattijs Korpershoek" <mkorpershoek@kernel.org>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260722-phy-qcom-qmp-usb-8255-v3-1-e789070b48f7@kernel.org>
References: <20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org>
 <20260722-phy-qcom-qmp-usb-8255-v3-1-e789070b48f7@kernel.org>
Date: Wed, 22 Jul 2026 13:54:00 +0000
Message-Id: <20260722135401.132D01F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHNjaGVtYSB1c2Vz
IGB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlYCB3aXRob3V0IHJlZmVyZW5jaW5nIGFueSBl
eHRlcm5hbCBzY2hlbWEgdmlhIGAkcmVmYC4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCB2MyAx
LzJdIGR0LWJpbmRpbmdzOiBwaHk6IEFkZCBzYTgyNTVwIFVTQiBQSFkgLS0tCmNvbW1pdCA3YjNh
YWViMWUwZDhjOGNkODJlN2Q2YjJkOTdkYzg4Y2I3NjNkYTg3CkF1dGhvcjogTWF0dGlqcyBLb3Jw
ZXJzaG9layA8bWtvcnBlcnNob2VrQGtlcm5lbC5vcmc+CkRhdGU6ICAgV2VkIEp1bCAyMiAxMzo0
NTo0NCAyMDI2ICswMDAwCgpkdC1iaW5kaW5nczogcGh5OiBBZGQgc2E4MjU1cCBVU0IgUEhZCgpU
aGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgbmV3IGRldmljZXRyZWUgYmluZGluZyBmb3IgdGhlIFF1
YWxjb21tIFFNUCBTdXBlcgpTcGVlZCAoU1MpIFVOSSBQSFkgb24gdGhlIFNBODI1NVAgcGxhdGZv
cm0uIFRoZSBoYXJkd2FyZSBhYnN0cmFjdHMgcmVzb3VyY2VzCmxpa2UgY2xvY2tzIGFuZCBpbnRl
cmNvbm5lY3RzIHRocm91Z2ggZmlybXdhcmUgdmlhIHRoZSBTQ01JIHBvd2VyIHByb3RvY29sLgoK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29t
LHNhODI1NXAtcW1wLXVzYjMtdW5pLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9xY29tLHNhODI1NXAtcW1wLXVzYjMtdW5pLXBoeS55YW1sCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5kMjc0ZDUwMGZjOWM1Cj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxzYTgyNTVwLXFtcC11c2IzLXVuaS1waHkueWFtbAoKWyAuLi4gXQoKPiArcmVxdWlyZWQ6
Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtICIjcGh5LWNlbGxzIgo+ICsgIC0g
cG93ZXItZG9tYWlucwo+ICsgIC0gcG93ZXItZG9tYWluLW5hbWVzCj4gKwo+ICt1bmV2YWx1YXRl
ZFByb3BlcnRpZXM6IGZhbHNlCgpbU2V2ZXJpdHk6IExvd10KU2luY2UgdGhpcyBzY2hlbWEgZG9l
cyBub3QgcmVmZXJlbmNlIGFueSBleHRlcm5hbCBzY2hlbWFzIHZpYSAkcmVmLCBzaG91bGQKdGhp
cyBiZSBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UgaW5zdGVhZCBvZiB1bmV2YWx1YXRlZFBy
b3BlcnRpZXM6IGZhbHNlPwoKPiArCj4gK2V4YW1wbGVzOgoKWyAuLi4gXQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyMi1waHkt
cWNvbS1xbXAtdXNiLTgyNTUtdjMtMC1lNzg5MDcwYjQ4ZjdAa2VybmVsLm9yZz9wYXJ0PTEKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
