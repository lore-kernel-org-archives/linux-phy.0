Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE48C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 12:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mYC2p8+K4kLgi7FZM7EBB6qe6Poe9XJTfWmVRIPNuO4=; b=NTTvDL4zeelZJa
	W9gSIUk6egY3xU04h35/uYkVZjMXES8NXJics3A+IVXEd8CXzn0UnOGaRADoOoyzO+fPMAVAwsl2b
	lN05aHXm9D0rsUvJOTbhQ7AbFbiBs/eutOdojMHSnoLJ3jwAp7vLb7KrzoswTia5yS7t8MhqgC38O
	e2mCGUXg3eUy8g+bBuUznvsqoPDVbhGLhxDXjJrj6xXnDGm2G+VsPrTwO/MxkIoa/xaC3vab/QXUt
	oPKDj1F1YYf96nvRyiY2gMGV1R/ZZ5lsOtZfrAkLh7jGTfOEBqhBLSItjtc98ovcHCVr5m9ygO4oD
	jCLQOHbWaPHCTeGMMqlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Geo-000The-MF; Mon, 20 Jun 2022 12:37:30 +0000
Received: from mail-am6eur05on2061a.outbound.protection.outlook.com ([2a01:111:f400:7e1b::61a] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Gel-000TgY-GU; Mon, 20 Jun 2022 12:37:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/gdmcRJz4G0YX3Z+vt3cM70FXLbqpD7UwDKq/stc59A11qBr4xnr2Xx++qoKYCoqwTYedAaJQk8BciuNmV5FGkkA685nnE3Mmr4UIqBlagnuWfVgW91A90IF1fk8GF1WGhRQMGqTnoaNdFBgp0w7TmS9eGwuu99pqWsHNnpR6RcTJKj3STkzSdK9VKnmgURBkGmER3mwnWiOJu+lIT5SRzFHx3uBMYZc6KiyGDbyc9OCNfE4+cWumL1QdjtBv0Z3Z4Tcnif7ALEUGk3RewvMfsqR0YpRG0t2/CTXZW2hRPnea0EQq+UDPO1qYunhSARTl2ZYC5p7Sig7OVSKvsuAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sgl9RWdY5LtKlMnFWjuiAyHcdPQjqJGiWztZ70QOmOc=;
 b=Im57NWxwN6md8qW7O8k4ZFsrrpZj1i9gn1XdKW5bT1Ne4hcYRc4SzGzoJMZq3nIFdPY2Mwt/H8DLBMuLf2wLDnkwCho0QtXqtupYh8alzm+l1TWXDNPPNKIQOMEBQS9VdcJKNV8J6bEEEnz7mQtYk1/1xTNH48Ia0/YAV+fcdJ39z6GcmNrQ37WDKr9xECGxvgrCaKLY88zTEMiL52eaiQITI0hG8twzZPtkYbLwYoUAOPZyhdWaEerzoCdLKzSID/uycx6qdX5ZVu59Soi1Jf4Idh05mdzosNV1YUteFQQHU8rYfeKagmyHXLVENrJIF/wjHqagt4aKGr2g9x6igw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sgl9RWdY5LtKlMnFWjuiAyHcdPQjqJGiWztZ70QOmOc=;
 b=SlUPn1lox8yhOK9nYVc8SHppnrFyNcQCFN0MRva9meKx3RD4uIPg2CEkAlRUh9EpzTsxYGC2I3b4fITNhhNtRwayh0xjjT+vCklDbULZhe2rZMNOD1x+Hirvh2E0fBWKPMdELwYohrRbtOxtBs+kW5Mk0cFmONSQ6OPJKTuTqgQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM8PR04MB7873.eurprd04.prod.outlook.com (2603:10a6:20b:247::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.22; Mon, 20 Jun
 2022 12:37:24 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::3c82:f63b:711a:502]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::3c82:f63b:711a:502%6]) with mapi id 15.20.5353.021; Mon, 20 Jun 2022
 12:37:24 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	krzysztof.kozlowski@linaro.org
Subject: [PATCH v3 0/3] phy: freescale: Add i.MX8qm Mixel LVDS PHY support
Date: Mon, 20 Jun 2022 20:38:51 +0800
Message-Id: <20220620123854.1138028-1-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR06CA0219.apcprd06.prod.outlook.com
 (2603:1096:4:68::27) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6448ec73-2f0e-4cd4-5c2a-08da52b9a06e
