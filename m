Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52978C7EE23
	for <linux-phy@archiver.kernel.org>; Wed, 17 May 2023 11:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UuXgZJ+NRKtTnGTa+bs5hX4I1o2ykjKucPc2xSdhKUk=; b=TD27Cafg9mcllTAK4cfE1UA+bK
	eNvAGW8EYEJwWnBANQPZ7SP5XjZCSpZJg7ASHxtufz9lCG5qOyv3MbcmuROv3Zy9g5WoaeFSqqv/I
	zunpkvDps/l8bK/7xigbVyl/5/RwVTGBmSSh59/ZDOGHZN2sqvrXvIq2G40jomC9A36UYuhy1AgH0
	plCC8WWCA3VKvxkiNwH1MHFbPUz8cC9//P2GbxHP7xA4HkASMQMocFnrCtfBTMIr5QWLvkXY8Em9L
	fNFVU3vLRWLLstKWeYGiwJ6gNyKRQAxsdDIaUEe0e6ji1E5zaPUk836UBWUjc/7mxJ00rS6QRT976
	oZnlncnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzFok-009iHk-3C;
	Wed, 17 May 2023 11:59:42 +0000
Received: from mail-sn1nam02on20612.outbound.protection.outlook.com ([2a01:111:f400:7ea9::612] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzFoh-009iGS-1g;
	Wed, 17 May 2023 11:59:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OquoSZMGYCASpojv9F8xiUOSTUpxDpa6Y8ir1yEgNelB/ZYz8vzJqZIzG4OiHDVSuunJndZy5th74O7iCdS16QUKlChuZ5hCCBeidEHexBfC2+zzPOKsO4P42B8ZSNk1h9Aees8jxglKAwc1M3iJ5Q9oWDiHvyFiqKrxd1L9gvu8E7INnCQM8dXcAJAgW6FalK1fFczql0dqk/U4GFPIVXJdpElfGrCrwwUzFgHhCWTBzsRyuNVxnZ5VWGfvNy6mEREUjirD+1zpjkPqm97D4obfHQ/bgzCc8JT9jXFK283Z4NyvTYZtiDTna9kBn016vM2vPLFQYCOy/G1j//ryeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ODX/1aP5POvoG35q/x3xJEYoIFM7vMhUxRimHKms/34=;
 b=df9esC7yT7X05xqXUwDODKpI0mLFiLvBWUjwa+fP0UJnxTtMxeJcTIjvNju1FVX2Kj8rdBWkdTC2WuuWOVeac11w2SDRENOqnibMXKG4pk2Is8UhxqTOpZB74h9SHjcAwdzVQek4DIlomIy228Z2aUAzXkbq4JPFwTckuuKv/73e/0D4HK+xG/6955SGtJedCCs3SzPCyykBJJZiYVeZeklEsCABC0If5lDMty2HZPCkFolAzPNQK/wnbMnQrz7lT6MPOPCcAWzPDKFH/JiMz1fb7HH9UAD0UwReZZmmkLvaNTmRoOuCZCRRca7Z95ZuxxDvqEhFzOuBlEGXTwboIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ODX/1aP5POvoG35q/x3xJEYoIFM7vMhUxRimHKms/34=;
 b=RiWeimhswFLGV8UeH5e9vWP9ch8E4cfKOGFxowIG+Ruv/ECJ9lAdVvQCuQA4nKEv5RU/Dht8uD2cAs+IHT5LH4N1/l+/Drj6OSsa9SWmgdUMi8kX/Tous1RD4DBaQ/yH5jBlz3OC3XVYfPxdecyrOv0SwLhGbfsnO2DVYDYMtTVborj/8cyPN7b+EXlVv7mxUpKQtC7HbSOh5+af9EcwbfF7eMtwwG+Qu7oZj1kr+yFYtFen4syo5+EqfIMP6fXME6FIs6kkiropzqFq+oSGdwJLvJM6iFumrKylwYvYX620eug9iopX40GFcJ9Rzt/rw8gNaqShako2nvY914pCbQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CO6PR12MB5444.namprd12.prod.outlook.com (2603:10b6:5:35e::8) by
 MW3PR12MB4380.namprd12.prod.outlook.com (2603:10b6:303:5a::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.33; Wed, 17 May 2023 11:59:34 +0000
Received: from CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::21ef:9d59:5b2d:f1e8]) by CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::21ef:9d59:5b2d:f1e8%4]) with mapi id 15.20.6387.033; Wed, 17 May 2023
 11:59:34 +0000
