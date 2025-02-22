Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15522C021B2
	for <linux-phy@archiver.kernel.org>; Sat, 22 Feb 2025 11:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9C+Ye7PQC1Nnav51BaW4/OzDVBUinK2ieBJmBAbuu1Y=; b=jb68O8qyTmfR1E
	8qLVwa4dHr8uPt3bFFtIG50GC9MSeJ5ZbtygHV8INkTIumNUjVCNeT9nnPZ/Wf4qhVCl9S8H4Vir3
	RMmnNHO7hokExquB5vqsw7GGvsMbeRNgYYEYZ/4ai3/ulLMc8OIYGX71TPUxD/xb7nQeuCRAgg8us
	PxH0UGHXjz6NPbUGjRHuavvhJoYCGqo65MsZ21izhxxmYDrRiz5BYDEqjrONjO56sdX4lVGq6iSeU
	cEGz7ViGYVBNU4Jv1JZiQztuFjDlOLBcBfS7B9YpKRcIZQDNTlcoOsS4QJDdfXHx1vxBzQwmjlyiL
	5NSMbVJdOoGJuGynDjrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlnxP-00000007wN6-3LIk;
	Sat, 22 Feb 2025 11:46:07 +0000
Received: from mail-m49203.qiye.163.com ([45.254.49.203])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlntf-00000007w3p-2lsI;
	Sat, 22 Feb 2025 11:42:17 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id bdb815ed;
	Sat, 22 Feb 2025 19:42:11 +0800 (GMT+08:00)
Message-ID: <cec09e08-253a-4011-8b37-062a492b2166@rock-chips.com>
Date: Sat, 22 Feb 2025 19:42:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/14] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
From: Damon Ding <damon.ding@rock-chips.com>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-9-damon.ding@rock-chips.com>
 <3340006.44csPzL39Z@diego>
 <799ccbd2-0c3b-4a55-b47e-1899975c4020@rock-chips.com>
Content-Language: en-US
In-Reply-To: <799ccbd2-0c3b-4a55-b47e-1899975c4020@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk1KHVZNH0MeGE4aSx5KSR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a952d770b2103a3kunmbdb815ed
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PQg6UQw4HjITHR8BCSwQPEMC
	CjxPCzJVSlVKTE9LSUlPTkhJTExDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSklMNwY+
DKIM-Signature: a=rsa-sha256;
	b=Y92UJFttJrKQq0DuTKRVVl+jI3C1nW3GpfRAsIRUKxxqsqyscny5c+PEGieUuWGzD4GNzWLe0xO9/k8syqOHqQEkoFl2n4g6V2MzTgULPpEqlUwCe8MUMe2kJVx/utZ5QulR+YIRk99rHXSHeiukOBA5kU6+dEtLNKUkmc5NEcA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UGXM61VcEnYUmRYBHrm58jOs9cPBU004JHiH81XeNnI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_034216_223265_730DE5C2 
