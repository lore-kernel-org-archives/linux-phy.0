Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7199C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 11:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/bVHsfpsZSjUR74Xhuvx4L0pbYJIALJ5eZcmguPC5k=; b=toMH1O1yr7AEll
	FYZ54ljH3G7kd2QkUUe6LgMeIQx5K7fHz3p3RbYl6Q2dPWj4zGR/oTK7M9nnX06hvozrCskUA2JMM
	4rRKQsMgEt+KhwK64HNS2k5yN9pqB/tjqqH1HJQRHv440Toj00pzWE4GieLdQbY8/wUr5EL5FwPPl
	1q84w+QHlK6A+47FB9PoiNENxbgCeN04+NtRNpkmya7yKXVvngLzDVn1AbsKDgIKqTpXRlEqWWOVq
	YpZNH6OLNkfbs+VTgX6wB+puY4NcY/qSZOmLpC3NPlzttYWVsDY2KFrYPpgrDQJzHpH+4R/TvVODw
	XvTFOnP7SSbFEF/8AmSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlUPv-000zdi-7D; Mon, 02 May 2022 11:40:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlUPl-000zcb-55
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 11:40:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A4898612B2;
 Mon,  2 May 2022 11:40:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E01E0C385A4;
 Mon,  2 May 2022 11:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651491628;
 bh=+9BdMBJvtCvARcxERvlpORcAuEP5sMqsF7ADhizUlxU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JF7FO6u4EOe/eY3XRdN30d57qZKQ8Frv6OQbL3ix9ljBdQOfyDtUK+ObZQgz8dBur
 34v6k0l8RJuQiz3EdEKeOeJekP4VHdROkoWi+baMFusUlDekcboamJ3wE59U3Oqu/C
 p59yqPwBGxo1dJ7/A51rLxaQNKpqmwZzBX5iitIfVE22sJxRDgAH014Ts0G+T/toWq
 e0VKqkMV+YWls6OXb37m+ygBSiYafs+ruh+WEPhsNGUoO0eAYfDwn2omNvUomfpamb
 UdT25DIQkcMCO3OYhEKkDgBIrp99cL0ZHfSdhmUkWjVVoXvrgIZ8KO+SDlCqv5A6ek
 l1Ty8yGlec2kQ==
Date: Mon, 2 May 2022 17:10:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: renesas, usb2-phy: Document RZ/G2UL phy
 bindings
Message-ID: <Ym/DKMSmXFUVSF+C@matsya>
References: <20220423134752.143090-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220423134752.143090-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_044029_284955_C6BB944B 
X-CRM114-Status: UNSURE (   8.10  )
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

On 23-04-22, 14:47, Biju Das wrote:
> Document USB phy bindings for RZ/G2UL SoC. RZ/G2UL USB phy is identical to
> one found on the RZ/G2L SoC. No driver changes are required as generic
> compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
