Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 200B1C43334
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jun 2022 15:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G8FVYHgyD+4q8U5u0S0dZ20t9GBZGFc4mcfCRkAFSCA=; b=vANKRYW7wYZy1xbKjMxBl/2qnl
	Vab+gDPfLPCz963Ayhy/fv2kM/vabmlAwt1qKbcJnCbAdqFx8/hlAMNYCf8k1ygZJTIPpSZpMWp/l
	rUDOivncDbDt3MKush4vOQbWCwoIHaa543L0nH14JzElRT1ojUVcrFPAw7Lhs3+Jt1ttspniJo2Hr
	tyhZwbVjMnxu8XnvEjCzG8lSxd/gexjHNRplP/GfQJMKLuCi+43kwGrqxAh0qLZWJEmdMz71MW63h
	3P16Mu/9TDnWSNmwxNJOYLtP7GYulYifaXELEC7mPzi+3yhxL/HxxJNNDUW6G4ZJdb2ByO8dEkcRS
	tewdJ12w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2akw-00BjfI-FS; Sat, 18 Jun 2022 15:53:02 +0000
Received: from mail-db8eur05on20608.outbound.protection.outlook.com ([2a01:111:f400:7e1a::608] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2akr-00Bjdd-MP; Sat, 18 Jun 2022 15:53:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BBSWo/9rSkjHXjr6N6jIgj3+FGQ2vSrzgrVPqa1UoEMtsQ6hcxD/mimkZ6wkt+12kmci156wWLRmIjXtHw96yFd5+90Nf6r8HG02MPm0OUzj7qAwiztFvaxxZgRb9OFfIN7LcWqmAsyZ1G6Im0Ttf99Zr3fMjapmp3K8GtoHmdh0BWhTttQk8rbFap7+UGp9uiWIgyBcEo1w3W97nWROFRL0nHgsK9H0kZ/yWXK42qDvvrmP0rAelGUarhpeFF27x3L8VYoS1tho+2WqrV90W8Zm9j/SUgALQymrW237r0fTEH1vhJi/QR6vKBPuZ5/O0D+b2veKzGhemvMDCuh7EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ZfsB1mYcVzGu7E833qw5u/x2zjd793LtQXnRGKpGlo=;
 b=Zh1P+nMfwjeVww2MffZdFAdU7YEP/kwQ20PeY+6LKy/KGewiTj5ORGzQ/HOap0g1lPo5hP6OgptfKL5+Bz32TPjwHeidJQu6h3xl7d5mfbQim2/MngOiWBMfGtFhGkjBPfeEX5NuZpzXIhvP6wLvAWSC5wg9BIh8sq3E36txCot/RVGRNd0+xiW3TWTGhbb1XB14+j7nxgFcjMqRDWSxz3qgN70hjaZ6R5dFY8Z9OvrWM4A72SdbVfhezA/STYZyMPa0ss2x41eF1clotDW5oA0Tmk/1lBh8BUd9gccCtJ+/Wc/cmzmDt5deUMYDOCGI+SOUN5q9pr6/diBViSiMZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ZfsB1mYcVzGu7E833qw5u/x2zjd793LtQXnRGKpGlo=;
 b=aIzTBuRhy/LRR1+S7mSHDX9T0V/DBoX1DlR8JPTvUmXGIdlqW/B0fgD8vLzjjs56yItOpsw4DE0FNZr6AuckgrPaWy7TKKKNOCXyciMZPwx7YhStCwvvSi8ONp2lt0t+WSuBEyj6T4ZMOy0UYJ6xEfXhJ21HvMNmlnkkb5FzcErKWDM3cplAaHEnsEoG+7Io1m7+VKis5dlEoa7xUvPixdMon4zjXL/Y4N6cCkdF4uUjzI5nNALuwZgZP+hRZYmUrq3RedpQnCGa27q3RlQ3qYoTJ4vrG9ZzsFjIy1N1h214B6OgQNzRoDW0hwZJxl5r6S7+iRXaYmQ5IQRJUIFpYg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by DB7PR03MB4601.eurprd03.prod.outlook.com (2603:10a6:10:16::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.18; Sat, 18 Jun
 2022 15:52:53 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1%6]) with mapi id 15.20.5353.018; Sat, 18 Jun 2022
 15:52:53 +0000
Subject: Re: [PATCH net-next 03/28] phy: fsl: Add QorIQ SerDes driver
To: Ioana Ciornei <ioana.ciornei@nxp.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Madalin Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Paolo Abeni <pabeni@redhat.com>,
 Russell King <linux@armlinux.org.uk>, Eric Dumazet <edumazet@google.com>,
 Jonathan Corbet <corbet@lwn.net>, Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <20220617203312.3799646-1-sean.anderson@seco.com>
 <20220617203312.3799646-4-sean.anderson@seco.com>
 <GV1PR04MB905598703F5E9A0989662EFDE0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
 <GV1PR04MB9055F41AD598F85648B54EE2E0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
