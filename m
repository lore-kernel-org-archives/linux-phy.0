Return-Path: <SRS0=l6M5=JT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB19DC433B4
	for <linux-phy@archiver.kernel.org>; Thu, 22 Apr 2021 01:51:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 10D8561430
	for <linux-phy@archiver.kernel.org>; Thu, 22 Apr 2021 01:51:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 10D8561430
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nvidia.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+TasDIm2TuW931ZH8iBW8RQgihzz6zOZ4UPjFu/UwZY=; b=D4Xr+JgICTjX3Gz/D39D5xALv
	9yIrLVGibxLfmiGEezRrizvBM9MEjJCtXqU4okklJNmk8rfJGG+dCR/4S9+SXaZLWh3MxiP+msfCJ
	TqJR7/8d/3yRepTPqTSa88ug17qcnPBwMY+YD4eQruUNys2evKJEkcBReZHOPM6gIaJrZikC2MBGZ
	lBb5tCI6jeHuLkn4ueXRd0eTC2R+eqiFun1KCS8tqDR2Ey271C0uCAnntpZas8VGvOKDUtXWH41Ig
	m/cXOYJWjJtSq02g9K/b4t/h9WOGN0eqsk1Fj6t35ExDzg5eONg4XJ0zdkCBeDUDR7p+/oILoJn8E
	ouuz9QgQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZOUh-00FZo3-8P; Thu, 22 Apr 2021 01:51:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZOUe-00FZnq-RK
 for linux-phy@desiato.infradead.org; Thu, 22 Apr 2021 01:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=K3LKgF5TatyPwgXroPUddvrom6DALDkItnS+S+A530E=; b=sctW4XoWiPx8sUG8NkwTS1dm41
 2U6EWFNuIw8ApGTNA3w00ovjKfVdiUp7R4ahfKN8ElGQIsr1Nf9vaDHmWxA2cBTSKabiqpDKe2ByO
 UQMCDW4+8R3/pi15COy9KFeXYDS+7aXjoNfxURjlYMgzUZNJdF6EQtr1eSUL7p8FLd1wQV/Guh8RJ
 u8ifzI6YzFSZ3QBxDzO5Drug7zXAd49ePb5V0h8A7wekDRCrqnP5AewjrvCaihWSp0Tb9SaGIoEha
 /fADcF/Q39HwVFmwN1PjCFFbrFt0hFauQDon6EE7Ty40va/iGJK1y8Qon90JVhlo2lUmX+NuEyH9V
 TbVYZRkw==;
