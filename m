Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF42DC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 06:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b93OfR+/y9bLZlkfu3fVnKNBLBh81qD/rAuDlf92gY0=; b=CH0ogRE5QikRzo
	Mz7JZg7XUSqhNQvziRczQbvpocQF0miJqbAAVOlWiiPyuTB3q1Uvmzi3GIxXpmF5Uzl+Djr/0BARV
	6+xt9mA9r3SRfIn072C1AdwJ3rbLYJeeec8JdoHWzVRd+MjzUg9BW9Q9xWYpfxy8jjokb5Nviq6/N
	ufcmjURdFsgEIpQr1HQ8DUCb55hsUdy7yNLXvrwbiWvuPoCGTf/3hR5oAosT4TSnD7uvFmI3FPbHJ
	BuoKanJFyonnqIF7Mt+07QPu0slY8Lzi5Rampe08gB4h1S/l1GpfpYpMZR3sDqH0Q6YxNS0ECeKH0
	t4IFaEZ7n4dJNTHaBdpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1netHd-004B6H-2y; Thu, 14 Apr 2022 06:48:49 +0000
Received: from mail-vi1eur05on20626.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::626]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1netGl-004Agn-FC; Thu, 14 Apr 2022 06:47:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hinQ4xF+qKTzkSsKsVTnbnSuyYADIsX/I+8IS2U3Ww5IsOj+vhngOau2iT9ix8rkhjuxUcH4qshLcuwRS3r+82Z9A7b3p22KbMHrbBHbC//8CpKuxE00bdU77Bj2mU7fnr3wJU9KJwBKEdON0oEqU5Pd+ODO8JFowr/GLglFHypn0BrgKJr89MKeRtAGLHTm1TuOJDT8GHJ9EruyBQcn1qLj1xb9P0KiCdbWnMeGA1vFddRKf6ig8WL9st+7kzlARqi73oies2e3kQdbh2ojW0Brx9vVs1/2J1r55Rg/FcQMc+Thty7m+jSM8fZGjpx+6bcIhYwXVoMXgwzuaoxo5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OysCnXbfG3jgkz/UBNk5z1dEY6LvOl0+eSokDR93wQg=;
 b=TByVS3t19vGDWXI+jvZhPms+wDX0ivPHv9Gx3ObNIblsP//kGDnVTzsJZbpYWYUPcUCzHNQhR+IxL4VZAYX0JfI0hRzsWW4hqYHmPX/FK1UxchoDujGO2w6G1xrj8zenuv2DSeL0ISxHsw0GY/XUoTpIVIVOZTilr1pIFoI7IdHPF5mtwjvgP8GMHbCR5TNJ3u7VsV2KE22skKekCRYPqBpaURli1Z1BWhbs6DnDvkohEVc3FSFmuJQ2rJyg5SxsGFr4kJGfPjM6wyfXZvuY01+WIdN2nCi7BGlDP7WM8S1fR73hpJM3CLpxXYUsDI1VTvVozbYxQrBThKBjGwpxrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OysCnXbfG3jgkz/UBNk5z1dEY6LvOl0+eSokDR93wQg=;
 b=e+Mv5Wyd1CSLsYFM1Uv1YCIJUknXqfLyAWzIFQLIPUMwS4f3btw2z9GsLUkjYcqsCkoe0gqsyIEXUIfSrmbKvo+uc+9Y1ZGazbBEYEmvvojez5FIhVlpi45TaZRZ3/nJhiTA7VZxjACKI5iZ6kkgdtM+qxmQoHfjxhUQvqE1TVo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DB7PR04MB4457.eurprd04.prod.outlook.com (2603:10a6:5:3b::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 06:47:50 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 06:47:50 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v7 4/5] dt-bindings: phy: mixel: mipi-dsi-phy: Add Mixel combo
 PHY support for i.MX8qxp
