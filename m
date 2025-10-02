Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D73CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 11:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXOpmVGhpThfZpKSxIbyrDQ//MfpOy9REToYi2UzKoI=; b=T1a7SmJWvfQIn1
	AGaShskvBLQzy2bS8Vgp5siguv5oqt7X/uXFRrd+OqpjsL5zi4TgSPSQ1gnlQDoK/E/R0v1rHftEw
	D1eTj/Mnq14D1lf9Ulcd22qnMXndaOEPzHPkZXW5txxpSI9rrOA/xl5Rdd96FH2cMlKGiXELSKsqR
	4l9sxiSzfGgBraaMxAIc5c67QsZXOYYG1ZoLXncgNGPPAjJxbktUFAL0Xg1+X7xIHWyKXlqWlY3ks
	kACwHn5lyW7KMKo8XJIoNaH9t6Hefwn5hQUS/qQgT7TlM964N1cXx50fMLXY0w4fy//1Ozzr8uAOg
	yJu/HB/vFZPkC1wQfkaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4HDQ-0000000ALMZ-2NOo;
	Thu, 02 Oct 2025 11:11:16 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4HDN-0000000ALMC-2aed
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 11:11:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dJNBDJdq6DgfeLuNYYYLG4aIRvxcvEw9kjw39bMISY/Gh8JK1MrCAD68RB5jpvw3lpISX2Fsc8nPop0vypbqotOjB6tzIn/ZsmprHLV8GVvKIakrpSE00HTpRdN8zrNNIujbcakdWvwtAUK81jS1RgiDwto1oV/ZdxK7SYGpIL0LM8AxWik0KapydbM1F/AwOMzBAfcen2oJmT7PsbZ8mNkIyL82dCktbSQlwW1lJ4gHT8KRG3VYzVjxAYK1DTSdopcxvix3XIug99/9dZG6bF/rlvl4yKmUVeikJk+f1IsCVJnFZ6ODjtODRPQW+CmdXxjnC81O7RjgrYiWQCPaJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6mbbKgCUZqsR5j3aUqo3vJOZENjXn3oRPuLUJYVhlQ=;
 b=q/Ujf8WBqSL26qXU+StAoppYeoh9dVvAZhaEdn6A9uB58heuzqiCH7LkspJTFRdY/xRK8k3R9niAfPwHm0vxB0ZKFkN0wYBBmRaMNyPqL2QeupYpf/Txfeo5oGlumeLwmz9aRr6u3foDxEHPxnfpNpUq9cW1jYPWCtQ88bh+HNBmBxAYMQloj4d28iBx26GaYmLxlQnssTwXxmwNljDDUS4v6en/JMPNk8kYesO7YbA4JvtA9RFjAvyOeFDqMSd9S7mN193rtz+aIRJFlQwb1fWoG6LcPGE/lDcoDsQSaFa0wPT704vqlXccos+BVT5wWEMUWnu2KHAFA1O6ZF+u1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6mbbKgCUZqsR5j3aUqo3vJOZENjXn3oRPuLUJYVhlQ=;
 b=ljWtjN4QxLLutp3R91/Ajv4CCKL5By9l6wuvQIN5Fai5/q2HrudcMRgZP3LqHavso6BdTqoNc99U4IDSKNJNE6KFGWuQdOMBXrKTelotFqbqQ0HCdFrFXKMEJ5G97/lx7Aw4ElB0eZAs+ehdzeWpBj3h1D8B62G+0YPqT2c+Myu5btXUNrh/dKhtfpJIueIvwIjqXODBhqwNO79mTWeHWU1MhIAowONY/6CQulu2LcFCHxZG+O5KUBYOkaQy/5sZqSggM/u7A4BF73YlkI5EbQAEzaEkPG1x53ne5FdpO3ijrbXRlx6y9eaJy4efZSKhBMx38kN7PUcNbj/nsXJjcg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DUZPR04MB9984.eurprd04.prod.outlook.com (2603:10a6:10:4dd::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.15; Thu, 2 Oct
 2025 11:11:01 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9182.013; Thu, 2 Oct 2025
 11:11:01 +0000
Date: Thu, 2 Oct 2025 14:10:58 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 phy 13/17] phy: lynx-28g: probe on per-SoC and
 per-instance compatible strings
