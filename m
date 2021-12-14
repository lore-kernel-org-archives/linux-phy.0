Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD84C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 14:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:Subject:Reply-To:To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MANSGXrU1d0C4n4GQAXOH8lFgO/YHTPRrVfHmZejXk4=; b=lgJfIYuq7E39ruJ3qD6U5Twk96
	WSqGqnEJKmS6fQaJlmQ8wrYgR6zE0quta4NKeASQOi64R/d3EMqlYY2YQogMujooCuu1fED48Kpny
	8Q1OCyxzTxm21r4dNJlZCoQ1XX07upwFSRUsDNEcB0qIRE7CPRoJwRM0ayKm/wExGeSiVDIhO0zsN
	L4EvYR3JcQ+Y1MeIXszhtgcBBK0cihBY9krB22O8RJJnCw0/0hUqqr+HvMrhc+GDP/iA+woFMiCoO
	PdM8aZbWHGUUAIYBe1pzfb9diejC5t8EpMCtxWPvAOKe0cJh0/O+ZSF6PgtSh18o/S54kgLAnDrIW
	qlo4YdZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx8qW-00EPtk-LT; Tue, 14 Dec 2021 14:32:00 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx8qU-00EPt1-Br
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 14:31:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BEEVscT093615;
 Tue, 14 Dec 2021 08:31:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1639492314;
 bh=RPYr9UpoyawkvTrP01Q5C0GP+NxGEo484fZSWJiwrsg=;
 h=Subject:CC:References:From:Date:In-Reply-To;
 b=ZyWteVf0Vqt0w0IjxBMQI6lUm9WDUZG6QSxAZNvwJM64HOT7Ck8+c7d5a7nrCch7i
 TjKZZVB9Rntiu3c2eU9KmJq9UFdxz8jwQIe7bBfsNe7gygvttLE+UwjwNuWxJ0cHak
 ajPMJ6smSQpr3fEGlWDSq+URR9XFPwaLwnZQMECQ=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BEEVspX028562
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Dec 2021 08:31:54 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 14
 Dec 2021 08:31:54 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 14 Dec 2021 08:31:54 -0600
Received: from [10.250.232.185] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BEEVpVu029051;
 Tue, 14 Dec 2021 08:31:52 -0600
Subject: Re: [PATCH 0/2] CAN: Add support for setting mux
CC: Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20211202131002.12217-1-a-govindraju@ti.com>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <7c3a0ac9-308c-2ef1-b8ae-6aa4e1a10d73@ti.com>
Date: Tue, 14 Dec 2021 20:01:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211202131002.12217-1-a-govindraju@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_063158_487417_FAE5A595 
X-CRM114-Status: GOOD (  14.52  )
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

Hi All,

On 02/12/21 6:40 pm, Aswath Govindraju wrote:
> The following series of patches add support for setting
> muxes to route signals from CAN controller to transceiver
> by reading the property mux-states from the device tree
> node
> 
> The following series of patches are dependent on,
> - https://lkml.org/lkml/2021/12/2/423
> 

Thank you for the comments. I have posted a respin(v2) for this series
after making the fixes.

Thanks,
Aswath

> Aswath Govindraju (2):
>   dt-bindings: phy: ti,tcan104x-can: Document mux-states property
>   phy: phy-can-transceiver: Add support for setting mux
> 
>  .../bindings/phy/ti,tcan104x-can.yaml         | 13 +++++++++++
>  drivers/phy/Kconfig                           |  1 +
>  drivers/phy/phy-can-transceiver.c             | 22 +++++++++++++++++++
>  3 files changed, 36 insertions(+)
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
