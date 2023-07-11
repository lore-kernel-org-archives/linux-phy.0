Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41372EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 19:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LSMjmH3vc1kvtAOV7Oe+A5QkuotanMsUAE9cU+rH8ZI=; b=rcVNsFRL58O6r6
	LAsuTPLg8PXQGwl+efHb3nt+7fwXYzKmOeB0ivwJn8T6COTi9ppm2LD5MhJOm7myC+NM2bmg/Wa9a
	RN4L9alwwZ/ak92W0N/sIWT205VbDqAbJKXGWPDH40yzOTRV+bIyC+yXvVIZXjrL1tH1LFIu8OMBC
	kpKqnon37pbZyHVHLaLrDbZ3tbhNTBU7Hju7yHAVpob4IeWPZiZCY1XTMmbhb5s6csQcVBYz4Xn35
	/IXT2Jz7Iko3LTwQspupMEF68ywkoRFiQSIzfr+tihVcfK71QbgoruNLy13rAyPKl9X2W2933QHsu
	YkRgWtobNRovsZdIR/pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJJJb-00FliY-2Q;
	Tue, 11 Jul 2023 19:46:27 +0000
Received: from mail-am7eur03on20621.outbound.protection.outlook.com ([2a01:111:f400:7eaf::621] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJJJX-00FlhA-0c;
	Tue, 11 Jul 2023 19:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mEWPWqr1qAEN1j/735jqT7UyQadX6i8dKWmRRsCAUBY=;
 b=UA1v7NzWCssD7JCt0Zf5TVu/vp+FbOK+F8h4c7UTTRompEfds7D8BsQ1yrFCY2TSYLYgUHGGX/TEZ2jCBlqYj4yMBIApI9bf5X10/mldQUCIKlVm2oYxZQOxEoI/68uzRWhmEXXRbUwVLSbfU4Q4AdTtZFjt6vz1+fUCkhCyzhkYV3ZNF9M2ebp7AUmz7fmRztURcXJWC9g2pNz1nKvkmloCl5wcsAylJAs2begWNHRBltSu6U/st+aQuGYM182zypA5pUCcWLBo23zHUrtRONAwZ+b9KmDEpK4UdbpmCjP0XLXGeZzh53fnBY6DdkY5WomPgLO6YsKxcov1V46SIQ==
Received: from AM6PR04CA0042.eurprd04.prod.outlook.com (2603:10a6:20b:f0::19)
 by AM9PR03MB7331.eurprd03.prod.outlook.com (2603:10a6:20b:264::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Tue, 11 Jul
 2023 19:46:08 +0000
Received: from AM6EUR05FT034.eop-eur05.prod.protection.outlook.com
 (2603:10a6:20b:f0:cafe::5) by AM6PR04CA0042.outlook.office365.com
 (2603:10a6:20b:f0::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20 via Frontend
 Transport; Tue, 11 Jul 2023 19:46:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.82)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.82 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.82; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.82) by
 AM6EUR05FT034.mail.protection.outlook.com (10.233.241.65) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.19 via Frontend Transport; Tue, 11 Jul 2023 19:46:07 +0000
Received: from outmta (unknown [192.168.82.134])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id 4E44120080099;
	Tue, 11 Jul 2023 19:46:07 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (unknown [104.47.51.232])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id AA4D62008006E;
	Tue, 11 Jul 2023 19:45:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H3AbyZQJwQ6vG/BEusMRjsVfzdMNTGGytBv8KpMqlhnxXkiR7kqcmtTjSHtHAwSUXYWyd3A9M54pmeZHaIESB32qR1FCWxN9SmaKCVtPmnNdCcd//ifYZDrwDdK2Zhp0j/QFx0JKhAb02IHaJVF/9QA05r9CNv4t1bSf032OFM/PHeB2AOf8/g3Ud+iHXHwbQiLgy/RkAV8+fdBuPz+uvV9EjMT9V/N0ZuI3vVb1bAZovhXwJ1UuOzZp/4spRpZ1tJDG51a2MfyV+unUolIblc3F2LIh3YgXVkKpey/FZlWiZOxXBJ/8umOLQbGY+ZruEZ6Qy6R8pkGvYvJ2++6WRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEWPWqr1qAEN1j/735jqT7UyQadX6i8dKWmRRsCAUBY=;
 b=TNU8yL4Nt4xfUZJMOiOxnoFF0e2pN4+Ymdgk2jly6TJIbJgCRC7CrGzdIaSixZkYBarZZfyE64QQVs47fBEVtIUhbPBUqsEDbswj/xryJKbxzUPLMsMobPTc4l+tceyxGU6qu0PBs94MWzCPxOAROM6ftqIZluhBYwbtkfZCzyHv1vAm8nU9bUoukmbGjdwYcwrCPszjtVDp2KJs8oXfxhR/IWbUzp9V75Y4yBW5kez1khvYkWAW7dG4D8+9CgZOrzrYlXA0VWJfmeYvZwlbYiJ598QomGILyBC+5GFXMX50hM2j3+Ed6BpTY4mAWFaxFFZwlMIN+OFX1X75vIpIDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mEWPWqr1qAEN1j/735jqT7UyQadX6i8dKWmRRsCAUBY=;
 b=UA1v7NzWCssD7JCt0Zf5TVu/vp+FbOK+F8h4c7UTTRompEfds7D8BsQ1yrFCY2TSYLYgUHGGX/TEZ2jCBlqYj4yMBIApI9bf5X10/mldQUCIKlVm2oYxZQOxEoI/68uzRWhmEXXRbUwVLSbfU4Q4AdTtZFjt6vz1+fUCkhCyzhkYV3ZNF9M2ebp7AUmz7fmRztURcXJWC9g2pNz1nKvkmloCl5wcsAylJAs2begWNHRBltSu6U/st+aQuGYM182zypA5pUCcWLBo23zHUrtRONAwZ+b9KmDEpK4UdbpmCjP0XLXGeZzh53fnBY6DdkY5WomPgLO6YsKxcov1V46SIQ==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by DU0PR03MB9471.eurprd03.prod.outlook.com (2603:10a6:10:41b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 19:45:57 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::4c44:4298:a37e:facd]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::4c44:4298:a37e:facd%4]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 19:45:56 +0000
