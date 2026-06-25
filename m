Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB89CDE000
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 18:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P42NYCddU366JOJGmfpnD7zjnyaIfN3+l3dS30I8KEI=; b=cFe+vfTaohSQL8
	IDWFHc6t9+yYB9sPJjsvSpNcqnQ9iHphbIcjBrTpBHV7JIE5IR3sBvWkKd3UhrwV6pRZ5n7G4C2V9
	kRbZI+Y3PzteJR25sDQzMRIfJodCNwkHKheIPACneFNGwfxAH2CaStdM3Kec6+mbHQxt0hAMABE9s
	76esKcQiLWZLUdzntMVK5Bqk3fovj2K87zlIS7t2OT7Gp81+0btl6dARfkLN877iyOpY1hT5G5oqg
	2TcNjXciU/ZZpWCtTTDPsg/z+V2u9gpfThFi8a58lxwnZgjBkKhP3StI6ClbOfyWHb4sIm6yCmSS2
	tDyewzC1AVo0hQlhNC8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoT4-00000009f5a-2Ihu;
	Thu, 25 Jun 2026 18:06:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoT3-00000009f4e-0dqu
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 18:06:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 804D8600AE;
	Thu, 25 Jun 2026 18:06:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE99A1F000E9;
	Thu, 25 Jun 2026 18:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410784;
	bh=Ao9cljNSd00ekFJvGVEdx7ZMSGm1CX5e1rvGntzHD80=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aAzpD8wQgM0OzsA7CQI4tuAYWyM+n4sx3PNLZtRBH+/Ul3Do/yKS8Nqq4oDiUXOaG
	 s12/JMmCYefCDESAg2fDWFZyJAzvXaA0uOBqombvHj3tBm/xnuabphe2ydUYZ4b2s4
	 hDX9o2Omgq5JfdsHQd/mu535dffzVtnFNsN774h7cd+FXfQVQvhZ2skFXWzRH46tom
	 KmWOItrJgpwliobobxxzK6NS5QXd0d7r/3O3zRNpyDiFRIpbZFGDwzpeiTTtK+fWbF
	 dzNRT8ic5dLB4evmIckh0Ff+YJzEhxQI20+cp5MUYy3KT19ou/O0Ui71K3u2u7ZO7f
	 08LJok6UxzIRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 03/27] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-3-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-3-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 18:06:23 +0000
