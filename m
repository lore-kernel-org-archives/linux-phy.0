Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2BDDC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Dec 2021 13:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvSemRVoUs2lyQkWa3ih0DA8iXyEkdlFoBwpsaBNdnY=; b=2tPsN0eALzGX4N
	IWV4BfXZuIIJb/1VB3fMutnqzOd3x7Abxw3tuleYO5Lpe7wowl6ylVhIO5RqpIgveD3OVOrcljcvY
	B0prcThAT6NcKxVioqK+t/5qCUMhbGAwjGW+bzImT8oDtpOB+fE6c7FrS0lpM7PztM0MshMOYliTC
	QxElB6hVP+PBNfEpQATQx0Aa4yqaUbOACzlVnMdx1cuSdFwUyN+TmSOkW2H9tIpFbKEOh4ge1nx80
	EEflqY17KcSZnfmhZmG1THRMCFXxKbhf12/LQEcs7c2f1uPuQUpBZgh0RTFU5QOP67hRvLvEAnDUC
	jw2bykD6xWFkpqtk/MMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0O1u-00CnRK-42; Thu, 23 Dec 2021 13:21:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0O1r-00CnQm-JA
 for linux-phy@lists.infradead.org; Thu, 23 Dec 2021 13:21:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8710861E80;
 Thu, 23 Dec 2021 13:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8C5AC36AE5;
 Thu, 23 Dec 2021 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640265666;
 bh=p4sm1AaNl2mVrMEZOmEKphnfuA4ZoLisKRjIvqV28hM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GxaOYsTQGgCq+9PMBwxd8ip/G+FdQcrDieTSaKFhvs1lSPUeItLsLtvytfIfhQ8Z4
 4wh1KtH0g4iZ1CxiulTR0UuCFXKzGVPGrTBpLqY1fgUSrcCqQdqpUjSEZbwZDCIXEN
 r4/UvJUlvF3eyrYdRfPkQejDm7y8Q+g6Qbh8F+5w3BB9yAQh4LY8LyQcyENB7LqZ2j
 NELxpA1wGCAsNUh7FtYAG2nwa8pAqOTBqV5paTcUXzelMojjbaI4bD3ZGXCnW0xKof
 y8VAqEdITRdU6dRvShp6w9/jVNjet6gg3bqMuZuUiZqo68JQLv+Uuw+5aS9snJMWJB
 9jGlcNv0Irx1Q==
Received: by pali.im (Postfix)
 id BFD47741; Thu, 23 Dec 2021 14:21:02 +0100 (CET)
Date: Thu, 23 Dec 2021 14:21:02 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20211223132102.lgne4vsdjeqqudwc@pali>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-3-kabel@kernel.org> <YcRuVCdXztTTrJs7@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YcRuVCdXztTTrJs7@matsya>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_052107_720574_DF121B1A 
X-CRM114-Status: GOOD (  10.95  )
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

