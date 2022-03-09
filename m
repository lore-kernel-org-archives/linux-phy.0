Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43F3C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Mar 2022 14:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04HyGsnJN7N5LdwjJD/CHjETnSAtAmW/8heBJL42Vkc=; b=tlMAn7uzxehaKE
	NzmjtBO3Lrc/DwCXSSiHSETN+NG+BxDm5DhPsfsQPJS2kw5U5O2fxeWSg6QJXWqC6ZEm1+45xPXA7
	Q4wnpjAxLMnzihLrtKdq6XR9jnUOEt5otVqlqMQ2wWVNinHKlGvJqCOcULWFIE3KjoodfnlHN7bij
	hEgAHALIaknw0m3Ggt7ecpmaVSXWlBvd1zc/9gcQ+WIAlYa79RxEwOGkGfS7Gmwu3tvezZx7jEp33
	Jx6SRdQ52LFtlb5dnvZweaDh6Ujsi1NY2IGMmGBn23HL5hoOv56ctXU1AYMkU2wf3ZZxxJWB60wCn
	8qBcYi+629hSbdQpzNAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRxSQ-00917E-QJ; Wed, 09 Mar 2022 14:38:30 +0000
Received: from mail-he1eur01on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::62a]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRxSN-00913z-1U
 for linux-phy@lists.infradead.org; Wed, 09 Mar 2022 14:38:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IU7k8iB56YM250avr3TIYWG0uQTEu6F6lBa8Tzx06PsFrwaSK6EgqOyYhAn6hJt/SybwYcp6RvPLeqWJ5wZyiAPZeeZbzgHzyuqVAgvbb1JuYfH3V9I03GQzXeuAiu3hxxnmyggeCN1DE4mFimSMFOKkj/IRtVwPHXtQEYjR3LoutvQNyuDJWd8O5wsjIdpfr/KfJITOroTuIG59/72MdtkWwANDu/44ZUzHwQyX8q+r9oWW13XodVFW+uSiGPGyOzdxr8QsyH3dZKwr+fum2met7Rqi/aZfR9YHUREEoYUVJ8LZbDieb2Wc49EzcSR52q4KxWeBxpdohnpWZ8HaKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tO/kRJD7bEAKhxWaAZ0Ql2B+wW+lUHUVDjmD452KiP4=;
 b=X/yjTiymbAF0k+AXg/8WUOoIkK/fJQ868O5DX7ZyFVwW5yjW0M1Tt+V78t9EeDDfk4lfvAkZYxshfxrHvFxN0ROPMrh1zk+hSmdYIPd8M+gehfTUAN3a07QcfojFw+mfG1FRXCbhQQqAsc63Veg8ksxbXG03jeByR9heAIHNSY/9ghzscqbY7oM4yjSwuYb34dHmeSHVuIq3+AnEi1MuJFUY/H2qgxRpMeXwu3AhZ/npTJ/P8ugxzGx+DSnLIgXpp1yNZhuMJmHlDwuIrptMkJ/7DDSnsPU6ywucBo8aK9XO4F3lukpFTt+YoOeZMHE7UJ2LCtJfNM1gXNWjf/aTyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tO/kRJD7bEAKhxWaAZ0Ql2B+wW+lUHUVDjmD452KiP4=;
 b=N/rNtTAaEzFZoplXZO/vQYPn8bHZdo1CpilD/VmO3cFdTZ9ARHl0girJHkIrAqonDyX8f+I+kBxzMIw/AxVU91M3cGufWBKQ9M6cO70gx0V7IwN/zjO1Fubsa64zJv4LKKdbDD5pthKeVh/v8Ga+XDxA1XXrEBritMUTY/yyaSY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com (2603:10a6:20b:436::16)
 by AM9PR04MB8129.eurprd04.prod.outlook.com (2603:10a6:20b:3ea::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 9 Mar
 2022 14:38:23 +0000
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579]) by AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579%7]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 14:38:23 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	netdev@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH net-next 6/8] dpaa2-mac: move setting up supported_interfaces
 into a function
