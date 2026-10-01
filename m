Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A858CA5FD2
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 13:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tL11N5b7xfuPkgmf3FgGv7NHHgEDMlMXsxo8mNUfL2M=; b=NmkBHgMmgKBJay
	1T5rFo8biL6lRZzpReTfVk348BTFOwvq1tqvf5mpQJ2tSs6uVc8S6BOL3aEuNwgc6KJFyextKZ0GO
	LTeGy1pjNYMmhIi71um3TgzzNfJV7TkizClkfFtDPgA9SYcm49K+60MR5ZaHIk6Dxiy1RaqH6sfMs
	d70rJZYY/c913l8poUp6fSDjQwJneIyeXCkgTUZiR+YzzcwKrtBoLyCPeO4EsTe7B1Ga1EDbR4vzN
	cMXjaSi1lQSSgTg0CZdK+VkdrsKTcsSY11NhgF+asJkfz9C2FuKNOTIlGpiVvH6r8LLZrBET4f2Kl
	EfPsNkbmjObWrTvgV4XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGlJ-00000009EDw-2lBK;
	Thu, 01 Oct 2026 13:23:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGlI-00000009EDq-1WQv
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 13:23:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C9C4060A52;
	Thu,  1 Oct 2026 13:23:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49BD61F000FF;
	Thu,  1 Oct 2026 13:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790861027;
	bh=T3285LwOnXLg06uNDXw3XwXD15v81u+XC0Mh6h+PrQc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=atY9CSkPWW6YGnN9LEK9rAZA3WPwoZ5MsE6gPqnHvWwVATUQ46JKb662uyEV1ymDj
	 /JdUPgBC5j8gDqglx/ctd6fGfSumtrWBGGpIkQ9WbrKFLUPsfcj/kxRWbEwgIN3aL7
	 tANj6FXqWOYslcaQriAbm5BOhiWXfkgkCLKDaBuQZzgDVBY/8L4Dlr3QenJIFNvjiD
	 OiW4YvLE+FJYKm04VL7OibHpXRBsN9cufLE9wjowHLZA6ARjjBHsiuwgnmUFuBOQoG
	 BE/HFi063BWntPMtJBQghYIpd6c+d15zN12RNYv6jJT/SYNM4yTou3GNPwOfgaW7M9
	 ipkMgJ7GesCdQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] phy: rockchip: inno-usb2: move suspend handling
 into clock prepare/unprepare for RK3588/RK3576
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-4-e01bf509359e@collabora.com>
References: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-0-e01bf509359e@collabora.com>
 <20261001-phy-rockchip-inno-usb2-clock-fix-v2-4-e01bf509359e@collabora.com>
