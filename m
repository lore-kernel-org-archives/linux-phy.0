Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 068A3D41170
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 11:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YG16RhygtwBhdej1i1EdCRdZJkAKKBttPvztJRwoaOk=; b=wD/gLuk7esSjro
	IHNwZ1WMIY+VvHjcjiGggGtMLIMLYctM17zWpeFE8Qz4xbkpAzrWBp6WFWa1SQddDQH8e6vAwKI9k
	VGuaksMDmQv1BFlUfR2jaFgt+6Pg+W6GIGQz1e0kRcbheu18Q3pVHUqIvpEkeEczFy7JCrZs9f9gw
	G4S6cEc0xn47HpJq3y7AhU4x+aZx0C+ZAAS7XJONF62T2453MPec6/JKiELSyCucFRdSXdJhlfuLK
	swA6+D3vAtpsP3LypGku98z+mAd/B+gxdVRguVU6StQNI3Ohh0+5/m9qs61hBV8bjdDWD7crpSGSa
	ySV5ONgOPUmqxZpMcqyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgLBd-0000000CC8Q-3CqP;
	Thu, 15 Jan 2026 11:06:45 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgLBY-0000000CC20-2G5H
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 11:06:44 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 0369B60020FD;
	Thu, 15 Jan 2026 11:06:18 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with UTF8LMTP id 708zXKDTNJBG; Thu, 15 Jan 2026 11:06:15 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id EA90D60029B2;
	Thu, 15 Jan 2026 11:06:14 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1768475175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jEQcNg981IwiLpKhWNHJ64lUwtWIg3yqQPnV2crKiTw=;
	b=b+J09VjsYwCjEwN2kOXDoiFG4PNEOB/cVc/kUNFA9+7MU9kwP/Y6tKTvMOPltkeWAVo0aq
	orJDLu9g+MYTWnXNHvKcp+HIcqy70+NmDL0O3VEth7PT3K3weUXTNgz6zNjVoHXHHSXvc/
	21dAttnnoMLJwKRWcAq7ohcSlnRSQPevBLzpPOrNdQbkQQ7i8AlBXn7Ljjx1b7M6/DQ6rc
	6gnABopFYkwKRbUQ21rfACwzjP7lH4f6IGdIbfWIceT1VogxiHrcyyiTpWsXb48J6WBUgO
	OkoccAlf97+ORIqOgBPg8Jm3eOVtlAJHtQ/s2QuNg7HxDPlCvSTqxSWrxaUpwA==
