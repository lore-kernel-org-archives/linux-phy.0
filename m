Return-Path: <SRS0=0dgd=NS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21276C4320E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 18:25:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E93BC60F45
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 18:25:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E93BC60F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e05e1YScLc8IU6rlndNtOFiXpqUqUPCMAgUbjG1TK+Y=; b=UWicRU+i0A7sr+
	/bk3fOkFE8ByH6est7cJdXMBbwBSqJlOUdjoQdPfNuV6gHHQcZF6YAVw+2zWQsnRlfwSbTeaSCg/m
	JWpbwxLYAF/rxD8zV9bkXgWTfVCAa+UIL1XxOqgRqPCJoMDNECR80M4AG1rAz/VzFrDYIl8IJwPkN
	JeIqpdq529TJuCvhBCFKaVrPqzEJleaRIalaPN0yMWNE651wEC7QgDNtZdEGzmA+qzW+LmGxfL3bT
	bCT92DvsP4l2HQC71BOssH+jlXevIp47up4fdJsLl/W6553qGOwsuaK2SmBjG1pyfNTyDgsPe/o1x
	xxzcnO1hqC7v8CFpQERQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJgXM-00CwoX-En; Fri, 27 Aug 2021 18:25:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJgXJ-00CwnS-IQ
 for linux-phy@lists.infradead.org; Fri, 27 Aug 2021 18:25:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1F60360E97;
 Fri, 27 Aug 2021 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630088705;
 bh=0eihSNf8es7K3C0a79CBft7H81KwqClcVqGKE0UUf04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r3PyBRg4sofODZCEjej7KHFoZXCVjj9rmLvZgi+o/u/j9NWWASRxONaVm6WqbLMhM
 UAgwNnfQwMo56SGKbrLl6mYvJkUmzZ24gCi3zXCJVQ4vOFCDv+M/RH4EjYXNwRFcS1
 RmIUwtCAVjtoNwr+HqtiRv1SYGwzi1PdTshnhr7dYmyj7Hbo1mEVrH7qmCR96cjps1
 ZylsQULgzSxblrYG9FbwqBQNosiSzd3GXqEDmu297zOcXb27VCF5zt8KukI+y4bywh
 N8w5f36qiglKvcCkdAu/25w6lpNVIWdYkSJjhvzb3CJb3KudmnLuDMxq8BIJ5mFHeE
 SiuTa77mkKKtw==
Received: by pali.im (Postfix)
 id B7971617; Fri, 27 Aug 2021 20:25:02 +0200 (CEST)
Date: Fri, 27 Aug 2021 20:25:02 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: marvell: phy-mvebu-a3700-comphy: Remove
 unsupported modes
Message-ID: <20210827182502.vdapjcqimq4ulkg2@pali>
References: <20210827092753.2359-1-pali@kernel.org>
 <20210827092753.2359-3-pali@kernel.org>
 <20210827132713.61ef86f0@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210827132713.61ef86f0@thinkpad>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210827_112505_678412_89B7C842 
X-CRM114-Status: GOOD (  12.02  )
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

T24gRnJpZGF5IDI3IEF1Z3VzdCAyMDIxIDEzOjI3OjEzIE1hcmVrIEJlaMO6biB3cm90ZToKPiBP
biBGcmksIDI3IEF1ZyAyMDIxIDExOjI3OjUzICswMjAwCj4gUGFsaSBSb2jDoXIgPHBhbGlAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4gCj4gPiBBcm1hZGEgMzcwMCBkb2VzIG5vdCBzdXBwb3J0IFJYQVVJ
LCBYRkkgYW5kIG5laXRoZXIgU0ZJLiBSZW1vdmUgdW51c2VkCj4gPiBtYWNyb3MgZm9yIHRoZXNl
IHVuc3VwcG9ydGVkIG1vZGVzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOhciA8
cGFsaUBrZXJuZWwub3JnPgo+ID4gRml4ZXM6IDk2OTUzNzVhM2Y0YSAoInBoeTogYWRkIEEzNzAw
IENPTVBIWSBzdXBwb3J0IikKPiAKPiBCVFcgSSB3YXMgdGhpbmtpbmcgYWJvdXQgbWVyZ2luZyBz
b21lIHBhcnRzIG9mIHRoZXNlIDIgZHJpdmVycyBpbnRvCj4gY29tbW9uIGNvZGUuIE5vdCBlbnRp
cmVseSBzdXJlIGlmIEkgc2hvdWxkIGZvbGxvdywgdGhvdWdoLgoKY3AxMTAtY29tcGh5IGFuZCBh
MzcwMC1jb21waHkgYXJlIGp1c3QgUlBDIGRyaXZlcnMgd2hpY2ggY2FsbHMgU01DIGFuZApyZWxh
eSBvbiBmaXJtd2FyZSBzdXBwb3J0IHdoaWNoIGltcGxlbWVudHMgcmVhbCB3b3JrLiBBbmQgYm90
aCB1c2VzIHNhbWUKUlBDIC8gU01DIEFQSS4gU28gbWVyZ2luZyBkcml2ZXJzIGludG8gb25lIGlz
IHBvc3NpYmxlLgoKQnV0IEkgZG8gbm90IHRoaW5rIHRoYXQgaXQgaXMgYSBnb29kIGlkZWEgdGhh
dCBMaW51eCBrZXJuZWwgZGVwZW5kcyBvbgpzb21lIGV4dGVybmFsIGZpcm13YXJlIHdoaWNoIGlt
cGxlbWVudHMgUlBDIEFQSSBmb3IgY29uZmlndXJpbmcgSFcuCgpSYXRoZXIga2VybmVsIHNob3Vs
ZCBpbXBsZW1lbnRzIGl0cyBuYXRpdmUgZHJpdmVycyB3aXRob3V0IGRlcGVuZGVuY3kgb24KZXh0
ZXJuYWwgZmlybXdhcmUuCgpXZSBrbm93IGZyb20gaGlzdG9yeSB0aGF0IGtlcm5lbCB0cmllZCB0
byBhdm9pZCB1c2luZyB4ODYgQklPUy9maXJtd2FyZQpkdWUgdG8gYnVncyBhbmQgYWxsIGZ1bmN0
aW9uYWxpdHkgKHJlKS1pbXBsZW1lbnRlZCBpdHNlbGYgd2l0aG91dCB1c2luZwpmaXJtd2FyZSBS
UEMgZnVuY3Rpb25hbGl0eS4KCktlcm5lbCBoYXMgYWxyZWFkeSAiaGFja3MiIGluIG90aGVyIGRy
aXZlcnMgd2hpY2ggYXJlIHVzaW5nIHRoZXNlIGNvbXBoeQpkcml2ZXJzLCBqdXN0IGJlY2F1c2Ug
b2xkZXIgdmVyc2lvbnMgb2YgZmlybXdhcmUgZG8gbm90IHN1cHBvcnQgYWxsCm5lY2Vzc2FyeSBm
dW5jdGlvbmFsaXR5IGFuZCB1cGdyYWRpbmcgdGhpcyBmaXJtd2FyZSBpcyBub3QgZWFzeSBzdGVw
CihhbmQgc29tZXRpbWVzIGV2ZW4gbm90IHBvc3NpYmxlOyBlLmcuIHdoZW4gaXMgY3J5cHRvZ3Jh
cGhpY2FsbHkKc2lnbmVkKS4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
