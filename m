Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1403CA0ED3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 11:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u9x6mw1La97mFBYiPTSVyVqc3iK1THfr/woj6yZi8sE=; b=IowTXCBj7ted3E
	PK2BcQJnSGjSviJhUY1f2LZTSQuyYByYl285JxiTQcw1uO5K67l/JXXFB2cSwdjTrE/2P5rQ81Agj
	ibEIBh8oWBGZ+zDQGSozI9Bl6dAfZkrgqzp+tzZXUXCim5hxHB6uKUqvI0QPy+CL1xvNOov7g6AAO
	QSr5WlI+Ytqe8KLo+aV6e8rj6T02Wi0QBc9aZxaSr+lUwV72TXcILy1VYBKzvjIUiNFul/VdKDgMw
	I/hgxMoNzYXjhX0WVFlGGeJq6NswaBwTH3XZK/RAg32ibad5cs9jGml38GVtLLJfbd4FSgqKi0Fga
	sshVJXi5kImzeZp9Qs8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4yM-0000000E48l-0jPO;
	Mon, 02 Sep 2024 11:11:50 +0000
Received: from mail-sh0chn02on2070e.outbound.protection.partner.outlook.cn ([2406:e500:4420:2::70e] helo=CHN02-SH0-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4yI-0000000E47o-1g5G
	for linux-phy@lists.infradead.org;
	Mon, 02 Sep 2024 11:11:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QaENqe8Oq8s1Dw9CZGCKdDwp9DJRPOmq/yhNxu9flwcfgyPEkPk2vA74cktTb33P8cYlDStoAKDndjzCkNivK+cLbIB+h45nexAh2UZXX9UbrYVr6QlmkMg6jLAdNtR3OPWe20QGRDiRL2qARZIuVfxneU1jI69P6Ucfjrbd9t9lUOeGvQ44wbu7u4iF11DeDHq1ugRi7ZniGqWPj1yWWPEM5a0gznZOwtJt9gUkgcE0kzoq1ENCGESM6khRjpdOonBS8Xc9AiA3R3t40gA+GsT6kHIDJHahIzv0ZX2LL4t027UcjmciujhI0n9eiThYPlr9J5gUu+UErflUXxu/3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNBy5B3NqYchU+3rxMXJMIoizLHYHvvL0dEpX3qKi/k=;
 b=kBSbpoSUq8dRNiusd1RDPnGUGnkniDckem7UU1UCns371mSbNRi7Dq0/QXO9qGRqcbMKSMMjsp/c1m8dyBk0antRFdufhQ6EiCHekiOMdngWDxxdAhBBk2NdGM1t/TlBEba8QHBZbOPBAOdmkCNbZWJcs0a5M9LjDNx6V1L01lnOQDVbutDbUTe9JyUty4zKXLiVDzNCiB2H3LLdo3kkX6Oiw5epYt7lF3oVFOg8c5pLqxsBExN5UPiiJoEicFk6lg1OUQWzfny0ltsOpLkeMefMxIJHKFxlcJS4EE2rUu7dy11rTTljIEyzxGCB0Bif6QXikvvfN7WHJlJu5GzwGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:25::15) by SHXPR01MB0768.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:24::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.31; Mon, 2 Sep
 2024 11:11:38 +0000
Received: from SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
 ([fe80::3f35:8db2:7fdf:9ffb]) by
 SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn ([fe80::3f35:8db2:7fdf:9ffb%5])
 with mapi id 15.20.7897.027; Mon, 2 Sep 2024 11:11:38 +0000
From: Minda Chen <minda.chen@starfivetech.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jan Kiszka <jan.kiszka@siemens.com>,
	linux-phy@lists.infradead.org
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	linux-kernel@vger.kernel.org,
	Minda Chen <minda.chen@starfivetech.com>
