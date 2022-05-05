Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8FF6C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  5 May 2022 18:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wx7WwMUJvnW4AJd7WNMT8oEG/3O/D0Jhhr2vNgfdHvM=; b=4m0V4gK+R2DEET
	4hKGTExEdsCfudRELk8EnPit2LKcPOsXatzCg0vI4QoRu9jRxlF1jTjCf6kx91lbR3UIizt9nm3cL
	fPbtMhVWWe0ElxoGtJI1HZy1ARNkWw6N2QSuYFvbjlM0tD6WWydsn5CVBNULESm6Eo8vMhrNEC6pI
	e/tG6+S8pACvO6EL+V/3C5ur/REeF/q0IAOwEA9IBDsQzA3joCqOJnQVNNHcO8gRYtDyvW3tTnTex
	46yYI6EdqCNjhcsrrUbwD2DPrzdiVoeY51l0ndZ08GVkY426IyzL4XAWoNNNjziNZHcz1a75FFrVd
	7ApUUK0Q0pkJcj47JqMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmfoQ-00HDFb-4e; Thu, 05 May 2022 18:02:50 +0000
Received: from esa.hc3962-90.iphmx.com ([216.71.142.165])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmfoN-00HDCc-Ah
 for linux-phy@lists.infradead.org; Thu, 05 May 2022 18:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qccesdkim1; t=1651773767; x=1652378567;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w2Dhjxc8SU3O8N73+tskpToAYvxA0GTbivDl538Kjlw=;
 b=dFuzadhWP/F113MZpLDudBZ+igrMxsPT4uRc13TmtM4oqdoy/hjJawlE
 ZB5S1cYOwptLq07Y/0lNoHPfJwfoFFrRUWhct3ttgl0iNWrCMUVrF7/YZ
 gjRYfzGvcjOtywY2hGtv/AFOj4Rf2cR0D2xvxHojV5KIiwlVGeCA/m40g Q=;
Received: from mail-bn8nam11lp2177.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.177])
 by ob1.hc3962-90.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 18:02:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ml6IoHHDssQY+37GBU7gigkiKlNYwRxqzaZkgh+0r+aKqRbTgBf9hkV/sg8cQsUz8Agn/YwKt3zguvERFtSDn0lS4AhhF5BL9Rymqv55YT6jpW/j8B9E4D5acS412j9XbHuXefMErXlmKljjcZ5raGyyrcW3JqA/NzSYh5Sc3OfrrKhjxRqYDBhWdFIOmngdINqHclXG4T3qrhTy7tpxMp6d9jhbNtR2x7nS//lwqAXr0r1a1orN7hWqNYI0eKKqvQzW58Bv0ibudCBjRd0iZ2NUsPclDZDK2CCkZntL6uuWf7GJ8yLTAgqSOul3iVpEbMSHoO6i/obaQXGOiX7X0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w2Dhjxc8SU3O8N73+tskpToAYvxA0GTbivDl538Kjlw=;
 b=PP9KZ3k3ztSo6VTghyQ8wCFd2QdUTDGKXt1N1b6VJnMSuNPZ0ZP+y0jtgpSW3SDvl30fnUqwsKjjvqbHzGhvjUbsfAuWTSyz7PFf2k0MyXkdG97W6di2F4fdK6NCTIp7Ls0ZG3aXXDJCp9CWexTYbE6+x2/oJsS6K7tDqboFUb7ykMfrlzoPwkkvVjE+PI12DnKydJEy+qwIGBXm34EN2foBZklpPT+5RsTdpQbTkKh8la6ZeBdCO73ed1TcHOijdn52UUpE0kUCA8DIDKnO0MFBUdWSC4KEe1/K6xP05VBXHDSeSCGRIuHKlY6JOBGtFmzRfDNYt3q15xTqa2MMsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qti.qualcomm.com; dmarc=pass action=none
 header.from=qti.qualcomm.com; dkim=pass header.d=qti.qualcomm.com; arc=none
