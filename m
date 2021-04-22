Return-Path: <SRS0=l6M5=JT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A50C43460
	for <linux-phy@archiver.kernel.org>; Thu, 22 Apr 2021 02:06:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 98E6661417
	for <linux-phy@archiver.kernel.org>; Thu, 22 Apr 2021 02:06:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 98E6661417
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nvidia.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E4lgxKJNQ3YIn+qDBGhybAjFvbGb/c11q4uojKGv6HY=; b=GGSabhtkJZNkA/vjZ697ihm+r
	vZLVL+m+vvFI/DC6EipoRHRlNG7U1pVhZ4XswhJOzqKgIurGMUKjp31RuQGQKVIcxjDF2zEnQxqOi
	pLvdlxeAixlTR8NcJOt00DcAa2S0rzSsmEIt9A0nBAc+ViuqqMtYp5zQvESSk3/tyvJFGTV40Ny1Z
	Yqej3pRWN+aFnUMu6Gubpqv5Kdg9+Vxyovw8Pp+sQFhVy7KVF66v7FpaUhbIP1mVfJ4Bcn/ebPTIS
	unu13mPR/9OpvFlysVuFac+KHydo4+tBSq4FRJsBpghM5vapLt+49ZSFyFdwKZ2cTveqUMu3KnMgN
	qzRr86R8A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZOjK-00Fas2-Vl; Thu, 22 Apr 2021 02:06:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZOj5-00FapL-MS
 for linux-phy@desiato.infradead.org; Thu, 22 Apr 2021 02:06:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=C1qn8sBgealBS78W/Ph/8JhwUAy/My4qsbjxBD08RPA=; b=YtiGryopRpMR3NthLkxC5xWzLD
 5GYg9uyKzJIip2r9niXyZG0OgAG79CPO14ro8HvXiUYNw46dfq4Czk1Zmz+T86MgpJEALh5hswaXY
 BQ403fcClKbHXl+TRx7ykWukHQKUW+qT10j6WG4t8+oEyUHMg4oX32Jk6LKAh1xIQWs0cBZur6z2l
 ykTxbfkpzdPqMltUD3V7Hd8GrpW+RqaCpqtiCks3SozzGG5wJpTR6dqC2CNksx72EJqRE5UXAPojb
 tnN4855qoe0iRn14jZ9cBSYg2G7hORaylwWezeTYuucyWmH2ZMbboHJRbffrFZ8qybjMaG3DqJih8
 8E+XQOuQ==;
