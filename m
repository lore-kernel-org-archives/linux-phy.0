Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D7EBC61DCB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 13:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zPx91r/JER0ALsoreduHc2gPYtskwj7Q+ba5/tZoiU=; b=193n8sdFBWaZ8x
	8jAbmqQ46V6jL4tG3CagigpEGxKbHlJK11jPqy9dzcfxE3cpDRltzw31Oz7t05xrhNpAr6jhAVEgk
	3/VyFH7XiFRtZuRX4eAr5hca6Mz7HeNk43ldGeF9L6II225vCFKXMr0fV8zZ8dS+BJqX1rUuBz68v
	O1Yj3ASwXtK4bq8g89UtOCgm9vcTkgjA0Txbi7QN/OIjTItTCTDQEd3zbPyDsRPWpKR3kn3enUZnI
	c1pwjujSTbmJw9iOGT3V95ZrzTz0RbfSupzrEoFRMwaQOL3v/tVonK3wo1JU2wKuoHdSpk080wmip
	4Oj1qDEN6v3tocdG83xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx1z-00000005v9Y-1NeE;
	Fri, 28 Aug 2026 13:54:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx1x-00000005v8o-1SxQ
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 13:54:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E9DCD417E9;
	Fri, 28 Aug 2026 13:54:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F12C1F000E9;
	Fri, 28 Aug 2026 13:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925244;
	bh=2c8diSklvVUd6K6I6bSdgpwdYZU6SUVzQlMEjE+KPWA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QF4fewV3m9gBHaINgD97JHB3uR/xyDcmpuJKAR5IGoBnglde8KYq9Wu5FNZ/ZDL9o
	 axes+Ku5Awi2vrgnlRXUp9jifxGsrIsFzgCIrgJzCMALs5LDxiPV2RjLC/rBoVtYWZ
	 ZXZ9xdX5I/dKFwfulnZLw+YglsXjur8c4ekU48lZhxVEY/HQU2FTweL+Itv+LNvb4i
	 CCQh9KxJegNhbxxfqAMrdZebY7bo3bl+oXtOo+PoCcIItd+ovh2rVrZsjiA8QEOEKJ
	 c7I3MP6ZJy676XVwqHpqbj8+S0osR6f1YlmYFZwo4lWD2IV5cEUZjId1nBYKYVl55f
	 rqeqZQWM6seBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/15] dt-bindings: mfd: Add
 starfive,jh7110-hdmi-subsystem
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: dri-devel@lists.freedesktop.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, lee@kernel.org, linux-clk@vger.kernel.org
In-Reply-To: <20260828-jh7110-clean-send-v2-3-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134819eucas1p2c8e2bb95dd957981ec5e60e1da03223c@eucas1p2.samsung.com>
 <20260828-jh7110-clean-send-v2-3-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 13:54:03 +0000
Message-Id: <20260828135404.2F12C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGNvbXBhdGlibGUg
c3RyaW5nICdzdGFyZml2ZSxqaDcxMTAtaGRtaS1zdWJzeXN0ZW0nIGVtYmVkcyBzb2Z0d2FyZSBh
cmNoaXRlY3R1cmUgZGV0YWlscyBpbnRvIHRoZSBoYXJkd2FyZSBkZXNjcmlwdGlvbi4KLS0KCmNv
bW1pdCBmMjQ0YzhmMTg2OGRmMWM3ZDU1MDcyMDI5NTYxMTRlZDNkYmQ2NzVlCkF1dGhvcjogTWlj
aGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KCmR0LWJpbmRpbmdzOiBt
ZmQ6IEFkZCBzdGFyZml2ZSxqaDcxMTAtaGRtaS1zdWJzeXN0ZW0KClRoaXMgY29tbWl0IGFkZHMg
YSBkZXZpY2UgdHJlZSBiaW5kaW5nIGZvciB0aGUgU3RhckZpdmUgSkg3MTEwIEhETUkgc3Vic3lz
dGVtLgpUaGUgYmluZGluZyBkZXNjcmliZXMgYSBwYXJlbnQgZGV2aWNlIGFjdGluZyBhcyBhbiBN
RkQgdG8gaG9sZCBzaGFyZWQKcmVnaXN0ZXJzIGZvciBQSFkgYW5kIGNvbnRyb2xsZXIgY2hpbGRy
ZW4sIGFkZHJlc3NpbmcgYSBjaXJjdWxhciBjbG9jawpkZXBlbmRlbmN5LgoKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdGFyZml2ZSxqaDcxMTAt
aGRtaS1zdWJzeXN0ZW0ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZmQvc3RhcmZpdmUsamg3MTEwLWhkbWktc3Vic3lzdGVtLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbWZkL3N0YXJmaXZlLGpoNzExMC1oZG1pLXN1YnN5c3RlbS55YW1sClsgLi4uIF0KPiAr
ZGVzY3JpcHRpb246Cj4gKyAgVGhlIFN0YXJGaXZlIEpINzExMCBIRE1JIGJsb2NrIGlzIGEgbW9u
b2xpdGhpYyBJUCBjb250YWluaW5nIGJvdGgKPiArICB0aGUgZGlnaXRhbCBjb250cm9sbGVyIGxv
Z2ljIGFuZCB0aGUgYW5hbG9nIFBIWSBsb2dpYyBpbiBhIHNpbmdsZQo+ICsgIHJlZ2lzdGVyIHNw
YWNlLgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgY29uc3Q6IHN0
YXJmaXZlLGpoNzExMC1oZG1pLXN1YnN5c3RlbQoKW1NldmVyaXR5OiBMb3ddCklzIHRoZSB1c2Ug
b2YgInN1YnN5c3RlbSIgaW4gdGhpcyBjb21wYXRpYmxlIHN0cmluZyBpbnRlbnRpb25hbD8KCkRl
dmljZSB0cmVlIGJpbmRpbmdzIHR5cGljYWxseSBkZXNjcmliZSB0aGUgcGh5c2ljYWwgaGFyZHdh
cmUgYmxvY2sgcmF0aGVyCnRoYW4gdGhlIHNvZnR3YXJlIGFyY2hpdGVjdHVyZS4gU2luY2UgdGhl
IGNvbW1pdCBtZXNzYWdlIGFuZCBkZXNjcmlwdGlvbgppbmRpY2F0ZSB0aGUgSERNSSBJUCBpcyBh
IG1vbm9saXRoaWMgcGh5c2ljYWwgYmxvY2ssIGVuY29kaW5nIGEgTGludXgtc3BlY2lmaWMKZHJp
dmVyIGNvbmNlcHQgbGlrZSBhIHN1YnN5c3RlbSBvciBhbiBNRkQgcGFyZW50IGludG8gdGhlIGNv
bXBhdGlibGUgc3RyaW5nCmFwcGVhcnMgdG8gZW1iZWQgc29mdHdhcmUgZGV0YWlscyBpbnRvIHRo
ZSBoYXJkd2FyZSBkZXNjcmlwdGlvbi4KCkNvdWxkIHRoaXMgY29tcGF0aWJsZSBzdHJpbmcgYmUg
dXBkYXRlZCB0byByZWZsZWN0IHRoZSBhY3R1YWwgaGFyZHdhcmUgYmxvY2sncwpkZXNpZ25hdGlv
biB3aXRob3V0IHRoZSAic3Vic3lzdGVtIiBzdWZmaXg/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODI4LWpoNzExMC1jbGVhbi1z
ZW5kLXYyLTAtMzMxNjgwYzhiOWQxQHNhbXN1bmcuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
