Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED03FCDE001
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 18:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARiGTUL6Evtd/+B4tSDVNuhprHULMpyo5XWuKNCISxA=; b=25+4lsuqxCxxG2
	JE8YNRkuAnbyuNPx5XxPjDtTrd6AoFp8G7Fa4UVQHn90RdebZZWCpYEuzDBLqmOeNwAywN/i3lhuy
	vzHCdu8FqGE5Y7RKOk3M+DooEF9sRzKM7UrtdzscBUF0yUVGcxhdF1+BW045q/B+ujP3bnONPBIN1
	xAaPoFhOREP/TYxIY2mWc+dv3yYsRfspcPRrkXB/LxIGQU0XkTF4AoTDt+hr4VlN+uPKmXu10roMH
	O8CE2YdS6Dv0RZ2Z6xsmpAHcl/cZWlULpcphZ+CbR/EJITP9PDlSEkKpz4UhcaRIAYr7ZsJ4nec+R
	XA7Q10BtC9BThsZn+XgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoPF-00000009eft-2mHc;
	Thu, 25 Jun 2026 18:02:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoPE-00000009efi-0oI0
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 18:02:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8DD7D60098;
	Thu, 25 Jun 2026 18:02:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 918561F000E9;
	Thu, 25 Jun 2026 18:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410547;
	bh=qp+j19o9eQBXmJskJCQZ+Cd2lf/2ZpvnSfl99eK32VU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AvzxBEUGvWpRgma9xPLx7zssqZ98zPK7wWhQJhX3x+GksLEgJsEYz8boKsyO0gr1T
	 v0B0MFYMM0tErgAP6NvesgcD8UqYP6G0KjAQUYi2aSmsngVq+LYN+q4QaJdQ9B0sRy
	 S5P4MYvJqgi1pqx9+MnoQcxB72t7q6hpYK9MXE7pm6j4Jhw+aIUZe/8jfIgWeSOYtC
	 HxZH3oKaN4379ocokpEfTpog3fMUoTuLb/qZT5Ti0aQ4vxZ94/AeDRpJUBwldLWw/b
	 vMB0atPfqhJcJexoV6PVxPQWKdoB7YYd21RNyOwXpecpHzycychL+pFTyqHQ6mYvYf
	 Hp8vUbjOrB/eA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 12/27] phy: rockchip: usbdp: Add missing mode_change
 update
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-12-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-12-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 18:02:25 +0000
Message-Id: <20260625180226.918561F000E9@smtp.kernel.org>
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
IFtIaWdoXSBXaGVuIGR5bmFtaWNhbGx5IGV4aXRpbmcgRGlzcGxheVBvcnQgQWx0ZXJuYXRlIE1v
ZGUsIHRoZSBQSFkgbW9kZSBpcyBub3QgdXBkYXRlZCB0byByZWZsZWN0IHRoZSBuZXcgc3RhdGUs
IHdoaWNoIGNhbiBzaWxlbnRseSBwcmV2ZW50IFVTQiBTdXBlclNwZWVkIGZyb20gcG93ZXJpbmcg
b24uIEEgc3Vic2VxdWVudCBwYXRjaCBpbiB0aGUgc2VyaWVzIGF0dGVtcHRzIHRvIGZpeCB0aGlz
IGJ1dCBmYWlscyBkdWUgdG8gYSBsb2dpY2FsIGJ1Zy4KLS0KCmNvbW1pdCBhMTNmMmFkNjgyNTk2
MThlNTZiZjBmN2Y2ZTdiZTRlOGQzMzkxZjhlCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNl
YmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogQWRk
IG1pc3NpbmcgbW9kZV9jaGFuZ2UgdXBkYXRlCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgbmV3
IGhlbHBlciBya191ZHBoeV9tb2RlX3NldCgpIHRvIHVwZGF0ZSB0aGUKYXZhaWxhYmxlIG1vZGVz
LiBJdCBlbnN1cmVzIHRoZSBtb2RlX2NoYW5nZSBmbGFnIGlzIHNldCB3aGVuIHJlcXVpcmVkCnNv
IHRoYXQgRGlzcGxheVBvcnQgcHJvcGVybHkgcmUtaW5pdGlhbGl6ZXMuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggMTA2N2RkZjJkNzQyMi4uZjA3
OTcxNWY3ZGEyMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2Jk
cC5jCgpbIC4uLiBdCgo+IEBAIC0xMzk0LDEwICsxNDAzLDcgQEAgc3RhdGljIGludCBya191ZHBo
eV90eXBlY19tdXhfc2V0KHN0cnVjdCB0eXBlY19tdXhfZGV2ICptdXgsCj4gIAkJCXVzbGVlcF9y
YW5nZSg3NTAsIDgwMCk7Cj4gIAkJCXJrX3VkcGh5X2RwX2hwZF9ldmVudF90cmlnZ2VyKHVkcGh5
LCB0cnVlKTsKPiAgCQl9IGVsc2UgaWYgKGRhdGEtPnN0YXR1cyAmIERQX1NUQVRVU19IUERfU1RB
VEUpIHsKPiAtCQkJaWYgKHVkcGh5LT5tb2RlICE9IG1vZGUpIHsKPiAtCQkJCXVkcGh5LT5tb2Rl
ID0gbW9kZTsKPiAtCQkJCXVkcGh5LT5tb2RlX2NoYW5nZSA9IHRydWU7Cj4gLQkJCX0KPiArCQkJ
cmtfdWRwaHlfbW9kZV9zZXQodWRwaHksIG1vZGUpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlz
bid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHRoZXJlIGlzIGEgcHJlLWV4
aXN0aW5nIGlzc3VlCmluIHJrX3VkcGh5X3R5cGVjX211eF9zZXQoKSByZWdhcmRpbmcgaG93IHN0
YXRlIHRyYW5zaXRpb25zIGFyZSBoYW5kbGVkLgoKV2hlbiBkeW5hbWljYWxseSBleGl0aW5nIERp
c3BsYXlQb3J0IEFsdGVybmF0ZSBNb2RlLCBkb2VzIHRoZSBkcml2ZXIKc2lsZW50bHkgcHJldmVu
dCBVU0IgU3VwZXJTcGVlZCBmcm9tIHBvd2VyaW5nIG9uPwoKSWYgYSB1c2VyIHVucGx1Z3MgYSBE
UCBhY2Nlc3NvcnksIHRoZSBUeXBlLUMgc3Vic3lzdGVtIHNlbmRzIGEgbXV4IHN0YXRlCnVwZGF0
ZSB3aXRoIHN0YXRlLT5tb2RlIHNldCB0byBUWVBFQ19TVEFURV9TQUZFIG9yIFRZUEVDX1NUQVRF
X1VTQiwgYW5kCnN0YXRlLT5hbHQgc2V0IHRvIE5VTEwuCgpUaGUgY29kZSBldmFsdWF0ZXMgdGhp
cyBjb25kaXRpb246CgogICAgaWYgKHN0YXRlLT5tb2RlID49IFRZUEVDX1NUQVRFX01PREFMIHx8
ICFzdGF0ZS0+YWx0IHx8CiAgICAgICAgc3RhdGUtPmFsdC0+c3ZpZCAhPSBVU0JfVFlQRUNfRFBf
U0lEKQogICAgICAgIHJldHVybiAwOwoKRm9yIFRZUEVDX1NUQVRFX1NBRkUgYW5kIFRZUEVDX1NU
QVRFX1VTQiwgc3RhdGUtPmFsdCBpcyBOVUxMLiBUaGlzIG1ha2VzCiFzdGF0ZS0+YWx0IGV2YWx1
YXRlIHRvIHRydWUuIEJlY2F1c2Ugb2YgdGhlIHx8IG9wZXJhdG9yLCB0aGUgZW50aXJlCnN0YXRl
bWVudCBldmFsdWF0ZXMgdG8gdHJ1ZSwgY2F1c2luZyB0aGUgZnVuY3Rpb24gdG8gcmV0dXJuIDAg
YW5kCmlnbm9yZSB0aGUgZXZlbnQgZW50aXJlbHkgaW5zdGVhZCBvZiByZXBvd2VyaW5nIHRoZSBQ
SFkgY29ycmVjdGx5LgoKQSBsYXRlciBwYXRjaCBpbiB0aGUgc2VyaWVzICgicGh5OiByb2NrY2hp
cDogdXNiZHA6IFByb3Blcmx5IGhhbmRsZQpUWVBFQ19TVEFURV9TQUZFIGFuZCBUWVBFQ19TVEFU
RV9VU0IiKSBhdHRlbXB0cyB0byBmaXggdGhpcywgYnV0IHRoZSBsb2dpYwppbiB0aGF0IHBhdGNo
IHN0aWxsIGNvbnRhaW5zIHRoaXMgZXJyb3IgYmVjYXVzZSBpdCBmYWlscyB0byByZXN0cmljdCB0
aGUKc3RhdGUtPmFsdCBjaGVja3MgdG8gb25seSB0aGUgbW9kYWwgc3RhdGVzLgoKQ291bGQgdGhl
IGNvbmRpdGlvbiBiZSBncm91cGVkIHRvIHByb3Blcmx5IGhhbmRsZSB0aGUgbm9uLW1vZGFsIHN0
YXRlcz8KCj4gIAkJCXJrX3VkcGh5X2RwX2hwZF9ldmVudF90cmlnZ2VyKHVkcGh5LCB0cnVlKTsK
PiAgCQl9IGVsc2Ugewo+ICAJCQlya191ZHBoeV9kcF9ocGRfZXZlbnRfdHJpZ2dlcih1ZHBoeSwg
ZmFsc2UpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDYyNS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY3LTAtMzhlYjNjZjY1NGZk
QGNvbGxhYm9yYS5jb20/cGFydD0xMgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
