Return-Path: <SRS0=0dgd=NS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF72C432BE
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 11:27:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5462360FDA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 11:27:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5462360FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oGSTtHYXzyyDZ6A2dbIN7JCvXa/kj2EoWGetxMTsmE=; b=3MfFehvaxPjJC9
	xAd1cAJXlbnyVfxKMvhekwsv4rOxMWPudKP3TViqTUrsXnd/p4oOyu6SLHj6JYtX6wTP2hIgcQ7rE
	XV6nrOFoVWduvEUjFjx2/BTWkMLw5zMbdu1eCV4yV4JmfMlh1FA72TV/JfFR3m1sMN1Kb806/jJhl
	Thnbufe+s+mmbwUpNrIz8K8ZNOQPRlF7nGUYzj5EyXa8+PIQva9ENBs6jf7QaY9gT2rmUpShstjNv
	b4ECvnSZg7fqAcLSD9IiukhjunmRSfjsOcAiLiw3BGpFrBNh+D7oDuqsuQFN2TtcTISC4V00hP8Le
	EsA8U9EsZcK1yL7J6DKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJa12-00CKdU-RQ; Fri, 27 Aug 2021 11:27:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJa11-00CKd0-5d
 for linux-phy@lists.infradead.org; Fri, 27 Aug 2021 11:27:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A631E60F44;
 Fri, 27 Aug 2021 11:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630063638;
 bh=VS9pNvPgZIeuIxoLgsr/G51Wht1Q+X2dTP9YC1fEMgM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pP/BdrV+hjA51/sXrvI9hexBzNeRl4YCZtcSveQDmP/uG94s7+9ACw36gWKzasUSD
 0u0LiF0wuIknKyiDa4Ugt10e3dUIx/cOM5nd3UMrmCDem34FtdL/5vm8ho2OqieM3V
 qeghFzcekoUmtqY8E6ONxYyQO8lFJ4N8OweaakgYA/1hfKoHu0T4QdSlfl8v2FJe8c
 ZpYOYzYjbkYFpdCZnRlIIVvQo84pOGFmwMv3ohtNNgpIF6EUFtEMaE080XYNoQWe0k
 JFSk79RPcav7iyLVaH1I4J1Qo6N3vwNA1db+c4J7uadjC+1/Pi/QNmUg58mBGgFAMn
 7ZmN78mqFeMvw==
Date: Fri, 27 Aug 2021 13:27:13 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Russell King
 <rmk+kernel@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>, Rob Herring
 <robh@kernel.org>, linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: marvell: phy-mvebu-a3700-comphy: Remove
 unsupported modes
Message-ID: <20210827132713.61ef86f0@thinkpad>
In-Reply-To: <20210827092753.2359-3-pali@kernel.org>
References: <20210827092753.2359-1-pali@kernel.org>
 <20210827092753.2359-3-pali@kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210827_042719_268708_FE6FE23D 
X-CRM114-Status: UNSURE (   7.07  )
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

T24gRnJpLCAyNyBBdWcgMjAyMSAxMToyNzo1MyArMDIwMApQYWxpIFJvaMOhciA8cGFsaUBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gQXJtYWRhIDM3MDAgZG9lcyBub3Qgc3VwcG9ydCBSWEFVSSwgWEZJ
IGFuZCBuZWl0aGVyIFNGSS4gUmVtb3ZlIHVudXNlZAo+IG1hY3JvcyBmb3IgdGhlc2UgdW5zdXBw
b3J0ZWQgbW9kZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVs
Lm9yZz4KPiBGaXhlczogOTY5NTM3NWEzZjRhICgicGh5OiBhZGQgQTM3MDAgQ09NUEhZIHN1cHBv
cnQiKQoKQlRXIEkgd2FzIHRoaW5raW5nIGFib3V0IG1lcmdpbmcgc29tZSBwYXJ0cyBvZiB0aGVz
ZSAyIGRyaXZlcnMgaW50bwpjb21tb24gY29kZS4gTm90IGVudGlyZWx5IHN1cmUgaWYgSSBzaG91
bGQgZm9sbG93LCB0aG91Z2guCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
