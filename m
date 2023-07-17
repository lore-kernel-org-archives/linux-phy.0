Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADB81EB64DD
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jul 2023 02:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrH9hNwcVTPDh5GHreqkSNshBlTQT9uUmIAXTK4epL4=; b=G2JeT/Nt8J0n74
	OBOqvuf7Afdqf9vFaCxBMsyBX3392SHneMJtRZa71J0FKPsGzJV37A4cm9uYk2o3yt6woYJb4Dz/h
	Q0+5rX2dMl0o5AGOhYOVYJw6V5yy1q4ZtFpA8fCwoyKvHMAl/vLwWNOBFUiEz0plybg5D1CigVuEX
	ciFPYhai/YDAcFxxgqoFxRn7Hz2muL54tmwjAJNowYlAhyRt4kCoVGeeSbcvqT4fp2veOItc6ZZPQ
	adTSx8cQmfOM81+5vhXp75LI6u8s+lxE+whOSJNQJYnCprIqNx0f2o6vC7kyCz3Mr4xdcV0VvjZUF
	xOYuqCAiPF58cRFaMyMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLDdy-000d3a-1z;
	Mon, 17 Jul 2023 02:07:22 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLDdt-000cmu-0a
	for linux-phy@lists.infradead.org;
	Mon, 17 Jul 2023 02:07:20 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id EE26624E2E0;
	Mon, 17 Jul 2023 10:06:21 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 17 Jul
 2023 09:34:53 +0800
Received: from [192.168.125.107] (113.72.147.86) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 17 Jul
 2023 09:34:52 +0800
Message-ID: <ff879340-2371-6966-84fb-d59de1c15a0f@starfivetech.com>
Date: Mon, 17 Jul 2023 09:34:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v6 2/2] phy: starfive: Add mipi dphy rx support
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Jack Zhu <jack.zhu@starfivetech.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <20230630093056.46904-1-changhuang.liang@starfivetech.com>
 <20230630093056.46904-3-changhuang.liang@starfivetech.com>
 <ZLFfkhnxZbRS7s9y@matsya>
Content-Language: en-US
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <ZLFfkhnxZbRS7s9y@matsya>
X-Originating-IP: [113.72.147.86]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230716_190717_504972_202E71B7 
X-CRM114-Status: UNSURE (   6.85  )
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



On 2023/7/14 22:45, Vinod Koul wrote:
> On 30-06-23, 02:30, Changhuang Liang wrote:
>> Add mipi dphy rx support for the StarFive JH7110 SoC. It is used to
>> transfer CSI camera data.
>>
>> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>> ---
>>  MAINTAINERS                                 |   7 +
>>  drivers/phy/Kconfig                         |   1 +
>>  drivers/phy/Makefile                        |   1 +
>>  drivers/phy/starfive/Kconfig                |  13 ++
>>  drivers/phy/starfive/Makefile               |   2 +
>>  drivers/phy/starfive/phy-starfive-dphy-rx.c | 230 ++++++++++++++++++++
>>  6 files changed, 254 insertions(+)
>>  create mode 100644 drivers/phy/starfive/Kconfig
>>  create mode 100644 drivers/phy/starfive/Makefile
> 
> This need rebase as files exist now
> 

OK, I will rebase it.

Thanks,
Changhuang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
