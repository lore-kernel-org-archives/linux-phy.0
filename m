Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4D93C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Dec 2021 13:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7gmdmIN3rzmapNio3hs38ovMxoCWAGQ3B2oF8p88wGU=; b=CY3rHgc2QhP2dt
	smusAtetGFkzrcWQ/7P9ZC8UFMjnFL6F8B5ls34fFVLn2kviZ5dJQz0Pf2oNFfrzl5jXC4xtwg5u7
	UL3+V+moYJkWNW8MoHsBwQAndIdvCgzdQQczgRJeJm74mFxMsFjakbCEKp53gufMvd0pZL6XD81vi
	vk7Vq/gOOwvvtNsWfKjITGI8ylxMH7KbrE3yO8jgovb/T71kJc4J+OQe7WYiq+YlfYMwyKCaftAz7
	xbOddNaXt/ko2EkQiCk/jW6YepBjgaeQSFVjwa/sI4y3pq4DFZffW7qHFZOEVO+3AlG6sK1WuWSiB
	Kl/1cnKfYDDr0D1wQPwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muaLt-008eXZ-BC; Tue, 07 Dec 2021 13:17:49 +0000
Received: from mail-sgaapc01on2097.outbound.protection.outlook.com
 ([40.107.215.97] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muaLp-008eVU-Ir
 for linux-phy@lists.infradead.org; Tue, 07 Dec 2021 13:17:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VVaC3Ji1ZdRnCAySFIxxTujzlLptEQx9pKpubOEhCUw4ms3NBAWivu8vCI3PnlQcwIUzoHyq286bUzSDkjEl7MlvZdz+5/FZ3SIGnOgdm88L7zTFUoOtJlpf0MBwDM6jxJLDV9jLyaY3niKizGCWGuEJ8XTVw5kbMz91PJnfTBzZAT7Ji0n4xwGuKU3ttPlNGDAL6/+bvxZ655blfJeg2qPeurNU7eFhvkrgOnBupx4c4CxCSwKdOh8pCabkcGShgV4q+GSzBU2Wgm9DGYZNJtAWttupZApSrL5Tc18DsDF65RmnWKhQc2jqE7r0xilPNXpb6CaJMNt37/2vcKZVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m1GDlnY7IfpFnNw0jNn8VhT6LUH/gB6+/cDJWwwOoyM=;
 b=Q7w5OKRDYKWcUe96fh5qIzVS7yfyd3ViTM1hPyCVdi8RB/bzRq31OrD3TOdqgYFCKFyiVtLr3ss8wieU6CyhoesFEFtEnUec8b8TAGzHFzMzR7O8tNDnHkqXfe/P/WMghX0BJ79mVAkjcjuurlFfuggLtitBVOBWjh5UUusiFPkh0QBUppVYipqfX4MR2qCH8N+pArDRnYCT3LSr/XxVUVi5u/GA/iW/gNM7kDGcDpVPy3oLiuqCWMJLU8cyy/c9J+A6nsIMjjl5+FMFT4IXWw88voYeyvMVAOhrx6V/VP28edTzfGiDgj9dOJvGGKdv/u6ieAGxreItgvOt3nwYVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo0.onmicrosoft.com; 
 s=selector2-vivo0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m1GDlnY7IfpFnNw0jNn8VhT6LUH/gB6+/cDJWwwOoyM=;
 b=L+UNmIWTe0YnCsjp/6E3rVxm7wWVWiXkWlaHmQ6ocV1Dd+ZMc0Txox6zd18DgGbKnWhQBZC0NpH7X/x0hF4216t/t+4ElaplJlN5kVib3b2sJ+kgxGlonjKJBI65WdQYJrLfxGLF15I7Nf3XXMfov+VPjzZVLKHKCCf1liL6Wdo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from HK2PR06MB3492.apcprd06.prod.outlook.com (2603:1096:202:2f::10)
 by HK0PR06MB3138.apcprd06.prod.outlook.com (2603:1096:203:8b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 7 Dec
 2021 13:17:26 +0000
Received: from HK2PR06MB3492.apcprd06.prod.outlook.com
 ([fe80::8986:b885:90d7:5e61]) by HK2PR06MB3492.apcprd06.prod.outlook.com
 ([fe80::8986:b885:90d7:5e61%3]) with mapi id 15.20.4755.022; Tue, 7 Dec 2021
 13:17:26 +0000
From: Guo Zhengkui <guozhengkui@vivo.com>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM SUPPORT),
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
 linux-kernel@vger.kernel.org (open list)
Cc: kernel@vivo.com,
	Guo Zhengkui <guozhengkui@vivo.com>
Subject: [PATCH] phy: qcom: fix bug: application of sizeof to pointer
Date: Tue,  7 Dec 2021 21:16:42 +0800
Message-Id: <20211207131642.5313-1-guozhengkui@vivo.com>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: HK2PR0302CA0015.apcprd03.prod.outlook.com
 (2603:1096:202::25) To HK2PR06MB3492.apcprd06.prod.outlook.com
 (2603:1096:202:2f::10)
MIME-Version: 1.0
Received: from guozhengkui.debian (218.213.202.190) by
 HK2PR0302CA0015.apcprd03.prod.outlook.com (2603:1096:202::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Tue, 7 Dec 2021 13:17:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 80e1a193-ff86-4bbc-df72-08d9b983e98a
X-MS-TrafficTypeDiagnostic: HK0PR06MB3138:EE_
X-Microsoft-Antispam-PRVS: <HK0PR06MB3138FB7D4B8A868FA86912D7C76E9@HK0PR06MB3138.apcprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:475;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zvjaw4cxWjz0yjbIOO5UCwzDHDMfTqDpNEC8ayFlXc/Rn/yhvNVkDqbYwnAYgFhcjozr+vtFiGyiQWhjmBXdzaKLe68Ybl/u6eaNVqQjp0xJxcw41EA1Eut4NakkZuyIrq8o604TJFfRW5KHS2UVlrxPNsJC3TEdeyIzQuse0hwWbioPrNTs52i5dO6Rc2Lr2VcHzwwR6gXb19uNVBBRY+7iZzZRPVF3Q8AmO2L8EW/GsmLL6mb2TR31xEuSYmZy04mpjOP3KXNJQDWp9ghlmNnhMfceUlssHEuHsgMuepRnW+lzLmDkHM4Usc2OryrK4jPdyz6P18eXsiyix7OI0tVYec9mSijKMxUOQDRbrUOgBZYiyevBVu5jJiG4DY6NJsPhJrk0yKwAmohovJJSwmnwbFDQJC2L/j0ZT8jBwhbuy3wnBYSwPY1NMTtNiKwdipFi/08jxHlpr7gha3eASzG0IzUsmYUTdtKQ3ZZyWf+qlcIWQ2Aqml64K4rJym8Y4APivsGrjJQnu9UwEwR+wwEMaWSJknXwxsM1akC9VeB3Km0Fk09CI4OB0ElxdLqhxn6jKzNwE0tze+BSyXzpY3oeMy1VqVjsZa2GMBDWgSV8B//wYVzX6V8EQHTyeEWKhT4P0RFi/PnINZPJXAisdkWQ6Dt7s/tvzINiGqxWlBHntybXnsFoFX+P4A7ehAjb0jbA+KydZjrRBANTc1Hbqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK2PR06MB3492.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4744005)(6512007)(5660300002)(8936002)(36756003)(508600001)(6506007)(6486002)(6666004)(66556008)(8676002)(110136005)(66476007)(26005)(956004)(2906002)(316002)(2616005)(66946007)(86362001)(38100700002)(1076003)(107886003)(186003)(38350700002)(4326008)(52116002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8FOnoUFy8oyj58+wixWig1ZD0wZkWopK9BuzHWch4Nnget5wxbGom+WJRvJ3?=
 =?us-ascii?Q?kn5DP1BxPQnOTlIBOdj7NdwSfiptHrL9HyGRCuxmXejaIy8tzUZon3kLhgtM?=
 =?us-ascii?Q?W4eg+NGjY9G57uN7HUz5Fnf16NEn0CMSnkjKq2kinhbw9hf9vnTDcXacz2vq?=
 =?us-ascii?Q?SI3byAijFjIRLrQ2KbsfC8x1hN1RiLTsq1ZPYCdRvKo55+JiO41svmSMRndD?=
 =?us-ascii?Q?6CdjXOgbfWYHZdeoI41h2XhAYtd5tHDkpmQMxes/uqlDMNU/M+DH8rf5R9bq?=
 =?us-ascii?Q?WR8bSIaUrlUrn4fwbSwTjaVc6fe0sAznadjU2KIe8Jzdj5ZWSYpkd6Za/kJt?=
 =?us-ascii?Q?Fo7VWPuDx78BXgaFEt1BCKvFXOeywzeAmGoxWf7bmocmYQzzzScZEQLOI2md?=
 =?us-ascii?Q?mWrIBkf3mFSllOalD/01LsV+2ACKuWn7mNNWeipjV8HP/xiJjC2tuKSawvT7?=
 =?us-ascii?Q?pytJ/7BeAb+jxgSS9OxW26wpHh0OjnLRRH/+pzr+6zMdC+wWfkkT6vIwSA6u?=
 =?us-ascii?Q?URRWqKk/PGirEMuH5vccp22MIb/wNOQq1vJbRgi9X7B7LyNg+EljuX+7kJUw?=
 =?us-ascii?Q?k7HuGZXWAYbQlumtKOdL+AeaPZzSuBkrReg4pT8LF7fY3fj+46RLhR17M5kF?=
 =?us-ascii?Q?mcH5Bu9gU9t1vqAJ/cHD2pmhnbqSSpoRIr+s2ClaDaNbxEsdRQgLzuzv5l5o?=
 =?us-ascii?Q?v9upXsmG88i/XJB535KBvOEqj9MV/KtfjG0fFrsNYELaaxfJdGc0Nd4PM+NL?=
 =?us-ascii?Q?D94x84bSN6Rd3AiW7VIDjNkkwYSSL66ZLkjm3pC6LAfFlA+z1/OWpJr0IfAo?=
 =?us-ascii?Q?jmy0c7DlCIWt0oop7rmHWYvn8jSIv3Dm95+W/ySQULidufDnACPIfgjp5m4j?=
 =?us-ascii?Q?V+jdpzSSHySFrs9kcxZJ7IwSwAzq148EYzw/a7rgKy7LPCczz5vOTPe5O8Zh?=
 =?us-ascii?Q?3wTX/uqigMQBurHURUk0hpjM1PObfxiRShq34zqYApbxjmzGTLTxwFy6KkXY?=
 =?us-ascii?Q?d8FzzuxCCUKOGjz/17b1cVacfr8kSV5tb/ixF3gmPQNtLdxTZX0VAj+RG9pa?=
 =?us-ascii?Q?69bs3uhj2Ig5+YFqiMLzqUAdBT0WYwaZPYfC2Kd4lPnKw5pHUuCg0C2npdYQ?=
 =?us-ascii?Q?XOicUELaMG5D83Pms2Sqv67Wcby9coPkMUVSNDyyjcu3PX90tSEC+us2zW93?=
 =?us-ascii?Q?/v1XKF1+96Fh+XACFSObVuP8zJIUNrAaVkftNIL3Fhcq8pD5ir1lnihD5WlE?=
 =?us-ascii?Q?rE8+CV2hT7BUTA/ElFwom0025vkmoUk3iCcEb1idQvLS2uc2aGO5xr1bvLDD?=
 =?us-ascii?Q?RpxUp/ehdRlF2Cac4HNh83O/I2MKxer9e4jbl1YL7UCLLu6NXwWx59fkB4HT?=
 =?us-ascii?Q?zQQoZP5WeQkA+6NM81HBngOj8rMkT9zaeb0okXDH6vB70iaMgSNON+jRJOAG?=
 =?us-ascii?Q?Mv+wPgcLcQxsQPLEt7CXJ7KOZYNBp2J3RtSZ4SPexGm/v4iWoV77uqpinWDW?=
 =?us-ascii?Q?8AKu9T4J+J0CAI7QuTsQilmoCoKeK2dqhOxpxDvgKxbU2nwnFHIXixlTwgo1?=
 =?us-ascii?Q?xYLCSVo6QJmPbUP+QOkWfIUobzoG9k6SL1udmYH/JlrGDSfV2NHJBd4NZ5+I?=
 =?us-ascii?Q?MeU9orOImcmed/rDZQnnrjY=3D?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80e1a193-ff86-4bbc-df72-08d9b983e98a
X-MS-Exchange-CrossTenant-AuthSource: HK2PR06MB3492.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2021 13:17:26.2495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /dkN/Ff5MLg46HERROkeZ82vlQfCIW9eXrAHf/3jxYAeK9ifq2ejB9uW7EID/3ccSDCFyUmbYG98uu5Y9mEVSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR06MB3138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_051745_667714_A13A73D2 
X-CRM114-Status: UNSURE (   7.99  )
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

Fix following coccicheck error:
./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
ERROR: application of sizeof to pointer.

Use sizeof(*data) instead.

Signed-off-by: Guo Zhengkui <guozhengkui@vivo.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 17d5653b661d..5fe4eab9cac1 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -571,7 +571,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 	struct clk_init_data init = { };
 	int ret;
 
-	data = devm_kzalloc(edp->dev, sizeof(data), GFP_KERNEL);
+	data = devm_kzalloc(edp->dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
-- 
2.20.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