Date: Thu, 01 Oct 2026 13:23:46 +0000
Message-Id: <20261001132347.49BD61F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHVzYjogcGh5OiByb2Nr
Y2hpcDogTlVMTCBwdHIgZGVyZWYgaW4gY2xrNDgwbV9wcmVwYXJlIGR1ZSB0byBlYXJseSBjbG9j
ayByZWdpc3RyYXRpb24KLSBbTWVkaXVtXSB1c2I6IHBoeTogcm9ja2NoaXA6IG1pc3NpbmcgaGFy
ZHdhcmUgcm9sbGJhY2sgb24gY2xrIHByZXBhcmUgZXJyb3IKLS0KCmNvbW1pdCBlYWFmZjQ4NTgy
YTRmYmE5Mjg1ZDQzNTU1YmI5YmFiYWFjNzc5MTQxCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwg
PHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiBpbm5vLXVz
YjI6IG1vdmUgc3VzcGVuZCBoYW5kbGluZyBpbnRvIGNsb2NrIHByZXBhcmUvdW5wcmVwYXJlIGZv
ciBSSzM1ODgvUkszNTc2CgpUaGlzIGNvbW1pdCBtb2RpZmllcyB0aGUgUkszNTg4L1JLMzU3NiBV
U0IyIFBIWSBkcml2ZXIgdG8gZnVsbHkgcG93ZXIgdGhlIFBIWQpkdXJpbmcgY2xvY2sgcHJlcGFy
ZSBvcGVyYXRpb25zLiBJdCBhZGRyZXNzZXMgYW4gaXNzdWUgZHVyaW5nIE9IQ0kgc3lzdGVtCnJl
c3VtZSB3aGVyZSB0aGUgUEhZIG11c3QgYmUgcnVubmluZyB0byBhY2Nlc3MgY29udHJvbGxlciBy
ZWdpc3RlcnMsIG1vdmluZyB0aGUKc3VzcGVuZCBoYW5kbGluZyBkaXJlY3RseSBpbnRvIHRoZSBj
bG9jayBwcmVwYXJlL3VucHJlcGFyZSBob29rcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+IGluZGV4IDkyNWEwM2ZlZTZiYzUuLmNjOTIzZDEy
ZWY3YjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlu
bm8tdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8t
dXNiMi5jCgpbIC4uLiBdCgo+IEBAIC0zNzksMTYgKzM4MSwyNyBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX3VzYjJwaHlfY2xrNDgwbV9wcmVwYXJlKHN0cnVjdCBjbGtfaHcgKmh3KQo+ICAJCXVzbGVl
cF9yYW5nZSgxMjAwLCAxMzAwKTsKPiAgCX0KPiAgCj4gKwlpZiAocnBoeS0+cGh5X2NmZy0+bnVt
X3BvcnRzID09IDEpIHsKPiArCQlyZXQgPSByb2NrY2hpcF91c2IycGh5X3NldF9zdXNwZW5kKHJw
aHksICZycGh5LT5wb3J0c1swXSwgZmFsc2UpOwoKW1NldmVyaXR5OiBIaWdoXQpDb3VsZCB0aGlz
IGxlYWQgdG8gYSBudWxsIHBvaW50ZXIgZGVyZWZlcmVuY2UgZHVyaW5nIHByb2JlPwoKSW4gcm9j
a2NoaXBfdXNiMnBoeV9wcm9iZSgpLCB0aGUgY2xvY2sgaXMgcmVnaXN0ZXJlZCB2aWEKcm9ja2No
aXBfdXNiMnBoeV9jbGs0ODBtX3JlZ2lzdGVyKCkgYmVmb3JlIGl0ZXJhdGluZyBvdmVyIGNoaWxk
IG5vZGVzIHRvCmluaXRpYWxpemUgdGhlIHBvcnRzIGFycmF5IGFuZCBjb25maWd1cmF0aW9ucy4K
CklmIGEgY29uY3VycmVudCBvciBkZWZlcnJlZCBwcm9iZSBmcm9tIGEgY2xvY2sgY29uc3VtZXIg
KHN1Y2ggYXMgdGhlIE9IQ0kKY29udHJvbGxlcikgcmVxdWVzdHMgYW5kIHByZXBhcmVzIHRoZSBj
bG9jayBpbW1lZGlhdGVseSwgdGhpcyBpcyBjYWxsZWQgYmVmb3JlCnBvcnQgaW5pdGlhbGl6YXRp
b24gZmluaXNoZXMuCgpBdCB0aGlzIHBvaW50LCBycG9ydC0+cG9ydF9jZmcgd2lsbCBiZSBOVUxM
LCB3aGljaCBsZWFkcyB0byBhIG51bGwgcG9pbnRlcgpkZXJlZmVyZW5jZSB3aGVuIHByb3BlcnR5
X2VuYWJsZSgpIGF0dGVtcHRzIHRvIGFjY2VzcwomcnBvcnQtPnBvcnRfY2ZnLT5waHlfc3VzLgoK
PiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5OiBNZWRpdW1dCklmIHJv
Y2tjaGlwX3VzYjJwaHlfc2V0X3N1c3BlbmQoKSBmYWlscyBoZXJlLCBkb2VzIHRoaXMgbGVhdmUg
dGhlIGNsb2NrCm91dHB1dCBwZXJtYW5lbnRseSBlbmFibGVkPwoKRWFybGllciBpbiByb2NrY2hp
cF91c2IycGh5X2NsazQ4MG1fcHJlcGFyZSgpLCB0aGUgY2xvY2sgb3V0cHV0IGlzIHR1cm5lZCBv
bgp1c2luZyBwcm9wZXJ0eV9lbmFibGUoKS4KClNpbmNlIHRoZSBDb21tb24gQ2xvY2sgRnJhbWV3
b3JrIGFib3J0cyBwcmVwYXJhdGlvbiBvbiBlcnJvciwgLnVucHJlcGFyZQp3aWxsIG5ldmVyIGJl
IGNhbGxlZCB0byBjbGVhbiBpdCB1cC4KClJldHVybmluZyBpbW1lZGlhdGVseSB3aXRob3V0IHJv
bGxpbmcgYmFjayB0aGUgZWFybGllciBoYXJkd2FyZSBzdGF0ZSBjaGFuZ2UKYXBwZWFycyB0byBs
ZWF2ZSB0aGUgY2xvY2sgb3V0cHV0IGVuYWJsZWQuCgo+ICsJfQo+ICsKPiAgCXJldHVybiAwOwo+
ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYxMDAxLXBoeS1yb2NrY2hpcC1pbm5vLXVzYjItY2xvY2stZml4LXYyLTAtZTAxYmY1
MDkzNTllQGNvbGxhYm9yYS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
