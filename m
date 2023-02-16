Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD21C636D7
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 07:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNFxm+n8sqJoP1ZVcIfehtM8EKlW7xHmAQIcTBaK2qU=; b=D8n3Dl7kCbyt2Y
	3n+nkLcWcWLi+CNRkuGYTp/kbAlJRtSxphrMsBlYU9eO50jOGuhdpPJ7uzuNulPB5lO9BdEK4o/Mo
	0tszNFncF7xQC+37YKPV+JeLarZ7RDm5L3Jf/qm4YiDdBJ8Es6i4mtn0T5EP7PrWEvYwfpcXJ+M4R
	qbFberBHY81pxPjBkKnp/JFtFQ6SGCRs8FXqwNe+6K+Kieg8vFTWVuCeQbwNCAx8fRkD08sxLTZKu
	F06dEqQNxJKNFkCIpMPESAaIoMB0ybt408v9KWNwYp6Of9Q0AT6jH2kQf9nnLO9GPTqSmq4/5PnjI
	+YWWvF9kVzzN+KtdWqpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSZ5T-008sYY-JF; Thu, 16 Feb 2023 07:53:51 +0000
Received: from mail-dm6nam12on20723.outbound.protection.outlook.com ([2a01:111:f400:fe59::723] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSZ5P-008sSO-RI
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 07:53:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jE2SgJwAkVqmQPLhQL3GLqVG4HoAkgpV4jfPwl+obL/ZOlD6EYVAlAO5Lsa1kgc2Hnhb9kqufyx8e1hWRbaLCREbQePbZo5/uUCT1cTOu5X8L184CPFAHJcbFJH5yPJFo2SPqS35UY1Vhhmb00Q0jMPLizi4nmh9LXmKxQoiOkgVTPsKKZ2rzFmPOSRe82hVfzKPuL5LmZ4P5eMlcV3f3BxdHx711iDH8CeCpVqSx2jsDhfFNu5WuUyvMM5wQOLVFk9LI94UVEmtgFcH8/wOtZ2EjBI4Tsg+4rZaftQzt8MlAll3IBHTd4/VH3XZp02MBAGiBzq7fUn5IxhUHc6OGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwZx7W9DYhLWIQghh4TxCk6degryJ8j6JbJibBp9NFk=;
 b=Q8e/PsiKoaWDHIFUFuqsphZOIfZ/62VRic3Ck8gqDWD6U7SqcGKzwG9J8cP/LcQwmqk8oQiuYsId0dI4M2T3fvRHxj6MDJ1QSWLobJTanE0l6fjT4EN9AJTeQh3EvONSVFl9BjwyCy5DcxeXcJreKCHLN9UH/GJQ8COOeIgXMJ24OpykbxtiLd+T+qiHa3NB2OFCpR8O53U/I43wLUkLE/uKT/Z+LBueuOF6X5hvx5DBn3YWS3nik3RbjmLasDJ7A0H81mk0N8P5TlCpPjB8pFhwcCu725TucdOgjPN8+W6JCuiwpgsRcGhOQavFukCPEdyje+1Io7eA43e16++8PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in-advantage.com; dmarc=pass action=none
 header.from=in-advantage.com; dkim=pass header.d=in-advantage.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inadvantage.onmicrosoft.com; s=selector2-inadvantage-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dwZx7W9DYhLWIQghh4TxCk6degryJ8j6JbJibBp9NFk=;
 b=XOO68L2O3IoUuoVVh2leci1wee/BV+GJP0CCVk+LyKfMHuVHvHKbOugALOR49haw3ClGAC7YhO8DLIxKw1Ic/RHqKPbO3QK8yAyOpxSvJ3DIk2H9b7FBIKAkEgXVTedNE2iIsKdN8nJKE/TWB9mlUOBOPWSWcaQGGrQzt7OsN5M=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=in-advantage.com;
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37) by IA1PR10MB5993.namprd10.prod.outlook.com
 (2603:10b6:208:3ef::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.10; Thu, 16 Feb
 2023 07:53:41 +0000
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::1897:6663:87ba:c8fa]) by MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::1897:6663:87ba:c8fa%4]) with mapi id 15.20.6111.010; Thu, 16 Feb 2023
 07:53:41 +0000
