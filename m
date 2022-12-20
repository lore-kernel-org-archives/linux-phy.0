Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 262ABC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Dec 2022 14:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MquhiArj9xWqcJmAf1yqdNHd605OqYTtRaznI/JHQ2E=; b=gGwGaBKlvXh//T
	Be2r5RHPaRwLcJGVly6pk5C3Z93eeeG+Kn8hJ8c07OkTHg+sVLjw9B0ydEaQiTTm556RMO+EailSP
	i0p2wrMRGU5xPmeMPnsExRMj/ZC7pZphWS9MCfe0s9FgvERzZPNyDBDuJXocYRYGkuPWXPZK+pP3D
	sVbK8P8eG62TAMbBjddaaJ1k6KeFDodXpfyHc0kl2ogmYBrrnSwcaJ4odVH9GkF3zh6sIr+00+JjO
	5tzLnXxq1VTbNwY6sZ0hGIHwM7RCtwdMZOVLt09Zk9wMQMcX2YiRp5nBM6ykBQwKoaE3YCWkKvnON
	HVXYl6Y18YKOJxyR5eJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7dkh-00GpEJ-CI; Tue, 20 Dec 2022 14:37:55 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7djX-00Gntk-Fd
	for linux-phy@lists.infradead.org; Tue, 20 Dec 2022 14:36:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1671547003; x=1703083003;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=U+ZqQQE5YNogzNRDrfmFt99El9vDYVtdIbYXX2WLgv8=;
  b=fyAy5CYWLx6NUrTbPlb0HHk7DOMI8AWgxogCZOon5MfMvUq8Zlg5nGYV
   LpMPPGhtzxhSScj+KMGqpxKv9MLyGDqUPNmGshl+Dt2+bW+zeIThJI7hR
   Zno4H6SQLD8t7H5GHqoofLLllTOplI5Q2zZG75Ij0hFOiPR69fm61iwlw
   cF+qRw6PYTi7rVEcLFJynGAS8hmRJ78RnXu8dXGfNEoa8moWSbtP7W2RT
   CoO0s/2zzvYdtbZiqUCGoLlcbxO6eAmQqk65JoP7KakTxSf5IihGquGqS
   PWgVf1z6hPCE1/qbOZ3cRmdI0nbtuMce2kVvFdLED0BECAYTxz/n7dssD
   w==;
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; 
   d="scan'208";a="193825054"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 20 Dec 2022 07:36:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 07:36:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 20 Dec 2022 07:36:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F1gUHgasY91uAHTjTxSR/s57sAqjYTt/rqLdqmkM/v48RRZfHZ0EXNnrtFOj7uJN71pAda0xfNthJlwSoVKtC1at9DpVkPUuPH9FsZ9nEXOH4+kB8pdy5iLFAuq6lWcHkuOcR4nMgiXBAOBEyAmG7FsXer9vo8BDiWV45oaE5eJzzAO0eD/bDWLrWN28DJttUCeMK/fdHMo/XuVNgYHPY8cpp0n09/dqEVHRachsiVV6k8+Ftc3jrai66mONNSsta/Jo47Cwpz8BbsEFE7zUZqRSI+ArizfvQL7XWoAJONjrgI2gf/Gmim6rJROOxTU9NXUjuUabPeyWo2G+GJn1GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U+ZqQQE5YNogzNRDrfmFt99El9vDYVtdIbYXX2WLgv8=;
 b=gUIIN3sXZs7fkBKFTFnUgPlUnLL6Uroq4xR6057WV2EUSq1Tc+KvI0PC3i/Gin8eHintkK0wmbgH70Pg9Sg001gGaA5gL9vCbtElsotCIJBLdeEYKqXKgsNDUMtMBXLwGHiolvgQfDLlthlB6EOvhRw66VvWnuAVihxEZzeZeVhbBH+fAokYl/qX4ItEV2Zn/0R+2i5waF4E9J/R5W+HPuu6D0b6K6zOng/JYPhzUqucNu2X8v6KTjj+7lsIUi94NDmH4ihjkENiuuQOT74LN39+r17CIzShov9A5IxjRy1FVkp2lVMA0g3r8meiey3SSKLZScDOis1rj8mQt7e86g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+ZqQQE5YNogzNRDrfmFt99El9vDYVtdIbYXX2WLgv8=;
 b=HlP03uiWml7FbJ1wz0ag49Uw01zL27Qk/2jedLGFNtsSf/rHV22PcApKbQ+BetAv1Xn0VXCZELcBoAktyiK0q7Fe+NsIOtSulrXU28Uo3YPWF4it3n9cT/6O812fJbasoBeWKf0nIa/buK0dBVc/Vies7QXkTGAu3Kn8ZA/2BFY=
