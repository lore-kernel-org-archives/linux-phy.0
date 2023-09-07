Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98386EE14D3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Sep 2023 09:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9M1huBZBhIHFMUQZe0PzUOO+mNw6wCbJ5VtFtjU6kJM=; b=pLhf/WZXUgz3jbca5AlWh/PD4Q
	tt9bzuTq5lbzjR1IttFZRtkGnjaMyjsG9ddxOjSXNnh4+l6PvldOi4mzwg5Mq8JVy1XyCsTYpgoUp
	QMDFvc6HsURd2PLrsAVJdHnj02Z/ghnnKPLHBJ9a5sKQXkI9C2qOvh9IqvuomrbdKNBtw314gpC5m
	U6sUeh2Ek0/nFzkXqrm+TetYdAzneV4tUj6n0VjIuE4t+dgUSd+9Wgmo4oW0ZTeJ6xVWY+bEmUF2H
	YgQ21GRjPhBTUNkJhql8Ip0JtLWyJFsaBd2yst1GlFBVfLkI6M2Lp8RwkAtXYFP15n8KZL7BYHynf
	2mXLNGig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeB56-00Bey8-16;
	Thu, 07 Sep 2023 09:13:44 +0000
Received: from mail-db8eur05on2070f.outbound.protection.outlook.com ([2a01:111:f400:7e1a::70f] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeB54-00Bevj-0X;
	Thu, 07 Sep 2023 09:13:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igdnE6rTPSLE2oI7bk7RQ1pZ3m2DMlSX6hQ8SWa0ykHDRnKGow9O12l71SBFDnmdo9CGGwBra92TqojTTciGQveCDUPtcRxc14k8Bkj2H8IcqyQT7utaePtpasOh9em/1hcihlOHL4qbaU74HAtKZo3WuQr+7gSx5VDEaWytuQ2wzsifE1khT9Q8jHvgIe8KXEiNWx1Bpjw4gRkA/k86vXlSeJ+YBJtnWa7KjK1DEZ5ZiMsgXkKXR44RQQDqRlpfpXXYSedy0dXS/q8nYl2HMvuKwD8Ur90uCKp/Elq/utGT7JGMkMpt0NEtNFE4HR2vKEpIeY4Ljzt7Xb2j3ltjPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XW46ODAz4Mr8zaC0OPAnkPWR1PRmqfub35U/q0D8Xnw=;
 b=FNtZ87I3+hgd3JBfrHknMN8ZYTXsqVwoFV19ZhMbnaZwQJVWQ/XW3apBKziAE1u+b0b7r/WOvuHL/sFJkIgu5yWsYkZPUsElmE6omAfZc6KSlvSuO2+iJQSqpCZkIrD5MjExtE0AR1jf2DyOZzTxqIiSvSDkTwABCLr2e+ff5/92rhyWNuRleDvUAr7TpFhMBFGJ8kJxX73q3A9KPqaj9LS3OsNN0atrqJmXOz/io5ToOhHwUcX5UizFjfpIgxzTG4rxgFGOp7qaDrCFg9iUnzQWWXn3LJAcDoLAPPo8lC2QAx5rxyVyn7GsmGz1vD7ifIswgwshcHbfmmbpxb23Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XW46ODAz4Mr8zaC0OPAnkPWR1PRmqfub35U/q0D8Xnw=;
 b=WhctFBcLmoWP5raCjyVFBDLSqZAomnwzQ3F7B1aV1urWiPiOybAnsp+D9h6y8DYtXX2dA73X+Zw75Q1bBzVsHPIfYbEmQ1jH0RADHOxddn4DJF4Z5EIX8NyijmCGH453MuWC284ZeDMoYaWxtv/skD4ag8mhhaAUhNibky4mR3s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by AS4PR10MB5395.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:4bd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 09:13:34 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7c42:15ff:f9fa:b221]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7c42:15ff:f9fa:b221%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 09:13:34 +0000
