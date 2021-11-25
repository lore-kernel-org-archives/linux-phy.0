Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36EB6C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 25 Nov 2021 10:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLgyemqQ3ojnNlKpGbjaKSgHI/TdhkYIds+m6ifA+0M=; b=g36wWlWDRgOffs
	d7n7bpUnnhYTjoyOCn9c+CF2yYo3l7R2/6DDFjdLmhX0gZu3f028idJO1ObVq/pZ1x7zz/xnPJEWo
	8CyzwONHO+CSLOgAVlyKyKSQaxxXS/Do1bU8LK6siKJO1/YLQbr1/fi9uVuHQNe2dKwtLvUbPFchN
	3QEWHxdoeD4atTQwNEHesSEehq/IxOXKnYmVA2xCcf9zQyNN2BArdMOqnvXryJzPjtgeFoeG6yRkn
	QawsEFcT0wruOjzHVDx/M4Sd4pu8c+RIwwGNMjoDZv9lbMQHcI/pUIP7R5cHktJX7iSNhmiWBr1VU
	XtX6fTMcsgMfrIQA5YUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqCSy-0078ha-MP; Thu, 25 Nov 2021 10:59:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqCSw-0078gi-CW
 for linux-phy@lists.infradead.org; Thu, 25 Nov 2021 10:58:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6BF5460C3F;
 Thu, 25 Nov 2021 10:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637837937;
 bh=Ug88dBANwbYXqGoLbSG3JiCSTUkQAVd6L4HwxTSN7uw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K8eXgxmOoDtkkvToGQcEd3Zvjk9Tx9ibXJIGm5vj4STwbLit1achUBCPHSD7O1LuD
 xEza5iNkfmJ0Z7XB01QJVPufsNgUUM4nu4kQ9GwVdEVERaIG5/Cm2KH/scarFL4j2w
 X6AmwCqDDvGscbPqtSZoqqu+BOMynhMBKK/Cm91AFKgmQys0M+ZbI74JWM0YYhgfMI
 je5YzXfOvQdDXHfRcgMQy5KXkqI0TOA60zmBqWQCRddq/YSmm7AgxYQTqWh23NML5v
 dJh5Il0kKVUgUhN3R+zLra+gUORLvCcbwbsojcAAB+SsI1157+61eVMOa6hZ7SCLTx
 BEy0DuTPHtD8g==
Received: by pali.im (Postfix)
 id 86F9467E; Thu, 25 Nov 2021 11:58:54 +0100 (CET)
Date: Thu, 25 Nov 2021 11:58:54 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH phy 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add native
 kernel implementation
Message-ID: <20211125105854.mqm3bm2b6rki2yvx@pali>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-3-kabel@kernel.org> <YZyXoAofmLeqzNBh@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZyXoAofmLeqzNBh@matsya>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_025858_465385_53EE7900 
X-CRM114-Status: UNSURE (   6.61  )
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

T24gVHVlc2RheSAyMyBOb3ZlbWJlciAyMDIxIDEyOjU2OjI0IFZpbm9kIEtvdWwgd3JvdGU6Cj4g
T24gMjgtMTAtMjEsIDIwOjQyLCBNYXJlayBCZWjDum4gd3JvdGU6Cj4gPiArI2RlZmluZSBDT01Q
SFlfU1lOQ19NQVNLX0dFTl9SRUcJMHgyNQo+ID4gKyNkZWZpbmUgUEhZX0dFTl9NQVhfT0ZGU0VU
CQkxMAo+ID4gKyNkZWZpbmUgUEhZX0dFTl9NQVhfTUFTSwkJKDMgPDwgUEhZX0dFTl9NQVhfT0ZG
U0VUKQo+IAo+IFBscyB1c2UgR0VOTUFTSygpCj4gCj4gPiArI2RlZmluZSBQSFlfR0VOX1VTQjNf
NUcJCQkoMSA8PCBQSFlfR0VOX01BWF9PRkZTRVQpCj4gCj4gdGhpcyBzaG91bGQgYmUgQklUKDEw
KQoKSSBkbyBub3QgdGhpbmsuIFRoaXMgUEhZX0dFTl9VU0IzXzVHIG1hY3JvIGlzIG9uZSBvZiBw
b3NzaWJsZSB2YWx1ZXMKd2hpY2ggY2FuIGJlIHNldCBieSBQSFlfR0VOX01BWF9PRkZTRVQvUEhZ
X0dFTl9NQVhfTUFTSyBtYWNyb3MuCkNvbXBsZXRlbHkgcmVtb3ZpbmcgcmVmZXJlbmNlcyB0byBQ
SFlfR0VOX01BWF8qIG1hY3JvcyBmcm9tClBIWV9HRU5fVVNCM181RyBieSByZXBsYWNpbmcgaXQg
d2l0aCBtYWdpYyBjb25zdGFudCBCSVQoMTApIG1ha2VzIGl0Cmxlc3MgcmVhZGFibGUgYW5kIGFs
c28gaXQgd291bGQgbG9zdCBpbmZvcm1hdGlvbiB3aGVyZSBpdCBiZWxvbmdzLgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