Received: from BL1PR11MB5384.namprd11.prod.outlook.com (2603:10b6:208:311::14)
 by PH0PR11MB5627.namprd11.prod.outlook.com (2603:10b6:510:e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 14:36:32 +0000
Received: from BL1PR11MB5384.namprd11.prod.outlook.com
 ([fe80::775:3af1:d96f:ef6e]) by BL1PR11MB5384.namprd11.prod.outlook.com
 ([fe80::775:3af1:d96f:ef6e%9]) with mapi id 15.20.5880.019; Tue, 20 Dec 2022
 14:36:32 +0000
From: <Eugen.Hristev@microchip.com>
To: <krzk@kernel.org>, <linux-media@vger.kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <luis.oliveira@synopsys.com>,
	<lolivei@synopsys.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: media: Document bindings for DW MIPI
 CSI-2 Host
Thread-Topic: [PATCH v5 1/4] dt-bindings: media: Document bindings for DW MIPI
 CSI-2 Host
Thread-Index: AQHZEVv447w8tTLZyk+wfkA0S/sigq522J+AgAAFjYA=
Date: Tue, 20 Dec 2022 14:36:32 +0000
Message-ID: <0ebd778e-1f82-d451-f4ec-1c00d3c865e3@microchip.com>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
 <20221216143717.1002015-2-eugen.hristev@microchip.com>
 <3a0980ef-7128-1153-7016-6bb44760bf3b@kernel.org>
In-Reply-To: <3a0980ef-7128-1153-7016-6bb44760bf3b@kernel.org>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5384:EE_|PH0PR11MB5627:EE_
x-ms-office365-filtering-correlation-id: a24a8169-0a37-4c12-3854-08dae29796a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y2r8tl/4WlhNcXjLAtV0ytpJEbReKqsZTbOp3MoqdweU3pK+X9jxM+okVmBf7ZhIxrA69us7F0Vx8Y3xs+QpQNQJvh/AcfBcMnOvzvojhnnui+E2pZnHErPj5rWhUcknjdpsPTmb5tD6N/Cu8jg+B5ifDrwjXXohWkn41Misq6vKt54/jXqZF9x9rDHM7aN6vMUdfLdBGMqAQ7/vWTSByK8MUVXlRuW3Q7t93If/d/RaY6ddQyjWNkh8g9uMelgU94Ny4skE2bRJQgHQn8PRoj0BRFrcIhAkHXvSGLfR4Ryu2h8gfzMryNnBU4eKRaK+FhP+QfOko8Q+b4HYrBGKlXvqBV3PrdzOB472wLqRr2F2C0DFCdOn4LhDPkXpx5DFKc3ErOzrtdSXh/orCeBZJbNG2oV1Xv+4RgtqrH+5MbahjIEuq5jYcteiqnSkAJ2xzFZLz62cSs1JtFAoMDqo3NiSxxlh4hbs5X1lyACVj4uC3y+mHoNdq4EKlFETHgXwbEgdJX1Fx1VGwAZ3sZNpsUGeFL7epK2UKZWNaO+XpKbwryW2vxi658vnZRawoa1CDpLPx18Ns4tNFX7tTbsfPONOIeCs5WHm4RZKeN9WBUdPWH6kQGMjSzYaNVrEcZgtuOhawtrGjZBQT46TozUv4PV3cctXrWD9JdE0zIkTr3bhvBmJFyDFdZ1rUjLA3uNkLNj2zhXbaZbiGg3jYEN3NtEdhfJNXSTxztXWioxiNWBvCm/7Ooo/becpNWAMZrX+m9KyYDXYsPnSYm5RMVJXySrilZoX3udEslA3rfvVj/wganEoYayPmUxY0IUDnhOEFe36jSQjp/tswL05Be+Eug==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR11MB5384.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199015)(86362001)(2616005)(38100700002)(31686004)(53546011)(6512007)(2906002)(71200400001)(36756003)(26005)(186003)(6506007)(478600001)(6486002)(966005)(110136005)(91956017)(8936002)(122000001)(316002)(54906003)(66476007)(66946007)(8676002)(66446008)(31696002)(66556008)(64756008)(4326008)(41300700001)(5660300002)(83380400001)(38070700005)(76116006)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QldTRmgrWnZ4VFhEbDVkeUlqUGZObjJleUFiZnFzSlgwTHRRa1NjL2JnS2pl?=
 =?utf-8?B?dVJnbjFnQ0lSK2ZETzBQVUJiODlnTCtvSjAyMFlQcUVtM244cVYyU3UwalNx?=
 =?utf-8?B?YldmamtIQXRYeEZMY2dSNXhKOE0rOWRKNzRoVy9KTGxSZmRkZlhiK1pvM0Fo?=
 =?utf-8?B?YVVyN1NPOEc3UW9senUxU2xWTitQalVtazNXbzdNQm1aRkVZczUvSndMNmFN?=
 =?utf-8?B?OGJhNDluakpzMERmK2U3NGJiU0Q0ZlRxZ1VSMEdlZEFnTmZLZ0pUZ3VJb1FI?=
 =?utf-8?B?WFRMVkt0eERLb0pOVC9vdSt0aFFkMXZ2ZjE2Z2ZSc3VWcytkNE1uS2lOTWRG?=
 =?utf-8?B?VTE2WFN3V1F4dmNobTZYMHFxNnplM0k1MGVWODVXMTlEN1l5MnhpVFdrMkQ3?=
 =?utf-8?B?eHFGMTROZkNGaGdIUE5yK0hIcTNweWE4T0kxbk1oaDJqbFFxcEtUcFNMWWZ5?=
 =?utf-8?B?UWJ3eml6a3BnYVFjeFo1N2JJQ3VxN041b0poTHprakZUMjlMcmt0c3d0eW51?=
 =?utf-8?B?S0hCWWlnNzlrQjZ0dUlqR09YakhJUHkwVkRDeUZwSVNTVktxN3NidzBrT0FH?=
 =?utf-8?B?dUlxdzEzcm1tMHNDdFVIenkvWitFVGNMYVZ0Um5SUllpZUxLd0F3RFdOZS9I?=
 =?utf-8?B?clpyczRLRHVMQXpHWDJ1czNPeXJ1TlgvbkRUMEhBaStRdlQzalYxdWtQM3RW?=
 =?utf-8?B?NDNhZmxHK0pkWTUzQkg0ZEhrMUMxSXJsQ25lQzVNdllyK3lIYmxKWDBtYlRR?=
 =?utf-8?B?aGo0emFoY3ppb1N4czFCRXBQVjdySHNLOTlJVXJZKzcvUTRtazBodDRSZTVD?=
 =?utf-8?B?ZzNQM2xkeUFSc2I2Mlg1b2E2UjRWN2gyLzVXZGRVT08rSU9Ta2JQRHJTdGRF?=
 =?utf-8?B?TkNySE8zblNqWS9Wa3ZETG9DUms2SWJqUlpyUmRycnowYkxQU3JQTHRtTDQ5?=
 =?utf-8?B?VnhrZlBVS1d1ajN4QW90US9kRXV2bzg2aUN1Z0hVd1l3dDNRMG9IbVRqK1RS?=
 =?utf-8?B?Z2ZNQWpPRU1RTW5rczNaMW56MkF0ZlRNelhzalJKSFFKajBNNjhMWTBCVVhE?=
 =?utf-8?B?TnVJYmpETmtQSWFJTzZIUll1eEZVdno2bjZZb3hBMFAvN0toMW1CR2FEQitB?=
 =?utf-8?B?VXJwZjRMVWJ6eFFKZEhLZUFQZGxKalF3ZmJJU3ZXbWdoQjR2cmkzUkRlWXRJ?=
 =?utf-8?B?K1BDM1FQZTdOMmFQb0xwWkVxOWxDUmFkTHFnM1k5UlRYS0EvMllBeVpHV01h?=
 =?utf-8?B?R1FpNk0zNWJvWXpWanhoZXgvNHFKVnlRaGh0WGNJbWNudXBJcXd5YVBxTzJp?=
 =?utf-8?B?SmNONzBkTUk4SFM5ZEl6bm9Vc0d6MVErakhWN3p6RWtVa0lIZzBnL3BSNjlV?=
 =?utf-8?B?QXpQVVVUTlY3U05XM2tGejhCS2tmOWFYcWRtNzNkdzQvR1czQmhneER5VGEv?=
 =?utf-8?B?MGcwem01NHJmZWVsd1JkeTNrdmsvNUJJY2c0TnJLQnN0YjViNjFlNERZbGls?=
 =?utf-8?B?TjFqSG9pcXRtN0NMNzhyZ3VQc05heXhraXZpbFFSbTUvcjlLSTBZQWNzUFpO?=
 =?utf-8?B?N3RkVnRZanhRZk1GUTErSjRmZkhYN1hYQWUycThkMkFxOEtLVVNFRklIM2JL?=
 =?utf-8?B?TWY3Zi9UQ3cyU3hlN0dIZStDd3JkYU8wWmNOS2g1VGFPRVJGTVI0R1hTbDU1?=
 =?utf-8?B?WFJmM1lvYlpYRjNkZHY4SEdqQ29PVEZWellta3VkYmlSaXh2aHRDQ1VFbVBw?=
 =?utf-8?B?MGVCV2tRYUVucjZKK3kwQ1RXWkZhZFZ1aWMvbWQvSDlsMFpLbklaVDdUaUVz?=
 =?utf-8?B?dG9NdlRHVkZpOTFyN2tmZ3VjaytJSjJjR2Voc0pNazl6cWZhVytScy9yUEp2?=
 =?utf-8?B?YUo4Y2UxNzZnN1hXWGhadGpBTjVvdjRFWXlSYXUyREYwSkg4Ly83dmJGV0VS?=
 =?utf-8?B?RjJ6QXZzcUlsREpJT01YcVRXWWZneTR2NSt4aHFESGJxN1dEUFZST1ZVZzhY?=
 =?utf-8?B?R21ZbkFMVnY0K3hkRlhXalh4ZnJZeTd6NXFTb1h4TmcrS1dBVDlFaldOZkRw?=
 =?utf-8?B?cnptdmRJUmd0Y251SlBsN05nbEo4R05aYVhRKzAyaG5XZFFXYUtjQ1pSR01z?=
 =?utf-8?B?aWxBQVdtQ0Erby8zNGZ1THlXVk1kbkdQc0xKZjgza29xdmJmRGNFa1NHQmx3?=
 =?utf-8?B?Wmc9PQ==?=
