Return-Path: <SRS0=z3Ad=M6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1452AC4338F
	for <linux-phy@archiver.kernel.org>; Sat,  7 Aug 2021 09:44:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6CA5F61131
	for <linux-phy@archiver.kernel.org>; Sat,  7 Aug 2021 09:44:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6CA5F61131
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=alpha.franken.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7uUzFdQJ9Bfg2tN/iKqtwOHHhxwz4AjpdFUZHUhBqk=; b=UHYy5YCSOy9usa
	qUuNXkxqCJxBzJ2ujzUw6uJTB2RK6ravqda9ixjGMsfhd8U5pFkuMv1LLdxqRAsNgx0CM2BDTaqLl
	whcKKSpvQCyijFp9onRYPqm9jb+Crt5AuwmrTh8c1k0ogL0U+WRUtmbZNFhSlSh7pvDXNDuh49a6X
	SElYs4kncGRsCN3X89N99UrcKvqMESttDllYpUpbWmBGKnXDdJtoWKwfKoEvrAZ1w3BMjsihmtdmq
	Z+17QCk9V0TtGbh/xEBPsfGY0HHSVqkPoBO1I9+6jYyFCOXaiAAGzeZF9Hk6kJiheTJJuUl9MZV5C
	quIiFqesBduOJOlTDtrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mCIs9-00EUQW-Nq; Sat, 07 Aug 2021 09:44:05 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mCIs6-00EUPn-Iy
 for linux-phy@lists.infradead.org; Sat, 07 Aug 2021 09:44:04 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1mCIru-0007FW-00; Sat, 07 Aug 2021 11:43:50 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id A6D05C0661; Sat,  7 Aug 2021 11:28:19 +0200 (CEST)
Date: Sat, 7 Aug 2021 11:28:19 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org,
 vkoul@kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/9] MIPS: Migrate pistachio to generic kernel
Message-ID: <20210807092819.GA4506@alpha.franken.de>
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
 <1bb80cdf-f7d5-f99f-a4f3-635552df916b@flygoat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bb80cdf-f7d5-f99f-a4f3-635552df916b@flygoat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210807_024402_820948_19E41929 
X-CRM114-Status: GOOD (  11.02  )
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

T24gU2F0LCBBdWcgMDcsIDIwMjEgYXQgMTE6MDY6MTJBTSArMDgwMCwgSmlheHVuIFlhbmcgd3Jv
dGU6Cj4gCj4gCj4g5ZyoIDIwMjEvNy8yMyDkuIrljYgxMDoyNSwgSmlheHVuIFlhbmcg5YaZ6YGT
Ogo+ID4gSSdtIGx1Y2t5IGVub3VnaCB0byBnZXQgYSBDcmVhdG9yIENJNDAgYm9hcmQgZnJvbSBk
dXN0cy4KPiA+IFRoaXMgcGF0Y2hzZXQgbW92ZSBpdCB0byBnZXJuZWljIGtlcm5lbCB0byByZWR1
Y2UgbWFpbnRlbmFuY2UgYnVyZGVuLgo+ID4gSXQgaGF2ZSBiZWVuIHRlc3RlZCB3aXRoIFNEIENh
cmQgYm9vdC4KPiAKPiBIaSBUaG9tYXMsCj4gCj4gRm9yIHRoZSBzZXJpZXMsIHRoZSBwaW5jdHJs
IG9uZSBoYXZlIGJlZW4gYXBwbGllZCBieSBzdWJzeXN0ZW0gbWFpbnRhaW5lcgo+IGFuZAo+IHJl
c3RzIGhhdmUgYmVlbiBhY2tlZCBieSBzdWJzeXN0ZW0gbWFpbnRhaW5lcnMsIGNvdWxkIHlvdSBw
bGVhc2UgYXBwbHkgdGhlbQo+IHRvIE1JUFMgdHJlZT8KCnN1cmUgdGhhdCdzIG15IHBsYW4uCgpU
aG9tYXMuCgotLSAKQ3JhcCBjYW4gd29yay4gR2l2ZW4gZW5vdWdoIHRocnVzdCBwaWdzIHdpbGwg
Zmx5LCBidXQgaXQncyBub3QgbmVjZXNzYXJpbHkgYQpnb29kIGlkZWEuICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWyBSRkMxOTI1LCAyLjMgXQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
