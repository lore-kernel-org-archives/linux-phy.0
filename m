Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE417E77181
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 16:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNYIH1gU8Cg7Dl3c5rcUDKfMlgfr7aZ1V0xsGMglpSU=; b=eeQr2dqm6vY0xB
	l6x8hwwJCKxXdELrXJ9JmfE1vXt3pzRB6EYVaT9NmMX0kY/N40pfQcYn2AjSL9wiyyeSjjRpbxalz
	SromI64EFc0tLAAh0I/PSVULPmo+wI0Ftfe8rfVT+xdEZF1NG0jMq4immmR36IvKFQaK+3XIBBpS3
	x6LUnb9ia7s5uqwWXIDpxemH66Zb7m0jdnNvxbjx6q+IZKKtgt75fP2NjYcNhm2J8/1cE+OJPFNuw
	CN/xmXK2nduSnZjkVAlDlO7tIyPXx8rEI94D9/pItOdOA5R5ZL7NwosZI6yZ+nJ/5fkBAdhS4RXsR
	7VlyNIxuP+V7mYb+9Fng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgdb-00000008YlY-2z57;
	Mon, 09 Dec 2024 16:29:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgdY-00000008Yjr-1D0p;
	Mon, 09 Dec 2024 16:29:33 +0000
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B9Dk78Y030060;
	Mon, 9 Dec 2024 17:29:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	2xxd9CctnglpS/bsG969EigGTjV63sf0SfJfYKNJ5iA=; b=jyXFHdpXnRIz9ela
	xCGd6zoUUHUlh9IGm+qSgM1lGwOD4FTBP3Fu4kjMyUYDvwuULVGA7k24qEgqzbFg
	YwTmpb3ed/xBoBWjRzggG4KLs/6ohRnto954BAlELElqS97MIGG1czrLS5atULp5
	l0B2+JABQg0tDF+WmiFJi/2Q7sRV2zTE/rpk3it43sLAzMW7wwtKS+K5oS7P2q6C
	Ly3p3DwCpn0Gy+D0xgPNSz+uLthLYsgczK1AgduUUojr2Tcn4OU4Xjgj6ZiOEggr
	k1h+LH3vSHyHaDszebc5H3Bp36e9a4qGdkC/41H5fx3urTD0wp3aX1Fc5s8V4LGb
	WVQa+A==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 43d26n69ug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 17:29:25 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 3BB7640044;
	Mon,  9 Dec 2024 17:28:16 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D87CE2945B3;
	Mon,  9 Dec 2024 17:24:06 +0100 (CET)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 9 Dec
 2024 17:24:06 +0100
Message-ID: <6bbb3044-4c1f-4ff1-a503-ef8392e023ae@foss.st.com>
Date: Mon, 9 Dec 2024 17:24:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/5] Add STM32MP25 USB3/PCIE COMBOPHY driver
To: Christian Bruel <christian.bruel@foss.st.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
        <p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>
References: <20240930170847.948779-1-christian.bruel@foss.st.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240930170847.948779-1-christian.bruel@foss.st.com>
X-Originating-IP: [10.48.86.79]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_082932_612600_B7B86D6E 
X-CRM114-Status: GOOD (  13.43  )
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

Hi Christian

On 9/30/24 19:08, Christian Bruel wrote:
> Changes in v9:
>     - Fix bot clang warnings: uninitialized variables and
>       include bitfield.h for FIELD_GET
> 
> Changes in v7/v8:
>     - MAINTAINERS: Reorder STM32MP25 DRIVER entry
> 
> Changes in v6:
>     - stm32_combophy_pll_init: merge combophy_cr1 accesses and error path.
>     - Use devm_reset_control_get_exclusive
> 
> Changes in v5:
>     - Drop syscfg phandle and change driver to use lookup_by_compatible
>     - Use clk_bulk API and drop stm32_combophy_enable/disable_clocks
>     - Reorder required: list.
>     - Fix access-controllers maxItems
> 
> Changes in v4:
>     - "#phy-cells": Drop type item description since it is specified
>       by user node phandle.
>     - Rename stm32-combophy.yaml to match compatible
>     - Drop wakeup-source from bindings (should be generic)
>     - Alphabetically reorder required: list.
>     - Drop "Reviewed-by" since those previous changes
> 
> Changes in v3:
>     - Reorder MAINTAINERS patch
> 
> Changes in v2:
>     - Reorder entries
>     - Rename clock_names and reset_names bindings
>     - Rename and clarify rx-equalizer binding
> 
> Christian Bruel (5):
>    dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
>    phy: stm32: Add support for STM32MP25 COMBOPHY.
>    MAINTAINERS: add entry for ST STM32MP25 COMBOPHY driver
>    arm64: dts: st: Add combophy node on stm32mp251
>    arm64: dts: st: Enable COMBOPHY on the stm32mp257f-ev1 board
> 
>   .../bindings/phy/st,stm32mp25-combophy.yaml   | 119 ++++
>   MAINTAINERS                                   |   6 +
>   arch/arm64/boot/dts/st/stm32mp251.dtsi        |  16 +
>   arch/arm64/boot/dts/st/stm32mp257f-ev1.dts    |  14 +
>   drivers/phy/st/Kconfig                        |  11 +
>   drivers/phy/st/Makefile                       |   1 +
>   drivers/phy/st/phy-stm32-combophy.c           | 598 ++++++++++++++++++
>   7 files changed, 765 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
>   create mode 100644 drivers/phy/st/phy-stm32-combophy.c
> 
> 
> base-commit: 9bd8e1ba97b1f2d0410db9ff182d677992084770

DT patches ([4] & [5]) applied on stm32-next.

Thanks
Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
