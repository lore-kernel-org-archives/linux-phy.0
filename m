Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 312D2C531F9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 06:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfq86tTE9tlm28P6/cSi6zdtqFADSRcFQl5hqSHDnGk=; b=j9ZLM8s7EFi7Lt
	NDTk83OSqox28oE9WaRRRC1Wd42aPhE/wTgYdjTTj5Pdr4pVsqBiAgZSxLV3AlX/cKuROTwBAYCAo
	wD1aXQreMS5Y/MdHsDgGNpZuoFlXC7Tn3xZsnNZ2nhHFityR8dPLwSS0Ow5Pbedh82bXruuIH3dkL
	/xM5a/mj+zVR5F9TgyRw6BRzfqtFc1Q5zIraxulv0BJfadVLAkYs015NH9zDv1/i9GKsDmfwDKZV0
	sEKRO4GBL9lKLVrAdaBhcddkDmELtFBgl07xDV5Lyi8IFFrvYexNfMeOsHegO4qmWJXfBNKqN2MO9
	j7DF3DB96Wt7SXXC8O7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn8xb-0000000FXnE-23YC;
	Fri, 24 Jul 2026 06:00:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn8xa-0000000FXmM-0vp0;
	Fri, 24 Jul 2026 06:00:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 305EC600AA;
	Fri, 24 Jul 2026 06:00:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C3A41F00A3A;
	Fri, 24 Jul 2026 06:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784872836;
	bh=6rzPW0CUckbkrF39Ekx9Pi0vtsbA5yjRkuFGFKuxzek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SJ4S4muwxAjPqwN3bl5N3K9mlPX5ztOTcDpunS2J0kEzqUWBG0SS0UtzJGOf3bANn
	 eyjQumooGnJtkNw7HW5mNwxNfaSN2DrMHU6EsxiTgVBmth+jxT8ol2i6DKRgn7/U74
	 Nuahy8UsYiCHf6Q64qJ9zhYtA52xoHHWUsxCK3MLlJno1ItjqbmY+TCJcBBrMBDxUd
	 hXvZtusw1l6p0s4FNmOkI9g/ZRaxyWOo4Y+Gqjkb4QVp6Q7Wuf6+SS8hXgs2MifcgY
	 Jbx3MMJW0lKXITrAnkxqY6kgN8eUoXfd59iGo3vhR6P/zMHkPXnE1pCy1IyI02D2Xv
	 C1TfCVVca16sw==
Date: Fri, 24 Jul 2026 11:30:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Michael Walle <mwalle@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 phy-next 9/9] phy: lynx-10g: use RCW override
 procedure for dynamic protocol change
Message-ID: <amL_gPKbD0BQG10S@vaman>
References: <20260721231603.67865-1-vladimir.oltean@nxp.com>
 <20260721231603.67865-10-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721231603.67865-10-vladimir.oltean@nxp.com>
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

On 22-07-26, 02:16, Vladimir Oltean wrote:
> Up until this patch, the only protocol change supported was between
> 1000Base-X/SGMII and 2500Base-X. The others require an RCW override
> procedure which was lacking.
> 
> Since now the guts driver provides the means of applying this procedure,
> make use of it and remove any comment which mentioned the limitation.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
