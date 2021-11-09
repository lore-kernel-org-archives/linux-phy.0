Return-Path: <SRS0=gA2j=P4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D708C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F69761167
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5F69761167
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kwtu8hgADtgV6QvdNw2HA6xh+SwG52jYuozhQcqhR8=; b=kJBOVVnV1mGULV
	eqp71kI/ssWY7S2oeCmVGWqeM006clEgzU62feB6bd6pt1w9lxi9EjJaW0zNlJqyCQnnaZGk/nsN5
	l8m0ayaz3cbDOxu29CFEXR9z55tEujYAqyEDqMJw0KHUYd9ntIsGYIvkODNZ74RTyLq/xRlNTq3Hc
	OxlFdl4DJF8MpxCE04H2DGLLXGBXAFNc1N8L6ylG9Muly89HyJZ52ze1sVIv7K8NgNwEx61DBsC+J
	pNk/1UQiLM1/8v1eDvwQGus5V2JvfOo/b8GD4jMkpNOTUpHBfggFCCpATxKKG739tYDRxjFPwigJK
	7CkU4j9dNedcXbqNn3pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkO6V-001RQy-AG; Tue, 09 Nov 2021 10:11:47 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkO4w-001QmE-9X
 for linux-phy@lists.infradead.org; Tue, 09 Nov 2021 10:10:11 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4A0A21BF20B;
 Tue,  9 Nov 2021 10:10:08 +0000 (UTC)
Date: Tue, 9 Nov 2021 11:10:07 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, pali@kernel.org
Subject: Re: [PATCH phy 4/6] Revert "ata: ahci: mvebu: Make SATA PHY
 optional for Armada 3720"
Message-ID: <20211109111007.3ddfda41@xps13>
In-Reply-To: <20211028184242.22105-5-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-5-kabel@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_021010_512769_572E2E51 
X-CRM114-Status: UNSURE (   6.68  )
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

SGkgTWFyZWssCgprYWJlbEBrZXJuZWwub3JnIHdyb3RlIG9uIFRodSwgMjggT2N0IDIwMjEgMjA6
NDI6NDAgKzAyMDA6Cgo+IEZyb206IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gCj4g
VGhpcyByZXZlcnRzIGNvbW1pdCA0NWFlZmUzZDIyNTFlNGUyMjlkNzY2MjA1MjczOWY5NmFkMWQw
OGQ5Lgo+IAo+IEFybWFkYSAzNzIwIFBIWSBkcml2ZXIgKHBoeS1tdmVidS1hMzcwMC1jb21waHku
YykgZG9lcyBub3QgcmV0dXJuCj4gLUVPUE5PVFNVUFAgZnJvbSBwaHlfcG93ZXJfb24oKSBjYWxs
YmFjayBhbnltb3JlLgo+IAo+IFNvIHJlbW92ZSBBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VS
X09OIGZsYWcgZnJvbSBBcm1hZGEgMzcyMCBwbGF0IGRhdGEuCj4gCj4gQUhDSV9IRkxBR19JR05f
Tk9UU1VQUF9QT1dFUl9PTiBpcyBub3QgdXNlZCBieSBhbnkgb3RoZXIgYWhjaSBkcml2ZXIsIHNv
Cj4gcmVtb3ZlIHRoaXMgZmxhZyBjb21wbGV0ZWx5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBhbGkg
Um9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgQmVow7puIDxr
YWJlbEBrZXJuZWwub3JnPgoKSWYgY29tbWl0IDIvNiBpcyBhcHBsaWVkOgoKQWNrZWQtYnk6IE1p
cXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CgpUaGFua3MsCk1pcXXDqGwK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
