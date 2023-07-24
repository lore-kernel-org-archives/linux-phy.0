Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1F5AC00528
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 15:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H6fvSwKYxQDyU3CKE31R3LvyomL3A1qplErmegSiUR4=; b=WMNhkJzII0plQX
	HpPKA9qIFcbgnEevCRlyW4WXyUSJwQw2RXxLOBFscRmmtuWGC/z7lvQWRyg1VUXylKgxGLGi05MNj
	c5LNDV/sNxf/nTNfCbsH+8U6gIN2kl+WHMfM6Fi16Oz3td0Iry0iCG1COzn672AW4M1BiMiSwWA25
	iuFKcmCacz1t8WdoZoESGEcuIovaG/Zj2irKxkCdT9ArL/l+9Cff63IaQDP6RIrwuZrbmD3ujRvMv
	mO7koLoH3dfgeq9rIrSqQhNzE6vhavrKQGl1tNbKL3vFw21CclcMFMc+Y0JdwGZn9FOlT5rVHIxOV
	0LeZqc8OJh9EdLVy3IfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNx3H-004fSS-1d;
	Mon, 24 Jul 2023 15:00:47 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193] helo=mx0a-0014ca01.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNx2u-004fMF-0f
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 15:00:26 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
	by mx0b-0014ca01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36O9N2Z0007203;
	Mon, 24 Jul 2023 08:00:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=nP7XM/hLqp3m23sfIbX93dlJq5KEUvvldRps971LCBo=;
 b=NYk8W+cYyQkdaxH6umcKLuoJIZf+EEASqEkm97GGuMHtaq0KbNvW5nf+mSkKRkYu+U2D
 cskRnGpIigBdnSlbFj1eL3x4X9t/2uHOTzWHoxYyBGJA6M64Jdnt9RPmUU9ME+IJ+FlU
 lc8JCT2zSb3pAWrU7nxp7Uq+S4WAC2G0g9NGvj4GU3qQJgVia0GN78anO5RxDe87bvML
 TwuN4RaEUActR/fuwmoG/G2+lJB5aVJJ2g186uWHs/PoPgK14G7Ugduv3PuS5kW5BoY7
 hCnAeVKY84AvupLxa511NsSZQHQzAQRB8nfRDl4dz7eo1wLdpyqIo01lVc6CfAGXMH07 Ug== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0b-0014ca01.pphosted.com (PPS) with ESMTPS id 3s0apxe0ec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Jul 2023 08:00:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bsoMgHBe+gTT+nAyW9fM9H/99Vhwxi+1Y7z3TY7Px0okR06J3yxWBgqNIkRHIupdH1YAY5eOG4h0YRZq/4zl86P1XBmpnYMWSJZwYmc3q3Krr9zwzEJPPLrzzEqEDQmlb8XHNbTmMKPPpHfGIBf30mJYYOLtpzs4+YdxuEP8ePNBw0DFixhJF3gMND/v9W7sF7vdS4LGvUnbdiYzZeaWQl3TeuDg3nP51TY/jO5GRJgBj4I+6v2zWF0TNsjkGkfb9i/0rDtkBHLTJhZzthWkq0yMfvoBmnxAG/aWK9HeHuwYFz8p4RUp+aqqvXCEgcqxtlwUyNnYlDGkbY/QiZTkog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nP7XM/hLqp3m23sfIbX93dlJq5KEUvvldRps971LCBo=;
 b=akBb76LmVVJSTWssx0mU2YCd4l8SHY+JXUxCx2XDwumvW3A1e+QWZnUGaZpkwpdCr57DkDK/erTX/RJQq0dDgZZh5LXk2UCHaZ/DidbSKaDpnNfsNHEvm8WNL5ZLnXbvrGhmgKmGJpeC7RrrfpJCf9QTxrFDb/3rTwsxZXeA868nqGULpQUA3OYgwAFVe61sqgj86CmhnR/q6nsh2hGbEHq7yX02zgyzunDZhoge8RQRh/d7163bmCLXwpZ9DkrXLWtleLh4w7ZplXKztWHi0yoRs4CnCwdx8jH3VZolHt/I9i40cCD2is5XPS11hwJ9q5bzgH5vs7mQeg4COLehmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 64.207.220.244) smtp.rcpttodomain=ti.com smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nP7XM/hLqp3m23sfIbX93dlJq5KEUvvldRps971LCBo=;
 b=v2J0vwu44VM7IBh+ktoePa+AeQq8E1eW+FfobUFUZiNfLMHlf4NL28VFJTtkKIrXab3IXl16HcL/Kp9UTbKz2mj+RyFHAGlt/rVKTnQw5N0WTnwJNIuYcLqQ2wSIJN0CuR3QEGoHVbX7TdNadqrJATSa1sKpw6Wi7txE8USTFg4=
Received: from MW4PR02CA0028.namprd02.prod.outlook.com (2603:10b6:303:16d::7)
 by SJ0PR07MB8518.namprd07.prod.outlook.com (2603:10b6:a03:35b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Mon, 24 Jul
 2023 15:00:11 +0000
Received: from MW2NAM12FT103.eop-nam12.prod.protection.outlook.com
 (2603:10b6:303:16d:cafe::52) by MW4PR02CA0028.outlook.office365.com
 (2603:10b6:303:16d::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28 via Frontend
 Transport; Mon, 24 Jul 2023 15:00:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 64.207.220.244)
 smtp.mailfrom=cadence.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 64.207.220.244 as permitted sender) receiver=protection.outlook.com;
 client-ip=64.207.220.244; helo=wcmailrelayl01.cadence.com; pr=C
