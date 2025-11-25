Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11FCBD0E6C4
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWrcDXISISxBHk9siCwxRZgdc10xm3t+aKqrNOuWAuo=; b=dnvV8l/PqwblXg
	6Rs8dBJlIhAieNUK5mxg6yOs856E5nW7KhfVY1SRbet/+fn6JTuNq+NeaSRfIBFjvdkmYzn0FbdpR
	QCFxHRKPXqVqVb3oBExaZvvp3UshToW2wgibuYEzB+yw1WIduoLZFs7T1prjiFCxWtqcLzwuDGwls
	9sAbydeeqTcFgNnwKA8XPuM0M9e4bZp9vINCJn03GBFvZvfqlG/3qyzx6RIRfPLAKwRCsZ+NVyMz/
	6Wm+zhjr09Oc1eraawxsMbJW/tXhfQE2RrMXdMeDAWOuN2SLOk4McbPtcFz2zPbSSsBEfehyPEH7b
	UY2qUcbkE61Y1gLI53fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYO-0000000DF9v-2u0O;
	Tue, 25 Nov 2025 11:49:52 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYL-0000000DF1D-2T2J
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s49/UrnzYAvWqDWAXuMnbIip8iS2/QbXP6tq0bcUvnrf2sjJiczneLR3ArrcT65pG498upi0wo2lBvFBWeff8xmNih5PK5QI7TOym5hk8HaUgKcF+1YvvfyngGCeObJ8POkOAsf6b7A3IWTEmKojWKpiWND5y+7BlJhwMoxH1aA+JvH99NphKpb8on12UlmN5geEhydMvby+hWjWbMDFtV0SvDePbvw390LNYHx6eJevWp5t0INaq244E64rYvf4uOM5Sbo0/wugJ8pycwj2GRwHuK8ZLtaTs0yOetpvdPv/fdgnqzEcoQk0/aMX3o+bY8SBb0Sqb/pAFgESxAF3ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=87iq3XOxYCWMThYeZ/ya9qnoxU7hFZbcjv3ecm/CkrA=;
 b=bgAm+1EG59Gaqdq4Ak+6Bc9+xGBPrGEBieU15FSsgQP1ETvo1Z6vSonNwiE5hcLPf9XE6oPzM6P9/3/ZjQb9BQNCqzKezc4GE9lCatAXWk7s1GsgGDlyniFvqLEL/mK8Os9Fk7rlFmi2BJMrrhq988F2/nFBvNVucYkpKy7dWXNmyZmWEH+FodNtE0VzqW8SmE7P1AfGJ/5gKMFdy1GPvzYzlh7NIXnkGr8+8SsLWGWfnIvEUtzbFbyZtjNBak/x/8y7Vrh3Dgk59BCKEkNlETTlJ5/3pIbRxD9wZYde7NiGl4+KyAIdm9PBKnnd4wF0DoHJYoCEPNYzLs4cT0+5IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87iq3XOxYCWMThYeZ/ya9qnoxU7hFZbcjv3ecm/CkrA=;
 b=g+/pPFH3DZZdfTwJo5Mt9HZy+mj512f2x8M5GvC/E6uBjXB2kXeQhD4D/zFepLYyuAWDrTKseTkoizgvfp/EjZLo2eU6x3SBmfzRHUIxwRPNHgiKXVdcYvFFk38XEZpl8wZaOTmk+n8GkgIuI/Ico/I3R+lSOPwbqPian+YS34UrenH+RJzNvMZaZoJ/Yf4ANJODfjAGRRE1Y6dXyxL7laJpDsMPm88c6hTfFFKz8oJ/35NUQXLM+wisgL+nekigy/ZSNpA9NJNI1g/7iEaFEOEkGt8bQRP/PCFrycGpsYoEULlgGHERupLlMZ7hUzyKtw4NpNUuvMG02MPC/GYNxA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:43 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:43 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 06/15] phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg" with "val" and "mask"
