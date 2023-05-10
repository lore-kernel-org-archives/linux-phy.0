Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E29D7C77B7D
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 14:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sanPNTDIzvILNryYoqLuIA0eEHbmkHgoTHXo3zNxqzQ=; b=IJNoqh73cicAGL
	slDhS+wrujxtMBNTOCyMFYsjPgWts2UCZq2xR018l0JCgyB/aGb4QK83SD10vDEh/Yq5GFFmD2hna
	o2UUFGjGCMQAOM5vtLLcRMy0Ca2EXYlMZCrtSDS1ZeMoYrsHykzG9h9P22gW8YbafDIP5/VBUGymX
	IG7bz3yQ/AFsMZ/FDKNuaaexF0qTHvJH4c55UU8RAcpvm2NXZ3T/pysICLHzLHBGuWFZ9uT5NpGGX
	WddyARDsZ7DtGCXCm0wdPJMZFgCqVX69U5pnwNgw+m+etfrhyOfOcDiG6BuRRxFBIxKjxy3+s1g9j
	NlV+DZ1obh8Bl/kT2L9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwkRl-006JIY-1s;
	Wed, 10 May 2023 14:05:37 +0000
Received: from mail-vi1eur05on20631.outbound.protection.outlook.com ([2a01:111:f400:7d00::631] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwkRj-006JGa-1N;
	Wed, 10 May 2023 14:05:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLBAHp8IoiBtuxohW6OXbTR30xWgXAyaCqC0rUnydi1yaUStA9qPjmrJtnIcFTZ/jqbPgzsUBK3tp8qkeBPWldRQXSwOp+WCloW9FIHewvseScmzKtQfznwYi4ZVzqo2Orq88n0Y3PY5HaMbycRRMdb8gtlVp0RC4M5D4p9gJCsxQZK8Fh8QHvJjITVYOX/aFFhG7GnQPvJGpavbSSwdT07mtLlRjXIoyFt1kUFdz+ope6fbt5AbmXJ+NxTGnZGKwS7PqFQzJz5ed95lvzBYw2sTpx6zBUE7WwK4qzUrUCwUU8xmWE/HZkfuLp8J7fAH9Gkx0L4I1hQhPyPCfbHgfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/A6/iwYekT+cUks8Yj56mW5YoG/k8LSSWRsxSo6nq4=;
 b=SMf5se3PkQHQR0qADNphlG2VnDdPH26ccv75jVGBdoCEgLGzeh26Jy1/OZd0oBh+XTH8rbT8MpNg5rSBhPrXNINIxebsG0cYT4OypsHaSwiqgn3xkoK89B7wFjLts3WilDOJGbaFYTVtkaRWsYO+O3qZp0Eepz8okg/aOq8v4fVj1i0g2xfupxFYImzwNb9ZQDIROo2s8Ouf7ep30Edh+JffKOlzAkJOKyfaf/zcb4dajGgdGdHD8wI8vyJso3n8EoXEb9uHeZlAPwo/Cu4P0fuE81yAMQR8ePR/zS72sV8UEx7CiCq4m+iPIvRbzE/X4Zkwhfp7cHJSUdJNcNX4CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/A6/iwYekT+cUks8Yj56mW5YoG/k8LSSWRsxSo6nq4=;
 b=H1w0Pt5Oq1SgIlQwScm46u4yMnT5djImPuOogfsrBQcnIPywELdwexee2L5nNg2IRIFR9GjiShtCinPH9gtbhg+BTQ7V5nGvGe31j/xr1XZapx6JUCs0Dcc7YLPwtdJk25Gom+EMaAmHDoxgMKJf11SofeWlpkYYv1RebaDwtBs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com (2603:10a6:20b:4::16)
 by AM0PR04MB7092.eurprd04.prod.outlook.com (2603:10a6:208:19c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.20; Wed, 10 May
 2023 14:05:28 +0000
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::bcdd:75c9:176c:39ed]) by AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::bcdd:75c9:176c:39ed%4]) with mapi id 15.20.6363.033; Wed, 10 May 2023
 14:05:27 +0000
