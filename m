Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25FCBC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 13:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUaLKVhyKRb+ZWKMS5SRmjlQtpuQvjzvIKhjwykeCtY=; b=t8/xY2H538PQvV
	C7jC+TxmF98X/zxMQ8Z2XLtrOTNTjQkVt6/rE+a58Vs1PjHkArxjwl2LvG1xOAUSzgbjAt2THaHyc
	y3ygCEdhwCpTcEup7XboATlJosrp1OdqhqjMBThWYUd9nGVD5DrSqykTP169qKjloUbwun/F6d4oL
	BiRSF2J8OSFa6XVffVywv+gwdDOFvN5buMMFwE9VzKD+9FwGRLfON4q0s1DJjGTSagEMSpkCk8YTE
	021JL29WU7J0UeBTm+HkecpUhHqD1bHZhtb5lXLpijsW603kN0pX8mKHPCB2hngnS+dP5SLub3Mcf
	v+NCTwsa2wTlgeHHvXag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNb2c-005Fwf-B8; Fri, 25 Feb 2022 13:53:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNatM-005ChM-OA
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 13:44:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3E2C461DCA;
 Fri, 25 Feb 2022 13:44:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FB4CC340E8;
 Fri, 25 Feb 2022 13:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645796655;
 bh=YeWwmDQydXDKpfTMGd7ZLbBtQHjZpNv4VkGds+9BRs8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ua2bFiRBfSLL+zdFVl64MBQYOZ9vhcCheKSua8A6Prj97fkzW7yYqPyrM5DSuCXxm
 oo3y8UoD9sF9VFW0lavS4jDC4PyLamNiBty9O43SNWY/9TQVD0RL2u6aRgenKh4Kja
 sZ/8TH/vMByaGFaQzWjY3LdqJlQsqP0FrN/JRANCy6ZmfzwWEv61+azEIdDytxfc68
 zqNLJb15l5wsEPPCCyHD43/V6ZSEPA8dAjm33NrR0e1kq3LKspDQUeGN9oB8eDPIeQ
 a5nyYcC3SWvtdOrDHhS5H9G11DItE2fXDtZf/+oabCLaf4EooxSLxab0T21GxHyEs3
 SotgF+TWXoAzQ==
Received: by pali.im (Postfix)
 id BD0617EF; Fri, 25 Feb 2022 14:44:12 +0100 (CET)
Date: Fri, 25 Feb 2022 14:44:12 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH phy v4 0/5] Armada 3720 comphy native implementation
Message-ID: <20220225134412.3zcdt6vfd33brszo@pali>
References: <20220203214444.1508-1-kabel@kernel.org> <Yhjc7tpcp06QKnqz@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yhjc7tpcp06QKnqz@matsya>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_054416_863231_7D8F8686 
X-CRM114-Status: UNSURE (   9.28  )
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

T24gRnJpZGF5IDI1IEZlYnJ1YXJ5IDIwMjIgMTk6MTM6MTAgVmlub2QgS291bCB3cm90ZToKPiBP
biAwMy0wMi0yMiwgMjI6NDQsIE1hcmVrIEJlaMO6biB3cm90ZToKPiA+IEhlbGxvIFZpbm9kLAo+
ID4gCj4gPiB0aGlzIGlzIHY0IG9mIHNlcmllcyBjb252ZXJ0aW5nIEEzNzIwIGNvbXBoeSB0byBu
YXRpdmUga2VybmVsCj4gPiBpbXBsZW1lbnRhdGlvbi4KPiA+IAo+ID4gVGVzdGVkIG9uIFR1cnJp
cyBNT1ggYW5kIEVTUFJFU1NPYmluICh0ZXN0ZWQgYWxsIHN1cHBvcnRlZCBQSFkgbW9kZXM6Cj4g
PiBldGhlcm5ldCwgUENJZSwgVVNCMywgU0FUQSkuCj4gCj4gQXBwbGllZCBhbGwsIHRoYW5rcwo+
IAo+IC0tIAo+IH5WaW5vZAoKVGhhbmsgeW91IHZlcnkgbXVjaCEKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
