Return-Path: <SRS0=U4XZ=N6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF0E5C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Sep 2021 12:29:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF20461157
	for <linux-phy@archiver.kernel.org>; Wed,  8 Sep 2021 12:29:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF20461157
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l9yfugYlKyW51Niy17aeap6aM1xDcP6GrUKsQb3sCkE=; b=HRv1j4ppxYJeBW
	XNJCfnS0KPK2YXMGEqpo4cYafvYdY8dWS5uPmnKWADNYqrnl2vlARAH6zL8fmIDBC3ALfY8K/6muy
	+4kw9QEhIuXtcz/1rC0MUn/FpCOAs+Lz5u9WdgcRcxO3FLy/DeuzBn+b1GSkO/eSfqAuVo4hWXx00
	D/JJsOPgZryxLrs7GW4/9GNbFiq3iOL/21TpzHveDSZKsHASka5IvH4J6QHSCmyMnNgYcOAOL11SR
	2CWjkA4uzmZQXFJEycGwrxeYWvmvUq9oS9H9tp9ov7nTJZ+ocLcq8Jn+EQ9TLOasbwISkARo64/oR
	zRjugJDrz7QX3px9LcdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNwi6-006hjU-44; Wed, 08 Sep 2021 12:29:50 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNwhz-006heZ-1B
 for linux-phy@lists.infradead.org; Wed, 08 Sep 2021 12:29:48 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 1886dluD030522;
 Wed, 8 Sep 2021 05:29:39 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=Kk9fFcURPU7ndgdGFVA1K82ZX9MGrlztEIYqO6Ipsmg=;
 b=Y8E7fK9nPvtFCIbO9/2+qwW4tIyihVHMcMVxlFeSbYe3KwfG3WId6UmSv/T/07MvLzCn
 Jd3zbkFnkUucJKLu0bI+myw2KURuI1mc79jrL4U66rgqLwUscfJy8O+ASXFLnmlqWRj3
 Fx/c65KCOVfol7FKGSGjHKJH5GwVtRkWb1DX1uc5WDzlaBLoUv0T2HJx97CYA9xzrxgA
 ARMNg8S/Ucttygg4TjnqTSbPWc8GcLJImQ34+1GfrY3q5DTM97AdLMdktA9o4vjcZoDB
 wzZzd+AXHNda/KuHTvZaKM8udxQDpJhBzlm7oRP6s7MfzsFZVlBfO91d62uKll54a1in 3A== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
 by mx0a-0014ca01.pphosted.com with ESMTP id 3axcn5b0x2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Sep 2021 05:29:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bKjuG9MvLFS7wSfHtks6Y9CieoYBoiLNOPZydv20m78Wp3gpaXL0li945Pad8Rdt69VPc1YmuTBUxmqUWOhh0LrpBOIfcCFhYaFKOVUSMwNBsqD9tD59H6BccPXbfC160QvmuYW/PpHUcXpVAezgiQdHFYKCv/XxuTm+PDSZK6CWmrkg29DeAIQMf5RiH16Hb18VQiUOdS5EOgd+O4OT5B30NG/fwW9ByfFH6eqC3cTpx40hUu2PP9lysLzz1P8nzAeZHFvq68awDs9ie/IDs++5J2TrxIFGdVQ2R/xX7OPDZmv7TkQs6yHcxDvNECWwksgvMkob/oc7gGZmh9l8sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Kk9fFcURPU7ndgdGFVA1K82ZX9MGrlztEIYqO6Ipsmg=;
 b=eR2nvKEFu7qyETEVzUBidxVEHSjvX0gbFZpBFTn1sOWCjXiijA1O2/oR6oYIVfAOUQrm9lYVPisLkY5vVoi2HZgwJj1FyfB+L5qymG1n+gNqhJNI7kc5B/s5DhXhbTwa5K4uXHeCGa8HKyMDnRb0XYILhAyJtoDU4Vlaz0SnIaxCm8p0y3xhQdoa85AhWThq49Vt5yXxbzpf2aw0A48U1GBrtNenhQV4wi8g6DzwpJIkK0pUXO8MvAsYZZSyCfOVIWWW9NUI6W7jP/RayqKt0okTQ2pmXxzb1BnXLNvUT9JV2a5Uak+ADHQmj5XKE5+jiSFRTNDOzE+ON5KrBBFhvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.148) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kk9fFcURPU7ndgdGFVA1K82ZX9MGrlztEIYqO6Ipsmg=;
 b=YVqNn32EQU3G1lzF1ClIE6qOcjZ4HFupLp0e9F6BE5J9rH/6oSidJLlSNePD2ed6xxgRiP99Ro6gvkoaPrxh5ojYVADrOQ5u3H6Fbm0ocMhturlwjOdzSV2Tt/2kgKTirbxRteChINvhA8Uzzg0/XhqMAeGf/vM6SnaDUr1aRIg=
