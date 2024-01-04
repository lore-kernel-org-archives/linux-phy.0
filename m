Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97C3EC47073
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 13:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KNIvis+4DiW7/gY+a7+RLdjf+j77wBg/USUegx4BdAg=; b=BLWLzkHdXvfsuA
	9n87vM2u44TPRNnEKvzuYlXuSR7r2RwzOwEZPmkv2ktEFLIJAbyWt2H0UHb7ENlV9R4dLA1s09j/t
	8vleIwMxGmKn23yx3TdDzyBhQGsRKRiDjFxdkQCQpHicSi2ZtLvZALOKXWHUFdpDRA0+7BZC9HovR
	/e2+m0zYHwPNiTZ1f/sx24Gfmz3DI3ZyYpuopar9738MYo2k3PwyerMv2BuC7wHXmqiDeqbJjjjgD
	StMQWYlOqOZp7IoPQw7BNJdcQCUlYEU3W6ElyojupvRlmJLM72IcjFF0rVuNldSuSzR6N06K+DDL4
	tEPVX1Y27LzjVJ/Kt62Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLNo5-00EA9X-0u;
	Thu, 04 Jan 2024 13:30:45 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLNo0-00EA6r-1x
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 13:30:43 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
	by mx0a-0014ca01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 404CC1BX005199;
	Thu, 4 Jan 2024 05:30:26 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=
	from:to:cc:subject:date:message-id:mime-version:content-type; s=
	proofpoint; bh=i6DQf3ZI7Ty4jDXX6q/5g1aY0LA81l6Y+x7ZVKV4P68=; b=P
	QYsawFz3Tga1qOH0oqaeppc5VwxOlhlLoUAhzqPLfRjmQnRlearlPDK3EbJhDlih
	1qw3BJfjrAmC7cnUJpxM+HcISeQRAdDGsDoKIBDoxOnatA2+PJPvM6YayQJ/Vsc+
	mEyfVwWygqKKuTPuKJDdBK5PSvS/J0RFTfXhq7S8etd2H1fTye6nZJUBKL7RJvta
	ElhsPGh2jwiVoojXe+M+YFlJFsfylx4XSAgr9NR5xvKdJYKBSaLNZ+2rn9x9SLnN
	h6xDmdppAlNZnXkl1pHth95J53ER/NVgOTmtlsDiM1pH9g3tOLpdLXqCL6OHxSeY
	ub6TFEAa8zERl/UV8hw/A==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0014ca01.pphosted.com (PPS) with ESMTPS id 3vagmwhm62-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Jan 2024 05:30:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aIzYkDvk5XfkbPV8Bjy5mEe70DAY27FRIGUIMdCHOuqkAtwdjbSjJI6VQNCkj7ZOOq+FYLSb3abFa479U0qJHH5UD7F/5LxbBv8wmbC3fP0LgGd1gdmz04AaLyTvyJyLVNZ18Mzy9PYngKi/kA+jvHpyRYKy2ySLXxyxBzYid+/6xLLYIlUSrCOkT2XbaJnjKT/kfFBxR7HeELOxJqMU4pu0fgnSoqyRtigsH6wuDh24w616oN2CmhN2DF8ANJq8JNSNFHWTomY1jnKBYmkrgnHtQcTVB5h6/kMr3CIUVEmiDG8XGDdVZQ8MpC8qmG75rC0dcy7peRt3Km411gPdgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i6DQf3ZI7Ty4jDXX6q/5g1aY0LA81l6Y+x7ZVKV4P68=;
 b=lFpEo8OmTViFsCx7wtoKi0uipgXv/TqcASM0kY5OL175Ich2AxJODISCl1hU2aY3CML6daATrJA2bOFpcZGHdbthOXbcp31FUoCniPEQUpGjfhX3quykCcyppLIbnt04unNCQliF6FnZsfGtQNZktT8zCsdsYdN6cfB5XlB65r2n0zYAJjHtoRixlG8IjBJDNTH9AzB0of8qxBjw6utvtv/70nQm+HN8YFr0zER9eS7ReGJ1PtZL4JH91+V+m4abubeWEi3lrwkqn34fXYl2WD5i9kRsDEYxAIVSEM/txvAJoDPSnIbf5pjjYDjahdHUeTE3B8y1yiY2aF5iH8JIpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 64.207.220.244) smtp.rcpttodomain=ti.com smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i6DQf3ZI7Ty4jDXX6q/5g1aY0LA81l6Y+x7ZVKV4P68=;
 b=J5e/uT1PD6WCZO4K6mjfcYYM47E+GpVQMjvfMgOVr2abFOXbD9t2eLDos+p3FMp9u7+zSGmDNE5lO9LRLI7A9XHaktsP9XlskZoXOGLp/yFpIBnE2fAK3LdUXPYxN+u6jij1PjmHEOAsM2HQJBP0CJ+QvlG3ml9Dzsy5vZI2C8E=