Date: Tue, 25 Nov 2025 13:48:38 +0200
Message-Id: <20251125114847.804961-7-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: e1cc0282-4cf1-4ebb-4fdc-08de2c18b903
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wLyERr0X3E9PvFyMevFs58bgFUzJDxDCK9CSlPYIdjKieakt/8VadiR1DU+N?=
 =?us-ascii?Q?InYK8doklhXXM9i9IQy+8gaD89vcN0f8xvxY8pDa6X6lfQDgtAYE7NcRshYV?=
 =?us-ascii?Q?Ydptf646uA9MXIK7CKkhbrCAiHuq9UmR0eDUw+oQzmhXgJ73TOjLPR7qxK89?=
 =?us-ascii?Q?0vjgbnMH7PXgvACEBQks4oo0qO7MCxhvI76UQG+JBoMTkwgw3zoaz0pTQ2+L?=
 =?us-ascii?Q?eridUk2P37dAqoGx/3RyegAha16DQqz0uxVmJN9INMPa9oGEkq4MEpCm+8Kc?=
 =?us-ascii?Q?3Pt79x/C+CKGrEkNqgxTdrWaIfXyFZJrsKYHNsSnuHJKC0YFfBxAHETe8jg7?=
 =?us-ascii?Q?Kf+K9ZcUAXwkwFDKuIHV79h7lAy6MSadjAFALiRHMSPupjhuI9/IzH+mJYF9?=
 =?us-ascii?Q?E6vKmLWLFz47bpojx7Ia+QJSAUVJ1CpcvpHJ3RXQKVy8W4tL3I2N8iVaN+BT?=
 =?us-ascii?Q?y8FQpHH3Uay4AuRmFXOVUsAjfhMPYNc1ztJxSeJ/nX8/wmgA+0xvMySuW+JH?=
 =?us-ascii?Q?oWkDbT83pbtLzfarYVPoVTZj/eQcJ9ATxMrt6wcIUkucc85U2fnBljPd5bAR?=
 =?us-ascii?Q?k+obN260v20Javqj1Fjo4SO4O9wARmKrNVmElCnFD1/8mOYRtpeoBU9ETDIo?=
 =?us-ascii?Q?lJdnFRYlTkU9/XRP6GdAZ/TFrtJ2zKh3lfG48AWGMjSbUaviFfSkQOnYcaGi?=
 =?us-ascii?Q?pNu5DYcfRVPfN/pfAmjOdZ9kE64UpXuCGqbysPLxZZrnp+XDLeVF4gPthJhU?=
 =?us-ascii?Q?eodInKdqsPQxPEyAj4glu0greoDNXVdnLGCrr0k96gf/+DGw6qzYN5sTfCHg?=
 =?us-ascii?Q?yki7q0pW2fJQZ2/mAKIDSQHw6V/6/kY6o2c15nEUKHEo42OiDgxxZRqVBNgP?=
 =?us-ascii?Q?q17DhvMkUa4WYWjj82wj6PW/yzmdHR7Tf0nU/SB5MAGF3syoVOa8ZJYV4juS?=
 =?us-ascii?Q?axqp8e59iFDK7AnWzph/4LpK/oanyeyo2oDVfY8W5t45xl+25a8RbJo8p7Ah?=
 =?us-ascii?Q?Oh+fcVE8V5nC5GZeZy95lzoM1/DNtlts0riWD/FC3y+Ri98FhyrKBn5pK1Bc?=
 =?us-ascii?Q?zdTs21bRKNzFNJHI9x8Ti6+wHENiXTaz8iTw4DvAfV0vEoBPCYsP8humYZlJ?=
 =?us-ascii?Q?/QHD8bWT9Kbd4MRqPmv8EGGseQMUEx1B++35fesvGqMGVev2tkglrBkZi85G?=
 =?us-ascii?Q?0gmVPpGmfIEWB34QeyX56dTRb8mmQkGN6GUE58+oW4Nm7yBJ1J7xnsC2DxCX?=
 =?us-ascii?Q?VsjFilPpUEiEcEiXxwmWjBDU+M6vcmlj3s820Po81zn8+idIaqnEtrtLYV1m?=
 =?us-ascii?Q?U2TVZhs8UHEl+P6EXXMKnHh3PIqwU2CoBg5DpkNDYNAKa8XFnuH6WdWowR9V?=
 =?us-ascii?Q?v6CX9riC8JasZ47gqxtKQyxLDjZ50yUscKxdkIaUWgtlkJm43YqiENGFNMqh?=
 =?us-ascii?Q?26peiM3xWSC/SOKspy61+x7Om3+ArYUp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nMguE3tM/9tc/w/ndD7rAWyAE6W6VT2Llo/3JMdUiMw8AGr6LKMhG0t40p0z?=
 =?us-ascii?Q?UXoGGHKpzr8ZdFfFdVIl8Hql0JYCTOK3IGz+KHqArjGdEcCq7PJ9/oRDxeZJ?=
 =?us-ascii?Q?2WuHcjvhNMqxmq8ncCN1WxRE70dWUWUvY0YwZAukWy702LAkt9Kt8ViKjeLi?=
 =?us-ascii?Q?8LIQTU+yznDXfTvxXF+bM+c9mb7MCxeUljxTlGapOIHIHDJUvTcqkxY/hla8?=
 =?us-ascii?Q?atH80rkpDXRihC15073AMCScF0jI3cJ95zy2aAXDBloiYkBAok1XJq/bVQyz?=
 =?us-ascii?Q?1h03cmSLW8qU9oQ06zyCrhIdCtPK89DgspITM1T6D7oyeiOuZXXE176ohTz3?=
 =?us-ascii?Q?av+W0L06EmWkI/+HXk4vqfnHaUifdYG15Qacvjs37lHuZnB0QvHFRAEgiruQ?=
 =?us-ascii?Q?vx7RgHvEa1uLpqMeYJK0OFYCEIxotwDsaQHWtT093Qp/H+Y6WC2SwdZwUdIJ?=
 =?us-ascii?Q?w5h1vljX0tilKFe0uKG6ZkUkmrwIMXAkJFNCiXsY+Phjfg9vOfnXEZLAXpTG?=
 =?us-ascii?Q?Zs+XF094ayfcZF/tacNoIfygBgCBxn67SLsQYOHiIcaQ0HTjXvMQBqrRToA5?=
 =?us-ascii?Q?ZVEA2s+nQw7Q87FJwpHSgy9l2X7bwDfULi9bqJ2WNnGUB5j1pEzHXF1N/UJQ?=
 =?us-ascii?Q?6/U+ecEnGu1Kq0IA4I9x0SIXl7ZXVX3LmT5edufwS0HOX5gdZHhY6g/Gsw+x?=
 =?us-ascii?Q?pj+WkWD8zamGDxQoDGs7dKjHZgGqA0SrYKCMq6Cs+4JoXAOdzsPRjqPkXf45?=
 =?us-ascii?Q?LC6yu4YF+GcW2bkHrvW+SjgcA0YSGxPXheOB608zdc0TmidWyxahFzFT5V7+?=
 =?us-ascii?Q?dg2ne42sYzJOfejmkPGM/tN3R+U9gF3r4GLtRlaBTx6IXMNSK4Erdbueh1JX?=
 =?us-ascii?Q?w0KvAiPirrj4ilO+DNBE8IueIziDQNi89xVqj1S8379nTY9hMfOklB0Egb+y?=
 =?us-ascii?Q?dwReLfwlnp+ckBjujsn/tyG64SzL1txZdr6ioGqHpMvNCZ76Jku2ZJxWACWO?=
 =?us-ascii?Q?FWP6aQNhO9APCH3xeKJtfiQn+dHlmC2NqQVFdhUrOfcWi6F6qRtBy2FxW8+Z?=
 =?us-ascii?Q?Op4nP/fsNmoqGBEvxKTLlWl7CHosJ9BCLNo9095X8I71HFyn7SEiCujwQLpR?=
 =?us-ascii?Q?7P/BJET1zU7YRCfMHYb3iOinK6HARoCwD/oJLZYYdWioNbvXieFy+anpwrjm?=
 =?us-ascii?Q?jJibZ13MJru3vJMbc6D+6d1nIOJOxDslKCqKdPE8OtzDfWxVq11QJl3hReeF?=
 =?us-ascii?Q?w2QpOJu4MNwAWq7CzJ2csETqWgcGt+E+QQdkuCyiFpl5b4l2DAcGHtTQDTbz?=
 =?us-ascii?Q?a/thNdqKwb9m1lpRQD6JdpPbbMU8CakFz2fiey0gdGgW+9x4O7Lmc2KEjscZ?=
 =?us-ascii?Q?iRXq/JevA144LaNWn8hxxqCP3SVWTzZT/7yn7eMKUZbh9Xbl7n2W7XYtIN+Z?=
 =?us-ascii?Q?NnEdt/UQeZkYloqdJ3R/a3fVyFptzXDOZT+bEZ+TGYT0UUMoM8kR9h0f8Twp?=
 =?us-ascii?Q?aEyLmREV8DbNr59JVDrYmqNPeQVfI8d8xs0neTuW5sKIRNinUqFOBzHGyHjS?=
 =?us-ascii?Q?ti26dymMTosN044rUmm2hgrIDfvD//UbFGuOCV/SWyPiiM1xLoSYl4OKCuyR?=
 =?us-ascii?Q?Gw0oa2/rWBVG+bO103u0/Nw=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1cc0282-4cf1-4ebb-4fdc-08de2c18b903
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:43.2595
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RTHzyVaIhQBjhsfTWHqUWvFUfVekS8qT6bGSONBSEER3E0zkY93ZJD+f/QUDTKSoqOSWHSCTGT3pVxt1HjOjTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034949_778531_801E72D0 
X-CRM114-Status: GOOD (  16.35  )
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