Received: from wcmailrelayl01.cadence.com (64.207.220.244) by
 MW2NAM12FT103.mail.protection.outlook.com (10.13.181.254) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.25 via Frontend Transport; Mon, 24 Jul 2023 15:00:09 +0000
Received: from maileu5.global.cadence.com (eudvw-maileu5.cadence.com [10.160.110.202])
	by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id 36OF06KN167842
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL);
	Mon, 24 Jul 2023 08:00:08 -0700
Received: from maileu5.global.cadence.com (10.160.110.202) by
 maileu5.global.cadence.com (10.160.110.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Mon, 24 Jul 2023 17:00:05 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu5.global.cadence.com (10.160.110.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24 via Frontend Transport; Mon, 24 Jul 2023 17:00:05 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
	by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 36OF05O9005718;
	Mon, 24 Jul 2023 17:00:05 +0200
Received: (from sjakhade@localhost)
	by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 36OF02mt005685;
	Mon, 24 Jul 2023 17:00:02 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <s-vadapalli@ti.com>
Subject: [PATCH 0/5] PHY: Add support for dual refclk configurations in Cadence Torrent PHY driver
Date: Mon, 24 Jul 2023 16:59:57 +0200
Message-ID: <20230724150002.5645-1-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-CrossPremisesHeadersFilteredBySendConnector: maileu5.global.cadence.com
X-OrganizationHeadersPreserved: maileu5.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW2NAM12FT103:EE_|SJ0PR07MB8518:EE_
X-MS-Office365-Filtering-Correlation-Id: 58e3b44e-7ed2-425d-d3e9-08db8c56acd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /+AvEuRj96iwsDT97t369ay/f+DxMgxULSi8Bfsy1wGfzD8h5Gvd8YC7BcRwRAK/RoRcvl2UVl7bSjsRU4ogK7as07vcXS1hFasMRL2r3uvDgm1KO+CjE7cnFJmvyez2FpVDWImPyKqXTAS30Vi0mf3U22e+EOxt1RX5+LBtJdBGInnYvZ9pxLwNv8X6EJV/IfhIdB2Ro2R5lvgeZo8GzZ2/CuuTALjqUAeTQhJ1gzRM3XzaAb2UemHhSmEeNWVVT2bxb1XZSTD3hrUsxHJbfV2NkWW/vjFIbyg8yK7xy1gOEpMVDSlWgt6b0Ur0ipV0nRs3VtH7X2b5/zqS/sBrlS8n4L9IJKnn8c9iriP7lUWIWdM81UALhUPFKETP2/j7gF+7Tba9tQXsjy1Zf4L/p84u5OifL84IqKnAt6oeDhiNYdpZoFF6GLxdmlh+MSFGz/1gDNYq3X5oWhTYs/+yPq65ObsuEoAo54NqoHejncl+hAv24RUS8DqYXltH6Cx7AaE97jPqzuw+60ZRLleCEn4q37yLT31BltcNVGuVcue7i/UP/JBZBY+6aT1HdsuYeh5i69H+T+pELFMksnGHkcs8/clDgvsU13qBKRA7W/X8nkFofwTT6Gi3fwZ7a9vrVTI88KD4GKQL9XZAhClH9nPdkoRePqFzpNogCOFOKRaKcOECz1vN9k3yJFf98DJkSa/Hf4pJcYL7JnLbVaRYS1sGUED0u+O/Enkxz+mFVSUF75R8qRnYeQhrIg2qLh6F6Qi2EQyQkK3A0jVBT/XiJNavUuxMiJfUQGTd6OwYguI=
X-Forefront-Antispam-Report: CIP:64.207.220.244;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:wcmailrelayl01.cadence.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230028)(4636009)(346002)(39860400002)(376002)(136003)(396003)(36092001)(451199021)(82310400008)(40470700004)(36840700001)(46966006)(4744005)(2906002)(41300700001)(316002)(42186006)(7416002)(5660300002)(40460700003)(8676002)(8936002)(36756003)(40480700001)(86362001)(26005)(1076003)(478600001)(82740400003)(6666004)(47076005)(83380400001)(36860700001)(186003)(336012)(426003)(2616005)(70206006)(70586007)(81166007)(356005)(110136005)(4326008)(54906003)(2101003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2023 15:00:09.5847
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 58e3b44e-7ed2-425d-d3e9-08db8c56acd1
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9;Ip=[64.207.220.244];Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT103.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB8518
X-Proofpoint-GUID: QgKEYvgfZzyZt4go2VSvz_2Bn-5bUqlr
X-Proofpoint-ORIG-GUID: QgKEYvgfZzyZt4go2VSvz_2Bn-5bUqlr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-24_11,2023-07-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 spamscore=0
 mlxscore=0 adultscore=0 malwarescore=0 bulkscore=0 mlxlogscore=895
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2306200000 definitions=main-2307240133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_080024_739866_C44434B0 
X-CRM114-Status: GOOD (  12.94  )
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

Swapnil Jakhade (5):
  dt-bindings: phy: cadence-torrent: Add second optional input reference
    clock
  phy: cadence-torrent: Add PCIe(100MHz) + USXGMII(156.25MHz) multilink
    configuration
  phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
    multilink configuration
  dt-bindings: phy: cadence-torrent: Add a separate compatible for TI
    J7200
  phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
    multilink config for TI J7200

 .../bindings/phy/phy-cadence-torrent.yaml     |  24 +-
 drivers/phy/cadence/phy-cadence-torrent.c     | 705 +++++++++++++++++-
 2 files changed, 719 insertions(+), 10 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