Date: Wed,  9 Mar 2022 16:37:49 +0200
Message-Id: <20220309143751.3362678-7-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220309143751.3362678-1-ioana.ciornei@nxp.com>
References: <20220309143751.3362678-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: AM0PR02CA0187.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::24) To AM9PR04MB8555.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1fb66cdd-ca7b-4dbd-a6a0-08da01da7674
X-MS-TrafficTypeDiagnostic: AM9PR04MB8129:EE_
X-Microsoft-Antispam-PRVS: <AM9PR04MB8129E12622D1E02D8BA5DC3EE00A9@AM9PR04MB8129.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 33668CGSz5HzOpZyr4jFIDYYgxw+QiBHW3GmraHGFM+milgiSp3QB9iJ5FQnVgDxelG03huAFU7v8xgBlvKduslhoUXBRn0BqmeVjzAXquzmXOzsRcMjNyppjXI6sSmRUqwKPptEedgDThlSMO/Wg1RYCNYLXHBk/P22CV1CroL1it2CT7V4ND7I9nbSAoNsNbC4WdyzYF+aZplB2aA4OYGxq0RRPn3FH/k2J/LylV9jEvjeBmPo+S3Ho66Aq856vRryn/3Qt4jiCEl8ZHjjuB1unOaoItSlZzG79uydAA9xvjtVyvfcUI6oPrtwdIcxbgaaGcHhy530Q9yCEEpcJjNjj6QCjBqEF6ov+K7qBNLGauxahcxActi3Hj9g6z/Et5uqk8mgwFVjueD7Ucvss6NuKy16a+pQcmETvwxbc6ST+PertLdYt4dyPTavIjpBIw8Em7VXnfeNm7fOFLt+8qJB7PkB2vzAYug8Iw1vsGTnAKEO8FI6sRf3wL+qvatTJhtVCYQUV9ri2aZhYSvQIP4SKhTRczK7QISYlQ6VCbyGiD2PmWaFkHM0xzCgHCXe5cFltxfksYGeI5d+7sqdV6Ev9KMQRak6zF/I9kkvxjOwvil4OXFoeuqyjlT8nb1y0DKbaoHDQbMxG2E00aVNwH/yMrB6w0OH+GVLaMqNEHlVtjOOz5Sh2iV76SyvyLBkMTZf3yS/mUOEB+3LP0dH/A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(6666004)(5660300002)(2906002)(498600001)(26005)(1076003)(6486002)(2616005)(86362001)(83380400001)(38350700002)(38100700002)(44832011)(52116002)(6506007)(6512007)(186003)(66946007)(8676002)(8936002)(4326008)(66476007)(36756003)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uXw0v04eoIR7+WY+2nz5AWu4rH5NoLpqUEXNzA89NUhylEF3TJ7cdQlJR1Eh?=
 =?us-ascii?Q?y0Dtl2ufOpv3hJxKi86aCVOr7Cg8ZEsn0V1sjhFvzT1T55zX62d1DXV+RMxQ?=
 =?us-ascii?Q?vlurhr2IquQDLPHkw/zzvhs6odDdZZbllcBSS4NyAtolsqdrZ1GH0rUyQ6r/?=
 =?us-ascii?Q?coqAC5fPaFxJjViDYc0Qi2ZaeNrgofQRhMPDiOy8EZ34AhcsikdvUiv08BVt?=
 =?us-ascii?Q?gwHAuAJcNUtZj8Ze48zOwWFfc0rRU4nl/NI2Ky9tjx6xwe5hO9UHsJPT43q0?=
 =?us-ascii?Q?x7WpvWCUM+6SfoF/SStfiPwSRJ4XqewkjIcXpbAaMatvEGNm3wmF0EpmAq12?=
 =?us-ascii?Q?31LrSOI/Fckdp3kQiHf1yNJJ9V+URZQtZrhhoF/xQuzQJte0eI2OW4x03jDe?=
 =?us-ascii?Q?58Hvktouw1Q6T2KGXqlBRyJ29lFdk26mBs3Uv9efmtUjyZykhrwakIlyNql0?=
 =?us-ascii?Q?SEzLdbN0GGIyY90bj1A9zn2xooZyBBVR5/kQ9uBmGtb22sbGGHK4Vgf/OVnz?=
 =?us-ascii?Q?d17vMOB9l2zEtv+zMIfkyX8P7WtyPQHpGYFveSL3BFcSIr6sn5JrsbOkZZw5?=
 =?us-ascii?Q?+M0O1rZSZ0WPkgM13iNI0pLo5eMMUSzXaVwokcF+vxxKhwLvyMUrC8S/7cXQ?=
 =?us-ascii?Q?t43kiK6OHSJlasdMfI66sUwamGHq7WX2qtOeI+376OInud56XpgSuC5/xg49?=
 =?us-ascii?Q?h/Xe4cMhwGjz+bss0/dIu4u6r2IF4tWUfvsCZI0Of9yNbCmNyiMs4Kyocy3A?=
 =?us-ascii?Q?9AlPx7Q4XcL4olITvXhfrxfruHTDqX6Nxi/n5E969ILE6JjeVLzQDMknhyMt?=
 =?us-ascii?Q?Vvx8SZ0gHITfE35jXOqAM8onIxcMIubQCr3WcRwJVtyqwqY+BDMrW7obCCMI?=
 =?us-ascii?Q?auVCTAWlrz1gxaRRb7wD8D5TvhW6EhL58VkuyfUdjjv4HeeOcOKIVh5nKVmM?=
 =?us-ascii?Q?8mMJMyamb8YVgCnL6oSQbQ7jhZi4BHFCSg0PcmUUL6QaVYcjAKEE3zFRN3kR?=
 =?us-ascii?Q?ugzQEPGgCN8snHx4xa/6ebnMGs2whM/rPDARy2u1f5TJ1DVKSfYDfGHORmLf?=
 =?us-ascii?Q?deDqGyKQYVBuPLtM34PpfGNgTuYgFskUoK1q6qcp35Fj1nUquc+3sRS1exb8?=
 =?us-ascii?Q?66ygtdLmHiENquYQV+e03M13zDX8Q8pFL7nHqs/cNZYPnAmTEFOsadABZmoG?=
 =?us-ascii?Q?r54ti5qucNd4JMfwXxf7qtoa3PFxFP1YF4m9Lr5PjUsaM6Uh0S3kZaMeHNR5?=
 =?us-ascii?Q?6gcm3w5SdhgkJHDgpyx+9PO/f9KbM1WCHyep+C/nXVF+t0X+cNQ8gHUKPVRm?=
 =?us-ascii?Q?4jRAI7hcRDJ0a04ZvsDT+UqzS2Tt/lLDAPXPVsgwmgj/H6ezFtFptMCNwpzo?=
 =?us-ascii?Q?RlFXtyIAe6hyXpoaFEpVq82ghfNiT5HC2TdqmwuhkQH5q502fiZAvpGfp7TV?=
 =?us-ascii?Q?/nTvrPUJ1CuhT4sId8179mYUOIZmcY4rJikvQMQljRK4ezAxAFA0F7g3gHAo?=
 =?us-ascii?Q?ozp+moKRDicJ+4YWwocGGm8DVLZtWNXpU1HxVV8FdUexUIgRsAcDQiGB0He9?=
 =?us-ascii?Q?PKkeGs2PfDr7gdWrJK0MxnGpWB/Mc+29d735CaamaYJw7wdbayfRSGMTTihG?=
 =?us-ascii?Q?1JbtW9GJWvJS7ys73XSgkls=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fb66cdd-ca7b-4dbd-a6a0-08da01da7674
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2022 14:38:23.0075 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0NxumsSDO5RHojZFESR/GklqCdjm2t+CwRSEYj93+qea1dFFuo+FRnw7NtnGAxsfyEJL61LUVINudfZtYe8FHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_063827_135729_C5F6356B 
X-CRM114-Status: GOOD (  12.87  )
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