Received: from MN2PR20CA0060.namprd20.prod.outlook.com (2603:10b6:208:235::29)
 by SA0PR07MB7674.namprd07.prod.outlook.com (2603:10b6:806:b8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.16; Thu, 4 Jan
 2024 13:30:23 +0000
Received: from BL6PEPF0001AB76.namprd02.prod.outlook.com
 (2603:10b6:208:235:cafe::39) by MN2PR20CA0060.outlook.office365.com
 (2603:10b6:208:235::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.16 via Frontend
 Transport; Thu, 4 Jan 2024 13:30:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 64.207.220.244)
 smtp.mailfrom=cadence.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 64.207.220.244 as permitted sender) receiver=protection.outlook.com;
 client-ip=64.207.220.244; helo=wcmailrelayl01.cadence.com; pr=C
Received: from wcmailrelayl01.cadence.com (64.207.220.244) by
 BL6PEPF0001AB76.mail.protection.outlook.com (10.167.242.169) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.9 via Frontend Transport; Thu, 4 Jan 2024 13:30:22 +0000
Received: from maileu4.global.cadence.com (eudvw-maileu4.cadence.com [10.160.110.201])
	by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id 404DUJMh096550
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Thu, 4 Jan 2024 05:30:20 -0800
Received: from maileu5.global.cadence.com (10.160.110.202) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 4 Jan 2024 14:30:18 +0100
Received: from cadence.com (10.160.88.83) by maileu5.global.cadence.com
 (10.160.110.202) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24 via Frontend
 Transport; Thu, 4 Jan 2024 14:30:18 +0100
Received: from vleu-orange.cadence.com (localhost [127.0.0.1])
	by cadence.com (8.15.2/8.15.2) with ESMTP id 404DUG8i2911082;
	Thu, 4 Jan 2024 14:30:16 +0100