T24gVGh1cnNkYXkgMjMgRGVjZW1iZXIgMjAyMSAxODoxMDo1MiBWaW5vZCBLb3VsIHdyb3RlOgo+
IE9uIDA4LTEyLTIxLCAwMzo0MCwgTWFyZWsgQmVow7puIHdyb3RlOgo+ID4gRnJvbTogUGFsaSBS
b2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KPiAKPiA+ICsvKiBDT01QSFkgcmVnaXN0ZXJzICovCj4g
PiArI2RlZmluZSBDT01QSFlfUE9XRVJfUExMX0NUUkwJCTB4MDEKPiA+ICsjZGVmaW5lIFBVX0lW
UkVGX0JJVAkJCUJJVCgxNSkKPiA+ICsjZGVmaW5lIFBVX1BMTF9CSVQJCQlCSVQoMTQpCj4gPiAr
I2RlZmluZSBQVV9SWF9CSVQJCQlCSVQoMTMpCj4gPiArI2RlZmluZSBQVV9UWF9CSVQJCQlCSVQo
MTIpCj4gPiArI2RlZmluZSBQVV9UWF9JTlRQX0JJVAkJCUJJVCgxMSkKPiA+ICsjZGVmaW5lIFBV
X0RGRV9CSVQJCQlCSVQoMTApCj4gPiArI2RlZmluZSBSRVNFVF9EVExfUlhfQklUCQlCSVQoOSkK
PiA+ICsjZGVmaW5lIFBMTF9MT0NLX0JJVAkJCUJJVCg4KQo+ID4gKyNkZWZpbmUgUkVGX0ZSRUZf
U0VMX01BU0sJCUdFTk1BU0soNCwgMCkKPiA+ICsjZGVmaW5lIFJFRl9GUkVGX1NFTF9TRVJERVNf
MjVNSFoJKDB4MSA8PCAwKQo+ID4gKyNkZWZpbmUgUkVGX0ZSRUZfU0VMX1NFUkRFU180ME1IWgko
MHgzIDw8IDApCj4gPiArI2RlZmluZSBSRUZfRlJFRl9TRUxfU0VSREVTXzUwTUhaCSgweDQgPDwg
MCkKPiA+ICsjZGVmaW5lIFJFRl9GUkVGX1NFTF9QQ0lFX1VTQjNfMjVNSFoJKDB4MiA8PCAwKQo+
ID4gKyNkZWZpbmUgUkVGX0ZSRUZfU0VMX1BDSUVfVVNCM180ME1IWgkoMHgzIDw8IDApCj4gPiAr
I2RlZmluZSBDT01QSFlfTU9ERV9NQVNLCQlHRU5NQVNLKDcsIDUpCj4gPiArI2RlZmluZSBDT01Q
SFlfTU9ERV9TQVRBCQkoMHgwIDw8IDUpCj4gPiArI2RlZmluZSBDT01QSFlfTU9ERV9QQ0lFCQko
MHgzIDw8IDUpCj4gPiArI2RlZmluZSBDT01QSFlfTU9ERV9TRVJERVMJCSgweDQgPDwgNSkKPiA+
ICsjZGVmaW5lIENPTVBIWV9NT0RFX1VTQjMJCSgweDUgPDwgNSkKPiAKPiBBbnkgcmVhc29uIHdo
eSB0aGVzZSBhcmUgbm90IHVzaW5nIEdFTk1BU0suIEkgZ3Vlc3MgZG9jdW1lbnRhdGlvbiB3b3Vs
ZAo+IGRlZmluZSB0aGVzZSBhcyBCSVQgeC15IHJpZ2h0PwoKSGVsbG8gVmlub2QhIEknbSBub3Qg
c3VyZSB0byB3aGljaCBtYWNybyByZWZlcnMgeW91ciBxdWVzdGlvbiBhcyBhbGwKKl9NQVNLIGRl
ZmluZXMgYXJlIG5vdyB1c2luZyBHRU5NQVNLKCkgbWFjcm9zLgoKRGVmaW5pdGlvbnMgd2hpY2gg
ZG8gbm90IGhhdmUgbWFzayBfTUFTSyBhcmUgbm90IG1hc2tzLCBidXQgcmF0aGVyCnBhcnRpY3Vs
YXIgdmFsdWVzIGZvciBjb3JyZXNwb25kaW5nIF9NQVNLIGNvbnN0YW50LgoKU28sIGZvciBleGFt
cGxlOiBSRUZfRlJFRl9TRUxfTUFTSyBpcyA1IGJpdCBtYXNrIGZvciBmcmVmX3NlbCBhbmQKZnJl
Zl9zZWwgY2FuIGNvbnRhaW4gZXhhY3RseSBvbmUgb2YgdGhlIGZvbGxvd2luZyB2YWx1ZXM6ClJF
Rl9GUkVGX1NFTF9TRVJERVNfMjVNSFosIFJFRl9GUkVGX1NFTF9TRVJERVNfNDBNSFosClJFRl9G
UkVGX1NFTF9TRVJERVNfNTBNSFosIFJFRl9GUkVGX1NFTF9QQ0lFX1VTQjNfMjVNSFosClJFRl9G
UkVGX1NFTF9QQ0lFX1VTQjNfNDBNSFouIFNvIHlvdSB3YW50IHRvIHNldCBzZXJkZXMgcmVmIGZy
ZXEgdG8KNTAgTUh6IHlvdSBuZWVkIHRvIGNsZWFyIGJpdHMgWzQ6MF0gKG1hY3JvIFJFRl9GUkVG
X1NFTF9NQVNLKSBhbmQgdGhlbgpzZXQgdG8gdmFsdWUgMHg0IChtYWNybyBSRUZfRlJFRl9TRUxf
U0VSREVTXzUwTUhaKSB0byBiaXRzIFs0OjBdLgoKSXQgaXMgY2xlYXIgbm93PyBPciBkaWQgeW91
IG1lYW4gc29tZXRoaW5nIGRpZmZlcmVudD8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