The logic to setup the supported interfaces will get annotated based on
what the configuration of the SerDes PLLs supports. Move the current
setup into a separate function just to try to keep it clean.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  | 43 +++++++++++--------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
index c4a49bf10156..e6e758eaafea 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
@@ -257,6 +257,29 @@ static void dpaa2_pcs_destroy(struct dpaa2_mac *mac)
 	}
 }
 
+static void dpaa2_mac_set_supported_interfaces(struct dpaa2_mac *mac)
+{
+	/* We support the current interface mode, and if we have a PCS
+	 * similar interface modes that do not require the SerDes lane to be
+	 * reconfigured.
+	 */
+	__set_bit(mac->if_mode, mac->phylink_config.supported_interfaces);
+	if (mac->pcs) {
+		switch (mac->if_mode) {
+		case PHY_INTERFACE_MODE_1000BASEX:
+		case PHY_INTERFACE_MODE_SGMII:
+			__set_bit(PHY_INTERFACE_MODE_1000BASEX,
+				  mac->phylink_config.supported_interfaces);
+			__set_bit(PHY_INTERFACE_MODE_SGMII,
+				  mac->phylink_config.supported_interfaces);
+			break;
+
+		default:
+			break;
+		}
+	}
+}
+
 int dpaa2_mac_connect(struct dpaa2_mac *mac)
 {
 	struct net_device *net_dev = mac->net_dev;
@@ -305,25 +328,7 @@ int dpaa2_mac_connect(struct dpaa2_mac *mac)
 		MAC_10FD | MAC_100FD | MAC_1000FD | MAC_2500FD | MAC_5000FD |
 		MAC_10000FD;
 
-	/* We support the current interface mode, and if we have a PCS
-	 * similar interface modes that do not require the PLLs to be
-	 * reconfigured.
-	 */
-	__set_bit(mac->if_mode, mac->phylink_config.supported_interfaces);
-	if (mac->pcs) {
-		switch (mac->if_mode) {
-		case PHY_INTERFACE_MODE_1000BASEX:
-		case PHY_INTERFACE_MODE_SGMII:
-			__set_bit(PHY_INTERFACE_MODE_1000BASEX,
-				  mac->phylink_config.supported_interfaces);
-			__set_bit(PHY_INTERFACE_MODE_SGMII,
-				  mac->phylink_config.supported_interfaces);
-			break;
-
-		default:
-			break;
-		}
-	}
+	dpaa2_mac_set_supported_interfaces(mac);
 
 	phylink = phylink_create(&mac->phylink_config,
 				 dpmac_node, mac->if_mode,
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
