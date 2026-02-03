Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B08E83060
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 08:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3S3yx3bCdGEYAi9FASU/oWK5oLveSRjw85PzQk330UY=; b=o37bBsubb8HK3k
	naZ4yLzz5dzD2HHSIMqyTSy1F3N+WDyEcrufiR8JaJsk+/rQBm2mao4EhPXvzrO2WUyZ/yEI3Kge4
	JdPsqEekS+FpKgzJS/jyDujNoEqPb/oVK99Vd888XeyzVTFHDyCeel0KP9azGqeXyMqOIt1rMKhf/
	fDH3sbidl+wPKYgVwfCsk5u9Zu3GaU35cmxvcBO1VCtwHV2UOQ1wJzeWkWEtwPWUS4Bt1v1vXrfF6
	Bv+86O7guEK8dI2S388GaFp9jnIfD8l8IvgMwaccxUwGAvX+LaO+TCskIiLqHWGfevgi9g7ydTrp7
	VtD1SiZAiFLuA4/x1PFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnBic-00000006Iao-2u0r;
	Tue, 03 Feb 2026 08:25:06 +0000
Received: from mail-japanwestazon11010068.outbound.protection.outlook.com ([52.101.228.68] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnBiY-00000006IYR-1IkL
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 08:25:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HRE80QlPfexlQ/CLBIYeEWLW+jauJU+b8poijRHQIA1haI2xDjjb18F/Ga+Y14oymj3rf5HtUBVsv3mkfjkgailTa1dXQI7amu1W7EMy5UxL7O9ht1c+fEjGVHay+/3wWuBC+y7E6z02hkWDM8k81LsNXsYgeZIZYQx7yJyP9ewjynUxYJE0TpXfP4Rxtsf/wHMnH7Ip4F7fxPM2DZU33Kmn2yH90cDfOrvMwqsgtjX7mnObVulVMWxQd1hBDQbykx4KEwrUAbDOqPkgjZ383zHnv/0FH8BSAGvWx4+f1YqrVvLDoNfuuNdSuHEfpjw16o6W1mi74FJlJaIHkGJ57w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IRatSE9WwU4sOkYbX6BzQwCBj98aT5uoCh6OF7zgG1M=;
 b=iuZvDOs1dP8/O8XUD/rjBSTfeddX+s3olOyiNNKz71ntlw+FylDpYLOZp5VKYpUfdIjL3YSKV4JHqK+emEw+ToMesR/CSMSXK1wZ7Qq4mGvZ8gSZnOJ8GbS36d/44TQJEaXwqZEf4Uur9Eit8jkddVNbENVmtcRlueMe2rA55g1BhnYGzJs07nF0eBNDdZwKmk2EOZSxI5kopt02CWpeMyKRZ3DA2l6ihVVSRJkbBa/rQmsznMmww4wIJwd2NLUlVliXim7cSkgmY8j7AbU3AWjWGkg4pE57P3qOUHIEyK/jRyqY1S0HqoGSSMKbv7KV0fO4KiTj704I5Q5OS6xhSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IRatSE9WwU4sOkYbX6BzQwCBj98aT5uoCh6OF7zgG1M=;
 b=Qid0I6+b5rXYqmb7ba64Hjc1l9HDp5drL+elDcVICN0RucPGhRYDDACNKL2NJrLtdl9f7nkhQhacBLvnGjz7Gff82QlJQOyLt0fZMzKt5KPfucxyE6ETgNjDGsJadjDQfNFQ7gV8GVlnd5T6uPmdWx/+TaXg9lQZIuK8RMptPh0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYRPR01MB16341.jpnprd01.prod.outlook.com (2603:1096:405:141::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 08:24:47 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 08:24:46 +0000
Date: Tue, 3 Feb 2026 09:24:32 +0100
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: add regulator dependency
Message-ID: <aYGwwMLkVp4X2IBC@tom-desktop>
References: <20260202095118.1233046-1-arnd@kernel.org>
Content-Disposition: inline
In-Reply-To: <20260202095118.1233046-1-arnd@kernel.org>
X-ClientProxiedBy: FR0P281CA0044.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::7) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYRPR01MB16341:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a4c72d0-e08b-417f-8d3e-08de62fdb0bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|52116014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wvBoHyRlKer9SqzcWUw4f7FEVCvePUrKNEZwHRowFpS0HokXBWolWGz/1UA5?=
 =?us-ascii?Q?PwQ0Uhv4TfcOovIYX/eDAK8CNMlzPvYRl+kj6VpXtqZA30wJhfzSEjHU0oep?=
 =?us-ascii?Q?ZlzMRixvWJKNHtv3pxpT5yxMqwyu9+O93UDLPXiWoYrg5BjzATpuXR4ndsZm?=
 =?us-ascii?Q?F0J2uKMiWlGqQoafgo5uiAWSFbV0lNCZyYYiUxhXTTLMjHwWDmN5i7esmrJZ?=
 =?us-ascii?Q?+me7hdK0oMQ7JxEvOy3bLRVme9nWQ/1MsToAFthk9s99Fhoqzi+F1/0OPGeQ?=
 =?us-ascii?Q?/8+3NNb4nzOclImsQuXedqsopH8Fv/4cLDHvTvJKNvpunA+EBSG6YLYio0zP?=
 =?us-ascii?Q?iwA+e9KunXiELqceIPGDJ1jbO1mRiQ4QTBtC3Y4UE7ycTZqc75hQu9z/1LiZ?=
 =?us-ascii?Q?3DelShVqpxPN1zKDpKE60Inimh7KK+QtliQxbU0QZhXrXBqMokkgndmj3biU?=
 =?us-ascii?Q?onnNLAWKsVwCtQG9ASFSJ3rH2NPCG1qRMATIcKL2twn+l8rVxYTLvUrw1D/I?=
 =?us-ascii?Q?jkhhdAuZHBdNCKtVL/WJTJ9ykooVwUJPYGPxrKXsTXrQuvGBPoChk2XMLOuq?=
 =?us-ascii?Q?+YQi3Ce6gtxbsbKdONPehMBpQP2N/Qis79IlOnPpXnXMsXKCuCApKVgyqPeR?=
 =?us-ascii?Q?XhMka9cp9iL9uQSgHlz07FXxsSAb1lNI1YOjAKEG7/6As2UEAQgLT2lN5aDd?=
 =?us-ascii?Q?hRlPgczVBjoz29KGp12hmSXJz9UvrY0wBMqJGcMkdf1IO3OKDO7wKNiGjrWw?=
 =?us-ascii?Q?g5j0LE3c2OGp8wk17ty+ha2Z1V9EsR6q63Ms5YYrIlDNnhMRWxH+aAbwAimm?=
 =?us-ascii?Q?OALWIQCfkTG39kLMrDCYpNCsMSjPOaFTwIvmo4gwLQ6uFLjG/wHHAp7ke5Vo?=
 =?us-ascii?Q?6x6mnqCLY5vcu6bEgxn67hpm9IQvhG72suQOL9ckF/zQdJIuBvq1LzE7Xviw?=
 =?us-ascii?Q?GwjsGiIwd0E1vClmPWpmmVt7UmxrcqT+kRQqKCU7xacaRK+vJCC7fDkstmZ6?=
 =?us-ascii?Q?qa30AC5HvX+A3qVvgftcCCJ0R2vJPmjAob9QIDLaus6x0BnVdYdCzxb5XEZs?=
 =?us-ascii?Q?WYogavmbkPhzykB+cKyeGeHFnWNL/nnaoD2axjNrXqGFt8vl5Fii7y5tdch7?=
 =?us-ascii?Q?73GvhqCVzdjUsdcpWF3ILN54chy+gU/Lw4lk+bom9todTkNJBXnpNxPSOEV1?=
 =?us-ascii?Q?6pfNX1RTgu213vkwxwNaDVwab50j9/mfAOdx95XrlmpFSEn6rmi9U+QDc71l?=
 =?us-ascii?Q?FFC3S05ovtgCYnzXIjRLdUmF+NKSiAX357iu89Zsv9HAcp9GKcg+CaMHeXqS?=
 =?us-ascii?Q?utme7g6LO6Kj1XoGS90KrFYWlYh950Jg81AlzrLEz/SqgzsyPEHJDhXnKoRl?=
 =?us-ascii?Q?REpa0h/fTO13ANgSfTTGvVXdkSK7YaWmy1ojGdx+/rPEQ1a3pKhNVmvqQBXP?=
 =?us-ascii?Q?50JkILfKPlqUnDUL9vaw1IqmKB6Eppc22HgyaVqJgCBATLlpq0XfYIY2QPkQ?=
 =?us-ascii?Q?VKtXsmiPWbFbx4RBHRg9+N72L2fTIBerpfvtaq/5lXUxjTKWbu8K/qyyCjZy?=
 =?us-ascii?Q?AJoKdcW92NGpOvENyGVn5LafvgvLrn+Rcn258cbx9ZHmjw3kWfBLi8l3boxc?=
 =?us-ascii?Q?GE+QtojXJgWP6SZES4gs85w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(52116014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wIiYN2UZyKAbp2WdW2M/58Gv6asttj5ZijDiZnLGwxXXZXmWWz+QR40GOPtw?=
 =?us-ascii?Q?nhxlPqScNq95R6gppDTb5olQVnq9zxmKL0aLGZM3/r9nYCozoVQUqjbCk2pk?=
 =?us-ascii?Q?B8YMGo5UM7dFX5CWd7S91Ly/nDm8VGLP2Dy2ARQY73mjB/tvhGaG96g4fBve?=
 =?us-ascii?Q?PTOTLFg5neyObxqIBoC+QsspiIvYiMl7XF1dMrSYGxsK0QjC/7JdjScd5q+B?=
 =?us-ascii?Q?SFbr99uKMjyIq4O/KkGvZvz5JrgSxtkGvhJ3wj/3XqqLD6y1xQerzJ+T4wO3?=
 =?us-ascii?Q?pjO4IrlcBtA/eriStwwcWYxokug71hSnhNQOV8gt5zqXg/Hj9NWiCWBVp0ck?=
 =?us-ascii?Q?80xqn/tOizTh49W3dFTX7gLJp0eyeVC05YRulLSHhKyC0eLuN/DXss45fxoL?=
 =?us-ascii?Q?YGvIQjsyjFX+GkVvbd7F3Y3skHeYlWNNeuF4tW/vvt7VXwRQqou0u5bZ1jWq?=
 =?us-ascii?Q?fGj/uO+9VWm8d9LFMZboKwa3IAWrG4L94dw5rZRbyxv9tZko4QVLUg5F3c7s?=
 =?us-ascii?Q?ZxBoMvIU1zaC5XQH4ILVDfedCsPrTWBlhkpEuQ22iZUcqz5vYkoCl7dpfXAO?=
 =?us-ascii?Q?IHCkX+1VaqdYTfRlLVJ9lTf3Sg/cFf4LIeTEhWHfp/kCjkRy+Lrp1higEiKH?=
 =?us-ascii?Q?jvcyDJgXNLUbXVsCGkR9hYzcLB11WU7IIx6Ku8hpUSCaHjQckZ2mjpUgO3io?=
 =?us-ascii?Q?gjpOCMt56ODNTH/GiMypz5AOM1Ws3Mo08talsDYeIyaRwnAPZ9ZkXOphsfY+?=
 =?us-ascii?Q?TcWmmQg37/ayt+BbARBZ7MvmH5V6AiAq+jxMEbuB88MhOaruxeoHI9jyKpeB?=
 =?us-ascii?Q?LdiHjP7Q+8IJMhxxbNtFufUIS1n6gHixabMfvY2GXYYEcyVXzPeA9PXZTCSs?=
 =?us-ascii?Q?QoaQNNqM+glcL2tjqC/ZVfYSbz9PwqBHL7tHo24F487Ln94HQKoFUX4XisMu?=
 =?us-ascii?Q?Upag66eslLdnz7pko7KlKCad9+fmuxYKG9YPXBZkCnoOlnF27GtYmWHo7mBi?=
 =?us-ascii?Q?i4flRvc+cCBeTLn6eXxKHBoDZ8o9lNSitJHajpr0csxMBDRP6n2XpShSn7Xu?=
 =?us-ascii?Q?wZEWYgPnzTOtedD9x+sfmLMR1pm1wjYTHWF/V6MpEBI6YvWBO4Y+LjEesu6h?=
 =?us-ascii?Q?bR5RJlYu8vM6hpKxMZuanAFzkYNBW8fA7J5NwOIYmsKXXg9GX1RZyTS1H0SD?=
 =?us-ascii?Q?ccIg+s5hdf75eO3ilJjaZv1hZMzx9nB/3qP1pmjd4bxLwvFyf4vFVlGRLiKL?=
 =?us-ascii?Q?yzdLdK/VGoT2NqkKp1lhaBtMgBoMDER35NmmA6zls/62EUcpXvTQwDJh30VQ?=
 =?us-ascii?Q?rJ/XDluS74p1Ya645RQT4OvD2W2P+bz+gf1p5zcCdw8+j+2TTbUHgCwK1ZbY?=
 =?us-ascii?Q?1Bn+SuTHXcF6vKRiYVjGPP1x+F7jQvyj7O0rDCW9up5unU5iEEeCm/TBVt3y?=
 =?us-ascii?Q?UgRIRHj+/MZjL1kRjB6BsKKmwCs5HI81ltf49BkgwxeD9NAELt+njgZXatEq?=
 =?us-ascii?Q?4ws1gYtVxq1xMyObUhSrPBlP61HGS0mVEVc4G2B/0Ex2Clk4XLwAFjCZ4J/7?=
 =?us-ascii?Q?WiVwY+ak7E3qJF2QxOXQujD6K1DGU6EBE9sswEsL0DSqCxl02EeX4pFnUb/K?=
 =?us-ascii?Q?Fg3Ql1bwGBceqPOQf1Fh8DQnbUwPjEsvW1deBpWRF9f00/rMMfCQ9RaVeaeD?=
 =?us-ascii?Q?U6VVAFI4NqC8s7MhdqyfsvpwQKbpXvcdgyQskvl/QrCknt3gd8pksenikmPV?=
 =?us-ascii?Q?xd+JIVW44WBJYQefvq7uv25VzSF9q0zn1+80bXSqIwi2i+E95LGh?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a4c72d0-e08b-417f-8d3e-08de62fdb0bf
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 08:24:46.7718
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vvkFjTDCEjCgcOfMxBiC+PEj8f4s/ZyownOtfTdLSOximj+RfjxlE8gIDLPv/q/2aWeBj8b8zbqAeIwhAHSbKdyY2JQhOAe/lj8XHn+0bsqz9DHlo/nsSdfDV5naL+Fy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRPR01MB16341
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_002502_694491_2047424F 
X-CRM114-Status: GOOD (  17.67  )
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

On Mon, Feb 02, 2026 at 10:51:14AM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The driver start registering a regulator, but can still be
> enabled even when it is unable to call into the regulator
> subsystem:
> 
> aarch64-linux-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in function `rcar_gen3_phy_usb2_probe':
> phy-rcar-gen3-usb2.c:(.text+0x2884): undefined reference to `devm_regulator_register'
> 
> Add a Kconfig dependency to avoid this configuration.
> 
> Fixes: b6d7dd157763 ("phy: renesas: rcar-gen3-usb2: Add regulator for OTG VBUS control")

Tested-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/phy/renesas/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/renesas/Kconfig b/drivers/phy/renesas/Kconfig
> index d217c630b2fd..90a9ca2db7fc 100644
> --- a/drivers/phy/renesas/Kconfig
> +++ b/drivers/phy/renesas/Kconfig
> @@ -29,6 +29,7 @@ config PHY_RCAR_GEN3_USB2
>  	depends on ARCH_RENESAS
>  	depends on EXTCON || !EXTCON # if EXTCON=m, this cannot be built-in
>  	depends on USB_SUPPORT
> +	depends on REGULATOR
>  	select GENERIC_PHY
>  	select MULTIPLEXER
>  	select USB_COMMON
> -- 
> 2.39.5
> 

Thanks & Regards,
Tommaso

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
