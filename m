Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C661C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 02:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVZv05FqVRWpw8HLiNQJcgGYf3XdN2gIWv6Dh2MAyTc=; b=axCyuhSB6U/0a/
	6URI/6+YEFPeN9NOqHG50iMCX0oYNWmLOAPdB1HRdRIaE42z0LJ5bcK7B4nFQwQM1ErKJwQtOKUpZ
	EdB51jilBqsZoMsSCh4pqUWxOCfff+2MTqsDSo1SWcGZk3tOfG1Ohpz+OXEAvvuO+n7eOqMRolf2n
	hOkCVOhclX8G4Ebj4uLw3i4TMLmDUAlEqVK2SfDU7QrmMF8D+77gm4F+itcUVZ0jDc8nDk8YkGX5v
	yqNE2rc5mQPMC8P1QBKKb8kEyVRjUPNrS6kIMcJ8HGHtLIryEgT7jSFS27VWxsKlYG1n3UgKeQI83
	OdVnzm8ChqJxw4c/qP6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTV7-00000005sZh-0SSt;
	Fri, 03 Jul 2026 02:19:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTV5-00000005sZb-2cpE
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 02:19:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E8F726001A;
	Fri,  3 Jul 2026 02:19:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15FDE1F000E9;
	Fri,  3 Jul 2026 02:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783045169;
	bh=e/2DwmU/5HSO+Y894+CZGCYgyJVpUbj2IYV0rU5OwIM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T4HDhLZ0S9CX2E6w3ZMv95IT+bnFNZOCwifhQIwZfFOZ9E0e/oTS7i+KtWOO5IDWL
	 VT48OLV7h+wtiqvgnMOSTKd3K2Am3YJ4dzZLuUqIHLoyeulyBrsnK0Xa6cpYYqBtUL
	 nk3gGQkLZWvugrIwQLZuTcGd56vRFVyjEGyRQu0kIOtHpfj1+fCXMUkEot8WVDM7US
	 bjssmNScg0u/FZfCPaxgn2Wj84tdqwp4u0siz8CdjVkSldqjdGD6nK7T6t69q4PWXP
	 E0JkK6U234PnxRrTdbFL+e30k3s4TA974MkW+vFRDAwb1iVUfeARdq5PjeWcwRodV2
	 zpchN2lkvfRNA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: spacemit: Add USB3/PCIe comb PHY driver for
 Spacemit K3
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260703021024.495433-3-inochiama@gmail.com>
References: <20260703021024.495433-1-inochiama@gmail.com>
 <20260703021024.495433-3-inochiama@gmail.com>
