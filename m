Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF38C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 23:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+JXUcyRPCIST4arHXpQm/HndFYm/cO4eCmWmsOtDp4=; b=AvoQEXvhSpRuwA
	DUMzEISPKnLlzeNVulxSG8/7Q0M1xRtAewkqEvysn0uXhlpbmSzk2RlqOIixsmaPIOP5hpFlbH8pG
	6QTKMw3jMQ9NqrIqDmFkAAUEnAhCyou4JHWrRtHo9Lv/O23KndmMWLNLAPCw2O1oIoel9SDCN3bU+
	cUwCJWc22WoL58WbNDMxBcdqryp6RhidL49r9X/zFHMJJtnrdqVhAyVAbFfSqcNGflQy+Ozaz56iU
	6I1SEkWKaC76Nywgd5jXWNE8mu6jRRt0gLKq1vbieBpvtcR9jPLzXPLOIW1dOthriLyP7y7Q6Fc5a
	JD1ZM8ZQV6g4sVFs1zQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnYy-000000081ba-1D6j;
	Fri, 03 Jul 2026 23:44:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnYx-000000081bT-2M2X
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 23:44:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DE243435A8;
	Fri,  3 Jul 2026 23:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C1801F000E9;
	Fri,  3 Jul 2026 23:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122290;
	bh=rTA75vgJbDRlFFAx5Rl7dNhraSlgz69UMMDo4+AiSAg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RNnz1DZ/Dsei0Nj3wvrHlSf5kNezOUIYCmGBd7PYzQAzN2xP9qJfZzibGvpe9ZVP3
	 2dFvfGDU2Xk+v04z6CzkqohVI+X5jPdabqKMKl/dk2woAGsqUa0Bm6Bhrz5isIyTC+
	 P8ghDEqFcjz4YndFBBQgwEP98JRIjKUp6Bzr/7uZgxx60b6cklIs3ivFIkghm7pI1s
	 UR68daZ2AgmjsXCN1AoD1ug13K9OZ5klvEry6Bl3s/C50RTAxuZnCzdOYI9EFsU21m
	 yMYgpVbmr4WJMAydnnrEDXzWRnFkS/jEGv2SwIg2NA9QR73EqcJHETWprTB3NUhgGP
	 KqAJX0mIS8nng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 08/36] phy: rockchip: usbdp: Amend SSC modulation
 deviation
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-8-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-8-a392711ca8a9@collabora.com>
Date: Fri, 03 Jul 2026 23:44:49 +0000
Message-Id: <20260703234449.7C1801F000E9@smtp.kernel.org>
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
IFtNZWRpdW1dIFBhcnRpYWwgc3RhdGUgdXBkYXRlIGR1cmluZyB0aGUgY29uZmlndXJhdGlvbiB2
ZXJpZmljYXRpb24gcGhhc2UgbGVhdmVzIGluY29uc2lzdGVudCBkcml2ZXIgc3RhdGUgb24gZXJy
b3IuCi0tCgpjb21taXQgOTBmMGM1YmMxNjEzZGMzYzYxZWQ3NmRlNzRmNzVmODViMTQ3Zjc1OQpB
dXRob3I6IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9jay1jaGlwcy5jb20+CgpwaHk6IHJvY2tj
aGlwOiB1c2JkcDogQW1lbmQgU1NDIG1vZHVsYXRpb24gZGV2aWF0aW9uCiAgICAKTW92ZSBTU0Mg
bW9kdWxhdGlvbiBkZXZpYXRpb24gaW50byBwcml2YXRlIGNvbmZpZyBvZiBjbG9jay4KICAgIAog
LSAyNE06IDB4MDBkNFs1OjBdID0gMHgzMAogLSAyNk06IDB4MDBkNFs1OjBdID0gMHgzMwoKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGUzZjVhMjZj
ODc2YTUuLmNiNmFjYWRmYmNjZmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYwoKWyAuLi4gXQoKV2hpbGUgcmV2aWV3aW5nIHRoaXMsIEkgbm90aWNlZCBh
IHByZS1leGlzdGluZyBpc3N1ZSBpbiB0aGlzIGZpbGU6Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYzpya191ZHBoeV9kcF9waHlfY29uZmlndXJlKCkgewouLi4KCWlm
IChkcC0+c2V0X3JhdGUpIHsKCQlyZXQgPSBya191ZHBoeV9kcF9waHlfdmVyaWZ5X2xpbmtfcmF0
ZSh1ZHBoeSwgZHApOwoJCWlmIChyZXQpCgkJCXJldHVybiByZXQ7Cgl9CgoJaWYgKGRwLT5zZXRf
bGFuZXMpIHsKCQlyZXQgPSBya191ZHBoeV9kcF9waHlfdmVyaWZ5X2xhbmVzKHVkcGh5LCBkcCk7
CgkJaWYgKHJldCkKCQkJcmV0dXJuIHJldDsKCX0KCglpZiAoZHAtPnNldF92b2x0YWdlcykgewoJ
CXJldCA9IHJrX3VkcGh5X2RwX3BoeV92ZXJpZnlfdm9sdGFnZXModWRwaHksIGRwKTsKCQlpZiAo
cmV0KQoJCQlyZXR1cm4gcmV0OwoJfQouLi4KfQoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMgaXNu
J3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgZG9lcyBwYXJ0aWFsIHN0YXRl
IHVwZGF0ZQpkdXJpbmcgdGhlIGNvbmZpZ3VyYXRpb24gdmVyaWZpY2F0aW9uIHBoYXNlIGxlYXZl
IGluY29uc2lzdGVudCBkcml2ZXIgc3RhdGUKb24gZXJyb3I/CgpUaGUgaGVscGVycyBya191ZHBo
eV9kcF9waHlfdmVyaWZ5X2xpbmtfcmF0ZSgpIGFuZApya191ZHBoeV9kcF9waHlfdmVyaWZ5X2xh
bmVzKCkgcHJlbWF0dXJlbHkgbXV0YXRlIHRoZSBkcml2ZXIncyBpbnRlcm5hbApzdGF0ZSBiZWZv
cmUgZ3VhcmFudGVlaW5nIG92ZXJhbGwgY29uZmlndXJhdGlvbiBzdWNjZXNzLgoKSWYgYSBjYWxs
ZXIgaW52b2tlcyBwaHlfY29uZmlndXJlKCkgd2l0aCBzZXRfcmF0ZT0xIGFuZCBzZXRfdm9sdGFn
ZXM9MSwKdGhlIHZlcmlmeV9saW5rX3JhdGUgY2hlY2sgbWlnaHQgcGFzcyBhbmQgaW1tZWRpYXRl
bHkgb3ZlcndyaXRlCnVkcGh5LT5saW5rX3JhdGUuCgpJZiB0aGUgdmVyaWZ5X3ZvbHRhZ2VzIGNo
ZWNrIHRoZW4gZmFpbHMsIHRoZSBmdW5jdGlvbiBhYm9ydHMgd2l0aG91dApwcm9ncmFtbWluZyB0
aGUgaGFyZHdhcmUgb3IgcmVzdG9yaW5nIHRoZSBvbGQgbGlua19yYXRlLgoKQ291bGQgYSBzdWJz
ZXF1ZW50IGNhbGwgc2V0dGluZyBvbmx5IHZvbHRhZ2VzIHRoZW4gdXNlIHRoZSBjb3JydXB0ZWQK
bGlua19yYXRlIHRvIGNvbmZpZ3VyZSB0aGUgUEhZIGNsb2NrIGludmVyc2lvbiByZWdpc3RlcnM/
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNzAzLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjEwLTAtYTM5MjcxMWNhOGE5QGNvbGxh
Ym9yYS5jb20/cGFydD04CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
