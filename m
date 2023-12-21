Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 833E9C35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 16:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oB+yK8LmBkzO5dniYdHTBIDETSMmrOSkVqFZlzG8Sv4=; b=hKVtWbIrTTamrU
	GGft9IDIaMyDqXJw8g5/O177yvLIIjWzz9RvFXO0b5/p2VMtFhvPbLyMetmVheGAJK6xO6Kunct+r
	RE8KyA+MGdKdrlCUQfTkW6hu+XQR3RIQrweLwqXxLnd6nrhx7pkjBRMEMbEf9aZyHn/W/OXU2394l
	A99WHBowKYDw9ivA43uoZ2/pJeIiGL1Iq5Aal4IWfplwujMangUSoaN/GhXwGTxBJ33zhSFzeHziR
	Mt1aqzrD1xBrHo+B/0XJGloXT3Nmh15+m6fBNh1chayw2jZlU4UlugW64PEnrxnv0gYWs0b6gdoLW
	WjwqyWVQNWU54hWnkJoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLnU-003UAx-0R;
	Thu, 21 Dec 2023 16:21:20 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLnP-003U8U-1o
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 16:21:18 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
	by mx0a-0014ca01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BLAhknu016189;
	Thu, 21 Dec 2023 08:21:03 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-type; s=proofpoint; bh=kFdFSjjn37eQIVg4K3B
	U93zpO4Or6wAtE+9iWXsd79k=; b=sAjkZsEwBwRZ1ZjnEuXGdvgjSstZ3+JuQbZ
	sCbnirGevr92a4DpfKUHwIDEm4p0WDspM3McYyHdnNL2vLkNavzEBC2ofU5qyJNt
	mRRBk5MPMyj2umZAt8qSsFgD2Z6mjLZhVYm2O0Ouo9giBHVcgdwzh3Dwx7FRpcUa
	nj/AIe9Wee19fKOb61gd4mhbQPPWNfOUAGjYseTacsCMJEGBXWcLoQxE4UdWNI8Y
	Afsn2iO5ZFlH2tdZo56vB7pDU35iuRpXxRtVcvIl2iRXGQ9lhzXt6QO6pvlv8Fh9
	k6rLFqklQ7syqjzNXwg21rECd5qnkAO3JmRH76lHyM5XciWma2w==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
	by mx0a-0014ca01.pphosted.com (PPS) with ESMTPS id 3v3rj5gsvb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Dec 2023 08:21:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ej3Sw0K43IFDdSwNdLxLZHilrDqSi67LPJfbzxCb3mw3Uomo4TkjjBSRCNiRYZtsjaHepCTaJEUAZXO++jmjlLdguDqX4WsnO0bg2IeFEe1/D86gUG26FB6hiw7HYvfqRbXbzLpwJLGM4Kyc0r8aB2OHklQKEkQoUykt++Pk6lQODOikuYeqEkz94oraPMFhkkI2h6rlmKFxT3sky5hgIFGGfakAJzmLp0c1GPuNQC4WuTvr90r3OPqpBaZKZozlOJZk8wpZ6kcDMhy1GyGyqH9nQAls3pwpSzQTgtfvfhsrl0a8JXnadcxLIFgyHs7bugHYo0GuIl81mDz9pMoaHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kFdFSjjn37eQIVg4K3BU93zpO4Or6wAtE+9iWXsd79k=;
 b=c3Vim9srkZGXILF4DLCc7FKA8oRUU++0Azl6pzPZJyEO4DqOkSzOGNlnCNThEL9R5mJJE5NAOEx3yv17bY/eUZ9/7CSJ/8z4cneMHCzbal8ePCihWHXHP5ndn8GfMV/II8+heWgtavPe5MYPdRV0/ZtgV+Jdiaai2dhRKjUpg2Pfu7j1VLiEtQpvId/GgAovZ63phV751hxhaGgSikkhTZe/Pg41YWM0eEHUqv3SdqLbgHhsZepUJBabKPNsdNYFJLNB5oFATNG13IMIjtlqKxn/9i6uthGn46ginTo7DuzDkcgaq8EmP+qGZ3Pbflm8JJGcV8jtaZY1LtQVuQFXLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.147) smtp.rcpttodomain=ti.com smtp.mailfrom=cadence.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=cadence.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kFdFSjjn37eQIVg4K3BU93zpO4Or6wAtE+9iWXsd79k=;
 b=MxJvl0rbcPUQlJlBKRyjccxULlpubC1ZPbkG+VnnPIRANvk9B/HQ5CXv+xYlSfb7KOFHsUnm0vsE2dPNCv5pNe+Dq5XUBrVPIccMsMKRDpiCEI6k4bC9EioNo4MHWc46GXCUR20hX9auj0IB5E1lVQPmp6oxJtcEDZHUayHqAgA=
