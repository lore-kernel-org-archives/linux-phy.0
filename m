Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2155BCCD184
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 00:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+T9RJaizeW5Cay0W8xuy427X8zr3HYmbSNbj2Endnp8=; b=Ya67dKuH1c7O43
	W+QkfdjQZlt3RnmsU2BwfVYY5Hy+Yb00aqq1WEslccvQhBmdNCtmTsfZ6emRqGnGrtWznJ4WAPAHa
	5CMMydufS088Yhw2iyxj0p4riiZtAn77y/yd9wTUxMjIy5AoZGH//O9K4C6R7xpABAvu4sOx0kOJQ
	mdLsUJkxJngNiZDY4WzPktoprCSvEjvThyyUik2O2Z705ELkHjfjhIRon21YGkLsW1D+f3U8KEfVd
	7zQIvyc5uWUdizLhOc5oueVAST7Ssz4dZXv+K1CQces+ynODGIAWfHYlzJ90t43Fx3cQ0SlFcG1Kr
	21Occ4R10LguddATOFDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v717q-00000007NzH-3g6Z;
	Fri, 10 Oct 2025 00:36:50 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v717n-00000007NyC-3nTk
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 00:36:49 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-3324fdfd54cso1700661a91.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 17:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760056607; x=1760661407; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3uYueVCnhFig6wd4EAi1d6+7+lqgnd7MHxpQ+CybGP0=;
        b=oJ222abxkVqUQiKj8FqVi/vO6zp3EMkZb1XvQbYUrojAMAluiLFTRpFkwTO3CCq7pt
         RkQk+QJN88pRMzZePRQltVPKw/dxxCT1GlL6XdHQwcICr5DQXO1e4KM2oVsq2UGVLsky
         ijBxYkSRYPPVCAE9WwFpUZEIzRsb57p8EOF2QCNvyNfOFoklxdRl++t5yubhRdrpg4/B
         VaG2d+tlyesVeDEyS12nVaPwRwPrJ654RZV23sikcZya5/fO89Obid7l1diMrQHJIrUE
         cpwjjBe1rR18vQhkc+LZlyB/Gp0ghHPCZkgeU6w6kAwowUe0J/tYmaKJpv50Qf+V6NoV
         N7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760056607; x=1760661407;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3uYueVCnhFig6wd4EAi1d6+7+lqgnd7MHxpQ+CybGP0=;
        b=EcUaKoz8Zqa2/3GjLpMiWRQwc5G5RY0cmxbswecJGeaj4OmSe2brDO/SUquoYyh4pO
         pdxdg0N+1MiCHAr5almAjgy2WveQa584S89uAhUOlpnvgTBzbpjzMLfeZoQHHF13T31r
         BA6+m6R6i2in7gF2ZdSC3xwVFqaC5Kl3CwWRpZXUML2yVf7CJCZZPo85pIf1RbAztD7b
         wr9FJ6+zeoI73El4EO8y4q3nYNyqO2LqH/CU6XOqqlaDKorU7V1lok3zNO5UFtSwci4q
         0G9E/YoWtJYRZKHhXnB/hYlqdnOlRgu1qBYrKkIh0LWlb368nwpvogRIHnS94TYvs7Ar
         HeTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMtEhzruOW7icr8Y0qyG+v5cQhekPvS9u9vz6YHPNPYYuIvL2JpJWkfNBiVkI2sUqfyt/p6717j+U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxR/BNR7sEDxZpoNMHqZPH4HsweGw0R2W6iGVgkXgr0GaKxORlf
	IN+eS6swq53VVfeTQ9kjMbz5EE6/RVQTbsnU+sxGoa6pKXf3ugBFomQ3xKDy4nB8dZvbBUkDbMz
	EQs6LGuHoVitkvrllPvSX4IXN0LbZOZKg3S8wzPOm