From: Colin Foster <colin.foster@in-advantage.com>
To: linux-phy@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Russell King <linux@armlinux.org.uk>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lee Jones <lee@kernel.org>
Subject: [RFC v1 net-next 5/7] net: dsa: felix: attempt to initialize internal hsio plls
Date: Wed, 15 Feb 2023 23:53:19 -0800
Message-Id: <20230216075321.2898003-6-colin.foster@in-advantage.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230216075321.2898003-1-colin.foster@in-advantage.com>
References: <20230216075321.2898003-1-colin.foster@in-advantage.com>
X-ClientProxiedBy: BY3PR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:254::24) To MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2351:EE_|IA1PR10MB5993:EE_
X-MS-Office365-Filtering-Correlation-Id: 79c2115d-af77-4b4a-1de2-08db0ff2ebb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ZC0vTA/81uCEqjeyfctqy+r8J9IT32bSZCUHAlqg+WOD7U4KgHJP+jBGHt4z9OKVQV2UIbYoaw9iIXP14pmeWYAi30UDgeyWXiXt5Yyc6rtoxJsDadh7jV8I1FuA6VwIzNaI3hH0Guv8klApnlfm2db2lN7fG/hOLu94Ahfm4wujURma27T/e6zun9elPUDog4UEnhjJdUdfr5DigaNz5T0QWyxsoNtF5j1i4yKblQCh8ytLaDk7jPbjh+Pznur99LlU3Ssx0v9XU0ZcOnpAUxSxmsDc08Uc/Uijnb/lG8DPfbTsv8akoBtg2fP8DsgFtd8apZyM8zPqgobwNXd+OjQH81nAoNpFJKK3lEF+w0sXHrZ4mOmD346m+aOV7rlWAPn+iwsYj5Q2Z6MmF01F4jLbOBBRj4HRFvmT6bN/bnhbFpJpU5j2UCihLZNSi/pWUK9p1KJZbd0Zz+DFmCy82rHXmMOU7EO/U0u1netQJBX/L0KzW7rdd5akBRYWCoq3OkA8IChQMOeg+avDYutaIlK/tpFdpha3G8clXCqFlo9+wyc7aa6zWCDWR/5UiHegKITY2SzvKF+wCygL9b8cPGHoQBp0KFNLjD12MZqZMdy4UBoJ+ClWWQG1CErqiPGOB/FuTIdyLF2v4lt8yCIL0UUfCgTA35a8S9y2xqyl2ywiwc6LyOZirUmxvmy33v+fumCtvgi3d4PKfc8Pmoc1/g==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2351.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(136003)(39830400003)(396003)(366004)(346002)(376002)(451199018)(5660300002)(38350700002)(41300700001)(2906002)(8936002)(38100700002)(2616005)(6506007)(26005)(6512007)(186003)(6666004)(478600001)(52116002)(6486002)(44832011)(1076003)(86362001)(316002)(66476007)(66946007)(54906003)(4326008)(8676002)(66556008)(7416002)(36756003)(4744005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?xAIZEoPTHmc7RCtC7ATvOqSSpElJzsKH80JVOML0fxg5uvQ9416HtXx05ML2?=
 =?us-ascii?Q?Cu6X3LHqYOb00gJQHBKyAU+6SUhzbmyo06AYOBULMr3yH8ulhfbYPWzVGYw7?=
 =?us-ascii?Q?EZrDeCtQQ6bg/ee0a4Tk7rcq6r59bRd6R85d5F8uu4d7rSNaTN2d75URhvDm?=
 =?us-ascii?Q?2Odthff8aeR+H3Ao9JwPpHll0cw0Z7RTWMkr2FKlZOY5OyP7S2WH80aPORYG?=
 =?us-ascii?Q?ixzl/3YS/lw8cywZF+AQQCWLQw0bw9b7x0NZxOAmG1xAhCSMAKHbIPpCNGwF?=
 =?us-ascii?Q?CyCJ5rOaI8jC9dMwYjD5KX2rYIibHidBhkyT1SxYObg/opYIBz1X14LCvERb?=
 =?us-ascii?Q?jyH9j0QO3i9mYbmpjf1drdxGY0VNB7rCHWEn+wwqbXIoD3Eyf0Chq8JzVnsP?=
 =?us-ascii?Q?k2h848Fkz0hmhsoHqj2O/1Phn2nTlj9rKroXMcLk5gpo/rD/4ivrycZ5bhYx?=
 =?us-ascii?Q?SEAQ2vA6ubvUOoSbKCJdKeY4OqKqZ/QOoEFxF9LN2Ehyf46VoXn0zSrqzQ4w?=
 =?us-ascii?Q?sQips1idxbedv3EPffE5fwjOGXioyewz6j7OlOLUli9plLuxdPKinybb55kD?=
 =?us-ascii?Q?drhLcMFDhl9gDcsdj6Mn5LbhOqnV6Ef/sxpQkl3OROhd7Wcwapb7NYmwfwoC?=
 =?us-ascii?Q?+SxyPLuCq5dVhOuIGcagjPf4rV/wR9Qov87/uRd7jbj8RQld5MuIY66upOlY?=
 =?us-ascii?Q?HxjlminUjiMe7R7VNuXMMe7O1MRli9SjJXepccHIm8rxa+pEV6y7cqywwMtx?=
 =?us-ascii?Q?AAss9O6mhvC4ZHO51Do3NeqZwmgnKudPDulsLboqOnFiKW03+pVvIsQE9rt9?=
 =?us-ascii?Q?l1MaGYzN52e/BO5xtQTCm8UB6cqwOrx92VGJquKgKaKCWm3uLHMWrnyXSrfu?=
 =?us-ascii?Q?y6+aLoXIuL/GMxfILN1s5pabZdgtNVG5ANmhDpYDOUcQav8WD0y+wdezYE4a?=
 =?us-ascii?Q?Ueg69mNRPhqfAcGQmnpm7p5bUdqvascDjMqgN2gsIWZ7gCyzalbpHDFpj1sa?=
 =?us-ascii?Q?fT8GKoNPpAN/zneXo6imfB9SZp7gfrNXH/fU/PVm+xOMl+A/UOEywuBzh4Pv?=
 =?us-ascii?Q?7ewKb1NuAWt7/dCiu9MOpohjaYjJI2V+ikqeN22entCVfZhb8yiJYdpV8DGU?=
 =?us-ascii?Q?Y0QYHiknRyNOVv3WrZJLfXTUOBSyIGSob1tQv0WgPvIYZFB52xuyRxa0kgUw?=
 =?us-ascii?Q?wzHOHKccx5soD8B2cL+nz7bw/EmZUpkqWwVXoBAjayBJla2bwSWGoK7DSzMl?=
 =?us-ascii?Q?j/EKqeoDoxYdaw/MFtx8m+RtjVxcLJAE8doFVz0poAJUqog++iPdjICKfql2?=
 =?us-ascii?Q?sS8XEmxN9xrixNY++LZ31hD6VafXcFQ1gbWjEuDWcvOUBYkaPXw7gMMMzrvM?=
 =?us-ascii?Q?OmY12CYikjfQwcQOuaX0IGazn1neDShI/aKnMddA4XpvDvLv7P+MIjGQRkPU?=
 =?us-ascii?Q?SBCwO1EyqsK8M65DAVwy641XyMZKK9h7W17qztWJ8MmwzQVZJDn5ultmnjad?=
 =?us-ascii?Q?9uexiBzniCh/KdBsAUqtmYV3ksJQGdE/44N/6baKd9EfsL8f7YwNk0IiiD87?=
 =?us-ascii?Q?ElM0nfm6fEMM/wT/fRyCRKrb5P79341iasACWt5GONX8Qed0ZSbe5wr2JBad?=
 =?us-ascii?Q?OHFI/xP7m9Yi6HktR9gNhiM=3D?=
X-OriginatorOrg: in-advantage.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79c2115d-af77-4b4a-1de2-08db0ff2ebb1
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2351.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 07:53:41.6156
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 48e842ca-fbd8-4633-a79d-0c955a7d3aae
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A+DGqfEQOgz8GFkwk8ZhYxry0GPYIqwOE+ns8HWtgWY+VaskNQX5O0hQ56C2CuXRyArRk5+yjHzmKe+P3F5eDZTQLlwrCKDWrLAFhHqYVfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB5993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_235347_910803_7E617B0D 
X-CRM114-Status: GOOD (  10.13  )
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

The VSC7512 and VSC7514 have internal PLLs that can be used to control
different peripherals. Initialize these high speed I/O (HSIO) PLLs when
they exist, so that dependent peripherals like QSGMII can function.

Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
---
 drivers/net/dsa/ocelot/felix.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index d4cc9e60f369..21dcb9cadc12 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -1555,6 +1555,9 @@ static int felix_setup(struct dsa_switch *ds)
 	if (err)
 		return err;
 
+	if (ocelot->targets[HSIO])
+		ocelot_pll5_init(ocelot);
+
 	err = ocelot_init(ocelot);
 	if (err)
 		goto out_mdiobus_free;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