Message-ID: <89583b89-ea8c-8096-b083-6ab773e6c281@nvidia.com>
Date: Wed, 17 May 2023 12:59:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] phy: mediatek: Avoid floating point constants
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Guillaume Ranquet <granquet@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
References: <20230419122131.2167122-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
In-Reply-To: <20230419122131.2167122-1-thierry.reding@gmail.com>
X-ClientProxiedBy: LO2P265CA0046.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::34) To CO6PR12MB5444.namprd12.prod.outlook.com
 (2603:10b6:5:35e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR12MB5444:EE_|MW3PR12MB4380:EE_
X-MS-Office365-Filtering-Correlation-Id: 12c32696-a268-483c-3e3b-08db56ce2e54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	rf4t9yBD6xHDvQ4yCw4pipf4G2CsVOo4fc12huD3rqQM0Jlc5aDOpZo0axXDsR8rex4AyjXFnY8rIstcgQm/JqNrS0wmRjVI79MIugmZ+o8L3MbnrJXztWLLCXzAbd8/wcykSE3S2QTUCcpTjSh/lB5O1IYt6wr9P/0GTFES0d+VoTVQ3Grh03b0TE3rXOywyfYwzHF3XiAEwuvdcxUOOaGWHz5ykswMiYznYNJmKfUwluOj2NCuJsjcYTOCHXE84WnirDc2bbrexZ7kjbKATrFJOkFZirAl4QqMqgi7TR4QeDt9uh2OvRjcBoIEIxvDw/94BHRo0I3l3ZIDDe85OoUM35G1WgdWNrYSq+LK1pgI3IClVFaeu9bKFhDIAMjKAZXMcnzmvHudK78agetaUTEV/GS1llE0UL4QC8MTws7QPRN3e63iem7oW9tDu6U4q8TBe/LisUcxaP98PMxjZ2oL6254HhC/Fhq+j9+qR4W/9tMEQTRp1x/B4W83+jAYKGKI3CDBmmRowBOrldaa+fofheuiZrsGsx05JEb/hNUbKTtsAOyz1WCaiagcj1kqVVOCJTQRkSD0UWgIP3wJ7Eo5tIYSV1i/OA4n4uKAY5KPFIuzOB0Pl0Ri0wJy2w07wPsQyyq0k8q3WUkoL2LFZg==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR12MB5444.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199021)(5660300002)(8676002)(8936002)(7416002)(54906003)(83380400001)(53546011)(31696002)(6506007)(6512007)(38100700002)(2616005)(186003)(41300700001)(478600001)(6486002)(110136005)(6666004)(66476007)(86362001)(66556008)(66946007)(4326008)(36756003)(316002)(31686004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?THBGb2hUaER4T3EweVFHY0k2c3EzZFZTcHNUNWJvSkxIbml4Rll4cXh0VllL?=
 =?utf-8?B?WTFkWVh1NGgyVk10OTlXcWpIQWtJOUQ4dytQaDdDNjFiTHZIUXJVZlNpZDl2?=
 =?utf-8?B?dnU5aVAwOFZhUDZ2OGpaSk42SkhjZ2U4aDlGeWpXMWFCOEJjVVB0NFdZcU1V?=
 =?utf-8?B?bGJjdjJFTDlKTTNYQmNqbEFRYjZXL3RlZEp4MjNZb2QvN2g3NStPSWF0SXNR?=
 =?utf-8?B?WlozdUNiUDhrUlN3bUJRUGtLYXBiblZiWS8yTTY5ODNYT080OU9OSkhvUU1z?=
 =?utf-8?B?a1lSakxVWnpDZ1VpLzR0SU5QaVdIRHBjN042U0Vrc3hkY245R3dWcjdTZmJ2?=
 =?utf-8?B?Um9wcUpNTnNYclZtczRWTm1UUGJQWXJkWWNNMjRISjhTS0gyeitobUsyalFJ?=
 =?utf-8?B?QVM3Zjl2MVZRcHhjZFN3WjU1NGdMcEZOT0FZK0l1Vys4TWl6ZisrTmJ6ZXpZ?=
 =?utf-8?B?Vk4vOEdlb2ZZMGFDeHA4WkxWb0FKTHdpQTNhUGtQZVNOMThUQTU5WXpKYUtn?=
 =?utf-8?B?Rk9YaFhVcTVKVVExaTQ5MnlJeXlkVHlJZlFaODcwa3k1ZzhwVzBoUTEzWGdZ?=
 =?utf-8?B?M2FWMTNnbjVvQTNUVWI4clBFbHpiekhQZUVtRGtDbVVBTSt2dnV5SEhldm5O?=
 =?utf-8?B?RDdYYitEYnRZRnZ3MFp0RDhsK3RNb1N2dWRBRTdhdlBFTGNmSnpBV1U3NzN4?=
 =?utf-8?B?UnNHaHV5eGJzM0pMdCsvd3lCalh6SzBkaUEvK0lwa2JldDNLSDh4S2xXdE16?=
 =?utf-8?B?Ynk5L1BudTVsK003Z00xZVFIMjFPUnIvQkovelFtMDZuZzlUVXp0K0tBV3Zu?=
 =?utf-8?B?R2Q4V29UNXdkdFgvQUtNa0RzRFY4V1NZc0dLUEZjN2RQVUlZYno1OTJnMlBr?=
 =?utf-8?B?WlZ2SVpmRTMwTTlxQXowN0lXTzJMbmlvOWV3VUhwTXU2WEVzUlpqcWhwRi9N?=
 =?utf-8?B?dXFBbDJnZmw1OTY5M251T0s1MUZaMUlFY3dVcTJENlpQclJPUFp0ZXA0dHdj?=
 =?utf-8?B?OUNkM20vZ2gxVnVpVjIyNkJselEvWnprTlhRdzNiWHJBL3A3TlgzdXNzS2Va?=
 =?utf-8?B?RnVBVy80Zk5vTXcwRFI2OUlpVmh0UlJHckpsMFpDRDdMVFU2aWtZVEVTOEMr?=
 =?utf-8?B?ZWI3bUkrNlMyV1psVVFiMHE2dVdpSUtha2xaUWZsd09lbWtjYzZsZ3JoTXdp?=
 =?utf-8?B?Nng3WDdOdk9pSEU2ckF2TUJqSExwZGhiUGh1bUZ0ekpHV3o4R2NpYjNFRXdC?=
 =?utf-8?B?VkF6VlovSWNkbHJReE94d1pwQkV3bGVySXRGUG5sM1NWeDhNayt6dVoxMDhs?=
 =?utf-8?B?cHdLYTg5czUvY1ZZZ053cXlWMU5RaUFucFdkcHZZTG9lKzdESi9laDZHVmRH?=
 =?utf-8?B?cW5DYXRnT3N6eXBzQVN0UHh4OE1ZNWtNQnZPTjhvdEU0RTVHNmllc0pBak9D?=
 =?utf-8?B?b01GWnRvSWpESkVnZTYrd29nN0h0a281dFJHZ2YveStSN1RHZkFaT3lsYzVK?=
 =?utf-8?B?ZUNZcWtFOFFzMWNQcmtqTDRmMGFMSkRWb3JNTnNyeE9PeFBLUmFUbjUvb1ZE?=
 =?utf-8?B?TWVja1BKUWYybFFPYndIcDBidTlueWRQbDIwNkNiRXYxb2ZoMTdWaWNhV2Y5?=
 =?utf-8?B?cHF0VU1IY3FjNWsxaHYwVjJjeFNSamdyS2h1clBHMHp1SElBUlpMUnltWGlt?=
 =?utf-8?B?dkRBNndQdHdsK1h4bnVXcFlDdE1aZ1FCS0tKWVYzZ083RmJiYWNtclJUQVpH?=
 =?utf-8?B?RXhaRzJFRUFDeG9Md2UvNnlaNTFOUVFvYk1FWE5EM3l5OWQwZ1Y0UmtjVFpo?=
 =?utf-8?B?Sm5iRVJFOUdQZEY5ZVFyUFVVN2V3UFlVbzRaOVJwamRYOWJQQkRkT1dwQ2FZ?=
 =?utf-8?B?eWlVZDM3cFBxVkV2Q3YySHc5emdKM2F4c3lQSytrcVoxTUFjNDVldkdhOWUw?=
 =?utf-8?B?bTBCMjY5NFphdEgxcm4zR29RUHpMSU9Jb05VajcyMjJIUzF4ZmNLbFRQUkVQ?=
 =?utf-8?B?M0F1bGJrSjBUWi8yTkk3VjN2a1NuMFI4REpxZWluR2hZckM0V2pWOVdKNHh3?=
 =?utf-8?B?Z0JJdFpoOWJqV1IxK2RJR0Qrb1BUMHMwME42UjlUUmxaRitDODdNMUxjN29n?=
 =?utf-8?B?MlZqOGJmWUpUS0oxSXFaTjhQY0dmSjU2N1B3Y1pmQU01SmZaRDk0TUk5UE5K?=
 =?utf-8?B?c0pQTkp6NFhjWE43NkY3Z1h1WU1BRWhURk0xTkJMMW93V2dqellnc2lDaVUz?=
 =?utf-8?B?TEhWbDFNNVVGTDVmMHQ1WDBqUVJ3PT0=?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12c32696-a268-483c-3e3b-08db56ce2e54
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5444.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 11:59:34.6485
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AbpXjV2icruE/RLyaHS8OsdbgfIyzfBpSo8zHsGTLIBNy9Z4esjahaoVudtAtUCdNs7kMa8KYew8usBnLzH3hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4380
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_045939_637198_4AAEFDCF 
X-CRM114-Status: GOOD (  21.84  )
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

SGkgVmlub2QsCgpPbiAxOS8wNC8yMDIzIDEzOjIxLCBUaGllcnJ5IFJlZGluZyB3cm90ZToKPiBG
cm9tOiBUaGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IAo+IFdoZW4gYnVpbGRp
bmcgd2l0aCBvbGQgdmVyc2lvbnMgb2YgR0NDICg2LjMgaW4gdGhpcyBjYXNlKSwgdGhlIGNvbXBp
bGVyCj4gc3R1bWJsZXMgb3ZlciB0aGUgZmxvYXRpbmcgcG9pbnQgY29uc3RhbnRzIGluIHRoaXMg
ZHJpdmVyOgo+IAo+IAk6IEluIGZ1bmN0aW9uIOKAmG10a19oZG1pX3BsbF9wcmVwYXJl4oCZOgo+
IAlkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmM6MzMxOjIzOiBlcnJv
cjog4oCYLW1nZW5lcmFsLXJlZ3Mtb25seeKAmSBpcyBpbmNvbXBhdGlibGUgd2l0aCBmbG9hdGlu
Zy1wb2ludCBjb2RlCj4gCSAgfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gNzQuMTc1ICogTUVHQSAm
JiBwaXhlbF9jbGsgPD0gMzAwICogTUVHQSkgewo+IAo+IAlkcml2ZXJzL3BoeS9tZWRpYXRlay9w
aHktbXRrLWhkbWktbXQ4MTk1LmM6MzYxOjEyOiBlcnJvcjog4oCYLW1nZW5lcmFsLXJlZ3Mtb25s
eeKAmSBpcyBpbmNvbXBhdGlibGUgd2l0aCBmbG9hdGluZy1wb2ludCBjb2RlCj4gCSBzdGF0aWMg
aW50IG10a19oZG1pX3BsbF9wcmVwYXJlKHN0cnVjdCBjbGtfaHcgKmh3KQo+IAkJICAgIF5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4gCWRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgx
OTUuYzozNjE6MTI6IGVycm9yOiDigJgtbWdlbmVyYWwtcmVncy1vbmx54oCZIGlzIGluY29tcGF0
aWJsZSB3aXRoIGZsb2F0aW5nLXBvaW50IGNvZGUKPiAKPiBGaXggdGhpcyBieSBzd2l0Y2hpbmcg
dG8gdGhlIEtJTE8gbWFjcm8gaW5zdGVhZCBhbmQgbXVsdGlwbHlpbmcgdGhlCj4gY29uc3RhbnRz
IGJ5IDEwMDAgdG8gZ2V0IHJpZCBvZiB0aGUgZmxvYXRpbmcgcG9pbnQuCj4gCj4gRml4ZXM6IDQ1
ODEwZDQ4NmJiNCAoInBoeTogbWVkaWF0ZWs6IGFkZCBzdXBwb3J0IGZvciBwaHktbXRrLWhkbWkt
bXQ4MTk1IikKPiBSZXBvcnRlZC1ieTogSm9uYXRoYW4gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlh
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBUaGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jIHwg
OCArKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1p
LW10ODE5NS5jIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4g
aW5kZXggYWJmYzA3N2ZiMGE4Li5iMTBhZjI2Y2FkMmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVk
aWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4gQEAgLTIzOSw5ICsyMzksOSBAQCBzdGF0aWMg
aW50IG10a19oZG1pX3BsbF9jYWxjKHN0cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5LCBzdHJ1
Y3QgY2xrX2h3ICpodywKPiAgIAkJdHhwb3NkaXYgPSA4Owo+ICAgCWVsc2UgaWYgKHRtZHNfY2xr
ID49IDU0ICogTUVHQSAmJiB0bWRzX2NsayA8IDE0OC4zNSAqIE1FR0EpCj4gICAJCXR4cG9zZGl2
ID0gNDsKPiAtCWVsc2UgaWYgKHRtZHNfY2xrID49IDE0OC4zNSAqIE1FR0EgJiYgdG1kc19jbGsg
PCAyOTYuNyAqIE1FR0EpCj4gKwllbHNlIGlmICh0bWRzX2NsayA+PSAxNDgzNTAgKiBLSUxPICYm
IHRtZHNfY2xrIDwgMjk2NzAwICogS0lMTykKPiAgIAkJdHhwb3NkaXYgPSAyOwo+IC0JZWxzZSBp
ZiAodG1kc19jbGsgPj0gMjk2LjcgKiBNRUdBICYmIHRtZHNfY2xrIDw9IDU5NCAqIE1FR0EpCj4g
KwllbHNlIGlmICh0bWRzX2NsayA+PSAyOTY3MDAgKiBLSUxPICYmIHRtZHNfY2xrIDw9IDU5NCAq
IE1FR0EpCj4gICAJCXR4cG9zZGl2ID0gMTsKPiAgIAllbHNlCj4gICAJCXJldHVybiAtRUlOVkFM
Owo+IEBAIC0zMjgsMTIgKzMyOCwxMiBAQCBzdGF0aWMgaW50IG10a19oZG1pX3BsbF9kcnZfc2V0
dGluZyhzdHJ1Y3QgY2xrX2h3ICpodykKPiAgIAkJY2xrX2NoYW5uZWxfYmlhcyA9IDB4MzQ7IC8q
IDIwbUEgKi8KPiAgIAkJaW1wZWRhbmNlX2VuID0gMHhmOwo+ICAgCQlpbXBlZGFuY2UgPSAweDM2
OyAvKiAxMDBvaG0gKi8KPiAtCX0gZWxzZSBpZiAocGl4ZWxfY2xrID49IDc0LjE3NSAqIE1FR0Eg
JiYgcGl4ZWxfY2xrIDw9IDMwMCAqIE1FR0EpIHsKPiArCX0gZWxzZSBpZiAocGl4ZWxfY2xrID49
IDc0MTc1ICogS0lMTyAmJiBwaXhlbF9jbGsgPD0gMzAwICogTUVHQSkgewo+ICAgCQlkYXRhX2No
YW5uZWxfYmlhcyA9IDB4MzQ7IC8qIDIwbUEgKi8KPiAgIAkJY2xrX2NoYW5uZWxfYmlhcyA9IDB4
MmM7IC8qIDE2bUEgKi8KPiAgIAkJaW1wZWRhbmNlX2VuID0gMHhmOwo+ICAgCQlpbXBlZGFuY2Ug
PSAweDM2OyAvKiAxMDBvaG0gKi8KPiAtCX0gZWxzZSBpZiAocGl4ZWxfY2xrID49IDI3ICogTUVH
QSAmJiBwaXhlbF9jbGsgPCA3NC4xNzUgKiBNRUdBKSB7Cj4gKwl9IGVsc2UgaWYgKHBpeGVsX2Ns
ayA+PSAyNyAqIE1FR0EgJiYgcGl4ZWxfY2xrIDwgNzQxNzUgKiBLSUxPKSB7Cj4gICAJCWRhdGFf
Y2hhbm5lbF9iaWFzID0gMHgxNDsgLyogMTBtQSAqLwo+ICAgCQljbGtfY2hhbm5lbF9iaWFzID0g
MHgxNDsgLyogMTBtQSAqLwo+ICAgCQlpbXBlZGFuY2VfZW4gPSAweDA7CgoKVGhpcyBpcyBicmVh
a2luZyBrZXJuZWwgY29tcGlsYXRpb24gd2l0aCBvbGRlciBjb21waWxlcnMgc3VjaCBhcyBHQ0M3
LiAKVGhpcyBpcyBub3cgaW4gdGhlIG1haW5saW5lIGFuZCBvbGRlciBjb21waWxlcnMgY2Fubm90
IGJ1aWxkIHRoZSBrZXJuZWwgCndpdGggdGhpcyBkcml2ZXIgZW5hYmxlZC4gVGhlIGtlcm5lbCBk
b2NzIHNheSB0aGUgbWluIHZlcnNpb24gc3VwcG9ydGVkIAppcyBHQ0MgNS4xIGN1cnJlbnRseS4K
CkNhbiB3ZSBnZXQgdGhpcyBtZXJnZWQgYXMgYSBmaXggZm9yIHY2LjQ/CgpSZXZpZXdlZC1ieTog
Sm9uIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+ClRlc3RlZC1ieTogSm9uIEh1bnRlciA8
am9uYXRoYW5oQG52aWRpYS5jb20+CgpUaGFua3MKSm9uCgotLSAKbnZwdWJsaWMKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
