Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B884C3DA6E
	for <linux-phy@archiver.kernel.org>; Wed, 20 Dec 2023 09:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvhyfNYcQjLsWCz5E+293SFQtYztxRM4EiuN4EPQxCY=; b=BDEteH+9JRjxwS
	N2dtanTJbW8ppXD94Gjm1ePzC0Vv+xeN3rjubuZYs94VSRviJ3Hp8QPGZLR4W9r2xZF8xD4DkVJTC
	apvKJdXTnk/xuoYH35I2AonKs6Fbw2exECL7vPMMIDPRR+++x19RbmgiiXr/fP5JPW6HOl9HRIUzl
	fl3uZPj7fAO6RJMCAAbiKb5WlSi5ii17wU9nInmFgk6FnnFx7a4vWyjCgkMF6iLzZXoRh0QHFFwzI
	yZvqMmhv3ZFS0cXJGkkCgihYNgBJxqveba51uQlDSvTUH4rmEYh0cvCZs30YLXdS4ID5/h1EZzhuy
	Ws6izuQ8cSdPzNd3fdbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsRX-00GfQ2-18;
	Wed, 20 Dec 2023 09:00:43 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193] helo=mx0a-0014ca01.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsRT-00GfOQ-2j
	for linux-phy@lists.infradead.org;
	Wed, 20 Dec 2023 09:00:42 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
	by mx0b-0014ca01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BK3avAW028279;
	Wed, 20 Dec 2023 01:00:24 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=
	from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	proofpoint; bh=chY02OwlluLmxvRFtQG1qru3H2Kdxgcs1/tWZCWkr/Y=; b=l
	GrJbhjpUMK0Y9yHaQ8iDp9GN0GMTDU5V3hn8E/TBQoTkO8DQ22wkmX8V2NGKod4X
	BhR8BFEo/Rwdl5SGlcVlp91jRnwHiv87iXC/Z1znSGIG3b50b+8xHSAbHnONqqqJ
	12+AzUbHCWxQbH/we/sYvkDPPADBCPKVTirDdl2cO5VFl6egbszNKTesGejjqO9m
	fYIvsvLXT8nALz8smmVQr7YiMqrzM9qMM1zt2qjfBn9zFJ5tTyUABI80aO9Q5fma
	WKmyIzfO+CGFpF/0ODH4ahtOHeEB9gQl9wia6HOTkdM6LTKQAUS3qsJK91TsFUG9
	8aGrHX8Y3zouGK0jof89w==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0b-0014ca01.pphosted.com (PPS) with ESMTPS id 3v18by5qb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Dec 2023 01:00:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6iPNHdWNlbPbPUDRr3sblRlglEYRrD7j8I0b/KSOLy2xufAr91NeV4goRk8i3Yz+cmxBN3eSTKT6CiCfXQArxR1/2mgs8Lly55EzhilglcQ3Umylh82dF6zwQ8/7ar65xNvJGkum7xOegv6pVWx72laBgUgNbjqEvwsxalqaWTY7hiaDMfX1ZV4EH/kRwiTm9adYexNcIzDDOPJjw61seQVrQevoHZBtraqszSQrUvdxu8rRM1bszK4HEmkk688hqS9OoALqDCcZsVIVhbYnI5qy5B9Ez/YHTKCAmfuSS6PNn+VPdwwDPXI3k35jgdMQTBzbn4CsNe/Dp6ziQcq4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=chY02OwlluLmxvRFtQG1qru3H2Kdxgcs1/tWZCWkr/Y=;
 b=AYb9BWHoi62UR4xp8Gsd+6A1DUcHMTt6a6hAoo0UfkU9j4hNeqFbpU+wqf/YkQAnX+f3v+3U38Wix5PaA4nYH9HxRTYiZbTboQzGYNTxkH34n4dR2VWKRosc8qpaDXd8ORqYV01zGI05CHMIzDRW/uugi96k7d9wfuAQmYh8QjKj0D7sl9o6d5Pb0pu7KkrEsAQihIuO8XEITfzDa06YeFWicHgCJUYCpKNysF9nltSTgWRZdR+QClrQn/3O72AtjeAeREdF+su2MiRVkwsMzh62jhBmyo5zFJQPRY++KZvlJ7donqRIk/lS54o6VYO+fJUL3fzdgafyYpnI4XTDzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=chY02OwlluLmxvRFtQG1qru3H2Kdxgcs1/tWZCWkr/Y=;
 b=KvOzaGZG5CpE2b44i8h2ZxwdMhvnDrd8MMo83cAHfpYNpR3f7FrkqX1AY7XTTR7Wi5Ez8wKVCU+cUx2ksdv3VhF56hloH7DzsWCBVCFBx9xKdA1dQInM7fOhJiECpP7thssguJQq94YI4FeKPqDrLDKNPXc7hvf2V0ADp/ZsvU4=