X-Gm-Gg: ASbGncv2jg/EzvdhDwndVVfZ5WqB+ExxcH2nGPQDMNm8OBLXFqkRRHbamwJVvFc5Sc9
	cFaj+oViM0C/DKu45e03rXG9T7l35U93ggdpDQczYNf84lLkJ+bdeMgYS4/kX5iq4CX7pFeZp+s
	YTrwHCHfubqfdGV+DJaYCZJR/q8uTm4o1O8YT3aRySMImxN8V646z/hXdi3iseqNqtmnyntatrN
	ZKxfscSkN+H7u1TzHEzGwJU+hr45N2VqbGu7CU=
X-Google-Smtp-Source: AGHT+IGKjXjPSXyUWNxjvvey/PIj1qEWv3CW3/XJrVZRUI28DQ4Y1brYwXDEUls30Lbe70Hr5PouwmW4vqkFNVZptJA=
X-Received: by 2002:a17:90b:1c0a:b0:32d:e75a:5009 with SMTP id
 98e67ed59e1d1-33b5114d4f2mr13047772a91.1.1760056606410; Thu, 09 Oct 2025
 17:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com> <20251008060000.3136021-2-royluo@google.com>
 <20251008-slider-uncombed-66790ea92ea0@spud> <CA+zupgxnBK_k2X0_KKX9pUMMTwY4VhsyTEEVz6v+__u=2xR8Ow@mail.gmail.com>
 <20251009-lizard-slapstick-4de7dfe2322d@spud>
In-Reply-To: <20251009-lizard-slapstick-4de7dfe2322d@spud>
From: Roy Luo <royluo@google.com>
Date: Thu, 9 Oct 2025 17:36:09 -0700
X-Gm-Features: AS18NWDGN42gjmrB8C6_VuH2yevkuUM_X9h5rPKcbGr2ZgBfcB7UAfagMIfSoXY
Message-ID: <CA+zupgwAXQEuhZUqbjxOC+9HbRG3SQ-_fhEX-49NpfCgqO4BZA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_173647_946633_78734E35 
X-CRM114-Status: GOOD (  25.30  )
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

