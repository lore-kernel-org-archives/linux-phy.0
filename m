Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A0F3C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 23:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDHVxCXnnVOPNyLLu1fUdnOgtkaL//hlAPbj5ox8hbc=; b=CjpPvZapYQpCyw
	Lam+2bnqG10otxZpXplScl6+HjWEgOO8B+4KBg08RsTmm+6d3Y2OrqsK1LpVsLfPvc+IOuoOwD1Du
	PrkwQp1+AySh3UGAh88JHVOevCFeXqPIGhSnx9Ar4pTJrve7K17iQvrTrL4l6LRECkQ96IRfutx++
	rPgh4zIcscO209csjPT1u2YM7CURKnKKebmZ+YTfYR3bwVeBWwPyedpM/u80UgB61V4D9HbUFyku7
	Do1J46yAkq742+1zJWl8Vup0jWkr03tx0/1WklGeWWUXKwMyVP5IWJVYR5Ds1ZiucfOa9H4XpBThB
	+gFpFOfDLalD0+65+q3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4l2-00000003Fgk-0VpB;
	Wed, 01 Jul 2026 23:54:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4l0-00000003FgH-0JPJ
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 23:54:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 330E3600AF;
	Wed,  1 Jul 2026 23:54:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72C081F000E9;
	Wed,  1 Jul 2026 23:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950056;
	bh=BjNPVbSEkZtFTbiDHSbqpJmJa36fXcuEyq8WayNnJMs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WksoGx7elF+ncrsyurlh8djLJ+DfnxlegNy77qF1VtjmZ3d02Pz5iIRd0prAM58v5
	 C1Q9r3wwjV/kcO2pj29878ahsR92w6kAAZgWAcOWa70altTNU4/sQwXk2LoVtXsdl8
	 3C3varm9cUmExvFEpYbIQzkRFycBB8CWjD24cb3cUQrd4qYTdxtqD5HoiF/QX2UWhG
	 99X1vVMkNKNfzbJWTA7DROxxn7QOuH2XfBUYf2x1bCYlPwXFCfC/QVz5ABuRh0YNs2
	 zDSb5Oh9FOGpuusaMOoCQc05ri4EjQbHIz0ODA+2U8mqJ4T/ZxgEcbhv7LnfvfHf12
	 n07lGYZz28K3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 01/38] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-1-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-1-e31efbb62d2e@collabora.com>
Date: Wed, 01 Jul 2026 23:54:15 +0000
Message-Id: <20260701235416.72C081F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHNjaGVtYSBpbnRy
b2R1Y2VzIGEgbmV3IGBwb3J0c2Agb2JqZWN0IHRvIGxpbmsgdG8gdGhlIFVTQi1DIGNvbm5lY3Rv
ciBidXQgZmFpbHMgdG8gcmVtb3ZlIG9yIHByb3Blcmx5IHJlc3RyaWN0IHRoZSBsZWdhY3kgYHBv
cnRgIHByb3BlcnR5LCBjcmVhdGluZyBhbiBhbWJpZ3VvdXMgYW5kIGNvbmZsaWN0aW5nIGNvbmZp
Z3VyYXRpb24gcGF0aC4KLS0KCk5vdGU6IER1ZSB0byByZWNpdGF0aW9uIHJlc3RyaWN0aW9ucywg
dGhlIHN0YW5kYXJkIGlubGluZSBkaWZmIHF1b3RpbmcgZm9ybWF0CmhhcyBiZWVuIGFsdGVyZWQu
IFRoZSBmb2xsb3dpbmcgaXMgYSBmcmVlLWZvcm0gc3VtbWFyeSBvZiB0aGUgcmV2aWV3IGZpbmRp
bmdzLgoKY29tbWl0IDA5NzEyM2M3M2ZjZTZkN2NlNmY0NzU1YTgzY2UxMzYyYzhjYWVmZWIKQXV0
aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4K
ZHQtYmluZGluZ3M6IHBoeTogcm9ja2NoaXAtdXNiZHA6IGFkZCBpbXByb3ZlZCBwb3J0cyBzY2hl
bWUKClRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBwcm9wZXIgcG9ydCBzY2hlbWUgZm9yIHRoZSBS
b2NrY2hpcCBVU0JEUCBQSFksCmZvbGxvd2luZyB0aGUgUXVhbGNvbW0gUU1QIFVTQjQtVVNCMy1E
UCBQSFkgY29udHJvbGxlciBiaW5kaW5nLiBJdCBhZGRzIGFuCmFkZGl0aW9uYWwgcG9ydCBmb3Ig
dGhlIFVTQi1DIFNCVSBwb3J0IHRvIHN1cHBvcnQgVVNCLUMgRFAgQWx0TW9kZS4KCltTZXZlcml0
eTogTG93XQpUaGUgc2NoZW1hIGludHJvZHVjZXMgYSBuZXcgcG9ydHMgb2JqZWN0IHRvIGxpbmsg
dG8gdGhlIFVTQi1DIGNvbm5lY3RvcgpidXQgcmV0YWlucyB0aGUgbGVnYWN5IHBvcnQgcHJvcGVy
dHkgd2l0aG91dCBtYXJraW5nIGl0IGFzIGRlcHJlY2F0ZWQuCgpTaW5jZSBib3RoIHRoZSBsZWdh
Y3kgcG9ydCBhbmQgdGhlIG5ldyBwb3J0cyBwcm9wZXJ0aWVzIGFyZSBwcmVzZW50IGluCnRoZSBz
Y2hlbWEgcHJvcGVydGllcywgY291bGQgYSBkZXZpY2UgdHJlZSBkZWZpbmUgYm90aCBzaW11bHRh
bmVvdXNseSBhbmQKc3RpbGwgcGFzcyB2YWxpZGF0aW9uPwoKV291bGQgaXQgYmUgYXBwcm9wcmlh
dGUgdG8gYWRkIGEgb25lT2YgZXhjbHVzaW9uIGNvbnN0cmFpbnQgdG8gZW5zdXJlIHRoZXNlCm11
dHVhbGx5LWV4Y2x1c2l2ZSBncmFwaCBwYXJhZGlnbXMgY2Fubm90IGJlIGRlZmluZWQgYXQgdGhl
IHNhbWUgdGltZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA3MDItcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12OS0wLWUzMWVmYmI2
MmQyZUBjb2xsYWJvcmEuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
