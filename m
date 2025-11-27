Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB79CFD2F6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 11:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqFDXxtmpeRgEpGAmDHB+/roev9V0zzeIkZt0xN+JqA=; b=STN7xx0en9ptpB
	3IpP89gV3I3jNEISgnCCqbQBarFUBUdOR7INoUL5co30vV/sJZlRZ3f0cu08oMZUeYcCVjvnWBplA
	RHZMwQXrylAkMVwb0jSV715b3rl0Efq8XZv3BOFmuvtPEhkM9i95vsEXHJFqzVVLo1gMlgesVj4c5
	x1H4HyN0Wty7TwdSus6anoSyFIBqTTXHtIpSEImCR9LXSfnvaJ2TWRozeCAilU71XK8kJzYNiIwlA
	Ip8VlpShqVxZoh5+4xlw1VSC0l/2rxbp9U0OTOi8gdGLAg+EW0RI+lkWIzRHV8uu1Wok3vFCwq/JX
	Oav4tYfuVCkcdvdO32Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaWQ-0000000GUsz-32v8;
	Thu, 27 Nov 2025 11:50:50 +0000
Received: from mail-japaneastazon11010036.outbound.protection.outlook.com ([52.101.229.36] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaWP-0000000GUsU-00AM
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 11:50:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OBaQ92DY1l1RI8leXwA5fPzCHde/zWzMoyq1ZfbtTsQ6LbIhfLykxuqRorkZFDeyzGk6cd3ZWhf37XoC1BZm38d+KRbCCzcCswM9wLGsbmNMi2oCr3J+o6raaqpN+2/c+gmciqlWgeW0+BJP0yncrSGnpXSsQFktfPkDyelBBcZGq51E/hkIZNmuZZF3hB8lVHhsMuqNgiSRH7J3jQyl9kgjlxnaBQp78U34vghOXTw2EKYxJh+l4bZooQ+bRMU9VC648e1TraNaxtCA7e7ag4Y/XE+854asmABaaIQAIgOgLS7Tpvk9Cr1ljmWgjErqFUXlYHmnSJdaxjSImw1c7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WmRFIlyVh4480AJKB+V3zqoD0aqHGvmnDAkPpzNRUCI=;
 b=urX34Kqhy9+RtXZl22HvrnIHSZwGtKibcb1dceiZetkyLuKzTItC7y+8Zxg265jWIblqKjC25KYvNFiAfKr4VRCVW2W3yFzi6SblYLDBPRVNt0Y+EySp4TnGy69GeG+XLSGVCrU3wh8TAJkYpv1mAsqWxKa4VliBh/i2Q5dlaWCKNkEVzY6ZFqR+pZj5Eck/+XsnroHYP9jxdr1pvG5S6gcIe9rVn6QfrDTB+1zsKBjXDrJmgS88LKJeS26dYyR1TX1GpOquscUzyIcJACCNdfOji7Gm2RYPj/oX48Va0syfIG5TvGdLhXdPojyZUXiIuXR4+EMvpOwsrkeAKyM2Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WmRFIlyVh4480AJKB+V3zqoD0aqHGvmnDAkPpzNRUCI=;
 b=Ss1KSl8MWZHQy//jDAfuTlNg24H0Q49hKRSFui7peTpLQ7cORKgOwrgj/Bh33pui5dq+Mi90mtG5bNbQO7Fto/hRYMRPi5gHaDIf7NXyRD/OoNyr7wQeFOcbMJkyYEaI56yex3hv8CeAvtrxr/ANsKxPaJLbTIORkk0jO+q6hsA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OSZPR01MB9632.jpnprd01.prod.outlook.com (2603:1096:604:1d7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 11:50:46 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 11:50:46 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Peter Rosin <peda@axentia.se>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Georgi Djakov <djakov@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 09/22] dt-bindings: phy: renesas,usb2-phy: Document mux-states property
Date: Thu, 27 Nov 2025 12:48:36 +0100
Message-ID: <5c5a85eb777f327e659cb3a969ebed8531c05a26.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FR0P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::17) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OSZPR01MB9632:EE_
X-MS-Office365-Filtering-Correlation-Id: bb5785b5-faa9-406e-015a-08de2dab338b
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?V+oPC9Fn1/t8yNM/7Bv42WHBKohD4rWIk29x377xVWe9/cpqnhe/YoosjVei?=
 =?us-ascii?Q?ybOIXrjyRUnitqx5uQSmQagc7xsRhDdZAyHIDY7ksNrLgFShM5D14bbatCTA?=
 =?us-ascii?Q?WLfmZEPeaV1GpQzHINoo3Zd+YaFs4xbDwnRRlGb2I/B7sRkqID3bHSb/+Lh5?=
 =?us-ascii?Q?WaHY6l7REH1q4OwpR7Zgj6GQiGOg1InLQeot5LX+5b15W36ZUnO4OlnvXytf?=
 =?us-ascii?Q?rMejl7eaH6t8Pa8dkh6VCIyhfvXPV1Nu644Ru6ctEJy/0yK6JsaMzz2WrKs0?=
 =?us-ascii?Q?nH7ByOUSs7I5koqwiw6OqaveqObPzm7MA8eLylgtMPEj7twPMt7MK+PN5nwT?=
 =?us-ascii?Q?hAcORQ9lY0XmlGo7tI12LSoMCesARo3uTDGiE3+w9D6UqpyBz6yx5DrjYsub?=
 =?us-ascii?Q?v1+jLckPGbhawGLzZrwsAW/Oz5+FTRtjv6Uajn+fJTCHnDBdY8/kQkpnIAEP?=
 =?us-ascii?Q?BGWHsihDTLnrMG8MLZvn3B6RW8sh533vJQUt/zQtcS3LiDv6fT2TcTMwd6aU?=
 =?us-ascii?Q?RbffnhRMmuvMDfulR9Vz/gTRVhaIEx4eqQ/1b97W+pc3pDMn0FM4SnRZDoax?=
 =?us-ascii?Q?kLkQi0agX/y9PfuvQXsYgqMMrYxZQCYoZ+SW918NeP+6fFsQ+7M8GcJQHWyd?=
 =?us-ascii?Q?HVQSZUCzm29XZ0Sa1NBoD+zfP/y2FrZJzKQv/yqkhIOcK7wRrpvcRFHCURoJ?=
 =?us-ascii?Q?Psgq3yIo9lLQhPx03jN729oj1NxY2222Wa9UWx3BMeMonvB16twBKXmkOQNL?=
 =?us-ascii?Q?jEDrG68nGU0Vpkj00r32Vedy62+s58Ydiae0bWDpq44OhMTOOJ1rYJ9gNW+2?=
 =?us-ascii?Q?ikVx384M6YNdUa4nK5YLLMSo5M4EgVCDG0AHvdMT4hwLmXLXom5/ALbVzkHt?=
 =?us-ascii?Q?AB/s+NF4DPe5Ks19zuF/KZkSczYe8SQgb++6jpnsueYP/ZwEwaBxuNFKbMV7?=
 =?us-ascii?Q?uQKxSjQqhO2YYy+oOUiYzDue6SF7quxjJV/foNapfTuR0U7n8CFUw6+3WIoA?=
 =?us-ascii?Q?3CiTn3k/Kyf0OcMCffHuQgwHhXrLW2plndUL1juzoIDeDuJ6k/mvk9tOrDeJ?=
 =?us-ascii?Q?FSvVhyzSXdC1dUNciNRFzTCgOtkl4e/ZHwdoGopaFnSsXyfFUGa6iLtEEhof?=
 =?us-ascii?Q?7UGGZBRjEMbZ4MZ3gMI6Rs0J1dMBRh30Oj8sn5WDlZaTZY+3CtXBBs1Emv5D?=
 =?us-ascii?Q?FhIN2gT+sMWjrz5zWouBum/q29/yVTmStNKRI/G+Gcb5UB0p9R+vtR65+yQg?=
 =?us-ascii?Q?w3Z2Fv7glBqG3m1zpnQFxt0f3Ri71Tp6Ju+ckXJDbfJxZuhJRPmoRvTjtZg3?=
 =?us-ascii?Q?yZXr/paZV+xi58ML1FicWvwcdszyxUp9F/Y/sX7D+ZyZTGpzsri3CnQvZXm8?=
 =?us-ascii?Q?2OZ8ATKWpMRJAHI49brGw+DkBwpzw9mOwHtWY0BuMxpdPrtDjAayaDZhA5g3?=
 =?us-ascii?Q?AIO5OGM+qm/s9gdpuNroiCKuztVueDNJNiIAjrSgvupXxfle+PmNb0xmnLgM?=
 =?us-ascii?Q?zwhCnPr+LDiNP+oe7wfhzypAKxhIKXnHsUJM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AgEED6081yVemVONivssnY0juAPKvj7zrMhTcGSEBFW3k7yRFvnv+yscYWIx?=
 =?us-ascii?Q?BW8DfrGf3nmwQwPH2KMbqWrzdNzJqcWNfbF17fZx1sFmno9wEGlliOyj76rJ?=
 =?us-ascii?Q?8XDou+xXo8jNiArc38t55P4mRXBu9Y9b8enD+Of21NMdxc0X50sUoNY+2IEX?=
 =?us-ascii?Q?G1GHIn/1hbvzFq21J//aC44DL81WggpNMAX6IwgtqjgxP7OUI8d0mSTyF8b6?=
 =?us-ascii?Q?aaL2XsH+AVhUiIfUi9i8xCBxNMOic7AjSkfqsM9GzjgpkcsAR6hSMI1LW2Sj?=
 =?us-ascii?Q?iN9p2CQ8DNgKQdndqO2qdKSihCFOXuornaPjdTQ/om6qnuhKjnBy0SB51ENB?=
 =?us-ascii?Q?QIGlsySrn0exdyq68zgrwiIc/4VCa0BCwgSgcd0C+sVtduTYcOU4No2isS8Y?=
 =?us-ascii?Q?d63bUVxlUobljc9SEWBQ7H9HczdgbKUugFmJ0EwtbEwCsCpOQbrbW/DMRmYy?=
 =?us-ascii?Q?K3fDp/tLAtYI3KnnI/4ws9QQ13lC1PFtUi9s2sasfUteF5v+WAjEgY+VYit+?=
 =?us-ascii?Q?9aJTd5Q0HkSPkdU1p2aomX7FPWwdeo0qlJUG5MFbV+6FNRwYoqA6Fq+MKijm?=
 =?us-ascii?Q?MAvfyFt+J8hwU/ftNpt2NPnpAJC6n1zDNGZHXJG2FTkTmmQwqD5Ix66FhzZB?=
 =?us-ascii?Q?CQJf46EBbzj4eeAv2QjOEfHM9xDcuwwpw7NyUQ9GqgpS9FlEU4LJ6PkUjo7C?=
 =?us-ascii?Q?O7C109s2dL/CnWBUhEB2QMOjKGigzCMnutzbzNAlZhtkTE78fPsCM3zRvpUX?=
 =?us-ascii?Q?4MQlGqJ87VXpmz7A+PN1jyswyoqS5EKihuZeEDoWVtEFuJFnlkb1XOIUhY77?=
 =?us-ascii?Q?irpjtuxVA6tq+uyqEswwPMy0mxNcx8GnNYyUX0yQXsOcx1TQqasvGhUYAQyN?=
 =?us-ascii?Q?9TWEqY2g23DVgO8CWG0WsPHvOmv6nxVXl0DtFnrzq7+a/MFLBiMCHPEOP5Z2?=
 =?us-ascii?Q?RP+KRia520/ZMXtOAmi9iXKr4lvkUGxg6pCfsWB6SEUlQraS3GcDxPnkMoL2?=
 =?us-ascii?Q?bBEF/K524oHUQ9TBDW08PZKiAVzi9JiUAKbcDWVHFU/D3LJthCZqet5rWh7z?=
 =?us-ascii?Q?QnpR262Xl7Lc0/guBHwdFgw9TgO5dg6IF3s/I4zWlFCb24LiJotkZCyao0lD?=
 =?us-ascii?Q?WYK6osR7d0HQA/Owkv8z6RVGm3vXiGKo3I2bfpLcML6whEQ0TzSF1rBfuT3s?=
 =?us-ascii?Q?EggnPclH1SH2PkKI5QqH9ZqViCWBnYjTrn65D1yqnN6qHiRRKJxRIiL+5tnL?=
 =?us-ascii?Q?eFU6z12FMSNNQ3Twn82KpFFkXWtgFhK2+42zL3cUhbjN6WXRM91naufmp5ZL?=
 =?us-ascii?Q?NoG4RXkwSl7ecCh0xDrXyfh+W+/2S3/w5D6RhTtgzalWP9m+cSh3r82bG5Xm?=
 =?us-ascii?Q?0IsPudYVcCHcrXiTbwTibvJkEG31smuaZ14yJYSkhvJuGjwYBVdXhtsFYCtI?=
 =?us-ascii?Q?mnvmux3iv6ubPJoTNamtrHamZuRh2XWpKoGMFE8HWOXPFGuTmZkKvJr1lsZj?=
 =?us-ascii?Q?BcICvQrsx5vnFQZ4r2llLJDxBB1ihBVjk9ZllTSLlEzfHTLdZGht2RyXDNcK?=
 =?us-ascii?Q?yPAKk/eW3s06GkOasY1+7parzQa6HpykpsjGYx3RpijmG/3Fe3LC1qb0ZJco?=
 =?us-ascii?Q?Kw4waMhhZM1O3y7oNgw+qwY=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb5785b5-faa9-406e-015a-08de2dab338b
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 11:50:46.1707
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kQDX8+OAj3FnesenhMFigbToUQ6+TUafZx/cMYIGrYSn/+CZ6ldmOY9mW84bYG+iCSiUjh+kMbLj9BdYFofsbhjTFqPyqGQ/JFqXZJSmf8DKi4pMTLLMb/wAKyuvt8Lu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB9632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_035049_117692_0F7F042D 
X-CRM114-Status: UNSURE (   8.96  )
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

Some Renesas SoCs, such as RZ/G3E, provide a USB2.0 OTG PHY with
configurable VBUS control through a multiplexed hardware register.
This register allows selecting the VBUS source via a mux control
line exposed by the PHY.

To represent this hardware configuration, support the standard
`mux-states` property in the Renesas USB2 PHY binding.
This allows the DeviceTree to model the VBUS source selection as
a mux, consistent with generic binding conventions.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v4->v5:
 - No changes.

v3->v4:
 - Collected CDooley tag.

v2->v3:
 - Improved commit body.
 - Improved mux-states description.

v1->v2:
 - New patch

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 2cd0efa75f81..448da30757f2 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -102,6 +102,11 @@ properties:
 
   dr_mode: true
 
+  mux-states:
+    description:
+      phandle to a mux controller node that select the source for USB VBUS.
+    maxItems: 1
+
 if:
   properties:
     compatible:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