Date: Thu, 14 Apr 2022 14:48:57 +0800
Message-Id: <20220414064858.405096-5-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220414064858.405096-1-victor.liu@nxp.com>
References: <20220414064858.405096-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:4:186::12) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 825ddf17-32b1-4d70-d9ba-08da1de2b127
X-MS-TrafficTypeDiagnostic: DB7PR04MB4457:EE_
X-Microsoft-Antispam-PRVS: <DB7PR04MB44575A9CCB342C7971E1BC3F98EF9@DB7PR04MB4457.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iD+ws2V8XxA0+0hFcr27GKhKijmhoHU9XM23DsOH5WlfVmG4umeY+7N7+KeKhWJ+HayA7fD4ZCzDTiWHi5sAxitOs4LlibsslxQYVssQZXP5Lk3+FNF50y2yYhQQtL7SBbeaWXJLmABXzpwhxBXEVqb5LhUkyJwIW+QB/FpYv99wvYlZ04Hm3hJOnDiAbysHwUJoKe2o3UU/6UpsZoma8juLG77b3yQUYNEqTqkrZFT9LIPvkBSx/KzgPlJlJsW5ni9zxuB7HcsQ6OrAp4qhY9HC3/VGvecjFiXxgPQybLxVemb2C6Ki2IlOjl4Im2aD8Qa6IR4tSQaRGLaLl/0PZvfuyIg1DP6Tar86MJq6SJhhPJ7sbmYDC7jjEijv9yttFlVBihIsfq5wTXeeDEv3PZYadXHxOiag7XFJIs/Kzwzrpmn7o+8ibDBft0li2xTWHvywyUs3AtqU9Rwf3dT+qQPzXAsAM2QgIa/61GKgn/sVCPROhdPd/E0KrJsuZkTJUPpMTZWb5iJvlf9wNndp+tgI9KuaUCO+nleMRo47nDsCcRNEPbE49qx8OCeb665otp8dt+PtNX9+/i87ib+OQZDar6zk5CvKPrLWTqlH+rU29oJeb0qILtnFsrwU9XTgdCKq6YNp6+YKYDPJgtBb/CQ+kCmDTn3oK7IHlokMt3olWhh0Oz0GrRo1Nt21f7FyEuA0C0dwEl4K6doAmTOCjA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(2906002)(316002)(8936002)(66476007)(4326008)(508600001)(7416002)(8676002)(66946007)(36756003)(38100700002)(38350700002)(5660300002)(83380400001)(52116002)(66556008)(6486002)(6512007)(2616005)(26005)(186003)(6506007)(86362001)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1IzRWc0QWxKRjdmekxiOEhUYnBIekFrZkc2aWR6TmVlQ2YrY2FhcDhmNnlZ?=
 =?utf-8?B?RytSTWlEMnNUOExnRmJMajJUSHJyYS95UXB4cmIrQ2E5NUJqY3lpWWxFSlBI?=
 =?utf-8?B?Y2JCYVJLb3RaRU5CZ3NEMVhEVS9uajZ2bWZvNTJBOTh6MndxRHh1M0lHZ1Bm?=
 =?utf-8?B?aWFZVnZPcTRxWnpZTkFtMEpKdkkwd212QU5qcEtVc1loNWhvRHRkZUNvMUto?=
 =?utf-8?B?TERWQlBIcmVsN2dudU5MNkV0TGhtckkvaEhlVVNLYXpXZ1JEVmZBOFNzeWRk?=
 =?utf-8?B?NkZwbmpTWUVUa3RNaDNEbXVZdFpQRkZmWDdMaktUUFNzSEl2dkxxbUdtM2o1?=
 =?utf-8?B?Vm1zYzZFVER5b0hheU1kbXNneGJWRjJ3cTUwdWNpTHhBNFJTZk0xZnNYQzAw?=
 =?utf-8?B?QXZPUFhrTGRXc1NVS2Y2NWtPMkFCcDZFZ3FPMEMrQjVaNnZ6aFkrYmdsQTVT?=
 =?utf-8?B?T20zNzlleG15U3RYSlVXcjFOcXlPMGIzeFBKemRzUHBaZWpkR2tOR3BuT3BS?=
 =?utf-8?B?dnZid0E0bHE2NWMzU2NxdWJST29iQmk1UG02Z2h4NHhNekx6a2xhMnYxVG1J?=
 =?utf-8?B?VTdtcEdPZXJDbTB3MTc5d0szT1RjTzVUSUlpZ1NvVzN3ZGpqbndzRGlZanBq?=
 =?utf-8?B?a3JaZ0NzYjJWS1JHMWsvVU9Mci9ETWszRUxiSmM3eVE0R1NOeVdLOWdvOVpq?=
 =?utf-8?B?d09JUzU3SGd2RG1HWThjY2E3ZXhac2cybWMzcWp3MHo1V1pIVlh4OUwwS1NQ?=
 =?utf-8?B?RUlWcTBHd3lMZk9YT0JpK1gwSVEvMDQ2dk5QZk94ZnA4MktMekloM2I5R3VF?=
 =?utf-8?B?WWpMb296djBLb0hoZHZvTXg1b1Iyd3RjRWx4RUdXRzExSWFqN0pHRWRERTdp?=
 =?utf-8?B?NVFCZzVwWXNpOGhjUktDRWdTbzNjM2dnaTE2Z0JoUlNIaXg4N1hBays0SEMy?=
 =?utf-8?B?d2NFTjhCeElZcnUzdTJTUUg4L3J4Szdwa2dJVmQxekRCdnVSczlxKzRoVzdl?=
 =?utf-8?B?ejNrU2V6NXE1cFl4cmdyZDE5N1pDanpGYWxwUjArUWQ4dmUxeXdnZXo2Y29h?=
 =?utf-8?B?WXo3UlhzN0crK3JOUFBwY3lyK1FvZE1na1JSYXBhU2o3TTNwTGVDdVJOMTd6?=
 =?utf-8?B?ZTVENVZFWkkycFl6M1REWjV0enRMMFZ5RTZOdDVJWnFBa2lEU2g5UXZQSEli?=
 =?utf-8?B?SHpRSE1kSlhpUFB5QWl1UkVYOCtHdkxQWlROc3hsSXFhejVhSnVYYVovSGh1?=
 =?utf-8?B?bE55dkNXTnIrN0liSkRLcDV0MFFmU1hteURIS1BlSVhtU2U1dTc1eitDaWRv?=
 =?utf-8?B?Y3BhajM1K0FDd2h3eE9Yb3BjUWk1dzJvMmdxMStaK1NLdlpjSmdFZ2N4OFB2?=
 =?utf-8?B?eVY4NEFQMkRxcndDdTBXSTNEV1U4cEFmdHcvUDVTWUFJSEE0QTFpNHdJQS9o?=
 =?utf-8?B?dE5saVZRRlNHWHJqdkNveUlyTnIzQmJtTk9BajlpdHJ6OVp3aGErc255WVJq?=
 =?utf-8?B?WjZzbGdSSDk2SzVaUVlKQkJsS25UVHRlaFlKRG5iZno5Sk1nZyszQTBOKzIr?=
 =?utf-8?B?eTdram5pVVpqYmpTakIwS254SXRkUUt2RmJQT25TVmJzN3ZKcGZoeDVWSUdy?=
 =?utf-8?B?QldKVnJRVGJidEVLZ2dDeDBhc3JnSE9PV1V4ZUpucHhuRmVLRnZWVnVwMS8y?=
 =?utf-8?B?V1I5aFZKRTYzOUl3RmNmQ3dDVFE5c1N4Z2I5dm1mdWFrRmk4aEdtREt0TWFP?=
 =?utf-8?B?cHNVYmRxczJTNHBVMEd1cElWWFZJMzQrdXc3d1FLSXZGSnh2ZlhtYXJVeXVB?=
 =?utf-8?B?NWtXY1VWQnRYYzNaeS96YVZyb1E0clBIUkt6VFQ2KzlzT2RMYTFzL3dyaDFF?=
 =?utf-8?B?S3FaTDR2Mzg1NjYrVi9LQVRXMmJ0bHlZMW9tcTBHTWk3YzBlME0ySFhKVUxh?=
 =?utf-8?B?M3NFcGJsazg1YytkOW9vMnFieG5CRGtLZkFsOEtSa01GeHVZVUVxOGcrSklK?=
 =?utf-8?B?S3Z1a1RWWTRRcVdubi9VM2Qva2dFOVVHSktmTkNrc0FkNGcwUXZvK0pyUlgw?=
 =?utf-8?B?OEdIVEwyYUtaVm54VHpZUUY1aWQ3cVlROE51K1lSUlhpd3JvSXZoTVZjVlUr?=
 =?utf-8?B?Z1ZkWm56S0FsR1RVNXZadnhvVHFONWhpQURQTmJIVjQ2TDFFLzUvbnJnQkU3?=
 =?utf-8?B?NzFSVkpkdkpFcmRuMllzQWh2TEZuR2NXRWRWbldCdTdURUZmSGUzVzJ4YWU2?=
 =?utf-8?B?RlFpdzJYcGwzaE5hTi9tUUhJTUJneElYcWN1R0VYWW1mYU5aMzJYc2p2MDV5?=
 =?utf-8?B?MHdtbFlqbHIvUkN6Z3dXN05ONzBWT1hWOFg2cUN1MUZuR2VCN2Zadz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 825ddf17-32b1-4d70-d9ba-08da1de2b127
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 06:47:50.0839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BHXgiXOJb+RESbVvaKN5aYbO1LrYgqkd//pKQzqCI/bjU+kvP24RnXOtDl05sFqZcrOpmF120TUoyrdGgCOX6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_234755_599125_DF77D052 
X-CRM114-Status: UNSURE (   9.07  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QWRkIHN1cHBvcnQgZm9yIE1peGVsIE1JUEkgRFBIWSArIExWRFMgUEhZIGNvbWJvIElQCmFzIGZv
dW5kIG9uIEZyZWVzY2FsZSBpLk1YOHF4cCBTb0MuCgpDYzogR3VpZG8gR8O8bnRoZXIgPGFneEBz
aWd4Y3B1Lm9yZz4KQ2M6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0aS5jb20+CkNj
OiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgpDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRA
a2VybmVsLm9yZz4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KUmV2aWV3
ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+ClJldmlld2VkLWJ5OiBHdWlkbyBH
w7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgpTaWduZWQtb2ZmLWJ5OiBMaXUgWWluZyA8dmljdG9y
LmxpdUBueHAuY29tPgotLS0KdjYtPnY3OgoqIE5vIGNoYW5nZS4KCnY1LT52NjoKKiBObyBjaGFu
Z2UuCgp2NC0+djU6CiogTm8gY2hhbmdlLgoKdjMtPnY0OgoqIEFkZCBSb2IncyBhbmQgR3VpZG8n
cyBSLWIgdGFncy4KCnYyLT52MzoKKiBObyBjaGFuZ2UuCgp2MS0+djI6CiogQWRkIHRoZSBiaW5k
aW5nIGZvciBpLk1YOHF4cCBNaXhlbCBjb21ibyBQSFkgYmFzZWQgb24gdGhlIGNvbnZlcnRlZCBi
aW5kaW5nLgogIChHdWlkbykKCiAuLi4vYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS55
YW1sICAgICAgfCA0MSArKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMzggaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkueWFtbAppbmRl
eCBjMzRmMmU2ZDZiZDUuLjc4NmNmZDcxY2I3ZSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkueWFtbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS55YW1s
CkBAIC0xNCwxMCArMTQsMTQgQEAgZGVzY3JpcHRpb246IHwKICAgTUlQSS1EU0kgSVAgZnJvbSBO
b3J0aHdlc3QgTG9naWMpLiBJdCByZXByZXNlbnRzIHRoZSBwaHlzaWNhbCBsYXllciBmb3IgdGhl
CiAgIGVsZWN0cmljYWwgc2lnbmFscyBmb3IgRFNJLgogCisgIFRoZSBNaXhlbCBQSFkgSVAgYmxv
Y2sgZm91bmQgb24gaS5NWDhxeHAgaXMgYSBjb21ibyBQSFkgdGhhdCBjYW4gd29yaworICBpbiBl
aXRoZXIgTUlQSS1EU0kgUEhZIG1vZGUgb3IgTFZEUyBQSFkgbW9kZS4KKwogcHJvcGVydGllczoK
ICAgY29tcGF0aWJsZToKICAgICBlbnVtOgogICAgICAgLSBmc2wsaW14OG1xLW1pcGktZHBoeQor
ICAgICAgLSBmc2wsaW14OHF4cC1taXBpLWRwaHkKIAogICByZWc6CiAgICAgbWF4SXRlbXM6IDEK
QEAgLTQwLDYgKzQ0LDExIEBAIHByb3BlcnRpZXM6CiAgICIjcGh5LWNlbGxzIjoKICAgICBjb25z
dDogMAogCisgIGZzbCxzeXNjb246CisgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVm
aW5pdGlvbnMvcGhhbmRsZQorICAgIGRlc2NyaXB0aW9uOiB8CisgICAgICBBIHBoYW5kbGUgd2hp
Y2ggcG9pbnRzIHRvIENvbnRyb2wgYW5kIFN0YXR1cyBSZWdpc3RlcnMoQ1NSKSBtb2R1bGUuCisK
ICAgcG93ZXItZG9tYWluczoKICAgICBtYXhJdGVtczogMQogCkBAIC00OCwxMiArNTcsMzggQEAg
cmVxdWlyZWQ6CiAgIC0gcmVnCiAgIC0gY2xvY2tzCiAgIC0gY2xvY2stbmFtZXMKLSAgLSBhc3Np
Z25lZC1jbG9ja3MKLSAgLSBhc3NpZ25lZC1jbG9jay1wYXJlbnRzCi0gIC0gYXNzaWduZWQtY2xv
Y2stcmF0ZXMKICAgLSAiI3BoeS1jZWxscyIKICAgLSBwb3dlci1kb21haW5zCiAKK2FsbE9mOgor
ICAtIGlmOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgY29tcGF0aWJsZToKKyAgICAgICAg
ICBjb250YWluczoKKyAgICAgICAgICAgIGNvbnN0OiBmc2wsaW14OG1xLW1pcGktZHBoeQorICAg
IHRoZW46CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBmc2wsc3lzY29uOiBmYWxzZQorCisg
ICAgICByZXF1aXJlZDoKKyAgICAgICAgLSBhc3NpZ25lZC1jbG9ja3MKKyAgICAgICAgLSBhc3Np
Z25lZC1jbG9jay1wYXJlbnRzCisgICAgICAgIC0gYXNzaWduZWQtY2xvY2stcmF0ZXMKKworICAt
IGlmOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgY29tcGF0aWJsZToKKyAgICAgICAgICBj
b250YWluczoKKyAgICAgICAgICAgIGNvbnN0OiBmc2wsaW14OHF4cC1taXBpLWRwaHkKKyAgICB0
aGVuOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgYXNzaWduZWQtY2xvY2tzOiBmYWxzZQor
ICAgICAgICBhc3NpZ25lZC1jbG9jay1wYXJlbnRzOiBmYWxzZQorICAgICAgICBhc3NpZ25lZC1j
bG9jay1yYXRlczogZmFsc2UKKworICAgICAgcmVxdWlyZWQ6CisgICAgICAgIC0gZnNsLHN5c2Nv
bgorCiBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKIAogZXhhbXBsZXM6Ci0tIAoyLjI1LjEK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
