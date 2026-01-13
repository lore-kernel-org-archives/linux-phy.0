Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDCFAD2D109
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8w3UGDUnfgvLG/Sm8jAeu7PGSJXG0efcDSv4FPX33I=; b=f5YaAGvtsW9y4z
	C5UrAWCarhNnwpJnd+kfFERxkDZfJoWlT+YyZTdwWn8fDjskxomqnZ/+OvlwAEEUFMKy4xHssPpck
	vvL3a0XAtb0BC3Uj4XENObi7L9f5nbdWVepRgnQu/Uic6li5BNGD+DqkNzboyFYxTmMP4+H14aGil
	d/8T5H+bTGY9nN50xdiqRqYF9/NsXfaDx2YuHSMB4XrdE9ePe4bckk5j9Kyagwr0xZQaCporM6FU4
	uGHTyA4MfYpwD2xm68975jdszSx4tP1rM2lfnBnwYCzFFoZwCrxwSusnqmzgr9cUnlP9UX8Qoniu6
	N7NWRiAjsKDkoQMfc6kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff1O-00000007CXK-2rXx;
	Tue, 13 Jan 2026 14:05:22 +0000
Received: from smtp1.tecnico.ulisboa.pt ([2001:690:2100:1::15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff1M-00000007CWR-3Hyn
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 14:05:22 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id C1EEC600140C;
	Tue, 13 Jan 2026 14:05:18 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id DD9nfRmJoBh4; Tue, 13 Jan 2026 14:05:16 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 3E9986002991;
	Tue, 13 Jan 2026 14:05:16 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1768313116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z7n8wksu/3JrjxuLRTNuz4hWvUhYdtUmBvv385ffnm4=;
	b=oRAIoYSsggSbtT8Ueiu2Wq9NdoWTRI4WhmrIhareLtskg9A0rgMGybNYUWWXIbG/OYP7Do
	F66//LidT8oTWgQCR5JlFT61WMSnDNil4ZDF0TACJBl5fuvdMpCwFQUKqUK3eqd40Xmy/i
	CQbKT8lT5u1DvrIqzrjdTCMmCPygdZhWrUytDwps1ilZts3DR5H2rEJmCeFNry2OigE770
	QoM81tnzPQbb5+3Ik/lOoRZF2VRlW7krpLLN/42OzPptYLcRrHbAUIlr9kMCudrGJt/AD5
	rFXhDzvTzbGMD3LN6ynFyJhE7eNq49O3NYg/xq3s7h5MJxFz4WapZlfEJ/1foA==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id D022F36008A;
	Tue, 13 Jan 2026 14:05:15 +0000 (WET)
Message-ID: <ae36f759-e889-4371-8c08-b8ffd1b69250@tecnico.ulisboa.pt>
Date: Tue, 13 Jan 2026 14:05:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
To: Jon Hunter <jonathanh@nvidia.com>, Mathias Nyman
 <mathias.nyman@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
 <86cd3ff0-1609-44cb-911c-f0e97652ca1b@nvidia.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <86cd3ff0-1609-44cb-911c-f0e97652ca1b@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_060521_105113_C818A2F7 
X-CRM114-Status: GOOD (  27.82  )
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

CgpPbiAxLzEzLzI2IDExOjU2LCBKb24gSHVudGVyIHdyb3RlOgo+IAo+IE9uIDA0LzEyLzIwMjUg
MjE6MjcsIERpb2dvIEl2byB3cm90ZToKPj4gVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2Yg
VVNCMiByb2xlIHN3aXRjaGluZyBvbiBUZWdyYSByZWxpZXMgb24KPj4gd2hpY2hldmVyIHRoZSBw
cmV2aW91cyBVU0IgY29udHJvbGxlciBkcml2ZXIgd2FzIHVzaW5nIHRoZSBQSFkgdG8gZmlyc3QK
Pj4gInlpZWxkIiBpdCBiYWNrIHRvIFVTQl9ST0xFX05PTkUgYmVmb3JlIHRoZSBuZXh0IGNvbnRy
b2xsZXIgY29uZmlndXJlcwo+PiBpdCBmb3IgdGhlIG5ldyByb2xlLiBIb3dldmVyLCBubyBtZWNo
YW5pc20gdG8gZ3VhcmFudGVlIHRoaXMgb3JkZXJpbmcKPj4gd2FzIGltcGxlbWVudGVkLCBhbmQg
Y3VycmVudGx5LCBpbiB0aGUgZ2VuZXJhbCBjYXNlLCB0aGUgY29uZmlndXJhdGlvbgo+PiBmdW5j
dGlvbnMgdGVncmFfeGhjaV9pZF93b3JrKCkgYW5kIHRlZ3JhX3h1ZGNfdXNiX3JvbGVfc3dfd29y
aygpIGVuZCB1cAo+PiBydW5uaW5nIGluIHRoZSBzYW1lIG9yZGVyIHJlZ2FyZGxlc3Mgb2YgdGhl
IHRyYW5zaXRpb24gYmVpbmcgSE9TVC0+REVWSUNFCj4+IG9yIERFVklDRS0+SE9TVCwgbGVhZGlu
ZyB0byBvbmUgb2YgdGhlc2UgdHJhbnNpdGlvbnMgZW5kaW5nIHVwIGluIGEKPj4gbm9uLXdvcmtp
bmcgc3RhdGUgZHVlIHRvIHRoZSBuZXcgY29uZmlndXJhdGlvbiBiZWluZyBjbG9iYmVyZWQgYnkg
dGhlCj4+IHByZXZpb3VzIGNvbnRyb2xsZXIgZHJpdmVyIHNldHRpbmcgVVNCX1JPTEVfTk9ORSBh
ZnRlciB0aGUgZmFjdC4KPj4KPj4gRml4IHRoaXMgYnkgaW50cm9kdWNpbmcgYSBoZWxwZXIgdGhh
dCB3YWl0cyBmb3IgdGhlIFVTQjIgcG9ydOKAmXMgY3VycmVudAo+PiByb2xlIHRvIGJlY29tZSBV
U0JfUk9MRV9OT05FIGFuZCBhZGQgaXQgaW4gdGhlIGNvbmZpZ3VyYXRpb24gZnVuY3Rpb25zCj4+
IGFib3ZlIGJlZm9yZSBzZXR0aW5nIHRoZSByb2xlIHRvIGVpdGhlciBVU0JfUk9MRV9IT1NUIG9y
Cj4+IFVTQl9ST0xFX0RFVklDRS4gVGhlIHNwZWNpZmljIHBhcmFtZXRlcnMgb2YgdGhlIGhlbHBl
ciBmdW5jdGlvbiBhcmUKPj4gY2hvaWNlcyB0aGF0IHNlZW0gcmVhc29uYWJsZSBpbiBteSB0ZXN0
aW5nIGFuZCBoYXZlIG5vIG90aGVyIGJhc2lzLgo+IAo+IFRoaXMgaXMgbm8gaW5mb3JtYXRpb24g
aGVyZSBhYm91dCB3aHkgNiAqIDUwLzYwdXMgaXMgZGVlbWVkIHRvIGJlIAo+IHN1ZmZpY2llbnQ/
IE1heSBiZSBpdCBpcywgYnV0IGEgY29tbWVudCB3b3VsZCBiZSBuaWNlLgo+IAo+PiBUaGlzIHdh
cyB0ZXN0ZWQgb24gYSBUZWdyYTIxMCBwbGF0Zm9ybSAoU21hdWcpLiBIb3dldmVyLCBkdWUgdG8g
dGhlIAo+PiBzaW1pbGFyCj4+IGFwcHJvYWNoIGluIFRlZ3JhMTg2IGl0IGlzIGxpa2VseSB0aGF0
IG5vdCBvbmx5IHRoaXMgcHJvYmxlbSBleGlzdHMgdGhlcmUKPj4gYnV0IHRoYXQgdGhpcyBwYXRj
aCBhbHNvIGZpeGVzIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEaW9nbyBJdm8gPGRpb2dvLml2
b0B0ZWNuaWNvLnVsaXNib2EucHQ+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
YyAgICAgICAgICAgIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKPj4gICBkcml2ZXJzL3Vz
Yi9nYWRnZXQvdWRjL3RlZ3JhLXh1ZGMuYyB8ICA0ICsrKysKPj4gICBkcml2ZXJzL3VzYi9ob3N0
L3hoY2ktdGVncmEuYyAgICAgICB8IDE1ICsrKysrKysrKystLS0tLQo+PiAgIGluY2x1ZGUvbGlu
dXgvcGh5L3RlZ3JhL3h1c2IuaCAgICAgIHwgIDEgKwo+PiAgIDQgZmlsZXMgY2hhbmdlZCwgMzgg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3RlZ3JhL3h1c2IuYyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwo+PiBpbmRleCBjODlk
Zjk1YWE2Y2EuLmUwNWMzZjJkMTQyMSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvdGVncmEv
eHVzYi5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwo+PiBAQCAtNzQwLDYgKzc0
MCwyOSBAQCBzdGF0aWMgdm9pZCAKPj4gdGVncmFfeHVzYl9wYXJzZV91c2Jfcm9sZV9kZWZhdWx0
X21vZGUoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCkKPj4gICAgICAgfQo+PiAgIH0KPj4g
K2Jvb2wgdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25vbmUoc3RydWN0IHRlZ3JhX3h1
c2JfcGFkY3RsIAo+PiAqcGFkY3RsLCBpbnQgaW5kZXgpCj4+ICt7Cj4+ICsgICAgc3RydWN0IHRl
Z3JhX3h1c2JfdXNiMl9wb3J0ICp1c2IyID0gCj4+IHRlZ3JhX3h1c2JfZmluZF91c2IyX3BvcnQo
cGFkY3RsLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbmRleCk7
Cj4+ICsgICAgaW50IHJldHJpZXMgPSA1Owo+PiArCj4+ICsgICAgaWYgKCF1c2IyKSB7Cj4+ICsg
ICAgICAgIGRldl9lcnIoJnVzYjItPmJhc2UuZGV2LCAibm8gcG9ydCBmb3VuZCBmb3IgVVNCMiBs
YW5lICV1XG4iLCAKPj4gaW5kZXgpOwo+IAo+IFRoaXMgYXBwZWFycyB0byBiZSBhIGJ1Zy4gSWYg
IXVzYjIgdGhlbiBkZXJlZmVyZW5jZSB1c2IyLT5iYXNlIGFueXdheS4KCkl0IGlzIGEgYnVnLCB3
aWxsIGZpeCBpbiB2Mi4KCj4+ICsgICAgICAgIHJldHVybiBmYWxzZTsKPj4gKyAgICB9Cj4+ICsK
Pj4gKyAgICBkbyB7Cj4+ICsgICAgICAgIGlmICh1c2IyLT5yb2xlID09IFVTQl9ST0xFX05PTkUp
Cj4+ICsgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKPj4gKwo+PiArICAgICAgICB1c2xlZXBfcmFu
Z2UoNTAsIDYwKTsKPj4gKyAgICB9IHdoaWxlIChyZXRyaWVzLS0pOwo+PiArCj4+ICsgICAgZGV2
X2VycigmdXNiMi0+YmFzZS5kZXYsICJ0aW1lZCBvdXQgd2FpdGluZyBmb3IgVVNCX1JPTEVfTk9O
RSIpOwo+PiArCj4+ICsgICAgcmV0dXJuIGZhbHNlOwo+PiArfQo+PiArCj4+ICAgc3RhdGljIGlu
dCB0ZWdyYV94dXNiX3VzYjJfcG9ydF9wYXJzZV9kdChzdHJ1Y3QgdGVncmFfeHVzYl91c2IyX3Bv
cnQgCj4+ICp1c2IyKQo+PiAgIHsKPj4gICAgICAgc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9y
dCA9ICZ1c2IyLT5iYXNlOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90
ZWdyYS14dWRjLmMgYi9kcml2ZXJzL3VzYi9nYWRnZXQvIAo+PiB1ZGMvdGVncmEteHVkYy5jCj4+
IGluZGV4IDBjMzhmYzM3YjZlNi4uNzJkNzI1NjU5ZTVmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3VzYi9nYWRnZXQvdWRjL3RlZ3JhLXh1ZGMuYwo+PiArKysgYi9kcml2ZXJzL3VzYi9nYWRnZXQv
dWRjL3RlZ3JhLXh1ZGMuYwo+PiBAQCAtNjk4LDggKzY5OCwxMiBAQCBzdGF0aWMgdm9pZCB0ZWdy
YV94dWRjX3Jlc3RvcmVfcG9ydF9zcGVlZChzdHJ1Y3QgCj4+IHRlZ3JhX3h1ZGMgKnh1ZGMpCj4+
ICAgc3RhdGljIHZvaWQgdGVncmFfeHVkY19kZXZpY2VfbW9kZV9vbihzdHJ1Y3QgdGVncmFfeHVk
YyAqeHVkYykKPj4gICB7Cj4+ICsgICAgaW50IHBvcnQgPSB0ZWdyYV94dXNiX3BhZGN0bF9nZXRf
cG9ydF9udW1iZXIoeHVkYy0+Y3Vycl91dG1pX3BoeSk7Cj4+ICAgICAgIGludCBlcnI7Cj4+ICsg
ICAgaWYgKCF0ZWdyYV94dXNiX3VzYjJfcG9ydF93YWl0X3JvbGVfbm9uZSh4dWRjLT5wYWRjdGws
IHBvcnQpKQo+PiArICAgICAgICByZXR1cm47Cj4+ICsKPj4gICAgICAgcG1fcnVudGltZV9nZXRf
c3luYyh4dWRjLT5kZXYpOwo+PiAgICAgICB0ZWdyYV9waHlfeHVzYl91dG1pX3BhZF9wb3dlcl9v
bih4dWRjLT5jdXJyX3V0bWlfcGh5KTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2hvc3Qv
eGhjaS10ZWdyYS5jIGIvZHJpdmVycy91c2IvaG9zdC94aGNpLSAKPj4gdGVncmEuYwo+PiBpbmRl
eCA5YzY5ZmNjZGM2ZTguLjk5NDQ1OTMxNjZhMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy91c2Iv
aG9zdC94aGNpLXRlZ3JhLmMKPj4gKysrIGIvZHJpdmVycy91c2IvaG9zdC94aGNpLXRlZ3JhLmMK
Pj4gQEAgLTEzNTIsMTggKzEzNTIsMjMgQEAgc3RhdGljIHZvaWQgdGVncmFfeGhjaV9pZF93b3Jr
KHN0cnVjdCAKPj4gd29ya19zdHJ1Y3QgKndvcmspCj4+ICAgICAgIHN0cnVjdCB0ZWdyYV94dXNi
X21ib3hfbXNnIG1zZzsKPj4gICAgICAgc3RydWN0IHBoeSAqcGh5ID0gdGVncmFfeHVzYl9nZXRf
cGh5KHRlZ3JhLCAidXNiMiIsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRlZ3Jh
LT5vdGdfdXNiMl9wb3J0KTsKPj4gKyAgICBlbnVtIHVzYl9yb2xlIHJvbGUgPSBVU0JfUk9MRV9O
T05FOwo+PiAgICAgICB1MzIgc3RhdHVzOwo+PiAgICAgICBpbnQgcmV0Owo+PiAgICAgICBkZXZf
ZGJnKHRlZ3JhLT5kZXYsICJob3N0IG1vZGUgJXNcbiIsIHN0cl9vbl9vZmYodGVncmEtIAo+PiA+
aG9zdF9tb2RlKSk7Cj4+IC0gICAgbXV0ZXhfbG9jaygmdGVncmEtPmxvY2spOwo+IAo+IEV4dHJh
IGJsYW5rIGxpbmUgaGVyZS4KCldpbGwgZml4IGluIHYyLgoKPj4gLSAgICBpZiAodGVncmEtPmhv
c3RfbW9kZSkKPj4gLSAgICAgICAgcGh5X3NldF9tb2RlX2V4dChwaHksIFBIWV9NT0RFX1VTQl9P
VEcsIFVTQl9ST0xFX0hPU1QpOwo+PiAtICAgIGVsc2UKPj4gLSAgICAgICAgcGh5X3NldF9tb2Rl
X2V4dChwaHksIFBIWV9NT0RFX1VTQl9PVEcsIFVTQl9ST0xFX05PTkUpOwo+PiArICAgIGlmICh0
ZWdyYS0+aG9zdF9tb2RlKSB7Cj4+ICsgICAgICAgIGlmICghdGVncmFfeHVzYl91c2IyX3BvcnRf
d2FpdF9yb2xlX25vbmUodGVncmEtPnBhZGN0bCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdGVncmEtPm90Z191c2IyX3BvcnQpKQo+PiArICAgICAgICAgICAgcmV0dXJuOwo+PiAr
ICAgICAgICByb2xlID0gVVNCX1JPTEVfSE9TVDsKPj4gKyAgICB9Cj4+ICsKPj4gKyAgICBtdXRl
eF9sb2NrKCZ0ZWdyYS0+bG9jayk7Cj4+ICsgICAgcGh5X3NldF9tb2RlX2V4dChwaHksIFBIWV9N
T0RFX1VTQl9PVEcsIHJvbGUpOwo+PiAgICAgICBtdXRleF91bmxvY2soJnRlZ3JhLT5sb2NrKTsK
PiAKPiBJIGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIHdoeSB5b3Ugb3B0ZWQgdG8gaW1wbGVtZW50
IGl0IHRoaXMgd2F5IGFyb3VuZCAKPiBhbmQgbm90IGFkZCB0aGUgd2FpdCBsb29wIGFmdGVyIHNl
dHRpbmcgdG8gdGhlIG1vZGUgdG8gVVNCX1JPTEVfTk9ORSBpbiAKPiB0aGUgb3JpZ2luYWwgY29k
ZSBhbGwgd2l0aGluIHRoZSBjb250ZXh0IG9mIHRoZSBtdXRleD8KCkkgZGlkIHRoYXQgdG8gbWlu
aW1pemUgdGhlIGFtb3VudCBvZiB0aW1lIHdlIHdhaXQgd2hpbGUgaG9sZGluZyB0aGUKbXV0ZXgs
IGFzIHdlIGNhbiBub3cgcG9zc2libHkgd2FpdCBhIHNpZ25pZmljYW50IGFtb3VudCBvZiB0aW1l
IGZvciB0aGUKcm9sZSBzd2l0Y2guIElzIHRoaXMgYW4gdW5uZWNjZXNzYXJ5IG9wdGltaXphdGlv
bj8KClRoYW5rcywKRGlvZ28KCj4gVGhhbmtzCj4gSm9uCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
