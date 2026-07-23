Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86718C531C7
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 08:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUdxE75zFQDtrRGgK3yDWOjmkucn9V7PCkWt+MqoCy0=; b=1v4Q4xr3o7KVBB
	fe5XpQYbxlG41sjATYEPuPUPOOkLT0XpZPZuELB8sxOUcsCwzm0SKFZTJKvhGc6y34gexw46K0Miw
	QHzox4BkdXoiD5zDuBGJ0Uw4qmuP953rz8Dr84i/89ad6wBCVaGzu9QSMUJNu8d6GhvrSxGWYO/Bu
	DMcLeGHBR9bnvAOZ/B0k0/zR27x3dfFTk9QL0OC9OEJzDwhI9jiPM8hXyNs6a7Kl+FmWAND4uLbYj
	3jJDqbhgFLCpDjaEAj3tCPFKV5bnB1U0WmHeegdO83Yn4WlgSoUT8jYRSFKgHPeLG2oNsT/CDl1OS
	KsT3Vls3gJf21TbfdcDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmpDH-0000000Dn8E-0PyP;
	Thu, 23 Jul 2026 08:55:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmpDF-0000000Dn88-2UPR
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 08:55:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BA14360051;
	Thu, 23 Jul 2026 08:55:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDB5A1F000E9;
	Thu, 23 Jul 2026 08:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784796928;
	bh=zelCR9f91wMcWIs4UFZu3rdExrv6PFvk+rFRVkhuQ4k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mrdR/mMIUW6jp/49rZtpdwO4szZLDkgx4+2eDz0V+xiP3B1wfSaxDK3/QFhD9dki6
	 rX715DvDEpht0wdy4Wpq/LyABFjwNz5lOmRzhIwxOnzsb5iaBDNGdyAP1niH3+oyAa
	 FD27cvmcI4LEPYLQvyy/ZcwzujCP7bCM/Ctg63NZ0aQu16vvUwf1REx2ysKkckLLB5
	 Ixk0XbXZAeb/UQQbKA+nCjtlFPT5/88RuyCV4XExkziuY2mmr/KTzJjj2ocA8qVkmI
	 sY9REcJw6NCFcC+aYif5q7bmBkT1bI9wjh7O1zr29dmRdKdxqVnIx7bmz1ul4dCSju
	 fbzDBkUfMb4sQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: add a driver for T-Head TH1520 USB PHY
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260723084316.3573714-3-zhengxingda@iscas.ac.cn>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
 <20260723084316.3573714-3-zhengxingda@iscas.ac.cn>
