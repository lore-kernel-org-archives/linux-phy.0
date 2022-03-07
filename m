Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CDCC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Mar 2022 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMQ+StO99VDzbW+GOElQghur66LVoBteSiXb6//7M0E=; b=gWdyzijnoDzv+X
	GLHW8P4n4xXWk+w5IMb5mLJuoP2izsknT40CODWzkrBeoHUVCQSd0eu/XIfiWOKgFqKhpOBpGdPta
	c4JQJ8f3WCD2Ql6+B5+WXS00YvQ8FURqBVCMC2vFyzn0cLfJxlOK98cT9maONFBclnupmKbLNUS/Y
	oRtVUsiLRI/iEQvPo/vQ4/tON3n+TEq9knt+4uehdyodxJcsJz1q+pdEeeGSYKnaLaVxbfmDsjjbR
	yIO1ttL5cjv5zDit9Ce/hETFqVwaTtH+6E0O4/qrzotXGGFvBsLHdFRkcLRFiHQ63lH8fa7hytF53
	6biX+tCQniQEsrTgKJxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nR2vI-00FZ11-B6; Mon, 07 Mar 2022 02:16:32 +0000
Received: from mail-dm6nam10on20705.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::705]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nR2rW-00FXQH-W2; Mon, 07 Mar 2022 02:12:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M8V2Czw8RQOnQm16ywoBCT0lEC8Qll/Q08zDJT4YiKTw9LL7pFJmatyuFrZSd4QRZ6910Ut1vvVbIqW/ZoAlpwFEqHRQPRnWHhI9J0jF3Gxu8xG5IZf6tZoDVJGldLxdhEP/vM7nFZKQlvlvXbslSpYjFSAgZQPvRZCg0F4a2N6K54GwLWyJNwbWroG4dQne6fWpdMjYGpebjz1m5mdXsUIK7Da37yQXTlh8kGSAJuD8zaybI2iMCb4iBwKTjmkpjfsaL3LLXABdFWIVl+ws536yqgOVSGs30Zmjj6HNLN7Tv4XkLrvGARXnCukO20PEWLQJDkz2pgV8z4F6RoZX0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QA3vg0KZEEPZNKLO6wJTCwJI9BE0Ud3wrgMZRfUwvWQ=;
 b=XyHHnb3lvFo3zDb5gSZmD/v2GqM71K2iSMat7d9rQjp2hYECK2FZqSj+MYBA3Qk0IGw2F921dpzvgLhIAwQvAzdOg3O678fjozIXqo8EKTbhuVP9oxIxPdVhCjH/QkCBb7w6yhkNVbRgB/Bqq/aQ34pnlomkhYwBPLrWdl7eTjpNzv/muI4bOJe6vgInbV2wrYte4x52AcgZgWJi9zh/QmnQTMc4HOkfC7cpX0f6Z6u22h7lf73n2TYrqtZaTAtvvxCdVuJ6REll2t1GTuQaL2ZElpeKniQVSy1+umAxDhx39NJiNkIzYaRL5uVpGoKT5/PHEbfBiUkg0GR+EoBfTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in-advantage.com; dmarc=pass action=none
 header.from=in-advantage.com; dkim=pass header.d=in-advantage.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inadvantage.onmicrosoft.com; s=selector2-inadvantage-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QA3vg0KZEEPZNKLO6wJTCwJI9BE0Ud3wrgMZRfUwvWQ=;
 b=Y5bV9hGdt8wu/kkz8OX1oLIClpMne3L03gIW/79/b9sATnMAqeM3u/beBQVUuI3PXFiBrV8O0R1byu0pvEBe5+IhYar+RUtuHvHI6eyHQh3iYTk6URaGedrlWdW7EICtgW/54wHiUXoyvByZaImAe9Q+fg9mQzZAZC0n7ka5WP8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=in-advantage.com;
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37) by SA2PR10MB4553.namprd10.prod.outlook.com
 (2603:10b6:806:11a::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Mon, 7 Mar
 2022 02:12:32 +0000
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::7c:dc80:7f24:67c5]) by MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::7c:dc80:7f24:67c5%6]) with mapi id 15.20.5038.026; Mon, 7 Mar 2022
 02:12:32 +0000
From: Colin Foster <colin.foster@in-advantage.com>
To: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Marc Zyngier <maz@kernel.org>, Hector Martin <marcan@marcan.st>,
 Angela Czubak <acz@semihalf.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Russell King <linux@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 UNGLinuxDriver@microchip.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, katie.morris@in-advantage.com
Subject: [RFC v7 net-next 09/13] resource: add define macro for register
 address resources