Subject: [PATCH v3 0/1] Fix configuration for on-chip USB 2.0 support
Date: Mon,  2 Sep 2024 19:11:26 +0800
Message-Id: <20240902111127.15155-1-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: ZQ0PR01CA0032.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:2::6) To SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:25::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SHXPR01MB0863:EE_|SHXPR01MB0768:EE_
X-MS-Office365-Filtering-Correlation-Id: 1359706c-d15a-442c-486a-08dccb400359
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|366016|41320700013|38350700014;
X-Microsoft-Antispam-Message-Info: uA6eF3joVzdeDZvMfFrUcmB2JQoE5uSx9dDiknfQOcyGSApIkSBpMuGJYTI9KyhXKTLzhF806+OMFtfMMjqpWrXb6sNLvvSzMQycYy2hMayj6omcJ6fKFoHDenCN2goDRA3J4urzbvc/tEPXkgaA8HgHjFrluzf8K3NUVC6txaVU5xZaCcQlaYUqeLWqm0sa6RLpYBAcSBZYWAKcXRDjaQQJMK5U8/+Xv1NzD4ju1SqlyCtOqI3Z7KXneusqdxwOoULkGk10EOGPFshNDUPuvpmUtR6dSWq0HktQLGy1BP8B9NcUumapJKwFnK4T2uk1eepcj81vcYraiVai4w4XpcMZFyBngxmcVsoZzJLTLKrzeiO8KFiv7ipWLGVCi9APRZakzoJQWx2joo6pMQQb1TVIEoCN4zsu3vsJOhwj04ElvAb5Dl3OqiTL7zlR8ke+2FbrWUSI76bbZMefPIjBJzv1nFzhcNlougWRqs24dVOmwI9nPHtix4byoTi0EPLT+bxsK6DSi/8WjqryVthO2Ujg/W+EXoC+P8SpVV3NzwY0CPgQG7ABZcKYDC8E0q09mejBh2s/+CYZXUqFwBPIz7/kevt+BIdIvciWCIOgylvhOw/GrqCPM+6MguOxv7Xu
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(366016)(41320700013)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7N2mb6zpp4O2lO/d4lCTycm9gxC5/Oh3YcS+HoDJIj0tCngXpAqqkEDYIqkd?=
 =?us-ascii?Q?OHpY6lxgJtC2QZMrAPtcGSlbThiXTtcwhyh+gKXAo8yShSNF6dyyt8PK3rZN?=
 =?us-ascii?Q?9f2MIUnAK4O8kfSNfLTMvH0/FsxmFL26i3ZnDeiuQdoVZoQMznWpX2FYnCA7?=
 =?us-ascii?Q?qpTeaWDG6Eb6eKXjBo/dpbBf/SFXO9WxA8uVGEVclG+Ig7eZxs5X8QPYBrB6?=
 =?us-ascii?Q?BS6fhPEEvSY3+AT5BuXx6WnUt2mtoOczq5sw1iBvcwGq4i9q8piD4GoK76da?=
 =?us-ascii?Q?ieEFwB1ZWOjkFO/MX/UzNh8McaB3CP0vqgYLXqCvWZ/t1TFoywqlwduY9qFC?=
 =?us-ascii?Q?3EQt6W5aaGRaqTVPf7mYMXk/s6qlmtUgahCB6j2ImoM4K6EQ5Wcm+Rcr2he9?=
 =?us-ascii?Q?4YGd4e6O05YyPnBvDdjyH6xjHSHTUd1FKm1fNVib3sbeGoNIwbierPzybq6z?=
 =?us-ascii?Q?/MZseLrtBStNhPywH+PNceP8zlcddpG6+1uGHDMDetD+muf1SiR/+TIDvdKH?=
 =?us-ascii?Q?NPLjzsdOL+gCR+fumVnodEyeMmVIGEKdXxJgr6Pmmo4PH7lpAogFhN+F3tVZ?=
 =?us-ascii?Q?J7kKzlKjyFuJIR/dX06h1VNKOBlgvViOt2NoMv3ryNWANxUoQFTfh9EDWrLk?=
 =?us-ascii?Q?7ZJWg91YsMtui5BGPyymYu/MUe+0aQ/Eo0aXWNVSqFfJFgcWuelyqRdtT7zJ?=
 =?us-ascii?Q?dPtGGMRcskuehKmV+zVFxzufTppmYeNtDqrW/8xgvRTin1dfIhE8Hk8jVH4C?=
 =?us-ascii?Q?Bai2/V2AheyOr3WxJguMP4LyxoB9SbKkcm61Vqm3fg6KP83RBjV2fZBo4Sm4?=
 =?us-ascii?Q?rQvLXrq3r84w7aZmLG1QqHkyGsVu2W8TKL8Dq2HqVCKdP8FRMdQ8E+xvob0p?=
 =?us-ascii?Q?wgfoeP5DwB/iOgRxOLbm3XWhR8N8sGMkG64vqv3Y4trTOGl/UbayzewiDMKS?=
 =?us-ascii?Q?PoVvzyZ1zsnrDH8oSPVkCBvSmfg/pK4zax7USWz2IN5m8DC0NAb2poWddG79?=
 =?us-ascii?Q?vAXxF6Wqrth3Zr6wiKdZ5ISilvmhgcZU2098j+8JofHlbwBYoyxQ10LOd2sV?=
 =?us-ascii?Q?Kju0AI0i/HYrFwCVePRf2MOk3DsFVpM6wI7EA8Mrt1eDpmIfeZRok8vL3x4V?=
 =?us-ascii?Q?ex58N5O7xmF7vL7KK4ftN0Vn0AY5ZDPWDg/lTZOJigky9RAggvfy9XnYBi6u?=
 =?us-ascii?Q?oBQv7afkJix8onjfVU82auXZE2UHFfY1WrNrCu7w/SJFv11QUT6tvvhGI8LO?=
 =?us-ascii?Q?21VcGp4z3pL0cxiFfcqFj+PnLZw1tpLkWhcEiFxDJwROK3pRQHWARkziO0+x?=
 =?us-ascii?Q?O2fN7oj0QASaSfjgnA4c8mofQD90dJjErPNpH9Ca/m31x5XFEm8cLuJshPhF?=
 =?us-ascii?Q?Kte5AdmXq2M5dxzhBrNM84MTVy+y6OF9PZ8j+ee3NBYAJxGmvH9z68DrxRax?=
 =?us-ascii?Q?CHzhKedJicgMuMCwX27A1W8aefjWnBPNbupcjgKECW3TJQjpMvGahz4X6zi5?=
 =?us-ascii?Q?xMtXwRHPWM0wfIVqFdZS8JAlf6OybkQt8yDus6u2JDhhXhGYtTTy9HIYN6TM?=
 =?us-ascii?Q?sATAGfMcTejS0BcTTBd/3KIFnN7QscC2CeNLuQSgCawndt4Io+hSZaE9B4mc?=
 =?us-ascii?Q?kQ=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1359706c-d15a-442c-486a-08dccb400359
