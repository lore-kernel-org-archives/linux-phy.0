Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB06C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXuE0Vb5vAtcxX+B6fqezvUQOcKSuOWK6jCuA1CWtfw=; b=cEMhvkw5cJGrCw
	FD+Sl3vm9cUgCJaqqAJZhhLHfKuADP+wspDBHs7jV4RZH/TTw9vNzizdnvhBaIxADX342gI8qdLlg
	2R0OD5CZaPI8HyfZYsbJn6nNhyLHi6G4OsaUAPKM0wI6fms0v7PB9XLNblNAqJbBnFNUI92n3duJS
	SDZfGV32VVUOUW9Q9EmNCVFa98vEq+e1vtNdOvzCgiiKhfDHZa+tPOfiaHDzJzDgkfXd76bYFY00u
	YplbXYn+ESZ+o90WvJqdZbO48AqEzKmahOjP7P6lYeomLqzUf0m1xRtOylrgDjQwQA0kb1KvgVtoA
	KXydWYL2zTBpwpb5bPgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedg2-001LTn-S8; Wed, 13 Apr 2022 14:08:58 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedfh-001LIC-7y; Wed, 13 Apr 2022 14:08:38 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id 4685483BCF;
 Wed, 13 Apr 2022 16:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1649858915;
 bh=fdOAS35S6RWI64jTl6SCHz+Lbooas0nnubDQjgd6rq8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=E1U/QyvmGZkcQw5qWwRyqOQJRYTnHcb487EaGZWHlXIjcDXvvMXUxCFuWOlE24Teo
 vBYncVbu9tKzWY4qd7BNFEaNxF2906CHf21NrzDoqGKe2u2MtotaC8QSPI+s+zCmUk
 QA4WBlcVX1bSkRuYqf8ZcRiZQVFIoUnEWJ00loLuS91K3D+eisqroV540kjiD6PkLB
 izLLi3seSIfM16djflqg3RWtfmR76m3CrM4kiuXGaIERZwVk2n2uR1B4+3l7mC5tdC
 R6tyPeBegFBRY6WctFGfiw2AFFsAlDhGI6mSHF8j46LJtaT5wOps7p4tJi05cMGYot
 enlI3lJ2aUVow==
Message-ID: <2f4b9bb9-ed14-6a4c-ce8b-0380f12e02d7@denx.de>
Date: Wed, 13 Apr 2022 16:08:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Fabio Estevam <festevam@denx.de>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20220312013812.169671-1-marex@denx.de> <YlaZqvKAQeGCNOQ9@matsya>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <YlaZqvKAQeGCNOQ9@matsya>
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_070837_480442_5C065976 
X-CRM114-Status: UNSURE (   8.95  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 4/13/22 11:36, Vinod Koul wrote:
> On 12-03-22, 02:38, Marek Vasut wrote:
>> The 'fsl,refclk-pad-mode' DT property used to select clock source for
>> PCIe PHY can have either of three values, IMX8_PCIE_REFCLK_PAD_INPUT,
>> IMX8_PCIE_REFCLK_PAD_OUTPUT, IMX8_PCIE_REFCLK_PAD_UNUSED. The first
>> two options are handled correctly by the driver, the last one is not,
>> this patch implements support for the last option.
>>
>> The IMX8_PCIE_REFCLK_PAD_INPUT means PCIE_RESREF is PHY clock input,
>> the IMX8_PCIE_REFCLK_PAD_OUTPUT means PHY clock are sourced from SoC
>> internal PLL and output to PCIE_RESREF external IO pin. The last
>> IMX8_PCIE_REFCLK_PAD_UNUSED is a combination of previous two, PHY
>> clock are sourced from SoC internal PLL and not output anywhere.
> 
> This does not apply on phy-next, please rebase

Done, V2 is out

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
