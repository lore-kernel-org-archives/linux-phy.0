Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E60C71130
	for <linux-phy@archiver.kernel.org>; Mon,  7 Jul 2025 22:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=cwfHjzyBZS633Pr8+gpSWQK+PkqRc6MqDE7I1WCC0G8=; b=wI+8CH1p5KLMXk
	4jWvwDWyfu9qQyIL3rGBPHgnCBp162OpQmd/fjgvEjuZ123IlhmP9hRRtCOKoB4TIVHk655FafL+W
	a6MpyU9sLeRxmghJ12dqXV0cVVKpUPkWsVdOTGjj1jqXMXDMsd4glBfUbmjw/BiDFMioa6WnJshvG
	41N/C+Ik3bWqcDC3wHNpN0dob/ZoSrgDQNWR13jtSwMZRq2IjdPlFRHAa+hLG6VPjpAJ8v9xGXIpD
	JdTYGtfA4VuYGRrhCnF2gPsU6vQo0vY7lV9eCyi1XbqKi3tELUGOJ6IonDa1OYQbVGSx7AG7IZHLo
	/yf+voc1a2sWUeOQC59A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYuGM-00000003hk1-0QTh;
	Mon, 07 Jul 2025 22:24:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYuE2-00000003hbX-0EIO;
	Mon, 07 Jul 2025 22:22:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EC95FA4AC08;
	Mon,  7 Jul 2025 22:22:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 690CEC4CEE3;
	Mon,  7 Jul 2025 22:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751926932;
	bh=VKmtbfxhoTD48D/ekjwLMwNv+Dp8aDndHjI4BucvUmw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=MfKa/VY/D8o8WU7cbff2usg9a9qVjvAGjstrw4JfKOUNiEmnK9naUFS4mixRLJPk1
	 jJ2V7GtmTRQ3z95LkSEx6PD8pJAAcx4qR8ZhIMV1HFBPkGP/b1MEqj9rlfp7YHZ1go
	 6s6D8X/Im9CgH+leQZTYV+lNEyL1w0QCOBu7n3Q57j6qrpdNPviZpzpFwRtaJRZzWO
	 wEm0LUHD4zVPrPrnc1B+Zs5qHC73U5SR19nj3EGKXpRLurHN7xTlvB4T7xcLT6kHUr
	 KxemPjXfbUU7B6+tUQRp49II+xFWg0p5Zhs8v/PjK57RzlYWvDbxivuRx8EETx3jLh
	 rb+BuzBG+NS3A==
Date: Mon, 7 Jul 2025 17:22:10 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rick wertenbroek <rick.wertenbroek@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Valmantas Paliksa <walmis@gmail.com>, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH v9 1/4] PCI: rockchip: Use standard PCIe defines
Message-ID: <20250707222210.GA2114615@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e81700ef4b49f584bc8834bfb07b6d8995fc1f42.1751322015.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_152214_162644_DE36962D 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBKdW4gMzAsIDIwMjUgYXQgMDc6MjQ6NDFQTSAtMDMwMCwgR2VyYWxkbyBOYXNjaW1l
bnRvIHdyb3RlOgo+IEN1cnJlbnQgY29kZSB1c2VzIGN1c3RvbS1kZWZpbmVkIHJlZ2lzdGVyIG9m
ZnNldHMgYW5kIGJpdGZpZWxkcyBmb3IKPiBzdGFuZGFyZCBQQ0llIHJlZ2lzdGVycy4gQ2hhbmdl
IHRvIHVzaW5nIHN0YW5kYXJkIFBDSWUgZGVmaW5lcy4gU2luY2UKPiB3ZSBhcmUgbm93IHVzaW5n
IHN0YW5kYXJkIFBDSWUgZGVmaW5lcywgZHJvcCB1bnVzZWQgY3VzdG9tLWRlZmluZWQgb25lcywK
PiB3aGljaCBhcmUgbm93IHJlZmVyZW5jZWQgZnJvbSBvZmZzZXQgYXQgYWRkZWQgQ2FwYWJpbGl0
aWVzIFJlZ2lzdGVyLgoKPiBAQCAtMjc4LDEwICsyNzgsMTAgQEAgc3RhdGljIHZvaWQgcm9ja2No
aXBfcGNpZV9zZXRfcG93ZXJfbGltaXQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+
ICAJCXBvd2VyID0gcG93ZXIgLyAxMDsKPiAgCX0KPiAgCj4gLQlzdGF0dXMgPSByb2NrY2hpcF9w
Y2llX3JlYWQocm9ja2NoaXAsIFBDSUVfUkNfQ09ORklHX0RDUik7Cj4gLQlzdGF0dXMgfD0gKHBv
d2VyIDw8IFBDSUVfUkNfQ09ORklHX0RDUl9DU1BMX1NISUZUKSB8Cj4gLQkJICAoc2NhbGUgPDwg
UENJRV9SQ19DT05GSUdfRENSX0NQTFNfU0hJRlQpOwo+IC0Jcm9ja2NoaXBfcGNpZV93cml0ZShy
b2NrY2hpcCwgc3RhdHVzLCBQQ0lFX1JDX0NPTkZJR19EQ1IpOwo+ICsJc3RhdHVzID0gcm9ja2No
aXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX1JDX0NPTkZJR19DUiArIFBDSV9FWFBfREVWQ0FQ
KTsKPiArCXN0YXR1cyB8PSBGSUVMRF9QUkVQKFBDSV9FWFBfREVWQ0FQX1BXUl9WQUwsIHBvd2Vy
KTsKPiArCXN0YXR1cyB8PSBGSUVMRF9QUkVQKFBDSV9FWFBfREVWQ0FQX1BXUl9TQ0wsIHNjYWxl
KTsKCkFkZGVkICNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPiBmb3IgdGhpczoKCiAgQ0MgICAg
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5vCmRyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmM6IEluIGZ1bmN0aW9uIOKAmHJvY2tjaGlw
X3BjaWVfc2V0X3Bvd2VyX2xpbWl04oCZOgpkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtaG9zdC5jOjI3MjoyNDogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0
aW9uIOKAmEZJRUxEX01BWOKAmSBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlv
bl0KICAyNzIgfCAgICAgICAgIHdoaWxlIChwb3dlciA+IEZJRUxEX01BWChQQ0lfRVhQX0RFVkNB
UF9QV1JfVkFMKSkgewogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+CmRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmM6MjgyOjE5OiBlcnJvcjog
aW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYRklFTERfUFJFUOKAmSBbLVdlcnJv
cj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAyODIgfCAgICAgICAgIHN0YXR1cyB8
PSBGSUVMRF9QUkVQKFBDSV9FWFBfREVWQ0FQX1BXUl9WQUwsIHBvd2VyKTsKICAgICAgfCAgICAg
ICAgICAgICAgICAgICBefn5+fn5+fn5+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
