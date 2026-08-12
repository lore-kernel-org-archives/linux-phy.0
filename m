Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E817C5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 11:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3v3QFDxAeNyxkJNGUMYCv1AiN4H6EHo2DhRg7krL9w=; b=3LcrbSdcRAdSah
	TpSgEVwF5CYHirsb1eIAURT2c7xU5JhSBLuTtWw8zKZRK6Zif06zm2X2ERuGI/OjTF/yiVd9gr9/H
	HQC+0PZEg1Dc2zk6Vekkd4WBQa+IVhaZu5JJsdWDBrsZ5j+MCZfmv9NLbCD6iPlMlZGzJ/PwXRpZ2
	izQcw92+gLUssL67Gf2nnKLR+TLl/ZBR6wHpD19UEFweG0q6RuFk0Uc2IuKr17OnFm1/d144ZPNxM
	3Tbt+tlhAQidFOFGkjVtw4dUtv4B1ZbcL0LiV6seKwBoZxUp5HJvFDJSnfUHlRrkPlSL3g+GNOrDe
	7riwiZ7QB5IKrlHx3CIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu736-0000000G3Aj-4BHQ;
	Wed, 12 Aug 2026 11:23:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu735-0000000G396-0hmT;
	Wed, 12 Aug 2026 11:23:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D53C240895;
	Wed, 12 Aug 2026 11:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C66141F000E9;
	Wed, 12 Aug 2026 11:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786533786;
	bh=B3rsdyeixsiXlBfzAYLbSOg97l+AnhbT2pZJO9UDMwo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=NzvnL8xooJNVRE+ZFFFVJE/7qqc41UxIpGFCZTlO5ynXasGpyx/cATuSHBMYr57fO
	 UnZe96Ne6yStFWnJqNgH6hqvyQUu/a1ukuCk7rb9LNvyKIMcoHOQ1zNkvDUs4C5mWl
	 zoVT6IMBHc4kj2doFm0f5RYbeVOJKbkMeiNVYFYGBuzMfayzlWhL/pIGTUM91o/W0w
	 NKw+LX2IJ/MdCHiWl3fIEzgCBDIOXNCtkk8kOoMnISv4ThcM89zw1aYpe+iVwC+QhZ
	 EHOCvkVEW1qWgRfh9UUq/WTkOCYUvoonBgR5hotFIoeekyHOli2Ck+PxI5LVNyKXZX
	 rbj1/HIl89MEw==
Message-ID: <ff957fbb-b8ed-485d-adaa-18258ed693a6@kernel.org>
Date: Wed, 12 Aug 2026 13:22:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
To: Marek Vasut <marex@nabladev.com>
Cc: linux-usb@vger.kernel.org, Pankaj Dev <pankaj.dev@st.com>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Rahul Kumar <rahul.kumar05@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Rosen Penev <rosenp@gmail.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-2-marex@nabladev.com>
 <20260812-silky-omniscient-dalmatian-b268cb@quoll>
 <ff691741-a110-44e8-90e7-ac54a96de1af@nabladev.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <ff691741-a110-44e8-90e7-ac54a96de1af@nabladev.com>
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

