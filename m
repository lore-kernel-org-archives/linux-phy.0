Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD61FC44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 12:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwf4u0OpY8UckVhSWmCSVrH23KEe/Wku0RuIUaaHwGo=; b=zgmCCxI5jBDrPJ
	RioE06Jov83DPV1QK+mv3Kp2AiMLd96i6OFn7/M6b2eIrSfRev2536LLbWjiCBbs9bmSROxILs/pq
	LhQF18f4FdV4cnio1ZeQALS5P+nk1kjyNd6SoorfmBhZ9zBJZ9iMCOvhU5VjrE7pcuoS0jsSxPjtk
	lFc4Ne6Ki8DhD4VM0Rd3jEIs0I6nlh2Vyb264LM+w+ioUG/VXlLwwLsGpezGBHlb914y/yD6u9q6n
	Jm/wcu75b411G+x7VYAFHzs7huUHCGhWWpAzw8K1NNBKEFslWXmKq70MB7Gah+YjERZWGfq6GTETY
	1ddgmJM/gFOkZYuWlCUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVmW-0000000BiTE-227D;
	Wed, 22 Jul 2026 12:10:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVmV-0000000BiT1-09Fj
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 12:10:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 24632600AB;
	Wed, 22 Jul 2026 12:10:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A2E81F000E9;
	Wed, 22 Jul 2026 12:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784722233;
	bh=fIe0wUrrDVszjvm6kkoTVaoHwx2WuyyXexPYM+RlgpQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=e/RG+UTKXTiJg+Z+keGVwljTspAcEtzFRMAmoOOR1Bec2THmY/Ooo9kmfHZJdQq4F
	 slqd3LzpyCs7oQgY9vr9CMWFLYQmbikHC0rinNm0vivvL0nBiRmYm2DDIao1pIbMDw
	 1UnUM3KcEfObN/Qogmn+FGKjFHxmEMqTuh8nQ4dfLc9UzpCGNsC70UwtQsSl56jlTQ
	 o0Is8XpHKxdEfThynIYySlFh2tZywG/F2Us045oqJVJ5CUDc0t7G/3yIzQ0Iu2JQNm
	 geet6TTwSEmaRyNZ1tKel7V428LF6hjcqOb2n3VRzKOCEJY9z/PL9oUd9pviTRNDA9
	 yft0e6FRLxgJg==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org,
 olteanv@gmail.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-usb: Add support for SA8255P
In-Reply-To: <20260709150659.6E0301F000E9@smtp.kernel.org>
References: <20260709-phy-qcom-qmp-usb-8255-v2-0-3b6c26a45788@kernel.org>
 <20260709-phy-qcom-qmp-usb-8255-v2-2-3b6c26a45788@kernel.org>
 <20260709150659.6E0301F000E9@smtp.kernel.org>