Received: from MWHPR20CA0045.namprd20.prod.outlook.com (2603:10b6:300:ed::31)
 by BN8PR07MB7025.namprd07.prod.outlook.com (2603:10b6:408:d8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Wed, 8 Sep
 2021 12:29:36 +0000
Received: from MW2NAM12FT030.eop-nam12.prod.protection.outlook.com
 (2603:10b6:300:ed:cafe::41) by MWHPR20CA0045.outlook.office365.com
 (2603:10b6:300:ed::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Wed, 8 Sep 2021 12:29:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.148)
 smtp.mailfrom=cadence.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.148 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.148; helo=sjmaillnx2.cadence.com;
Received: from sjmaillnx2.cadence.com (158.140.1.148) by
 MW2NAM12FT030.mail.protection.outlook.com (10.13.181.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.6 via Frontend Transport; Wed, 8 Sep 2021 12:29:35 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx2.cadence.com (8.14.4/8.14.4) with ESMTP id
 188CTX9K026939
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 Sep 2021 05:29:34 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu4.global.cadence.com (10.160.110.201) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Sep 2021 14:29:32 +0200
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 8 Sep 2021 14:29:32 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 8 Sep 2021 14:29:32 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 188CTWEQ010267;
 Wed, 8 Sep 2021 14:29:32 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 188CTU66010266;
 Wed, 8 Sep 2021 14:29:30 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <lokeshvutla@ti.com>,
 <a-govindraju@ti.com>
Subject: [PATCH v2 00/15] PHY: Add support for multilink configurations in
 Cadence Sierra PHY driver
Date: Wed, 8 Sep 2021 14:29:15 +0200
Message-ID: <20210908122930.10224-1-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 307e26fa-1748-43bc-95bc-08d972c45189
X-MS-TrafficTypeDiagnostic: BN8PR07MB7025:
X-Microsoft-Antispam-PRVS: <BN8PR07MB7025DFAE43826E63516AF4D7C5D49@BN8PR07MB7025.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G0czS/U9eNMVGuZ+/lBe5gNuQWzGGI9qCOjZ73/rvFucBFGnZLI/qzzgGpIgwwCOcTCRVEO74DfYZBRsijoxbpY7oA921UE7/5nM6ChIeCo6RRstd6uq6BAFXaGWk1yJFvsajjMhpyChPU6keGbA/wDXeMp4oERFIGLBrvIwATyHo2QYEfl40VGN4pHd93o2RxiUtRDbjtcWkjHHbysRXQJC0AxzqQ41DRrqVEs2NArZYupQfWP5uGEvP9ssWLsKa2Q1Ea6iUGypEDh10kMfSj/5jhNtPT0JBW9u8jXQQi2TUJLxqvZGwVXKQdPM+VHt6RcMGDFcpKqGVvTJT35tNo7r5jXm85ztFh7ICHdZ5vKXBc9m94/Lpkr8Ux2YOIfFsYboVHsk3XYppA4c2J2Nihzl+1h+JgLXEh3ERNcm3UuU32MaMTtHyaGNz+OKUEEnUXkbFtrjYIXgTSweelBRU4b2Jhncb3Ohw2qRjkVlMsccNh1uEeG1kgXJv5ASlM42DNza/BXn5QLmugXTcc9x6h1z+RyGrBFxc5Lpq2b7CbwJCOO4ZHV4052Kk1PYA946/2CPJZ4h8UGMTIru9a10QtqnwwzyXGqFvJb0dXqr9yh0/3DS3bnbg715ojUwhIv0VMKbiTXBWhF9wy5G4p+ezYgmG/OxJnylDqrMB6515l9L8CTz29PxUnuFkx8MpMRRQO0SdLx5uMu1BtCTp2DOLO1EXL0x2kchGTlwwiEzJQg=
X-Forefront-Antispam-Report: CIP:158.140.1.148; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:sjmaillnx2.cadence.com; PTR:unknown.Cadence.COM; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(396003)(376002)(36092001)(46966006)(36840700001)(6666004)(47076005)(336012)(1076003)(5660300002)(54906003)(2906002)(36860700001)(36756003)(426003)(70586007)(70206006)(2616005)(86362001)(8676002)(83380400001)(8936002)(82310400003)(4326008)(186003)(82740400003)(110136005)(316002)(36906005)(42186006)(478600001)(7636003)(356005)(26005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2021 12:29:35.6203 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 307e26fa-1748-43bc-95bc-08d972c45189
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.148];
 Helo=[sjmaillnx2.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT030.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR07MB7025
X-Proofpoint-ORIG-GUID: NZTHpm_6MS2UNppZ4J_r4clp9lsjIyI0
X-Proofpoint-GUID: NZTHpm_6MS2UNppZ4J_r4clp9lsjIyI0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-08_06,2021-09-07_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 suspectscore=0
 malwarescore=0 phishscore=0 mlxlogscore=999 spamscore=0 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 mlxscore=0 clxscore=1015
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109080079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_052944_035165_178B7319 
X-CRM114-Status: GOOD (  16.74  )
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

Cadence Sierra PHY is a multiprotocol PHY supporting different multilink
PHY configurations. This patch series extends functionality of Sierra PHY
driver by adding features like support for multilink multiprotocol
configurations, derived reference clock etc.

The changes have been validated on TI J721E platform.

Version History:

v2:
   - Added a new patch 3/15 to rename the SSC macros for dt-bindings
     to use generic names. These macros are not yet used in any DTS file.

Swapnil Jakhade (15):
  phy: cadence: Sierra: Use of_device_get_match_data() to get driver
    data
  phy: cadence: Sierra: Prepare driver to add support for multilink
    configurations
  dt-bindings: phy: cadence-torrent: Rename SSC macros to use generic
    names
  dt-bindings: phy: cadence-sierra: Add binding to specify SSC mode
  phy: cadence: Sierra: Add support to get SSC type from device tree
  phy: cadence: Sierra: Rename some regmap variables to be in sync with
    Sierra documentation
  phy: cadence: Sierra: Add PHY PCS common register configurations
  phy: cadence: Sierra: Check cmn_ready assertion during PHY power on
  phy: cadence: Sierra: Check PIPE mode PHY status to be ready for
    operation
  phy: cadence: Sierra: Update single link PCIe register configuration
  phy: cadence: Sierra: Fix to get correct parent for mux clocks
  phy: cadence: Sierra: Add support for PHY multilink configurations
  phy: cadence: Sierra: Add PCIe + QSGMII PHY multilink configuration
  dt-bindings: phy: cadence-sierra: Add clock ID for derived reference
    clock
  phy: cadence: Sierra: Add support for derived reference clock output

 .../bindings/phy/phy-cadence-sierra.yaml      |    9 +
 .../bindings/phy/phy-cadence-torrent.yaml     |    4 +-
 drivers/phy/cadence/phy-cadence-sierra.c      | 1299 +++++++++++++++--
 include/dt-bindings/phy/phy-cadence.h         |    9 +-
 4 files changed, 1226 insertions(+), 95 deletions(-)

-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