Received: from MW4PR02MB7186.namprd02.prod.outlook.com (2603:10b6:303:73::6)
 by DM6PR02MB4236.namprd02.prod.outlook.com (2603:10b6:5:9a::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Thu, 5 May
 2022 18:02:36 +0000
Received: from MW4PR02MB7186.namprd02.prod.outlook.com
 ([fe80::1d18:abb7:c311:543f]) by MW4PR02MB7186.namprd02.prod.outlook.com
 ([fe80::1d18:abb7:c311:543f%4]) with mapi id 15.20.5206.025; Thu, 5 May 2022
 18:02:36 +0000
From: Sankeerth Billakanti <sbillaka@qti.qualcomm.com>
To: Doug Anderson <dianders@chromium.org>, Stephen Boyd <swboyd@chromium.org>
CC: "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>, Rob Clark
 <robdclark@chromium.org>, Rob Herring <robh+dt@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, freedreno
 <freedreno@lists.freedesktop.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "Sankeerth Billakanti (QUIC)" <quic_sbillaka@quicinc.com>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm
 <linux-arm-msm@vger.kernel.org>, "Kalyan Thota (QUIC)"
 <quic_kalyant@quicinc.com>, "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, "open list:OPEN FIRMWARE
 AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
Thread-Topic: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
Thread-Index: AQHYWOh0LkcVWva+fESk6uZPP3V7t60BIRCAgAABL4CAD35OcA==
Date: Thu, 5 May 2022 18:02:36 +0000
Message-ID: <MW4PR02MB718610FAA14F966ADE1B1585E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
 <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
 <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
In-Reply-To: <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=qti.qualcomm.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59c32a7a-1777-41da-3fb4-08da2ec16fd6
x-ms-traffictypediagnostic: DM6PR02MB4236:EE_
x-ld-processed: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR02MB42368F11FB19802F38FF07B7E1C29@DM6PR02MB4236.namprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /TdcQy4gImfMcSpzBrB9qk/xNVRW8u8xTMEQLlHO8Wm11JLjndkX97NCcl5UhzBdMl76eKAOyrdsNgjRnnaxiDh+pO6pi1ZJVr1tb0iM+QWxGaWIC9CWkZsVj2sqgW3kLDo+cLgpJJqIgdpn4lkkzZYAZ7llIHUa2ZS3g/gwHXTTHXwPoitP8i0cFJeYv+BWYg1LFLDTebTz1bbJTtqeNMGM9B0u1FeiTXRLDPLkeTVy+rrDYAFuv3bjzZ1IvAEX7Hdmmzgv+w8Itc9XXumSV9NDqHUyIKIIsPfR2IEy0UncspXrus4qYteJwEN+7OYg/jNTBLfyaeucUFJjRZVNCPGKdrVf2WBw4LboJKWGerWbAofghiXTTqE66vE9hApqmlK3WnblbEw78IDQWim8G2Ix/A58IBU9arT6fZodqXeHvntyoStGl15xg8hqJH/pCQxQmlmtrepOAEXqOUQi7nOUC1qhdboybQT4QZglgAua1+u5SUHDRWwksMKS+03I+H4QqCRhLr/HiwL4h7NBibQe//Xo0KZzlOudvRCxe56/Ipvyx/DX0Ua2y+t7UivlGMAJfJQerL6DouJq0DA8jj226ZhGM7Hixq22tW4vmR3H1oyeVkLuDkMEgXW9bO9jHLqUfjrkzp8Tp0s2vh/u94YWZEq27X93zI5RzBFnsOMm2Hs/2bX5Oa4DIfhA/1mxDWmTpFjtWiJJOqrxW1imRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR02MB7186.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(9686003)(54906003)(110136005)(508600001)(6506007)(7696005)(55016003)(186003)(66556008)(26005)(66946007)(66446008)(8676002)(64756008)(66476007)(4326008)(86362001)(52536014)(2906002)(71200400001)(76116006)(5660300002)(7416002)(8936002)(33656002)(38100700002)(122000001)(38070700005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjdrOGc1Z3cyWExaQXRVMmhIdFRPa1VoNlY4bGUzQ0diNnFsdWhkVi9zNGpy?=
 =?utf-8?B?UmtmWFBNTW5RU3oxaWxhS0dqMTYyR3lObnVRZUFpU0c3VHdQT0J0Qm5HZTFk?=
 =?utf-8?B?YWo4Z3h0ZVZMZEJxL1d1UXFKSklqdllRSXdLVHY4WEVXcDJvU1pKMjFZRFk2?=
 =?utf-8?B?RUpqcWJkRzZuYS9zUFZXSVl4dFFxekhCU2NBRnUyTkgrd0NKWCtkb3dZT21B?=
 =?utf-8?B?QW01N3BvQXc1VFZjRjNpM0pqenU2Z3Vkd1NkKytGU2xmd0N6UWU2RXhpRzhN?=
 =?utf-8?B?MERIV09qYjJQcWtFU0RQRitYQ3d3UXhIb1JIVkRPK0N6cHllbzFlZ3FUNlRS?=
 =?utf-8?B?RUFmQkpneHB5enJRcVBoVG5WZVZhTzZUcG1kNnRwdU1pWDU4cjhOemVSaC9X?=
 =?utf-8?B?ZlNRTFllYVJ2S1hremRyTW1scXRrQVpmMTY2eDEyNGVtZmpXUk1Ca1pPY0ta?=
 =?utf-8?B?MVhTcEVYRExwL0FQNnJwN2FRVUlzZzR1Rk90V3JUUVNpc2JYZ2w1dkdobXRO?=
 =?utf-8?B?c3dxcGtyUWErS0E3eXE0K2IraU5QYjEzUmpabkE1dE9Dd2RGby9QdkdSMmtq?=
 =?utf-8?B?ekxvWm55V1VycktpdC94bXU4TFJQbXUwU2lncjZOaUxLK2NXcFRsZkZlR3VF?=
 =?utf-8?B?Sy8wanJhNklrMUhwY2FOaFlNY0pBT1BzbkJ2Z01pNUowbkUrRmRRTlNUeXBZ?=
 =?utf-8?B?UkZJN1B5c2dTVmthV3h5Nlkwb25La09keEdpMllNSWNraXNhRk5BNnY1NnFD?=
 =?utf-8?B?cmRuMG4zTGVJM1Avb3p3ZXhHQTJidW4wU0dlQUR0NDdkZzgrTFNPZXNyYlNh?=
 =?utf-8?B?bURUNXRHZXBPQ2RSQmIwM3R3SHFkbnlHMzRLZUNDVlM4TkpxZld2Yk54WDBN?=
 =?utf-8?B?cmowRDFNZHgzNUYrWTA2ZWd1SStVTlJZT1dVRG9OTWZyMHE1MG15Nkh6WUhJ?=
 =?utf-8?B?Sng5NFU4WWJhaWVSL3JienBOaUhZdCs5K3RHWFArK1g0LzRmWGRmRnpvK3RF?=
 =?utf-8?B?ZEl3M3R5dVp3RUxDV3h1NHhmcWZrajREekpEbDRSajUzdFpJT2JZbk5FdFZo?=
 =?utf-8?B?NDJGVUxnMVROLzhSYTBRYWRBVU9DNVZCbVNDbVAydzE3RCt0S3IzVlJTUEVv?=
 =?utf-8?B?ajViRnp1cCtUanJEMHRYQ1A4dTV3VXhIMWtQSW9jMVk3RDR6RER4cTlBeGxT?=
 =?utf-8?B?bWQ4ZndHamNZdHRWWVdzdURMR3kvRUkxQXVmVUxRSXo2SHh6TGdvcGZtTWJX?=
 =?utf-8?B?MGtCQU5zVmNJb2JzQVlyRGJDekpKRm5ndEtpL3owVkhQQm0ydUhnYWhFNXB0?=
 =?utf-8?B?MzEzbUErMG5UQlhPUWs2bWFwQ1YwTVB0WVBBZVFpdU5LSGFqajFraW5Ha2ZJ?=
 =?utf-8?B?R2RRT2ZGcVdEclpNd0pEM01VWE91VU9XNmJQRW5SaU5GY2NKUjFsTlp4eHB0?=
 =?utf-8?B?VVBSdXEzWUtGbjg0bUd3cVZoSnlTUjZwNHZDZEZXY05JVDlKSlkzaXkxMUtG?=
 =?utf-8?B?REdWNjVUWDhQcUZPbW0yMzMyeWtjNSsxd094NFYvWXlhOWs2U0w1c1FacTRE?=
 =?utf-8?B?K2JNcEhmaUxBK2ErTkpsY2M1UGFmK3VVTlVqWFpmam5uN05rcDBNWnc2ZFNu?=
 =?utf-8?B?eGd2blBsdXFYV3l6b0VLbUVQT21na3A3N1ZVd0FLNmhmRTl0Zk15QWU2Y3Fh?=
 =?utf-8?B?NWU2NG85cUNTd0dETmFmUnYrYk1EQ0dBWHcvZVZOWUR2R3NIcmsxN1J5MHNn?=
 =?utf-8?B?RmYvUlNGd3NhYnZSUkE0WXQ5WFZMSGd3a3VDZS9ad2thdHJLT3VmbHQySjNM?=
 =?utf-8?B?eXlsMSttTGpBN1g4Ymt2b090ZTNITVFQTHFPaldKN2NTRURlL2VSVzNrNGZQ?=
 =?utf-8?B?Yk42L29wRmVVVVVMU1VrdHE3OTFpVGFZSG5uTVUwUDhTT2JXRGZsR0Yway8z?=
 =?utf-8?B?ZjBEUTRRYitzMXo0dlRjTGMreUhWSVR1VG8vWUszdjVobUNaeUcwd09Kakkz?=
 =?utf-8?B?Rjh1Si9lM1E2UHU4YkFRYThZMzNJQW9DZnFPUjdVSTJIdnB1a3dCZU9ndmhO?=
 =?utf-8?B?YVY2MHVHTmlzNmZEK1dXc3BpZk9LcTV3bXNTOUdhV1pKM1BGckFXbzYxYUhQ?=
 =?utf-8?B?ZWlLNTN2MjYxY29HT05zL21iZHFzWmZHQzVUS05zaXFlZHlqQWI3NWlOMlYz?=
 =?utf-8?B?TklzQ0Q4bTRyNmNQam1tN1lvNmd5azV3VHFSTGovTlZWeDB3aXpSMVl3NWQ1?=
 =?utf-8?B?OEd0alJVZnE4WklqeWNwdHVNTmx3MXdubFhab3p3TVIyN000NkRzaEgrK1l0?=
 =?utf-8?B?cVlQNmp2UnJCZHJ1TVRsWXF3Mm51R3BqOWxldFJpQTY5MXBvaHBFSkZwS2t0?=
 =?utf-8?Q?xmlcNWsUIf7czekU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: qti.qualcomm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR02MB7186.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59c32a7a-1777-41da-3fb4-08da2ec16fd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 18:02:36.5599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cjMMG2nUGtN151hr3ZCJwQ7/f2X4qdDdO2Y5iuaHwYwoZHuGt1zTdtrvlstT7Fx5DUECXjGF6U6Yp7OqaMaeb69wTACBvVbhsgglc8FvFqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4236
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_110247_430719_81CE1D1E 
X-CRM114-Status: GOOD (  22.09  )
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

Hi Doug,

>>
>> Quoting Douglas Anderson (2022-04-25 14:06:42)
>> > We're supposed to list the supplies in the dt bindings but there are
>> > none in the DP controller bindings. Looking at the Linux driver and
>> > existing device trees, we can see that two supplies are expected:
>> > - vdda-0p9-supply
>> > - vdda-1p2-supply
>> >
>> > Let's list them both in the bindings. Note that the datasheet for
>> > sc7280 doesn't describe these supplies very verbosely. For the 0p9
>> > supply, for instance, it says "Power for eDP 0.9 V circuits". This
>> > this is obvious from the property name, we don't bother cluttering
>> > the bindings with a description.
>> >
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> > ---
>> >
>> >  .../devicetree/bindings/display/msm/dp-controller.yaml      | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> >
>> > diff --git
>> > a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> > b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> > index cd05cfd76536..dba31108db51 100644
>> > ---
>> > a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.ya
>> > +++ ml
>> > @@ -76,6 +76,9 @@ properties:
>> >    "#sound-dai-cells":
>> >      const: 0
>> >
>> > +  vdda-0p9-supply: true
>> > +  vdda-1p2-supply: true
>> > +
>> >    ports:
>> >      $ref: /schemas/graph.yaml#/properties/ports
>> >      properties:
>> > @@ -137,6 +140,9 @@ examples:
>> >
>> >          power-domains = <&rpmhpd SC7180_CX>;
>> >
>> > +        vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
>>
>> Having 'a' in 'vdda' typically means 'analog' for 'analog' circuits,
>> so I'd expect this to only matter for the phy that contains the analog
>> circuitry. It would be great to remove the regulator code from
>> drivers/gpu/drm/msm/dp/dp_power.c and move the regulator_set_load()
>> call to the phy driver if possible. Hopefully qcom folks can help
>> clarify here.
>
>Interesting. Oddly enough, the sc7280 datasheet doesn't list the "_A".
>It calls these "VDD_VREF_0P9" and "VDD_VREF_1P2". However, on the
>schematic in front of me someone labeled these pins on the sc7280 with the
>"A". ...and the driver looks for a supply with the "a". :-/
>
>It would be good to get clarification from someone with better information.
>
>-Doug

Our internal power grid documents list the regulators as VDD_A_*_1P2 and VDD_A_*_0P9
for all the platforms.

So, as a practice, we put the same name in the DT files. Hence,

Reviewed-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>

Thank you,
Sankeerth 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
