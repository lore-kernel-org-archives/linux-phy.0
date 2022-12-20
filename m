Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 747FEC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Dec 2022 14:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XQWtJdaLU7aL8sqpXbkq9zBVedJTCvDI6v4lFeNkQE=; b=zPxNj9KTvjLU0O
	tlBj3iOt8IB5QpOpm46fsP3DGUX7tMfbNnr8KhlPVDdRI5gOlj/A5hCxvzX9y00WJ55SQKy3F1TYt
	ZxkjT4sUXyRgQN4QQXf1NFBUnTUEzIQsiMfI8Ln+VxXMtkOfkUrQlVpGxlJicYeMQgje7oNU++w88
	QbzCh4nrzx8DWHVK+uLlUuaWMrspDH+/aTxJ3n42sAMZ7kP7VFgB69VjLmWh0hHQrRhuc4aazzRZy
	xCJ7NtZ68Izd26M4RoayCERjSRye/iwQGi9JPH5ODKq9poIymcqZghgJrF3x9iLy8XY8hARf57qZg
	bY5uIiEdK6Dyockvcjvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7dli-00Gq9a-KS; Tue, 20 Dec 2022 14:38:58 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7dl6-00GpVC-CM
	for linux-phy@lists.infradead.org; Tue, 20 Dec 2022 14:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1671547100; x=1703083100;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=tpH9wONMCszvhaN4rH44w0PTiSijxDVawCxnXxk2WUA=;
  b=JhkmJJMWxj5yw7hch/9OpBt/ArBGA3RgCHtR0bJGehUgvle/bK0iS3ae
   ELM7llTNL78xOHm6KrP+0oRiaBfhrOkHziYQ29t2N7eDL+KLg9fImdiH8
   zOfdXQz++P70M0Np1+VA4bQetMx0xIo3ZPV2ZlB9n+soOYxPxZ2a4KC5M
   gg/rMqXf7oweX7gBhCWiPakGFR4yykLDa+5t095lBU8UhKDO2Z/+2Pza6
   eZAcUQKZWDk66vK1VmLfKpCDxHEAbNS4BDJ5PghsY/13CFvSXkMmyh2mn
   I8euVMYZQCeFnVHfNPRbdlwgdQNgPh8k9i8skXGo5i2H2C49slAqK1M2t
   w==;
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; 
   d="scan'208";a="204775892"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 20 Dec 2022 07:38:19 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 07:38:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Tue, 20 Dec 2022 07:38:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iazO5HtPHtBGdTmmb9t4xEUA7D6EPXXryZrubfNe0JVSd9DQ+Xir9tYjnSIT/Oy3uTMWf2r2O7ZtdB/sw76DT9UoGF+zsGhZK27ECb/B9/JLF732lBOkKcAskH5Q59MNSjceM4GnomOyGmNlx7x+WUfz1ADAsmS7dseXwWxBW6lpAG9a6QylKnHJSiAIsRn0AzfpQPT8OkLHkjO1OSWqC1vKiGbTIk5IYQBKKY++sFKrEspeJU3R3CAqQDpjvl1smF62O9ZeVToGFXiZSl1sNeLiO+03Z81PAa9pibPQb7YGMYvtvcDDkwDKLlR1Ft+iFQobPQacFTbGD2qGre0srA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpH9wONMCszvhaN4rH44w0PTiSijxDVawCxnXxk2WUA=;
 b=ZxLRiHcFGgWJvDAVfZjz0YZ9VkGY0JLYe3kZruh4RvANZ6Zd5m5w/MFqYXseBp2t5DbIfXa9/f/dlg0F2oiH4Cyv5EYDAfjJOk/RO5x//AfyUZuXg1KPlitH1Rpbigkd+EC3+dw10trgzlDgqiiLbL6dI0v+/EbwF0M3RQl6zfVcS/bakPXUowjrfuI56S2X1fREjeFyHvCZGskcMn/7tUDjQZ5qn/VVUxQvTtVI2R5uBjG5zgju7F/YOcMmdSWK16vb3sN8dHxBPy3KqO4fZ3xi4hgkavaSarI0ZvdsF8AHuqhaY4uRrb6DmE8LF/7I175jveTKzfrAxa7OviIsoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tpH9wONMCszvhaN4rH44w0PTiSijxDVawCxnXxk2WUA=;
 b=LUd0nm03olnpKn2P6KFJ6m1UJcZMKABb5BWA9/0Cwc777hcKQIRgQc+EXr6kthGrriyNrPlUKhk+VTXA1hxQe644ObLAfC+ZOzAELzrp3Itp7b1nuOjCZnn+RSXhJjuFrvHEzSD2yUr+J1lknx70jVJNoChpof9T2GRbT/vonS4=