Received: from SJ0PR03CA0139.namprd03.prod.outlook.com (2603:10b6:a03:33c::24)
 by SA0PR07MB7753.namprd07.prod.outlook.com (2603:10b6:806:b0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Thu, 21 Dec
 2023 16:20:59 +0000
Received: from DM6NAM12FT103.eop-nam12.prod.protection.outlook.com
 (2603:10b6:a03:33c:cafe::98) by SJ0PR03CA0139.outlook.office365.com
 (2603:10b6:a03:33c::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.20 via Frontend
 Transport; Thu, 21 Dec 2023 16:20:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.147)
 smtp.mailfrom=cadence.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.147 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.147; helo=sjmaillnx1.cadence.com; pr=C
Received: from sjmaillnx1.cadence.com (158.140.1.147) by
 DM6NAM12FT103.mail.protection.outlook.com (10.13.178.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7135.10 via Frontend Transport; Thu, 21 Dec 2023 16:20:59 +0000
Received: from maileu4.global.cadence.com (eudvw-maileu4.cadence.com [10.160.110.201])
	by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id 3BLGKv1H005150
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 21 Dec 2023 08:20:58 -0800
Received: from maileu4.global.cadence.com (10.160.110.201) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 21 Dec 2023 17:20:54 +0100
Received: from cadence.com (10.160.88.83) by maileu4.global.cadence.com
 (10.160.110.201) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7 via Frontend
 Transport; Thu, 21 Dec 2023 17:20:54 +0100
Received: from vleu-orange.cadence.com (localhost [127.0.0.1])
	by cadence.com (8.15.2/8.15.2) with ESMTP id 3BLGKtMS2131251;
	Thu, 21 Dec 2023 17:20:55 +0100
Received: (from sjakhade@localhost)
	by vleu-orange.cadence.com (8.15.2/8.15.2/Submit) id 3BLGKsIt2131250;
	Thu, 21 Dec 2023 17:20:54 +0100
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <s-vadapalli@ti.com>
Subject: [PATCH v3 1/5] dt-bindings: phy: cadence-torrent: Add optional input reference clock for PLL1
Date: Thu, 21 Dec 2023 17:20:47 +0100
Message-ID: <20231221162051.2131202-2-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20231221162051.2131202-1-sjakhade@cadence.com>
References: <20231221162051.2131202-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-CrossPremisesHeadersFilteredBySendConnector: maileu4.global.cadence.com
X-OrganizationHeadersPreserved: maileu4.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM12FT103:EE_|SA0PR07MB7753:EE_
X-MS-Office365-Filtering-Correlation-Id: 83183971-3903-4311-2fc9-08dc0240d162
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hPllUDHfZju4/DiVRglXSzqoqTZc1tvUjmibumPJS/3jTJkvsonP9UF+VNCprpCfGcYdXnXOCMrKZT3imgoD8lzNUeAwnLY1o1SM2q3m/diFfQ5jYil3qMwkVykkMIZYNRvuNptdoCXKxKeK37/dzZDZ5c4J8cwO2/+XqiYW6YGQdiisBh7ja/LwXwoSRNf4cL/H64QblKex2F1d97tSGK0rFMi0GEhLKjmKHbahomsuZOyXyrQIXqs7m12wqN61V9jmfb4n0dJCNTps+XF0eSporDAIQN7q3ghMbDAIEccZwcwHpMiEHjR24SzlCZELpPSZS+Pqa/RPudYs8wFTEvRmzx9nPiqPQb76aE2YMF2VYx5Vux0c+3Pt3/1DAQXri0x6oSkuDynZZt9x1XK6u5yYNI9WJnj9UnvK1CPagDjWhAYYTzhoOV8J6l/zGBeaDZlQLjl47El9iqi9d2BrvGXHSUf7IU5Ht9uV5gA02CYXaSpPbD/txxdqgOXPHy5V13Oc+xq5VqpLoDOSsBN/u2niNMOEAoU93YenGtVu0DqFMWeiHQFNxhtOa2ImfBq66qtOjaK1dRW/J2fKE+kY00sE62uPBVmyQwA2QHfAe9IBFPiSynb2TkCeekEbtuyBrxK9k2mZs7KUAd8kwU+mPfxKeJQOh3DaB32Hb0dD8SxbUCoCl+wsdW4ti5AgtFZDbIRGma799kJqdETcIua1BAvoSP4t9ELI52QdDhlu7VqX2hAfpOtDzQMPrGmGQUDE/fzYga7Yz3ObVEDO20FlHQ==
X-Forefront-Antispam-Report: CIP:158.140.1.147;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:sjmaillnx1.cadence.com;PTR:unknown.Cadence.COM;CAT:NONE;SFS:(13230031)(4636009)(136003)(396003)(376002)(39860400002)(346002)(230922051799003)(1800799012)(186009)(82310400011)(64100799003)(451199024)(36840700001)(46966006)(40470700004)(478600001)(1076003)(26005)(6666004)(36756003)(70206006)(70586007)(83380400001)(8936002)(8676002)(4326008)(2906002)(110136005)(47076005)(5660300002)(426003)(54906003)(42186006)(336012)(40480700001)(316002)(7416002)(36860700001)(40460700003)(2616005)(41300700001)(82740400003)(7636003)(356005)(86362001)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2023 16:20:59.2865
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 83183971-3903-4311-2fc9-08dc0240d162
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9;Ip=[158.140.1.147];Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT103.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR07MB7753
X-Proofpoint-ORIG-GUID: q17PSQZYSl-EMupspM9aQ8qFPuMcKBuU
X-Proofpoint-GUID: q17PSQZYSl-EMupspM9aQ8qFPuMcKBuU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-02_01,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 phishscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 impostorscore=0 spamscore=0 mlxlogscore=898
 suspectscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312210124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_082116_715568_1A609766 
X-CRM114-Status: GOOD (  11.17  )
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

Add a new optional input reference clock (pll1_refclk) for PLL1.
Update bindings to support dual reference clock multilink configurations.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 .../devicetree/bindings/phy/phy-cadence-torrent.yaml   | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index dfb31314face..3893800f81b4 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -35,14 +35,18 @@ properties:
     minItems: 1
     maxItems: 2
     description:
-      PHY reference clock for 1 item. Must contain an entry in clock-names.
-      Optional Parent to enable output reference clock.
+      PHY input reference clocks - refclk (for PLL0) & pll1_refclk (for PLL1).
+      pll1_refclk is optional and used for multi-protocol configurations requiring
+      separate reference clock for each protocol.
+      Same refclk is used for both PLL0 and PLL1 if no separate pll1_refclk is used.
+      Optional parent clock (phy_en_refclk) to enable a reference clock output feature
+      on some platforms to output either derived or received reference clock.
 
   clock-names:
     minItems: 1
     items:
       - const: refclk
-      - const: phy_en_refclk
+      - enum: [ pll1_refclk, phy_en_refclk ]
 
   reg:
     minItems: 1
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