T24gVGh1LCBPY3QgOSwgMjAyNSBhdCAxMDoxM+KAr0FNIENvbm9yIERvb2xleSA8Y29ub3JAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIE9jdCAwOCwgMjAyNSBhdCAwOTo0MDo1N1BNIC0w
NzAwLCBSb3kgTHVvIHdyb3RlOgo+ID4gT24gV2VkLCBPY3QgOCwgMjAyNSBhdCAxOjU44oCvUE0g
Q29ub3IgRG9vbGV5IDxjb25vckBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gV2Vk
LCBPY3QgMDgsIDIwMjUgYXQgMDU6NTk6NTdBTSArMDAwMCwgUm95IEx1byB3cm90ZToKPgo+ID4g
PiA+ICthbGxPZjoKPiA+ID4gPiArICAtICRyZWY6IHNucHMsZHdjMy1jb21tb24ueWFtbCMKPiA+
ID4gPiArCj4gPiA+ID4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiA+ID4KPiA+ID4g
U28gZXZlcnkgcHJvcGVydHkgZnJvbSBzbnBzLGR3YzMtY29tbW9uLnlhbWwgaXMgdmFsaWQgaGVy
ZSwgd2l0aCBhbnkgb2YKPiA+ID4gdGhlIHBlcm1pdHRlZCB2YWx1ZXM/Cj4gPgo+ID4gQ29ub3Is
Cj4gPgo+ID4gQXBwcmVjaWF0ZSB0aGUgcmV2aWV3Lgo+ID4gQWNrIHRvIGFsbCB0aGUgY29tbWVu
dHMsIHdpbGwgZml4IHRoZW0gaW4gdGhlIG5leHQgcGF0Y2guCj4gPiBBbmQgeWVzLCBldmVyeSBw
cm9wZXJ0eSBmcm9tIHNucHMsZHdjMy1jb21tb24ueWFtbCBpcyB2YWxpZCBoZXJlLgo+ID4gWW91
IGNhbiBmaW5kIG1vcmUgY29udGV4dCBoZXJlIFsxXSwgZXNzZW50aWFsbHkgdGhlIGR3YzMgZ2x1
ZSB3b3VsZCBiZQo+ID4gb3BlcmF0aW5nIG9uIHRoZSBzYW1lIHBsYXRmb3JtIGRldmljZSBhcyB0
aGUgZHdjMyBjb3JlLCBoZW5jZSBhbGwKPiA+IHByb3BlcnRpZXMgYXJlIGFsbG93ZWQuCj4gPgo+
ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDQxNC1kd2MzLXJlZmFjdG9y
LXY3LTAtZjAxNWIzNTg3MjJkQG9zcy5xdWFsY29tbS5jb20vCj4KPiBJIGZpbmQgaXQgZXhjZWVk
aW5nbHkgaGFyZCB0byBiZWxpZXZlIHRoYXQgZXZlcnkgcHJvcGVydHkgZnJvbSB0aGF0Cj4gZmls
ZSwgd2l0aCBldmVyeSBwZXJtaXR0ZWQgdmFsdWUsIGlzIHBvc3NpYmxlLiBBRkFJVSwgdGhlIHRl
bnNvciBnNSBpcyBhCj4gcGhvbmUgY2hpcCB0aGF0J3Mgb25seSB1c2VkIGluIHBpeGVsIGRldmlj
ZXMsIG5vdCBzb21ldGhpbmcgdGhhdCBwZW9wbGUKPiBjYW4ganVzdCBidXkgYW5kIGludGVncmF0
ZSBpbnRvIHdoYXRldmVyIGRldmljZSB0aGV5IGZlZWwgbGlrZS4gVGhlcmUKPiBzaG91bGQgYmUg
YSB2YW5pc2hpbmdseSBzbWFsbCBudW1iZXIgb2YgcG9zc2libGUgY29uZmlndXJhdGlvbnMsCj4g
cG9zc2libHkgZXhhY3RseSBvbmUgY29uZmlndXJhdGlvbi4gVGhlcmUgYXJlIGRvemVucyBvZiBw
cm9wZXJ0aWVzIGluCj4gdGhlIGR3YzMgY29tbW9uIGJpbmRpbmcsIG9mIHdoaWNoIGF0IGxlYXN0
IDEwIGFyZSBmb3IgInF1aXJrcyIgb3Igb3RoZXIKPiBzb3J0cyBvZiBoYXJkd2FyZSBlcnJhdGEg
dGhhdCBhcmUgbm90IGdvaW5nIHRvIGJlIHZhcmlhYmxlIGZyb20gb25lCj4gcGhvbmUgdG8gYW5v
dGhlci4KClRvIG15IGtub3dsZWRnZSwgdGhlIHByb3BlcnRpZXMgaW4gc25wcyxkd2MzLWNvbW1v
bi55YW1sIGNhbiBnZW5lcmFsbHkKYmUgY2F0ZWdvcml6ZWQgaW50byB0d28gdHlwZXM6Ci0gRnVu
Y3Rpb24ga25vYnM6IFRoZXNlIHByb3BlcnRpZXMgdHJhbnNsYXRlIGRpcmVjdGx5IHRvIHJlZ2lz
dGVyIHdyaXRlcyB0aGF0CiAgbW9kaWZ5IHRoZSBjb250cm9sbGVyJ3MgZnVuZGFtZW50YWwgYmVo
YXZpb3IuIE1vc3QgcXVpcmtzIGZhbGwgaW50byB0aGlzCiAgY2F0ZWdvcnkuIEZvciBleGFtcGxl
LCAic25wcyxnZmxhZGotcmVmY2xrLWxwbS1zZWwtcXVpcmsiIGVuYWJsZXMgU09GIGNvdW50ZXIu
Ci0gVHVuYWJsZSBWYWx1ZXM6IFRoZXNlIHByb3BlcnRpZXMgYWxzbyBtYXAgdG8gcmVnaXN0ZXIg
d3JpdGVzIHRvIGluZmx1ZW5jZQogIGhhcmR3YXJlIGJlaGF2aW9yLCBidXQgdGhleSB0eXBpY2Fs
bHkgYWRqdXN0IHBlcmZvcm1hbmNlIG9yIGludGVyb3BlcmFiaWxpdHkKICByYXRoZXIgdGhhbiBl
c3NlbnRpYWwgZnVuY3Rpb24uIFdoaWxlIHRoZSBoYXJkd2FyZSB1c3VhbGx5IHdvcmtzIGZpbmUg
d2l0aAogIGRlZmF1bHQgc2V0dGluZ3MsIHRoZXNlIHZhbHVlcyBhbGxvdyBmb3Igb3B0aW1pemF0
aW9uLiBGb3IgZXhhbXBsZSwKICAidHgtZmlmby1tYXgtbnVtIiB1c3VhbGx5IGFmZmVjdHMgZGF0
YSB0aHJvdWdocHV0LgoKRm9yIERXQzMgaGFyZHdhcmUgZXJyYXRhIGFuZCB3b3JrYXJvdW5kcywg
bXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZXkKYXJlIHR5cGljYWxseSBoYW5kbGVkIHdpdGhp
biB0aGUgZHdjMyBkcml2ZXIsIG9mdGVuIGludm9sdmluZyBhIERXQzMgcmV2aXNpb24KY2hlY2sg
KGUuZy4gWzFdKSwgaW5zdGVhZCBvZiBpbiB0aGUgZGV2aWNlIHRyZWUgYmluZGluZy4gV2hpbGUg
eW91IG1heSBmaW5kCnByb3BlcnRpZXMgcmVsYXRlZCB0byBlcnJhdGEsIHRoZXkgZ2VuZXJhbGx5
IHNlcnZlIHRvIGVuYWJsZSBvciBkaXNhYmxlIGFuCmV4aXN0aW5nIHdvcmthcm91bmQgKGUuZy4g
WzJdKS4KCkZvciBQaXhlbCBkZXZpY2VzLCBpdCdzIHNoaXBwZWQgd2l0aCBhIHByZWZlcnJlZCBj
b25maWd1cmF0aW9uLCBidXQgdGhlIGhhcmR3YXJlCmlzIGZ1bmRhbWVudGFsbHkgY2FwYWJsZSBv
ZiBzdXBwb3J0aW5nIG90aGVyIGNvbmZpZ3VyYXRpb25zIHNpbmNlIHRoZSBwcm9wZXJ0aWVzCmFy
ZSBiYWNrZWQgYnkgdGhlIFNOUFMgRFdDMyBJUC4gV2hldGhlciB0aGF0J3Mgb3B0aW1hbCBpcyBh
IGRpZmZlcmVudCBzdG9yeS4KSSBoYXZlbid0IHRyaWVkIHRvZ2dsaW5nIGV2ZXJ5IHNpbmdsZSBw
cm9wZXJ0eSBidXQgSSdtIG5vdCBhd2FyZSBvZiBhbnkgcHJvcGVydHkKdGhhdCBvYnZpb3VzbHkg
ZG9lcyBub3Qgd29yayBvbiBUZW5zb3IgRzUuCgpJIGhvcGUgdGhpcyBhZGRyZXNzZXMgeW91ciBj
b25jZXJuLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21taXQvMzJh
NGExMzU4NDdiMWU2MDBjNjQ3NTZiN2M3YzdhOTFlYjJmMGFhOQogICAgKHNvcnJ5IEknbSB1bmFi
bGUgdG8gZmluZCB0aGUga2VybmVsIGxvcmUgbGluayBmb3IgdGhpcyBjb21taXQpClsyXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMTUwOTQ1NTUxNS01OTkyLTEtZ2l0LXNlbmQtZW1haWwt
cm9nZXJxQHRpLmNvbS8KClJlZ2FyZHMsClJveSBMdW8KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