Received: from BL1PR11MB5384.namprd11.prod.outlook.com (2603:10b6:208:311::14)
 by PH7PR11MB6883.namprd11.prod.outlook.com (2603:10b6:510:202::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 14:38:15 +0000
Received: from BL1PR11MB5384.namprd11.prod.outlook.com
 ([fe80::775:3af1:d96f:ef6e]) by BL1PR11MB5384.namprd11.prod.outlook.com
 ([fe80::775:3af1:d96f:ef6e%9]) with mapi id 15.20.5880.019; Tue, 20 Dec 2022
 14:38:15 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh@kernel.org>
CC: <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<luis.oliveira@synopsys.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: phy: Document the Synopsys MIPI DPHY
 Rx bindings
Thread-Topic: [PATCH v5 2/4] dt-bindings: phy: Document the Synopsys MIPI DPHY
 Rx bindings
Thread-Index: AQHZEVwtB0LhKuNBckWg5VeIFProca5xK/SAgAWyswA=
Date: Tue, 20 Dec 2022 14:38:15 +0000
Message-ID: <9c175af4-cf69-9a49-22ac-03b9e4458ee7@microchip.com>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
 <20221216143717.1002015-3-eugen.hristev@microchip.com>
 <20221216233719.GA80712-robh@kernel.org>
In-Reply-To: <20221216233719.GA80712-robh@kernel.org>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5384:EE_|PH7PR11MB6883:EE_
x-ms-office365-filtering-correlation-id: d1586ab9-46d8-4138-71fb-08dae297d43f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0tXEwMfTrQoQyGWF+PVcYh8cfXF/kfQrXtk0ZSkiv01sxqITHXOJIwXe9oVcYykdpxpANPzROLuYekXcgY80CWeVuFbf3nixOTANHaWzZO2te0m9J1KhSSBg9KbaBqC1NelDq9D1gfUaQT7PxGvLrLWuI+oMLrGUVjtoJKo0HYqjusNgf+HXSHWWQ3an50yzWB0/aB8tEtIaJtt51ajfJ8A9M/5hPoXb43HXwm+nOCunbYBeT9Pydi5/sC1L/CsChXNqXT9MhZIsCGZkTkSuoepofSe7fEYqiXGqXRAFdEB6yjXAYIk5KACemOsykYNrsZY1ixR0HMCeFlJVEq0FOJwTyIAS6JekF4ORlKn1Vrrp6yqZhW2FRIbFBZoTD7ts3bR2k6YpOnKSeCBiC6vkU9vMPoBEZqBmgSVrLdSfjVCNfhN0zVle9GE7iyP9917fdxDETGjJ93sOTIdeEqNW9h71XfRZzd+T4p1lIkTs6K4rDaUWEAJhbOHb9v5qEK8yMZg1bOl8qA9S29ebMpGRPsrrvKigcLaUfpYCQythRECEYO8OEHiIaCxOU9fw2I6zXrIn2Gi1wDcKwqbvwkGyq6m1cCx7RNGqEHIqZMS2UoQXUlokFTCWKwXUvNajwrolkoqzr4LSqSMZOmNmR37vJljh2kE5Iv20grFFuqnUQ4iLD4ub+hTXmraKLNoJLuQrNl/nBN23QojIXh1NXQeuC+s+EViVXWCsKMuy/mEyjk3Vek55uUZqzGRVppsuzSOoMU112so40RPeSi/g45I4IA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR11MB5384.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(136003)(39860400002)(366004)(396003)(451199015)(54906003)(38070700005)(31686004)(8936002)(5660300002)(71200400001)(6916009)(4744005)(478600001)(6486002)(66556008)(6512007)(41300700001)(26005)(186003)(2906002)(38100700002)(53546011)(6506007)(31696002)(76116006)(2616005)(316002)(36756003)(66476007)(4326008)(86362001)(66446008)(66946007)(64756008)(8676002)(122000001)(91956017)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OE5vUzBEWFFhdGFEdVBwUStETm5jVGdwOTZNZUgyTkNraHV3N21teXYxRVQy?=
 =?utf-8?B?T1NKVndSMVhrdGpyNnc0elpMc0pkTGVnYlpCVytZNWcwQWp5cmpVMGdZSS9n?=
 =?utf-8?B?RURPaXcyWW5oSVJhSERNUG9ZV3RPbTU1QmVPampxMU9VejhvL0tjKzNpUklV?=
 =?utf-8?B?eHBjWUczclhjUG9LN3B2NHJCcEtEYStMRmlwU2QzSDFkbUl5VHdmYnBkTmp0?=
 =?utf-8?B?ZmJpVDBXU2xoZUNxN3crbHJXMHpocWllaS9GUVo0SThiS0s3S29heWxtVDk1?=
 =?utf-8?B?YkNJYkJkaHI0QWhDb2grQkRHTVZGVXJSTm9DM2JaeVZ0RFArTTQ0NzF6a3dK?=
 =?utf-8?B?dGhpcmtRTm42L3F1cWd5WHZiWUUvK3AxSitzeEo0ZjJIaWJ1SEdUWFRoRC9h?=
 =?utf-8?B?cnVYSEU2WWROeWg4aVJpOFNGT25CWmc3NkdQdVlNWU5ibzJQOFE0eEpmYnRy?=
 =?utf-8?B?WjdQTXZsaVZQbXdLaHdja3pXaHBxRU5FOCt3eVY2NzgvOTEyeUljeGVnSzdN?=
 =?utf-8?B?alNHbysyaXh4UGd0bkVZemczR1hlYTFIanlCSXFvU2RSU2lybEZENklta1pS?=
 =?utf-8?B?OEw3TFBvOE1RMDZ0T2RYeUNMMkJ0bjRzTG1RalRkSVhwYUNydkFXY1g2bE9E?=
 =?utf-8?B?d1lLRWpzbjdJbkkyOGJyZWFkZ2kzVXpBWHNxNWtvaTZTYVhoM1pYV2N2TzY3?=
 =?utf-8?B?cGIyV3hLVlI0ZnE1RDB6ME9sUjNSOUVnVEFOSTJqQkFyNnpPcHJYM0NUUFNN?=
 =?utf-8?B?M0hlMmVUUHVsNE1mcEtDd1RDVGkwdXN0SjFGUVVsWHNpc3R1K1BBcG5ISDRB?=
 =?utf-8?B?alVtK094YW9HbVp4TGw2TFhqOWovd1pCNVlaRmtUc29xeWxhQThBVXJvS1My?=
 =?utf-8?B?NXdvOHk2MG1tZlc2aHNWaEo4S0FNRTZ1Mk1OVGordEdFOGRXMXpZVDZkZTla?=
 =?utf-8?B?SUJITzQ0aitvUzRXSFZjWC91Ykc0YWJIT0g0SmdjV2FOL0R3dVc2ZzZlNU1w?=
 =?utf-8?B?aE83dmduSVlHUy9EOGpGeEVKOE8rQzVLclh0SUZSOXNoTWlSMUsrbzQ1ZnRs?=
 =?utf-8?B?NTNCUURXNTJLVHIyVkhETm9ETGx3blg4d2c4TURycGJQL0FqREZXYUUzc1Qx?=
 =?utf-8?B?U2M3WEN6VG9rQnFoVnF6WFkrY0hIaTFQdmxDRStNMFcxUjAvSEZobUhxWUIw?=
 =?utf-8?B?Nk91eFhlVjRUYk41RHpnV3BDbDNEaFZCaC8zK0hsVGpQVEo5ZVJUQy81T1BH?=
 =?utf-8?B?Q0h6cmZRREMyR3RYRitzN1Y1a2dGUFEyY3AxVjQ0TTgxZFF6aXFzZ1Q3SEp3?=
 =?utf-8?B?MGFuVkF4azVEdFgzNGU3NWY5SERCb3BDMy9kOFNSRmROM29OcTkwUUhOak05?=
 =?utf-8?B?Q29NaCs1a0NkOC9aY1NuQjVlUWdqYmZGcGJKVXh3TzFnc2ptM3M1Z1ZUOWEv?=
 =?utf-8?B?ZDhaTEU2SXQzN0JxTldrODNPcDBhRmZkajdpclVOSVI4K3oxQUJDNEVOdG5x?=
 =?utf-8?B?YitOTzFBNUlqZzF4OHlVT08xVmhYZXdjb01aeU5WSFVJU1JreUlBYVNJME9u?=
 =?utf-8?B?VzVvMEZuL0FlcmFNaGVlZGJld2tQTm0vcU1PYUkvMDdNYy9QeE5teWhQVU9z?=
 =?utf-8?B?MlZTcmlteUZia1BZOU80SzJnNTdyY08rNWUvQ09yb2w0TFVlU2wwSDdKNTds?=
 =?utf-8?B?cGpZWUdWSGRhZUN1SFlpM251M3laejMzVU1rMU5ySGE2L3F4RHZUU1RkVUJ2?=
 =?utf-8?B?TGtXbDA5am42VjVtbEMrK2FJYXBnSnJ6OUZ4MzBrT0phWG9YSElKMVMzTis1?=
 =?utf-8?B?cFgycmdoTDNGSzdINnQwbEZwSytndlg4cXJGMk9aUC9NRmlqZ0VjWUZheDFz?=
 =?utf-8?B?V0VXd2hYYUh0SHhqVGR4VzhKd0tDVk04aEtNQ1c2RjFEejVXRUhYcjVTR1pF?=
 =?utf-8?B?TE1nRVlFRFIyVmtKYUhURVpzc09nWStldE9MUFhXSyt2ZzB3UXA0NkZEeGFF?=
 =?utf-8?B?Mm5tTkJUNTMrWUVyM2ZoTGNXVm5pM2llTlZTVDF2VlYwRnNTOEdZUUZHa2NP?=
 =?utf-8?B?V1Q1aWovcU4yUTNsUUF4WVk4UUNEbzJURnFndS81cjVJWVBaU2F4Rm9OTlI4?=
 =?utf-8?B?dmswT2ZOT3dXTnhvZkVocmVlczYzMFdSeitEdzlKdDBFSGgwQUQrd3ZPQUpl?=
 =?utf-8?B?bEE9PQ==?=
Content-ID: <9D5FC06DECEE8B439285A31BD5D8C286@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5384.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1586ab9-46d8-4138-71fb-08dae297d43f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 14:38:15.4744
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1sXpabB1DHg5opFVJc4PkkaFGmovgR38qMV6k2sdayGUncwhhgCkXkOrjfIDEN0Yut2Iu3oQJGgWZ3rXWcUTGZQZ8lNX0HomkPUm08Q1qe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_063820_456586_BC6E54E9 
X-CRM114-Status: GOOD (  11.07  )
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

On 12/17/22 01:37, Rob Herring wrote:
> On Fri, Dec 16, 2022 at 04:37:15PM +0200, Eugen Hristev wrote:
>> From: Luis Oliveira <Luis.Oliveira@synopsys.com>
>>
>> Add device-tree bindings documentation for SNPS DesignWare MIPI D-PHY in
>> RX mode.
>>
>> Signed-off-by: Luis Oliveira <luis.oliveira@synopsys.com>
>> ---
>>   .../bindings/phy/snps,dw-dphy-rx.txt          | 29 +++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt
> 
> New bindings must be in schema format.
> 
> Rob
> 

Hi Rob,

I know. I am sending this for reference only. It might help someone, or 
someone else might pick it up and convert it.
I managed to convert the driver binding to the best of my ability, but 
not this one.

Thanks for reviewing though.
Eugen
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
