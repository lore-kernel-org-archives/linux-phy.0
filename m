Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7B8C44507
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgZM3GYzGgUWy3XjUK801bOPMoAy3jAl5xJ+QuSCKHY=; b=quFszc5pnOwLZ7
	t3VcBciyRJ52Y1lSmVHG4YCmkyePfytokOR2LsYaCtGoYatH+NtZqpm1q1lWp9S07001iUGi6PMBr
	vAlBrQNjk5BR3yGr3lt0OnFpx4Nw4NwbYhMscLY18KSR3nlzPyxxV0sMHokxJnPxkrr6pO/U49m9C
	ZgDHWFem43/PObzt2dEO9/r6DGAtzM/6v1c6FcZcnL7ZWV20NuI2pq7BTXxLNLrHSYtpZ9amJCIyF
	q9jzo+Y2XFLbFP9Oyuasa4P+VdOP6yCeSO39qXd41DaEYaW0NqyUumxzAvyyp9Sd8IcvqVd5m90WK
	4D3saMScQmdBa2braCfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjRm-0000000DC4J-0w1H;
	Tue, 14 Jul 2026 20:09:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjRl-0000000DC4C-2BSa
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:09:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 82B20601D9;
	Tue, 14 Jul 2026 20:09:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B857F1F000E9;
	Tue, 14 Jul 2026 20:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059780;
	bh=pxrjdEhQ20BdCU9qiayJEDZ+LSAkaqGbClsBBdZHk/E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nx03Wv/dH0KAw6m9I1/bZqokrtC56pdV84qwpNrcIrsMOU+H0ktaYxefurhqH4G0m
	 fQZTcsiz/u1SkHY1cfknu+nCIKH3I3lZ/uGtmkLqdxHcN0kPyvhJ54qtdaoLzuGmtC
	 aBtjn1tKfVZXA9ZRtdC6H2UzVbAf1rjmiLQMlq6IYRHeFmxAOCmrFLyYZ7de0K9DNg
	 wNKN/6e1bZj6OJmf0YKV4unzS+/KgL0z1uAM2IGu5oGkVc+eQ3JApKo8xKodv0FiGq
	 oWP7OTK9gTHZ1uNx4kDBDcEbUUNo+wABteuQjPoV/BB1/yJcdFUIbUC8dUz5+cUExs
	 jTFPz0WuFou0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 19/35] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-19-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-19-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:09:39 +0000