Received: from mail-bn7nam10on2082.outbound.protection.outlook.com
 ([40.107.92.82] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZOj2-00DJu1-Vo
 for linux-phy@lists.infradead.org; Thu, 22 Apr 2021 02:05:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtkQ/IKgjyFlRECkEm8YmKWY34de3EIlxYA8HfRNkjjeINHsADw+ZsNlFzMQl59X/paa/ikK0MyQxS87cIBHzio1fxCO8+sS/y+Is79++Ujr+3mM8QQjMyT8F3112XsixNWddZe+lNFO/6NnWwb06wTSDXeu8j0El6ZgcpG3vsZp3YtD8FysutEz22vRxqyBYsh0SsELagJzg6OgypzEAw+5ZiicUsQ/TvfZ1eHnJiBLX0+KTEJnFWuGO2rkLelY22XqRI/b85vGTftwc3gUG4eN9UUKEf29UTGfjSzJ2E+CBVQiABpr3tUz66Fz/PbsYMfNSi48/IwziTL14uV4tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C1qn8sBgealBS78W/Ph/8JhwUAy/My4qsbjxBD08RPA=;
 b=NcaZRCzmDrxi78RHclgokXJd5FDXfc5J07KWe7AFn2EGP3ACXYSmF2yn9la4L5K6PJMkHFW1tBfa0LyQY4cqGv5Dedt/zt8lscwbg4spvtehJge+/ZggGV36LaL3iaWlKVHbFpPgFOVf3VKS5Qz/7HN57IFQq0mvwubzRwc+S8sAK6402ZC+PDiZZcKahbXumU10Uh55IGThI+YiExpuYx4wOJUwDsPkeupyR1LwhqyJ30jjGYumWbvOBlAVNR/deDj54HzxNKzxJHlFlUhWvlxX6UAPPHEs1wwBRWdrwnLvD5IVO9WKl+8JcnTnuCNxoGGbtDjv+/ssEpfjGeJs4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=gmail.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C1qn8sBgealBS78W/Ph/8JhwUAy/My4qsbjxBD08RPA=;
 b=o18RGen5DG8B4lzyBfOQNINkV97T7EupaP2ZGqIbeZL5cDQhpqBj4A5ubFDGmDtJhTFmwzz8HRrludwN07MnrXwBKUsrHxePX61Nlf4nyVLLy4OMSz7PbhlZnYomc83PMZRQOmLnrlLE0unN+YsewEc5bvlnQL1BwYtuYfy4/4joka3TxxxVNB/9hUCxEJo2PUSWz76jwl23AxON2/MygZqh9mIyj6toJoRJ4qleGrFX3/sIEfDRFsg0LIpdIn+Y4hOeUh3HmJreH+Rc6hRdqXAwbvlR+mJwvN9i+PDJM+m702Lw7bg+xKyAtzU/wQnpjURO9iC4+ibpQQX7WqNAmA==
Received: from DM3PR12CA0043.namprd12.prod.outlook.com (2603:10b6:0:56::11) by
 DM6PR12MB4073.namprd12.prod.outlook.com (2603:10b6:5:217::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.18; Thu, 22 Apr 2021 02:05:49 +0000
Received: from DM6NAM11FT033.eop-nam11.prod.protection.outlook.com
 (2603:10b6:0:56:cafe::b5) by DM3PR12CA0043.outlook.office365.com
 (2603:10b6:0:56::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend
 Transport; Thu, 22 Apr 2021 02:05:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT033.mail.protection.outlook.com (10.13.172.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4065.21 via Frontend Transport; Thu, 22 Apr 2021 02:05:49 +0000
Received: from [10.19.101.193] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 22 Apr
 2021 02:05:46 +0000
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
Message-ID: <d21b5df2-8e57-f6f0-6366-0b68f38eb0c9@nvidia.com>
Date: Thu, 22 Apr 2021 10:05:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210421135613.3560777-1-arnd@kernel.org>
Content-Language: en-US
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b3e838d-0306-4118-8174-08d905332660
X-MS-TrafficTypeDiagnostic: DM6PR12MB4073:
X-Microsoft-Antispam-PRVS: <DM6PR12MB40733E65B3F80A0547B4F5BBD0469@DM6PR12MB4073.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: okWajLQnFG5ZyPl9hvzu0MjkAhHLAKKyi7RsgfUVMByuOzVHKMvptAq17d1EfsiQYCxoxgCg1diEQpx17aVQ282NEfhX4paF1LNGhUUycQ+OzSH7WeyGGSyP3wgRX8Eok/fG4C+yw8BknOdfUmWIZk6Vi6IWDN+TaahPgdUJZe1lFzjQXp3mxlW2+pTTlhty3NorVM5Uxj+EuG98llefg1avKOqUbBIj45ymt6yUuK6rN93Lbtg5aANBplea/PgK8hdK22rDyGvcHmD4qUFR5ZczYYiOaX9XQ97gIJRdI1r8JS6HEMDg5GxxyzB5AliP+t+joSvJZiOZKAVB3c6a3M+63C7SnP/tR3DSFVZZ7niEn8idAnZbuLbtuaVHVJhEA9yY5wt7VCDkYJR95dYCB42zFtiVvDX5KOA/946TqReObr9r+j0bguI2BGJdcQ9q/oD4cj1LaC/iR7EjIkUE801PWoe0Yiq0aDOLjeXewRCUfQCbCpbnm+p86Qv2gsm1/akY6Kk6YT7FkkhI6azGR9kS6K2r98EpUfmR7VSe54tCjEw1obJHRKxmzAMjuTycy882v0SFJ+xWe12l/eMSoU+6091Io94q9fTfn6Wtt0fsscKsqkSZOvotsKE7M2CcVhWK+ANf+rawtJq3ydLtirmGRbMain0XKi7BWQP0UNMMB7VjoycV1xejCzeTE662
X-Forefront-Antispam-Report: CIP:216.228.112.34; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:schybrid03.nvidia.com; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(396003)(136003)(376002)(36840700001)(46966006)(82310400003)(36860700001)(31696002)(16526019)(478600001)(5660300002)(336012)(356005)(70586007)(70206006)(110136005)(7416002)(186003)(31686004)(36756003)(16576012)(426003)(6636002)(26005)(47076005)(36906005)(82740400003)(8936002)(7636003)(83380400001)(53546011)(2906002)(36916002)(2616005)(8676002)(4326008)(86362001)(54906003)(316002)(43740500002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 02:05:49.3846 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b3e838d-0306-4118-8174-08d905332660
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.112.34];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT033.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_190553_036648_7B7A45E5 
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