Message-ID: <20251002111058.no6oboayme64azda@skbuf>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
 <20250926180505.760089-14-vladimir.oltean@nxp.com>
 <1ec4002f-6c5a-4f64-8ba7-7f991b0f3f75@solid-run.com>
 <20250926180505.760089-1-vladimir.oltean@nxp.com>
 <20250926180505.760089-14-vladimir.oltean@nxp.com>
 <1ec4002f-6c5a-4f64-8ba7-7f991b0f3f75@solid-run.com>
 <5dd3bbaa-bac2-441b-881d-1a2e0ff0e3db@solid-run.com>
 <5dd3bbaa-bac2-441b-881d-1a2e0ff0e3db@solid-run.com>
Content-Disposition: inline
In-Reply-To: <5dd3bbaa-bac2-441b-881d-1a2e0ff0e3db@solid-run.com>
 <5dd3bbaa-bac2-441b-881d-1a2e0ff0e3db@solid-run.com>
X-ClientProxiedBy: VE1PR03CA0003.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::15) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DUZPR04MB9984:EE_
X-MS-Office365-Filtering-Correlation-Id: c2f1aa9e-55c5-4064-f451-08de01a45f07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|366016|19092799006|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?X+V1xKm3oDtT/viGcuPa3pYsoz0M7vCuFukm0zW//Zb6ye+RuX6oGrnDC0?=
 =?iso-8859-1?Q?e4IRXAvvLqlFMYjHAHUwzOW1JDQvMJ+B8ldjm5rfxCV6qauSLF/lnhXHY4?=
 =?iso-8859-1?Q?UGx8DGUZuhYTVXdlboA6JqWDMXz8W8LM9QL6yR6pjoFc8Z+vZvNyKWJ3uY?=
 =?iso-8859-1?Q?j8RyzeBmEIqvSZ086hQ5zEdxP4pvhY7Xfh11P8txfIIhDi/9E2iteb3s7C?=
 =?iso-8859-1?Q?sj5AY7jtPZQIqQ4PM0cDjs12Y2SMRJyTRTIqupsRMRcW0Jrsl6JuKimYgm?=
 =?iso-8859-1?Q?ZQkKC7UaQVkUsiv6poSLQmhu7qoallC0HglzN73/rI4KjbeUT/1P1yIdvE?=
 =?iso-8859-1?Q?XLbyQqxwZrD8aNupFoyBpeEQVcNepBbc2jziSFoidMWh4ehlqOLftKwYXA?=
 =?iso-8859-1?Q?3I+kQUmsrETv6TfYWVAD608CySS6Y1Fh/nD+LTiN2m2TD3OaT88aMYAagh?=
 =?iso-8859-1?Q?QakuAgs1OR3KM0GX2JzIjJr7URrTJ9rEPmZslp5rS6bpoCs0s6mDZkBnc5?=
 =?iso-8859-1?Q?4s32Xa5HgSWUM//0qSXXo1nD29t/JsnJyvaTV1bEZQNJM+ogl0aW5KPDI/?=
 =?iso-8859-1?Q?Z8xpjGksApd4C54pQIytI4FLrJaDqAUqotwisNXCCHpAgTSMrv/MFyMJdu?=
 =?iso-8859-1?Q?8XkwNwvqDTRZ3XwRqw4q9aNDr3wF4iHBX68U8bi0rjZ0XMCtC1jWAaXglg?=
 =?iso-8859-1?Q?j46vexomEhzTuaH9CXO+4LnwTcIeNyUvvPJGvXqXrA74ku6rpVBNFMudnG?=
 =?iso-8859-1?Q?Iv0xR7imJhTwVlOocop1mVWX2EcK2b0wWsvpFYjmLb66tHI94r3X6ykzm9?=
 =?iso-8859-1?Q?yRy++APbujKe8ZG3H7irpHcajL9lGB1CmerxFvNOsWyLB5uRkQFwH+/ZFc?=
 =?iso-8859-1?Q?edRz2EoSQZyMfUntgNRvnGeNH1HoGkAEnWdDZoZQbozLTdNz/mW1r8GHYf?=
 =?iso-8859-1?Q?yg+pPrlMon6gAVUK0wscxJ1+6whafNg/JblUHrZYyJKA1Kffq2EnuaYwBj?=
 =?iso-8859-1?Q?Bhny7dQh8ZyZPhP8xEs6WGMu7CRb+DTSB63PxF4V0nbSOGzkn1PRSokQLr?=
 =?iso-8859-1?Q?JbUArCFl15srAEarz/PSwmvVrvecCyoyFkzt0ncIm+my1Iw1FatDkOczSz?=
 =?iso-8859-1?Q?gnsAA8neezC20qFyw/oHQq54paPL0fCYVpkkZowJwPODvi+zERHL5TDFrK?=
 =?iso-8859-1?Q?ipuj6ssFL2B/hxm+65fcbkmlzo08cZ7sGWYpHoqlgkYVL+Uzs2KASPyaNo?=
 =?iso-8859-1?Q?qtfwObAtZLDpMcuIBAQ+jDuJPBafjmutViUz2v6MFn4w2MItqgjadR3j7M?=
 =?iso-8859-1?Q?xIN5IIbgP6PLooKkpI9IflbD0UH/Kfh6iO+yt0DDwBMcWSE45U8/6aZZLE?=
 =?iso-8859-1?Q?NPY/VHsbqr4kdGUKlvQ2bcNa6kFgrToX27Xow1TSMDq9k3wLe/kUf++hrs?=
 =?iso-8859-1?Q?GPCkZ17Q5lMuGD7KZvdYilU7ayr55Bs0XE/YU1H+MQpHnbk0jjKutzOMuJ?=
 =?iso-8859-1?Q?2od4WHywMMXhfeZBMpi0a+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(19092799006)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?tHSK2iQuLHn78CwsLjXuwvXZ5j5e9B/hoFWcTrsGeWM+mk03szNw9/Lv+n?=
 =?iso-8859-1?Q?SDHZ8UY4dtWU7LOUrJoOu+ZEhKClNCx1pZbflPY75JqAEOa+GFLlDw6hlS?=
 =?iso-8859-1?Q?HPPwBkA4oLcOyQ285edU8F7sHVKan5SeLOJ3qjpXECGcdP6BinNrsMhQ42?=
 =?iso-8859-1?Q?Zr9oBqelbMV/kAUr7tQ4KKeAp3wCa+tlYJKQ/V16s5UzzKKh2G0m9qEFDU?=
 =?iso-8859-1?Q?/poRnzIQX0dFwAWw6u9w1etjZnRp2QfU65GlUlTMp4AcaZ/4RGv1M+LV3h?=
 =?iso-8859-1?Q?EgqskMUYiwSPNz+6pTZUFst12hYiTCwWO1NyGPTGxCXNdD0adaI46j17MH?=
 =?iso-8859-1?Q?xM6FMTWluR9232/LksFf/JKPk3ZJP2Yzd4dn2cKjqfSbKqHgyDXyGjoXbk?=
 =?iso-8859-1?Q?N4xPATZPqH4qjoWej16optz8Imh27Z/J4YLjwH+dS9UFq8G9NvrcDSx3Wp?=
 =?iso-8859-1?Q?fvbKNml4XwvMLhTNI0e1YUBcshxn5QBOhhJAYUobwa+rOJs/SYzVn8IgAl?=
 =?iso-8859-1?Q?bmJFOpoN6jSl29XsZY5Ddoyyd2mQLHGruYNPMzpUuuIxd6f3H4HHZyzsFE?=
 =?iso-8859-1?Q?Ukg9pgeEVnfaR2oT4vo1XzWH5coM8p2tW5Xii2ttuGgqtFFSlnrV6i7Qc6?=
 =?iso-8859-1?Q?ZZD5jB6qJctsDzzNw6zVIwWi5fnQmJRdUZI3Ov8BPbuXY/jHSVFFZyfnGr?=
 =?iso-8859-1?Q?aesYpnxOJFOEen5j2QP8Xa+iPr4cicHKwKwl5KEMRUrwo9BUPwg5h+keuu?=
 =?iso-8859-1?Q?DWNJdva7ip16rHAt8SCYLttYvCCEoIi1MlD3WdKAYdXTSbz++M4dN4zOG/?=
 =?iso-8859-1?Q?/sAEcDhTfTE1ZPleCWBk+UXm2HQwvdFyDd+UPeffxO0Ne+Gq3wvi/mzljl?=
 =?iso-8859-1?Q?AKF11kCReJ/Lfk3lWn3ycUrs7GVFXjnPYYYeNQPzy+gvAAMk5VixlAJGh0?=
 =?iso-8859-1?Q?SQsenrONgT0bzML1Sg4GrwSt59ZuVKPaT5ZF2ry8IUADLGQg0LqEswH639?=
 =?iso-8859-1?Q?nQoHHX/CehIW3WsAAZyEtLoQtK2Lv5dfoi+V3dlfgtg9YFs7bzCEwh0EYC?=
 =?iso-8859-1?Q?L0mcolygs6lVZ24hxhFVInVfqdA1egO1f0pkZ3f4SQ4MJW8mVMUTu5H5W3?=
 =?iso-8859-1?Q?C04qbTGhXq5jo6pv/kZZuOD9DYlhQdZ3Jlh1B1E5B4btqcJekVkEn9d6gN?=
 =?iso-8859-1?Q?R6NgrttlcPFhDm2PhiC8sUARRvA7oIq64yf7CDi2bDrexZmpAJzkSkwg/k?=
 =?iso-8859-1?Q?k6y5L95Ymlxa9TpLy+vgNdVt/GZh+lG6FC+bzd00cymeSBd6tFDqpV+cGZ?=
 =?iso-8859-1?Q?8yY6dIiD3+/3A1Gj/G5/WJILQ1nXqc9lnvtC1PKlUFIYZHiJ2XsWw3Hh3P?=
 =?iso-8859-1?Q?o35c/ntuY6Ie+lKf1uX2R3nC1EPHrJOt8ifOR8BLEQtwI2PhAF6abp1BvQ?=
 =?iso-8859-1?Q?dPNEnsfs+iVWVJX/ByQSZe8dHDvEqkP5MpvJ7Cq/dR6PImG1LRXOp4XQxy?=
 =?iso-8859-1?Q?2dzGDj8wLm7dhviYzSp+PA27uijLgeii1XrQluoAyPXmoFS75ObwYHLSBF?=
 =?iso-8859-1?Q?QB5m7eH0Wwf1PqGbrOdXkL3er1i9Fn+74OHooXXUsrWyXHoCdAjXN3O44/?=
 =?iso-8859-1?Q?+9AjPJJ6+5mtG8TXerSY66+1Rsz3lwk6wJpWqBh/p2dYLNVc9L2KDyxxsy?=
 =?iso-8859-1?Q?6MAcAg9edNygdQFMf3HyPQPddXfAHhY5vskXunIGsityEwRe2wuJ4s1rTB?=
 =?iso-8859-1?Q?S5+Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f1aa9e-55c5-4064-f451-08de01a45f07
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 11:11:01.7593
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 14qA9RzA/8yoLeultnxeu1FCoe94aovZX48BspAXH7Rf+4IVbzgTKSKKJkU+RNHK4iOmkW0YCWqwbzOoV+QeAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_041113_659843_C0D0B3A3 
X-CRM114-Status: GOOD (  13.66  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Oct 02, 2025 at 10:50:46AM +0000, Josua Mayer wrote:
> FYI as an example please see below how I handled this previously.
> The xlate function below can translate both phandles with 0 and 1 argumen=
ts:
> =

> static struct phy *lynx_28g_xlate(struct device *dev,
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 struct of_phandle_args *args)
> {
> =A0 =A0 struct lynx_28g_priv *priv;
> =A0 =A0 struct phy *phy;
> =A0 =A0 int idx;
> =

> =A0 =A0 if (args->args_count =3D=3D 0) {
> =A0 =A0 =A0 =A0 /* direct look-up */
> =A0 =A0 =A0 =A0 phy =3D of_phy_simple_xlate(dev, args);
> =A0 =A0 } else if (args->args_count =3D=3D 1) {
> =A0 =A0 =A0 =A0 /* look-up from parent by index */
> =A0 =A0 =A0 =A0 idx =3D args->args[0];
> =A0 =A0 =A0 =A0 if (WARN_ON(idx >=3D LYNX_28G_NUM_LANE))
> =A0 =A0 =A0 =A0 =A0 =A0 return ERR_PTR(-EINVAL);
> =

> =A0 =A0 =A0 =A0 priv =3D dev_get_drvdata(dev);
> =A0 =A0 =A0 =A0 phy =3D priv->lane[idx].phy;
> =A0 =A0 =A0 =A0 if (!phy)
> =A0 =A0 =A0 =A0 =A0 =A0 phy =3D ERR_PTR(-ENODEV);
> =A0 =A0 } else {
> =A0 =A0 =A0 =A0 phy =3D ERR_PTR(-EINVAL);
> =A0 =A0 }
> =

> =A0 =A0 return phy;
> }
> =

> While in probe only one phy_provider is registered.

So what is the practical difference, in the #phy-cells =3D <0> case,
between registering a single phy provider and a custom xlate function
that redirects to of_phy_simple_xlate(), vs registering a phy provider
per lane and passing the of_phy_simple_xlate() function directly?

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
