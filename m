Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5520C30658
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24cLFZ+OvsVUiHM2MfuOuiaqU8bPFsc6P+nbFSabMB8=; b=bFwvAkkmbu0mG8
	c6GX9CfhSnaSxVTsNTzw3lMoZWpAV7sslGZIZinChA99YQdHzuJgyt74oNZOm+Unp9g04v6bnHI+f
	NUfFNu12P4fZh1ZaiVokWPxvIdXw0GqmRmviltOte3LAM/KTSFfEFqY0VEZ2LnP4yodIB4D7JEBUp
	0Z4tHhLzvK5Jmh66N+jFrdiNOIU2LjiPtlU0w+X1p8E9Lr3+fqhra9cTWdcjRjHCObhsBftXa8Nkd
	C43vuN7sj70pUh5MOTdAR60Jz2saYDPctxkNLcEWUQTr2VWUGvOlY5D2WWbV4DkELwtJwXWmAJYk9
	Ggi7Gy4H+Mf3Kg3H8fPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdJC-00000006nkZ-2OPf;
	Tue, 02 Jul 2024 13:12:34 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdJ3-00000006nhw-3fTS
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 13:12:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EA2A1CE1DDB;
	Tue,  2 Jul 2024 13:12:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 578E7C116B1;
	Tue,  2 Jul 2024 13:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719925942;
	bh=p+lBJAEBNcH6mzYX4tBdWs7yrDOUKpDqlewKL2RMD8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WFYJZJYO3UR/3JWTw+bvTFiEj+fr6L7XT7a4jC19rbfuBFMi4S0T8fGsD+eSBjewI
	 K9a3ZEcwOQVT5Nsh+a0KgW+CY8TfpnUoiGva+XKt1StQdIDJTDzycabrADOekJil3E
	 8s5NbGjb6wVA/0pqtQtgT5dMzjiqaSqNDtzZFB1tdXm3mABF1tvoAMLVmyKIDVXHJv
	 hKmuH4M52gqxev+CuvLb5yARGsQDUp+sNun3kWzjd6f8LDobhUbClixczDpp/4J4yr
	 fz98pu/Jf5Icaaql8W7xvXXHYRoVyonMczAS4BAr92Hhjdm5vE/ckI9RMEdwhtzsdp
	 F6Zt8yZQ8Cwtg==
Date: Tue, 2 Jul 2024 18:42:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Ma Ke <make24@iscas.ac.cn>, linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>, Roger Quadros <rogerq@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: cadence-torrent: Check return value on register read
Message-ID: <ZoP8seqQxMFb-kS2@matsya>
References: <20240702032042.3993031-1-make24@iscas.ac.cn>
 <def496b0-ea98-467c-be47-77d965bb3a88@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <def496b0-ea98-467c-be47-77d965bb3a88@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_061226_136085_0A972574 
X-CRM114-Status: GOOD (  11.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 02-07-24, 09:43, Markus Elfring wrote:
> > cdns_torrent_dp_set_power_state() does not consider that ret might be
> > overwritten. Add return value check of regmap_read_poll_timeout() after
> > register read in cdns_torrent_dp_set_power_state().
> 
> I suggest to improve such a change description another bit.
> 
> 1. A return value is stored in the mentioned local variable.
> 
> 2. Unfortunately, it was not immediately checked.
> 
>    * https://cwe.mitre.org/data/definitions/252.html
> 
>    * https://wiki.sei.cmu.edu/confluence/display/c/EXP12-C.+Do+not+ignore+values+returned+by+functions
> 
> 3. How do you think about to avoid a repeated reference to a function name?


<form letter>
Feel free to ignore all comments from Markus, regardless whether the
suggestion is reasonable or not. This person is banned from LKML and
several maintainers ignore Markus' feedback, because it is just a waste
of time.
</form letter>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
