Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19656C982EA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jszoqj8LR1wKeFpybKp4rn9SQltgifw5Ty0+YkvetVc=; b=xQovHDLYtba8Ew
	IS5s0O41cR15QB4ECNKkTUzxM7MHpeuzESgQGkYHIZLoMkEjROeuKeGc6emWyTgM/ZTzVS/czrhH5
	2zq7CCGJ0opbVS0U7H+DbbI+aS8a7+ukg/BnnitR+Ks/1Ht/B02H+0Ha8M9CQCgsJR3HdQPRBgHS9
	bOfXfmJkY4ybmp9gcqtTc0cnxCGJwWKIjESniuNdjBZmlFPQc8EJbjfGREIMuJZ/9nnlHz2RZeQbX
	GjH1iOVoJBHnXh37ulRRf1XDoju9GxGC8o4kRgqJ1/CW7PA0z228f9WgKZZej3I0XFzdXAtubO1fZ
	A6DzVtdPLVQxKeN4LBiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS0-0000000H0TA-3JWd;
	Sun, 20 Sep 2026 06:55:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRz-0000000H0Ro-0zXH
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:54:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AC2276022B;
	Sun, 20 Sep 2026 06:54:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C51A21F00893;
	Sun, 20 Sep 2026 06:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887298;
	bh=oskMTIyV7i2gXAIDnjl4jU5EbhmDFjCKpO/fGhi1j8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=egt1unYdPub2WqD6S0NhHtw32cl3vozmTt2TDdgrYFDdYcQDOHVe35WSYURKp81HM
	 zRZX1xaIh2Wbj4vmwvKqNNWb+sQr048h+4Xt1bYkFQFH13s2uhW8Z5s4wIpwMJDoAi
	 DrgxADwunOt4dz6cKPPYCzjnNdXDzIzYRG2tkcD1edg4D+e3mOGVSFYNfKjfBg642P
	 b1x8rPp8GrgDfTZz9dVSFEPkcjkCN/uH8zVXIeE/To0VQfErK7ekbq/tUG8Bt/3e3B
	 2rmAazWa7VzSzYnDN/eFXsPs3TP1fsYC9TmvVOOqWlwVMxPW0ObWH15v1hxceWN6oS
	 ePUWM4KFP1ZjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 05/12] net: pcs: Add NXP S32G XPCS driver
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org, vkoul@kernel.org, olteanv@gmail.com, imx@lists.linux.dev, wsa+renesas@sang-engineering.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260919-s32g_serdes-v3-5-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-5-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:54:57 +0000
Message-Id: <20260920065457.C51A21F00893@smtp.kernel.org>
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

PiBGcm9tOiBWaW5jZW50IEd1aXR0b3QgPHZpbmNlbnQuZ3VpdHRvdEBsaW5hcm8ub3JnPgo+IAo+
IFRoZSBTMzJHIFNvQyBmYW1pbHkgaW5jbHVkZXMgdHdvIFNlckRlcyBzdWJzeXN0ZW1zLCBlYWNo
IG1hZGUgb2Ygb25lCj4gUENJZSBjb250cm9sbGVyLCB0d28gRGVzaWduV2FyZSBYUENTIGluc3Rh
bmNlcyBhbmQgYSBzaGFyZWQgMi1sYW5lCj4gY29tYm8gUEhZLiBBZGQgdGhlIHBoeWxpbmsgUENT
IGRyaXZlciBmb3IgdGhlIFhQQ1MgaW5zdGFuY2VzLCB3aXRoIDFHCj4gU0dNSUkgc3VwcG9ydC4K
PiAKPiBUaGUgWFBDUyBQTUEvUExMIGJyaW5nLXVwIGlzIGEgcHJvcGVydHkgb2YgdGhlIHNoYXJl
ZCBjb21ibyBQSFk6IGluIHRoZQo+IFBDSWUrU0dNSUkgbW9kZXMgdGhlIHR3byBYUENTIGluc3Rh
bmNlcyBzaGFyZSB0aGUgUEhZIHdpdGggdGhlIFBDSWUKPiBsYW5lLCBzbyB0aGUgWFBDUyBjYW5u
b3QgYmUgYSBzZWxmLWNvbnRhaW5lZCBQQ1MgcGxhdGZvcm0gZGV2aWNlIHRoYXQKPiBvd25zIGl0
cyBvd24gcmVzZXQvYnJpbmctdXAgc2VxdWVuY2UuIFRoaXMgZHJpdmVyIHRoZXJlZm9yZSBleHBv
c2VzIGEKPiBzbWFsbCBpbml0L2JyaW5nLXVwIEFQSSB3aGljaCB0aGUgU2VyRGVzIFBIWSBkcml2
ZXIgc2VxdWVuY2VzIChpdCBvd25zCj4gdGhlIHNoYXJlZCBQTUEgYW5kIGVuZm9yY2VzIHRoZSBy
ZXF1aXJlZCBvcmRlcmluZywgZS5nLiBYUENTMSBiZWZvcmUKPiBYUENTMCBpbiB0aGUgZHVhbC1T
R01JSSBtb2RlKSwgd2hpbGUgdGhlIHBoeWxpbmtfcGNzIG9wcyBjb25zdW1lZCBieSB0aGUKPiBN
QUMgbGl2ZSBoZXJlIGluIHRoZSBQQ1MgZHJpdmVyLiBUaGUgTUFDIG9idGFpbnMgaXRzIHBoeWxp
bmsgUENTIHZpYQo+IFsgLi4uIF0KPiBTaWduZWQtb2ZmLWJ5OiBJb251dCBWaWNvdmFuIDxJb251
dC5WaWNvdmFuQG54cC5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBCb2dkYW4gUm9tYW4gPGJvZ2Rh
bi1nYWJyaWVsLnJvbWFuQG54cC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQm9nZGFuIFJvbWFuIDxi
b2dkYW4tZ2FicmllbC5yb21hbkBueHAuY29tPgo+IENvLWRldmVsb3BlZC1ieTogSmFuIFBldHJv
dXMgKE9TUykgPGphbi5wZXRyb3VzQG9zcy5ueHAuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbiBQ
ZXRyb3VzIChPU1MpIDxqYW4ucGV0cm91c0Bvc3MubnhwLmNvbT4KClNhc2hpa28gaGFzIHJldmll
d2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
OTE5LXMzMmdfc2VyZGVzLXYzLTAtOWQ2ODg2OGMxZTg5QG9zcy5ueHAuY29tP3BhcnQ9NQoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