The last step in having lynx_28g_lane_rmw() arguments that fully point
to their definitions is the removal of the current concatenation logic,
by which e.g. "LNaTGCR0, N_RATE_QUARTER, N_RATE_MSK" is expanded to
"LNaTGCR0, LNaTGCR0_N_RATE_QUARTER, LNaTGCR0_N_RATE_MSK".

There are pros and cons to the above. An advantage is the impossibility
to mix up fields of one register with fields of another. For example
both LNaTGCR0 and LNaRGCR0 contain an N_RATE_QUARTER field (one for the
lane RX direction, one for the lane TX).

But the two notable disadvantages are:

1. the impossibility to write expressions such as logical OR between
   multiple fields. Practically, this forces us to perform more accesses
   to hardware registers than would otherwise be needed. See the LNaGCR0
   access for example.

2. the necessity to invent fields that don't exist, like SGMIIaCR1_SGPCS_DIS,
   in order to clear SGMIIaCR1_SGPCS_EN (the real field name). This is
   confusing, because sometimes, fields that end with _DIS really exist,
   and it's best to not invent new field names.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 60 +++++++++++++++---------
 1 file changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 3cd6cd817e11..219cfeacc565 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -103,7 +103,6 @@
 
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
-#define SGMIIaCR1_SGPCS_DIS			0x0
 #define SGMIIaCR1_SGPCS_MSK			BIT(11)
 
 struct lynx_28g_priv;
