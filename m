Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C5ACA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 11:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPhEHLJB1v2CbV0fbFwJPjMRZ2J6aOAIpXbBs7gq8nA=; b=NiJKrnZMHbcL2p
	DvvVdtnLRpR8buBqr5hqd9e0jxq6vKu+Vz2GdrOBp18JrBd5menkNaYwzEWLeBs+ej7a7y2So5Trv
	tdY88K0J4pHuO45qSPOlVGQkfZDvkIg1fIhZRqAB99R/NTxVGlCcGyQbjSZYlZ3lGaHike/RpdGbG
	5k+by4Ni95WJiXXbm4hFbbpM+SNjWh5zc3EE1WZny3MQ9KKH4xWuyXXYQVWmPVlNWkF9eTTDmfKJZ
	kvwlcQMVgjuKXTlW+WwArPGriNZh3ujg9Aa3v+J1FWXD7wkWuEfKPa7A6xld66M8MjvRGM5XnnU7p
	M2oTFF/eyICFfN+TzIUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoKKx-0000000AFPd-2pr7;
	Tue, 19 Aug 2025 11:17:07 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoIdB-00000009xTA-25EA
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 09:27:51 +0000
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57J9RkuB2923618;
	Tue, 19 Aug 2025 04:27:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755595667;
	bh=UeBYqNJFWOs+9bDpdWtXTOLsj2IXp81ZTxOGVZVhHgY=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=KXqd0uhYiEFGhXbKvoUlU9oOwSuu7KtatAbks5XRo7Wk3yeGjT8WZXBInfedk5qWF
	 +7KPON/v6Ia9w0xfuGGPMxqyGKG6tq8OfDexY0vyV2r6L18AHOxcdSawqUiy3dC+/s
	 Lpe/J0DKDDAmPPBftXoIioVkehYpB93Rqzm8FCkg=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57J9RkJU946677
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 19 Aug 2025 04:27:46 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 19
 Aug 2025 04:27:46 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 19 Aug 2025 04:27:46 -0500
Received: from localhost (uda0492258.dhcp.ti.com [172.24.231.84])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57J9RjX32784843;
	Tue, 19 Aug 2025 04:27:45 -0500
Date: Tue, 19 Aug 2025 14:57:44 +0530
From: "s-vadapalli@ti.com" <s-vadapalli@ti.com>
To: Aleksandar Gerasimovski <Aleksandar.Gerasimovski@belden.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "afd@ti.com" <afd@ti.com>, "s-vadapalli@ti.com" <s-vadapalli@ti.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH] phy: ti: gmii-sel: fix rgmii_id mode config
Message-ID: <6aacb0e2-d1a5-4184-88d6-af9a1079bb37@ti.com>
References: <20250725084640.845760-1-aleksandar.gerasimovski@belden.com>
 <SA1PR18MB56924713F249FD6D042909379930A@SA1PR18MB5692.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SA1PR18MB56924713F249FD6D042909379930A@SA1PR18MB5692.namprd18.prod.outlook.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_022749_710922_E576F9C2 
X-CRM114-Status: UNSURE (   7.85  )
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

On Tue, Aug 19, 2025 at 07:43:12AM +0000, Aleksandar Gerasimovski wrote:

Hello Aleksandar,

> Hi there,
> 
> Any opinion about the patch? Or maybe I missed the active maintainers of this driver?

There is a v3 patch for this already at:
https://lore.kernel.org/r/20250819065622.1019537-1-mwalle@kernel.org/

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