Date: Fri, 03 Jul 2026 02:19:28 +0000
Message-Id: <20260703021929.15FDE1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEhhcmR3YXJlIHJlZ2lz
dGVyIGNsb2JiZXJpbmcgZHVlIHRvIG1pc3NpbmcgcmVhZC1tb2RpZnktd3JpdGUgb3BlcmF0aW9u
cyBpbiBQSFkgaW5pdGlhbGl6YXRpb24uCi0tCgpjb21taXQgYzcxY2I1YzRlYmZjYjRmYzVhZmY1
YzE4YTc3Njk5NDllMTVkYWU1NQpBdXRob3I6IElub2NoaSBBbWFvdG8gPGlub2NoaWFtYUBnbWFp
bC5jb20+CgpwaHk6IHNwYWNlbWl0OiBBZGQgVVNCMy9QQ0llIGNvbWIgUEhZIGRyaXZlciBmb3Ig
U3BhY2VtaXQgSzMKCkFkZHMgYSBVU0IzL1BDSWUgY29tYiBQSFkgZHJpdmVyIGZvciBTcGFjZW1p
dCBLMy4gVGhlIGNvbWIgUEhZIHJlcXVpcmVzCmNvbmZpZ3VyaW5nIGEgc3lzY29uIGRldmljZSBm
b3IgdGhlIGNvcnJlY3QgbXV4IGNvbmZpZ3VyYXRpb24gYW5kIG5lZWRzCmNhbGlicmF0aW9uIGJl
Zm9yZSB1c2FnZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NwYWNlbWl0L3BoeS1rMy1j
b21tb24uYyBiL2RyaXZlcnMvcGh5L3NwYWNlbWl0L3BoeS1rMy1jb21tb24uYwo+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMGIyODllNjNkYjk5OQo+IC0tLSAv
ZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3BoeS9zcGFjZW1pdC9waHktazMtY29tbW9uLmMKClsg
Li4uIF0KCj4gKwkvKiBQb3dlciBkb3duIDEwME1IeiByZWZjbGsgYnVmZmVyICovCj4gKwl2YWwg
PSByZWFkbChiYXNlICsgUEhZX1BVX0NLX1JFRyk7Cj4gKwl2YWwgPSB1MzJfcmVwbGFjZV9iaXRz
KHZhbCwgMCwgUEhZX1BVX1JFRkNMS18xMDApOwo+ICsJd3JpdGVsKHZhbCwgYmFzZSArIFBIWV9Q
VV9DS19SRUcpOwo+ICsKPiArCS8qIFByb2dyYW0gUExMIFJFRzEgY29uZmlndXJlIHRoZSBTU0Mg
Ki8KPiArCXZhbCA9IEZJRUxEX1BSRVAoUEhZX1BMTF9TU0NfTU9ERSwgUEhZX1BMTF9TU0NfTU9E
RV9ET1dOX1NQUkVBRDEpIHwKPiArCSAgICAgIEZJRUxEX1BSRVAoUEhZX1BMTF9TU0NfREVQX1NF
TCwgUEhZX1BMTF9TU0NfNTAwMFBQTSkgfAo+ICsJICAgICAgRklFTERfUFJFUChQSFlfUExMX0ZS
RUZfU0VMLCBQSFlfUExMX0ZSRUZfMjRNKTsKPiArCXdyaXRlbCh2YWwsIGJhc2UgKyBQSFlfUExM
X1JFRzEpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29tcGxldGVseSBvdmVyd3JpdGUg
UEhZX1BMTF9SRUcxIGFuZCB6ZXJvIG91dCB1bnNwZWNpZmllZCBiaXRzPwoKVW5saWtlIHRoZSBQ
Q0llIGluaXRpYWxpemF0aW9uIHBhdGggd2hpY2ggdXNlcyBhIHJlYWQtbW9kaWZ5LXdyaXRlIGZv
ciB0aGlzCnJlZ2lzdGVyLCB0aGlzIGRpcmVjdCB3cml0ZWwoKSBpbiBrM191c2IzcGh5X2luaXRf
c2luZ2xlKCkgY2xvYmJlcnMgdGhlCmVudGlyZSByZWdpc3Rlci4gQ291bGQgdGhpcyBjYXVzZSBp
bXBvcnRhbnQgZGVmYXVsdCBzZXR0aW5ncyBvciBjYWxpYnJhdGlvbgp2YWx1ZXMgdG8gYmUgbG9z
dD8KClsgLi4uIF0KCj4gKwlmb3IgKGkgPSAwOyBpIDwgbGctPmRhdGEtPmxhbmVzOyBpKyspIHsK
PiArCQl2b2lkIF9faW9tZW0gKmxhbmVfYmFzZSA9IGxnLT5iYXNlICsgbGctPmRhdGEtPm9mZnNl
dHNbaV07Cj4gKwo+ICsJCXZhbCA9IHJlYWRsKGxhbmVfYmFzZSArIFBDSUVfUlhfUkVHMSk7Cj4g
KwkJdmFsID0gdTMyX3JlcGxhY2VfYml0cyh2YWwsIDAsIDB4Myk7Cj4gKwkJd3JpdGVsKHZhbCwg
bGFuZV9iYXNlICsgUENJRV9SWF9SRUcxKTsKPiArCX0KPiArCj4gKwl2YWwgPSByZWFkbChwaHlf
YmFzZSArIFBIWV9QTExfUkVHMik7Cj4gKwl2YWwgfD0gQklUKDIwKTsKPiArCXdyaXRlbCh2YWws
IHBoeV9iYXNlICsgUEhZX1BMTF9SRUcyKTsKPiArCj4gKwkvKiBUaGUgd3JpdGUgaXMgbmVlZGVk
IGFzIGNsb2NrIHJlcXVpcmVzIHJlbmVnb3RpYXRpb24gKi8KPiArCXZhbCA9IEZJRUxEX1BSRVAo
UENJRV9SWF9SRUZDTEtfTU9ERSwgUENJRV9SWF9SRUZDTEtfTU9ERV9EUklWRVIpIHwKPiArCSAg
ICAgIFBDSUVfUlhfU0VMX1RSSV9DT0RFIHwKPiArCSAgICAgIEZJRUxEX1BSRVAoUENJRV9SWF9M
RUdBQ1ksIFBDSUVfUlhfTEVHQUNZX0RFRkFVTFQpOwo+ICsJd3JpdGVsKHZhbCwgcGh5X2Jhc2Ug
KyBQQ0lFX1JYX1JFRzEpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY2xvYmJlciB0aGUg
ZW50aXJlIFBDSUVfUlhfUkVHMSByZWdpc3RlciBmb3IgbGFuZSAwPwoKVGhlIHByZWNlZGluZyBs
b29wIHBlcmZvcm1zIGEgcmVhZC1tb2RpZnktd3JpdGUgb24gUENJRV9SWF9SRUcxIGZvciBhbGwg
bGFuZXMsCmJ1dCB0aGlzIGRpcmVjdCB3cml0ZWwoKSBvbiBwaHlfYmFzZSAod2hpY2ggcG9pbnRz
IHRvIGxhbmUgMCkgaW52YWxpZGF0ZXMKdGhhdCBwcmV2aW91cyB3b3JrIGFuZCB6ZXJvZXMgb3V0
IGFueSBiaXRzIG5vdCBleHBsaWNpdGx5IHNldCBoZXJlLgoKU2hvdWxkIHRoaXMgYWxzbyB1c2Ug
YSByZWFkLW1vZGlmeS13cml0ZSBvcGVyYXRpb24gdG8gcHJlc2VydmUgdGhlIHJlZ2lzdGVyCnN0
YXRlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDcwMzAyMTAyNC40OTU0MzMtMS1pbm9jaGlhbWFAZ21haWwuY29tP3BhcnQ9MgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