Date: Wed, 22 Jul 2026 14:10:31 +0200
Message-ID: <87bjbzi5s8.fsf@kernel.org>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdWwgMDksIDIwMjYgYXQgMTU6MDYsIHNhc2hpa28tYm90QGtlcm5lbC5vcmcgd3Jv
dGU6Cgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkgcmV2aWV3
IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0hpZ2hdIEluY29y
cmVjdCBwb3dlciBkb21haW4gc2VxdWVuY2luZyBkdXJpbmcgZDAvZDMgdHJhbnNpdGlvbnMgcmlz
a3MgTm9DIGVycm9ycyBhbmQgYnVzIGhhbmdzLgo+IC0tCj4KPiAtLS0gUGF0Y2ggWzJdOiBbUEFU
Q0ggdjIgMi8yXSBwaHk6IHFjb206IHFtcC11c2I6IEFkZCBzdXBwb3J0IGZvciBTQTgyNTVQIC0t
LQo+IGNvbW1pdCBjMzJiYmZkODE3YzNmOWZjYTRkMjk4MmVhMzdiZTM2MzU0NTAxY2M3Cj4gQXV0
aG9yOiBTcmlyYW0gRGFzaCA8cXVpY19zcmlyYW1kQHF1aWNpbmMuY29tPgo+IFN1YmplY3Q6IHBo
eTogcWNvbTogcW1wLXVzYjogQWRkIHN1cHBvcnQgZm9yIFNBODI1NVAKPgo+IFRoaXMgY29tbWl0
IGFkZHMgc3VwcG9ydCBmb3IgdGhlIFNBODI1NVAgU29DIHRvIHRoZSBRTVAgVVNCIFBIWSBkcml2
ZXIuIAo+IEl0IGludHJvZHVjZXMgZmlybXdhcmUtbWFuYWdlZCByZXNvdXJjZXMgdmlhIFNDTUkg
dXNpbmcgcG93ZXIgcHJvdG9jb2xzLAo+IG1hbmFnaW5nIHN0YXRlIHRyYW5zaXRpb25zIChkMCwg
ZDEsIGQzKSB0aHJvdWdoIHRoZSAidXNiX2NvcmUiIGFuZAo+ICJ1c2JfdHJhbnNmZXIiIHBvd2Vy
IGRvbWFpbnMuCj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC11c2IuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2IuYwo+PiBp
bmRleCBjNTUwNzE2OGUxMzU0Li5kMDg1YzFhZDdmYjVjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXVzYi5jCj4KPiBbIC4uLiBdCj4KPj4gQEAgLTE4NjUsNiArMTg5
MCw3NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIGdseW11cl91c2IzX3VuaXBo
eV9jZmcgPSB7Cj4+ICAJLnJlZ3MJCQk9IHFtcF92N191c2IzcGh5X3JlZ3NfbGF5b3V0LAo+PiAg
fTsKPgo+IFsgLi4uIF0KPgo+PiArLyogZDNfdG9fZDAgdHJhbnNpdGlvbiBieSB0dXJuaW5nIG9u
IGFsbCB0aGUgc3VwcGxpZXJzICovCj4+ICtzdGF0aWMgaW50IHFtcF91c2JfZDNfdG9fZDAoc3Ry
dWN0IHFtcF91c2IgKnFtcCkKPj4gK3sKPj4gKwlpbnQgcmV0Owo+PiArCj4+ICsJaWYgKCFxbXAt
PnBkX2xpc3QpCj4+ICsJCXJldHVybiAwOwo+PiArCj4+ICsJcmV0ID0gcG1fcnVudGltZV9yZXN1
bWVfYW5kX2dldChxbXAtPnBkX2xpc3QtPnBkX2RldnNbMF0pOwo+PiArCWlmIChyZXQpCj4+ICsJ
CXJldHVybiByZXQ7Cj4+ICsKPj4gKwlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KHFt
cC0+cGRfbGlzdC0+cGRfZGV2c1sxXSk7Cj4+ICsJaWYgKHJldCkKPj4gKwkJcG1fcnVudGltZV9w
dXRfc3luYyhxbXAtPnBkX2xpc3QtPnBkX2RldnNbMF0pOwo+PiArCj4+ICsJcmV0dXJuIHJldDsK
Pj4gK30KPgo+IFtTZXZlcml0eTogSGlnaF0KPiBEb2VzIHRoaXMgc2VxdWVuY2UgcG93ZXIgdXAg
dGhlIGRvbWFpbnMgaW4gdGhlIHdyb25nIG9yZGVyPwo+Cj4gVGhlIGNvbW1pdCBtZXNzYWdlIG5v
dGVzIHRoYXQgInVzYl9jb3JlIiAod2hpY2ggbWFwcyB0byBwZF9kZXZzWzFdIGJhc2VkIG9uIAo+
IHRoZSBxbXBfdXNiX2RvbWFpbl9hdHRhY2ggb3JkZXIpIGNvbnRyb2xzIHRoZSBHRFNDLCB3aGls
ZSAidXNiX3RyYW5zZmVyIiAKPiAocGRfZGV2c1swXSkgY29udHJvbHMgY2xvY2tzIGFuZCBpbnRl
cmNvbm5lY3RzLgo+Cj4gRW5hYmxpbmcgY2xvY2tzIGJlZm9yZSB0aGUgR0RTQyBmb3VuZGF0aW9u
YWwgcG93ZXIgZG9tYWluIGlzIGVuYWJsZWQgdHlwaWNhbGx5Cj4gcmVzdWx0cyBpbiB1bnBvd2Vy
ZWQgcmVnaXN0ZXIgYWNjZXNzIG9uIFF1YWxjb21tIFNvQ3MsIHdoaWNoIGNvdWxkIHRyaWdnZXIg
YQo+IE5ldHdvcmstb24tQ2hpcCAoTm9DKSBlcnJvciBhbmQgYnVzIGhhbmcuIFNob3VsZCBwZF9k
ZXZzWzFdIGJlIHJlc3VtZWQgYmVmb3JlCj4gcGRfZGV2c1swXT8KCkkgZGlkIG5vdCBvYnNlcnZl
IGFueSBidXMgZXJyb3JzIGR1cmluZyBteSB0ZXN0aW5nLiBJIHRyaWVkIHRvCmluc2VydC9yZW1v
dmUgdGhlIHBoeSBkcml2ZXIgYW5kIGFsc28gY291bGQgZGV0ZWN0IGEgZmxhc2ggZHJpdmUgdXNp
bmcgYQpjb3VwbGUgb2YgbW9yZSBwYXRjaGVzIG9uIG90aGVyIFVTQiBkcml2ZXJzLgoKU28gSSds
bCBrZWVwIGl0IHRoaXMgd2F5IGZvciB2My4KCj4KPj4gKwo+PiArLyogZDBfdG9fZDMgdHJhbnNp
dGlvbiBieSB0dXJuaW5nIG9mZiBhbGwgdGhlIHN1cHBsaWVycyAqLwo+PiArc3RhdGljIHZvaWQg
cW1wX3VzYl9kMF90b19kMyhzdHJ1Y3QgcW1wX3VzYiAqcW1wKQo+PiArewo+PiArCWlmICghcW1w
LT5wZF9saXN0KQo+PiArCQlyZXR1cm47Cj4+ICsKPj4gKwlwbV9ydW50aW1lX3B1dF9zeW5jKHFt
cC0+cGRfbGlzdC0+cGRfZGV2c1sxXSk7Cj4+ICsJcG1fcnVudGltZV9wdXRfc3luYyhxbXAtPnBk
X2xpc3QtPnBkX2RldnNbMF0pOwo+PiArfQo+Cj4gW1NldmVyaXR5OiBIaWdoXQo+IFNpbWlsYXJs
eSwgY291bGQgdGhpcyBjYXVzZSBhIGJ1cyBoYW5nIGR1cmluZyB0aGUgZDAgdG8gZDMgdHJhbnNp
dGlvbj8KPgo+IFB1dHRpbmcgInVzYl9jb3JlIiAocGRfZGV2c1sxXSkgYmVmb3JlICJ1c2JfdHJh
bnNmZXIiIChwZF9kZXZzWzBdKSBkaXNhYmxlcyAKPiB0aGUgR0RTQyBiZWZvcmUgdGhlIGNsb2Nr
cy4gU2hvdWxkbid0IHRoZSBHRFNDIGJlIGRpc2FibGVkIGxhc3QgdG8gcHJldmVudCAKPiB1bnBv
d2VyZWQgaGFyZHdhcmUgY2xvY2sgYWNjZXNzPwoKV2hlbiBydW5uaW5nIG1vZHByb2JlIC1yLCBJ
IGRpZCBub3Qgb2JzZXJ2ZSBhbnkgYnVzIGhhbmcgb24gbXkgYm9hcmQuCkknbGwga2VlcCB0aGlz
IHdheSBmb3IgdjMuCgo+Cj4gLS0gCj4gU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzA5LXBoeS1xY29tLXFtcC11c2ItODI1NS12Mi0wLTNi
NmMyNmE0NTc4OEBrZXJuZWwub3JnP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
