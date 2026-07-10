Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5938DC43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVWG9CE3Wet2LILqget0pqOSDqLRsRcR2IGNLZUO4vc=; b=PxkDO3ZXg9fRJw
	61LRDTWO1W3KC/HW5FkLaSvvKMVO1NuvfT+QFpD6BLYt/D+JLEQdG6yhzl89l6WKN0Iuh209v8tqg
	iNfy1obNhsX+d5Cf0JAKvUFzkfj5BXoA3WFK8CirNuYRQ5AZMDK2VD9m2QvL721fRz88FgNsyrMLL
	ssHXiH705H+iFPtWbP0IHJ5zedYANHMM13+qBVoAzSUCLu8St4RzC2bc0pjjDlpb9ScAdvYruH8GE
	ZyB+FEpy5aQGsOjVAOp7ATexgJSVXZpGx4xdpY99YqSORMSE+gAN0JryeamNe7azupweNxKyeknaE
	sLBuBeFImqPhdgN6CCUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiISU-00000005lcI-2zna;
	Fri, 10 Jul 2026 21:08:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIST-00000005lcC-3I6Z
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:08:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 455C04183B;
	Fri, 10 Jul 2026 21:08:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A98441F000E9;
	Fri, 10 Jul 2026 21:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783717709;
	bh=TmrZCUi7i9cpiKGGpYc5TFXRmMnjaloY6YqWjEd+Qlk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Cl5FPucMuBXWoxEryswGMcikbz2GVjZ1OmpSOdfRNL04l6BcC72TE4RTz6qJN9wQD
	 BSXGu3bchPW6VjdmIeLQzUfQoc4Qxf1wiSFS3gJbCy+qnhwAOFT3mZssm0nuMAcADQ
	 xusuxlUl5ZSzHXTyEawoQQBThdCxqCkc1H5fRqmMQl5oR5m+lc5YdY1dlECglnw2E1
	 25hj0jaZtpoDuF2Uq7oWnR21EwFuVAkEie3RXSezmp0h+0GatWZxyiGYKFQWpn71bB
	 6vx+UXKy6jTnp6TvNGxhDoaxfXVChPFK1yyLsnyTRah/xZPk8o6VIf726ivTUwzp+s
	 7CbNR8RxLaecg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 06/36] phy: rockchip: usbdp: Drop seamless DP
 takeover
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-6-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-6-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:08:28 +0000
Message-Id: <20260710210828.A98441F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgaGFyZHdh
cmUgcmVzZXQgYXQgcHJvYmUgbGVhZHMgdG8gc3lzdGVtIGxvY2t1cHMgaWYgYm9vdGxvYWRlciBs
ZWF2ZXMgUEhZIGFjdGl2ZQotLQoKLS0tIFBhdGNoIFs2XTogW1BBVENIIHYxMiAwNi8zNl0gcGh5
OiByb2NrY2hpcDogdXNiZHA6IERyb3Agc2VhbWxlc3MgRFAgdGFrZW92ZXIgLS0tCmNvbW1pdCA4
NzFlNmQyYWVhN2FjMmM4ODhiNDkxN2Y5M2ZmZjFlZGEzNjgyMDlkCkF1dGhvcjogU2ViYXN0aWFu
IFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlw
OiB1c2JkcDogRHJvcCBzZWFtbGVzcyBEUCB0YWtlb3ZlcgoKVGhpcyBwYXRjaCByZW1vdmVzIHN1
cHBvcnQgZm9yIHNlYW1sZXNzIERQIHRha2VvdmVyIGZyb20gdGhlIGJvb3Rsb2FkZXIsCm5vdGlu
ZyB0aGF0IHRoZSBjdXJyZW50IERSTSBkcml2ZXJzIGRvIG5vdCBzdXBwb3J0IGl0IGFuZCB0aGUg
Y29kZSBpcwp1bnRlc3RlZC4gSXQgcmVtb3ZlcyB0aGUgaW5pdGlhbCBzdGF0dXMgY2hlY2sgYW5k
IGNvcnJlc3BvbmRpbmcgcmVzZXQgbG9naWMuCgpDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXBoeS8yMDI2MDYxMjE2NDEwNy5DN0RCMjFGMDAwRTlAc210cC5rZXJuZWwub3Jn
LwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRw
LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IDNm
YzgyMjJmY2FlYzIuLjZjYjlmNmI0ZGJmNmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtMTQ5NSwxMCArMTQ2OCw2IEBAIHN0
YXRpYyBpbnQgcmtfdWRwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
CWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gLQlyZXQgPSBya191ZHBoeV9nZXRfaW5p
dGlhbF9zdGF0dXModWRwaHkpOwo+IC0JaWYgKHJldCkKPiAtCQlyZXR1cm4gcmV0Owo+IC0KCltT
ZXZlcml0eTogSGlnaF0KRG9lcyByZW1vdmluZyB0aGlzIGluaXRpYWwgc3RhdHVzIGNoZWNrIGxl
YXZlIHRoZSBQSFkgaGFyZHdhcmUgaW4gYW4gdW5tYW5hZ2VkCnN0YXRlIGlmIHRoZSBib290bG9h
ZGVyIGVuYWJsZWQgaXQ/CgpXaXRob3V0IHRoaXMgaW5pdGlhbGl6YXRpb24gc3RlcCwgdGhlIGRy
aXZlciBubyBsb25nZXIgZXhwbGljaXRseSBtYW5hZ2VzIHRoZQpQSFkgcmVzZXRzIG9yIGluY3Jl
bWVudHMgdGhlIGNsb2NrIGVuYWJsZSBjb3VudCBkdXJpbmcgcHJvYmUuIElmIGEgYm9vdGxvYWRl
cgpsZWF2ZXMgdGhlIFBIWSBhY3RpdmUgKHN1Y2ggYXMgZm9yIGEgZGlzcGxheSBzcGxhc2ggc2Ny
ZWVuIG9yIFVTQiBmYXN0Ym9vdCksCmFuZCB0aGUgY29uc3VtZXIgZHJpdmVyIGlzIG5vdCBsb2Fk
ZWQgb3IgZGVmZXJzIHByb2JpbmcsIHRoZSBjbG9jayBmcmFtZXdvcmsncwpjbGtfZGlzYWJsZV91
bnVzZWQgd2lsbCBleGVjdXRlIGF0IGxhdGVfaW5pdGNhbGwgYW5kIGN1dCB0aGUgdW5jbGFpbWVk
IFBIWQpjbG9ja3MuCgpPbiBSb2NrY2hpcCBTb0NzLCBjdXR0aW5nIGNsb2NrcyB0byBhbiB1bi1y
ZXNldCwgYWN0aXZlIHBlcmlwaGVyYWwgZnJlcXVlbnRseQpjYXVzZXMgYW4gQVhJIGJ1cyBoYW5n
IG9yIHByZXZlbnRzIHRoZSBwb3dlciBkb21haW4gZnJvbSBzYWZlbHkgc2h1dHRpbmcgZG93bi4K
SXMgYW4gZXhwbGljaXQgcmVzZXQgc3RpbGwgbmVlZGVkIGluIHJrX3VkcGh5X3Byb2JlKCkgdG8g
ZW5zdXJlIHRoZSBoYXJkd2FyZQppcyBwdXQgaW50byBhIHF1aWVzY2VudCBzdGF0ZSBkdXJpbmcg
Ym9vdD8KCj4gIAltdXRleF9pbml0KCZ1ZHBoeS0+bXV0ZXgpOwo+ICAJcGxhdGZvcm1fc2V0X2Ry
dmRhdGEocGRldiwgdWRwaHkpOwo+CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzEwLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjEy
LTAtOGI0MWE5YTliZWYwQGNvbGxhYm9yYS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
