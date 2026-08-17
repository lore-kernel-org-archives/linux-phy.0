Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BF5C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 22:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH6vDSXaeAxjvS+DAFfVO81Tq7BbjYKB/lsrq52+few=; b=O/+/UII7+21/Ze
	TZTfBPOi1ijfaam3AdWpAhvijzO5eCgoueRHiJMNfMomzzIZ9X45RK3zqzfyKWTtn+WQuZkHQAsF1
	RR0cQC6kcBBV0rAPZQrm2EuKDc+GA3AsEc5zm2j6ImatLQugVeghMISZ/N3QZ/ydP/CAkUL1q735W
	PmuUcSSSlhUZ2cY3R0zTsow0wzCIjomhzevpwShGcKkLtJ9rZCsHmA0t9k4osqmZbuET0JmRTKkio
	GeQ0z1rhmeSB3h1mjRQxE1vfmRx/kQhO+NKgpYS27+aQ/DxkFs6mufev7i2q+adiP+WzJ3X/KIUsT
	iI6Hh+r5jXEN4oyVOLZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5OR-00000006tNr-1DPm;
	Mon, 17 Aug 2026 22:01:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5OP-00000006tNi-3YBP
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 22:01:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6EBE742CEA;
	Mon, 17 Aug 2026 22:01:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C52651F000E9;
	Mon, 17 Aug 2026 22:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787004077;
	bh=pliYGYHtdmdARCEEqN30Evggu96lW3D1pLldHpVZD84=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ILFj3rjmvjmwyEREN1/OorRSbPgRBhn5atFMf9r7CYTSS2meEksSRxI2yplvlQBPj
	 2Ijn3H92+0oJK3xjwZ/X2IIEXBhXuBcphb/H+ECHaaGtFduUhMM5qZUC/MbpUaVm0f
	 sdVgia6whbg0t6ZcHvEHa4QTLyjxiOjhhJNHrEKgHG4YpovA9AXjZxxmZbJr3Fy7g9
	 rsRpVT3vOfAIPH0II7sWs+S9mFIwrfziga05P9C+mCSnEDX6xqy+zIWqFG3jYY6xlK
	 Y1u8tCjXKofi3uZYACB2rFIAMgfo2I0PNWECLVAtm0olLq1gI/HwGX9kuwjDgdJhEi
	 COtqe04xBEshw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 7/7] dt-bindings: usb: ti,da830-musb: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: olteanv@gmail.com, dmaengine@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260818-ti-am33-usb-v1-7-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
 <20260818-ti-am33-usb-v1-7-69ac5f92df45@gmail.com>
Date: Mon, 17 Aug 2026 22:01:16 +0000
Message-Id: <20260817220116.C52651F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGBkbWEtbmFtZXNg
IHByb3BlcnR5IGxhY2tzIHRoZSBzdHJpbmcgcGF0dGVybiBjb25zdHJhaW50IGRlZmluZWQgaW4g
dGhlIG9yaWdpbmFsIHRleHQgYmluZGluZy4KLS0KCi0tLSBQYXRjaCBbN106IFtQQVRDSCA3Lzdd
IGR0LWJpbmRpbmdzOiB1c2I6IHRpLGRhODMwLW11c2I6IENvbnZlcnQgdG8gRFQgc2NoZW1hIC0t
LQpjb21taXQgMzkzOTRhODA4YWU3NWZlMjY5YTk2YWMzYjhlZTcxMDZhYTk4YzllYQpBdXRob3I6
IEJoYXJnYXYgSm9zaGkgPGouYmhhcmdhdi51QGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdzOiB1c2I6
IHRpLGRhODMwLW11c2I6IENvbnZlcnQgdG8gRFQgc2NoZW1hCgpUaGlzIGNvbW1pdCBjb252ZXJ0
cyB0aGUgVEkgREE4eHgvT01BUC1MMXggTVVTQiB0ZXh0IGJpbmRpbmdzIHRvIGRldmljZSB0cmVl
CnNjaGVtYSBmb3JtYXQuIEl0IGFsc28gYWRkcyByZXF1aXJlZCBhZGRyZXNzIGFuZCBzaXplIGNl
bGxzIHByb3BlcnRpZXMgc2luY2UKdGhlIERBOHh4IE1VU0Igbm9kZSBhY3RzIGFzIGEgcGFyZW50
IGJ1cyBmb3IgdGhlIENQUEk0MSBETUEgY29udHJvbGxlci4KCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvdGksZGE4MzAtbXVzYi55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxkYTgzMC1tdXNiLnlhbWwKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmM1NGJkZmI0ZDFhZDkK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3VzYi90aSxkYTgzMC1tdXNiLnlhbWwKClsgLi4uIF0KCj4gKyAgZG1hczoKPiArICAgIG1pbkl0
ZW1zOiAxCj4gKyAgICBtYXhJdGVtczogOAo+ICsKPiArICBkbWEtbmFtZXM6Cj4gKyAgICBtaW5J
dGVtczogMQo+ICsgICAgbWF4SXRlbXM6IDgKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgY29k
ZSBkcm9wIHRoZSBuYW1pbmcgY29uc3RyYWludCBkZWZpbmVkIGluIHRoZSBvcmlnaW5hbCB0ZXh0
IGJpbmRpbmc/CgpUaGUgcHJldmlvdXMgdGV4dCBkb2N1bWVudCBzcGVjaWZpZWQ6ICJVc2UgcnhO
IGZvciByZWNlaXZlIGFuZCB0eE4gZm9yCnRyYW5zbWl0IGVuZHBvaW50cy4gTiBzcGVjaWZpZXMg
dGhlIGVuZHBvaW50IG51bWJlci4iCgpUaGlzIGRlZmluaXRpb24gbGFja3MgYW4gaXRlbXMgc2Vj
dGlvbiB3aXRoIGEgcGF0dGVybiBjb25zdHJhaW50IChzdWNoIGFzCnBhdHRlcm46ICJeKHJ4fHR4
KVsxLTRdJCIpIHRvIGVuZm9yY2UgdGhlIGV4cGVjdGVkIGVuZHBvaW50IG5hbWluZy4gV2l0aG91
dAp0aGlzIGNvbnN0cmFpbnQsIHRoZSBzY2hlbWEgd2lsbCBhbGxvdyBpbnZhbGlkIGRldmljZSB0
cmVlcyB3aXRoIGFyYml0cmFyeQpkbWEtbmFtZXMgdG8gc2lsZW50bHkgcGFzcyB2YWxpZGF0aW9u
LgoKPiArCj4gKyAgdmJ1cy1zdXBwbHk6Cj4gKyAgICBkZXNjcmlwdGlvbjogUGhhbmRsZSB0byBh
IHJlZ3VsYXRvciBwcm92aWRpbmcgdGhlIFVTQiBidXMgcG93ZXIuCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODE4LXRpLWFtMzMt
dXNiLXYxLTAtNjlhYzVmOTJkZjQ1QGdtYWlsLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