Content-ID: <B16A3BC1DA6CCA4DBB7260DBC608DBF6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5384.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a24a8169-0a37-4c12-3854-08dae29796a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 14:36:32.1252
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ODHXmnxPpH/c8742SV3ezdWyl84RTIIoAjIRfM3xJIAeGY3vSKsnHH183Yd3EasmnH0sR+VEOGH30+4YKOziH0ZjZsHUralIL6XSusRY9T0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5627
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_063643_825572_CE458100 
X-CRM114-Status: GOOD (  20.16  )
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

On 12/20/22 16:16, Krzysztof Kozlowski wrote:
> On 16/12/2022 15:37, Eugen Hristev wrote:
>> Add bindings for Synopsys DesignWare MIPI CSI-2 host.
>>
>> Signed-off-by: Luis Oliveira <lolivei@synopsys.com>
>> [eugen.hristev@microchip.com: reworked binding, converted to yaml]
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
> 
> 1. Please use scripts/get_maintainers.pl to get a list of necessary
> people and lists to CC.  It might happen, that command when run on an
> older kernel, gives you outdated entries.  Therefore please be sure you
> base your patches on recent Linux kernel.
> 
> You did not CC anyone, so who is supposed to take this patch?

Hi Krzysztof,

Thanks for looking at this . To answer you : nobody . Please read the 
cover letter , I am sending this to publish my work on this driver, as 
it may help someone out there.

