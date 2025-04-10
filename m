Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 516EAC3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 11:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfOf5glDpZnZQ8rAktcWgxSOs5XcDS58S5QVHRlQadY=; b=Wksx8ASUMF5a4z
	+AbMU0D7//gmuuZreDJFr7d/gMvTBvDto5lUzcnmLMJLUFMH3x304ef2W3qgCMxmkOhfeoKBEIEWd
	OPr/dgBVRmJ8voQMDXkbCcBjPPxmQVyUY2hLrYF69U4JkCxaO73HvtvTbWq8hawI/DdrkIxc+8KtO
	Zqarna42jkFwCg7TAEz6pD5IzGl21Tab4y0mMvhIZT6TsjfNOZ5z67OudJsLfF7vTOwRpHFHoHNSR
	ezZrBX+DRaotlSJ2x/rsIGODekjX8zekYzxEQAfU8a8V5SVAkfSviUvJEBDdndyITHC5iD/FvESOb
	dvcqcEbjJe7NduBoFDOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ptL-0000000ABxx-2lZY;
	Thu, 10 Apr 2025 11:16:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nwd-00000009tOs-2Ky6;
	Thu, 10 Apr 2025 09:11:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Q7XeSNwUSyKsnPHjzguFYMm/+HQnjTgqG1Z3ie3pBlE=; b=k64BKgH2UFkjxG4Hthfdq7uVRP
	bYAoS6CUmGYx7xXgn1+VVf3RjjrbUYW5fNq+bxp1uO7DMOzVLjhD6FYaPk0YxTdx70jFgt/FdbjKx
	hn+5ant+gddH2+aUdKnm/V2OuA5//nbVyiCAZGhWVaDgDRxuKvHMunrDItSeCYABqoFSYjgBKqiDx
	KEp5DEIJP6uv7jCnxMb5tpp7y42m/3Ku4sT7kHOIUuUyWXrv3XILCQlQerunqrS8gyXNIA0Wcuzv/
	OQBi7bQ/coxWxu1xfcqFezqhP/Tn1hNpUvr9oGhQjrg4MUFP8aOICuFzyJINEXKWfT3vHcL6l3+16
	fwff5YEw==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2nwY-0003XO-TF; Thu, 10 Apr 2025 11:11:30 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Frank Wang <frank.wang@rock-chips.com>,
 Zhang Yubing <yubing.zhang@rock-chips.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: rockchip: Add missing "phy-supply" property
Date: Thu, 10 Apr 2025 11:11:30 +0200
Message-ID: <4668554.cEBGB3zze1@diego>
In-Reply-To: <20250407165607.2937088-1-robh@kernel.org>
References: <20250407165607.2937088-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_021135_598690_7C8591A2 
X-CRM114-Status: GOOD (  13.32  )
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

QW0gTW9udGFnLCA3LiBBcHJpbCAyMDI1LCAxODo1NjowNiBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nIChBcm0pOgo+IFNldmVyYWwgUm9ja2NoaXAgUEhZ
cyB1c2UgdGhlICJwaHktc3VwcGx5IiBwcm9wZXJ0eSwgYnV0IGRvbid0Cj4gZG9jdW1lbnQgaXQu
IEFkZCBpdCB0byB0aGUgY3VycmVudCBrbm93biB1c2Vycy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBS
b2IgSGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKPiAtLS0KPiB2MjoKPiAgLSBEcm9wIG1heEl0ZW1z
Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtbmFuZW5n
LWNvbWJwaHkueWFtbCAgIHwgMyArKysKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9waHktcm9ja2NoaXAtdXNiZHAueWFtbCAgfCAzICsrKwo+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLHBjaWUzLXBoeS55YW1sICB8IDMgKysr
Cj4gIDMgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1j
b21icGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1y
b2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4gaW5kZXggODg4ZTZiMmFhYzVhLi4zZTEwMWMz
YzVlYTkgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwK
PiBAQCAtNDIsNiArNDIsOSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAtIGNvbnN0OiBwaHkKPiAg
ICAgICAgLSBjb25zdDogYXBiCj4gIAo+ICsgIHBoeS1zdXBwbHk6Cj4gKyAgICBkZXNjcmlwdGlv
bjogU2luZ2xlIFBIWSByZWd1bGF0b3IKPiArCj4gICAgcm9ja2NoaXAsZW5hYmxlLXNzYzoKPiAg
ICAgIHR5cGU6IGJvb2xlYW4KPiAgICAgIGRlc2NyaXB0aW9uOgo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC11c2JkcC55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtdXNi
ZHAueWFtbAo+IGluZGV4IGI0MmYxMjcyOTAzZC4uOGI3MDU5ZDViMTgyIDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLXVzYmRw
LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1y
b2NrY2hpcC11c2JkcC55YW1sCj4gQEAgLTQ3LDYgKzQ3LDkgQEAgcHJvcGVydGllczoKPiAgICAg
ICAgLSBjb25zdDogcGNzX2FwYgo+ICAgICAgICAtIGNvbnN0OiBwbWFfYXBiCj4gIAo+ICsgIHBo
eS1zdXBwbHk6Cj4gKyAgICBkZXNjcmlwdGlvbjogU2luZ2xlIFBIWSByZWd1bGF0b3IKPiArCj4g
ICAgcm9ja2NoaXAsZHAtbGFuZS1tdXg6Cj4gICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1s
Iy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKPiAgICAgIG1pbkl0ZW1zOiAyCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscGNpZTMt
cGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlw
LHBjaWUzLXBoeS55YW1sCj4gaW5kZXggYmE2N2RjYTVhNDQ2Li5kN2RlOGI1MjdjNWMgMTAwNjQ0
Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxw
Y2llMy1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcm9ja2NoaXAscGNpZTMtcGh5LnlhbWwKPiBAQCAtNDYsNiArNDYsOSBAQCBwcm9wZXJ0aWVz
Ogo+ICAgIHJlc2V0LW5hbWVzOgo+ICAgICAgY29uc3Q6IHBoeQo+ICAKPiArICBwaHktc3VwcGx5
Ogo+ICsgICAgZGVzY3JpcHRpb246IFNpbmdsZSBQSFkgcmVndWxhdG9yCj4gKwo+ICAgIHJvY2tj
aGlwLHBoeS1ncmY6Cj4gICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9u
cy9waGFuZGxlCj4gICAgICBkZXNjcmlwdGlvbjogcGhhbmRsZSB0byB0aGUgc3lzY29uIG1hbmFn
aW5nIHRoZSBwaHkgImdlbmVyYWwgcmVnaXN0ZXIgZmlsZXMiCj4gCgoKCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
