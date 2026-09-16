Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6E3FC88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0JEB4rk5Bz0HyV4ZB661igqBwDcAmuUm14ZzHsnQrw=; b=dBuTf86+9QfRLG
	LTvWeX+IPW3U0e9kxUWbIADwCxOvn6WxVIfx7kpYy0UwEFpT15xpUtuE2fcMrJgPBxeWwmOvOkow7
	yWrK8+dvDYXfAAv3HpcSAQ+luZV9mqPvJXLFa0uCrgpW/qkSL5esiGo0jZNIsT67g0blBSFvF8r9H
	ccPe2fXzpCdAZ2nUjl+VUwLGOe9PZfPyDWPUYa8Wvv646D+gkQyzrEjW1Rhw/c1wXu2XnCW0TJuQi
	0DMKJUumGkCMqIpEj9Tlh7yt833MIB8LiN36r/xu6nxSACnIL3vdX/KVa1YK9dChv3ReZEq7JAEGL
	2hikJgsmyX6WllXeIWNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6isn-00000008Sl2-1vC4;
	Wed, 16 Sep 2026 06:12:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6ism-00000008Skj-1Z6j
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:12:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A016E6022E;
	Wed, 16 Sep 2026 06:12:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 093441F000FF;
	Wed, 16 Sep 2026 06:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789539155;
	bh=1rKf47WB7pxmyK/6HvLmnycYf2onIrNwhsdh+bdVko0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AecG9HJ/mC8mKOjHkmjYz8Uj4/23KAwFB7MY2zHS36ugzWcDWECDXQU1dwI+O7LWt
	 oL2axQhUEj/mnWX5nqq3BS5nyy7zGLG9ZEhVmhRrM5/I2weMLX5vMf7ANUDMzWavs4
	 Vckrkh/1L9lMKVvT6NI5xCYKXidEk5ZVs47FgVBa765yxwABlKh6dmfFFvwpMYVJ3/
	 Y38Ey02APqBiKjuS+aNkEtvKw9jsA2w6SdeBom4f9qQ8wZo7SHnffIWLNqxi1kI7Xg
	 GYkY5PuR8l/aVPryGllbAgN2tsyPXv6Z66WN7P7V+5EeiyQdJ8WVL6S3bMIzyRVUbX
	 npjwvskPWT2aQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] PCI: qcom: Move PHY init and add PHY reset call to
 align with HPG
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, linux-pci@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-1-0b2195836f30@oss.qualcomm.com>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-1-0b2195836f30@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 06:12:34 +0000
Message-Id: <20260916061235.093441F000FF@smtp.kernel.org>
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

PiBIUEcgcmVxdWlyZXMgdGhlIGNvbnRyb2xsZXIvUEhZIEdEU0NzIHBvd2VyZWQgdXAgYW5kIGFs
bCBjb250cm9sbGVyL1BIWQo+IGNsb2NrcyBlbmFibGVkIGZpcnN0LCB0aGVuIHRoZSBjb250cm9s
bGVyJ3MgcmVzZXQgYW5kIHRoZSBQSFkncyByZXNldAo+IHRvZ2dsZWQgdG9nZXRoZXIgYXMgYSBn
cm91cCwgUEFSRl9ERVZJQ0VfVFlQRSBzZXQgcmlnaHQgYWZ0ZXIsIGFuZCB0aGUKPiByZXN0IG9m
IHRoZSBQQVJGL0RCSSBjb25maWcgbGVmdCB1bnRpbCB0aGUgUEhZIGlzIHJlYWR5Lgo+IAo+IE1h
a2UgdXNlIG9mIHBoeV9pbml0KCkgYW5kIHBoeV9yZXNldCgpLCBhbmQgY2hhbmdlIHRoZSBjYWxs
IGZsb3cgdG86Cj4gCj4gICBxY29tX3BjaWVfaG9zdF9pbml0KCk6Cj4gICAgIHBoeV9pbml0KCkg
ICAgICAgICAgICAgKFBIWSBHRFNDcy9yZWd1bGF0b3JzL2Nsb2NrcyB1cCkKPiAgICAgcWNvbV9w
Y2llX29wczo6aW5pdDoKPiAgICAgICBlbmFibGUgY29udHJvbGxlciBjbG9ja3MKPiAgICAgICBh
c3NlcnQgY29udHJvbGxlciByZXNldAo+ICAgICAgIHBoeV9yZXNldCgpICAgICAgICAgICAodG9n
Z2xlIHRoZSBQSFkncyBvd24gcmVzZXQpCj4gICAgICAgZGVhc3NlcnQgY29udHJvbGxlciByZXNl
dAo+ICAgICAgIHdyaXRlIFBBUkZfREVWSUNFX1RZUEUKPiBbIC4uLiBdCj4gc2l0ZSBpbnRvIHFj
b21fcGNpZV9ob3N0X2luaXQoKS9xY29tX3BjaWVfaG9zdF9kZWluaXQoKSBrZWVwcyB0aGVtIGF0
IHRoZQo+IHNhbWUgcG9pbnQgcmVsYXRpdmUgdG8gdGhhdCBwbGF0Zm9ybSdzIG93biBjbG9jay9y
ZXNldCBwcm9ncmFtbWluZywgc28gaXRzCj4gaW5pdCBzZXF1ZW5jZSBkb2Vzbid0IGNoYW5nZSBl
aXRoZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29t
bS5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1
ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNS1hbGlnbl9wY2llX2luaXRfc2VxdWVuY2VfMDkx
Ni12MS0wLTBiMjE5NTgzNmYzMEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MQoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