Received: from [IPV6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id D99A5360030;
	Thu, 15 Jan 2026 11:06:12 +0000 (WET)
Message-ID: <64c02ad1-9aac-488b-a846-fcb59ffd3f54@tecnico.ulisboa.pt>
Date: Thu, 15 Jan 2026 11:06:11 +0000
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
X-CRM114-CacheID: sfid-20260115_030641_149705_FAC7397E 
X-CRM114-Status: GOOD (  33.09  )
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

SGkgSm9uYXRoYW4sCgpPbiAxLzEzLzI2IDExOjU2LCBKb24gSHVudGVyIHdyb3RlOgo+IAo+IE9u
IDA0LzEyLzIwMjUgMjE6MjcsIERpb2dvIEl2byB3cm90ZToKPj4gVGhlIGN1cnJlbnQgaW1wbGVt
ZW50YXRpb24gb2YgVVNCMiByb2xlIHN3aXRjaGluZyBvbiBUZWdyYSByZWxpZXMgb24KPj4gd2hp
Y2hldmVyIHRoZSBwcmV2aW91cyBVU0IgY29udHJvbGxlciBkcml2ZXIgd2FzIHVzaW5nIHRoZSBQ
SFkgdG8gZmlyc3QKPj4gInlpZWxkIiBpdCBiYWNrIHRvIFVTQl9ST0xFX05PTkUgYmVmb3JlIHRo
ZSBuZXh0IGNvbnRyb2xsZXIgY29uZmlndXJlcwo+PiBpdCBmb3IgdGhlIG5ldyByb2xlLiBIb3dl
dmVyLCBubyBtZWNoYW5pc20gdG8gZ3VhcmFudGVlIHRoaXMgb3JkZXJpbmcKPj4gd2FzIGltcGxl
bWVudGVkLCBhbmQgY3VycmVudGx5LCBpbiB0aGUgZ2VuZXJhbCBjYXNlLCB0aGUgY29uZmlndXJh
dGlvbgo+PiBmdW5jdGlvbnMgdGVncmFfeGhjaV9pZF93b3JrKCkgYW5kIHRlZ3JhX3h1ZGNfdXNi
X3JvbGVfc3dfd29yaygpIGVuZCB1cAo+PiBydW5uaW5nIGluIHRoZSBzYW1lIG9yZGVyIHJlZ2Fy
ZGxlc3Mgb2YgdGhlIHRyYW5zaXRpb24gYmVpbmcgSE9TVC0+REVWSUNFCj4+IG9yIERFVklDRS0+
SE9TVCwgbGVhZGluZyB0byBvbmUgb2YgdGhlc2UgdHJhbnNpdGlvbnMgZW5kaW5nIHVwIGluIGEK
Pj4gbm9uLXdvcmtpbmcgc3RhdGUgZHVlIHRvIHRoZSBuZXcgY29uZmlndXJhdGlvbiBiZWluZyBj
bG9iYmVyZWQgYnkgdGhlCj4+IHByZXZpb3VzIGNvbnRyb2xsZXIgZHJpdmVyIHNldHRpbmcgVVNC
X1JPTEVfTk9ORSBhZnRlciB0aGUgZmFjdC4KPj4KPj4gRml4IHRoaXMgYnkgaW50cm9kdWNpbmcg
YSBoZWxwZXIgdGhhdCB3YWl0cyBmb3IgdGhlIFVTQjIgcG9ydOKAmXMgY3VycmVudAo+PiByb2xl
IHRvIGJlY29tZSBVU0JfUk9MRV9OT05FIGFuZCBhZGQgaXQgaW4gdGhlIGNvbmZpZ3VyYXRpb24g
ZnVuY3Rpb25zCj4+IGFib3ZlIGJlZm9yZSBzZXR0aW5nIHRoZSByb2xlIHRvIGVpdGhlciBVU0Jf
Uk9MRV9IT1NUIG9yCj4+IFVTQl9ST0xFX0RFVklDRS4gVGhlIHNwZWNpZmljIHBhcmFtZXRlcnMg
b2YgdGhlIGhlbHBlciBmdW5jdGlvbiBhcmUKPj4gY2hvaWNlcyB0aGF0IHNlZW0gcmVhc29uYWJs
ZSBpbiBteSB0ZXN0aW5nIGFuZCBoYXZlIG5vIG90aGVyIGJhc2lzLgo+IAo+IFRoaXMgaXMgbm8g
aW5mb3JtYXRpb24gaGVyZSBhYm91dCB3aHkgNiAqIDUwLzYwdXMgaXMgZGVlbWVkIHRvIGJlIAo+
IHN1ZmZpY2llbnQ/IE1heSBiZSBpdCBpcywgYnV0IGEgY29tbWVudCB3b3VsZCBiZSBuaWNlLgoK
SSBtaXNzZWQgdGhpcyByZXZpZXcgY29tbWVudCBhbmQgSSdtIG5vdCBzdXJlIHdoYXQgeW91IG1l
YW4gaGVyZS4gRG8geW91CndhbnQgbWUgdG8gY29tbWVudCBvbiB0aGUgY29tbWl0IG1lc3NhZ2Ug
b24gaG93IEkgY2hvc2UgdGhlc2UKcGFyYW1ldGVycz8gSWYgc28gaXQncyBhcyBzdGF0ZWQgaW4g
dGhlIGN1cnJlbnQgbWVzc2FnZSwgSSBzaW1wbHkgdGVzdGVkCndpdGggdGhlc2UgcGFyYW1ldGVy
cyBhbmQgaXQgd29ya2VkIGFuZCBJIHJlYWxseSBoYXZlIG5vIGJldHRlciBiYXNpcwpmb3IgY2hv
b3NpbmcgdGhlbS4gSWYgeW91IG1lYW4gYWRkaW5nIGEgY29tbWVudCBpbiB0aGUgY29kZSBJIGNh
biBkbwp0aGF0IGZvciB2Mi4KClRoYW5rcywKRGlvZ28KCj4+IFRoaXMgd2FzIHRlc3RlZCBvbiBh
IFRlZ3JhMjEwIHBsYXRmb3JtIChTbWF1ZykuIEhvd2V2ZXIsIGR1ZSB0byB0aGUgCj4+IHNpbWls
YXIKPj4gYXBwcm9hY2ggaW4gVGVncmExODYgaXQgaXMgbGlrZWx5IHRoYXQgbm90IG9ubHkgdGhp
cyBwcm9ibGVtIGV4aXN0cyB0aGVyZQo+PiBidXQgdGhhdCB0aGlzIHBhdGNoIGFsc28gZml4ZXMg
aXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERpb2dvIEl2byA8ZGlvZ28uaXZvQHRlY25pY28udWxp
c2JvYS5wdD4KPj4gLS0tCj4+ICAgZHJpdmVycy9waHkvdGVncmEveHVzYi5jICAgICAgICAgICAg
fCAyMyArKysrKysrKysrKysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMvdXNiL2dhZGdldC91ZGMv
dGVncmEteHVkYy5jIHwgIDQgKysrKwo+PiAgIGRyaXZlcnMvdXNiL2hvc3QveGhjaS10ZWdyYS5j
ICAgICAgIHwgMTUgKysrKysrKysrKy0tLS0tCj4+ICAgaW5jbHVkZS9saW51eC9waHkvdGVncmEv
eHVzYi5oICAgICAgfCAgMSArCj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVz
Yi5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4+IGluZGV4IGM4OWRmOTVhYTZjYS4uZTA1
YzNmMmQxNDIxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPj4gKysr
IGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4+IEBAIC03NDAsNiArNzQwLDI5IEBAIHN0YXRp
YyB2b2lkIAo+PiB0ZWdyYV94dXNiX3BhcnNlX3VzYl9yb2xlX2RlZmF1bHRfbW9kZShzdHJ1Y3Qg
dGVncmFfeHVzYl9wb3J0ICpwb3J0KQo+PiAgICAgICB9Cj4+ICAgfQo+PiArYm9vbCB0ZWdyYV94
dXNiX3VzYjJfcG9ydF93YWl0X3JvbGVfbm9uZShzdHJ1Y3QgdGVncmFfeHVzYl9wYWRjdGwgCj4+
ICpwYWRjdGwsIGludCBpbmRleCkKPj4gK3sKPj4gKyAgICBzdHJ1Y3QgdGVncmFfeHVzYl91c2Iy
X3BvcnQgKnVzYjIgPSAKPj4gdGVncmFfeHVzYl9maW5kX3VzYjJfcG9ydChwYWRjdGwsCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluZGV4KTsKPj4gKyAgICBpbnQg
cmV0cmllcyA9IDU7Cj4+ICsKPj4gKyAgICBpZiAoIXVzYjIpIHsKPj4gKyAgICAgICAgZGV2X2Vy
cigmdXNiMi0+YmFzZS5kZXYsICJubyBwb3J0IGZvdW5kIGZvciBVU0IyIGxhbmUgJXVcbiIsIAo+
PiBpbmRleCk7Cj4gCj4gVGhpcyBhcHBlYXJzIHRvIGJlIGEgYnVnLiBJZiAhdXNiMiB0aGVuIGRl
cmVmZXJlbmNlIHVzYjItPmJhc2UgYW55d2F5Lgo+IAo+IAo+PiArICAgICAgICByZXR1cm4gZmFs
c2U7Cj4+ICsgICAgfQo+PiArCj4+ICsgICAgZG8gewo+PiArICAgICAgICBpZiAodXNiMi0+cm9s
ZSA9PSBVU0JfUk9MRV9OT05FKQo+PiArICAgICAgICAgICAgcmV0dXJuIHRydWU7Cj4+ICsKPj4g
KyAgICAgICAgdXNsZWVwX3JhbmdlKDUwLCA2MCk7Cj4+ICsgICAgfSB3aGlsZSAocmV0cmllcy0t
KTsKPj4gKwo+PiArICAgIGRldl9lcnIoJnVzYjItPmJhc2UuZGV2LCAidGltZWQgb3V0IHdhaXRp
bmcgZm9yIFVTQl9ST0xFX05PTkUiKTsKPj4gKwo+PiArICAgIHJldHVybiBmYWxzZTsKPj4gK30K
Pj4gKwo+PiAgIHN0YXRpYyBpbnQgdGVncmFfeHVzYl91c2IyX3BvcnRfcGFyc2VfZHQoc3RydWN0
IHRlZ3JhX3h1c2JfdXNiMl9wb3J0IAo+PiAqdXNiMikKPj4gICB7Cj4+ICAgICAgIHN0cnVjdCB0
ZWdyYV94dXNiX3BvcnQgKnBvcnQgPSAmdXNiMi0+YmFzZTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdXNiL2dhZGdldC91ZGMvdGVncmEteHVkYy5jIGIvZHJpdmVycy91c2IvZ2FkZ2V0LyAKPj4g
dWRjL3RlZ3JhLXh1ZGMuYwo+PiBpbmRleCAwYzM4ZmMzN2I2ZTYuLjcyZDcyNTY1OWU1ZiAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMKPj4gKysrIGIv
ZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMKPj4gQEAgLTY5OCw4ICs2OTgsMTIg
QEAgc3RhdGljIHZvaWQgdGVncmFfeHVkY19yZXN0b3JlX3BvcnRfc3BlZWQoc3RydWN0IAo+PiB0
ZWdyYV94dWRjICp4dWRjKQo+PiAgIHN0YXRpYyB2b2lkIHRlZ3JhX3h1ZGNfZGV2aWNlX21vZGVf
b24oc3RydWN0IHRlZ3JhX3h1ZGMgKnh1ZGMpCj4+ICAgewo+PiArICAgIGludCBwb3J0ID0gdGVn
cmFfeHVzYl9wYWRjdGxfZ2V0X3BvcnRfbnVtYmVyKHh1ZGMtPmN1cnJfdXRtaV9waHkpOwo+PiAg
ICAgICBpbnQgZXJyOwo+PiArICAgIGlmICghdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xl
X25vbmUoeHVkYy0+cGFkY3RsLCBwb3J0KSkKPj4gKyAgICAgICAgcmV0dXJuOwo+PiArCj4+ICAg
ICAgIHBtX3J1bnRpbWVfZ2V0X3N5bmMoeHVkYy0+ZGV2KTsKPj4gICAgICAgdGVncmFfcGh5X3h1
c2JfdXRtaV9wYWRfcG93ZXJfb24oeHVkYy0+Y3Vycl91dG1pX3BoeSk7Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEuYyBiL2RyaXZlcnMvdXNiL2hvc3QveGhjaS0g
Cj4+IHRlZ3JhLmMKPj4gaW5kZXggOWM2OWZjY2RjNmU4Li45OTQ0NTkzMTY2YTMgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvdXNiL2hvc3QveGhjaS10ZWdyYS5jCj4+ICsrKyBiL2RyaXZlcnMvdXNi
L2hvc3QveGhjaS10ZWdyYS5jCj4+IEBAIC0xMzUyLDE4ICsxMzUyLDIzIEBAIHN0YXRpYyB2b2lk
IHRlZ3JhX3hoY2lfaWRfd29yayhzdHJ1Y3QgCj4+IHdvcmtfc3RydWN0ICp3b3JrKQo+PiAgICAg
ICBzdHJ1Y3QgdGVncmFfeHVzYl9tYm94X21zZyBtc2c7Cj4+ICAgICAgIHN0cnVjdCBwaHkgKnBo
eSA9IHRlZ3JhX3h1c2JfZ2V0X3BoeSh0ZWdyYSwgInVzYjIiLAo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB0ZWdyYS0+b3RnX3VzYjJfcG9ydCk7Cj4+ICsgICAgZW51bSB1c2Jfcm9s
ZSByb2xlID0gVVNCX1JPTEVfTk9ORTsKPj4gICAgICAgdTMyIHN0YXR1czsKPj4gICAgICAgaW50
IHJldDsKPj4gICAgICAgZGV2X2RiZyh0ZWdyYS0+ZGV2LCAiaG9zdCBtb2RlICVzXG4iLCBzdHJf
b25fb2ZmKHRlZ3JhLSAKPj4gPmhvc3RfbW9kZSkpOwo+PiAtICAgIG11dGV4X2xvY2soJnRlZ3Jh
LT5sb2NrKTsKPiAKPiBFeHRyYSBibGFuayBsaW5lIGhlcmUuCj4gCj4+IC0gICAgaWYgKHRlZ3Jh
LT5ob3N0X21vZGUpCj4+IC0gICAgICAgIHBoeV9zZXRfbW9kZV9leHQocGh5LCBQSFlfTU9ERV9V
U0JfT1RHLCBVU0JfUk9MRV9IT1NUKTsKPj4gLSAgICBlbHNlCj4+IC0gICAgICAgIHBoeV9zZXRf
bW9kZV9leHQocGh5LCBQSFlfTU9ERV9VU0JfT1RHLCBVU0JfUk9MRV9OT05FKTsKPj4gKyAgICBp
ZiAodGVncmEtPmhvc3RfbW9kZSkgewo+PiArICAgICAgICBpZiAoIXRlZ3JhX3h1c2JfdXNiMl9w
b3J0X3dhaXRfcm9sZV9ub25lKHRlZ3JhLT5wYWRjdGwsCj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHRlZ3JhLT5vdGdfdXNiMl9wb3J0KSkKPj4gKyAgICAgICAgICAgIHJldHVybjsK
Pj4gKyAgICAgICAgcm9sZSA9IFVTQl9ST0xFX0hPU1Q7Cj4+ICsgICAgfQo+PiArCj4+ICsgICAg
bXV0ZXhfbG9jaygmdGVncmEtPmxvY2spOwo+PiArICAgIHBoeV9zZXRfbW9kZV9leHQocGh5LCBQ
SFlfTU9ERV9VU0JfT1RHLCByb2xlKTsKPj4gICAgICAgbXV0ZXhfdW5sb2NrKCZ0ZWdyYS0+bG9j
ayk7Cj4gCj4gSSBhbSB0cnlpbmcgdG8gdW5kZXJzdGFuZCB3aHkgeW91IG9wdGVkIHRvIGltcGxl
bWVudCBpdCB0aGlzIHdheSBhcm91bmQgCj4gYW5kIG5vdCBhZGQgdGhlIHdhaXQgbG9vcCBhZnRl
ciBzZXR0aW5nIHRvIHRoZSBtb2RlIHRvIFVTQl9ST0xFX05PTkUgaW4gCj4gdGhlIG9yaWdpbmFs
IGNvZGUgYWxsIHdpdGhpbiB0aGUgY29udGV4dCBvZiB0aGUgbXV0ZXg/Cj4gCj4gVGhhbmtzCj4g
Sm9uCj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
