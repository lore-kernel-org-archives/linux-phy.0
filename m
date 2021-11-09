Return-Path: <SRS0=gA2j=P4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2AFC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E2F9611C4
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2E2F9611C4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXFaX3NxUvfzQqKVrAE/MIENYUkxObfHZ18vZE51Gik=; b=vrJ+FglA3VlsSc
	iuOOa+6qYI6vNcu/eusjWhS3mFXgFQjLcesnTsF/QOubv+Ule5JAldnYQ2iTZl85bAS/2RkvX0ELc
	SVsurVR3m3i/gSHT7+HPYu7alKS14PbGS5/sxci4RjzsR7MpQGThCW14XRWmsioCba7cTUop+JO3D
	YZxjLHhxcWMQJ0KIU3Q/M53rnUEN+f1D/uPNpDmJL5r5jCBPZcaAWGO/ZdmCK55iqKhBeEAH6Eikd
	FPrqOpvyROYv0yAHYNxQFmSrPwY5Z9HR6UlorouwKl62GTEN0hgxAHHHOhaTxGpBplcNVf1vXbV+o
	caiiDe4uzyKe3LnH/69g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkO6X-001RRu-Hs; Tue, 09 Nov 2021 10:11:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkO5H-001QuK-UA
 for linux-phy@lists.infradead.org; Tue, 09 Nov 2021 10:10:33 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 51507C0007;
 Tue,  9 Nov 2021 10:10:28 +0000 (UTC)
Date: Tue, 9 Nov 2021 11:10:26 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, pali@kernel.org
Subject: Re: [PATCH phy 5/6] Revert "usb: host: xhci: mvebu: make USB 3.0
 PHY optional for Armada 3720"
Message-ID: <20211109111026.60923d39@xps13>
In-Reply-To: <20211028184242.22105-6-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-6-kabel@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_021032_145471_3386D69F 
X-CRM114-Status: UNSURE (   7.61  )
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
NDI6NDEgKzAyMDA6Cgo+IEZyb206IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gCj4g
VGhpcyByZXZlcnRzIGNvbW1pdCAzMjQxOTI5YjY3ZDI4YzgzOTQ1ZDMxOTFjNjgxNmEzMjcxZmQ2
Yjg1Lgo+IAo+IEFybWFkYSAzNzIwIHBoeSBkcml2ZXIgKHBoeS1tdmVidS1hMzcwMC1jb21waHku
YykgZG9lcyBub3QgcmV0dXJuCj4gLUVPUE5PVFNVUFAgZnJvbSBwaHlfcG93ZXJfb24oKSBjYWxs
YmFjayBhbnltb3JlLgo+IAo+IFNvIHJlbW92ZSBYSENJX1NLSVBfUEhZX0lOSVQgZmxhZyBmcm9t
IHhoY2lfbXZlYnVfYTM3MDBfcGxhdF9zZXR1cCgpIGFuZAo+IHRoZW4gYWxzbyB3aG9sZSB4aGNp
X212ZWJ1X2EzNzAwX3BsYXRfc2V0dXAoKSBmdW5jdGlvbiB3aGljaCBpcyB0aGVyZSBqdXN0Cj4g
dG8gaGFuZGxlIC1FT1BOT1RTVVBQIGZvciBYSENJX1NLSVBfUEhZX0lOSVQuCj4gCj4geGhjaSBw
bGF0X3NldHVwIGNhbGxiYWNrIGlzIG5vdCB1c2VkIGJ5IGFueSBvdGhlciB4aGNpIHBsYXQgZHJp
dmVyLCBzbwo+IHJlbW92ZSB0aGlzIGNhbGxiYWNrIGNvbXBsZXRlbHkuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJl
ayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+Cj4gLS0tCgpJZiBjb21taXQgMi82IGlzIGFwcGxp
ZWQ6CgpBY2tlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4K
ClRoYW5rcywKTWlxdcOobAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