Message-Id: <20260714200939.B857F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgVVNCMyBwb3J0IGlzIG5vdCByZS1lbmFibGVkIGluIHRoZSBzeXN0ZW0gR1JG
IHdoZW4gdGhlIFBIWSBkeW5hbWljYWxseSB0cmFuc2l0aW9ucyBmcm9tIERQLW9ubHkgdG8gRFAr
VVNCIG1vZGUsIHBlcm1hbmVudGx5IGJyZWFraW5nIFN1cGVyU3BlZWQgVVNCIGZ1bmN0aW9uYWxp
dHkuCi0tCgotLS0gUGF0Y2ggWzE5XTogW1BBVENIIHYxMyAxOS8zNV0gcGh5OiByb2NrY2hpcDog
dXNiZHA6IFJlLWluaXQgdGhlIFBIWSBvbiBvcmllbnRhdGlvbiBjaGFuZ2UgLS0tCmNvbW1pdCBk
ZDUyNTc0N2RmNDVlNTdiM2VkYzY0ZGI0NjBjMjZkZDQzNzNjM2RmCkF1dGhvcjogU2ViYXN0aWFu
IFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlw
OiB1c2JkcDogUmUtaW5pdCB0aGUgUEhZIG9uIG9yaWVudGF0aW9uIGNoYW5nZQoKQ2hhbmdpbmcg
dGhlIGNhYmxlIG9yaWVudGF0aW9uIHJlY29uZmlndXJlcyB0aGUgbGFuZSBtdXhpbmcsIHdoaWNo
CnJlcXVpcmVzIHJlLWluaXRpYWxpemluZyB0aGUgUEhZLiBXaXRob3V0IHRoaXMgRFAgZnVuY3Rp
b25hbGl0eQpicmVha3MsIGlmIHRoZSBjYWJsZSBpcyByZS1wbHVnZ2VkIHdpdGggc3dhcHBlZCBv
cmllbnRhdGlvbi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMK
PiBpbmRleCBlNDRkMTljOWQxMTkzLi40YjQ1NDc5OGM0ZWQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtNjIwLDYgKzYyMCw3IEBAIHN0YXRp
YyBpbnQgcmtfdWRwaHlfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywK
PiAgCQkJCSBlbnVtIHR5cGVjX29yaWVudGF0aW9uIG9yaWVuKQo+ICB7Cj4gIAlzdHJ1Y3Qgcmtf
dWRwaHkgKnVkcGh5ID0gdHlwZWNfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKPiArCWJvb2wgZmxp
cHBlZCA9IG9yaWVuID09IFRZUEVDX09SSUVOVEFUSU9OX1JFVkVSU0U7Cj4gIAo+ICAJbXV0ZXhf
bG9jaygmdWRwaHktPm11dGV4KTsKPiAgCj4gQEAgLTYzMSw3ICs2MzIsMTAgQEAgc3RhdGljIGlu
dCBya191ZHBoeV9vcmllbl9zd19zZXQoc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAo+ICAJ
CWdvdG8gdW5sb2NrX3JldDsKPiAgCX0KPiAgCj4gLQl1ZHBoeS0+ZmxpcCA9IG9yaWVuID09IFRZ
UEVDX09SSUVOVEFUSU9OX1JFVkVSU0U7Cj4gKwlpZiAodWRwaHktPmZsaXAgIT0gZmxpcHBlZCkK
PiArCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IHRydWU7CgpbU2V2ZXJpdHk6IEhpZ2hdClRo
aXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHNldHRpbmcgcGh5X25lZWRzX3Jl
aW5pdCB0byB0cnVlIGV4cG9zZQphIGJ1ZyBpbiBya191ZHBoeV9wb3dlcl9vbigpIHdoZXJlIHRo
ZSBVU0IzIHBvcnQgaXMgbm90IHJlLWVuYWJsZWQgd2hlbgp0cmFuc2l0aW9uaW5nIGZyb20gRFAt
b25seSB0byBEUCtVU0IgbW9kZT8KCklmIHRoZSBUeXBlLUMgY29ubmVjdGlvbiBkeW5hbWljYWxs
eSB0cmFuc2l0aW9ucyBmcm9tIERQLW9ubHkgKHdoZXJlIHRoZSBVMyBwb3J0CmlzIGRpc2FibGVk
IHZpYSBya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIHRydWUpKSB0byBEUCtVU0IKKFVE
UEhZX01PREVfRFBfVVNCKSwgcmtfdWRwaHlfcG93ZXJfb24oKSB0YWtlcyB0aGlzIGJyYW5jaDoK
CmRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X3Bvd2Vy
X29uKCkgewogICAgLi4uCgl9IGVsc2UgaWYgKHVkcGh5LT5waHlfbmVlZHNfcmVpbml0KSB7CgkJ
aWYgKHVkcGh5LT5tb2RlID09IFVEUEhZX01PREVfRFApCgkJCXJrX3VkcGh5X3UzX3BvcnRfZGlz
YWJsZSh1ZHBoeSwgdHJ1ZSk7CgoJCXJldCA9IHJrX3VkcGh5X2luaXQodWRwaHkpOwogICAgLi4u
Cn0KCkl0IGV4cGxpY2l0bHkgZGlzYWJsZXMgdGhlIFUzIHBvcnQgaWYgdGhlIG5ldyBtb2RlIGlz
IERQLW9ubHksIGJ1dCBpdApjb21wbGV0ZWx5IGxhY2tzIHRoZSBsb2dpYyB0byByZS1lbmFibGUg
dGhlIHBvcnQKKHJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2UpKSBpZiB0aGUg
bW9kZSBpbmNsdWRlcyBVU0IuCgpDb3VsZCB0aGlzIGNhdXNlIFN1cGVyU3BlZWQgVVNCIHRyYWZm
aWMgdG8gZmFpbCBiZWNhdXNlIHRoZSBVMyBwb3J0IHJlbWFpbnMKZGlzYWJsZWQgaW4gdGhlIHVz
YmdyZiByZWdpc3Rlcj8KCj4gKwo+ICsJdWRwaHktPmZsaXAgPSBmbGlwcGVkOwo+ICAJcmtfdWRw
aHlfc2V0X3R5cGVjX2RlZmF1bHRfbWFwcGluZyh1ZHBoeSk7Cj4gIAlya191ZHBoeV91c2JfYnZh
bGlkX2VuYWJsZSh1ZHBoeSwgdHJ1ZSk7Cj4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTQtcm9ja2NoaXAtdXNiZHAtY2xlYW51
cC12MTMtMC02Y2IzZTc2OWQ0YzVAY29sbGFib3JhLmNvbT9wYXJ0PTE5CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