Eugen

> 
> 2. Subject: drop second, redundant "bindings for".
> 
>>   .../bindings/media/snps,dw-csi.yaml           | 149 ++++++++++++++++++
>>   1 file changed, 149 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/media/snps,dw-csi.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/media/snps,dw-csi.yaml b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
>> new file mode 100644
>> index 000000000000..439eadc8e517
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
>> @@ -0,0 +1,149 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/snps,dw-csi.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Synopsys DesignWare CSI-2 Host controller (csi2host)
>> +
>> +maintainers:
>> +  - Eugen Hristev <eugen.hristev@microchip.com>
>> +
>> +description:
>> +  CSI2HOST is used to receive image coming from an MIPI CSI-2 compatible
>> +  camera. It will convert the incoming CSI-2 stream into a dedicated
>> +  interface called the Synopsys IDI (Image Data Interface).
>> +  This interface is a 32-bit SoC internal only, and can be assimilated
>> +  with a CSI-2 interface.
>> +
>> +properties:
>> +  compatible:
>> +    const: snps,dw-csi
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    description:
>> +      CSI2HOST can have two clocks connected. One clock is the
>> +      peripheral clock for the inside functionality of the hardware block.
>> +      This is named 'perclk'. The second clock can be the phy clock,
>> +      which is used to clock the phy via an internal link.
>> +      This clock is named 'phyclk', phy clock.
>> +    items:
>> +      - const: perclk
>> +      - const: phyclk
> 
> Drop "clk" from both
> 
> 
>> +
>> +  phys:
>> +    maxItems: 1
>> +    description: MIPI D-PHY
>> +
>> +  phy-names:
>> +    items:
>> +      - const: dphy
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Input port node, single endpoint describing the input port.
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            description: Endpoint connected to input device
>> +
>> +            properties:
>> +              bus-type:
>> +                const: 4
>> +
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +                items:
>> +                  maximum: 4
>> +
>> +              clock-lanes:
>> +                maxItems: 1
>> +
>> +              remote-endpoint: true
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Output port node, single endpoint describing the output port.
>> +
>> +        properties:
>> +          endpoint:
>> +            unevaluatedProperties: false
>> +            $ref: video-interfaces.yaml#
>> +            description: Endpoint connected to output device
>> +
>> +            properties:
>> +              bus-type:
>> +                const: 4
>> +
>> +              remote-endpoint: true
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
>> +
>> +additionalProperties: false
>> +
>> +required:
>> +  - compatible
>> +  - ports
> 
> reg? phys? interrupts? All others?
> 
>> +
>> +examples:
>> +  - |
>> +    csi2: csi2@3000 {
> 
> Generic node names, so "csi"
> 
>> +        compatible = "snps,dw-csi";
>> +        reg = <0x03000 0x7FF>;
> 
> lowercase hex
> 
>> +        phys = <&mipi_dphy_rx>;
>> +        phy-names = "dphy";
>> +        resets = <&dw_rst 1>;
>> +        interrupts = <2>;
>> +
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
