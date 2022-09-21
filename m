Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD46C32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 11:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ITzFvMeyPqfdKtcgcJ+FSK6jVl+OpDhVb4JPLpuFT3I=; b=BnEfIbELvnVVE+
	FBb67EXyBT7nrzKZh9sytvD6/rkAMWxSl3uGGwc5BbGqRLCNYH4hyuQAo9ed3CsFJqAq4e+iYshsJ
	/xFqaoo/5DJrA3qcRX3fbFG8eqSKrJkBnKYcRHmURxmfHQDyCqNP2VZU97VvpRYtHUDzIlNmEm8sx
	IuzR+RdFqLhBUOP7JglCmL1MGrGIqw1xJt1O7lKDzLcG+/dgckLzP6EOpECASNuhwW8OzI7YW/OeO
	0cbC+svatthiWikGm8JOwuc71ELYM/heWQTtl1EyzYLcNUJkzI2KnD4wmlgXMOBU3CA+r6AGcrciM
	QZsgNCx1o5chCSpWK3Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaxry-00B6Ta-5w; Wed, 21 Sep 2022 11:26:22 +0000
Received: from mail-mw2nam04on2061.outbound.protection.outlook.com ([40.107.101.61] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaxrv-00B6Si-HA
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 11:26:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1FHaGTQFXSZuJC0AhUpfcsvQ8BlnpyuhsVdfO18L6/UWQH1zbUsLoGDy+2CgTcs0emcvVbkT4ixEJDKwlvRiEOU+QPCmTPrWo9VIs5jLqO2cTPZphHr2f7F0zT8kcxKDdPyYS2KZ/lUTvVSUdsnWg8Oh8qv8TLbwkUgZEEpzgswMXab7pBBaerMlEPfjW64gcKpVE6jb1H3CZ8Kk1TPUmzgLL8jvmHPA3WPBVT4RkTgclD/uofOos3SNjzyTEceZq39Kjc2J6+pVVeSuhLJDAZp83Eno+2hjLQaPIC8tTXrh4e8JhELtjmAy/Dy8RpnWYfu2QeKdBkISF2upXXmNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GQsvLPc43rGwcrflCalrHrwxIkUzevg0SyHtliu1H2Q=;
 b=MnvluQ7JZBqNa6LjHhMEM7iTib4E1zfTd/CmSfrgJLbOXxfFXXINzHuljb99grq7w/WeREHBqRfnoqjouPIPM1/CI7dOWMIvUvCd+pKfvyvofVHZfQdopqoH/LtV8KfsqSLxdTnwZ6Krb8nRChokqlySum3Y0+LWTr4GaegD1MwPWEsbk+zoq9JiCt/1Ak/TjYiA+lVxfBsn9fkHZB4en51MX17rw+vNesCBInNIAh5dJ0ImzG3GAuc/ND8UKvyiEWOCLg2T8gHC1wdgRW1YMDIVSaji8o4wDeMPgofA+GU5rVr8LU9wA5PhT5rAVAGknvB/W4NTPDd3xXcgoauHBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GQsvLPc43rGwcrflCalrHrwxIkUzevg0SyHtliu1H2Q=;
 b=feJkSd1jJR6LZamXUciw+WRT8L/d1hbJO545RBibGh2IcE04w2y/jAKdr/SduaoM/ikd9gIVAu3g47LCdlL2eD1C7tlHNUDFvCBYo2RWanAjPJOicP0yUmuUU8jj84gAyZL4/A0znDKkbeomg0XtwFWyMGyOZFYQtzRd1fjYQr3q6ENSrEtQKvsPcq8We0s4+9XORZiay9JtcD78NkuHbu50tmfeOes3QGuaTtyP3jQiib7zM+0b4MGk8I2c6qNh/K89TIrYm9XHl+k9ChKsIRuSJtT69nS6u2EskiE0yNhRIpVU4j7TXLw2R6KxmbVgB7vTLbBQqdqqyBFkKrKYGw==
Received: from BN1PR10CA0001.namprd10.prod.outlook.com (2603:10b6:408:e0::6)
 by SN7PR12MB6862.namprd12.prod.outlook.com (2603:10b6:806:265::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Wed, 21 Sep
 2022 11:26:15 +0000
Received: from BN8NAM11FT007.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e0:cafe::ae) by BN1PR10CA0001.outlook.office365.com
 (2603:10b6:408:e0::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21 via Frontend
 Transport; Wed, 21 Sep 2022 11:26:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BN8NAM11FT007.mail.protection.outlook.com (10.13.177.109) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.14 via Frontend Transport; Wed, 21 Sep 2022 11:26:13 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Wed, 21 Sep
 2022 04:25:59 -0700
Received: from 74ef364-lcelt.vdiclient.nvidia.com (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Wed, 21 Sep 2022 04:25:57 -0700
From: Haotien Hsu <haotienh@nvidia.com>
To: <p.zabel@pengutronix.de>
CC: <jckuo@nvidia.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Wayne Chang <waynec@nvidia.com>, Haotien Hsu
	<haotienh@nvidia.com>
Subject: [PATCH] phy: tegra: xusb: Enable usb role switch attribute
Date: Wed, 21 Sep 2022 19:25:00 +0800
Message-ID: <20220921112500.798282-1-haotienh@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT007:EE_|SN7PR12MB6862:EE_
X-MS-Office365-Filtering-Correlation-Id: 478d07e8-dd91-41dc-8973-08da9bc417cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	13dQpOJz+DMXYxgy7Us9KBtAUgJkkQ7Gt+dZXSNwF5OW3hkgh6dx5dpxJxqyIS+9gY312dvST6nuxBdfRxHC5YIce9s4V5WBwfRXHUtOZ6Oe2gKgcQIdq8AiEVeI42i3cGctZxcdbcN6/ty2q7mX8DVMtik6MlgOG0fNpcXsznM4tjaDZ4WQzfpu4LP17LaSqCwre2MwPFAvJHPd1xLf/9uw80qg/v3H4/PQmKwBFJncxELM1pMuoElW0NRxQiBBzkzoTO41IpRhsyIGqD7yzKOrgD0YRNGYWpFybvkZdty/Edef+kf9TtE2cVZVjB7WbtI9+H+VnPn8i3XHvYpeqM3gM81KyGeKpkK3SmtWEB90WR04urQyYpC/A9+uMGJPnazOD7Ey4ktnRqzGk4ztlb0FAlog8JKJJJlKRyDcXsiT72Ihqo95caImeR6RuXSppAu/50HKXDfa1tO/+ElcXctQiNKEYk5MZOgIONAaZiKIJwASHQlOUaottFUzogs4xzunPkWTEabjqtqDSTD5CcL9mxm4pI+L1xgpevHO5M1iD4VgtDIntXHeb/LBSrYNvu7Qqtnvm3K66bZk26OOvPnbaf4yGHyit4nKCFNlbmZ5q0NuPpEx/l//n+XQQViW9ryzdUChG51h+WEBP5flD4cz/BBS8ayyc9zpCOKDvGcyWntbb3zwnUzK6XIo+PyiBv4l/TvqENdYxPjacoOw3zcIXCF59LJZ0ibNvDzUPhcWcFqEg5hpFOkBK5PF0aP2jMxnDfDPz6T0pxZYseVhng==
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(396003)(136003)(451199015)(40470700004)(36840700001)(46966006)(36860700001)(5660300002)(47076005)(26005)(6916009)(40460700003)(70206006)(6666004)(82310400005)(8676002)(16526019)(2616005)(336012)(478600001)(7636003)(54906003)(86362001)(356005)(107886003)(41300700001)(2906002)(70586007)(36756003)(7696005)(316002)(82740400003)(426003)(40480700001)(4326008)(4744005)(1076003)(186003)(8936002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 11:26:13.9244
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 478d07e8-dd91-41dc-8973-08da9bc417cd
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT007.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6862
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_042619_835125_77DC765F 
X-CRM114-Status: UNSURE (   9.13  )
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

From: Wayne Chang <waynec@nvidia.com>

This patch enables the usb-role-switch atrribute
to have the user-space check current device role
of otg cability ports

Signed-off-by: Wayne Chang <waynec@nvidia.com>
Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
---
 drivers/phy/tegra/xusb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index aa5237eacd29..220ab7719ade 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -656,6 +656,7 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
 	struct usb_role_switch_desc role_sx_desc = {
 		.fwnode = dev_fwnode(&port->dev),
 		.set = tegra_xusb_role_sw_set,
+		.allow_userspace_control = true,
 	};
 	int err = 0;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
