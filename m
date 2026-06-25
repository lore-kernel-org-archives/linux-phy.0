Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E42CDE001
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 18:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHHFoS2fdWrYZIVu3NoktGrU1PCG6vJrZ47XziamVWo=; b=RxC7sruuMWn1SG
	prfwhdVM2v0/nbmg6poIiqoR5BE2bwf2D7PaCt2bXDPWzxlfLPalUzXHlD9DNxpozlx9F8ecD+sM3
	ktsCujeRVD/0XtIV+UIB9RCknEmwsqqfrr4NEdAfzxkTjizgdWkTZZJGKVCs/pZ9FP02iRTR16gQr
	o9sYXOnoad0/PnvuE9jFuCHx8i9OmcMP/7iGNwUCM/6m6hEA6IyTEwyoa7d2uDVO6AdgxRCS2supV
	nHYq5kBPrWt8Rz2vTi2pJdvtbuMKgP1tiSzimsJvT6P0jtXjsjk3FWJTZ2Uq4X0e8quwb4KO08FDU
	kb2kq+Uh4PjQ644eNPXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoXs-00000009fIE-1eIa;
	Thu, 25 Jun 2026 18:11:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoXr-00000009fI8-2wAH
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 18:11:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DFA6E408D5;
	Thu, 25 Jun 2026 18:11:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43BDB1F000E9;
	Thu, 25 Jun 2026 18:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782411082;
	bh=y5UPaOGHnpnYDmhc58eVJL+p1//zSIxO7jsVvb6HobA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d8gLwM2hhYVRilku9CANBerETGqeUst/4+ciXFkkjdT5WEZzWFQNIjv56s/r7bH7m
	 Nvu3p0suyQaagGX6TXkJuWCgqdCYKjKKCrF5aLQvXv88T+TzgwkWOLlr45FWHe5uV7
	 Oq5F1KufIF1KUipD0r23MiuKnge3D8/vg5R3pwQF0Qhgy8UjVuWpK5uNPnQshkevei
	 yHNQYKEGexNMa7aDonVXiAXe8GVywUAWqnrMD0aAIfK3xuya4NYX6JycYrKj1oft6V
	 VJLQo1Zmo73tXo22BPPVwm0xFgNDM9PIOzCRdYLbbzUbUGrMMyBK2aouJOUM8BTMVE
	 uKgfOg07yk3lA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 22/27] phy: rockchip: usbdp: Properly handle
 TYPEC_STATE_SAFE and TYPEC_STATE_USB
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-22-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-22-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 18:11:21 +0000
Message-Id: <20260625181122.43BDB1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBB
IGNyaXRpY2FsIGJvb2xlYW4gbG9naWMgZXJyb3IgaW4gYHJrX3VkcGh5X3R5cGVjX211eF9zZXRg
IGluY29ycmVjdGx5IHVzZXMgbG9naWNhbCBPUiAoYHx8YCksIGNhdXNpbmcgYWxsIHZhbGlkIFR5
cGUtQyBldmVudHMgdG8gYmUgaWdub3JlZCBhbmQgYnJlYWtpbmcgdGhlIHN0YXRlIG1hY2hpbmUu
CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgotIFtIaWdoXSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ug
d2hlbiBoYW5kbGluZyBub24tRFAgYWNjZXNzb3J5IG1vZGVzIChsaWtlIEF1ZGlvIEFjY2Vzc29y
eSkgaW4gVHlwZS1DIG11eCBkcml2ZXJzLgotLQoKY29tbWl0IGIzNmYzZGU3YjBmNDQxNTZiMDVl
NWNkYTcyZDJiZGQxNzRmOTgyOTkKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFu
LnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBQcm9wZXJseSBo
YW5kbGUgVFlQRUNfU1RBVEVfU0FGRSBhbmQgVFlQRUNfU1RBVEVfVVNCCgpUaGlzIHBhdGNoIGhh
bmRsZXMgVFlQRUNfU1RBVEVfU0FGRSBhbmQgVFlQRUNfU1RBVEVfVVNCIFR5cGUtQyBzdGF0ZSBl
dmVudHMKc28gdGhhdCB0aGUgbXV4aW5nIGlzIHByb3Blcmx5IHVwZGF0ZWQgd2hlbiBleGl0aW5n
IERQIEFsdE1vZGUuCgpGaXhlczogMmY3MGJiZGRlYjQ1ICgicGh5OiByb2NrY2hpcDogYWRkIHVz
YmRwIGNvbWJvIHBoeSBkcml2ZXIiKQpSZXBvcnRlZC1ieTogU2FzaGlrbyA8c2FzaGlrby1ib3RA
a2VybmVsLm9yZz4KQ2xvc2VzOiBodHRwczovL3Nhc2hpa28uZGV2LyMvbWVzc2FnZS8yMDI2MDYx
OTE1NTAyMC5DQzczNjFGMDAwRTklNDBzbXRwLmtlcm5lbC5vcmcKCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCAwYmNhZjU0YzU2NDVkLi4wMTE5YjYy
MjliMGE5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMK
PiBAQCAtMTMyOSwxMSArMTMyOSwxMiBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X3R5cGVjX211eF9z
ZXQoc3RydWN0IHR5cGVjX211eF9kZXYgKm11eCwKPiAgCXN0cnVjdCBya191ZHBoeSAqdWRwaHkg
PSB0eXBlY19tdXhfZ2V0X2RydmRhdGEobXV4KTsKPiAgCj4gIAkvKgo+IC0JICogSWdub3JlIG11
eCBldmVudHMgbm90IGludm9sdmluZyBEUCBBbHRNb2RlLCBiZWNhdXNlCj4gLQkgKiB0aGUgbW9k
ZSBmaWVsZCBpcyBiZWluZyByZXVzZWQsIGUuZy4gc3RhdGUtPm1vZGUgPT0gNAo+IC0JICogY291
bGQgYmUgZWl0aGVyIFRZUEVDX01PREVfVVNCNCBvciBUWVBFQ19EUF9TVEFURV9DLgo+ICsJICog
SWdub3JlIG11eCBldmVudHMgbm90IGludm9sdmluZyBTYWZlIFN0YXRlLCBVU0IgU3RhdGUgb3Ig
RFAgQWx0TW9kZSwKPiArCSAqIGJlY2F1c2UgdGhlIG1vZGUgZmllbGQgaXMgYmVpbmcgcmV1c2Vk
LCBlLmcuIHN0YXRlLT5tb2RlID09IDQgY291bGQKPiArCSAqIGJlIGVpdGhlciBUWVBFQ19NT0RF
X1VTQjQgb3IgVFlQRUNfRFBfU1RBVEVfQy4KPiAgCSAqLwo+IC0JaWYgKCFzdGF0ZS0+YWx0IHx8
IHN0YXRlLT5hbHQtPnN2aWQgIT0gVVNCX1RZUEVDX0RQX1NJRCkKPiArCWlmIChzdGF0ZS0+bW9k
ZSA+PSBUWVBFQ19TVEFURV9NT0RBTCB8fCAhc3RhdGUtPmFsdCB8fAo+ICsJICAgIHN0YXRlLT5h
bHQtPnN2aWQgIT0gVVNCX1RZUEVDX0RQX1NJRCkKPiAgCQlyZXR1cm4gMDsKCltTZXZlcml0eTog
SGlnaF0KRG9lcyB0aGlzIGNvbmRpdGlvbmFsIHVuaW50ZW50aW9uYWxseSBpZ25vcmUgYWxsIHZh
bGlkIHN0YXRlcyBieSB1c2luZwpsb2dpY2FsIE9SIGluc3RlYWQgb2YgbG9naWNhbCBBTkQ/CgpJ
ZiBhIERQIEFsdE1vZGUgZXZlbnQgaXMgcGFzc2VkLCBzdGF0ZS0+bW9kZSA+PSBUWVBFQ19TVEFU
RV9NT0RBTCBldmFsdWF0ZXMKdG8gdHJ1ZSwgY2F1c2luZyBhbiBlYXJseSByZXR1cm4uIAoKSWYg
YSBTYWZlIFN0YXRlIG9yIFVTQiBTdGF0ZSBldmVudCBpcyBwYXNzZWQsIHN0YXRlLT5hbHQgaXMg
TlVMTCwgd2hpY2ggYWxzbwpjYXVzZXMgYW4gZWFybHkgcmV0dXJuLiAKClRoaXMgYXBwZWFycyB0
byBzaG9ydC1jaXJjdWl0IGFuZCByZXR1cm4gMCBmb3IgYWxsIGV4cGVjdGVkIFR5cGUtQyBtdXhp
bmcKZXZlbnRzLCBicmVha2luZyB0aGUgc3RhdGUgbWFjaGluZS4KCgpbU2V2ZXJpdHk6IEhpZ2hd
ClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBjYW4gYWNjZXNzb3J5IG1vZGVzIHRy
aWdnZXIgYSBOVUxMIHBvaW50ZXIKZGVyZWZlcmVuY2UgaW4gb3RoZXIgVHlwZS1DIG11eCBkcml2
ZXJzPwoKV2hlbiB0aGUgVHlwZS1DIHBvcnQgaXMgc2V0IHRvIGFuIGFjY2Vzc29yeSBtb2RlIGxp
a2UgVFlQRUNfTU9ERV9BVURJTywKc3RhdGUtPm1vZGUgPj0gVFlQRUNfU1RBVEVfTU9EQUwgZXZh
bHVhdGVzIHRvIHRydWUsIGJ1dCBzdGF0ZS0+YWx0IGlzCmluaXRpYWxpemVkIHRvIE5VTEwuCgpJ
biBkcml2ZXJzL3VzYi90eXBlYy9tdXgvaXQ1MjA1LmM6aXQ1MjA1X211eF9zZXQoKToKCglpZiAo
c3RhdGUtPm1vZGUgPj0gVFlQRUNfU1RBVEVfTU9EQUwgJiYKCSAgICBzdGF0ZS0+YWx0LT5zdmlk
ICE9IFVTQl9UWVBFQ19EUF9TSUQpCgkJcmV0dXJuIC1FSU5WQUw7CgpBbmQgc2ltaWxhcmx5IGlu
IGRyaXZlcnMvdXNiL3R5cGVjL211eC90dXNiMTA0Ni5jOnR1c2IxMDQ2X211eF9zZXQoKToKCglp
ZiAoc3RhdGUtPm1vZGUgPj0gVFlQRUNfU1RBVEVfTU9EQUwgJiYKCSAgICBzdGF0ZS0+YWx0LT5z
dmlkICE9IFVTQl9UWVBFQ19EUF9TSUQpCgkJcmV0dXJuIC1FSU5WQUw7CgpEb2VzIHRoaXMgY29u
ZGl0aW9uIGRlcmVmZXJlbmNlIHN0YXRlLT5hbHQgd2l0aG91dCBjaGVja2luZyBpZiBpdCBpcyBO
VUxMCndoZW4gYSBub24tRFAgbW9kYWwgZGV2aWNlIGlzIHBsdWdnZWQgaW4/CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI1LXJv
Y2tjaGlwLXVzYmRwLWNsZWFudXAtdjctMC0zOGViM2NmNjU0ZmRAY29sbGFib3JhLmNvbT9wYXJ0
PTIyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
