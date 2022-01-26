Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28831C28CF5
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jan 2022 07:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXSZSV1vlVKqCtUqVXGhDG6opU/Cb995x6wcxP/487g=; b=IoAPhmVs6Z6dpi
	lVPNcSOQVLIZCU0iv7AJRgrc6EXopiDb4r/V/JkLabBXvvYxAksDMRvMmldVMl4ST8RHbNOb4KAfs
	NqQ6fAwCIrHIh4jaAvLrdBX9kkkDNMrdDf0GwxljnOdoZj9s6RDgAfnx4yqLnudnVCHxaJZ+jKRmO
	AB43vVf85nQBFJgPwqdh/t21mE8DpbwFTWkJdTC5e7o/27JRpG49l7RGQNsxWaaCoDQEggg9dzpR4
	JiE+lRIInk4RLpRDVXCLUXPzSUNVcTPbf6ZIdicXQjW2NYpHkbd64jj7+kDVll4N7qbiPezh34Mqv
	iOTMjzbTh3LJ9DpuNdPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCciJ-00AX4K-9k; Wed, 26 Jan 2022 07:27:31 +0000
Received: from mail-mw2nam12on2053.outbound.protection.outlook.com
 ([40.107.244.53] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCchk-00AWqs-ON
 for linux-phy@lists.infradead.org; Wed, 26 Jan 2022 07:26:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/TkCk4Iuvy9cigubJ9tPUA/lh0PdJViXgJy5jSUkX6HPNq8GB4n8h7PiWdG9AgOiQikNJ8lHA/sAlHOkMe7Mryqjk/o6X4klKO3n9qRd5W68W4SpmuNizWSpLHdcaDb9j4cO8+jK+/L33DRSGQCNEwgnOHMzh5DEi/P9MgcT9ikblZMj3XtX/g1AfmKp4EQeHBCq0cCzqP3QGKuuffKXiIp8xDDjyIr+OW4wEglgsgZdWFhIEPUxFXzamvnz4p2X6hg0/nD8970q/wzMi+FG3+0rQVAJUNoV/VP9aFz7hBukSD45DzQvycz4kHnTBN2DlNwnN9UcosnE8mb0eiVLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zu+a0aI1dBo+G/sXC/bJ+C1SO+7ATJ8RYpdgBTebUjc=;
 b=XGffMAHmOaTVgGcWice9b4r1dVHzxVrcHXflFGcDdubIkeHLLiL7VeaScngUuhhfgiDvkzBwcIfBffwmd4giiPoj31Uw0tnieVHEdhsdp8LLU9bLB9xi2HislyBffRZX7MyF7k5dRTDVmpDEVryjQwkXbYZE03maNuVJ2pZqYIAmFT9LDzoV9Qv2lhfvsrjgsGshBheiYjD0MRp/+IPwrPFczjrcMsrWT0rSoI9tZl/fes0C7wjnd0RGypYzZQqGe0fgNT/Uz3RJ3Rh7iCb24H/nVF40KY1AGxIm3MID8s5vQVSAGU7RpcOKuacgMpAKqFhmzvBvdWPWE5orblY/bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=calian.com smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zu+a0aI1dBo+G/sXC/bJ+C1SO+7ATJ8RYpdgBTebUjc=;
 b=J9rj7VMdxm/1NmKgH/3IFfxU0caV/qeB7XerRwy2R4nFtA2OMt0ScuIq0JLBs4K9CqksZuaHriZMVe3q1chY1w/FMR7tvQykxINF2xogvNzRyikJ/cP/XiN9/6FDeMMmqiDignVtRLYWWUcPYzN1UhRTKaPy28booiHxRYIjmfU=
Received: from BN6PR2001CA0029.namprd20.prod.outlook.com
 (2603:10b6:405:16::15) by MWHPR02MB2382.namprd02.prod.outlook.com
 (2603:10b6:300:5b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Wed, 26 Jan
 2022 07:26:53 +0000
Received: from BN1NAM02FT029.eop-nam02.prod.protection.outlook.com
 (2603:10b6:405:16:cafe::79) by BN6PR2001CA0029.outlook.office365.com
 (2603:10b6:405:16::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15 via Frontend
 Transport; Wed, 26 Jan 2022 07:26:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 BN1NAM02FT029.mail.protection.outlook.com (10.13.2.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4930.15 via Frontend Transport; Wed, 26 Jan 2022 07:26:52 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 25 Jan 2022 23:26:51 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 25 Jan 2022 23:26:51 -0800
Received: from [10.254.241.49] (port=55596)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1nCchf-000AGP-Ap; Tue, 25 Jan 2022 23:26:51 -0800
Message-ID: <fe34dcc6-bb5d-a267-ea49-7966fdb9603e@xilinx.com>
Date: Wed, 26 Jan 2022 08:26:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] phy: xilinx: zynqmp: Fix bus width setting for SGMII
Content-Language: en-US
To: Robert Hancock <robert.hancock@calian.com>, <linux-phy@lists.infradead.org>
CC: <anurag.kumar.vulisha@xilinx.com>, <laurent.pinchart@ideasonboard.com>,
 <kishon@ti.com>, <vkoul@kernel.org>, <michal.simek@xilinx.com>
References: <20220126001600.1592218-1-robert.hancock@calian.com>
From: Michal Simek <michal.simek@xilinx.com>
In-Reply-To: <20220126001600.1592218-1-robert.hancock@calian.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6f9414a-be6e-4b3b-9833-08d9e09d394d
X-MS-TrafficTypeDiagnostic: MWHPR02MB2382:EE_
X-Microsoft-Antispam-PRVS: <MWHPR02MB2382105A4BB034F1467AACB6C6209@MWHPR02MB2382.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7xzUyDvRXrCrFhh70Kgyvt2xaKsPfSUDcuP8JMQgdkkwDqEIarYz6gL5P2THguQPBoZ2+n6xPW3TAG/3kBM6GWOmjyTZeCbc4nJVK+jWm7VnHhw9LLQh2GR+iVIwMALn6qm+fwilIjupF3IvWJD+N+k7aD0P0cRXPUqY7vXM1/lztkzuK4P6fdiKBLtZdtWD46oiAqrca1R1g3zGbsrc08UmwY9d+ntIrHzRhe7v5aX1DjqdwdK0eifO5uoh0ACMM1IRbo4OFm7hisQd41eiF+Fkv5SV03/Ec7YsR8yRs6VJaD1Eff6ryK+xTUe8ldBrjKS+nb4bfIf1xyJHFQ92yYjRRtBHwx/yDiR77D46Ym8E4xMthBaRbB+FxSYSfeodL+5SA6gdzkUvi22XkWIIvNtYOOafOQCcDSmn8I0OkA02Vdr7QOppxhyy1llYIiJ20KepDeDNhDHViKuJI35AP8Y7hjrk2dYPA91o1klNSbUitc9EqCUjDgu/WNhi8Qshdpx6kk2sOqEksg7hC2AqgZblcXq1oLCEaSBN+wml87Pw2e3mOh4wrPMVeZ/hTADV0brbun/Q971dg4ul8cf3rlSmRO1IvJ0fAUAXHD9A400Di+v00z/XynnDHe1tWgiR8EPFw3cXf2Rshhce811+8++/frcmKq/RbPYCN0QVuessHsNyl4gEykh7Y6igSL2fCZiXAj657LxjYpG1gzcPFUjvwxeT1QxSfi5jxaNTgAf5gSWLPjfgOKhzf3/78UnAI/9Y3sPNePwnUOv02rZJDdPK6MKKEkqUWisOgABU+Q6vN3Jpaza5UD2czLMBmVY+inUwoQPM4fl28Lu/8Q3PDQ==
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(46966006)(40470700004)(36840700001)(426003)(53546011)(83380400001)(47076005)(2616005)(70206006)(40460700003)(82310400004)(70586007)(508600001)(9786002)(6666004)(31686004)(356005)(5660300002)(107886003)(7636003)(2906002)(44832011)(4326008)(8936002)(336012)(31696002)(186003)(26005)(54906003)(36860700001)(316002)(36756003)(8676002)(110136005)(50156003)(43740500002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2022 07:26:52.3947 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d6f9414a-be6e-4b3b-9833-08d9e09d394d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BN1NAM02FT029.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2382
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_232656_860956_1BDFDF45 
X-CRM114-Status: GOOD (  18.80  )
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



On 1/26/22 01:16, Robert Hancock wrote:
> TX_PROT_BUS_WIDTH and RX_PROT_BUS_WIDTH are single registers with
> separate bit fields for each lane. The code in xpsgtr_phy_init_sgmii was
> not preserving the existing register value for other lanes, so enabling
> the PHY in SGMII mode on one lane zeroed out the settings for all other
> lanes, causing other PS-GTR peripherals such as USB3 to malfunction.
> 
> Use xpsgtr_clr_set to only manipulate the desired bits in the register.
> 
> Fixes: 4a33bea00314 ("phy: zynqmp: Add PHY driver for the Xilinx ZynqMP Gigabit Transceiver")
> Signed-off-by: Robert Hancock <robert.hancock@calian.com>
> ---
>   drivers/phy/xilinx/phy-zynqmp.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
> index f478d8a17115..9be9535ad7ab 100644
> --- a/drivers/phy/xilinx/phy-zynqmp.c
> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> @@ -134,7 +134,8 @@
>   #define PROT_BUS_WIDTH_10		0x0
>   #define PROT_BUS_WIDTH_20		0x1
>   #define PROT_BUS_WIDTH_40		0x2
> -#define PROT_BUS_WIDTH_SHIFT		2
> +#define PROT_BUS_WIDTH_SHIFT(n)		((n) * 2)
> +#define PROT_BUS_WIDTH_MASK(n)		GENMASK((n) * 2 + 1, (n) * 2)
>   
>   /* Number of GT lanes */
>   #define NUM_LANES			4
> @@ -445,12 +446,12 @@ static void xpsgtr_phy_init_sata(struct xpsgtr_phy *gtr_phy)
>   static void xpsgtr_phy_init_sgmii(struct xpsgtr_phy *gtr_phy)
>   {
>   	struct xpsgtr_dev *gtr_dev = gtr_phy->dev;
> +	u32 mask = PROT_BUS_WIDTH_MASK(gtr_phy->lane);
> +	u32 val = PROT_BUS_WIDTH_10 << PROT_BUS_WIDTH_SHIFT(gtr_phy->lane);
>   
>   	/* Set SGMII protocol TX and RX bus width to 10 bits. */
> -	xpsgtr_write(gtr_dev, TX_PROT_BUS_WIDTH,
> -		     PROT_BUS_WIDTH_10 << (gtr_phy->lane * PROT_BUS_WIDTH_SHIFT));
> -	xpsgtr_write(gtr_dev, RX_PROT_BUS_WIDTH,
> -		     PROT_BUS_WIDTH_10 << (gtr_phy->lane * PROT_BUS_WIDTH_SHIFT));
> +	xpsgtr_clr_set(gtr_dev, TX_PROT_BUS_WIDTH, mask, val);
> +	xpsgtr_clr_set(gtr_dev, RX_PROT_BUS_WIDTH, mask, val);
>   
>   	xpsgtr_bypass_scrambler_8b10b(gtr_phy);
>   }

I have found this issue while I was developing u-boot driver for the same.

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