Received: from DM6PR07MB6154.namprd07.prod.outlook.com (2603:10b6:5:17e::20)
 by SA1PR07MB8739.namprd07.prod.outlook.com (2603:10b6:806:19a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Wed, 20 Dec
 2023 09:00:21 +0000
Received: from DM6PR07MB6154.namprd07.prod.outlook.com
 ([fe80::18e0:2af0:e596:d9ed]) by DM6PR07MB6154.namprd07.prod.outlook.com
 ([fe80::18e0:2af0:e596:d9ed%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 09:00:21 +0000
From: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
To: Roger Quadros <rogerq@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        "kishon@kernel.org" <kishon@kernel.org>,
        "robh+dt@kernel.org"
	<robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org"
	<conor+dt@kernel.org>,
        "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
CC: Milind Parab <mparab@cadence.com>,
        "s-vadapalli@ti.com"
	<s-vadapalli@ti.com>
Subject: RE: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
 input reference clock for PLL1
Thread-Topic: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
 input reference clock for PLL1
Thread-Index: AQHaLPErVNHufsY/DkSKW4VikCPlO7CmxveAgAGOr6CAAAz6AIAHMGeAgAJRkrA=
Date: Wed, 20 Dec 2023 09:00:21 +0000
Message-ID: <DM6PR07MB6154B687D5F3196D9FE3D2EFC596A@DM6PR07MB6154.namprd07.prod.outlook.com>
References: <20231212114840.1468903-1-sjakhade@cadence.com>
 <20231212114840.1468903-2-sjakhade@cadence.com>
 <e09e4df8-ec36-4953-9bb0-75a3ce0b535d@linaro.org>
 <DM6PR07MB61548DC520B4BA66D6FC625AC58CA@DM6PR07MB6154.namprd07.prod.outlook.com>
 <38d171ee-b94b-4d1c-8702-60735a005596@linaro.org>
 <9a86efae-2855-484e-be01-cf5fffdf9f95@kernel.org>
In-Reply-To: <9a86efae-2855-484e-be01-cf5fffdf9f95@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2pha2hhZGVcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy1mNjllNTliNy05ZjE0LTExZWUtYmMwNy1jYzk2ZTViNzM1MWFcYW1lLXRlc3RcZjY5ZTU5YjgtOWYxNC0xMWVlLWJjMDctY2M5NmU1YjczNTFhYm9keS50eHQiIHN6PSI5ODE4IiB0PSIxMzM0NzUzNTg4OTE2MzY1ODMiIGg9IjIwaVM1bWFwWXBQdmdtdGdoMUxiMGE4NHlTMD0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR07MB6154:EE_|SA1PR07MB8739:EE_
x-ms-office365-filtering-correlation-id: 85165412-c812-478c-6c73-08dc013a18bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o5FGZLyYDXzCXmxtrckn5EcXID0qIiQUtf/i/sWur1UTGIYSkESM267KEMeq3Gltu76vW/aOTsToGEzG0T9uKM9qf/7X6Vc/YSkA1beUEZGzr7e00+H8tvn3jblokPKiIaBfU7tUaNJJ9CyQz39OsCwqQ0iCV1E2VOYHZeAHKjamuiuCGZaoK8c9B6m146xol2TuhzFRyvf+81a3Vi/Ux143j/XYQpvT9vgiR88Z4w09ucZ1AL3pKHro95xW5GpZk8bdGIiKELSPPehuzERlr6Rl/z76WzE7ew2R9++H96nKZv7Uf97SMB7Y1mDr2Mecjf3t5cSHtsZV8g3B2ITDU36JKWwhvowlP6AvIZhGBxw+2xD2apNzn1GJFOE/ZrtJ7/3mwIxkovs5dfnD9REMSxOMFQekRfLayTfulXmSdk0aBzKdDFkzv0NMAlqykgc6Lk+gp1IiEdQk+s01t/iyXEn9nv4dJceM38Y2Ww2bELLyY084DXcmS3IHWZeAnpeXCvjZfHt5FQ13jLYCGDkIWfuWCqy27mB0HTn5+bBDW7zJnCmgPEY5YMdoPMJ62ema3r+/9D2veZhlYNWv3UvgNHqrD/wtLvYOvgLlpX2sxHzkTfEXD5fV7SpWdC9HstFuquyQzQ2J0fdAyXntYgNVaKG/Apy/iaSaL/uycRj3XcJSADvd/R0sp0rVwKV9rU/G
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR07MB6154.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(376002)(39860400002)(136003)(396003)(230922051799003)(230173577357003)(230273577357003)(186009)(451199024)(64100799003)(1800799012)(66476007)(41300700001)(86362001)(64756008)(83380400001)(122000001)(66446008)(5660300002)(66556008)(38100700002)(53546011)(8676002)(2906002)(4326008)(7696005)(52536014)(110136005)(9686003)(71200400001)(478600001)(26005)(6506007)(7416002)(54906003)(66946007)(76116006)(316002)(8936002)(38070700009)(921008)(33656002)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2ZGTDNMQlF4cTZSdlpHVjlBWDNhR2VtVWJEc1NxOXB4eGhXY2psUEJJSW1V?=
 =?utf-8?B?Z3dQTG5HRzZyYTduRkNMR0QrM0hZM1JySy9LUWc1clRtcXZxemw3MVpoWE1q?=
 =?utf-8?B?KzNNQ3hsbTFqSkRyZFpQYWdrVXdQbEJLOGYvempzaU54Mlpad2JXTnFteUk0?=
 =?utf-8?B?VUM2b0t3M0JUSUxYUy9GOEZEVE5ENGt0dWduOFBndTlsSUlkMHpqWHpUbU5N?=
 =?utf-8?B?cXdBWWVCZTA3TnZVaGlQZ05xd3RkWDJaR0FOeVNVMm5BQ0tVaFZOV3dUOVFD?=
 =?utf-8?B?STA1QXByMVNMUnZDUTArTDU0MEtqZTlXTTl3NHQ2bjUxc1hvcDQ5cXNGTXhJ?=
 =?utf-8?B?YXBzeG8yU2JSSzFtTkFYRmhLbXlCVGhWRHJpRnpUSHNieXJCMGhKaTNPaHN0?=
 =?utf-8?B?M1NUVGFRRU1aYXJNcXY4YUxMN1JWV0luQmFpUEpMLzMrcW5uYXdZWjd6aHMv?=
 =?utf-8?B?N1RnSEMrTnpXQ0xXN3NOV2VlSVBmbEc2dVBHQkxVQlZyWFkwSCtjWCtVMEFC?=
 =?utf-8?B?bG9nS2tmbmNBNGlYZzRRa3ZkVnUwRUtUSzF3VDVSbFh0M0p1Z1dzUlRoYi81?=
 =?utf-8?B?QmZ1V1ZDOW5JcmFBTVhHWElaQ256TUx6YTFjck03NjVrUitzKzVqREFXU2Fn?=
 =?utf-8?B?VjJWaHRjNE1rR3RoZTR3MG5LUFVPRzJtY0Rnc3l4N2VuTkF4SytrMHhjUDJK?=
 =?utf-8?B?NVlUaFRGYVNNSmcva1VwWmhKVm53dmVlMzhtNGJQdG5wbjB5TktWeTlodXVs?=
 =?utf-8?B?MWNlNXp3TWxIWUdNR3N6b3FhcFcrWjQvZjhNay85bFN4WC8xNUZWcHdqWi9x?=
 =?utf-8?B?eHNacE1xZ3FsZTJ2VkZURTFKNE5JVkpqZFhackVzb1QvUDJNdDY0Y1BsbThC?=
 =?utf-8?B?RytSTk00TTJPRW1rMy9qSzIyYThOeEZMQ2FEdWFSV2dVcFlPTm9OaXVtWjlQ?=
 =?utf-8?B?WCtFcFVFY3c2RHdWOTFvRHR2RE9QRU5TaGo2TW9vOFE1dlh4THo0c085RW5x?=
 =?utf-8?B?TDdNRExpRjZCWDJpZWI4RHVRN0dCSTRHNDJOTE5neGZZUm9qVHVNQ1Y5RDhh?=
 =?utf-8?B?R2ZUTzdlb0FyYXhscTlpRkE5RTFLZVNrcE0wS2t0ZDRUMEFmSVBWOWV3QWJE?=
 =?utf-8?B?Zkd3cHlSckVQQys0UG94eTJXdDJxRVVmUDNXNmM5czdSRlZPMzNGWWZzU1pu?=
 =?utf-8?B?cVdTY2V3RnBMSStTQ0xRN1hvdDV0bUFYVGdsaVJtNnpmNE9CYktSTSsxcW5G?=
 =?utf-8?B?dHJyaUFYUkVDaHkzNzhZUzc5MmhZaWhHaVhDM0RHcEdYTDNLZnlaUXJiQjlN?=
 =?utf-8?B?OE5XTDN0MXd4MngyN21uNGRpMW5xMHY2NEUrOExsRkdsa0JtQ1dwRUZSd0Zs?=
 =?utf-8?B?eVp5aktuc3RTdjFSajBLdW40ZFpjT1JISVptNjdlSURTUjNYR282R043cGNs?=
 =?utf-8?B?MWw3NjcyUURCYnMxaFVMOGEwUmlGbG1naXpMczh6VmluZDdkdlREVlNzYUgy?=
 =?utf-8?B?NlBYRjI1QS9hVUZlcHB4TmdEUzJzblBOdGxCakx0ZkFBQmsyNnBqMm5TWTZl?=
 =?utf-8?B?dXgzMjJkenhQZlZtWjBlRFpiN1BvYW1MZVk3RktSM2VEckJvTjJDRzMvVnhr?=
 =?utf-8?B?ZEdPZi9EazJ4Z00yTk1vbFFIakhYRisycVBiV3RRZ1NpTUNTZ3I0MU9KWXly?=
 =?utf-8?B?RUc0NzZSSlp5WVJaaTlJV2dKK1BuNUdEUTF0TGdRU2ZBWWpLR0FvRmhPMjBx?=
 =?utf-8?B?dVg5b0tKYVo5bDhHYldld2NlT2dQbUVZaXI1VDFxNGE2RzBmS21hdjFxZzBa?=
 =?utf-8?B?VEQ3QW5jVDZBZE5lbm9RbW0vYXNWcU9JWERpUUxoY0Z2WmVlNkpxVWV6Qnlp?=
 =?utf-8?B?b2VWajYvb1JLb3Q0b3NYdWcwQWpjUXBRL21pQk01cDJ1OFlhcU9ueW5IaFhu?=
 =?utf-8?B?UGliNXU4RGFFWG9XR3RTeEMyS1lvNy9mTHpYdFovTnNMd014UzY5ODU1bndx?=
 =?utf-8?B?MVoweS9nMG5lL1JISUR1Sm9sMWRibTdZRHVtMTFKd2wrcld1UzNCWWpsQk1p?=
 =?utf-8?B?b0JlbXNRZXZpVmlGeHRVUklrVm1LSmxTdzAzTTEwSjV4NjU0RzVFSUkwWnlR?=
 =?utf-8?B?VS95aDdHS3htUGNhY2ZUVlJOa3JtRFZaTkZCZnBMbUhMQjd2TmNmL1prc1lU?=
 =?utf-8?B?OVE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR07MB6154.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85165412-c812-478c-6c73-08dc013a18bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 09:00:21.4245
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wqv5MobDxmOzq5PWz9e91NSXCQ1zUCoGkCJGW12+ApM34/N0Rg8KHcXUElAMiWhoHsyurv+JRIu7u51H9iGggHB3vKBTJ/FxM+AP+8EIVoc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR07MB8739
X-Proofpoint-ORIG-GUID: sUycUfSlM5GqdURSaGxLC8qf5lwxJM07
X-Proofpoint-GUID: sUycUfSlM5GqdURSaGxLC8qf5lwxJM07
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-02_01,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 mlxlogscore=999 mlxscore=0 bulkscore=0 phishscore=0
 malwarescore=0 spamscore=0 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2312200061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_010040_793839_A2F49707 
X-CRM114-Status: GOOD (  22.47  )
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



> -----Original Message-----
> From: Roger Quadros <rogerq@kernel.org>
> Sent: Tuesday, December 19, 2023 2:39 AM
> To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>; Swapnil Kashinath
> Jakhade <sjakhade@cadence.com>; vkoul@kernel.org; kishon@kernel.org;
> robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
> linux-phy@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org
> Cc: Milind Parab <mparab@cadence.com>; s-vadapalli@ti.com
> Subject: Re: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
> input reference clock for PLL1
> 
> EXTERNAL MAIL
> 
> 
> 
> On 14/12/2023 09:22, Krzysztof Kozlowski wrote:
> > On 14/12/2023 08:02, Swapnil Kashinath Jakhade wrote:
> >> Hi Krzysztof,
> >>
> >>> -----Original Message-----
> >>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>> Sent: Wednesday, December 13, 2023 12:19 PM
> >>> To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>;
> vkoul@kernel.org;
> >>> kishon@kernel.org; robh+dt@kernel.org;
> krzysztof.kozlowski+dt@linaro.org;
> >>> conor+dt@kernel.org; linux-phy@lists.infradead.org; linux-
> >>> kernel@vger.kernel.org; devicetree@vger.kernel.org
> >>> Cc: Milind Parab <mparab@cadence.com>; rogerq@kernel.org; s-
> >>> vadapalli@ti.com
> >>> Subject: Re: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
> >>> input reference clock for PLL1
> >>>
> >>> EXTERNAL MAIL
> >>>
> >>>
> >>> On 12/12/2023 12:48, Swapnil Jakhade wrote:
> >>>> Torrent PHY can have two input reference clocks. Update bindings
> >>>
> >>> It already supports two.
> >>>
> >>
> >> Thanks for your comments.
> >> refclk and pll1_refclk are the two input reference clocks for the PLLs.
> >> phy_en_refclk is used to enable output reference clock in some cases.
> >
> > Why input clock is used to enable output reference clock?
> 
> Looking at the driver code, "phy_en_refclk" is used at 2 places only to
> set the parent of 2 clocks apparently called "received reference clock"
> and "derived reference clock", either of which can be used to enable an
> optional reference clock output feature.
> 
> My understanding is that it is a separate refclk input than 'refclk' (pll0)
> or 'pll1_refclk' which can be used to enable a reference clock output feature.
> 
> So this PHY can support a total of 3 input reference clocks:
> "refclk" is PLL0 reference clock and is required on all platforms
> "pll1_refclk" is PLL1 reference clock and is required on some platforms
> "phy_en_refclk" is reference for output reference clock generator and is
> optional on all platforms
> 
> Swapnil, can you please confirm my understanding? Thanks!
> 

Yes. This is correct. The two input reference clocks mentioned in commit
message refers to refclk and pll1_refclk.

Thanks & regards,
Swapnil
> >
> >>
> >>>> to support dual reference clock multilink configurations.
> >>>>
> >>>> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> >>>> ---
> >>>>  .../devicetree/bindings/phy/phy-cadence-torrent.yaml        | 6 +++---
> >>>>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-
> >>> torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-
> >>> torrent.yaml
> >>>> index dfb31314face..98946f549895 100644
> >>>> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >>>> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >>>> @@ -35,14 +35,14 @@ properties:
> >>>>      minItems: 1
> >>>>      maxItems: 2
> >>>>      description:
> >>>> -      PHY reference clock for 1 item. Must contain an entry in clock-names.
> >>>> -      Optional Parent to enable output reference clock.
> >>>> +      PHY input reference clocks - refclk & pll1_refclk (optional).
> >>>> +      Optional Parent to enable output reference clock (phy_en_refclk).
> >>>
> >>> So third clock? But you allow only two? Confusing.
> >>>
> >>
> >> Yes, if both refclk and pll1_refclk are present, phy_en_refclk can't be used.
> >>
> >>>>
> >>>>    clock-names:
> >>>>      minItems: 1
> >>>>      items:
> >>>>        - const: refclk
> >>>> -      - const: phy_en_refclk
> >>>> +      - enum: [ pll1_refclk, phy_en_refclk ]
> >>>
> >>> This does not match your commit msg. You already had two clocks there.
> >>>
> >> Yes, but refclk was the single input reference clock used for PLLs earlier.
> >> As stated in commit message, a new input reference clock (pll1_refclk) is
> added here.
> >
> > existing phy_en_refclk is also input reference clock, isn't it?
> >
> >>
> >
> > Best regards,
> > Krzysztof
> >
> 
> --
> cheers,
> -roger
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