From: Sean Anderson <sean.anderson@seco.com>
Message-ID: <df411ea9-b12e-09f2-6f96-0fb4a023cb7d@seco.com>
Date: Sat, 18 Jun 2022 11:52:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <GV1PR04MB9055F41AD598F85648B54EE2E0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: BL1PR13CA0114.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::29) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 785755df-a736-4ada-50cf-08da51429a7c
X-MS-TrafficTypeDiagnostic: DB7PR03MB4601:EE_
X-Microsoft-Antispam-PRVS: 	<DB7PR03MB460135AB99BF98594984703896AE9@DB7PR03MB4601.eurprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	eA5TczEJfRy0J9xcdkxums9M9xLI9U1RoUEXgOdss/zgfydMa1MYgB4pDfNAGgv7QeQ0XKug3EbFVUsEqbZLD6yRclt5uytzU8lMZQZBdaFNJToS8rAW/VBgXnA338bZ/UOrLYhj8LMSACdE/HJSuqQ7tVTEG5u9N4i17NaLLfXYX/tmCmnA8s0dYYhY8+xYf/z8kagd5P8vYaitUN73JwUSDRgBhLqp4ziBTstzBcE+EsHPiC+HFHmuz+5CRSQ8HV1a3ooukRmflsFviXAeSoT+pRYyQymGqZDJFszRoMFCwf8wXJ8JpRVuFXe9ioeXmbtqHLnlgIPQXdKMaLUkwNjdw0gtYtwYjEZdoF1PYAMvJGXwnHhKnZx8yI21YPMJNuFUDoh0t+JXU0eY4POQ8kbR7mvS+6gZUDmdaE2EnhnI4xydkq2OpZnki1uHJWyHGT3Jrh9+osNjMSAN7TOiJNKLdODPpYrMZuYtQpF832UmiCXzLdFsh58msxmYc7ZTuefd7IT0I6j3VpcURivINMh0u9XUJ54w4PGIGGW+OzTHPEhJqyHrh1UXP6/b4+AO8a+Mh3a6+QLX80vF23XzeeiZ/tNbKOi9KEe8eirhNT74RfqoestckjBC9oV6OOz8dblTCl9wu6zXChNRT/M/AKQNzvI+urMJPpGVOMUleJWRbI41lgv8lav35myi/TLtsbxnZfKOmhioSXlO+UssnRNhC2+wKT5BxxuQBGUhPUYepDmzXECQkpga8tBXq54wpawLGSYfpXeJxC4fmxFiXA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(6512007)(26005)(66556008)(4326008)(316002)(31696002)(110136005)(53546011)(66476007)(52116002)(86362001)(2906002)(6666004)(6506007)(66946007)(54906003)(8676002)(8936002)(36756003)(31686004)(7416002)(38350700002)(5660300002)(38100700002)(6486002)(44832011)(2616005)(83380400001)(186003)(498600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?WjZzWnMyWnFWM2VXcjc4VGh2MGliWGtQdEtBcHRRaHorczgxMVhyOUIyaERh?=
 =?utf-8?B?RnFHUTJqMzV0bmU5aTVBRmZtTCsveE1hL0JBdklSZDRaYTFmSmVGZHJDNzVj?=
 =?utf-8?B?dGRIZGo1dmZXVVFFQllVTWo2VGxVSkNJM0cwV1lZMVZHRTFMR0lsWERlcDVo?=
 =?utf-8?B?bGJDblpjY0xrYzBaOVBlOWJLK2ZjcUVFKzI0OUYraGtmS1ZpM2grclVCTS9E?=
 =?utf-8?B?eFdWYUdzOFZuRVU2ZUJsdEdKdWdQcmx3akxjcGw2NVVrZGcwTTVpVkhDT2xy?=
 =?utf-8?B?ckxhcU0wWVF0WkZEK0wyVVAzSWozcUx3dXNnYnpNVThSblJCdTU3OEN2N2hY?=
 =?utf-8?B?eGFIU3c2MzhpTTNGbmhoT3ZCUDY4VmM2T2JPSmc3amRyMldZenM0bE5yN0hL?=
 =?utf-8?B?YktxTVQ0dnhrVzR5RzEvTjM2NWFJODdCMUgvc3htbjBadStKWWU1YlRUOTM2?=
 =?utf-8?B?cytIaWsxaUZVSVd6WlpKMTBYM3VLV0JMdjE4QzFTVHVkb29CY1RaQnRoamky?=
 =?utf-8?B?WnVhV3RYem9OTkNsekNnc1F6eVU4Y05XWWZLSjlwYk5FdzdIVW5BK2FZd0RX?=
 =?utf-8?B?NFp3MzNSMTlRblREWnRGM014M3dDbjB2WTBNT2orZGlJMjNLM3Y5RWdJd2Ji?=
 =?utf-8?B?cHFDV0tiUHhOZTNPS0ZwdEQxWWRWRnNBaG8rTmVKSWFqRGtJZ3hYTkVGS3I0?=
 =?utf-8?B?MDNic3A2YjFPRE9qaWsrdENlek52ODU2RjNvTnNZQmZ6Z2wyNkxiTy9qKzBZ?=
 =?utf-8?B?RmJ1VDlrc3FqaVVsVlFrVlcvREZTYnBoRTlBTm1KNzdoaXJYNlBOWnprR3lW?=
 =?utf-8?B?WGdPWGZOTGhWQ1hWSmpTNnJnUUdwVUIxcFpzYzZZamowNzFsWm1iOWg0aEtK?=
 =?utf-8?B?WkErMjRXeVNSNEVRczlydmczZkVBOVByQm9zSEhUTjhyRjduUFBLZmUwVjZB?=
 =?utf-8?B?ZUI4YW83dVdjcXl0eUZocTNHNy9ZSWxUZmdUbytLM1NUelQ0b21qMW9qeUsr?=
 =?utf-8?B?dW84Uk84NVlGZ25VK2hhNGUrelh6MzJ2Q0lhWHhDN2h2aHJVZkZ4Um1xcVZN?=
 =?utf-8?B?S1ZmZ3EyYU4xYlc3bWhzT29RRnRXeHBGdzR2WHBiUGFabUhOSU1UWVAxU003?=
 =?utf-8?B?STZUMGRGU3U4NkRhR24vYjdRSUtYeHp1alNtQUdaVDh2T1RjMVk2OG9EbkEx?=
 =?utf-8?B?a2tJa3RTSy9LMjdIWHhqUjNwN0JUcW4vVmNwb3g2Y0YxYkJXUkN5c2VpN05y?=
 =?utf-8?B?UFNjbDdJWFRYNVB0bytRUE5vMGZWME1GRWZLbHVjMjh0T3c5S0YvWHJVcnUx?=
 =?utf-8?B?MTVBS1N1S0xXZ1AxS2dXMFVGU3BvUXhxVUZvUlNxeEpWeGpBVU45Qjh2TzhN?=
 =?utf-8?B?Q24xVXdyR2tldFMrTDJjcUdWSE9lQWlQbmlGTXFUblo5QWFTZU84UTF4bFBy?=
 =?utf-8?B?STc3SlM5aCt4ZDF3MU9oblV1QjBIdEI5MEpFYk4yRjl4MHhOaHc4eEt6RzNR?=
 =?utf-8?B?NFBnZmlKVGVDcFJIc0ljMjU5SnJFZjc4V2ZQT0JocXhHVlg1TFgybndFVmhY?=
 =?utf-8?B?OWNPMGkvOXFuRzdTMXdqYlBoRXpZdGI5Qjh5WkxDWDBaL01IVmFtM2FuYmtN?=
 =?utf-8?B?VVhLejVvV0F5cjR3S05JWi9MTHEwVlhvRnZQUWF0c3VDWURPQkRQSHRTTzky?=
 =?utf-8?B?ck1aTnpWQVlSWU9OYTdzRGdKUnNMZlBRMTc0Q2cvZGFTOE1ZVVVYMzdncTFT?=
 =?utf-8?B?ZXl5dFlkdXRza1d3c3lZMitaODQvck01Z2sxekxjYmVUcjZzcXQvSWJLNHRV?=
 =?utf-8?B?N3k0YzhOZzZmTkMxZGFFcXFDTDJLWDM5RG14MmM4ZWZhL0tjWWk2MjF6c1Q2?=
 =?utf-8?B?Myt0YXZNTzY5RE5WaVlxWjVDQTQ4ejN3YmIrQm9HVUF1aUJJQWRoZkdCdHRM?=
 =?utf-8?B?bFREdzVRRitnQ3FUbWdpV2NGVGNKSHQvTmJXUHdidGExUkg3VDRmSWNQWCtG?=
 =?utf-8?B?WnEvUEtnR0tJZXRsbCt0cDMwT25NK2pJYXAzY0tWOWhXOFhsUm5PVXZzbmFS?=
 =?utf-8?B?dEFEa05tQ0FNczNQcnYyR25Kb0M3NnBSTmduRGg5S1drU2F0d0pEcTBaRStP?=
 =?utf-8?B?OTJ5cDRsbVpCMGRHQ2RDcHE0Wk1lZHBCR3hPTERKRFZsYk5aaVhUbDJueDZp?=
 =?utf-8?B?ZUtRZ3lsV1Rrc0laTFhXREJLU2hYV2czdU1nZEZ0T3R1MUFqekpUWGNvbUlM?=
 =?utf-8?B?L3VrNk0xTGUweHdtU1d5WElVSVdvZjVFQzVoY3JMSFN5MEJwempFV0xmZmFl?=
 =?utf-8?B?OVpBV3V6aFhYVGRIeVdkcVgzZysyL1p2RmlWVE4zZFB2WlpIQ0NWeXFSUTB0?=
 =?utf-8?Q?Z65Us7guRQSrjg2Y=3D?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 785755df-a736-4ada-50cf-08da51429a7c
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2022 15:52:53.2094
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9YGSnVqdy2kB+H6Wolx14fqNueeBpC9jxzrqeDcinV1q8WfrTmEkrs62gNR+Jp/nn3W2SeFmvksG5D263B8E9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR03MB4601
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220618_085258_442758_74F1C4FB 
X-CRM114-Status: GOOD (  33.05  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgSW9hbmEsCgpPbiA2LzE4LzIyIDg6MzkgQU0sIElvYW5hIENpb3JuZWkgd3JvdGU6Cj4+PiBT
dWJqZWN0OiBbUEFUQ0ggbmV0LW5leHQgMDMvMjhdIHBoeTogZnNsOiBBZGQgUW9ySVEgU2VyRGVz
IGRyaXZlcgo+Pj4KPiAKPiBTb3JyeSBmb3IgdGhlIHByZXZpb3VzIEhUTUwgZm9ybWF0dGVkIGVt
YWlsLi4uCj4gCj4+Cj4+IEhpIFNlYW4sCj4+Cj4+IEkgYW0gdmVyeSBtdWNoIGludGVyZXN0ZWQg
aW4gZ2l2aW5nIHRoaXMgZHJpdmVyIGEgZ28gb24gb3RoZXIgU29DcyBhcyB3ZWxsCj4+IGJ1dCBh
dCB0aGUgbW9tZW50IEkgYW0gaW4gdmFjYXRpb24gdW50aWwgbWlkIG5leHQgd2Vlay4KClBsZWFz
ZSBsZXQgbWUga25vdyB5b3VyIHJlc3VsdHMuIEkgaGF2ZSBkb2N1bWVudGVkIGhvdyB0byBhZGQg
c3VwcG9ydCBmb3IKYWRkaXRpb25hbCBTb0NzLCBzbyBob3BlZnVsbHkgaXQgc2hvdWxkIGJlIGZh
aXJseSBzdHJhaWdodGZvcndhcmQuCgo+Pj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSAiU2Vy
RGVzIiBkZXZpY2VzIGZvdW5kIG9uIHZhcmlvdXMgTlhQIFFvcklRIFNvQ3MuCj4+PiBUaGVyZSBt
YXkgYmUgdXAgdG8gZm91ciBTZXJEZXMgZGV2aWNlcyBvbiBlYWNoIFNvQywgZWFjaCBzdXBwb3J0
aW5nIHVwIHRvCj4+PiBlaWdodCBsYW5lcy4gUHJvdG9jb2wgc3VwcG9ydCBmb3IgZWFjaCBTZXJE
ZXMgaXMgaGlnaGx5IGhldGVyb2dlbmVvdXMsIHdpdGgKPj4+IGVhY2ggU29DIHR5cGljYWxseSBo
YXZpbmcgYSB0b3RhbGx5IGRpZmZlcmVudCBzZWxlY3Rpb24gb2Ygc3VwcG9ydGVkCj4+PiBwcm90
b2NvbHMgZm9yIGVhY2ggbGFuZS4gQWRkaXRpb25hbGx5LCB0aGUgU2VyRGVzIGRldmljZXMgb24g
ZWFjaCBTb0MgYWxzbwo+Pj4gaGF2ZSBkaWZmZXJpbmcgc3VwcG9ydC4gT25lIFNlckRlcyB3aWxs
IHR5cGljYWxseSBzdXBwb3J0IEV0aGVybmV0IG9uIG1vc3QKPj4+IGxhbmVzLCB3aGlsZSB0aGUg
b3RoZXIgd2lsbCB0eXBpY2FsbHkgc3VwcG9ydCBQQ0llIG9uIG1vc3QgbGFuZXMuCj4+Pgo+Pj4g
VGhlcmUgaXMgd2lkZSBoYXJkd2FyZSBzdXBwb3J0IGZvciB0aGlzIFNlckRlcy4gSSBoYXZlIG5v
dCBkb25lIGV4dGVuc2l2ZQo+Pj4gZGlnZ2luZywgYnV0IGl0IHNlZW1zIHRvIGJlIHVzZWQgb24g
YWxtb3N0IGV2ZXJ5IFFvcklRIGRldmljZSwgaW5jbHVkaW5nCj4+PiB0aGUgQU1QIGFuZCBMYXll
cnNjYXBlIHNlcmllcy4gQmVjYXVzZSBlYWNoIFNvQyB0eXBpY2FsbHkgaGFzIHNwZWNpZmljCj4+
PiBpbnN0cnVjdGlvbnMgYW5kIGV4Y2VwdGlvbnMgZm9yIGl0cyBTZXJEZXMsIEkgaGF2ZSBsaW1p
dGVkIHRoZSBpbml0aWFsCj4+PiBzY29wZSBvZiB0aGlzIG1vZHVsZSB0byBqdXN0IHRoZSBMUzEw
NDZBLiBBZGRpdGlvbmFsbHksIEkgaGF2ZSBvbmx5IGFkZGVkCj4+PiBzdXBwb3J0IGZvciBFdGhl
cm5ldCBwcm90b2NvbHMuIFRoZXJlIGlzIG5vdCBhIGdyZWF0IG5lZWQgZm9yIGR5bmFtaWMKPj4+
IHJlY29uZmlndXJhdGlvbiBmb3Igb3RoZXIgcHJvdG9jb2xzIChTQVRBIGFuZCBQQ0llIGhhbmRs
ZSByYXRlIGNoYW5nZXMgaW4KPj4+IGhhcmR3YXJlKSwgc28gc3VwcG9ydCBmb3IgdGhlbSBtYXkg
bmV2ZXIgYmUgYWRkZWQuPgo+Pj4gTmV2ZXJ0aGVsZXNzLCBJIGhhdmUgdHJpZWQgdG8gcHJvdmlk
ZSBhbiBvYnZpb3VzIHBhdGggZm9yIGFkZGluZyBzdXBwb3J0Cj4+PiBmb3Igb3RoZXIgU29DcyBh
cyB3ZWxsIGFzIG90aGVyIHByb3RvY29scy4gU0FUQSBqdXN0IG5lZWRzIHN1cHBvcnQgZm9yCj4+
PiBjb25maWd1cmluZyBMTm1TU0NSMC4gUENJZSBtYXkgbmVlZCB0byBjb25maWd1cmUgdGhlIGVx
dWFsaXphdGlvbgo+Pj4gcmVnaXN0ZXJzLiBJdCBhbHNvIHVzZXMgbXVsdGlwbGUgbGFuZXMuIEkg
aGF2ZSB0cmllZCB0byB3cml0ZSB0aGUgZHJpdmVyCj4+PiB3aXRoIG11bHRpLWxhbmUgc3VwcG9y
dCBpbiBtaW5kLCBzbyB0aGVyZSBzaG91bGQgbm90IG5lZWQgdG8gYmUgYW55IGxhcmdlCj4+PiBj
aGFuZ2VzLiBBbHRob3VnaCB0aGVyZSBhcmUgNiBwcm90b2NvbHMgc3VwcG9ydGVkLCBJIGhhdmUg
b25seSB0ZXN0ZWQgU0dNSUkKPj4+IGFuZCBYRkkuIFRoZSByZXN0IGhhdmUgYmVlbiBpbXBsZW1l
bnRlZCBhcyBkZXNjcmliZWQgaW4gdGhlIGRhdGFzaGVldC4KPj4+Cj4+PiBUaGUgUExMcyBhcmUg
bW9kZWxlZCBhcyBjbG9ja3MgcHJvcGVyLiBUaGlzIGxldHMgdXMgdGFrZSBhZHZhbnRhZ2Ugb2Yg
dGhlCj4+PiBleGlzdGluZyBjbG9jayBpbmZyYXN0cnVjdHVyZS4gSSBoYXZlIG5vdCBnaXZlbiB0
aGUgc2FtZSB0cmVhdG1lbnQgdG8gdGhlCj4+PiBsYW5lICJjbG9ja3MiIChkaXZpZGVycykgYmVj
YXVzZSB0aGV5IG5lZWQgdG8gYmUgcHJvZ3JhbW1lZCBpbi1jb25jZXJ0IHdpdGgKPj4+IHRoZSBy
ZXN0IG9mIHRoZSBsYW5lIHNldHRpbmdzLiBPbmUgdHJpY2t5IHRoaW5nIGlzIHRoYXQgdGhlIFZD
TyAocGxsKSByYXRlCj4+PiBleGNlZWRzIDJeMzIgKG1heGluZyBvdXQgYXQgYXJvdW5kIDVHSHop
LiBUaGlzIHdpbGwgYmUgYSBwcm9ibGVtIG9uIDMyLWJpdAo+Pj4gcGxhdGZvcm1zLCBzaW5jZSBj
bG9jayByYXRlcyBhcmUgc3RvcmVkIGFzIHVuc2lnbmVkIGxvbmdzLiBUbyB3b3JrIGFyb3VuZAo+
Pj4gdGhpcywgdGhlIHBsbCBjbG9jayByYXRlIGlzIGdlbmVyYWxseSB0cmVhdGVkIGluIHVuaXRz
IG9mIGtIei4+Cj4+PiBUaGUgUExMcyBhcmUgY29uZmlndXJlZCByYXRoZXIgaW50ZXJlc3Rpbmds
eS4gSW5zdGVhZCBvZiB0aGUgdXN1YWwgZGlyZWN0Cj4+PiBwcm9ncmFtbWluZyBvZiB0aGUgYXBw
cm9wcmlhdGUgZGl2aXNvcnMsIHRoZSBpbnB1dCBhbmQgb3V0cHV0IGNsb2NrIHJhdGVzCj4+PiBh
cmUgc2VsZWN0ZWQgZGlyZWN0bHkuIEdlbmVyYWxseSwgdGhlIG9ubHkgcmVzdHJpY3Rpb24gaXMg
dGhhdCB0aGUgaW5wdXQKPj4+IGFuZCBvdXRwdXQgbXVzdCBiZSBpbnRlZ2VyIG11bHRpcGxlcyBv
ZiBlYWNoIG90aGVyLiBUaGlzIHN1Z2dlc3RzIHNvbWUga2luZAo+Pj4gb2YgaW50ZXJuYWwgbG9v
ay11cCB0YWJsZS4gVGhlIGRhdGFzaGVldHMgZ2VuZXJhbGx5IGxpc3Qgb3V0IHRoZSBzdXBwb3J0
ZWQKPj4+IGNvbWJpbmF0aW9ucyBleHBsaWNpdGx5LCBhbmQgbm90IGFsbCBpbnB1dC9vdXRwdXQg
Y29tYmluYXRpb25zIGFyZQo+Pj4gZG9jdW1lbnRlZC4gSSdtIG5vdCBzdXJlIGlmIHRoaXMgaXMg
ZHVlIHRvIGxhY2sgb2Ygc3VwcG9ydCwgb3IgZHVlIHRvIGFuCj4+PiBvdmVyc2lnaHQuIElmIHRo
aXMgYmVjb21lcyBhbiBpc3N1ZSwgdGhlbiBzb21lIGNvbWJpbmF0aW9ucyBjYW4gYmUKPj4+IGJs
YWNrbGlzdGVkIChvciB3aGl0ZWxpc3RlZCkuIFRoaXMgbWF5IGFsc28gYmUgbmVjZXNzYXJ5IGZv
ciBvdGhlciBTb0NzCj4+PiB3aGljaCBoYXZlIG1vcmUgc3RyaW5nZW50IGNsb2NrIHJlcXVpcmVt
ZW50cy4KPj4KPj4KPj4gSSBkaWRuJ3QgZ2V0IGEgY2hhbmdlIHRvIGdvIHRocm91Z2ggdGhlIGRy
aXZlciBsaWtlIEkgd291bGQgbGlrZSwgYnV0IGFyZSB5b3UKPj4gY2hhbmdpbmcgdGhlIFBMTCdz
IHJhdGUgYXQgcnVudGltZT8KClllcy4KCj4+IERvIHlvdSB0YWtlIGludG8gY29uc2lkZXJhdGlv
biB0aGF0IGEgUExMIG1pZ2h0IHN0aWxsIGJlIHVzZWQgYnkgYSBQQ0llIG9yIFNBVEEKPj4gbGFu
ZSAod2hpY2ggaXMgbm90IGRlc2NyaWJlZCBpbiB0aGUgRFRTKSBhbmQgZGVueSBpdHMgcmF0ZSBy
ZWNvbmZpZ3VyYXRpb24KPj4gaWYgdGhpcyBoYXBwZW5zPwoKWWVzLgoKV2hlbiB0aGUgZGV2aWNl
IGlzIHByb2JlZCwgd2UgZ28gdGhyb3VnaCB0aGUgUENDUnMgYW5kIHJlc2VydmUgYW55IGxhbmUg
d2hpY2ggaXMgaW4KdXNlIGZvciBhIHByb3RvY29sIHdlIGRvbid0IHN1cHBvcnQgKFBDSWUsIFNB
VEEpLiBXZSBhbHNvIGdldCBib3RoIFBMTCdzIHJhdGVzCmV4Y2x1c2l2ZWx5IGFuZCBtYXJrIHRo
ZW0gYXMgZW5hYmxlZC4KCj4+IEkgYW0gYXNraW5nIHRoaXMgYmVjYXVzZSB3aGVuIEkgYWRkZWQg
c3VwcG9ydCBmb3IgdGhlIEx5bnggMjhHIFNlckRlcyBibG9jayB3aGF0Cj4+IEkgZGlkIGluIG9y
ZGVyIHRvIHN1cHBvcnQgcmF0ZSBjaGFuZ2UgZGVwZW5kaW5nIG9mIHRoZSBwbHVnZ2VkIFNGUCBt
b2R1bGUgd2FzCj4+IGp1c3QgdG8gY2hhbmdlIHRoZSBQTEwgdXNlZCBieSB0aGUgbGFuZSwgbm90
IHRoZSBQTEwgcmF0ZSBpdHNlbGYuCj4+IFRoaXMgaXMgYmVjYXVzZSBJIHdhcyBhZnJhaWQgb2Yg
Y2F1c2luZyBtb3JlIGhhcm0gdGhlbiBuZWVkZWQgZm9yIGFsbCB0aGUKPj4gbm9uLUV0aGVybmV0
IGxhbmVzLgoKWWVzLiBTaW5jZSBUaGVyZSBpcyBub3QgbXVjaCBuZWVkIGZvciBkeW5hbWljIHJl
Y29uZmlndXJhdGlvbiBmb3Igb3RoZXIgcHJvdG9jb2xzLApJIHN1c3BlY3QgdGhhdCBub24tZXRo
ZXJuZXQgc3VwcG9ydCB3aWxsIG5vdCBiZSBhZGRlZCBzb29uIChvciBwZXJoYXBzIGV2ZXIpLgoK
Pj4+Cj4+PiBUaGUgZ2VuZXJhbCBBUEkgY2FsbCBsaXN0IGZvciB0aGlzIFBIWSBpcyBkb2N1bWVu
dGVkIHVuZGVyIHRoZSBkcml2ZXItYXBpCj4+PiBkb2NzLiBJIHRoaW5rIHRoaXMgaXMgcmF0aGVy
IHN0YW5kYXJkLCBleGNlcHQgdGhhdCBtb3N0IGRyaXZlcnRzIGNvbmZpZ3VyZQo+Pj4gdGhlIG1v
ZGUgKHByb3RvY29sKSBhdCB4bGF0ZS10aW1lLiBVbmxpa2Ugc29tZSBvdGhlciBwaHlzIHdoZXJl
IGUuZy4gUENJZQo+Pj4geDQgd2lsbCB1c2UgNCBzZXBhcmF0ZSBwaHlzIGFsbCBjb25maWd1cmVk
IGZvciBQQ0llLCB0aGlzIGRyaXZlciB1c2VzIG9uZQo+Pj4gcGh5IGNvbmZpZ3VyZWQgdG8gdXNl
IDQgbGFuZXMuIFRoaXMgaXMgYmVjYXVzZSB3aGlsZSB0aGUgaW5kaXZpZHVhbCBsYW5lcwo+Pj4g
bWF5IGJlIGNvbmZpZ3VyZWQgaW5kaXZpZHVhbGx5LCB0aGUgcHJvdG9jb2wgc2VsZWN0aW9uIGFj
dHMgb24gYWxsIGxhbmVzIGF0Cj4+PiBvbmNlLiBBZGRpdGlvbmFsbHksIHRoZSBvcmRlciB3aGlj
aCBsYW5lcyBzaG91bGQgYmUgY29uZmlndXJlZCBpbiBpcwo+Pj4gc3BlY2lmaWVkIGJ5IHRoZSBk
YXRhc2hlZXQuIMKgVG8gY29vcmRpbmF0ZSB0aGlzLCBsYW5lcyBhcmUgcmVzZXJ2ZWQgaW4KPj4+
IHBoeV9pbml0LCBhbmQgcmVsZWFzZWQgaW4gcGh5X2V4aXQuCj4+Pgo+Pj4gV2hlbiBnZXR0aW5n
IGEgcGh5LCBpZiBhIHBoeSBhbHJlYWR5IGV4aXN0cyBmb3IgdGhvc2UgbGFuZXMsIGl0IGlzIHJl
dXNlZC4KPj4+IFRoaXMgaXMgdG8gbWFrZSB0aGluZ3MgbGlrZSBRU0dNSUkgd29yay4gRm91ciBN
QUNzIHdpbGwgYWxsIHdhbnQgdG8gZW5zdXJlCj4+PiB0aGF0IHRoZSBsYW5lIGlzIGNvbmZpZ3Vy
ZWQgcHJvcGVybHksIGFuZCB3ZSBuZWVkIHRvIGVuc3VyZSB0aGV5IGNhbiBhbGwKPj4+IGNhbGwg
cGh5X2luaXQsIGV0Yy4gVGhlcmUgaXMgcmVmY291bnRpbmcgZm9yIHBoeV9pbml0IGFuZCBwaHlf
cG93ZXJfb24sIHNvCj4+PiB0aGUgcGh5IHdpbGwgb25seSBiZSBwb3dlcmVkIG9uIG9uY2UuIEhv
d2V2ZXIsIHRoZXJlIGlzIG5vIHJlZmNvdW50aW5nIGZvcgo+Pj4gcGh5X3NldF9tb2RlLiBBICJy
b2d1ZSIgTUFDIGNvdWxkIHNldCB0aGUgbW9kZSB0byBzb21ldGhpbmcgbm9uLVFTR01JSSBhbmQK
Pj4+IGJyZWFrIHRoZSBvdGhlciBNQUNzLiBQZXJoYXBzIHRoZXJlIGlzIGFuIG9wcG9ydHVuaXR5
IGZvciBmdXR1cmUKPj4+IGVuaGFuY2VtZW50IGhlcmUuCj4+Pgo+Pj4gVGhpcyBkcml2ZXIgd2Fz
IHdyaXR0ZW4gd2l0aCByZWZlcmVuY2UgdG8gdGhlIExTMTA0NkEgcmVmZXJlbmNlIG1hbnVhbC4K
Pj4+IEhvd2V2ZXIsIGl0IHdhcyBpbmZvcm1lZCBieSByZWZlcmVuY2UgbWFudWFscyBmb3IgYWxs
IHByb2Nlc3NvcnMgd2l0aAo+Pj4gTUVNQUNzLCBlc3BlY2lhbGx5IHRoZSBUNDI0MCAod2hpY2gg
YXBwZWFycyB0byBoYXZlIGEgIm1heGVkLW91dCIKPj4+IGNvbmZpZ3VyYXRpb24pLgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IFNlYW4gQW5kZXJzb24gPHNlYW4uYW5kZXJzb25Ac2Vjby5jb20+Cj4+
PiAtLS0KPj4+IFRoaXMgYXBwZWFycyB0byBiZSB0aGUgc2FtZSB1bmRlcmx5aW5nIGhhcmR3YXJl
IGFzIHRoZSBMeW54IDI4RyBwaHkKPj4+IGFkZGVkIGluIDhmNzNiMzdjZjNmYiAoInBoeTogYWRk
IHN1cHBvcnQgZm9yIHRoZSBMYXllcnNjYXBlIFNlckRlcwo+Pj4gMjhHIikuCj4+Cj4+IFRoZSBT
ZXJEZXMgYmxvY2sgdXNlZCBvbiBMMTA0NkEgKGFuZCBhIGxvdCBvZiBvdGhlciBTb0NzKSBpcyBu
b3QgdGhlIHNhbWUKPj4gb25lIGFzIHRoZSBMeW54IDI4RyB0aGF0IEkgc3VibWl0dGVkLiBUaGUg
THlueCAyOEcgYmxvY2sgaXMgb25seSBpbmNsdWRlZAo+PiBvbiB0aGUgTFgyMTYwQSBTb0MgYW5k
IGl0cyB2YXJpYW50cy4KCk9LLiBJIGxvb2tlZCBvdmVyIGl0IHF1aWNrbHkgYW5kIGl0IHNlZW1l
ZCB0byBzaGFyZSBtYW55IG9mIHRoZSBzYW1lIHJlZ2lzdGVycy4KCj4+IFRoZSBTZXJEZXMgYmxv
Y2sgdGhhdCB5b3UgYXJlIGFkZGluZyBhIGRyaXZlciBmb3IgaXMgdGhlIEx5bnggMTBHIFNlckRl
cywKPj4gd2hpY2ggaXMgd2h5IEkgd291bGQgc3VnZ2VzdCByZW5hbWluZyBpdCB0byBwaHktZnNs
LWx5bngtMTBnLmMuCgpBaCwgdGhhbmtzLiBJcyB0aGlzIGRvY3VtZW50ZWQgYW55d2hlcmU/Cgot
LVNlYW4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
