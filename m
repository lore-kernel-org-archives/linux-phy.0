Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2D18CA6002
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 16:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9elwG/Rm0y+mulWg8XjDSSIyLB/afGINLO5G2vQDOVs=; b=gNbGAfty0G8mMy
	41rN+g3Lc7X/jsLLYDwh2A/+FeG6nD14CzCQAOsYQst34sxh8W3rWFaY/ceP2SQyPS3LO907xWfsT
	eZs1bXEdiYPCbdXRUxuImY/nmqH2aWbRa7GVn52zsovD8Hk8vN6klguRk9rGlygO5+pPjnyb+MWYa
	PB7BrngyitjEF42Vye/uTq3xakRd+yF3NOtGQfjTDVh6KCIh+TgOMDHQHXEKHys/mkRaKNEgRg7lC
	LzvN2Eg9d9bzpLvR8seaVHWmi+KSvxJUcBVSUg2rGWQ5uX/TrmtN9Ty3fhHfSpvZnqVlU2olM6n13
	PErEijkxfyCs+zLrYJ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEU4T-00000002kJJ-0cRG;
	Wed, 07 Oct 2026 16:00:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEU4Q-00000002kJ7-1C45
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 16:00:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 620BA601FF;
	Wed,  7 Oct 2026 16:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3433C1F000FF;
	Wed,  7 Oct 2026 16:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791388841;
	bh=1hzE8l42kMvGHsHdjjuvG2qK0OUn3rwYSCbR/mFVgz4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mjm4rbZGk1SVskA+7I7PsZIc9994CSwUwxg/LbqbkbB2H7LKXMxjloV4ca/LxIdgp
	 K+CldSMzv6CKGAq/HRYX4NqhepKZPTCzBswGZMAmFusWc2TwUJbKKltZVEYpJA20pl
	 7OH1/CldDS5YtX5H8yx1Z/MX2N4qmX60Yn+8QalZm9KGtcyxvK+CGd0Y9yoyXDFMix
	 fR8G7Y9eTc2ksFuo5jtbzRh3BTDYkBgfsXIeV3r0a/K8B4OIWpHCV/ei63JLXNWuax
	 9/Qrb/EkqLYUSYYE91R7egH5g8eZxopfhJkrdlCIRFD1GWN9TavDKo/aE/mEfr+FQm
	 UJx5S5TQohPWg==
Date: Wed, 7 Oct 2026 18:00:34 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongyan Xu <getshell@seu.edu.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn
Subject: Re: [PATCH RESEND] phy: broadcom: ns2-usbdrd: cancel delayed work
Message-ID: <z44qoeq4c57cc4sxjxkceeomc6gcoytgvaskmnxgefh4qy6eha@txcphnrhcmx3>
References: <20260728133418.103-1-getshell@seu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728133418.103-1-getshell@seu.edu.cn>
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

T24gVHVlLCBKdWwgMjgsIDIwMjYgYXQgMDk6MzQ6MThQTSArMDgwMCwgSG9uZ3lhbiBYdSB3cm90
ZToKPiBuczJfZHJkX3BoeV9wcm9iZSgpIGluaXRpYWxpemVzIHdxX2V4dGNvbi4gQm90aCBHUElP
IElSUXMgYW5kIHRoZSBwcm9iZQo+IHRhaWwgY2FuIHF1ZXVlIGl0LiBUaGVyZSBpcyBubyByZW1v
dmUgaG9vaywgc28gdGhlIGRlbGF5ZWQgd29yayBjYW4gcnVuCj4gYWZ0ZXIgZHJpdmVyLW1hbmFn
ZWQgcmVzb3VyY2VzIGFyZSBiZWluZyByZWxlYXNlZC4KPiAKPiBBZGQgYSBtYW5hZ2VkIGNsZWFu
dXAgYWN0aW9uIGJlZm9yZSByZXF1ZXN0aW5nIElSUXMuIERldnJlcyByZWxlYXNlcyB0aGUKPiBJ
UlFzIGZpcnN0LCB0aGVuIGNhbmNlbHMgdGhlIGRlbGF5ZWQgd29yayB3aGlsZSBleHRjb24sIEdQ
SU8gYW5kIE1NSU8KPiBzdGF0ZSBpcyBzdGlsbCB2YWxpZC4KPiAKPiBUaGlzIGlzc3VlIHdhcyBm
b3VuZCBieSBhIHN0YXRpYyBhbmFseXNpcyB0b29sLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhvbmd5
YW4gWHUgPGdldHNoZWxsQHNldS5lZHUuY24+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
