Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A7E9C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 08:23:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEF02611B0
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 08:23:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EEF02611B0
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbKDbvy/7SL7Qk6QVUIf0Eqk9uyJPrWuP38WWOjqVFw=; b=JjZLHmNzwy2IsY
	z1KO+vk+QPR3DUvlRGlkHLLEUv0S22A+sDFcCje6Ix3b/ijdlXxs17lh5bIZJclQrNDqhwxTJMAqZ
	FbryEjGB9DVNGI9jfq7Q7yW3mnlvWw7JJw/LglVnK2O0ZpvWZmQrp2s/EfFjAIW+ScqVt5IN3BC3W
	G+yefGU3bM0Y10Gjp7iEX8gLwix2QXnaxypgwgs4jKs09ywyK2W5b3iFjHaT6X3r2rxp486kcizfC
	sG4R8lWcXrMIiQZ/iWncw7gBszPzz5a4VRmUxiZDj6DENEZAVMAb0rrzkM88BSCeHE2T7OHWliWfv
	3GK6rzQbn4yr95hk8isw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSxX1-007SIG-Es; Wed, 22 Sep 2021 08:23:07 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSxWy-007SFW-4G
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 08:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632298984; x=1663834984;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xjW/845tnWGlXhM5QyPda/qgpHmpay631ISWld/+EpU=;
 b=L8Cuz3hkzOr+ypjGCSbVF2SONiPrptX6LVU+9RLf1bfyYjGm/EbvMvUm
 A+EdN+o2x184gCG+P2dKIjsmhKacFwRIIfWwp56COnbGCF16UMTCYgszR
 doccI19yEua8cm9m1iflXIUo7TRc/zYNSUYey50NfebRm35iTS77hq+Yn
 TdexP0jRPNCApRbFOiaLxKW+tIL/cIKBPAKCmPnSwcYgPA+mJtnq/JMjd
 xh4d00n74su/CQwSLadtRvFJyuDQTiILxnD6OlgPQV3KqbKM/7MF5HEe5
 csWv7TfrMD7//DyH+HomLonP92PbYGEFmcW0TBPiZappw1RnNxrEwoxQ6 Q==;
IronPort-SDR: Io11DU1oxCoW9DJBhO9Z0Tpvl9wTYnln0Mf/81sY/iYrOHQnGAb5KM0qJ/dXkef68bAa+ShXJb
 gMwGJXFfqocdln2uBliOmoA9IhRUxCUF/6WQdCvea6NEG0+oKRGxap7tvtsvCaFv+RwhCbbPeg
 SuTRI6u1DTzynxEshLUjcaF91oH/1wdA/Z0Ld3i9AsAXSC6KZ3gbstMZ/2sZKFaWPK8cxZGrcK
 GLtZt0ZZOxUgOY9EGKqsEXD4cb+iIMaztN0cAFVVJ/FMUd1Fe9q3MZr/KPdTuE8jwf1bBx6IBH
 6TbVug5MtabHNU5QekKfZfPt
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="132701188"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Sep 2021 01:22:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 22 Sep 2021 01:22:50 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Wed, 22 Sep 2021 01:22:49 -0700
Date: Wed, 22 Sep 2021 10:24:18 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
Subject: Re: [RFC PATCH net-next 01/12] net: mdio: mscc-miim: Fix the mdio
 controller
Message-ID: <20210922082418.xagkhx2aw2yxfwg7@soft-dev3-1.localhost>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-2-horatiu.vultur@microchip.com>
 <YUh15ieAzBiCVeX9@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUh15ieAzBiCVeX9@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_012304_295179_FBF5883E 
X-CRM114-Status: GOOD (  16.42  )
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

The 09/20/2021 13:52, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, Sep 20, 2021 at 11:52:07AM +0200, Horatiu Vultur wrote:
> > According to the documentation the second resource is optional. But the
> > blamed commit ignores that and if the resource is not there it just
> > fails.
> >
> > This patch reverts that to still allow the second resource to be
> > optional because other SoC have the some MDIO controller and doesn't
> > need to second resource.
> >
> > Fixes: 672a1c394950 ("net: mdio: mscc-miim: Make use of the helper function devm_platform_ioremap_resource()")
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Hi Andrew,
> 
> Hi Moratiu
> 
> The script kiddies might come long and 'fix' this again. Maybe
> consider adding devm_platform_ioremap_resource_optional(), following
> the pattern of other _optional() API calls. Otherwise add a comment.

Initially I think I will go with the comment. Because this patch
actually needs to go on net.

> 
>     Andrew

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