@@ -150,8 +149,7 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 }
 
 #define lynx_28g_lane_rmw(lane, reg, val, mask)	\
-	lynx_28g_rmw((lane)->priv, reg(lane->id), \
-		     reg##_##val, reg##_##mask)
+	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
 #define lynx_28g_lane_read(lane, reg)			\
 	ioread32((lane)->priv->base + reg((lane)->id))
 #define lynx_28g_pll_read(pll, reg)			\
@@ -205,8 +203,12 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_SGMII:
 		case PHY_INTERFACE_MODE_1000BASEX:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, N_RATE_QUARTER, N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, N_RATE_QUARTER, N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0,
+					  LNaTGCR0_N_RATE_QUARTER,
+					  LNaTGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaRGCR0,
+					  LNaRGCR0_N_RATE_QUARTER,
+					  LNaRGCR0_N_RATE_MSK);
 			break;
 		default:
 			break;
@@ -216,8 +218,10 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_10GBASER:
 		case PHY_INTERFACE_MODE_USXGMII:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, N_RATE_FULL, N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, N_RATE_FULL, N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_N_RATE_FULL,
+					  LNaTGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_N_RATE_FULL,
+					  LNaRGCR0_N_RATE_MSK);
 			break;
 		default:
 			break;
@@ -232,11 +236,15 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 				  struct lynx_28g_pll *pll)
 {
 	if (pll->id == 0) {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, USE_PLLF, USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, USE_PLLF, USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLF,
+				  LNaTGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLF,
+				  LNaRGCR0_USE_PLL_MSK);
 	} else {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, USE_PLLS, USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, USE_PLLS, USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLS,
+				  LNaTGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLS,
+				  LNaRGCR0_USE_PLL_MSK);
 	}
 }
 