Received: from mail-mw2nam12on2086.outbound.protection.outlook.com
 ([40.107.244.86] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZOUa-00DJgM-SP
 for linux-phy@lists.infradead.org; Thu, 22 Apr 2021 01:50:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AMdZbhkupS5yVY9UmNxMXHqjkAjIgZbZQBYcbAtrcqItjxjeUNNUjGort36etJ1g/re69CF883A8STiN2Lti4vc77boh8brbUNoQGzVZslItyHvyMtgJlZR6aCb3y/cfpPVf+qc58ceca9J7KPXJ6LtequCUvd/b7gfv40+mHpX/WtLc/bf4tzSU/gA56rYug7sK7H72ZG5p+9Jo1jbAXm+d9Ievrkp/94rP8uPvgrVNUBaUXGkI5I9myk7F8T28jHJIF4FRqJGiOy2Q/fKREgLL5SYdc0f0JcLdaavSxshP39gi+TKRiiDDLe7XAkUva+iOCZb4voS8snKB3tyOmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K3LKgF5TatyPwgXroPUddvrom6DALDkItnS+S+A530E=;
 b=audkX26sXBg7YOlqcfBC9DnVTI7wuvHwmayjXrxdkFpRdrofmyGYiCx6oOmBonO1aur04wcBkLwWVsw3JGMMJfza6IL0VTgwDqhtls5RgMDi72Ya+0fDX9MXCO7pJHxdLr2PRlzObH5/FclmYBvdkDb3QX2ttRQjZcqvBtfRVtetT4ucbD1jB4OtqEIMx0RSs+tRtLywg1zwtlpR2rVq7blAlw0rIgTiii83J/129i4p0oc/cFCBxzQFrMWfPQjN8eBd0xmASMgj6ztp9A/FvV4F8z34CR5MYHRv2W0nZYNgk4JrcMqfEfYBasjpL1oILnDMGeWhrKyuuRhrlDOSvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=gmail.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K3LKgF5TatyPwgXroPUddvrom6DALDkItnS+S+A530E=;
 b=SMC8tp/AcvT6IqMOGHc3Qy4waDiA+vkgZyr5MGxEX+zBKF0pPdnmmJu+Fkpq5otSM3kZmV4mmkZE+AQ3s/eMysELT1x44FroovPLZzdzgDsjx0djWafrv6Zm1DjfB1CA8AC88acd8rAV4fjG4nX8x2B/CoOYf2DC7qHnLd2O+HbQfR904qnfPhRHrAIZDH2ajAa/V0Z/nYTpPQgDzFnntISR6JMHJJgCMW0J+AQ5DxbOsPJvcNIIf5FyxTEGfpydG+jgisL3N5JZ+pZqXOXKqiWkAu/VB0PXs4gWnO8qOQgmTBqSxunBkjMLt7GxVe+SpajRlSF273BYd9dZzKaaFw==
Received: from MW4PR04CA0127.namprd04.prod.outlook.com (2603:10b6:303:84::12)
 by MN2PR12MB4406.namprd12.prod.outlook.com (2603:10b6:208:268::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Thu, 22 Apr
 2021 01:50:46 +0000
Received: from CO1NAM11FT049.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:84:cafe::2) by MW4PR04CA0127.outlook.office365.com
 (2603:10b6:303:84::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend
 Transport; Thu, 22 Apr 2021 01:50:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT049.mail.protection.outlook.com (10.13.175.50) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4065.21 via Frontend Transport; Thu, 22 Apr 2021 01:50:45 +0000
Received: from [10.19.101.193] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 22 Apr
 2021 01:50:43 +0000
Subject: Re: [PATCH 1/2] phy: tegra: xusb: annotate PM functions as
 __maybe_unused
To: Arnd Bergmann <arnd@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
CC: Arnd Bergmann <arnd@arndb.de>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Marc Zyngier <maz@kernel.org>, Rikard Falkeborn <rikard.falkeborn@gmail.com>, 
 <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20210421135613.3560777-1-arnd@kernel.org>
X-Nvconfidentiality: public
From: JC Kuo <jckuo@nvidia.com>
Organization: NVIDIA
Message-ID: <937252ad-d3f0-ff29-8e3d-1267d46202b0@nvidia.com>
Date: Thu, 22 Apr 2021 09:50:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210421135613.3560777-1-arnd@kernel.org>
Content-Language: en-US
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c1932999-e331-4a09-7bae-08d905310bc9
X-MS-TrafficTypeDiagnostic: MN2PR12MB4406:
X-Microsoft-Antispam-PRVS: <MN2PR12MB44069368EC291D6D1B1B2DA0D0469@MN2PR12MB4406.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q3m6gmiK0K9Af7bBEECnjgTXVd2lYXy7iPUeJEl9yydNeYLg36Y8IXjua5T/9v6rWDoBdUkTWyNFtZCH8IWhTzxRWt2Jf8tbLWtCJ3NVahWBJI6lvK5UTtTAGds1laoVydhPNFN1I+7wjSagfD4WLYYXjbnG4S1ancbqhZ7mbvEjhlGxOMbS14vodGriH7D0Q1OlkOVdCCulPkjOWBgLikHeGI0abFR+jXBAzxucz9veig9Pv+HTX1V5BPp8kWhbCoQixqBZKTxDkcQjTmhjzXRJf3SIsG/ahtHFl9GM1px9ySpydyu12qCZDHV4QANieiU0iuiYjX9/9Q8VX7HwkjR580bPG8q+g7AbOENQ5EQMqS4S9QobkYC4wF5XdognqMlgAIwwb9nNJHyT5dphctH3BFgKKpM/owfznHvpvm9jWxBSFk+SqBP9XJxrp44fNlME3vuLqGYJUogyqkdT7aEsEMWS1cwB8urzK4Bke26ov5nn2FMBqxy0vlUHiCgvUa0ngNMFJ+SwYvD1JUukCyQLKYVVofHsjj8wd24b9HD8grkswoxAN7p69Ni1N0MpR35YjqKR0VXg0zE0Pqlegt8ry/wC8EAARqHt/73Rg6cZ5fvL8iyR8bloqHO7u6ohY4EvNUSLiaTMC7WSnm7X+BrRylekY5AkVOfvmdzeSQ6KMBpLizLq8pgZfnWUW0Dc
X-Forefront-Antispam-Report: CIP:216.228.112.34; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:schybrid03.nvidia.com; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(346002)(39860400002)(36840700001)(46966006)(426003)(31686004)(5660300002)(83380400001)(82740400003)(7636003)(316002)(6636002)(36860700001)(86362001)(186003)(31696002)(4326008)(82310400003)(47076005)(2906002)(26005)(2616005)(336012)(356005)(70206006)(36916002)(54906003)(478600001)(70586007)(7416002)(8676002)(16576012)(110136005)(36756003)(36906005)(16526019)(53546011)(8936002)(43740500002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 01:50:45.7816 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c1932999-e331-4a09-7bae-08d905310bc9
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.112.34];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT049.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4406
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_185056_972952_A08F72CA 
X-CRM114-Status: GOOD (  17.36  )
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

Hi Arnd,
Thanks for the fix.

Reviewed-by: JC Kuo <jckuo@nvidia.com>

On 4/21/21 9:56 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Depending on the configuration, there are no references to these
> two helpers:
> 
> drivers/phy/tegra/xusb.c:1286:12: error: 'tegra_xusb_padctl_resume_noirq' defined but not used [-Werror=unused-function]
>  1286 | static int tegra_xusb_padctl_resume_noirq(struct device *dev)
>       |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/phy/tegra/xusb.c:1276:12: error: 'tegra_xusb_padctl_suspend_noirq' defined but not used [-Werror=unused-function]
> 
> Mark them as __maybe_unused to shut up the warnings without adding
> fragile #ifdefs.
> 
> Fixes: b8bb3d9c9b74 ("phy: tegra: xusb: Add sleepwalk and suspend/resume")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/phy/tegra/xusb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index 0aadac678191..963de5913e50 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -1273,7 +1273,7 @@ static int tegra_xusb_padctl_remove(struct platform_device *pdev)
>  	return err;
>  }
>  
> -static int tegra_xusb_padctl_suspend_noirq(struct device *dev)
> +static __maybe_unused int tegra_xusb_padctl_suspend_noirq(struct device *dev)
>  {
>  	struct tegra_xusb_padctl *padctl = dev_get_drvdata(dev);
>  
> @@ -1283,7 +1283,7 @@ static int tegra_xusb_padctl_suspend_noirq(struct device *dev)
>  	return 0;
>  }
>  
> -static int tegra_xusb_padctl_resume_noirq(struct device *dev)
> +static __maybe_unused int tegra_xusb_padctl_resume_noirq(struct device *dev)
>  {
>  	struct tegra_xusb_padctl *padctl = dev_get_drvdata(dev);
>  
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