Date: Sun,  6 Mar 2022 18:12:04 -0800
Message-Id: <20220307021208.2406741-10-colin.foster@in-advantage.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220307021208.2406741-1-colin.foster@in-advantage.com>
References: <20220307021208.2406741-1-colin.foster@in-advantage.com>
X-ClientProxiedBy: MW4PR04CA0174.namprd04.prod.outlook.com
 (2603:10b6:303:85::29) To MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: abd032f3-e279-4035-8135-08d9ffdfeffe
X-MS-TrafficTypeDiagnostic: SA2PR10MB4553:EE_
X-Microsoft-Antispam-PRVS: <SA2PR10MB455362EEE43FE90FB453A7F6A4089@SA2PR10MB4553.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2dLUytDYnNeZxt5RLyXz6+9d16CpICo66S9X79plwDG0+gge7ft3JCV5kleKkLPwzdR+ATjJkkHqj2MqcIIKzampDwJA5aABbTT7qCJWKwZysGGgA3aRzB1nABHlX/FyHO8qdfRJSeiXB/WxvELnHBdASrseX77B36Qdm7i90cBBSR9BK2RKVSDuviRbTwjl7jT4Z64huqHB5pRapPZRzFzB4JbxLKyguui0IpRadgQREXlYUJ+kRQre01gVAr3jHzQzbDK3+1ZhmtHS++X8pDkkJMmfDYLnOsMQGP2RbEuZMX4P9tBFjJ5QIuOHXE/bcMWFUN0+Q1cJ2B9CrDl8CT8VvXgh2o5W9y6msFRa6MzZ0JZUu12txuoLXgTOaY206cIEcxL6JVkvsS1aMlzxZX+97dEIPIwVJXIjGEckSXV9AJBIuDo8sQvCsR4/bUJyEb7hxUc5D84/9X7pV8IsFiaXcT9JVc3IKKWTVwUyy+/8P1LBEvojqnM24v9qrqSGDnT7VKS8OO0QJT5eph3IpEsr2MKbuAcrnvOfnsOr/JbP6kjFFiF/P14tSkqy+a4XxPB8b5IyI9MjKRcLB+gW+jlKtKlw/b09F6xR23v1196jMJdk5DQ+C8IRjhLjb7jeumEVrwFGomSF+oLvG2sEU9rEOMQk0Ff/fq9s2IlLyy5XSuQ2AMJDb1pMjvhjtgHR2ADfBT/7tA5lkw3stuP75A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2351.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(376002)(42606007)(396003)(136003)(39840400004)(346002)(38350700002)(86362001)(508600001)(107886003)(38100700002)(6486002)(54906003)(36756003)(44832011)(4744005)(6666004)(6506007)(66556008)(66946007)(4326008)(316002)(66476007)(8676002)(6512007)(26005)(186003)(8936002)(52116002)(1076003)(5660300002)(7416002)(2616005)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1VCqKIN5Qe38vXeJHZsFd0kTuCRuM1MqnhJWzxlYQ3CBqT4ZeyHwISDd4UuI?=
 =?us-ascii?Q?eB3MqXlCHr0Sq+Hr66eOVHO4zP4rBhbDe2Bl8ngWOpt44ERpuiadtZ2WLXWO?=
 =?us-ascii?Q?PbIDQeSWpKd9SxUKgoELtkya+VcgAnDlpgyJRbHBJOeOvBhpK02dP1XuIYx/?=
 =?us-ascii?Q?v/yvd4i3DMQ8z/ISyUGXe5wQK+dz7MsPZiPG9FYL8nXTR6bb9rrCqEQxOVwd?=
 =?us-ascii?Q?uTnFmH1dcy3o2OhaNf6L1QmbQsSTg6Ydh36lXbqfw1Ajrgor8Y7G+99Lj2La?=
 =?us-ascii?Q?udzNrBB+HbIDllCIVqcDVKnkNwBVERB2WU3r5gt2hcN0vNAwtNpuqMqdmKQu?=
 =?us-ascii?Q?umEBiFl32Fk9LyljHb4U/neGLPtPt8AoCGmbLPFU/IU0j7wOhnMFhA8HpVls?=
 =?us-ascii?Q?30XOAm5c2uHnDYnMcbZQ+dnP3RWeyoywofyCkqEaCeKJL1/u6E4Z8aIe6eFb?=
 =?us-ascii?Q?IaPSA6EynrDoFA/xprRDh9vuunaPmEyjZFb5lyopYokPMdltYcFXhLqDmTfQ?=
 =?us-ascii?Q?SclmKL2EBqwMtsfPg0bHqtonegKfGDv9EOiEGJMSfO3VCgRbcNiKyQJ4R+Y0?=
 =?us-ascii?Q?RSp93sJf+B/7WJ/Z4qVqOqwvrve8C+2JmevZp2kGpptgVhKJWdTPq2jKXGeW?=
 =?us-ascii?Q?Ka1PoUjN4TI+kD/H+vdaCKN98uhAbEDzQwJhis1PW4AFCY3DxR9JFS3LNwnP?=
 =?us-ascii?Q?yBwtfcKhlzyqNPKIksNMACgFUCIEBCVzaAz6oOyVbPkW7XXnzZLPQfDy56xq?=
 =?us-ascii?Q?O9EBjH3KEqIcxVNZRULC3Ez5VBCDCX8ZZB0bAgiQ/Q1u6USF4l/HijbCocgZ?=
 =?us-ascii?Q?1bEhDSbvyFFN8YLDiSMseu8itppHm4hwp/bAv1ba27+z70GPBLAfe2Bdla0R?=
 =?us-ascii?Q?gSGYFOwirR6K2HXND+bsDy2hwhRoLK8+jZWpqdBZtwVQXwUiDkuOED4LULJa?=
 =?us-ascii?Q?6ErjKNS57QqRH6+KrVC6CoA25ECSsYxkahT2mKHkqIpcJBDLQEE99wi1O1/y?=
 =?us-ascii?Q?UzYxzr5Mq//jkadpAbvKAcFcpCfQFYyknMQJIMFRMPso1CBZXhlPASlvrmRQ?=
 =?us-ascii?Q?eXaVWPqmIHZq31w/1OcJSo757jowXnm95lyiuc1bQ9+dI9ehtOhVQwEWuw7G?=
 =?us-ascii?Q?edfXRljwdySIJfQNeo0p9VC2V5KhVTJSOk/WgsZ9OSDGglMDeSnCjb992edm?=
 =?us-ascii?Q?cbvc9nbnEXrPAJs1WaEFjBUP8peT9of533eoYR/Nq8474reZjgPjIIA+6JVy?=
 =?us-ascii?Q?y+Aj/3TzZKt1SGgtvbXX9SlwtJAW+CXmp++jQOxtQOl8NT6ncsEtcVsR6w0q?=
 =?us-ascii?Q?w/MS5C6/2O8k1QfIhN9vJfQwaer7VQs04QlgDqTqaRpzf0w7R8D0Z2bhTtE5?=
 =?us-ascii?Q?r1tugm2FU+8HEuDXUF7/nOSk26lLpzF1Twc4jVCA5+X9UTygUvwToojwVwTd?=
 =?us-ascii?Q?PYuzaQITV81DRVbfVwcUHU4Y7wEtrXcAPxSou6eqTEu2xVugz1bqFsM7jagT?=
 =?us-ascii?Q?BetQiQVCM7t/BkwLc4unvo4WQfG8jK9KTheFFP0vxX+budwGoRQnHQf+14SB?=
 =?us-ascii?Q?H3MHyzK7P+bSCce2YtFqIBawnRjCjZUYP3Z3ReOXH7ZJZSbFNw4O0wVumG7m?=
 =?us-ascii?Q?EXjCsmzI7XoeGlt4UHrtPXaVw8qNps4VhtSihArZ7FigSs8XuOm/q70IKAsQ?=
 =?us-ascii?Q?vA3iHg=3D=3D?=
