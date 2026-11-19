Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D5F606A332
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 15:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CYjL079q;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=free.fr header.i=@free.fr header.a=rsa-sha256 header.s=smtp-20201208 header.b=snfT/r7J
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XIsiqNEA0QhQuhsXF57W6Una/xrY7he7CisuFqqRwRA=; b=CYjL079qtdG/n6WWleaAjn86Ja
	MkCFwqkVEBtpzEDKnLWKA3gNb4yC13D6or63cCJrG4TPJBk8N8bFOjz+8gHNbA6/9mG8tXIInKOlI
	CsOAUs3Mw/VpJoGLG6j5cAtbwYlyB0a7p6jKk5WSES0tAkLhcD9LakPrlZrR/od05wbZDGlnAWAL+
	tybrvX2/YCAITPlUnRiamF35Vb62TyheYvTQM/ZALR32EblR3M8pjvF1n0iaI/E2t5Fyzws+o+nl8
	3+3My6H2OCEHUM6x9EEEByDLXvasJHr7FRxRQQ+bvqq6aEOT/cuGoNkyeDtYUVvScKabfqc5MJC2l
	FN/izFdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4Vu-0000000CYej-339e;
	Thu, 19 Nov 2026 15:57:30 +0000
Received: from smtp6-g21.free.fr ([212.27.42.6])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4Vq-0000000CYai-1bmt
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 15:57:29 +0000
Received: from L30177.local (unknown [213.36.7.12])
	(Authenticated sender: vjardin@free.fr)
	by smtp6-g21.free.fr (Postfix) with ESMTPSA id 3D7B578034D;
	Thu, 19 Nov 2026 16:57:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1795103839;
	bh=ICdMlhTFeha21pZvvVAfhDVEl7HZL+KT6ohipt9rgNo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=snfT/r7JO2xh+gI9mOw4Szjy2GLjGvpT6IOEkq/RPDm//ttWXZodRrbfKwk6HFD0J
	 RziB6M1wXt/DCwRCyNTc+rKmorB2sHc3NOUc/DnZsKCilZcSle4TxxNQNf+dveXDdU
	 KpuQQJKqvCbTebh/7Tsx4dliYP1nWvtn3sUewrfvjs5FF2pxi32Nfr9Q21PnDxd1Wz
	 f5+BXK4he4KOyGWEeM4QxIbIx1J0zzSu4xVu361n7qRmYOoj5OIWmnRgexrmbTKjw7
	 gMvPynUZqcuaYmu8QOYi1SL1DbmxCsIumWfWjW9hApXHg6jXUU+Fq7UaaYI+NDDqq1
	 KZayY9nMtFtrQ==
Date: Thu, 19 Nov 2026 16:57:05 +0100
From: Vincent Jardin <vjardin@free.fr>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, netdev@vger.kernel.org,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH 0/3] phy: lynx: add support for downstream retimer PHYs
Message-ID: <av8cUZ2F4_iw2fQV@L30177.local>
References: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_075726_920913_A2160786 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Ioana,

> This patch set adds support in the Lynx SerDes PHY drivers for
> retimer PHYs which can be found on the board downstream of the SerDes
> lane towards any connector such as an SFP cage.

It is a good idea, it can be used then to leverage other retimers
on those serdes too (like a ds250).

So, two questions:
 - in patch 3, a downstream PHY without .validate fails every mode of
the lane. Could it be stated in the binding or in a kernel doc ? A
minimal retimer driver would take the port down.

 - for 100G and 40G ports that are 4 lanes under one MAC, and the
Lynx 28G driver has no lane mode for them, so set_mode would never reach
their retimers. What's the plan ?

One more point: we need to be able to tune the equalization and run PRBS
on these chips from userspace. A driver that selects a channel and then
writes would race with such tools. The retimer driver
would have to deal with it. What could the proper design be ?

thank you,
  Vincent

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