@@ -277,8 +285,9 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0, PROTO_SEL_SGMII, PROTO_SEL_MSK);
-	lynx_28g_lane_rmw(lane, LNaGCR0, IF_WIDTH_10_BIT, IF_WIDTH_MSK);
+	lynx_28g_lane_rmw(lane, LNaGCR0,
+			  LNaGCR0_PROTO_SEL_SGMII | LNaGCR0_IF_WIDTH_10_BIT,
+			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_SGMII);
@@ -292,7 +301,8 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_SGMII);
 
 	/* Enable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_EN, SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGMIIaCR1_SGPCS_EN,
+			  SGMIIaCR1_SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
@@ -317,8 +327,9 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0, PROTO_SEL_XFI, PROTO_SEL_MSK);
-	lynx_28g_lane_rmw(lane, LNaGCR0, IF_WIDTH_20_BIT, IF_WIDTH_MSK);
+	lynx_28g_lane_rmw(lane, LNaGCR0,
+			  LNaGCR0_PROTO_SEL_XFI | LNaGCR0_IF_WIDTH_20_BIT,
+			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_10GBASER);
@@ -332,7 +343,7 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_10GBASER);
 
 	/* Disable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_DIS, SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
@@ -352,8 +363,10 @@ static int lynx_28g_power_off(struct phy *phy)
 		return 0;
 
 	/* Issue a halt request */
-	lynx_28g_lane_rmw(lane, LNaTRSTCTL, HLT_REQ, HLT_REQ);
-	lynx_28g_lane_rmw(lane, LNaRRSTCTL, HLT_REQ, HLT_REQ);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_HLT_REQ,
+			  LNaTRSTCTL_HLT_REQ);
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_HLT_REQ,
+			  LNaRRSTCTL_HLT_REQ);
 
 	/* Wait until the halting process is complete */
 	do {
@@ -376,8 +389,10 @@ static int lynx_28g_power_on(struct phy *phy)
 		return 0;
 
 	/* Issue a reset request on the lane */
-	lynx_28g_lane_rmw(lane, LNaTRSTCTL, RST_REQ, RST_REQ);
-	lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_RST_REQ,
+			  LNaTRSTCTL_RST_REQ);
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+			  LNaRRSTCTL_RST_REQ);
 
 	/* Wait until the reset sequence is completed */
 	do {
@@ -537,7 +552,8 @@ static void lynx_28g_cdr_lock_check(struct work_struct *work)
 
 		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
 		if (!(rrstctl & LNaRRSTCTL_CDR_LOCK)) {
-			lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
+			lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+					  LNaRRSTCTL_RST_REQ);
 			do {
 				rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
 			} while (!(rrstctl & LNaRRSTCTL_RST_DONE));
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