Received: (from sjakhade@localhost)
	by vleu-orange.cadence.com (8.15.2/8.15.2/Submit) id 404DUDQF2911077;
	Thu, 4 Jan 2024 14:30:13 +0100
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <s-vadapalli@ti.com>
Subject: [PATCH v4 0/5] PHY: Add support for dual refclk configurations in Cadence Torrent PHY driver
Date: Thu, 4 Jan 2024 14:30:08 +0100
Message-ID: <20240104133013.2911035-1-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-CrossPremisesHeadersFilteredBySendConnector: maileu4.global.cadence.com
X-OrganizationHeadersPreserved: maileu4.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB76:EE_|SA0PR07MB7674:EE_
X-MS-Office365-Filtering-Correlation-Id: 17de738e-16c7-4317-0c1e-08dc0d294d74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ChOBDvODDR8qMOUj0HqRtIE9goQTDbPPydmFEJSVOG2mEjXrcFyKnPHNBW6GOob2RvuPKJZoGMT40krxrRO4P3o5UhFNJiqDbyiXjOQ+WMjZ+echOCWnDaSANNoxRA27y9MAZe542MQ4VW1FBC8y40BMW9fYffdehxh6XYb2l/ZGV1buWUEuHEkmdNyHBXepVF3VQcocFHar0Nc/Y/EWroNEaXtDgAhlPmYU+uUtJizlEv5DEr0LYDyXp+aBJOfsGP5lW/zbdtmFNSa7/+w3TdxEi0AwfVvq2u7W3Xh+PRDpObHyXRe1oGVzrHalK19vhpNGBuVYGV4a/aRAQu+H0sTM1Hj+Fs++lAHqyjIMbyEWA5psuO98dnqyyYDqlIMdiDsoaytFq+AsBpKf3fv7zeDVye11qW9SvVMjB/aARjMYle17hbz2Jp3mrRBb8Ykw5bOFtYDRZDIYTj7TqWNRm+xk92FFP2FkpSrtaIZ07C2VprmYIc3CM7HQHe7AX7gVYpxvZRr7JAo89qgI2GgCMO7SUX69xIjITerd8n/pLfqj7ImA6LYbcpibOUORTJ5HGWcHqo+7sU6gtVVX3UJXZ8FWLyfEIYvN6HuXECVjN4UCZqwSP+LDz66PC1VjLezeBMpzMWycDdd1agT6KaG6np2khIiLy92kZSm8bn83ExaxiIEpUQAJSbHXtns1Jt2XnB5QO9BrVWUzmfFrxEPqiqeEBEjy4Xu+VWk+X59GGVrAIRpbMhmkbbsU4bOJVHOVN893yVr/QZrLcyy+T641mfg+bzyJ7tDx0cruJLvmoLo=
X-Forefront-Antispam-Report: CIP:64.207.220.244;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:wcmailrelayl01.cadence.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230031)(4636009)(136003)(376002)(346002)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(82310400011)(1800799012)(46966006)(36840700001)(40470700004)(47076005)(1076003)(26005)(2616005)(336012)(83380400001)(81166007)(356005)(426003)(2906002)(36860700001)(41300700001)(82740400003)(8936002)(8676002)(54906003)(110136005)(7416002)(316002)(5660300002)(966005)(42186006)(4326008)(6666004)(478600001)(70206006)(70586007)(86362001)(36756003)(40480700001)(40460700003)(36900700001)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 13:30:22.1382
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17de738e-16c7-4317-0c1e-08dc0d294d74
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9;Ip=[64.207.220.244];Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB76.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR07MB7674
X-Proofpoint-GUID: ZkO-7IIy4VE0tfD4rhxL8jCf_5R8plwf
X-Proofpoint-ORIG-GUID: ZkO-7IIy4VE0tfD4rhxL8jCf_5R8plwf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-02_01,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 mlxscore=0
 spamscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2401040105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_053040_941439_7A3E3078 
X-CRM114-Status: GOOD (  12.42  )
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

This patch series extends Torrent PHY driver functionality to support
dual input reference clocks.

It also adds support for following multilink configurations:
- PCIe(100MHz) + USXGMII(156.25MHz)
- USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)

The changes have been validated on TI J721E and J7200 platforms.

v1 of the patch series can be found at [1].

Version History:

v4:
   - Fixed error handling in patch 2/5 as per review comments for v3
   - Added Acked-by and Reviewed-by tags

v3:
   - Updated clock description in DT documentation
   - Added Acked-by from Conor

v2:
   - Rename refclk1 to pll1_refclk in bindings and in driver
   - Simplify clock-names as suggested by Rob

[1] https://lore.kernel.org/linux-phy/20230724150002.5645-1-sjakhade@cadence.com/

Swapnil Jakhade (5):
  dt-bindings: phy: cadence-torrent: Add optional input reference clock
    for PLL1
  phy: cadence-torrent: Add PCIe(100MHz) + USXGMII(156.25MHz) multilink
    configuration
  phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
    multilink configuration
  dt-bindings: phy: cadence-torrent: Add a separate compatible for TI
    J7200
  phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
    multilink config for TI J7200

 .../bindings/phy/phy-cadence-torrent.yaml     |  11 +-
 drivers/phy/cadence/phy-cadence-torrent.c     | 720 +++++++++++++++++-
 2 files changed, 719 insertions(+), 12 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