From: Sean Anderson <sean.anderson@seco.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Sean Anderson <sean.anderson@seco.com>
Subject: [PATCH] phy: zynqmp: Allow variation in refclk rate
Date: Tue, 11 Jul 2023 15:45:39 -0400
Message-Id: <20230711194542.898230-1-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
X-ClientProxiedBy: BL1P221CA0009.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::24) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: DB9PR03MB8847:EE_|DU0PR03MB9471:EE_|AM6EUR05FT034:EE_|AM9PR03MB7331:EE_
X-MS-Office365-Filtering-Correlation-Id: bf94cd24-c0e9-4165-f060-08db82477861
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: vPqdVf2NVDIjqj8rcViXGvrwLfFh5tCCK9RFe6Xw/ZWNegk4YazBIx/xeim3OBAQ8OSXYmY7VqlhpOyVMyZe8Uwb8OpLp1JbpWSUjuwxQQCqTX5ZTmj0Vow0uBxjLtQjOrDJGNMqYp4s+9NevWLjbsz+6qvJEdNo6FA6hYafgg1ZYU1stSMEcfvqNkqa7tkXGuQJ+CHTbLwEM0SsbDksciAuZIeJZSxKKYkyxuDo/h4NyLNwDx3Gz/m5xhSZPYNUoPhZy3xauAjhYDoH21WLyUvw9cyyChn15dBcwS9PC5AJ7Nwzc3lsgp4sCfMdJ4tg3jaVIgNDzdpntbF/XeN+9qT6ajgB6zRgTGmVDzH2dgb594mBzz2+3S42dKSjwFnlUQDsI6SGo7lZ7lX1CETW5BY/dfJqaTgCeWeCU9RwRX5zVuW3tJRWTBOZivUyIvjVaqnc08W8aUhSlOvwTzB29/3Xge0589uF7GlNa8spslIILl60YwESvKmDUbfXrc9HF3Dz9fPXnMNDo0uTEuv2b7cRBhzbaLgpW6iO74jMWLUCFRZFCaJb2cpXIFDke81flbn+fBoQwCOI7nt0YwbzLjqsy82vSc+YfE+yCCDvXcaDQxAJhC+HrnEk64FGSuX+vp9TC8gds78/cjnt67ETVnz8r+9ylIgP1oVB83Wq4Kc=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(136003)(376002)(366004)(39850400004)(346002)(451199021)(38350700002)(86362001)(38100700002)(186003)(6486002)(52116002)(110136005)(6666004)(36756003)(107886003)(1076003)(26005)(6506007)(6512007)(2616005)(5660300002)(2906002)(316002)(66556008)(66946007)(4744005)(66476007)(8676002)(44832011)(8936002)(83380400001)(4326008)(478600001)(41300700001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR03MB9471
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM6EUR05FT034.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: a71277f5-e2af-449e-4924-08db82477194
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i6j6NXcT/XdmJok3Wc6uhjIPE0y/eaD9gxrI1UK4tTTZ2VfzuX02h7ooI3xnVTWKFVUx8H5y80h6AXWZBlVT1AulwAFJFrqQXuNTEd1qLGIVLo0lr2ytV7S+6wXMuPgfvLPNBWQGAnBf5MyXpK8MwhW2XZXXlv38yFfCAnX6LLCeGSCVqzSH+uQk8AtAjmR0Gl9Mp1Bi0p6SVZimcKm9aurLAod8T6rQpU3Vp16xqfQ8ueCE+6JeM31wzrtb9u8Ph0jRT8nPKdukPjKqNY71dm1AMYvR9Jomt2mHS9ERtUSxYYbf2Nxczk2Fqoos4DgNrqveylNKJDMWue1pjnKdc5m+bhHfFMxAwcHx0YUP/aH3fyp2xsL0nmwfYWLns0oNKZG7bQUgF0uADB9D7lJUeLCddcvWJT63V5x+1ae6LyIC0qoIsuwVk9ARTSpj+TgdPzG27n9I+0oQ16e9KnBBIF6x1S+E/lGaQjKyZYkVi8UeQr01zwFdQn9Jwr0Uh/ZHQnEMKpxuuUwvedg1LOw0+ST4eWLsFncvymbjzd8svLO553Piq1FLBL7gKgW6qdiFltnvfXLGX2zRhIeBacHga3vnq7cj1a2mEnkWGyYgJFTWM4uRWE6qY3nS5XA0ETQs2cg6F9cps/7o2U/PTw7WQ6Zbi4GcxuClImZ9xOs5jxghCOhnY1Pe39+YKSWCZ0n/rUbIvHB6Cy4aA5gwt8abt3zWDgd5Q9L1q/9Ig6FpiG4enK6jHhYpojRgoXFtp3X1TvVXftEZznQx+ypgLcATyQ==
X-Forefront-Antispam-Report: CIP:20.160.56.82;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230028)(136003)(39850400004)(396003)(346002)(376002)(451199021)(40470700004)(36840700001)(46966006)(110136005)(6666004)(6486002)(82740400003)(40460700003)(7596003)(7636003)(478600001)(356005)(8676002)(5660300002)(8936002)(36756003)(2906002)(4744005)(86362001)(82310400005)(44832011)(4326008)(316002)(70206006)(70586007)(40480700001)(83380400001)(336012)(47076005)(41300700001)(1076003)(186003)(34070700002)(26005)(6506007)(2616005)(107886003)(6512007)(36860700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 19:46:07.6718
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bf94cd24-c0e9-4165-f060-08db82477861
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.82];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: AM6EUR05FT034.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_124623_251963_7EA03AAF 
X-CRM114-Status: GOOD (  11.72  )
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

Due to limited available frequency ratios, the reference clock rate may
not be exactly the same as the required rate. Allow a small (100 ppm)
deviation.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
---

 drivers/phy/xilinx/phy-zynqmp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index b0c2045b886e..2559c6594cea 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -904,7 +904,10 @@ static int xpsgtr_get_ref_clocks(struct xpsgtr_dev *gtr_dev)
 		rate = clk_get_rate(clk);
 
 		for (i = 0 ; i < ARRAY_SIZE(ssc_lookup); i++) {
-			if (rate == ssc_lookup[i].refclk_rate) {
+			/* Allow an error of 100 ppm */
+			unsigned long error = ssc_lookup[i].refclk_rate / 10000;
+
+			if (abs(rate - ssc_lookup[i].refclk_rate) < error) {
 				gtr_dev->refclk_sscs[refclk] = &ssc_lookup[i];
 				break;
 			}
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
