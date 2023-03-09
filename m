Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B33CDC64EC4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psu1Eni2SoyYWLOkTgc2Mh7sCpRO4YbSCb3jds/ywUk=; b=L/yOTmDVYhESNF
	i9fdSSCe/ksjpQU1eAU+s24zssU5h5u3CRBX6xlISKHTp4G7+fvgg7DuX8tnC1cYOjLZhr4nnrrfK
	K94tvNWDX3CBEa7uZg7qMW3eLEPGJOg4PKRvX1FG7GaR6pGxvyPBAdBrK9fQNAJTSgqDU5mBXw/0S
	G89D/mCxjmFVS+2km8fCkaDqIb61cxZeZKezTawLNeB+spzryq7LH3ITVMCpQlk5RIINEPyYU4Ppl
	D8oAE1UOZumV5X/e4FirNiVMzHXOllx71mV1alaoUJtrwotDjk5JZ4OWqA6m3qaD851k9njRp9zk3
	VLPOv3yBJUuKUkXCUrkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9iu-00855Y-4q; Thu, 09 Mar 2023 06:25:56 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9ih-00851T-E3; Thu, 09 Mar 2023 06:25:44 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3296PeAw086909;
	Thu, 9 Mar 2023 00:25:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678343140;
	bh=ajpyBbTwf4kbcyZJsYNxPxeOERAzLxfrp0uFekWIJnk=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=gR8Yt772IBWl/Y9A0HKeBLrId6lV7wiq8GKt8OcFVdGSxJ2VWCeMxe2l+Ua0m6jCi
	 01jMb/3nLQTwuDW+eqzdCu22F/WD2HZUsSDWUAfVuEuaQut4oUCK4c69+BoKydtjhe
	 2WgeugVC2lecwBL3fSz2lURYtyn+ONyZMZS8AkHE=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3296PesV105084
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 00:25:40 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 00:25:40 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 00:25:40 -0600
Received: from [172.24.145.61] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3296PbO9090700;
	Thu, 9 Mar 2023 00:25:38 -0600
Message-ID: <8209c930-a13e-d8ef-8c36-b47be7d4ad97@ti.com>
Date: Thu, 9 Mar 2023 11:55:36 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: Re: [PATCH 0/3] PHY-GMII-SEL: Add support for SGMII mode
Content-Language: en-US
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
References: <20230309062237.389444-1-s-vadapalli@ti.com>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <20230309062237.389444-1-s-vadapalli@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_222543_555840_837FC774 
X-CRM114-Status: GOOD (  10.93  )
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

Hello,

Please ignore this series. There are a few changes required. I will update and
post the v2 series.

Regards,
Siddharth.

On 09/03/23 11:52, Siddharth Vadapalli wrote:
> Hello,
> 
> This series adds support to configure the CPSW MAC's PHY in SGMII mode.
> Also, SGMII mode is enabled for TI's J7200 and J721E SoCs.
> 
> Siddharth Vadapalli (3):
>   phy: ti: phy-gmii-sel: Add support for SGMII mode
>   phy: ti: gmii-sel: Enable SGMII mode for J7200
>   phy: ti: gmii-sel: Enable SGMII mode for J721E
> 
>  drivers/phy/ti/phy-gmii-sel.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