X-MS-TrafficTypeDiagnostic: AM8PR04MB7873:EE_
X-Microsoft-Antispam-PRVS: 	<AM8PR04MB7873FBF212B0EEC019F4789D98B09@AM8PR04MB7873.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	zRTQvvbLU86czsP2MMQ0fNBVR2haMvwjhowiwIVuW2HHfexZZx9RKOioWq4TPwIu+moROwn2mCxbPD0jhcaoyYo2c8V1AECnkXD9cxq/JELDhWwYSzc9G7RA9t7Ks2pDFgKVabD+orfyanrjAtRZT4e8AD54VCSt5WLfr66/3uIRvs6T8/tWBU9FAIE9JIURJ/zvRu3IRaeN6iSsbup/pBN/r3YLPF/MJ0RI5Hg2X8ICL3X2H3+//w7vB6HVM8oMIYfShaTOHsPKgKRd8jKyX9CpXl21OhQGXYa+98haEkjPVA0ICDHg5Shr7zBxCb9VumKDevGJYx1AJ7ivr6/WrFANueO8YCdRQLeGunY7VGKCRyt+e3iG/2MoSqzwWlJxPVJi5kMC50wkC5o+vJH5qSHBHimszLMPMXaptRS74eGHkXKEYKmw70eKsbpxlCsAYMsFVBFcykQIuAvJBWnmCcoVN2a7q/wr1gCb8zduVPOW1lMUWUYl8XpyVGcMIqhwLIQp0ok0VS6xyJXSaDmJ9Z4IFJdd1pp7EyazVle0DzJOXfmdOgGVQmYVnlm5c9Oa0jyzxTZumGhcabvX3wbXdgsw7MY6AlRKdJVD1TA5cqVNgyvifO2iYx+NyAeSgTd8nz3qhH73CJCXBckSGdo2vc/CVFva7pING//FlXiSwbJHMDlKhMfljMCsiCMy+ZUcNBeFP0yDZYjj9ya62d0SUQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(376002)(136003)(366004)(346002)(66556008)(66946007)(36756003)(8676002)(4326008)(66476007)(6486002)(83380400001)(316002)(186003)(1076003)(478600001)(8936002)(2616005)(5660300002)(41300700001)(38100700002)(7416002)(6512007)(26005)(38350700002)(52116002)(6666004)(6506007)(86362001)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?zPYl1Hfijd5BHIYfBD28Qrd3ZCUSW60S1gHxWIVkJMu8/QlRdePfrhe4ioG/?=
 =?us-ascii?Q?ITPJfLsgc4//5FCcIpyhcll9Ayu3zAqKtnVvb6ObF17RdnUb690jQkEvHxcY?=
 =?us-ascii?Q?iZXVjsCeDIZrITCQwpExpztXGjbstZlBTiRqD1cVcWDMVBjg7iUO1Whf9RAA?=
 =?us-ascii?Q?tcOg9pGsiQahbQUI8VHySQe2sYCP5E3+pAYEXvQ6YSUgdcQfDq8xFmWe4gzb?=
 =?us-ascii?Q?NEvxdAXINO+pmYf8Ff6EkgwF9o4hsgZW46eWoxOC3c97u1Btls4yYAKea8nl?=
 =?us-ascii?Q?7rA18H16XJe5z6yDWQBFhtft9x14YyUBEL3bN1vwYdgT65yrncLeRbBgMket?=
 =?us-ascii?Q?ng+nu3WhrjBQrE/JZ4VsVxX5KnSysIjMsgIo3zNplV9ZjU5CNVFRZd1TCFYo?=
 =?us-ascii?Q?t4ImUTVt7TW99b4Ufj0ys1+YLzgo6xgTgC7YjorpHl2cwH4aEoW+g7AoOdsS?=
 =?us-ascii?Q?pax7Eivt4kHmb4HJG0NWNbF/qOlHRSJOHB+PY0yh0u+r6tYF/ntEeLGLOP6q?=
 =?us-ascii?Q?RrcuGYRKyljKwi7e32ziAmyGBSbtcgOMYeWBNK6Ari1lRYRcUxbHkBzvTb+B?=
 =?us-ascii?Q?0/EMQ/GIR7jlRuFoGS5c1AAETm2iSI5kEimN2n+BNWQ/Vv0QsVp10nu+yBnH?=
 =?us-ascii?Q?P/ZyFbibMc2756Jh06qsqLJibFN255ym8MQIsdBk4vaHJgyn+9tpky+8Se2m?=
 =?us-ascii?Q?Sq8caoR8GHG3rSHn5Nu76y7lg1UcOj3aF9cotNwwdEUv6YuKIVE+Y6sBaXkY?=
 =?us-ascii?Q?DSVXVZ7UuAnTY8EKofalwTbr29BgV6xEOQ0Sj/eCwhdMmj7z9o/pr1uEFZCj?=
 =?us-ascii?Q?SNnGiGj8QgKIYbh9qcR+PUYXRGN8HM9P3KtGXWmM9iDo8FLGRSrtNfSojh3r?=
 =?us-ascii?Q?LMqYdncpUTDn9VghbmUXj+dH0J1vS99VCiRLUlRQGOib9+zjNE0LAs2x5o1q?=
 =?us-ascii?Q?oge9l95x5C+Xnd2P0WdnCFjv3r+6ZCEn1EzYbxyFrb2kYt0fMMVDuWrIX0gr?=
 =?us-ascii?Q?WDpZHxHGgO7H8e4IFGDANpf6LiJ00eMySj908Vt69VRCQm3VH5cRZ3SfEqPn?=
 =?us-ascii?Q?2KyCE7aGwnlSo0MCnuToEqYV2JTvbmHmYHNCSqCsDgmq+Ozy/Dc8exJ/swyn?=
 =?us-ascii?Q?KUnjG67dQNeYBVb3NQvZXrXqoILXRFIK3+t5zV9XEoxf/ScpTCniGyxu1Vj2?=
 =?us-ascii?Q?+mHMaqVQRGyV2OsKd/CnuCjxiA74j4uHU24IaeKPkr+5qHwdhn1lxdTh1fGC?=
 =?us-ascii?Q?dKuHYMCON7FgChPTNw6anmJ92/GEd4rPTrq6IJBNp9ixUe14g2iJrxh1BUIF?=
 =?us-ascii?Q?aTB401PpbjhahuHvES4hGTsu0N+0T6lh760msuJFPXlN9bq+E3l6BfwYtaXI?=
 =?us-ascii?Q?3tjYz6A/0YjyFzNwbvQ6LtsQwwfKOcr+puw7w0Ayk2npldgnC1qIoN07HUyD?=
 =?us-ascii?Q?UeMUxRkKYrSpzZHPz2dp1yPeukz80LaMDwWjgS9qJiwrlbAwrOYC5w7YUV9H?=
 =?us-ascii?Q?gdIYpO2+QFyi8+a1KImnb/SUmT+P59XaVGsJCvtXKxkPQ8YVmElTKkggtVQX?=
 =?us-ascii?Q?TpLiNRH5vngqC9jm87KSWAdaPBZ4bsI8K8gRhJhfSbUyHEYdPbRiOXB51bzO?=
 =?us-ascii?Q?zLWuUgZVkFSt9NH9Jr/zd9C+saiouzhfs+IWLGDXzPtuX2WQk0ZFtzpLbpUO?=
 =?us-ascii?Q?5d8S5nBY2PCP/rMa9PnKcMyWqSdx9otz938OCIHsDH2YXWosjg6OUwQ/bGgL?=
 =?us-ascii?Q?CZPzkDdX1Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6448ec73-2f0e-4cd4-5c2a-08da52b9a06e
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2022 12:37:24.3016
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HdHdK3Lwo5gy3ezOyG0wdOD3cnpjzfbWA3Cmi+R1w6ZSX+W+s7KEQcweeFyA0rLvtbYZZnoB46cQI79L6+ViBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7873
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_053727_596810_3D3C6133 
X-CRM114-Status: UNSURE (   9.76  )
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

