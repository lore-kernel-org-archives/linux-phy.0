Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E6BAEB64DA
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 09:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5fXeEsqWKXB0+Rb8tr5XZ1KrPjhtqqhZa9Zgj/uavuo=; b=pDruOd290FsiLdLCA71K2HQb0R
	bWcbZ4t+wgAidsWkT9erHtB/h9k1jB14/rANxzkwPxmfRKizxa9qYmn73d79EtlA3FHRrgUTA2UAC
	WEYlzjnIZ5sIxXlebCG0qjNrPKI+yhoncXvhFUMAG3dpq4nUCdybr//Dks7MBDl8QYZ1sYyJs3b0r
	P5FEPajsJ1bC6I9+XDqVAEBTDf1jcArV4s7EWvOlmfcUFLIRR1izsMW+W3YNDEHvd2DqMPlOprG7A
	0tr8S1vbelfpepO/MJFm+0UYrumBOaRQsqcCFAVxQlLyDx7TmP5JrNZDUb1IETpXN6sWSMa+ke1Ef
	ECMZyV3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyq4-00FMTY-0X;
	Wed, 05 Jul 2023 09:30:20 +0000
Received: from mail-tyzapc01on2072b.outbound.protection.outlook.com ([2a01:111:f403:704b::72b] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyq0-00FMRd-0m;
	Wed, 05 Jul 2023 09:30:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hh2gpgIplHqTOygcQiKg+SK6GjMpvdJkvLaWmOJgXR4rPYmQnC+Z7l4myje9q1KGs26nhtsc3+USdDA0dtVxfs5DslOlNwwF7BN/o2MJrSIQoLgj7rhqFXyzV0qPWTAiYaZZQiR2GMUvy2SW+JeNMRSQDtuD0Usj4t7NMmoYJk/8gPOO//8coeMmffAoZlJ5DBDufM/z4u1kg9fTD+rlt7QyTJJv7eV8pVu2BGE3N8wRqP/nEGnY+1BzIoUinPnebr5sBAdkQDA53OFrl9vInufygbzebRMeP8xuJfaV88jbJoDxkze1zVzXeVBByM07rCrzUZiYDo+3+ZYQCLd3Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1M8NGNZyeAytfy/Us4OP0BaUwYu24+dwfpezAeOTqrw=;
 b=PFl6/iZTwQdXkhPgfeqF9NfWQaTC52pHnfVEtZ16yz/+fgh6qFZYygWgXdUIu9Wb/DBvdbHWfNugjkN4kbkqwRu5/K5zGkfrAECEsIuLH9N17vYva4oZIh/uinYRZotI9haYw1iUcJB1qGW2fKAI05LeJaK83YncwXxhFGvOksnJW7nSUsiLo2IlEsCnY7Injo+XSo7Dfy+sV+eJYpi/Au5SeDPX6zhIhJPOmRKaGOkhhSOaiofgFpDW/raV3TdyigbkCqK9HKYT5C1UogEhZN2nZgvbA+XqwDMl9LfUMvkEug8ianeisf+B/7EuZ+GBAIiCVggdsAITpVsc4nS5bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1M8NGNZyeAytfy/Us4OP0BaUwYu24+dwfpezAeOTqrw=;
 b=fzTkFGly9HSxJECB5lncSEUhIbFgCohVRD+la3wbaqmFAwpwFANu7bDdizbhKRjxYMQRU7v0DDNhz7WJ/XJEMsqF2AVthAk10eeR7isBMOOKo3V60XqrkZTXucitwSKQ+mzCCYB1RocUBzN/XkqEVYM866rlEPbxbcplJxLiNEAjO3XX+63MPy9jB5MUnabd85eZS4AHxoL1Ij8bCbtxlJp2iFtY+bsz5Wh8jhpWLLIzweDGv5PdgP2BmTXdjMH2RhF38djrSp29uK/6nlZylaHSvWoDPjuS19NMrs+NOhjEUYazX9IdaBblCAsfKvjmhtQ7ttA3fySF48bN3pn5hg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by TYZPR06MB4416.apcprd06.prod.outlook.com (2603:1096:400:67::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Wed, 5 Jul
 2023 09:30:07 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.016; Wed, 5 Jul 2023
 09:30:06 +0000
Message-ID: <6a1bde36-fbf9-9ddd-e47f-f3c21a3528f7@vivo.com>
Date: Wed, 5 Jul 2023 17:30:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 4/4] phy: mediatek: tphy: Convert to
 devm_platform_ioremap_resource()
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230705090126.26854-1-frank.li@vivo.com>
 <20230705090126.26854-4-frank.li@vivo.com>
 <ddc05f70-7075-97ab-1c94-cb3d5839ef2b@collabora.com>
From: Yangtao Li <frank.li@vivo.com>
In-Reply-To: <ddc05f70-7075-97ab-1c94-cb3d5839ef2b@collabora.com>
X-ClientProxiedBy: SGXP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::36)
 To SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|TYZPR06MB4416:EE_
