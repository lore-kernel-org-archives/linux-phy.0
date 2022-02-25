Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BB35C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 09:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuCHfbnLUux9+mbNcIv3YtBwEMWwy1dHMwltPAk/9Mw=; b=tBqkB9xUgjfz0j
	jTTY+o+QP8CxiBn6zYT0KwykdmMsuTpQelO7E1z+kwAkWRg0tTYwpJ3MinpDLx3jTPNq9fkf/7o2s
	Ygmf8s599U6V/Lsqr7GB04LbOk/pG+bDtGxqXsKLOP7u1VjG+zRYV2TPlVZim8qzXEFIY8w2wmHph
	gy7CMtRI3t8v/toWopigigAXkhtMOODV9MEPtwsOBATkQVzxMOsWKy5DuAaI+N/pyH8BGnOfPk7ZF
	bYJmPVn55H6Z2M6R4bgDzEvUkWwBx1k1XViR953vvn7MC3fUK1bS8KEDhdWovKfusmuLyLKxXjOND
	uBHTRz/+HCJIJ88u2ikQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNWV3-0043H1-JA; Fri, 25 Feb 2022 09:02:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNWV0-0043G8-VU
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 09:02:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8AA0361C9A;
 Fri, 25 Feb 2022 09:02:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DD87C340F1;
 Fri, 25 Feb 2022 09:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645779770;
 bh=QvY30WDBlbSyY750xBEH771LLo1ExcgV/Rqwvt34S3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ip5K4jVhv/vfdvQNQWiGmMU+xRHEATej58TeumTCwjladdp56nNPQDLT7QLVSSFfP
 cKSmNpMUv3cr0+jdXFd+zlXqtZT4Bg7NQnTTMSk2BWIRj6B6/QqTkLCp06ta959q5g
 1127Nndi8a/9B9TyUH2H2RzBewWT6ah7bmkDpz7MWcsIYENvJfXGOnG2kFDFzmcQL+
 u/7E33aAC1/YczwwgpFheJckSr46Bkq85JyGHpkfKJeB7QnrK3AdcPWLKkWuRuJEx8
 uLi3hHQzBwkMEGugDlZKXhM+gw8n+A8CIlyhOL6ohRSQWTIjZrBVdWA1OC4FuulCJD
 fUXejy+sfdwhg==
Date: Fri, 25 Feb 2022 14:32:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Al Cooper <alcooperx@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-phy@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] phy: phy-brcm-usb: fixup BCM4908 support
Message-ID: <YhibNvLHtna59t/i@matsya>
References: <20220218172459.10431-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220218172459.10431-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_010251_080654_852E0CC9 
X-CRM114-Status: GOOD (  11.11  )
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

T24gMTgtMDItMjIsIDE4OjI0LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IEp1c3QgbGlrZSBldmVyeSBvdGhlciBm
YW1pbHkgQkNNNDkwOCBzaG91bGQgZ2V0IGl0cyBvd24gZW51bSB2YWx1ZS4gVGhhdAo+IGlzIHJl
cXVpcmVkIHRvIHByb3Blcmx5IGhhbmRsZSBpdCBpbiBjaGlwc2V0IGNvbmRpdGlvbmFsIGNvZGUu
Cj4gCj4gVGhlIHJlYWwgY2hhbmdlIGlzIGV4Y2x1ZGluZyBCQ000OTA4IGZyb20gdGhlIFBMTCBy
ZXByb2dyYW1taW5nIGNvZGUKPiAoc2VlIGJyY211c2JfdXNiM19wbGxfNTRtaHooKSkuIEknbSBu
b3Qgc3VyZSB3aGF0J3MgdGhlIEJDTTQ5MDgKPiByZWZlcmVuY2UgY2xvY2sgZnJlcXVlbmN5IGJ1
dDoKPiAxLiBCQ000OTA4IGN1c3RvbSBkcml2ZXIgZnJvbSBCcm9hZGNvbSdzIFNESyBkb2Vzbid0
IHJlcHJvZ3JhbSBQTEwKPiAyLiBEb2luZyB0aGF0IGluIExpbnV4IGRyaXZlciBzdG9wcGVkIFBI
WSBoYW5kbGluZyBzb21lIFVTQiAzLjAgZGV2aWNlcwo+IAo+IFRoaXMgY2hhbmdlIG1ha2VzIFVT
QiAzLjAgUEhZIHJlY29nbml6ZSBlLmcuOgo+IDEuIDA0ZTg6Njg2MCAtIFNhbXN1bmcgRWxlY3Ry
b25pY3MgQ28uLCBMdGQgR2FsYXh5IHNlcmllcywgbWlzYy4gKE1UUCBtb2RlKQo+IDIuIDEwNTg6
MjU5ZiAtIFdlc3Rlcm4gRGlnaXRhbCBNeSBQYXNzcG9ydCAyNTlGCj4gCj4gQnJvYWRjb20ncyBT
VEIgU29DcyBjb21lIHdpdGggYSBzZXQgb2YgU1VOX1RPUF9DVFJMXyogcmVnaXN0ZXJzIHRoYXQK
PiBhbGxvdyByZWFkaW5nIGNoaXAgZmFtaWx5IGFuZCBwcm9kdWN0IGlkcy4gU3VjaCBhIGJsb2Nr
ICYgcmVnaXN0ZXIgaXMKPiBtaXNzaW5nIG9uIEJDTTQ5MDggc28gdGhpcyBjb21taXQgaW50cm9k
dWNlcyAiY29tcGF0aWJsZSIgc3RyaW5nCj4gc3BlY2lmaWMgYmluZGluZy4KCkFwcGxpZWQsIHRo
YW5rcwoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
