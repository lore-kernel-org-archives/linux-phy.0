Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D11C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pq+0SQq7hgpLQxTOQZe/9CTeHs8ImMprGXHTlS3kV8=; b=NSywPU3rjuoeTI
	vPlgKERA5u6xe3w9ODaCDrXrCUE/p8zGCdLnGnsbYAsl0u4X+AsAYNEmqHgK6vYTa1fNxndQJbOZj
	J2CJ4c2+qmcIe85vp7/Xybt4Qkc2cS17wdrMRGz20akMrS/JMMZcrXnGPKlQz5bu2yPG/rLVzy3KQ
	Jzjx/4imQ3WrmBTCfd7CwSXdoMvnApgGX3dxAh6xtnyPWUQKJL/COGRIPKJsKV0WLFZNhXxBI+b7U
	aWcfD8JarQnENvLkRsDg/LyGb0DukUwPoCqfldXlzVK23IkN11wAoLI8/KuxE9u2tnWYWdBU/ZlPe
	J8uTQgxeO79YIf7ylBCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDvr-0000000BtmW-1Cog;
	Fri, 26 Jun 2026 21:17:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDvp-0000000BtmP-1QR9
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:17:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E85474168D;
	Fri, 26 Jun 2026 21:17:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DF691F000E9;
	Fri, 26 Jun 2026 21:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508668;
	bh=m0dy4UkM4Vp8svrKYfbkw79OIu4z8Qbu6Ly7oV7dbpo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MMUW4Ef6sL+xomGVarpWj6e0ZiSMekL1pKSC+71R0VsQq7kbAJQvzI+rKutcaQs79
	 e3UnphhBUlVuowqqgxyT7IrMOfIzUdvHWOCSpCiGpwRUE1dry43UYjSQalP9MzekZF
	 xBdovrwAQKiO1y+9++U+knUnqm0m+TrrYpcLGe1FZPb7y4KWa1gGTy3baPskr5OitA
	 S1RnCWZSZco/M6VmYZpgvb94d7Um2UjOZYLwkq9iQijrq0YRfa18JPSGjkmr1jd1JX
	 7xwuHrHm9q2VmptsxCllW8x1j4c5Vw2mM+pe0b7yjFdoTPiPMc9rexXmvMtQiPY82l
	 d5gtSkKSddINg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 24/29] phy: rockchip: usbdp: Support going from
 DP-only mode to USB mode
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-24-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-24-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:17:47 +0000
Message-Id: <20260626211748.4DF691F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBsb2dpYyBpbnRy
b2R1Y2VkIHRvIHJlc3RvcmUgVVNCIGZ1bmN0aW9uYWxpdHkgZmFpbHMgb24gc3Vic2VxdWVudCBh
ZGFwdGVyIHJlcGx1Z3MgYmVjYXVzZSBgdWRwaHktPnN0YXR1c2AgcGVybWFuZW50bHkgcmV0YWlu
cyB0aGUgYFVEUEhZX01PREVfVVNCYCBmbGFnLgotLQoKY29tbWl0IGI4MzA5OGMxODZlYzkwNDFl
NTMzOGRmOGRmZjA3ZjdmYTQzNmE2MGMKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0
aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBTdXBwb3J0
IGdvaW5nIGZyb20gRFAtb25seSBtb2RlIHRvIFVTQiBtb2RlCgpXaGVuIGEgVVNCLUMgYWRhcHRl
ciwgd2hpY2ggbWFwcyBhbGwgU3VwZXJzcGVlZCBsYW5lcyB0byBEUCBpcyBwbHVnZ2VkCmluLCB0
aGUgVVNCIHN1cHBvcnQgaXMgZGlzYWJsZWQgaW4gdGhlIFBIWS4gV2hlbiB0aGUgYWRhcHRlciBp
cwp1bnBsdWdnZWQgYW5kIGEgZGlmZmVyZW50IGFkYXB0ZXIgd2l0aCBVU0IgZnVuY3Rpb25hbGl0
eSBpcyBwbHVnZ2VkIGluCmFmdGVyd2FyZHMsIFVTQiBmdW5jdGlvbmFsaXR5IGlzIG5vdCByZXN0
b3JlZCBhcyB0aGUgVVNCIGNvbnRyb2xsZXIKa2VlcHMgdGhlIFBIWSBlbmFibGVkIGZvciB0aGUg
ZW50aXJlIHRpbWUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5j
Cj4gaW5kZXggODM3YTRjYjNlNGI2MC4uNDU2NjgyMmQ3MGM0YSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC0xMzQ3LDYgKzEz
NjIsMTcgQEAgc3RhdGljIGludCBya191ZHBoeV90eXBlY19tdXhfc2V0KHN0cnVjdCB0eXBlY19t
dXhfZGV2ICptdXgsCj4gIAo+ICAJcmtfdWRwaHlfc2V0X3R5cGVjX3N0YXRlKHVkcGh5LCBzdGF0
ZS0+bW9kZSk7Cj4gIAo+ICsJLyoKPiArCSAqIElmIHRoZSBuZXcgbW9kZSBpbmNsdWRlcyBVU0Is
IGJ1dCBpdCBoYXMgbm90IHlldCBiZWVuIHBvd2VyZWQKPiArCSAqIChiZWNhdXNlIHRoZSBwcmV2
aW91cyBtb2RlIHdhcyBEUC1vbmx5KSBhbmQgdGhlIFVTQiBQSFkgd2FzCj4gKwkgKiBhbHJlYWR5
IGluaXRpYWxpemVkIGJ5IHRoZSBVU0IgY29udHJvbGxlciwgd2UgbmVlZCB0byBwb3dlciBvbgo+
ICsJICogdGhlIFVTQiBzaWRlIG5vdyBzaW5jZSBubyBzdWJzZXF1ZW50IHBoeV9pbml0IGNhbGwg
d2lsbCBjb21lCj4gKwkgKiBmcm9tIHRoZSBjb250cm9sbGVyLgo+ICsJICovCj4gKwlpZiAoKHVk
cGh5LT5tb2RlICYgVURQSFlfTU9ERV9VU0IpICYmICEodWRwaHktPnN0YXR1cyAmIFVEUEhZX01P
REVfVVNCKSAmJgo+ICsJICAgIHVkcGh5LT51c2JfaW5fdXNlICYmICF1ZHBoeS0+aHMpCj4gKwkJ
cmV0dXJuIHJrX3VkcGh5X3Bvd2VyX29uKHVkcGh5LCBVRFBIWV9NT0RFX1VTQik7CgpbU2V2ZXJp
dHk6IEhpZ2hdCkRvZXMgdGhpcyBsb2dpYyBoYW5kbGUgc3Vic2VxdWVudCByZXBsdWdzIGNvcnJl
Y3RseSBpZiBhIFVTQiBkZXZpY2UgaXMgcGx1Z2dlZAppbiBmaXJzdD8KClNpbmNlIHRoZSBVU0Ig
Y29udHJvbGxlciBrZWVwcyB0aGUgUEhZIGVuYWJsZWQgZHVyaW5nIGhvdHBsdWcgKGFzIG5vdGVk
IGluIHRoZQpjb21taXQgbWVzc2FnZSksIHRoZSBVRFBIWV9NT0RFX1VTQiBmbGFnIGluIHVkcGh5
LT5zdGF0dXMgaXMgbm90IGNsZWFyZWQuCgpJZiB0aGUgdXNlciB0aGVuIHBsdWdzIGluIGEgRFAt
b25seSBhZGFwdGVyLCB0aGUgUEhZIGlzIHJlaW5pdGlhbGl6ZWQgZm9yIERQCmFuZCBwaHlzaWNh
bGx5IGRpc2FibGVzIHRoZSBVU0IzIHBvcnQuCgpJZiB0aGUgdXNlciBsYXRlciB1bnBsdWdzIHRo
ZSBEUC1vbmx5IGFkYXB0ZXIgYW5kIHBsdWdzIGluIGEgVVNCLW9ubHkgYWRhcHRlciwKd29uJ3Qg
ISh1ZHBoeS0+c3RhdHVzICYgVURQSFlfTU9ERV9VU0IpIGV2YWx1YXRlIHRvIGZhbHNlIGJlY2F1
c2UgdGhlIGZsYWcgd2FzCm5ldmVyIGNsZWFyZWQ/IEl0IHNlZW1zIHRoaXMgd291bGQgc2tpcCB0
aGUgY2FsbCB0byBya191ZHBoeV9wb3dlcl9vbigpIGFuZApsZWF2ZSB0aGUgVVNCMyBwb3J0IGRp
c2FibGVkLgoKPiArCj4gIAlyZXR1cm4gMDsKPiAgfQo+CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI2LXJvY2tjaGlwLXVzYmRw
LWNsZWFudXAtdjgtMC00N2Y2ODI5ODc4OTVAY29sbGFib3JhLmNvbT9wYXJ0PTI0CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