X-CRM114-Status: GOOD (  13.03  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjAyNS8yLzIyIDE5OjI1LCBEYW1vbiBEaW5nIHdyb3RlOgo+IEhpIEhlaWtvLAo+IAo+IE9u
IDIwMjUvMS8zMSA0OjMzLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gSGkgRGFtb24sCj4+Cj4+
IEFtIERvbm5lcnN0YWcsIDIzLiBKYW51YXIgMjAyNSwgMTE6MDc6NDEgTUVaIHNjaHJpZWIgRGFt
b24gRGluZzoKPj4+IE1vdmUgZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkgYSBsaXR0bGUg
bGF0ZXIgYW5kIGNvbWJpbmUgaXQgd2l0aAo+Pj4gY29tcG9uZW50X2FkZCgpIGludG8gYSBuZXcg
ZnVuY3Rpb24gcm9ja2NoaXBfZHBfbGlua19wYW5lbCgpLiBUaGUgCj4+PiBmdW5jdGlvbgo+Pj4g
d2lsbCBzZXJ2ZSBhcyBkb25lX3Byb2JpbmcoKSBjYWxsYmFjayBvZiBkZXZtX29mX2RwX2F1eF9w
b3B1bGF0ZV9idXMoKSwKPj4+IGFpZGluZyB0byBzdXBwb3J0IGZvciBvYnRhaW5pbmcgdGhlIGVE
UCBwYW5lbCB2aWEgdGhlIERQIEFVWCBidXMuCj4+Pgo+Pj4gSWYgZmFpbGVkIHRvIGdldCB0aGUg
cGFuZWwgZnJvbSB0aGUgRFAgQVVYIGJ1cywgaXQgd2lsbCB0aGVuIHRyeSB0aGUgCj4+PiBvdGhl
cgo+Pj4gd2F5IHRvIGdldCBwYW5lbCBpbmZvcm1hdGlvbiB0aHJvdWdoIHRoZSBwbGF0Zm9ybSBi
dXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNo
aXBzLmNvbT4KPj4+Cj4+PiAtLS0KPj4KPj4+IEBAIC00NTAsOSArNDYxLDE3IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfZHBfcHJvYmUoc3RydWN0IAo+Pj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4gwqDCoMKgwqDCoCBpZiAoSVNfRVJSKGRwLT5hZHApKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiBQVFJfRVJSKGRwLT5hZHApOwo+Pj4gLcKgwqDCoCByZXQgPSBjb21wb25lbnRfYWRk
KGRldiwgJnJvY2tjaGlwX2RwX2NvbXBvbmVudF9vcHMpOwo+Pj4gLcKgwqDCoCBpZiAocmV0KQo+
Pj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiArwqDCoMKgIHJldCA9IGRldm1fb2Zf
ZHBfYXV4X3BvcHVsYXRlX2J1cyhhbmFsb2dpeF9kcF9nZXRfYXV4KGRwLT5hZHApLCAKPj4+IHJv
Y2tjaGlwX2RwX2xpbmtfcGFuZWwpOwo+Pgo+PiBUaGlzIGNhdXNlcyBhbiB1bmRlZmluZWQtcmVm
ZXJlbmNlIGVycm9yLCBzbyB5b3UgcHJvYmFibHkgbmVlZCAKPj4gc29tZXRoaW5nIGxpa2U6Cj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZl
cnMvZ3B1L2RybS8gCj4+IHJvY2tjaGlwL0tjb25maWcKPj4gaW5kZXggZjljYmJiNDBiMzZmLi5m
YTk0NmE4MDk4NTggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29u
ZmlnCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4+IEBAIC04LDYg
KzgsNyBAQCBjb25maWcgRFJNX1JPQ0tDSElQCj4+IMKgwqDCoMKgwqDCoMKgwqAgc2VsZWN0IERS
TV9QQU5FTAo+PiDCoMKgwqDCoMKgwqDCoMKgIHNlbGVjdCBWSURFT01PREVfSEVMUEVSUwo+PiDC
oMKgwqDCoMKgwqDCoMKgIHNlbGVjdCBEUk1fQU5BTE9HSVhfRFAgaWYgUk9DS0NISVBfQU5BTE9H
SVhfRFAKPj4gK8KgwqDCoMKgwqDCoCBzZWxlY3QgRFJNX0RJU1BMQVlfRFBfQVVYX0JVUyBpZiBS
T0NLQ0hJUF9BTkFMT0dJWF9EUAo+PiDCoMKgwqDCoMKgwqDCoMKgIHNlbGVjdCBEUk1fRFdfSERN
SSBpZiBST0NLQ0hJUF9EV19IRE1JCj4+IMKgwqDCoMKgwqDCoMKgwqAgc2VsZWN0IERSTV9EV19I
RE1JX1FQIGlmIFJPQ0tDSElQX0RXX0hETUlfUVAKPj4gwqDCoMKgwqDCoMKgwqDCoCBzZWxlY3Qg
RFJNX0RXX01JUElfRFNJIGlmIFJPQ0tDSElQX0RXX01JUElfRFNJCj4+Cj4+Cj4+Cj4+Cj4+Cj4g
Cj4gWWVhaCwgSSB3aWxsIGFkZCBhIG5ldyBzZXBhcmF0ZSBjb21taXQgdG8gZG8gaXQgaW4gdGhl
IG5leHQgdmVyc2lvbi4KPgoKT2guLi5JIGJlbGlldmUgaXQgd291bGQgYmUgYmV0dGVyIHRvIGRv
IGl0IGRpcmVjdGx5IGluIHRoaXMgcGF0Y2guIDstKQoKPiBCZXN0IHJlZ2FyZHMKPiBEYW1vbgo+
IAo+IAo+IAoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