T24gMTIvMDgvMjAyNiAxMjo1NiwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gOC8xMi8yNiAxMjox
NSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gV2VkLCBBdWcgMTIsIDIwMjYg
YXQgMDI6NTU6NDFBTSArMDIwMCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+PiBGcm9tOiBQYW5rYWog
RGV2IDxwYW5rYWouZGV2QHN0LmNvbT4KPj4+Cj4+PiBEb2N1bWVudCBVU0IyIFBIWSBmb3IgU1RN
MzJNUDI1IFVTQjIgY29udHJvbGxlcnMsIHdoaWNoIGluY2x1ZGVzIHRoZQo+Pj4gVVNCMi4wIGhv
c3Qtb25seSBjb250cm9sbGVyIGFuZCBVU0IgMi4wIHBhcnQgb2YgdGhlIERXQzMgY29udHJvbGxl
ci4KPj4+IFR3byBzdWNoIFBIWXMgaW4gdG90YWwgYXJlIHByZXNlbnQgaW4gU1RNMzJNUDI1IFNv
QywgdGhleSBib3RoIGFyZQo+Pj4gc2xpZ2h0bHkgZGlmZmVyZW50LCB0aGVyZWZvcmUgdGhleSB1
c2UgZGlmZmVyZW50IGNvbXBhdGlibGUgc3RyaW5nCj4+Cj4+IFdoYXQgaXMgc2xpZ2h0bHkgZGlm
ZmVyZW50PyBUaGlzIHNob3VsZCBiZSBlaXRoZXIgaGVyZSwgb3IgYmV0dGVyLCBpbgo+PiAiZGVz
Y3JpcHRpb24iIHBhcnQuCj4gCj4gVGhleSBhcmUgYm90aCBTeW5vcHN5cyBGRU1UTy1QSFkgLCBi
dXQgdGhleSBhcmUgZWFjaCBhdHRhY2hlZCB0byBhIAo+IGRpZmZlcmVudCBjb250cm9sbGVyIChv
bmUgdG8gVVNCIDIuMCBob3N0ICwgdGhlIG90aGVyIHRvIERXQzMgRFJEKSAsIGFuZCAKPiB0aGVp
ciBjb250cm9sIGJpdHMgaW4gdGhlIHN5c3RlbSBjb250cm9sbGVyIHJlZ2lzdGVyIGFyZSBkaWZm
ZXJlbnQgZm9yIAo+IGVhY2ggdmFyaWFudC4KPiAKPiBJIGV4dGVuZGVkIHRoZSBkZXNjcmlwdGlv
biBpbiBWMi4KCkRlcGVuZGluZyBvbiB0aGUgYWN0dWFsIGRpZmZlcmVuY2UsIHRoaXMgcmF0aGVy
IGJlbG9uZ3MgdG8gdGhlIHBoYW5kbGUKdG8gc3lzY29uLCBpbnN0ZWFkIG9mIHNlcGFyYXRlIGNv
bXBhdGlibGUuCgo+IAo+Pj4gdG8gZGlzY2VybiB0aGVtLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IExlIEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0LmNvbT4KPj4+IFNp
Z25lZC1vZmYtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNuaWVyQGZvc3Muc3QuY29t
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QG5hYmxhZGV2LmNvbT4KPj4+
IFNpZ25lZC1vZmYtYnk6IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgo+Pj4gU2lnbmVk
LW9mZi1ieTogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVAc3QuY29tPgo+Pgo+PiBJbmNvbXBs
ZXRlL2luY29ycmVjdCBEQ08gY2hhaW4uIFdobyBzZW5kcyBpdD8gUmFodWw/Cj4gVGhpcyBpcyBs
aWZ0ZWQgZnJvbSB0aGUgU1QgZG93bnN0cmVhbSBrZXJuZWwgZm9yaywgaXQncyBhIGNvbWJpbmF0
aW9uIG9mIAo+IGEgYnVuY2ggb2YgY29tbWl0cyB0aGVyZSBhbmQgdGhlbiBjbGVhbmVkIHVwLiBQ
YW5rYWogYW5kIEZhYnJpY2UgZGlkIAo+IG1vc3Qgb2YgdGhlIGRvd25zdHJlYW0gd29yaywgSSBk
aWQgdGhlIGNsZWFuIHVwIGZvciB1cHN0cmVhbWluZy4gSSAKPiBjb2xsZWN0ZWQgdGhlIFNvQiBs
aW5lcyBmcm9tIGFsbCB0aGUgY29tbWl0cyBmcm9tIFNUIGRvd25zdHJlYW0gZm9yayBhbmQgCj4g
YWRkZWQgbWluZSwgaGVuY2UgdGhpcyBsaXN0LiBIb3cgc2hhbGwgSSBhZGRyZXNzIHRoaXMgY29y
cmVjdGx5LCB3aXRoIAo+IHNvbWUgQ28tZGV2ZWxvcGVkLWJ5IHRhZyA/IFdobyBnZXRzIHdoaWNo
IHRhZyA/CgpFdmVyeXRoaW5nIGV4cGxhaW5lZCBpbiBzdWJtaXR0aW5nIHBhdGNoZXMuIFRoZSBT
b0JzIHJlcHJlc2VudCB0aGUKY2hyb25vbG9naWNhbCBsaWZlY3lsZSBvZiB0aGUgcGF0Y2guIFBl
cnNvbiBzZW5kaW5nIHRoZSBwYXRjaCBpcwpvYnZpb3VzbHkgdGhlIGxhc3Qgb25lIHRvdWNoaW5n
LiBIb3cgUmFodWwgY291bGQgdG91Y2ggdGhlIGNvZGUgQUZURVIKeW91IHNlbnQgaXQ/CgoKQmVz
dCByZWdhcmRzLApLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