Message-ID: <f04f1e17-3f21-48a3-bd88-0b3f327813af@kontron.de>
Date: Thu, 7 Sep 2023 11:13:31 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Content-Language: en-US, de-DE
To: Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Richard Leitner <richard.leitner@skidata.com>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
 <20230906184211.1857585-2-l.stach@pengutronix.de>
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20230906184211.1857585-2-l.stach@pengutronix.de>
X-ClientProxiedBy: ZR0P278CA0085.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::18) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|AS4PR10MB5395:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ce84671-adad-4115-5375-08dbaf82b67a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j8yZz0ArxplkyGyf1wZAdCyieCvxN+RKv2JG6xjcnGHCSZxacYKq1heJmlbxZvMOGuF0g39273z5jUG/x0XuNqt2gchMm5xwDxx3DLwxlp73fzfv2Gkt0fSqQDspODrmMQEj/NoqJ4EnktrdEIUy+Zi0WY/erjTBWL+/2UkGWZZUw06Zu9DjF9gDwW2oQdAW20DmO4yFCqkfXn7BqX9OifPCcqaeIFuv9J3vJz4bwgbxbQkv/rZ8PlQh1Wc7TtUCN2qkaNWATWVZC9MYby550NdvPyo2pcf7Pim84eL5OvIRF+J8Bdf5HMJQAfLYHC7FYH/ZAADIriGJJcv9jkdxWxVc8/Hkdokdr3cq/UJJ+8keWOmccmX6+Gl12O7EmEkkIB4100R6p75H1uzbHFofE33kRqMLhy3kDeZqt1ig4NoS7aDly6YbKGoXiS9BgvP+Jmi009WGk/giH+sC+hGIslLarSDJZXU2cBAnWd2gvxUHYB2DgdG80t1q5+QwZMf/BVhT/ZGngs714wJpsCWt+2ZF/qk9QJDSGVWJnbYzaI4S2g8xtCNtR/ICSSwBPmaI2sCcmQNzC1nR3pgjwcnoCubeMs/VhmUPinYvq5uCa1/AdHfkYrD8EFag7EfL5IT/6XyqUvlC8r2goW4ixuqubg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(396003)(136003)(346002)(39860400002)(1800799009)(186009)(451199024)(8676002)(44832011)(6506007)(66946007)(4326008)(6486002)(8936002)(6666004)(7416002)(31686004)(110136005)(66556008)(4744005)(66476007)(54906003)(5660300002)(41300700001)(478600001)(6512007)(53546011)(2906002)(316002)(26005)(2616005)(31696002)(38100700002)(86362001)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nk1nMWRPL0M4NVFvaXhPblMvRjZnVEgxZm53Q0pzVlRma3JJNG1WamxRNWR6?=
 =?utf-8?B?dnFqZ04zcGhUbVdZb1lkU2wyRDBSMGRKNXVINVM4WFFnb055bXRZTkU1Y3Bh?=
 =?utf-8?B?a3l1TlVYcjBDR3N2TCtoa0lnNFFleW5Td0x3MGNhNjh4UnN4dkFTakM0ek5x?=
 =?utf-8?B?Ymw1TUJwQ3dxdFhrM1U4RnZCK05GWlhwc0ZiOEJoR0hoTUt5dTU0aENoUUFl?=
 =?utf-8?B?MDQyRHZZRWtDR2I1bjc2czJwdmNKUkVPdFZjUWF0ZEhtOVN4ZkdOdXZNS1NM?=
 =?utf-8?B?UmdBTjFGL3gxK2M4REsrQlVDZWJFWEUwSE9aTnU0aDVTWGtxaG83dHNRY2I4?=
 =?utf-8?B?TStHbnVHN2s1dVJJRitpZk40NFQ3dXI5bUc0N2REUnRZWmtJUU5nTlhoai9M?=
 =?utf-8?B?NW42aUlPTmduQjVDdURISHhyZWdKT3g5TW9XbUZ2TmxFRm5EZ2RnRVp5TXBS?=
 =?utf-8?B?LzFDSjVNSjBNWmtuVXpNRC9GckRGK2Q5WFVCYVlsMWVkdnY0UXo4SDlEQldL?=
 =?utf-8?B?Qlo4dTRPZVZ0R3hGWXF4MWZMb3Q4TTBGWi9Xb2h4akNMdjl4U2twRSt1WHV6?=
 =?utf-8?B?WEp1RFJSN0kzVnVDTGRTa1dhMWpweG40dnB2MEJzRUJoVkE0SWJ1eGJGbmdy?=
 =?utf-8?B?MmM1c0ZmV3RjWXdQWC9CYlF2YXBlRDRhbEpqWGJyN2UwN0daemZqUnBjdHdu?=
 =?utf-8?B?MFEySDFOcmpkREhzeXhpRlc3NGdKV0h4MW5BbThCdTFlRFJNVXhlYzYwTFJJ?=
 =?utf-8?B?ajBtbHNCelREeit5dGxqekhwZ28vdS9XUVdMR2lPQVFIUDlYRmc1OEhBWEJM?=
 =?utf-8?B?dVk0bzRKMzQ2SWEzbHhHbnZNblJyODBDZ1lsTDJlbHFhcEZtU1hhRE92cmFq?=
 =?utf-8?B?SXNzSHZkb0pMWGpPYUxSdWx2OWNpVHh6RkxzaFhwZHFnVlFneXpyRUhHWE9y?=
 =?utf-8?B?T2g0OHhWMGx5L3d1TlhMMDl3elNkcklQYkd6NmRpaUk3RWp4a3dWQnhieGRn?=
 =?utf-8?B?dlVUVi9DNFlveElkTWlPUFJJNVhHVFR3WTFacEhWSzFWbmRESTc2VG5yOGgr?=
 =?utf-8?B?bkNPdGsrWWFOeWZPemRUa1hDbXRiclgzSEd4ZmpXOWRYN0liUkUvZURxOUxF?=
 =?utf-8?B?R2Ywa2Z2YkhJZEgyU0NaSVZZZmdOeDE4MEpDRXFoQUowUEtORzA3VjdtaFE2?=
 =?utf-8?B?TGZ4dkNEVGI1ZWppcE1RTHdGU2E0emNFUnVqRmNSNkpnVGlrMTI1NndybU5M?=
 =?utf-8?B?endrUW01bHNmS0pDY0dXR0xoK1FLaW82NVUzSEtXT1R1TXBwVDhuVzE1MHBG?=
 =?utf-8?B?bjJaU0FaMUJqSW9jcUNYZG5iYVFWSnVya214T3ZDdlVCY2hvcC9KeE1DTnBE?=
 =?utf-8?B?c1V2ZFpvTWhoS3ZiSWFNTTFPcUM1b0ZQeUduZmE3VktSMy9iMHVmZGVRa2Fp?=
 =?utf-8?B?d1J6cVVIZzhvUVRvVTV5Y0xybWR6NXBFOU42c0ROOUY1UHJWdXJqMjY0b3VB?=
 =?utf-8?B?MVlKeStFTjNjTXZjbVo0VUswS1Y2Q0RBSlNwS2Y5R1Vuemc3cUNGVmpldGha?=
 =?utf-8?B?eFhDMDVDOFkvT2VGa0QyU2l2TG1POVg5QzIwUE1qbjBzOXpZeUJrVG80NFVw?=
 =?utf-8?B?ZzFCRmxEcjdGUC9kcE5JeExIUzYzTmYxVklDZEIxeXVYVWpOVDk4b2IxYVZw?=
 =?utf-8?B?Qk1UZVVZUXVmU3Q1TGFURGR2V0JyVHVLaTFCYzJGNlFUcjhqaGhsODhVaTh2?=
 =?utf-8?B?SGdYSStIUkJDVmdBQXNjcEt3ZnFKNlJIYzlYQ0tHVFBRQjNjaERxa1VkaTZa?=
 =?utf-8?B?Q09uRytvMytVeHhpcCszTjdSbXBLaFRET050ZHhkM29vZDB5d3ZVbjA4QXFj?=
 =?utf-8?B?YlhHWTBjZUphenNVV05tWUdRMmc3MDRPRjZBd3BYaTFHbnk4R0ZQU0JDOG1B?=
 =?utf-8?B?MkJGQzdOMXU0emNpcjYvaXJLa1VBNU5ZWU53S3g1QXZ5bnV2ZmpoeG1pNkI4?=
 =?utf-8?B?R2E3Szh1UW5QbTNJMXpqU0ZMQlcyalZnaS9kZVZDZG9pZFY5N0pjZ3ZrU1Rk?=
 =?utf-8?B?akIyOCtjQ3V6eHRkaVZjNVAzQSt2Rnp3SkU2RlpXNXpVRWxnWGFqYXFwcW9V?=
 =?utf-8?B?SHFKUXRndHJ6NTBuYVhxSmViZ0pFcllWUkxQaXIxemxyN0FJMFE1U3dTQVFB?=
 =?utf-8?B?dGc9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce84671-adad-4115-5375-08dbaf82b67a
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 09:13:34.8053
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UvtKjo5bAhI4rYKQw7VarRrlEeTQ3sEYTfUgfrOLi0tJ9C1DfgGncFcbhcgYg7Qfh+Z4JK29kcdql3zuP/x+l8p5x68AZOXjlw16rMPcH64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB5395
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_021342_213320_9FCC0285 
X-CRM114-Status: UNSURE (   7.57  )
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

On 06.09.23 20:42, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v3:
> - use GENMASK/FIELD_PREP
> - lowercase hex values
> - correct coding style
> v2:
> - use DEFINE_RUNTIME_DEV_PM_OPS

Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> # Kontron BL
i.MX8MP

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
