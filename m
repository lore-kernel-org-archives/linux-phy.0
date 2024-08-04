Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C66EC3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P55o0dbyPwAS2VPklHcsjAFdBrWu+Ok9BreG8ADQhHs=; b=48fF/D5wSDJHjf
	Ysapa+wiLBIQcBpbBpTfK952lV4oVagc6VktUC/7jq0GVjItJUoEPgbU2l+RN66u9vXiaUJGvEI12
	tylJQsHuBp5iFaxnMIJkMDS1dVT7r38aTK50e6B4ev2fZUbu3CjDDzlr+fwmDTDgfXeQXxvq2RDrZ
	57x1I4dYUiFXtDlTOn85q7TNiLUQ0KGjEKxHS7pLo817gHRv3w9pJr3HwrQzqxdEy6ScHJ2sjKMQL
	E9tTX0tEx3sTVAzqyBMvrNbQiLleMESHFnaGsJ333M+cuKJRjx0eXHuUtbqEyQlA2bbhSWxp9lOC1
	06MqIPvyVlm+Hp4A0z9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeke-0000000DdE2-3u84;
	Sun, 04 Aug 2024 17:10:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saek9-0000000Dd9h-0lXT;
	Sun, 04 Aug 2024 17:10:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 770D160ADE;
	Sun,  4 Aug 2024 17:10:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C833C32786;
	Sun,  4 Aug 2024 17:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722791404;
	bh=Qoe2GLfyjnH5NIkm5TFRsZ//1kF1br9F+560psv26Xw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d2eZt3ovf1xtNnptv5RwmsyhUkWmyi7j8mQq063GxsJYGgraakhNdwvn5cm5l6Y1N
	 87YquAhqL6BO6hKATi/FsbByfzC+siMm1LNI/e9dzgTxXFZUb/as4xXd0fEaGtkmuJ
	 quuWQWKnpxPue7ic4B2u5mRRAbPitlnJr95W/BLQVR2WCUMSzlsXwe+JIL/SPFm1C7
	 pZA8bq9bpuk7pw+SzHQz6Eu7dsOiTxJP1DtWpopHgsDAH+CecLgIsWphGDWJm7lFOh
	 3uTZQ/gIDU190LseusFb+r/fwR9DulYeE1ua8pPMfaIcNH2b932UaGbBYusWpoq61g
	 9sSyk3bpCF9bA==
Date: Sun, 4 Aug 2024 22:39:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: kishon@kernel.org, p.zabel@pengutronix.de, sjakhade@cadence.com,
	rogerq@kernel.org, thomas.richard@bootlin.com,
	theo.lebrun@bootlin.com, robh@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, srk@ti.com
Subject: Re: [PATCH v3] phy: cadence-torrent: add support for three or more
 links using 2 protocols
Message-ID: <Zq-15_enK919eUg_@matsya>
References: <20240716102442.1605280-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240716102442.1605280-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_101005_302620_52481645 
X-CRM114-Status: GOOD (  10.17  )
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

On 16-07-24, 15:54, Siddharth Vadapalli wrote:
> The Torrent SERDES can support at most two different protocols (PHY types).
> This only mandates that the device-tree sub-nodes used to represent the
> configuration should describe links with at-most two different protocols.
> 
> The existing implementation however imposes an artificial constraint that
> allows only two links (device-tree sub-nodes). As long as at-most two
> protocols are chosen, using more than two links to describe them in an
> alternating configuration is still a valid configuration of the Torrent
> SERDES.
> 
> A 3-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> Lane 0 => Protocol 1 => Link 1
> Lane 1 => Protocol 1 => Link 1
> Lane 2 => Protocol 2 => Link 2
> Lane 3 => Protocol 1 => Link 3
> 
> A 4-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> Lane 0 => Protocol 1 => Link 1
> Lane 1 => Protocol 2 => Link 2
> Lane 2 => Protocol 1 => Link 3
> Lane 3 => Protocol 2 => Link 4
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
> 
> Hello,
> 
> This patch is based on linux-next tagged next-20240715.

Sorry this does not apply for me on phy/next, can you rebase..?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
