Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F89AC44512
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 07:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkhTnI2Bp18pw0FcvkkDhCqPtm8+DRUCxTM3dUfhq34=; b=dPJUrF45uVnkcN
	os5QDqlCwB3b92yMnzKwhJLiYha4GPmx/GmKidoKrrqTwjb42GwmflDoWW7NRy0D+19+yXicQ36kw
	b93DZLJEPYiXeID0j/eigGyG+6veW4v9D7AoZbQ9mgGCsTXj7KvigVt7FOFS7kUdWRcmnbymJU0L2
	jvmdRA9rqG0rI65g8sD1RtYhO4HxXPsMQr8iBcgCXfwRllbZr55Oes1WNuEZbOnTOz1wgUuwQpYMP
	IIQm6rVikkuboLx32+hP9BGqXabsdPATOh1ShdS70wn6zYbc0xm1h0ixwjh7UOAcWVc9YmIXaSXxm
	DfyEy/aXSVS2ECQkw2sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmREO-0000000B3Ig-0bfn;
	Wed, 22 Jul 2026 07:19:04 +0000
Received: from 0001.3ffe.de ([2a01:4f8:c0c:9d57::1] helo=mail.3ffe.de)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmREL-0000000B3Hs-1Dwv;
	Wed, 22 Jul 2026 07:19:02 +0000
Received: from localhost (unknown [IPv6:2a02:810b:4320:1000:4685:ff:fe12:5967])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id 60D3312F;
	Wed, 22 Jul 2026 09:18:49 +0200 (CEST)
Mime-Version: 1.0
Date: Wed, 22 Jul 2026 09:18:48 +0200
Message-Id: <DK4X0XV6ZM1E.2L9G007WXO2J6@kernel.org>
Subject: Re: [PATCH v4 phy-next 1/9] soc: fsl: guts: perform fsl_guts_init()
 error teardown in reverse order of setup
Cc: <devicetree@vger.kernel.org>, <linuxppc-dev@lists.ozlabs.org>,
 <linux-arm-kernel@lists.infradead.org>, "Ioana Ciornei"
 <ioana.ciornei@nxp.com>, "Vinod Koul" <vkoul@kernel.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Tanjeff Moos" <tanjeff.moos@westermo.com>,
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, "Shawn Guo"
 <shawnguo@kernel.org>, "Frank Li" <Frank.Li@nxp.com>,
 <linux-kernel@vger.kernel.org>
From: "Michael Walle" <mwalle@kernel.org>
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>,
 <linux-phy@lists.infradead.org>
X-Mailer: aerc 0.20.0
References: <20260721231603.67865-1-vladimir.oltean@nxp.com>
 <20260721231603.67865-2-vladimir.oltean@nxp.com>
In-Reply-To: <20260721231603.67865-2-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_001901_514683_FC507B4B 
X-CRM114-Status: UNSURE (   5.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On Wed Jul 22, 2026 at 1:15 AM CEST, Vladimir Oltean wrote:
> Michael Walle has confirmed that ignoring the error was intentional,
> and we preserve that:
> https://lore.kernel.org/linux-phy/DK44809N7Y8I.J2Z3U4N32H0Q@kernel.org/

I thought you wanted to check if kasprintf() fails and return an
error? Just to be clear, I'm fine with either way.

-michael

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