Date: Thu, 23 Jul 2026 08:55:27 +0000
Message-Id: <20260723085527.BDB5A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBleHBsaWNp
dCBpbmNsdXNpb24gb2YgYDxsaW51eC9kZWxheS5oPmAgZm9yIGB1ZGVsYXkoKWAuCi0tCgotLS0g
UGF0Y2ggWzJdOiBbUEFUQ0ggdjIgMi8yXSBwaHk6IGFkZCBhIGRyaXZlciBmb3IgVC1IZWFkIFRI
MTUyMCBVU0IgUEhZIC0tLQpjb21taXQgMDIxMmU3Y2JhYjIxMzI3YzYyYzc0OWYyNWE3ZTk2YWEy
OWM3ZDFhMwpBdXRob3I6IEljZW5vd3kgWmhlbmcgPHpoZW5neGluZ2RhQGlzY2FzLmFjLmNuPgoK
cGh5OiBhZGQgYSBkcml2ZXIgZm9yIFQtSGVhZCBUSDE1MjAgVVNCIFBIWQogICAgClRoZSBVU0Ig
UEhZIG9uIFQtSGVhZCBUSDE1MjAgU29DIGlzIGEgU3lub3BzeXMgVVNCIDMuMCBGZW10b1BIWSwg
d2l0aApzb21lIFBIWSBwYXJhbWV0ZXJzIGV4cG9ydGVkIGFzIGFub3RoZXIgc3lzdGVtIGNvbnRy
b2xsZXIgYWxvbmcgd2l0aCBpdC4KVGhpcyBjb21taXQgYWRkcyBhIGRyaXZlciBjb25maWd1cmlu
ZyB0aGVzZSBwYXJhbWV0ZXJzIGJlZm9yZSBsZXR0aW5nIHRoZQpQSFkgcnVuLCBpbiBhZGRpdGlv
biB0byBjbG9jay9yZXNldC9yZWd1bGF0b3IgbWFuYWdlbWVudC4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3RoZWFkL3BoeS10aDE1MjAtdXNiLmMgYi9kcml2ZXJzL3BoeS90aGVhZC9waHkt
dGgxNTIwLXVzYi5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li44MDJhZjcyMzUzYTExCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L3RoZWFk
L3BoeS10aDE1MjAtdXNiLmMKPiBAQCAtMCwwICsxLDE4MCBAQAo+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gKy8qCj4gKyAqIENvcHlyaWdodCAoQykgMjAyNiBJ
bnN0aXR1dGUgb2YgU29mdHdhcmUsIENoaW5lc2UgQWNhZGVteSBvZiBTY2llbmNlcyAoSVNDQVMp
Cj4gKyAqCj4gKyAqIEF1dGhvcnM6Cj4gKyAqIEljZW5vd3kgWmhlbmcgPHpoZW5neGluZ2RhQGlz
Y2FzLmFjLmNuPgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L3BoeS9waHkuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+
ICsjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3Iv
Y29uc3VtZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+CgpbIC4uLiBdCgo+ICtzdGF0
aWMgaW50IHRoMTUyMF91c2JfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICt7Cj4gKwlzdHJ1
Y3QgdGgxNTIwX3VzYl9waHkgKnRoMTUyMF9waHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiAr
CWludCByZXQ7Cj4gKwo+ICsJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHRoMTUyMF9waHktPnJl
Zl9jbGspOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldCA9IHJlc2V0
X2NvbnRyb2xfYXNzZXJ0KHRoMTUyMF9waHktPnBoeV9yZXNldCk7Cj4gKwlpZiAocmV0KQo+ICsJ
CWdvdG8gZXJyX2Rpc2FibGVfY2xrOwo+ICsKPiArCS8qCj4gKwkgKiBEbyBzb21lIGluaXRpYWwg
UEhZIHNldHVwOgo+ICsJICogLSBTZXQgQ09NTU9OT05OIHRvIGFsbG93IHRoZSBQSFkgdG8gYXV0
b21hdGljYWxseSBwb3dlciBkb3duLgo+ICsJICogLSBTZXQgUkVGX1NTUF9FTiB0byBlbmFibGUg
ZmVlZGluZyByZWZlcmVuY2UgY2xvY2sgdG8gU3VwZXJTcGVlZAo+ICsJICogICBQSFkgY2xvY2sg
UExMLgo+ICsJICovCj4gKwlyZWdtYXBfc2V0X2JpdHModGgxNTIwX3BoeS0+cmVnbWFwLCBVU0Jf
U1lTLCBVU0JfU1lTX0NPTU1PTk9OTik7Cj4gKwlyZWdtYXBfc2V0X2JpdHModGgxNTIwX3BoeS0+
cmVnbWFwLCBVU0JfU1NQX0VOLCBVU0JfU1NQX0VOX1JFRl9TU1BfRU4pOwo+ICsKPiArCXJldCA9
IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQodGgxNTIwX3BoeS0+cGh5X3Jlc2V0KTsKPiArCWlmIChy
ZXQpCj4gKwkJZ290byBlcnJfZGlzYWJsZV9jbGs7Cj4gKwo+ICsJdWRlbGF5KDEwKTsKCltTZXZl
cml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhpcyBjb2RlIHVzZXMgdWRlbGF5KCkg
d2l0aG91dCBleHBsaWNpdGx5IGluY2x1ZGluZwo8bGludXgvZGVsYXkuaD4uCgpXaGlsZSBpdCBj
dXJyZW50bHkgY29tcGlsZXMgZHVlIHRvIGluZGlyZWN0IGluY2x1c2lvbnMsIHNob3VsZCB0aGUg
aGVhZGVyIGJlCmV4cGxpY2l0bHkgaW5jbHVkZWQgdG8gcHJldmVudCBidWlsZCBmYWlsdXJlcyBp
ZiB0aGUgaW5jbHVkZSBjaGFpbiBpcyBsYXRlcgpyZWZhY3RvcmVkPwoKPiArCj4gKwlyZXR1cm4g
MDsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA3MjMwODQzMTYuMzU3MzcxNC0xLXpoZW5neGluZ2RhQGlzY2FzLmFjLmNuP3BhcnQ9
MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