X-MS-Exchange-CrossTenant-AuthSource: SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 11:11:37.9493
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zmN2OBWH8u/r3x/b44eIkJ0GQfl5uPEShcT4cszUcu05zzYMioVPyoi6v+kIYpCXmOc7fGO3x08mWa2i35p3hxBveH6j0sHZ00snhJf5KEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SHXPR01MB0768
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_041146_459482_A7D49A6B 
X-CRM114-Status: UNSURE (   8.20  )
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

While mainline has support for the USB controller of the JH7110 since 6.5,
this never really worked, even not with latest downstream kernels by Starfive -
unless you were also using an old downstream U-Boot version. The reason for
that was a missing syscon setting that prevented the connection between USB
2.0 PHY and the controller. This series finally fixes the issue.

Changes in v2:
 - fix copy&paste mistake in error patch found by kernel test robot and Dan Carpenter

Change in v3:
 - Using syscon_regmap_lookup_by_compatible() to lookup regmap. So dts
   with no changed. Delete v2 patch1 and patch 2.

base on v6.11-rc5

Jan Kiszka (1):
  phy: starfive: jh7110-usb: Fix link configuration to controller

 drivers/phy/starfive/phy-jh7110-usb.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)


base-commit: 5be63fc19fcaa4c236b307420483578a56986a37
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
