Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41395E9D3FB
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjYU999az/Jtco9p5K47fmOBsdUY1saxRalnL54YyQo=; b=fqpl1HciL7/17Z
	inauJqBs8YhfmPIg9d51Q/gEBnWEP0xRsj5rZqBJ3Go2nJSg+WYCAjrH/5ofbcGdW+CC9cIqWqC50
	rfZB++0UCoaf+jE/i/vv46WA1eM3GjT2d2+diGka76sdxnjzAJrh7Wvc6bC9KLARS9A9X41tbaACu
	OSyp9/kiu1NG/DPwsk/cJ80SNYx2+YAWvysn7NWWbSKmjvYsq8A2D1x88hMnjvdL6yELPc8rU2inT
	NruD/Hq/dyQYnyrOgHU7ZXDPu8/a5FKtTLls1U2u/1VsGE+jwst4BC3jMTh2x0sKhxpm1dNXRj0r7
	7ZSpJGAoXp0u3rqpeV7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf33-00000008guJ-00fT;
	Wed, 04 Feb 2026 15:44:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf31-00000008gtQ-02Dg
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:44:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 66ABE436E5;
	Wed,  4 Feb 2026 15:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D134CC4CEF7;
	Wed,  4 Feb 2026 15:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219846;
	bh=gM+9C1GefTDiD72/AoT5vSGcQRcVvp7WZ+TBoqKWXi4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CJLn11XSwTacFkFCF0Ytm3O7PtRPN9umWvZr122a/TRw83mrAL3v6P+mVDVUf3hbo
	 45RoVQyVbbNS+9C+AfEJn47v0nCfkc2BHIqon6UNDoII1Pez5pzQoziu1na/CWHd9n
	 zaoLQLSfHmfRYeGxJVj0xfl7ZSuNuFaqC/Mp9mk3l6VUBkwp5kdkI7kiyZxzGLYN/8
	 RK5Alj/3aCD4ynCq0s/uobmEopPVjTb/ucEZIPBa7sDSvnPBHJ458Scklqjm51fLDS
	 toJD3u43PQdzlsMu1wIgd/5+9vJMUCRblVeoKDKUNhuCVkgwEC91tLOemMc8Xyeo6+
	 EzgapKA/iUILg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, 
 =?utf-8?q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, linux-kernel@vger.kernel.org, 
 Venkat Rao Bagalkote <venkat88@linux.ibm.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
In-Reply-To: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
References: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH phy] phy: enter drivers/phy/Makefile even without
 CONFIG_GENERIC_PHY
Message-Id: <177021984348.133434.2174228638477842176.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 21:14:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_074407_067826_21322494 
X-CRM114-Status: UNSURE (   6.92  )
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


On Fri, 23 Jan 2026 13:06:00 +0200, Vladimir Oltean wrote:
> Kconfig option CONFIG_PHY_COMMON_PROPS, which builds
> drivers/phy/phy-common-props.c, was intended to be selectable
> independently of CONFIG_GENERIC_PHY. Yet it lives in drivers/phy/, which
> is entered by the Makefile only if CONFIG_GENERIC_PHY is set.
> 
> Allow the Makefile to enter one level deeper, but stop at drivers/phy/
> if CONFIG_GENERIC_PHY is unselected (i.e. do not enter vendor folders).
> The other stuff from drivers/phy/Makefile except for CONFIG_PHY_COMMON_PROPS,
> like CONFIG_PHY_NXP_PTN3222, all depends on CONFIG_GENERIC_PHY.
> 
> [...]

Applied, thanks!

[1/1] phy: enter drivers/phy/Makefile even without CONFIG_GENERIC_PHY
      commit: 3ddcd24b4d8454b2b9b2d013a0d61986ae8bbbe7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
