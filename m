Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38564C44501
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9hbu+cORt2Vqnyh2w+Ci8Agc4o5df9gtupcn2vtfN0=; b=HdzmCRf+rCCVjr
	bLUv3bULK14qOpdnl7n7w5Mfd23YPtsDvBMQohudvS4/ZUFhH44IftIArgcpfEVHBYCtZzeJa0VBx
	rAIztAZuOS2EHvbh4TyViUOfgTXamfxcszpymYNDN/d6uxoPwe1JDKmVoWb8H3xnJe8QpHchZ8zDo
	9WrbMTBb3gLBgfmXTClIhunEq0VYABmGoTa+6krKzLMP29pvn1/r9dtfvYpvNSBb5bSjR08cMiUWz
	jnVsCuNGv0Vjop5fYoT8K9cpTm4pBKGHo4ozAeKs1r/acwunKUf2T6OCvc/gk7gmSr5pxkDGd8SrF
	Ow+PoInrh0Ze/wHA9s6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuT0-00000003TEo-3heT;
	Thu, 09 Jul 2026 19:31:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuSz-00000003TEi-2udL
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:31:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6F7B1600C3;
	Thu,  9 Jul 2026 19:31:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD09D1F000E9;
	Thu,  9 Jul 2026 19:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625484;
	bh=3Ls4+41419D22kbbInJE2a79Lesp0aJ51xYR879H7I0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WAOfCKF2+JAMOkC+JT1TZlFm3IkaF+zBS/lnFkunlD08Rw15RPPhhnKULtYVa+Nk/
	 1gkxt9yO81V5m+3OTtt1t5E2NzvR8TBeUZ0Vvzh0IYAPt9Yx3y5sKiA7oPp4breH/D
	 nUyHA58C6qlTWALyHtTHEvYz6zQEUiMd2B6jkxzF6/uxwo3Plt94lNGwLjQohDyBBb
	 zI2xRV3ggtEpYKeRDiY8Y5es47hmBboKgOpz7t5r5SwL+BhXaHepmvHysVDxy+B8/5
	 /JOvnrL5toNSv6kVfmO7lfFRNSJ6G6SgxafttWMTjy2nN1N6EBUGg3/tBFIVtqD/bU
	 27/OP0aIDP56w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 29/36] phy: core: add notifier infrastructure
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-29-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-29-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:31:23 +0000
Message-Id: <20260709193123.AD09D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gUG90ZW50aWFsIHNl
bGYtZGVhZGxvY2sgb3IgQUItQkEgZGVhZGxvY2sgYmV0d2VlbiBgcGh5LT5tdXRleGAgYW5kIGBw
aHktPm5vdGlmaWVyLnJ3c2VtYCB3aGVuIGNvbnN1bWVycyBoYW5kbGUgcmVzZXQgbm90aWZpY2F0
aW9ucy4KLS0KCi0tLSBQYXRjaCBbMjldOiBbUEFUQ0ggdjExIDI5LzM2XSBwaHk6IGNvcmU6IGFk
ZCBub3RpZmllciBpbmZyYXN0cnVjdHVyZSAtLS0KY29tbWl0IDIwNWNjMDc2N2FiNzEzMDA1NDUz
YTM0MDFmMjYxYzliMGEwMjg5Y2UKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFu
LnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogY29yZTogYWRkIG5vdGlmaWVyIGluZnJhc3Ry
dWN0dXJlCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgbmV3IFBIWSBub3RpZmllciBBUEkgdG8g
YWxsb3cgY29uc3VtZXIgZHJpdmVycyB0bwpoYW5kbGUgcmVzZXQgZXZlbnRzIGNvbWluZyBmcm9t
IGEgUEhZIGRldmljZS4gSXQgYWRkcyBmdW5jdGlvbnMgdG8gcmVnaXN0ZXIKYW5kIHVucmVnaXN0
ZXIgbm90aWZpZXJzLCBhbmQgdG8gdHJpZ2dlciByZXNldCBub3RpZmljYXRpb25zLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMK
PiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNv
cmUuYwpbIC4uLiBdCj4gK2ludCBwaHlfbm90aWZ5X3Jlc2V0KHN0cnVjdCBwaHkgKnBoeSwgZW51
bSBwaHlfbm90aWZpY2F0aW9uIGV2ZW50KQo+ICt7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWlmICgh
cGh5KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCXJldCA9IGJsb2NraW5nX25vdGlmaWVyX2NhbGxf
Y2hhaW4oJnBoeS0+bm90aWZpZXIsIGV2ZW50LCBwaHkpOwoKW1NldmVyaXR5OiBNZWRpdW1dCkNv
dWxkIHRoaXMgbGVhZCB0byBhIHNlbGYtZGVhZGxvY2sgb3IgYW4gQUItQkEgZGVhZGxvY2sgYmV0
d2VlbiBwaHktPm11dGV4CmFuZCB0aGUgbm90aWZpZXIgcndzZW0/CgpJZiBhIFBIWSBwcm92aWRl
ciBjYWxscyBwaHlfbm90aWZ5X3Jlc2V0KCkgZnJvbSB3aXRoaW4gYSBQSFkgb3BlcmF0aW9uCmNh
bGxiYWNrIHRoYXQgZXhlY3V0ZXMgd2l0aCBwaHktPm11dGV4IGhlbGQsIHRoZSBub3RpZmllciBj
aGFpbiB0YWtlcyBhCnJlYWQgbG9jayBvbiBwaHktPm5vdGlmaWVyLnJ3c2VtLiBJZiBhIGNvbnN1
bWVyIGNhbGxiYWNrIHRoZW4gYXR0ZW1wdHMgdG8KcXVpZXNjZSBpdHMgaGFyZHdhcmUgYnkgY2Fs
bGluZyBhIFBIWSBmcmFtZXdvcmsgQVBJIGxpa2UgcGh5X3Bvd2VyX29mZigpLAppdCB3aWxsIHRy
eSB0byBhY3F1aXJlIHBoeS0+bXV0ZXggYWdhaW4sIHJlc3VsdGluZyBpbiBhIHNlbGYtZGVhZGxv
Y2s6CgpwaHlfc2V0X21vZGUoKQogIG11dGV4X2xvY2soJnBoeS0+bXV0ZXgpOwogIHByb3ZpZGVy
X29wcy0+c2V0X21vZGUoKQogICAgcGh5X25vdGlmeV9yZXNldCgpCiAgICAgIGJsb2NraW5nX25v
dGlmaWVyX2NhbGxfY2hhaW4oKSAgLy8gdGFrZXMgcndzZW0gcmVhZCBsb2NrCiAgICAgICAgY29u
c3VtZXJfY2FsbGJhY2soKQogICAgICAgICAgcGh5X3Bvd2VyX29mZigpCiAgICAgICAgICAgIG11
dGV4X2xvY2soJnBoeS0+bXV0ZXgpOyAgLy8gc2VsZi1kZWFkbG9jawoKQ29udmVyc2VseSwgaWYg
cGh5X25vdGlmeV9yZXNldCgpIGlzIGNhbGxlZCBvdXRzaWRlIG9mIHBoeS0+bXV0ZXgsIGJ1dCB0
aGUKY29uc3VtZXIgY2FsbHMgYmFjayBpbnRvIHRoZSBQSFkgZnJhbWV3b3JrLCBpdCBlc3RhYmxp
c2hlcyBhIGxvY2sgZGVwZW5kZW5jeQpmcm9tIHRoZSBub3RpZmllciByd3NlbSB0byBwaHktPm11
dGV4LiBBIGNvbmN1cnJlbnQgUEhZIG9wZXJhdGlvbiB0aGF0IGhvbGRzCnBoeS0+bXV0ZXggYW5k
IHJlZ2lzdGVycyBhIG5vdGlmaWVyIGNvdWxkIGNyZWF0ZSBhIGNsYXNzaWMgQUItQkEgZGVhZGxv
Y2sgaWYKYSB3cml0ZXIgaXMgcGVuZGluZyBvbiB0aGUgcndzZW0uCgpTaG91bGQgdGhlIGRvY3Vt
ZW50YXRpb24gd2FybiBjb25zdW1lcnMgdG8gZGVmZXIgUEhZIEFQSSBjYWxscyB0byBhCndvcmtx
dWV1ZSB3aGVuIGhhbmRsaW5nIHRoZXNlIG5vdGlmaWNhdGlvbnMsIG9yIHNob3VsZCB0aGUgbG9j
ayBoaWVyYXJjaHkKYmUgZXhwbGljaXRseSBkZWZpbmVkPwoKPiArCXJldHVybiBub3RpZmllcl90
b19lcnJubyhyZXQpOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHBoeV9ub3RpZnlfcmVzZXQp
OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDcwOS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMS0wLWExNDlhYzYwZjc2Y0Bjb2xs
YWJvcmEuY29tP3BhcnQ9MjkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