From: Frank Li <Frank.Li@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	fushi.peng@nxp.com
Subject: [PATCH v3 2/2] dt-bindings: phy: cdns,salvo: add property cdns,usb2-disconnect-threshold-microvolt
Date: Wed, 10 May 2023 10:05:04 -0400
Message-Id: <20230510140504.2164565-2-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230510140504.2164565-1-Frank.Li@nxp.com>
References: <20230510140504.2164565-1-Frank.Li@nxp.com>
X-ClientProxiedBy: SJ0PR03CA0235.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::30) To AM6PR04MB4838.eurprd04.prod.outlook.com
 (2603:10a6:20b:4::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB4838:EE_|AM0PR04MB7092:EE_
X-MS-Office365-Filtering-Correlation-Id: a4fdf147-1f42-402e-cefe-08db515f9b70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	/WIvlygWqYmLxXdGWsbTtYTTCNrlHphiXb5F7HbNsxa2mh4oKo8cQnLtZta7eLXVuWWNbVk5B2Sf0jpbBZozTy2hoSkG0coVy2m/SSYKAUdrITX7FDmQ8jSuwwbMkZyoy+55CcKlGdoCXNEEBYotrnYEDM07iBJghaKXSCKywSBTugZBgrj2zwINNIwFL5w0pybPBbjv62nsGFwIETwONGR2GZsq9IzzS5heYIOzsR80U8qKQO6UdC3jmM3dhS8QSQWejY/lZ+7zoHU28fJbRM8va9oJ4IFfpYFnccp81Y0r/ogUie7K12SC3g4L5R/HXPGqCaXSdbnUNtWZ2IfEIyOpN7W8rDEqYtkGgW0D0mF36zIF0JsTpEfU/iE4cypRvVM862JytJ9GXZCOOXIdzJsy+iUe8m0rn9HEIJraVXx2LVMQtKSq9p8jXr/hf6d/G7OaELzKgtzlhfZZank9hMOV1w+gkl8BwboT25fnjRNM/GGmqtjh8v3Zk+5w9VrX1UYWQJk9d6GX3MIIC7pKTLMjgEc8VLCSFmlGN1jejb9TSOH7LCyn11CWJCiKObt91QXexXU0j0Mfa6/A8Srt53mDZhvb9RnR542fAfR1D+moMZ4ApzS0mOrzsd0Rny+Y1f9g/eYeUoOVqHhe6xWuRA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4838.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199021)(86362001)(36756003)(6666004)(316002)(6636002)(66476007)(52116002)(478600001)(66946007)(66556008)(6486002)(41300700001)(5660300002)(8936002)(8676002)(4744005)(2906002)(7416002)(921005)(38100700002)(38350700002)(186003)(2616005)(1076003)(26005)(6512007)(6506007)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?iZiU5i0VqsMhaoV7cBRIaEgMnTU5vSibf/0OL/C95dK//zBs6hbILm3XelEG?=
 =?us-ascii?Q?aQ/pQC7YQftXLRd0wv3Qy3ptzXy7da/uhsiU5xLwzxmA1Fi+JfIH7hKqvmWM?=
 =?us-ascii?Q?wGKeSaMpkeL7VMd/AcF7ET/UD6Yd7grIpFZlNT8fP6TUl9hRJ1cXAzEyLRkD?=
 =?us-ascii?Q?D1+Xy03BZSUcPq/Df24KV9Ofxe4IlSyBQlNgo95LxDWCzq6UwRAPBVFhniO3?=
 =?us-ascii?Q?aGKmUinD4HfiPhDrnN74wm27iDiVSQX6//VlRUU9tyg83mC80tiJOd98cAq9?=
 =?us-ascii?Q?J2aF+4ROV/dNEDETWL1T6prlOI37bXVDDhzrSVIkWv8UJPwB7mejS6LHzDp4?=
 =?us-ascii?Q?Ygk4n2i+SKQJOc7Do9zTwl4aJkFs3H/2tbreooty+x/my2tnmUdWLSEF9qBR?=
 =?us-ascii?Q?NjvNbhGEqzp1ovic2RNADaPZ+Ulq82Nj5pRwUnqfXb7CinWHxkVviYAgX30s?=
 =?us-ascii?Q?2GBnK1IJa9SnkSTZPvaIhEwv+zLRMEX5ebo3AbsiXHEmg//dTlXr8vhg9Sf4?=
 =?us-ascii?Q?PIepEpOcVHf8dfpc5WwJJt6111nQeD+4imtiOxEVpwcTNemf9Gn+aIemvLEn?=
 =?us-ascii?Q?/ElvlkX/1lYdx1m/6tQJrvzeJcL+jH5t3OtPlj63rTyDiVaWeCOlRzD07ScR?=
 =?us-ascii?Q?m8gWZU19Qllvwj9BaMagQuJNIjJN/2yjgR3/zFByMYmO2grusEK/pqS8nblv?=
 =?us-ascii?Q?n94IOmDVxWpNgmXfz655rM2h524AjaHL7XFhatpDeEFFFgLEsQPlTw6D8BIs?=
 =?us-ascii?Q?uxEK/iCZP853TLhzbC0tB/N8fio98A/n0ET/kJpSMsdiMNeS2r3WxJEwlA03?=
 =?us-ascii?Q?zVMgmLVI/5XfQN3suKqqX6+0z86wxL2PUrQ1m8MMesIEY0iVAh0XEMTJUlu9?=
 =?us-ascii?Q?fQLtNZ2GS2t01po+Iviv6NkQBpWq2lPFjBOtnL/UOwJJrmXEOZSwy2t4Siep?=
 =?us-ascii?Q?WcEWcNaH1CaKByw2LCqhFmSfSMDanRDqVpOIAQeC3HNnPbuIxF2/3eBg/M1P?=
 =?us-ascii?Q?9/56yLo4Lz4XpyIiAtw8E8zR5BuMcJK/oM/SsxfJv67WsN7QrOvoRv1BC+Vl?=
 =?us-ascii?Q?MToWZytNlAGSm8eE/z3lfdflMQyQH5MluQToObd6taymOr6favGXzeEKnYPg?=
 =?us-ascii?Q?w2JBF87DqciMD27hQR+YzaR/L/oCKmpp+AR4W9xxfJBeCy6CIPYqeyjRlx43?=
 =?us-ascii?Q?6BuewTBNpp/qTEDLFSU0k2n3SJTVMV/DGPHtIAU8H8dw+8k0rp4rkHbOZqBg?=
 =?us-ascii?Q?GYD7TI7izh3BMFVVlN4PD+EeNFCnkcY27P1Gt3xUwQCwcD+AhsvZVatnT2uq?=
 =?us-ascii?Q?FwAt68MfnuHumq/7h3yqUd4RWHGoDzFwZ2/C7CMcMHoJSVb8P9wI2Nc+LiMe?=
 =?us-ascii?Q?jw/dJTxkYupRWLHCrTVR6WMy4Q3jX7y+otrt/IOjQ+VtQqNE2T+ss0ffaoT9?=
 =?us-ascii?Q?89sZYTkNjYdBfU242wMIsxVpu2QnI+sOUIGhNqb3lpHM03Fu7Z4LvDh9JJlr?=
 =?us-ascii?Q?Y7Cu0feP+ZeGdJ3cSt5tikzdWOYCtlfOujzWF3pbdFy3CMTZRJtqp8smDKj1?=
 =?us-ascii?Q?nYK7hbTBk2zXn+UrC1I=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4fdf147-1f42-402e-cefe-08db515f9b70
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4838.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 14:05:27.8110
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pEWdjoJGZov8Df5l/EeOIqlAxk1mpHs5z9WvlwoG0q5onvDVHPg31OPzzBtvf1kHXdfp1BY7RCGNQaaGrhP1Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_070535_465104_A47B517A 
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

Add cdns,usb2-disconnect-threshold-microvolt property to address fake USB
disconnection issue during enumeration or suspend state for difference
platform.

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
Change from v2 to v3
- add prefix cdns
Change from v1 to V2:
- fixed subject
- fixed dt-binding-check warning

 Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
index 3a07285b5470..ea41f35c6444 100644
--- a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
@@ -31,6 +31,12 @@ properties:
   "#phy-cells":
     const: 0
 
+  cdns,usb2-disconnect-threshold-microvolt:
+    description: The microvolt threshold value utilized for detecting
+      USB disconnection event.
+    enum: [575, 610, 645]
+    default: 575
+
 required:
   - compatible
   - reg
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