Message-Id: <20260625180623.AE99A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gUHJlc2VydmluZyB0
aGUgUEhZIHN0YXR1cyBhY3Jvc3MgbW9kZSBjaGFuZ2VzIGV4cG9zZXMgYSBwZXJtYW5lbnQgcG93
ZXIgbGVhayBpZiB0aGUgVVNCIGRyaXZlciBleGl0cyB3aGlsZSBhIDQtbGFuZSBEaXNwbGF5UG9y
dCBpcyBhY3RpdmUuCi0tCgpjb21taXQgZWI5NzE5NTc1OGQ2MzZlOGI5N2I1ZmZkNjljMDAyMmRl
NDgyNjI0MQpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xs
YWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IERvIG5vdCBsb3NlIFVTQjMgUEhZIHN0
YXR1cwoKQnkgZGVmYXVsdCBEV0MzIHJlcXVlc3RzIHRoZSBVU0IzIFBIWSBvbmNlIGFuZCBrZWVw
cyBpdCBlbmFibGVkLiBXaGVuCkRpc3BsYXlQb3J0IGlzIGJlaW5nIHJlcXVlc3RlZCBsYXRlciBv
biwgYSBtb2RlIGNoYW5nZSBpcyBuZWVkZWQgd2hpY2gKcmUtaW5pdGlhbGl6ZXMgdGhlIFBIWS4g
VGhpcyBwYXRjaCByZW1vdmVzIHRoZSBjbGVhcmluZyBvZiB0aGUgc3RhdHVzIHZhcmlhYmxlCmR1
cmluZyByZS1pbml0aWFsaXphdGlvbiB0byBlbnN1cmUgVVNCMyB0cmFja2luZyBpbmZvcm1hdGlv
biBpc24ndCBsb3N0LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Ywo+IGluZGV4IGE1ZmZkZjdhNmU3NmIuLjEyZGZkZDQ3MGE3ODIgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC0xMDA4LDcgKzEwMDgsNiBAQCBz
dGF0aWMgaW50IHJrX3VkcGh5X3Bvd2VyX29uKHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHU4IG1v
ZGUpCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2UpOwo+ICAJCXVk
cGh5LT5tb2RlX2NoYW5nZSA9IGZhbHNlOwo+ICAJfSBlbHNlIGlmICh1ZHBoeS0+bW9kZV9jaGFu
Z2UpIHsKPiAtCQl1ZHBoeS0+c3RhdHVzID0gVURQSFlfTU9ERV9OT05FOwoKW1NldmVyaXR5OiBN
ZWRpdW1dCkRvZXMgdGhpcyBjaGFuZ2UgaW50cm9kdWNlIGEgcG90ZW50aWFsIHBvd2VyIGFuZCBj
bG9jayBsZWFrIHdoZW4gdGhlIFVTQgpkcml2ZXIgdW5iaW5kcyBvciBzdXNwZW5kcz8KCkJ5IHBy
ZXNlcnZpbmcgdGhlIFVEUEhZX01PREVfVVNCIGJpdCBpbiB1ZHBoeS0+c3RhdHVzIGFjcm9zcyBt
b2RlIGNoYW5nZXMsCnRoZSBzdGF0dXMgYml0IHJlbWFpbnMgYWN0aXZlIHdoaWxlIHVkcGh5LT5t
b2RlIG1pZ2h0IGJlIHNldCB0byBEUC1vbmx5Cihmb3IgZXhhbXBsZSwgd2hlbiBhIDQtbGFuZSBE
aXNwbGF5UG9ydCBhZGFwdGVyIGlzIGNvbm5lY3RlZCkuCgpJZiBya191ZHBoeV91c2IzX3BoeV9l
eGl0KCkgaXMgY2FsbGVkIHdoaWxlIHRoZSBtb2RlIGlzIERQLW9ubHksIHRoZSBlYXJseQptb2Rl
IGNoZWNrIHdpbGwgdHJpZ2dlciBiZWNhdXNlIHVkcGh5LT5tb2RlIGxhY2tzIFVEUEhZX01PREVf
VVNCLgpUaGlzIGNhdXNlcyBhbiBlYXJseSByZXR1cm4sIHNraXBwaW5nIHRoZSBjYWxsIHRvIHJr
X3VkcGh5X3Bvd2VyX29mZigpCmFuZCBsZWF2aW5nIHRoZSBVRFBIWV9NT0RFX1VTQiBiaXQgc3Ry
YW5kZWQgaW4gdWRwaHktPnN0YXR1cy4KCkxhdGVyLCB3aGVuIERpc3BsYXlQb3J0IGlzIHBvd2Vy
ZWQgb2ZmIGFuZCBya191ZHBoeV9wb3dlcl9vZmYoKSBjbGVhcnMgdGhlClVEUEhZX01PREVfRFAg
Yml0LCB0aGUgc3RhdHVzIHdpbGwgZHJvcCB0byBVRFBIWV9NT0RFX1VTQiBpbnN0ZWFkIG9mClVE
UEhZX01PREVfTk9ORS4gQ291bGQgdGhpcyBieXBhc3MgdGhlIGZpbmFsIHJrX3VkcGh5X2Rpc2Fi
bGUoKSBjYWxsLApsZWF2aW5nIHRoZSBQSFkgcG93ZXJlZCBvbiBhbmQgbGVha2luZyB0aGUgY2xv
Y2sgcmVmZXJlbmNlcyBpbmRlZmluaXRlbHk/Cgo+ICAJCWlmICh1ZHBoeS0+bW9kZSA9PSBVRFBI
WV9NT0RFX0RQKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIHRydWUpOwo+
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNjI1LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjctMC0zOGViM2NmNjU0ZmRAY29sbGFi
b3JhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