X-OriginatorOrg: in-advantage.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abd032f3-e279-4035-8135-08d9ffdfeffe
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2351.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 02:12:32.1671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 48e842ca-fbd8-4633-a79d-0c955a7d3aae
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ei++bfjtVQNJ/ETAQ+jjfdJ7LMxLxv4JgMbyySDTZ9aDyWgdzIb2+PXDEqMZpUwMsk4MJFCKsa6tW2Iss8ay9jUlJsehhMwJUlcBaxK1Mvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4553
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_181239_077717_5E42F98B 
X-CRM114-Status: UNSURE (   9.02  )
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

DEFINE_RES_ macros have been created for the commonly used resource types,
but not IORESOURCE_REG. Add the macro so it can be used in a similar manner
to all other resource types.

Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
---
 include/linux/ioport.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 8359c50f9988..69ecf5cfc277 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -171,6 +171,11 @@ enum {
 #define DEFINE_RES_MEM(_start, _size)					\
 	DEFINE_RES_MEM_NAMED((_start), (_size), NULL)
 
+#define DEFINE_RES_REG_NAMED(_start, _size, _name)			\
+	DEFINE_RES_NAMED((_start), (_size), (_name), IORESOURCE_REG)
+#define DEFINE_RES_REG(_start, _size)					\
+	DEFINE_RES_MEM_NAMED((_start), (_size), NULL)
+
 #define DEFINE_RES_IRQ_NAMED(_irq, _name)				\
 	DEFINE_RES_NAMED((_irq), 1, (_name), IORESOURCE_IRQ)
 #define DEFINE_RES_IRQ(_irq)						\
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
