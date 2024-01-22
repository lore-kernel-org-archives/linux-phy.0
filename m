Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1761C4725D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jan 2024 05:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bc2ZM7I2WUZm4hVZVboz6vZ8w5s89tgi0xL9ElOtz+k=; b=O83JlfbBzLen7TvOSCyUNJztRi
	Cpo8ni6ja6ggJU8a/VSwco9Y3DkChk9Hb+0QAGjspU6FgJ230qCu+FdOAk94WPkKuoEcCS+r9vA93
	uQBDXYYcRhkoD6AZ9dNeYMFrk8Lxnpm6vZbdV8xdCVRHqEV6HteH3Z8AQ02CUXU+v8H8/UhvltljB
	TJsIY3f4er9op3E0Z9BPzGYKN0xQFfvIYnFlu4IoONqlF4mefywWqDMQ3546x+aSh5Tk7myHBgJZ/
	ADGYLS0oENtkzX8nqN/8a+SSBCinSvQJHC9FyiuydR1u1QYuxKHFRPU8/pJzMZO+0mRO+UPLyCaKy
	T2o5jsfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRnEy-00AeaZ-1A;
	Mon, 22 Jan 2024 05:53:00 +0000
Received: from mail-dm6nam11on2055.outbound.protection.outlook.com ([40.107.223.55] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRnEt-00AeXw-0N
	for linux-phy@lists.infradead.org;
	Mon, 22 Jan 2024 05:52:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GuOSvGuAD/0TZWt/0LGnNo1Xs81DlKE2TKFBkGpu6obcZgZ3mkjUDgdDXTvcswvVTaEFmS6ks+zD5xR0Bqv3LIy/CmZf+YQdK1MxnMsE0yAEoR1pIQzXS7XJTmP/vZWvB/T/qbEEMPkOC1tuF8mOeIa20aDNYADyQW9PTJdnKKJ9mTOhjzs/ZJ8FweX46A77pQpvvdyEkFDmMn7kw789MHXVSXpEOOSa+EH5b1qhEeCZ6YVtvlQq5p2RbY2Bj+Vc8tmER/qOxJFN/OojY+l4F7hE29OJ2fqXmbgR3XSu/jMxxu7hF1yZNj2dQXJ5oHTCSy7PiBN+sijM6l7fKrOGMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ylp/jtXE2yAsTzHmJtQQfbNSNvLBD03MAn1Mh+5EMag=;
 b=fFhtP1GG2KTHUXTk/5asIAhvhck49o++Y4isMExrlg7cZpQDdFQxggMsq5h2pcncyYH4LcQ46G/q9FBCIxFjch0KKVtsiENyZas6DbYI8s6+XlPddhFkIGaNsDZs+aNvD5RNk3R1oKLnB16eSfUmoqzLTvEbAmJKGikuTZrJHW01TFPnmlt872hGrW+Ro4XrTCu02nTqaITb1uErfS33HZU8lgwIt47voYFP9PL1Xo7ehwpK4EnNB3In4Ae8CZYzw+Bv2Zb661nwsLUXJ7A/4oWyb6tUrxBgn8hdM+NvqdEz0VIb7XcnQSwMIJB7ApqHML5w+pNvTpKrm/2hc6tL2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ylp/jtXE2yAsTzHmJtQQfbNSNvLBD03MAn1Mh+5EMag=;
 b=xlFFFeTCqALzus6yGXrOEcJYR4rFeVvTotOsgDqVwNHOeUoBjvITrKjm27Cm06IsievNFeVduc9ENeq99xKZmGMk6h/kZcz71Hdzp1NoicMKBiCMl/7Yp/BgZw/VUbrIz5pmyvmWErGYkXWObJyjejdyGNSCj0U0mhsR2V+UgaM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5827.namprd12.prod.outlook.com (2603:10b6:208:396::19)
 by DM4PR12MB5769.namprd12.prod.outlook.com (2603:10b6:8:60::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.32; Mon, 22 Jan 2024 05:52:28 +0000
Received: from BL1PR12MB5827.namprd12.prod.outlook.com
 ([fe80::4821:25c:ab91:94f3]) by BL1PR12MB5827.namprd12.prod.outlook.com
 ([fe80::4821:25c:ab91:94f3%4]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 05:52:28 +0000
Message-ID: <88e450b5-5be0-2203-3474-45778503699d@amd.com>
Date: Mon, 22 Jan 2024 11:22:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] Keystone PCI driver probing and SerDes PLL timeout
Content-Language: en-US
To: Diogo Ivo <diogo.ivo@siemens.com>, Greg KH <gregkh@linuxfoundation.org>,
 s-vadapalli@ti.com
Cc: vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
 tjoseph@cadence.com, linux-pci@vger.kernel.org, ylal@codeaurora.org,
 regressions@lists.linux.dev, jan.kiszka@siemens.com
References: <20240111141331.3715265-1-diogo.ivo@siemens.com>
 <2024011246-corned-disregard-7123@gregkh>
 <1cce86b1-b309-40e0-afff-45baeb013e1f@siemens.com>
From: Kishon Vijay Abraham I <kvijayab@amd.com>
In-Reply-To: <1cce86b1-b309-40e0-afff-45baeb013e1f@siemens.com>
X-ClientProxiedBy: PN2P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::20) To BL1PR12MB5827.namprd12.prod.outlook.com
 (2603:10b6:208:396::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5827:EE_|DM4PR12MB5769:EE_
X-MS-Office365-Filtering-Correlation-Id: 89467719-555a-4cb5-a0b2-08dc1b0e50b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I3GGM1Dy+MXH9kMsR+mqgFI1eiiBZ4+Qqp4tq0WvwG3NT4MR03r6WGvvgurjDdmEmmZHpUxBB9VSF/2FSlAxPUfexpvD/xr4R7jgcUdIV+KysBCT0hS3wiZDbHQA7LKmAQxnGqaao2YJD8HrwUMWvtU9abql8NkS7NaQlP1TWrk4HwnpQTm3c8WcukRi7BWcGKNu+9Sl8vO9WKnOoiQqBdVqKGW0uW7t9O8gamy4Op+p3xEO7Oqv5Qf2YwXeMMlvxFjg489KDzmTfGh2rtIdpieO+56zgfiQLIBCl4ng+qE4qZeVNjoy/ds3sXe1Ev1kFyJ4isnbz7BXo2/hZyzMyhP0Xb3jDzEPBnHRQmfxn3PnPPNv+Dx6ECMgzB8YX0fLm55hvNxSmHhL+hCQyGAfOPWJ8d/m2YzaLmGReQzAvAxSzGTnWQW1CK2PbRW0MaadlTDyEvTiGFNpmXkpI5b/ONX1HDkpQK+3mzAoLsjcJtbM1xtDpuHTR542hIdf+UkB+NKAd4XShxuzTr2IoNYWh0dvG/qparfX9eDG4X5SgEKLchd3e3V2eAcGUWAu4mQQYR0W6g+qPkNn8fpCZ5w8HqVYs8yRwJxH7K/RoERQO0YPXyl2ZeUtouxWcONJbe83UjA2RRJvyvyc80Wj4ShxiQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR12MB5827.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(376002)(346002)(39860400002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(31686004)(6506007)(6666004)(6512007)(53546011)(2616005)(26005)(38100700002)(31696002)(36756003)(41300700001)(83380400001)(5660300002)(2906002)(7416002)(8676002)(66476007)(66556008)(8936002)(966005)(110136005)(6486002)(316002)(4326008)(478600001)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDZqSDJMandCWWVCMVIwMTVTVWowdjl6VkZRb29oRmZYRW51RURGMVFzaWQy?=
 =?utf-8?B?ZTFha0xXVUFYZ0hubU45RlFPK3cxc3lNUnZPTmVSYkNwaWkwaWIxOEdybkxD?=
 =?utf-8?B?M3ZvOSsxNS91OUlabXFCK2piWlE1bG0wOVAxc3V4Tlc2ZnAySHV6ZnJETjQw?=
 =?utf-8?B?WC9QOVJFVjhnNHVPb2pXOUZmVmxhTmdFWFRsUndaaDdJOXd6cWtObTd1YmRn?=
 =?utf-8?B?QlVWMkpnajhyVEhwaDRuZ3FYdFcrOThsOTNObkd5aE1QZ1B6MFozbjVqMjVV?=
 =?utf-8?B?T1RKRU9KbDZuM0ZvWlpkTGNtWmpUcEQ0NVRHNUQvZzJ0Uk9pWlVWMlR4N2d1?=
 =?utf-8?B?MnlxeVlyR3FsMFJuREt4T0g0WGpJY09NYnZoU1luWnR0bjVFWHk2Mmwxb0RL?=
 =?utf-8?B?SG5qU2FqNk5yN3hLdnlFNC9NZlM3VnVTeUFjSlh4emE0RVhVdVRPZ3hDR0lk?=
 =?utf-8?B?UWFjQjl6MTM5Y0NxY3Vyd09KRHQrSnc3Vktad0wyV0V5ekswcjc4QmtvWGpv?=
 =?utf-8?B?b2QwWFV2UFF2V1hWZDRsSWg4WW9pNzhnQWczem45Zk5CYUdPSDdwUTZ1TnRT?=
 =?utf-8?B?QTRYTmZJTDBrdDdPczh4RldydnRuQ1FvM2xleWNhcU11ZzUzNi9LOTJNeEh2?=
 =?utf-8?B?R01aWE5QV0ZEYUNQdUUzSUJKdCtYdjdnM1VOdENUSWJSbjhNKzFid0Q0QVEw?=
 =?utf-8?B?blRXOVNiK25zaDYvLzNvQjRuYnluR1Y5V2xjR0xhN2VMRGwyZHg1bUxTbXJT?=
 =?utf-8?B?YW1RZjB0eXpBNUF4L2lvOUxTaktxK1IvY0t1dUw2Z05rQitPcDVNTjE5MVRE?=
 =?utf-8?B?c0VaOVpUZit5UXZHa25YcFF4aTJzUG91cVlyS0kyUkZMSEw3aEh4TTE0dU9o?=
 =?utf-8?B?QmlNVUpPSXBpK0ZSbGRRWWtzQUswTnRqQk1raWtwVmRvcEE0MEYzUTA1UG53?=
 =?utf-8?B?ZEEvQ01JU0plaVRFZjhpdzh4VUlER0dHSW5hTHNtZVVhK2UwTDgxMFk4TSt2?=
 =?utf-8?B?TGw3YjcwRnoxYmJrdHVTRkgwNVlOckVkSFJ4WDFDUkdTUEJBK3lRalBDSitL?=
 =?utf-8?B?SFhxRGdwV1c0bDlyS2tFdGJaVjhoNnplY290V0IwTHpGRTk0aTFERGlTM01R?=
 =?utf-8?B?NUxmekduMnVDUCtsTGxQVHRSZzczSVJzNEtnM3ZmS1lrc1UxWkp1QmN3MzJI?=
 =?utf-8?B?NWlUaHpQUnFTd2E4ditWZEU3ZlhwOFkwOWEzdlBGamNwbE9oSDRpM1c5OTlz?=
 =?utf-8?B?YWxveTlHRkc5L0xEWnY2TU9XQ3RGL0dpVkpJMWl2SWQ0NThNQTZidERhU0tl?=
 =?utf-8?B?bzRUajJjaldhaTAvN3ZLUFBueFRwS2NDZ2NxcnIzVDZrV1Z3eGlKZU9CNUsy?=
 =?utf-8?B?Vi82UmlCdVJCNjZVemVvSUorR0ozZWF6Z2llQnROa1VSSk16eU14RURCRWVT?=
 =?utf-8?B?YnF1Mlc1S1hTN09RRnllYTZoZzFMWmlIZlNaTlJXYkpTbDJXR3dxNzBZZWVJ?=
 =?utf-8?B?MWV0bHAySytEVzBEdUtKR2hSbkZMZ3ZKWE8vT3hsT3BLakM2MHQrYTcrQzJ0?=
 =?utf-8?B?bys5SmVQNjBjNHp4LzdFNmxQZi94dHNSYWFjTit5ZVNkVFgvc21PVTlUMFd2?=
 =?utf-8?B?Vzd3YTdiM04xbERMdWRYME5QcG96RFZsUU96K1hIdVdZMDNMMVBScjRSZmI2?=
 =?utf-8?B?M2ZQMzkwMThQVzg0ZGlyRSt5WFdLTXVDQVdPclY1ejVvRmhlbWtDbXhWVGQ0?=
 =?utf-8?B?V1lQY05pNFZxYjFmN1hLQTlHUm0vVW9xQXJERmxmQzl3L3Z6OENSOWJuL3E5?=
 =?utf-8?B?b2FJRWNIdWdOU0MyVEtlaHJHWDFXWHFKaE5rUVU3cmtMaEgzaE50ZWV0UWE5?=
 =?utf-8?B?TU5JVzBjSjdNdlhhNTJ1L0dsL2NjZndUbHJ0cll6K3ZpbmVycjdhZGIrZThs?=
 =?utf-8?B?clV5MmlyckYwOTNOVzVtQjBDWFlIeDVNMzJqYVJWMUcxMDZhdVJqNWZ2cDBB?=
 =?utf-8?B?RmswODVZOGRoYmRXL053NkZIcS9oZFR1VzVYRjI3VVhHVjhFbE9zV0dyY2Fz?=
 =?utf-8?B?Sk50S0tXbDZvUjFhTnEycG9Oc3JmMUROclNoV3JWWEJ5Nm95L0hOejRnZFhW?=
 =?utf-8?Q?TTFxNmrE24GCQVmqqdDeo0ZDK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89467719-555a-4cb5-a0b2-08dc1b0e50b6
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5827.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 05:52:28.0276
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YJQbaDhoUcpdQy51+bfimObglBqnxrYzeTsAvhfDbac0vQbM2xQfmVSwpPxh7nDtMsWSrOhSPw5/qJjyL40VIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_215255_177273_3A5171C1 
X-CRM114-Status: GOOD (  29.51  )
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

K1NpZGRoYXJ0aAoKSGkgRGlvZ28sCgpPbiAxLzEyLzIwMjQgNToxNiBQTSwgRGlvZ28gSXZvIHdy
b3RlOgo+IAo+IE9uIDEvMTIvMjQgMDc6NTcsIEdyZWcgS0ggd3JvdGU6Cj4+IE9uIFRodSwgSmFu
IDExLCAyMDI0IGF0IDAyOjEzOjMwUE0gKzAwMDAsIERpb2dvIEl2byB3cm90ZToKPj4+IEhlbGxv
LAo+Pj4KPj4+IFdoZW4gdGVzdGluZyB0aGUgSU9UMjA1MCBBZHZhbmNlZCBNLjIgcGxhdGZvcm0g
d2l0aCBMaW51eCBDSVAgNi4xCj4+PiB3ZSBjYW1lIGFjcm9zcyBhIGJyZWFrYWdlIGluIHRoZSBw
cm9iaW5nIG9mIHRoZSBLZXlzdG9uZSBQQ0kgZHJpdmVyCj4+PiAoZHJpdmVycy9waHkvdGkvcGNp
LWtleXN0b25lLmMpLiBUaGlzIHByb2Jpbmcgd2FzIHdvcmtpbmcgY29ycmVjdGx5Cj4+PiBpbiB0
aGUgcHJldmlvdXMgdmVyc2lvbiB3ZSB3ZXJlIHVzaW5nLCB2NS4xMC4KPj4+Cj4+PiBJbiBvcmRl
ciB0byBkZWJ1ZyB0aGlzIHdlIGNoYW5nZWQgb3ZlciB0byBtYWlubGluZSBMaW51eCBhbmQgYmlz
c2VjdGluZwo+Pj4gbGVhZCB1cyB0byBmaW5kIHRoYXQgY29tbWl0IGU2MTFmOGNkODcxNyBpcyB0
aGUgY3VscHJpdCwgYW5kIHdpdGggaXQgCj4+PiBhcHBsaWVkCj4+PiB3ZSBnZXQgdGhlIGZvbGxv
d2luZyBtZXNzYWdlczoKPj4+Cj4+PiBbwqDCoCAxMC45NTQ1OTddIHBoeS1hbTY1NCA5MTAwMDAu
c2VyZGVzOiBGYWlsZWQgdG8gZW5hYmxlIFBMTAo+Pj4gW8KgwqAgMTAuOTYwMTUzXSBwaHkgcGh5
LTkxMDAwMC5zZXJkZXMuMzogcGh5IHBvd2Vyb24gZmFpbGVkIC0tPiAtMTEwCj4+PiBbwqDCoCAx
MC45Njc0ODVdIGtleXN0b25lLXBjaWUgNTUwMDAwMC5wY2llOiBmYWlsZWQgdG8gZW5hYmxlIHBo
eQo+Pj4gW8KgwqAgMTAuOTczNTYwXSBrZXlzdG9uZS1wY2llOiBwcm9iZSBvZiA1NTAwMDAwLnBj
aWUgZmFpbGVkIHdpdGggZXJyb3IgCj4+PiAtMTEwCj4+Pgo+Pj4gVGhpcyB0aW1lb3V0IGlzIG9j
Y3VyaW5nIGluIHNlcmRlc19hbTY1NF9lbmFibGVfcGxsKCksIGNhbGxlZCBmcm9tIHRoZQo+Pj4g
cGh5X29wcyAucG93ZXJfb24oKSBob29rLgo+Pj4KPj4+IER1ZSB0byB0aGUgbmF0dXJlIG9mIHRo
ZSBlcnJvciBtZXNzYWdlcyBhbmQgdGhlIGNvbnRlbnRzIG9mIHRoZSAKPj4+IGNvbW1pdCB3ZQo+
Pj4gYmVsaWV2ZSB0aGF0IHRoaXMgaXMgZHVlIHRvIGFuIHVuaWRlbnRpZmllZCByYWNlIGNvbmRp
dGlvbiBpbiB0aGUgCj4+PiBwcm9iaW5nIG9mCj4+PiB0aGUgS2V5c3RvbmUgUENJIGRyaXZlciB3
aGVuIGVuYWJsaW5nIHRoZSBQSFkgUExMcywgc2luY2UgY2hhbmdlcyBpbiB0aGUKPj4+IHdvcmtx
dWV1ZSB0aGUgZGVmZXJyZWQgcHJvYmluZyBydW5zIG9uIHNob3VsZCBub3QgYWZmZWN0IGlmIHBy
b2JpbmcgCj4+PiB3b3Jrcwo+Pj4gb3Igbm90LiBUbyBmdXJ0aGVyIHN1cHBvcnQgdGhlIGV4aXN0
ZW5jZSBvZiBhIHJhY2UgY29uZGl0aW9uLCBjb21taXQKPj4+IDg2YmZiYjdjZTRmNiAoYSBzY2hl
ZHVsZXIgY29tbWl0KSBmaXhlcyBwcm9iaW5nLCBtb3N0IGxpa2VseSAKPj4+IHVuaW50ZW50aW9u
YWxseQo+Pj4gbWVhbmluZyB0aGF0IHRoZSBwcm9ibGVtIG1heSBhcmlzZSBpbiB0aGUgZnV0dXJl
IGFnYWluLgo+Pj4KPj4+IE9uZSBwb3NzaWJsZSBleHBsYW5hdGlvbiBpcyB0aGF0IHRoZXJlIGFy
ZSBwcmUtcmVxdWlzaXRlcyBmb3IgCj4+PiBlbmFibGluZyB0aGUgUExMCj4+PiB0aGF0IGFyZSBu
b3QgYmVpbmcgbWV0IHdoZW4gZTYxMWY4Y2Q4NzE3IGlzIGFwcGxpZWQ7IHRvIHNlZSBpZiB0aGlz
IAo+Pj4gaXMgdGhlIGNhc2UKPj4+IGhlbHAgZnJvbSBwZW9wbGUgbW9yZSBmYW1pbGlhciB3aXRo
IHRoZSBoYXJkd2FyZSBkZXRhaWxzIHdvdWxkIGJlIAo+Pj4gdXNlZnVsLgo+Pj4KPj4+IEFzIG9m
ZmljaWFsIHN1cHBvcnQgc3BlY2lmaWNhbGx5IGZvciB0aGUgSU9UMjA1MCBBZHZhbmNlZCBNLjIg
Cj4+PiBwbGF0Zm9ybSB3YXMKPj4+IGludHJvZHVjZWQgaW4gTGludXggdjYuMyAoc28gaW4gdGhl
IG1pZGRsZSBvZiB0aGUgY29tbWl0cyBtZW50aW9uZWQgCj4+PiBhYm92ZSkKPj4+IGFsbCBvZiBv
dXIgdGVzdGluZyB3YXMgZG9uZSB3aXRoIHRoZSBsYXRlc3QgbWFpbmxpbmUgRGV2aWNlVHJlZSB3
aXRoIFsxXQo+Pj4gYXBwbGllZCBvbiB0b3AuCj4+Pgo+Pj4gVGhpcyBpcyBiZWluZyByZXBvcnRl
ZCBhcyBhIHJlZ3Jlc3Npb24gZXZlbiB0aG91Z2ggdGVjaG5pY2FsbHkgdGhpbmdzIAo+Pj4gYXJl
Cj4+PiB3b3JraW5nIHdpdGggdGhlIGN1cnJlbnQgc3RhdGUgb2YgbWFpbmxpbmUgc2luY2Ugd2Ug
YmVsaWV2ZSB0aGUgCj4+PiBjdXJyZW50IGZpeAo+Pj4gdG8gYmUgYW4gdW5pbnRlbmRlZCBieS1w
cm9kdWN0IG9mIG90aGVyIHdvcmsuCj4+Pgo+Pj4gI3JlZ3pib3QgaW50cm9kdWNlZDogZTYxMWY4
Y2Q4NzE3Cj4+IEEgInJlZ3Jlc3Npb24iIGZvciBhIGNvbW1pdCB0aGF0IHdhcyBpbiA1LjEzLCBp
LmUuIGFsbW9zdCAyIHllYXJzIGFnbywKPj4gaXMgYSBiaXQgdG91Z2gsIGFuZCBub3Qgc29tZXRo
aW5nIEkgd291bGQgY29uc2lkZXIgcmVhbGx5IGEgInJlZ3Jlc3Npb24iCj4+IGFzIGl0IGlzIGNv
cmUgY29kZSB0aGF0IGV2ZXJ5b25lIHJ1bnMuwqAgR2l2ZW4geW91IHBvaW50IGF0IHNjaGVkdWxl
cgo+PiBjaGFuZ2VzIGFsc28gZml4aW5nIHRoZSBpc3N1ZSwgdGhpcyBzZWVtcyBsaWtlIGEgaGlu
dCBhcyB0byB3aGF0IGlzCj4+IHdyb25nIHdpdGggeW91ciBkcml2ZXIvcGxhdGZvcm0sIGJ1dCBp
cyBub3QgdGhlIHJvb3QgY2F1c2Ugb2YgaXQgYW5kCj4+IG5lZWRzIHRvIGJlIHJlc29sdmVkLsKg
IFBsZWFzZSBsb29rIGF0IGZpeGluZyBpdCBpbiB5b3VyIGRyaXZlcnM/wqAgQXJlCj4+IHRoZXkg
YWxsIGluIExpbnVzJ3MgdHJlZT8KPj4KPj4gdGhhbmtzLAo+Pgo+PiBncmVnIGstaAo+IEhlbGxv
LAo+IAo+IEkgc2VlIHRoZSBwb2ludCB0aGF0IHRoaXMgY29kZSBoYXMgYmVlbiBsaXZpbmcgaW4g
dGhlIGtlcm5lbCBmb3IgYQo+IGxvbmcgdGltZSBub3cgYW5kIHRoYXQgaXQgYmVjb21lcyBtb3Jl
IGRpZmZpY3VsdCB0byBqdXN0aWZ5IGl0IGFzCj4gYSByZWdyZXNzaW9uOyBJIHJlcG9ydGVkIGl0
IGFzIHN1Y2ggYmFzZWQgb24gdGhlIHN1cHBvc2l0aW9uIHRoYXQKPiB0aGUgY3VycmVudCBmaXgg
aXMgbm90IHRoZSBwcm9wZXIgb25lIGFuZCB0aGF0IHRlY2huaWNhbGx5IHRoaXMKPiBzdXBwb3J0
IHdhcyBicm9rZW4gYmV0d2VlbiB0aGUgaWRlbnRpZmllZCBjb21taXRzLgo+IAo+IElmIHRoaXMg
c2l0dWF0aW9uIGlzIGluY29tcGF0aWJsZSB3aXRoIGEgcmVncmVzc2lvbiByZXBvcnQgdGhlbiBp
dAo+IGNhbiBiZSBkcm9wcGVkIGFzIG9uZSBhbmQgd2Uga2VlcCBpdCBpcyBhcyBhIGJ1ZyByZXBv
cnQgZm9yIHdoaWNoCj4gd2UgYXJlIGxvb2tpbmcgZm9yIGlucHV0IGZyb20gdGhlIGNvbW11bml0
eS4KPiAKPiBJIGFncmVlIHRoYXQgdGhpcyBuZWVkcyB0byBiZSBmaXhlZCBpbiB0aGUgZHJpdmVy
IHNpbmNlIGFsbCBvdGhlcgo+IGRyaXZlcnMgYXJlIHdvcmtpbmcgZmluZSB3aXRoIGU2MTFmOGNk
ODcxNywgYW5kIHllcywgYWxsIG9mIHRoZQo+IGRyaXZlcnMgaW4gcXVlc3Rpb24gYXJlIGluIG1h
aW5saW5lLCB3aGVyZSB3ZSBwZXJmb3JtZWQgdGhlIGJpc3NlY3Rpb24uCgpMb29rcyBsaWtlIFNp
ZGRoYXJ0aCBmcm9tIFRJIGZpeGVkIGEgc2ltaWxhciBpc3N1ZSByZXBvcnRlZCBieSB5b3UgaGVy
ZS4KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIzMDkyNzA0MTg0NS4xMjIyMDgwLTEtcy12
YWRhcGFsbGlAdGkuY29tCgpUaGFua3MsCktpc2hvbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
