Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAAFEC44501
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5a8tIEGJ2z58C3d9cWJtgZbK6W67vFLnzW/cFGLmUHw=; b=0Xb6j0lgJ4s4s5
	uH3/o1CcIiLALsuU3DfMTJEe62g3R/sVu5woBV+LVjNA11cZOH+4YYa4T/pHvI9JxU0lwlri1HlWh
	5eccHi7MQzyUfcCx6Szn8ubNPbQKfsLE0JTk2IwJcOtStQujSBg1ewCNvhSaVul6CWn34VEy9QCQd
	apztOrqUvG/BVKJzukqCA0NazHIOBI7smsnY6XQ5IxL7CvjrfkfF/hxyZoV3jINOPOLQ7vaJhYCDj
	IVnz69eo5finRXKBn0RO5dflzrD4s8fbD7M8uWsbFV/hBIdqZLXUcZ5WYAnw1UJUsdArNfAq51ixh
	bfaibjsd1Uz0GMwEHi9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIkG-00000005poE-2Bfz;
	Fri, 10 Jul 2026 21:26:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIkF-00000005pnS-0Uub
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:26:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4814260052;
	Fri, 10 Jul 2026 21:26:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B5551F00AC4;
	Fri, 10 Jul 2026 21:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718810;
	bh=6oLEyjfwgbQLo6NvgxheLP+S+a9hPy/oYsQK0oXEbwk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EzBKBIXurklswjsW01rcCNala6/G/VrPh2Bhf9FrF9cy9CwZRXFKfAbEHyBrXLXSE
	 ycpfV6wrFW65JjJFwBX3VNMFS3IbsavjFrcu/YPqTsTkxoxPJeSr56YFZ3CJ7TfSxd
	 ioy4QZf5HfppebkhJGNWdJkTJj9stcdaK2qsom62jVtWJodq14ezbEIr4j1g802SSn
	 2/bo5BZ3096xNQXl1TKtY9Y7smiSRWAFBPh45fA4XNuiardSx8LcPwOtHQ44YQWR3W
	 E4487kJAj6TsIHDOG6t28czmud4cvgc6vOaLxYdipVG0/XQCN+12F3FC801yu4ChLy
	 P2Ia9kPVf5QDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 31/36] phy: rockchip: usbdp: Add phy reset
 notification support
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-31-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-31-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:26:49 +0000
Message-Id: <20260710212649.7B5551F00AC4@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFNoYXJlZCBgcGh5X3Jl
c2V0X2NvdW50YCBhY3Jvc3MgbXVsdGlwbGUgVVNCMyBwb3J0cyBpbiBEV0MzIG5vdGlmaWVyIGNh
dXNlcyBzdHVjayBgUEhZU09GVFJTVGAgYW5kIHVuYmFsYW5jZWQgUE0gcnVudGltZSByZWZjb3Vu
dHMuCi0tCgotLS0gUGF0Y2ggWzMxXTogW1BBVENIIHYxMiAzMS8zNl0gcGh5OiByb2NrY2hpcDog
dXNiZHA6IEFkZCBwaHkgcmVzZXQgbm90aWZpY2F0aW9uIHN1cHBvcnQgLS0tCmNvbW1pdCBhNjUy
ZDViOTI1MDM5ODljZmQ4NTg5MjVhZWNmODFkMWVkMjkwYmI3CkF1dGhvcjogU2ViYXN0aWFuIFJl
aWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1
c2JkcDogQWRkIHBoeSByZXNldCBub3RpZmljYXRpb24gc3VwcG9ydAogICAgClRoaXMgY29tbWl0
IGFkZHMgc3VwcG9ydCBmb3IgcmVzZXQgbm90aWZpY2F0aW9ucyB0byBncmFjZWZ1bGx5IGhhbmRs
ZQp0aGUgUEhZIGJlaW5nIGRpc2FibGVkLiBJdCBpcyBpbnRlbmRlZCB0byBwcmV2ZW50IGNvcnJ1
cHRpbmcgdGhlCmNvbnRyb2xsZXIncyBpbnRlcm5hbCBzdGF0ZSBhbmQgcmVzb2x2ZSAiY21uIGFu
YSBsY3BsbCBsb2NrIHRpbWVvdXQiCmVycm9ycyBhZnRlciBkZXZpY2UgcmVwbHVncy4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCBhZjkxNWNjMzc3
Mjc1Li4wMzMzZTg0NmNlMzQzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLXVzYmRwLmMKPiBAQCAtMTAwNSwyNCArMTAwNSwzOSBAQCBzdGF0aWMgaW50IHJrX3VkcGh5
X3Bvd2VyX29uKHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHU4IG1vZGUpCj4gIAl9Cj4gIAo+ICAJ
aWYgKHVkcGh5LT5zdGF0dXMgPT0gVURQSFlfTU9ERV9OT05FKSB7Cj4gKwkJcGh5X25vdGlmeV9y
ZXNldCh1ZHBoeS0+cGh5X3UzLCBQSFlfTk9USUZZX1BSRV9SRVNFVCk7Cj4gKwoKW1NldmVyaXR5
OiBIaWdoXQpDYW4gdGhpcyBjYXVzZSBhIHBvcnQgdG8gYmVjb21lIHBlcm1hbmVudGx5IHN0dWNr
IGluIHJlc2V0IGR1ZSB0byBob3cgdGhlCkRXQzMgY29yZSB0cmFja3MgcmVzZXQgbm90aWZpY2F0
aW9ucz8KCkxvb2tpbmcgYXQgdGhlIERXQzMgbm90aWZpZXIgY2FsbGJhY2sgaW4gZHdjM191c2Iz
X3BoeV9ub3RpZnkoKSwgaXQgdXNlcyBhCnNpbmdsZSBjb250cm9sbGVyLXdpZGUgYXRvbWljIGNv
dW50ZXIgKHBoeV9yZXNldF9jb3VudCkgcmF0aGVyIHRoYW4gdHJhY2tpbmcKdGhlIHN0YXRlIG9u
IGEgcGVyLXBvcnQgYmFzaXM6Cgpkcml2ZXJzL3VzYi9kd2MzL2NvcmUuYzpkd2MzX3VzYjNfcGh5
X25vdGlmeSgpIHsKICAgIC4uLgogICAgYXRvbWljX2luYygmZHdjLT5waHlfcmVzZXRfY291bnQp
OwogICAgLi4uCn0KCklmIHRoaXMgUEhZIG5vdGlmaWNhdGlvbiBpcyB0cmlnZ2VyZWQgY29uY3Vy
cmVudGx5IGFjcm9zcyBtdWx0aXBsZSBVU0IzIHBvcnRzLApjb3VsZCB0aGUgc2hhcmVkIGNvdW50
ZXIgbGVhZCB0byB1bmJhbGFuY2VkIHN0YXRlPyBGb3IgZXhhbXBsZSwgaWYgUG9ydCAwCmV4ZWN1
dGVzIFBIWV9OT1RJRllfUFJFX1JFU0VUIHdoaWxlIHRoZSBjb250cm9sbGVyIGlzIHN1c3BlbmRl
ZAoocG1fcnVudGltZV9nZXRfaWZfYWN0aXZlIDw9IDApLCBpdCBza2lwcyB0aGUgc2VxdWVuY2Ug
YW5kIGRvZXMgbm90IGluY3JlbWVudAp0aGUgY291bnRlci4KCklmIHRoZSBjb250cm9sbGVyIHRo
ZW4gd2FrZXMgdXAgYW5kIFBvcnQgMSBjb25jdXJyZW50bHkgZXhlY3V0ZXMKUEhZX05PVElGWV9Q
UkVfUkVTRVQsIGl0IGluY3JlbWVudHMgdGhlIHNoYXJlZCBjb3VudGVyIHRvIDEgYW5kIGFzc2Vy
dHMKUG9ydCAxJ3MgcmVzZXQuCgpXaGVuIFBvcnQgMCBsYXRlciBmaW5pc2hlcyBpdHMgUEhZIHNl
dHVwIGFuZCBleGVjdXRlcyBQSFlfTk9USUZZX1BPU1RfUkVTRVQsCml0IHNlZXMgdGhlIHNoYXJl
ZCBjb3VudGVyIGlzIDEuIERvZXMgaXQgaW5jb3JyZWN0bHkgcHJvY2VzcyB0aGUgcG9zdC1yZXNl
dCwKZGVjcmVtZW50aW5nIHRoZSBjb3VudGVyIHRvIDAgYW5kIGRyb3BwaW5nIGEgUE0gcmVmY291
bnQ/CgpJZiBzbywgd2hlbiBQb3J0IDEgZmluYWxseSBleGVjdXRlcyBQSFlfTk9USUZZX1BPU1Rf
UkVTRVQsIGl0IHdvdWxkIHNlZSB0aGUKc2hhcmVkIGNvdW50ZXIgaXMgMCBhbmQgYWJvcnQgZWFy
bHksIHBvdGVudGlhbGx5IGxlYXZpbmcgUG9ydCAxIHBlcm1hbmVudGx5CnN0dWNrIHdpdGggUEhZ
U09GVFJTVCBhc3NlcnRlZCBhbmQgdW5iYWxhbmNlZCBQTSBydW50aW1lIHJlZmNvdW50cy4KCkRv
ZXMgdGhlIHN0YXRlIG5lZWQgdG8gYmUgdHJhY2tlZCBvbiBhIHBlci1wb3J0IGJhc2lzIGluIHRo
ZSBEV0MzIGNvcmUgYmVmb3JlCmVuYWJsaW5nIHRoZXNlIG5vdGlmaWNhdGlvbnMgZm9yIG11bHRp
LXBvcnQgY29udHJvbGxlcnM/Cgo+ICsJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwg
dHJ1ZSk7Cj4gKwkJdWRlbGF5KDEwKTsKPiArCj4gIAkJcmV0ID0gcmtfdWRwaHlfc2V0dXAodWRw
aHkpOwo+IC0JCWlmIChyZXQpCj4gKwkJaWYgKHJldCkgewo+ICsJCQlwaHlfbm90aWZ5X3Jlc2V0
KHVkcGh5LT5waHlfdTMsIFBIWV9OT1RJRllfUE9TVF9SRVNFVCk7Cj4gIAkJCXJldHVybiByZXQ7
Cj4gKwkJfQo+ICAKPiAgCQlpZiAoIXVkcGh5LT5ocyAmJiB1ZHBoeS0+bW9kZSAmIFVEUEhZX01P
REVfVVNCKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIGZhbHNlKTsKPiAg
CQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IGZhbHNlOwo+ICsKPiArCQlwaHlfbm90aWZ5X3Jl
c2V0KHVkcGh5LT5waHlfdTMsIFBIWV9OT1RJRllfUE9TVF9SRVNFVCk7CgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzEwLXJvY2tj
aGlwLXVzYmRwLWNsZWFudXAtdjEyLTAtOGI0MWE5YTliZWYwQGNvbGxhYm9yYS5jb20/cGFydD0z
MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