X-MS-Office365-Filtering-Correlation-Id: 19500207-10d3-489a-96fa-08db7d3a6b24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C/+uSO6qaassbIidA5jU4EvDS9hm5C3XUHdYI1sul37+OKkjXDVY/MRy3OayQlyJoN7Fdd8xYNEE7HCAjYktVXlq5JqMDqVb/n9qkZZ4mKWCSd4sarCBNC1EGjj/8uFg+sUDM8dY7jWzWXvijPm2qsf3iTuMFV8VV0fzxcKG3qE8uqpp7AZGci3t6D+CHeRVlYPcm8wKxuyKifS78dymdp60sZu2evzC+RZLaAABL3x//IGaxCpU+aFInVvE88cBphwJofoy7f78H0F0nOlpqseIWM8V0T4rmChA4mxe4JkB8OjRirn7shKcno5ZlYaluAJuMpDcKShyGp3JxSvOJ0smw9CRp5H1Wm0exqs1bBzL4ZQQedN9mahGN3HzmcNRvF30zTVYuTwf6Myy0iwhhkYxiuUai4ae3inRV+hKTooeBbWei335uzMjHKJCc1yFOpHaVWfmLZLneWFl2uWwo72axgbfeUy79tJzw9d9Bu9Xs87vNDF5PQM432swtsbSv5zCqFQRvNOAUfSAzvBS3fAssPP1ACE4cjNltriUoB9Czrb8zTxZgruWbBADrTuBaIS+i7aPqY6KEw8rxNpoJGvrI1ZLKdbDqCBK9g8e6VraCVJ5Mag7j1EZ8ZeMG77gY7xX7MN6jYfcxrPvuxTuu8IHMMSAVn9D/3qFpRkl+fDFqwO552FfQp4pUHDtZXDB
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(39850400004)(136003)(376002)(396003)(451199021)(31696002)(41300700001)(86362001)(6486002)(38100700002)(38350700002)(6666004)(52116002)(83380400001)(53546011)(6506007)(2616005)(26005)(6512007)(110136005)(478600001)(316002)(36756003)(66476007)(4326008)(66556008)(66946007)(8676002)(8936002)(186003)(31686004)(2906002)(5660300002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnB6K0FSUWVJb2xWTjdwL0dkOTVXc0V5ZFR5TWs2cGplT1NOR0hFUW0wRmJN?=
 =?utf-8?B?WEZlZjlYZ0Z4QVlYOC9zVTk1NUQvVG1hcU9CYjQ1SGJyeldGa3RpVXMreDk1?=
 =?utf-8?B?TjhESU9pVXpaVXZoTDA4NDlOK1FCbTJVK3FPMUhHVXJ0aTNXQi9vZ3NHbE9Z?=
 =?utf-8?B?VzRQT25sa3hRaWhzemI3azZ0M3N0azF2UE1uUC9VdEptcU1CTGRmalc2NE96?=
 =?utf-8?B?NDJhMnA2K3pORDhhd1pvRFh3Q05JTkV1U25GQWpRdXN1Y294YTJWSVpJUHFG?=
 =?utf-8?B?R1g2RmR2VGIzU2tCbm9ieG1VakZ4ekNVait0NFNvQkVVdHBSdk1yZXBjM1hr?=
 =?utf-8?B?NGtEQXFIT1BvUG1XUHRXZnFRZlEvMVZ5Zlp5YVpyRkpHeklabjVoblprM1Fp?=
 =?utf-8?B?Z1pIS1dCT2dBQ2ZwbTZpaVV2amRtWVE4aXYyQUptbTJZdFI2VHl6cXV2bFZp?=
 =?utf-8?B?L3UvZ0J3MmZSY1dxc1dDVTVZeEp5V1orTGF6ckNWcHNxeE9VTU8reERHRnR1?=
 =?utf-8?B?bStWOTFEMjBZWE5sZFpUM1IxenZpa1VHN1ZGTUp3QzJmdlpFTXgrS3RYTTdN?=
 =?utf-8?B?Q3B5UGtOMjJjNUxsTXF1aTdkalYwNkJ5UlZMQXIyeS9Rb2twM2tXc01JSEJm?=
 =?utf-8?B?cEh2QkF4N2dIMkFSeDVPQkpvQS9jYjNXS3VFUklmMUNGcEpyQWxqb2lOc05s?=
 =?utf-8?B?cElIbTFkZ0ZyZnJoRDdlbGhiTTZiMTBORmQ5R1ZYYndBbVYzaGFkTldNcmlo?=
 =?utf-8?B?MVRRbkYyYUJ1L005UjJCamgxbmptMUFCS2hiZ2p5bVVHWk41RllVV2ZldlpQ?=
 =?utf-8?B?Um83amNCT3pQWUJiaWlHbGNTVWdBTGpFZFJNRHBRT3I2V09xVEpyNDhUaitJ?=
 =?utf-8?B?Tk1uV3k3N3VYRzJYdnpJdVVleUtrNml0WU91UkkxZVlxRUV6ZGhxNHRzNEgr?=
 =?utf-8?B?dnV6eElGcWU0Sk5VbEYrWjYwLzlQVGJGYjZERjY1OHdiZGlJak9heXFjMmZr?=
 =?utf-8?B?QmJVZ0s1YnVINEM1QUdRNTZEUCtjcTJzcTFPV0J1ak9HM3VRQ3NJTllZL1NT?=
 =?utf-8?B?c0J5UkgwVWFncS9ZMFFmd3Rkc25sL2xhejNpeFFXRkFFRjdFZFNlZ0NlQWhk?=
 =?utf-8?B?NTV0cVpYTlNlN0txN1dKMEhTNzRSdkFmMnhCMldoUUtuTGIxK0RaVFQ5YlFY?=
 =?utf-8?B?ZGVkMThCeVFxOE56cy9xVThZc21MbG10ZEtETXJjeUszd0E5b0pMYzlYTUNF?=
 =?utf-8?B?dllMaTZCZU1mbUVFb2dVNnExTHcwakVlUllBY3IyYW0wQS9HaG8yWlFsVUNm?=
 =?utf-8?B?R050ZGEySTN3b2dLeG8vZmVtZ2dJeWxpVEhYL2Nad2RKdU91aGsza21kcDF6?=
 =?utf-8?B?VE9LSFFYeVdwbm5hZ2d3WE1PUktsUTZ0S3R4WmdLY2tIVHBLc3dMeVhiZ1Zx?=
 =?utf-8?B?NnpaajFFKzdBeU9VSWV0N0s5cmE2aHh0MUs0TWFlNkFzVnJ3VVpMZVpDd2dR?=
 =?utf-8?B?UmFsSm52aGpCSEY1NmcwVlEwVDFRRlF1R25qeGdsdFMyQjZXYnRKL3lQZCsw?=
 =?utf-8?B?YWI5OXVMVEVuaXc0WkZNS2pnRjJEbFh0U0hrT2ZVYXFybWdJOW5PNDgvU25Z?=
 =?utf-8?B?L0R6Y2hmaUZIN09QaWlqSFRoVzA4K29XekhwaDRSUGszV3hlYmc1T2puZ1dp?=
 =?utf-8?B?NFRIOHVWZXlSamNzc0x2VXVKNjIxbksydFFyRzhnTzV3RHJNV2xPNUxCQk4v?=
 =?utf-8?B?dDVLQUpiaGZ3bjBUL3MxV1FqRWVxMG1vL0kzRnZ4dE1GaEk2NUFDeTZXZ0Ji?=
 =?utf-8?B?cVFKOE9uUEZFNktPbVV2OG90bVRNWHc1ZFFyczYyZ1l6RWE1OG5yMjQwaWpM?=
 =?utf-8?B?aStZcFhBMkZEaFNYMDRNSnd6clowemFEZG1QTmIwSDlaN0ZJSTFhV1F2RXZF?=
 =?utf-8?B?cmNmMUpYNXNmbTlsOUVENUdjdjVmZlF5N3BZY01YeFB6Y1lZMGYvbnk5cGZ2?=
 =?utf-8?B?M2V3MWY0eXdEZE1La3RNNVlsQnVoaCs2S3JtNTN6YkJzcW10ZGR5K0luNWc0?=
 =?utf-8?B?azdxWVNRZFZHQkEybEUzcisyc2V2ZEF5ZU1ScGsrQ3hMUEhGbmw3akZZNEZU?=
 =?utf-8?Q?iDH1xW8mE/h51qcYYcXTumTxd?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19500207-10d3-489a-96fa-08db7d3a6b24
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2023 09:30:06.3932
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qt3dpfOcKarp4uxx2THMqJZLrKAnMt+I+nt7DfvMYCzrBtxv9nrtBKrA8PBip+Xb1swHZKaISTbafXhBnYKfBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB4416
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_023016_306954_E10E08FB 
X-CRM114-Status: GOOD (  15.46  )
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

SEkgQW5nZWxvR2lvYWNjaGlubywKCk9uIDIwMjMvNy81IDE3OjIyLCBBbmdlbG9HaW9hY2NoaW5v
IERlbCBSZWdubyB3cm90ZToKPiBJbCAwNS8wNy8yMyAxMTowMSwgWWFuZ3RhbyBMaSBoYSBzY3Jp
dHRvOgo+PiBVc2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkgdG8gc2ltcGxpZnkg
Y29kZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8ZnJhbmsubGlAdml2by5jb20+
Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXRwaHkuYyB8IDEwICsr
Ky0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstdHBo
eS5jIAo+PiBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstdHBoeS5jCj4+IGluZGV4IDBk
MTEwZTUwYmJmZC4uY2I3YTRlNmVhMDE3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9tZWRp
YXRlay9waHktbXRrLXRwaHkuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LXRwaHkuYwo+PiBAQCAtMTU1NCw3ICsxNTU0LDYgQEAgc3RhdGljIGludCBtdGtfdHBoeV9wcm9i
ZShzdHJ1Y3QgCj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gwqDCoMKgwqDCoCBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wID0gZGV2LT5vZl9ub2RlOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqY2hpbGRfbnA7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHBoeV9wcm92aWRlciAqcHJv
dmlkZXI7Cj4+IC3CoMKgwqAgc3RydWN0IHJlc291cmNlICpzaWZfcmVzOwo+PiDCoMKgwqDCoMKg
IHN0cnVjdCBtdGtfdHBoeSAqdHBoeTsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcmVzb3VyY2UgcmVz
Owo+PiDCoMKgwqDCoMKgIGludCBwb3J0LCByZXR2YWw7Cj4+IEBAIC0xNTc2LDE1ICsxNTc1LDEy
IEBAIHN0YXRpYyBpbnQgbXRrX3RwaHlfcHJvYmUoc3RydWN0IAo+PiBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4+IMKgwqDCoMKgwqAgdHBoeS0+ZGV2ID0gZGV2Owo+PiDCoMKgwqDCoMKgIHBsYXRm
b3JtX3NldF9kcnZkYXRhKHBkZXYsIHRwaHkpOwo+PiDCoCAtwqDCoMKgIHNpZl9yZXMgPSBwbGF0
Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDApOwo+PiDCoMKgwqDCoMKg
IC8qIFNBVEEgcGh5IG9mIFYxIG5lZWRuJ3QgaXQgaWYgbm90IHNoYXJlZCB3aXRoIFBDSWUgb3Ig
VVNCICovCj4+IC3CoMKgwqAgaWYgKHNpZl9yZXMgJiYgdHBoeS0+cGRhdGEtPnZlcnNpb24gPT0g
TVRLX1BIWV9WMSkgewo+PiArwqDCoMKgIGlmICh0cGh5LT5wZGF0YS0+dmVyc2lvbiA9PSBNVEtf
UEhZX1YxKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBnZXQgYmFua3Mgc2hhcmVkIGJ5IG11
bHRpcGxlIHBoeXMgKi8KPj4gLcKgwqDCoMKgwqDCoMKgIHRwaHktPnNpZl9iYXNlID0gZGV2bV9p
b3JlbWFwX3Jlc291cmNlKGRldiwgc2lmX3Jlcyk7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoSVNf
RVJSKHRwaHktPnNpZl9iYXNlKSkgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJy
KGRldiwgImZhaWxlZCB0byByZW1hcCBzaWYgcmVnc1xuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoCB0
cGh5LT5zaWZfYmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChJU19FUlIodHBoeS0+c2lmX2Jhc2UpICYmIFBUUl9FUlIo
dHBoeS0+c2lmX2Jhc2UpICE9IAo+PiAtRUlOVkFMKQo+Cj4gVGhhdCdzIHdyb25nLiBZb3Ugd2Fu
dCB0byByZXR1cm4gYW55IGVycm9yIHVuY29uZGl0aW9uYWxseSwgYXMgdGhlIFYxIAo+IFBIWSAq
bmVlZHMqCj4gdGhlIHNpZiBpb3NwYWNlIGFuZCB0aGVyZSdzIG5vdGhpbmcgYWZ0ZXJ3YXJkcyBy
ZXRyeWluZyB0aGlzLgoKCldoZW4gc2lmX3JlcyBpcyBub3QgY29uZmlndXJlZCwgYW4gSU9NRU1f
RVJSX1BUUigtRUlOVkFMKSBlcnJvciB3aWxsIGJlIApyZXR1cm5lZCBpbiBfX2Rldm1faW9yZW1h
cF9yZXNvdXJjZS4KClRoaXMga2luZCBvZiBlcnJvciBpcyBpZ25vcmVkIGluIHRoZSBuZXdseSBh
ZGRlZCBjb2RlLCBhbmQgdGhlIGRyaXZpbmcgCnByb2JlIHByb2Nlc3Mgd2lsbCBub3QgYmUgaW50
ZXJydXB0ZWQgYXQgdGhpcyB0aW1lLgoKV2hhdCBkaWQgSSBtaXNzPwoKVGh4LAoKWWFuZ3RhbwoK
Cj4KPiBQbGVhc2UgZml4Lgo+Cj4gUmVnYXJkcywKPiBBbmdlbG8KPgo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gUFRSX0VSUih0cGh5LT5zaWZfYmFzZSk7Cj4+IC3CoMKgwqDC
oMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCDCoMKgwqDCoMKgIGlmICh0cGh5LT5wZGF0
YS0+dmVyc2lvbiA8IE1US19QSFlfVjMpIHsKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
