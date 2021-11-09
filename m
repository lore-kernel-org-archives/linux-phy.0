Return-Path: <SRS0=gA2j=P4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E83A8C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C0292611C4
	for <linux-phy@archiver.kernel.org>; Tue,  9 Nov 2021 10:11:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C0292611C4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpzsB6T6sS1ftiPx6ZaegrB+avmT3b2lXrkaHmZ4kQQ=; b=pJbldx21ifNuh2
	eUKFMm6MbpZEnmKiUw3GYvoboVAohQJ9tpZesIrpt49IZjgZJzmsAOULnnk3FRG/N+u3wyj38wsE1
	+Ddz6GwwDerv3l+EXtECI57ylj5GhqbbfL5qN4vpW0oJtFk0SuGhaoRItGuMppq5tkr2lDynj4OaG
	rFnu01di1r1Kmf7J1tMp0AUVXYPJ1j2UzhE2So1P2YkMvZBV4S5q1mOVQjQqPyaZ/Q1QJmr2IxUPm
	ocWteR88LfgmHkJ7ZCS66ocoAwtC2ACD+MZN7pxRoL8FCPNykLTSzxxdr/vgESLIw7TtLVtA7rwgm
	9BAA6PC1oG2uP8gk0I1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkO6X-001RSA-TF; Tue, 09 Nov 2021 10:11:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkO5h-001R5r-J8
 for linux-phy@lists.infradead.org; Tue, 09 Nov 2021 10:10:58 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9B1A5C0005;
 Tue,  9 Nov 2021 10:10:55 +0000 (UTC)
Date: Tue, 9 Nov 2021 11:10:54 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, pali@kernel.org
Subject: Re: [PATCH phy 6/6] Revert "PCI: aardvark: Fix initialization with
 old Marvell's Arm Trusted Firmware"
Message-ID: <20211109111054.4d176e6f@xps13>
In-Reply-To: <20211028184242.22105-7-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-7-kabel@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_021057_807806_1333D9C6 
X-CRM114-Status: UNSURE (   5.44  )
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
NDI6NDIgKzAyMDA6Cgo+IEZyb206IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gCj4g
VGhpcyByZXZlcnRzIGNvbW1pdCBiMGM2YWUwZjg5NDhhMmJlNmJmNGU4YjRiYmFiOWNhMTM0MzI4
OWI2Lgo+IAo+IEFybWFkYSAzNzIwIHBoeSBkcml2ZXIgKHBoeS1tdmVidS1hMzcwMC1jb21waHku
YykgZG9lcyBub3QgcmV0dXJuCj4gLUVPUE5PVFNVUFAgZnJvbSBwaHlfcG93ZXJfb24oKSBjYWxs
YmFjayBhbnltb3JlLgo+IAo+IFNvIHJlbW92ZSBkZWFkIGNvZGUgd2hpY2ggaGFuZGxlcyAtRU9Q
Tk9UU1VQUCByZXR1cm4gdmFsdWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBh
bGlAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5l
bC5vcmc+Cj4gLS0tCgpJZiBjb21taXQgMi82IGlzIGFwcGxpZWQ6CgpSZXZpZXdlZC1ieTogTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KClRoYW5rcywKTWlxdcOobAoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