Hi,

This series aims to add Freescale i.MX8qm LVDS PHY driver and dt-binding
support.

The PHY IP is from Mixel, Inc.
The PHY IP supports two LVDS PHYs, thus two LVDS channels.

Each LVDS PHY may work by itself to support a LVDS display device.

When two LVDS PHYs are enabled simultaneously, PHY configurations and reference
clock rate have to be the same since there is only one set of PHY registers.
In this case, the two LVDS PHYs are usually used to support a dual LVDS link
display device, one as master PHY and the other as slave PHY.

Patch 1/3 adds vendor prefix for the PHY IP vendor 'Mixel, Inc.'.
Patch 2/3 adds dt-binding for the PHY IP.
Patch 3/3 adds PHY driver support.

v2->v3:
* Add Krzysztof's A-b tag on patch 1/3.
* Change compatible string from 'mixel,lvds-phy' to
  'mixel,28fdsoi-lvds-1250-8ch-tx-pll' in patch 1/3. (Krzysztof)
* Rename dt-binding file to 'fsl,imx8qm-lvds-phy.yaml'. (Krzysztof)

v1->v2:
* Document vendor prefix for the PHY IP vendor 'Mixel, Inc.'. (Krzysztof)
* Set fsl,imx8qm-lvds-phy' and 'mixel,lvds-phy' as compatible's enum. (Krzysztof)
* Skip 'clock-names' property. (Krzysztof)
* Drop 'This patch' from commit messages. (Krzysztof)
* Make dev_err_probe() function calls as one-liners. (Krzysztof)
* Drop unnecessary debug messages. (Krzysztof)

Liu Ying (3):
  dt-bindings: vendor-prefixes: Add prefix for Mixel, Inc.
  dt-bindings: phy: Add Freescale i.MX8qm Mixel LVDS PHY binding
  phy: freescale: Add i.MX8qm Mixel LVDS PHY support

 .../bindings/phy/fsl,imx8qm-lvds-phy.yaml     |  61 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/phy/freescale/Kconfig                 |   9 +
 drivers/phy/freescale/Makefile                |   1 +
 .../phy/freescale/phy-fsl-imx8qm-lvds-phy.c   | 440 ++++++++++++++++++
 5 files changed, 513 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8qm-lvds-phy.yaml
 create mode 100644 drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
