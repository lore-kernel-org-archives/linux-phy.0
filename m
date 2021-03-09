Return-Path: <SRS0=CLz0=IH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B6BBC433DB
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 14:22:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B061651A2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 14:22:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B061651A2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FiRlUGb4yXvrvcTUoxTnJV0RAkzV069feQDHML7VrQU=; b=Grg8QJOCNj8hVw0erQPZ96vr6
	Cr15Js7q09geNDSSp5oAZ7V6EVxvyA+oajS3eBFvBQrHrYLnxl46q+bf7jrPiAUEYrRWf+Nq0QRRE
	vZ9vhoQ+Pc9J2GINvw38pvqKYWZjXCnU8genHR9e1EsncsHxBiqW1+2c/Bgzinuie87Iv9BnjuWHW
	fuX5pOEHwRZlTx2jc7DccDSUumzicXKvxBHyTTvPPD9q+WWAbZhYW7sITuNZqKn0+t7t0gXbhb4Zi
	/wwqU3sXrQmjnrwTmcgh4koPYf/2sAe4omWR09AJ5iW73qWGoObNMZxIkcEAv8dAqCpDqlT47Ic51
	YlYj5KwmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJdFb-004pXn-CS; Tue, 09 Mar 2021 14:22:19 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJdFK-004pVt-TI
 for linux-phy@lists.infradead.org; Tue, 09 Mar 2021 14:22:08 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 129EK9fe008833; Tue, 9 Mar 2021 06:21:51 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=sYN8RO+ckrB19AMZ+WTwl1j2n4BjERom/yBe9fIA/mA=;
 b=rYEK7JWXV6iTaAEEjRl6pbvsCFlFt0ogBJua07WIVcf5pldi8RZSuQlg9Hfh8L5A38IB
 CGP5VsdYOUg4AQLgzDfDu1BYez1/pDyeoqGwSS4Bgg12mcXJFLFZWUIIIVnFjwyhRX2T
 hmQj21tmSq62cMlWp/4e+cSgCn3LjseEYFClyLYAC6O/IHk6GimrgdxVNUT7JjJA5H83
 xUGCp0IsIVIimneQql+6SIeFMeHCLGuLx1FQYMlQu1YOTfaw7S2j4sJ+3UrpIa+B008N
 fv4HPnsXXAnzTtmHhUeAeyJhgrGrcukeIEzODT0TAm5DHpezh9oVmZ4pgaNzsJhZLEIC fA== 
Received: from nam02-bl2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2050.outbound.protection.outlook.com [104.47.38.50])
 by mx0b-0014ca01.pphosted.com with ESMTP id 37467512gw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 09 Mar 2021 06:21:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+2OzpfzAnwHky3ohJloWxhAULrQIZwUvC1juPh9nXWcTQlHK8jAQ2bgdkjPS+9oHpa3uAMyLi2Obsm527zTpadC3bMSzWo4u2HnhnGkJm0k3eqGhg7xU+sd9xS6ZU0v8/4WW9PAHkhpPkzS+ovlIGogCls54vTAvmDaq2/J4oHCKSoBAu500a8whfexOaUFE4y/fMAfA0M7URygFSVMrdnoJkIRAEKWfWK4fJz0fSt/rUiqh6VKShrXRlKW/lVCQS+bjY3k4UbfC6D3Bxe1QEsFumP+HmeMpqB8q0b/3l78viOHdteX7lHXLN01dnvVnbxg+FaTMEG2Ig3rZEIWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sYN8RO+ckrB19AMZ+WTwl1j2n4BjERom/yBe9fIA/mA=;
 b=UnFH080k+bEy8J/EwTwllA5rNYaXM9hivW5ENT4ucIqIZ2PHgWnWP0jaBTYxMBzb1e0OeZgoClBxEfiCyisxtkzgNgGLYNRQfch6bZUyae4Vyupexgjjtt+5f0XI2KFMLO9jY/5sODuvDjFH8rNgP362qqs2sPV7RBeqxgWIC7FixwCbOmg6gE2wQSmUeaDCzymrMYfx9TFHjs4XP7GxAxHX1kLR19C5bNnU6Hatmmu6I9xXhvON1TEl03567YkgDVGzDX/XJMIpavhnn4xo5ImAovJMmVM+uCkpf+x/49z7zRF+KrXNhhEaXFnEYgK3YM2mpO4bkqiyflWWUqh3WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sYN8RO+ckrB19AMZ+WTwl1j2n4BjERom/yBe9fIA/mA=;
 b=y00YHAvHv9dpFFLd3PbR7zuQ39u6xlsGLUApDa/j/ca573j6ziNy89/Wjv6fPzyt71knC0sBlgSSSzJThD0mf6hFAuW2HSkR64H+oSO30tP2pvOLV/fDBsXRbgb+PgW4LSxVBSUAmAxRM2gykjI5W3BjIs+ZGvwCW4XH1lX4u9E=
Received: from MN2PR07MB6160.namprd07.prod.outlook.com (2603:10b6:208:11d::30)
 by MN2PR07MB5824.namprd07.prod.outlook.com (2603:10b6:208:ae::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.28; Tue, 9 Mar
 2021 14:21:46 +0000
Received: from MN2PR07MB6160.namprd07.prod.outlook.com
 ([fe80::294b:4e83:24b:ce39]) by MN2PR07MB6160.namprd07.prod.outlook.com
 ([fe80::294b:4e83:24b:ce39%4]) with mapi id 15.20.3890.038; Tue, 9 Mar 2021
 14:21:46 +0000
From: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: RE: [PATCH v2 9/9] phy: cadence-torrent: Add support to drive refclk
 out
Thread-Topic: [PATCH v2 9/9] phy: cadence-torrent: Add support to drive refclk
 out
Thread-Index: AQHXCQ08Ku7TmCAcwk2pupRubcIDNqp7qFHg
Date: Tue, 9 Mar 2021 14:21:46 +0000
Message-ID: <MN2PR07MB616036AE3164A0BB929BE0D8C5929@MN2PR07MB6160.namprd07.prod.outlook.com>
References: <20210222112314.10772-1-kishon@ti.com>
 <20210222112314.10772-10-kishon@ti.com>
In-Reply-To: <20210222112314.10772-10-kishon@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2pha2hhZGVcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy1iZjUzNzMxZi04MGUyLTExZWItODU0Ny1jOGY3NTA0NDIyZDhcYW1lLXRlc3RcYmY1MzczMjAtODBlMi0xMWViLTg1NDctYzhmNzUwNDQyMmQ4Ym9keS50eHQiIHN6PSIxMTc4MyIgdD0iMTMyNTk3NzMzMDI3ODcwMTgyIiBoPSJ6d2tpWXpDT0R2ek1sTC9qUVU1NGdobVh3Y1k9IiBpZD0iIiBibD0iMCIgYm89IjEiLz48L21ldGE+
x-dg-rorf: true
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=cadence.com;
x-originating-ip: [59.145.174.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77c8917c-589b-40b0-4a4a-08d8e306abeb
x-ms-traffictypediagnostic: MN2PR07MB5824:
x-microsoft-antispam-prvs: <MN2PR07MB58248D5AB7390A3496A773C6C5929@MN2PR07MB5824.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /pOnO6e3IOyHRDyf5uJ/Z4sPghNI+oTVkFuhjLwSpTAuy7hIeP7hQN1mqEI8+xXZksGUGLVoAqAyH4SbCd23SMWTA6nYXmvAXdDXrXoZ3h0EApaVE6xJFqbFjjG+F1VM5cdGJ9Qd8eictbr4QItn74Vg0dlyPC0Sf8mqYzgH1xboLiPrJByLEV+WwGU5R5qiQkg0GU7gi0HqZGrWB8Jm12R+VOwVKnjNi/H/2b8spuPmB56N7mQEvANAlk6eSRxBrAKIcw6pT91faz3wN8JjwlVk+/0L65gvAlXzMUykLBCz/+EhvCNC4QVJ9XPNMxWwfNOUfS3tuHlFH5SKWNDDOtCaw1hLQZ2GZqd2S/7MKj9OB/EBzrkyimOOYdwGQ8oJTPdAYxGKusLRwAMHoTt19PKKzeJIDGZBgWy6dwlogm20/vLF/njTz8c0tYHMMKJLh63ALUeVSnkd76BjKKd/jlCmq9vGOzO4kET6B1tsH/jNeVp8An0vfIoQCiz7hA8lZNEyYcN3EeZIZWz0vbMe5z/MR2n3cBzkuilWD5R0XdtrboyOtXmsLeXFdRrQfx9B9cxkVgzhrJRG/Ohj4iEwWG/kYJ1qRCJT8UKfj5Jv2g0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR07MB6160.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(36092001)(110136005)(83380400001)(71200400001)(186003)(2906002)(54906003)(53546011)(6506007)(66446008)(64756008)(8936002)(5660300002)(66556008)(66476007)(4326008)(86362001)(7696005)(52536014)(33656002)(26005)(30864003)(8676002)(55016002)(66946007)(478600001)(316002)(9686003)(76116006)(309714004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?/u9+9b3KxHjnDe8aq4dKXQ5In+DeJniwsri7Xa+Z6ijDdLDw/0xo+O5i7NZ3?=
 =?us-ascii?Q?52OsRQInLDNxA2Vrwvfiax29xDNYh6HiVkC7WH7pGVz6zjb6lhbYTjYH7DyC?=
 =?us-ascii?Q?/g44HE7mtC6+yXslpLI2SFqVf6kGILq2bXykddq2UmQwhybYTF3iR4LJDnN0?=
 =?us-ascii?Q?y6BJMfX8FDAdekpP8LdQC8TGQrWs1F2oNKMeO2XXbKm1tC9p46adklpy+LiM?=
 =?us-ascii?Q?PCHG6rp68Pz3KnBOxfEhseLaQT3zsw0/RImIPciOVjKlZ6omBbksevLwjnqD?=
 =?us-ascii?Q?I1f29J7zSCRPeEAnKNeFtRq9TcRrLTktgL9/319z7GQHi+ClF7QJ+uCxuOJV?=
 =?us-ascii?Q?3NUv2QjNCI2qMyuyhRkgfFYdGGclz9dH10vybNlsMbm5Ufafe1xgQpgtCNUu?=
 =?us-ascii?Q?vi1y+ba/HsMgR4MMiYNZOK7Yh7oCiWRXLQJdfpQlvA2giVanYyp0cRbMirgw?=
 =?us-ascii?Q?hfk1kuGC5HrTxBqXnyaJ+f6bbPHadvlC2CZQqt8eC5OlAd+c1s8BFbzzoRVQ?=
 =?us-ascii?Q?6bgHzfD+KwZTUudFoSjseOmfyx8GBOfqj99/57hvuZJFVrTWWtZ8PwMOcnLe?=
 =?us-ascii?Q?BqTmgAAsj1nSjCSvx/XLmifGCMp1NQtM9KYGLQaNbLg0QCz1UGXIJDTgurnU?=
 =?us-ascii?Q?Ev91V/UbbKc9j02EnUunlSiInOpYaE5l6k0VpDpbMUzjVHgl8Bl1mizA0H4f?=
 =?us-ascii?Q?1nd+OLReRQWFkJTa25cTP/aLdGAGcC0lxyRLIWyvZcNA0Vuo9hL0rgg56LKN?=
 =?us-ascii?Q?6AknHdDeuzlBjq7NFllcNsR/MWLVl2+JGI48RPGNAX6i1Ee/JTY6cT2zK0eY?=
 =?us-ascii?Q?WyNDJtuy9VgkQXfUZyFkSNgYUGuF6WJZVvoA051YNYbMJMcfrw/wdc5c9Ke+?=
 =?us-ascii?Q?x3cHA94jxIV3kbGY6h1UoE+I1MgGw/6ijcj3CtfUL0EVVASEaT3VzaFmkSBW?=
 =?us-ascii?Q?/bKd1GMYQW2vmgd6ayVljs3nQiZ+eDkEozBxJzswRrDPTIQQwmwIQWmGU1MA?=
 =?us-ascii?Q?E/6H576ykZPLQWMJ4MoKsU3FUEfBufm9ZL8efY6yv/HBdwJRPfuS4C0VV3MC?=
 =?us-ascii?Q?yamVO6aRi/1HmXrGIdn1jbO6prJvrbkfcpn6d/pS2FZ9t2F9Bqv2sJ3e4bfN?=
 =?us-ascii?Q?Dm2Zc6Cxttkk4a9Dqol2PxSm/kwwhQkUDepITeOkbgWWxqaV/lLiAzVF/Kxj?=
 =?us-ascii?Q?crMY/TTlxuzwqXPef7P6Of155pJRA9wDT0Uq0Pdxgw10onygetjSofXPVVwX?=
 =?us-ascii?Q?EzFgJRc/Tvdye/f8kK4OB874+AF2TeLLUMraPISkcSV6bA81sfLM22zk3I5K?=
 =?us-ascii?Q?PmxSbLUYz8LZL1AT1MiEBdYU?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR07MB6160.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77c8917c-589b-40b0-4a4a-08d8e306abeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2021 14:21:46.5858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JgPjC9dPxDQ9xnfII7uSd4lqcuN/7BoK5vE0lxqIvxHwyK9DAeK5G1FvEtw9lFj2BezN0EwYIHzFVjRChr0SiO6mLDOe4o8VKChVdTI3muc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB5824
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-09_11:2021-03-08,
 2021-03-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 suspectscore=0
 phishscore=0 clxscore=1011 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103090073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_142204_327966_4CBE085C 
X-CRM114-Status: GOOD (  28.35  )
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

Hi Kishon,

> -----Original Message-----
> From: Kishon Vijay Abraham I <kishon@ti.com>
> Sent: Monday, February 22, 2021 4:53 PM
> To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul
> <vkoul@kernel.org>; Rob Herring <robh+dt@kernel.org>; Peter Rosin
> <peda@axentia.se>; Swapnil Kashinath Jakhade <sjakhade@cadence.com>
> Cc: linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-
> phy@lists.infradead.org
> Subject: [PATCH v2 9/9] phy: cadence-torrent: Add support to drive refclk out
> 
> EXTERNAL MAIL
> 
> 
> cmn_refclk_<p/m> lines in Torrent SERDES is used for connecting external
> reference clock. cmn_refclk_<p/m> can also be configured to output the
> reference clock. Model this derived reference clock as a "clock" so that
> platforms like AM642 EVM can enable it.
> 
> This is used by PCIe to use the same refclk both in local SERDES
> and remote device. Add support here to drive refclk out.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 202 +++++++++++++++++++++-
>  1 file changed, 199 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c
> b/drivers/phy/cadence/phy-cadence-torrent.c
> index f310e15d94cb..07eebdd90d4b 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -7,7 +7,9 @@
>   */
> 
>  #include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/phy/phy-cadence-torrent.h>
>  #include <linux/clk.h>
> +#include <linux/clk-provider.h>
>  #include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/io.h>
> @@ -76,6 +78,8 @@
>   * register offsets from SD0801 PHY register block base (i.e MHDP
>   * register base + 0x500000)
>   */
> +#define CMN_CDIAG_REFCLK_OVRD		0x004CU
> +#define CMN_CDIAG_REFCLK_DRV0_CTRL	0x0050U

Nitpick, this can be added sequentially.

>  #define CMN_SSM_BANDGAP_TMR		0x0021U
>  #define CMN_SSM_BIAS_TMR		0x0022U
>  #define CMN_PLLSM0_PLLPRE_TMR		0x002AU
> @@ -206,6 +210,8 @@
>  #define RX_DIAG_ACYA			0x01FFU
> 
>  /* PHY PCS common registers */
> +#define PHY_PIPE_CMN_CTRL1		0x0000U
> +#define PHY_ISO_CMN_CTRL		0x0008U
>  #define PHY_PLL_CFG			0x000EU
>  #define PHY_PIPE_USB3_GEN2_PRE_CFG0	0x0020U
>  #define PHY_PIPE_USB3_GEN2_POST_CFG0	0x0022U
> @@ -216,6 +222,10 @@
>  #define PHY_PMA_CMN_CTRL2		0x0001U
>  #define PHY_PMA_PLL_RAW_CTRL		0x0003U
> 
> +static const char * const clk_names[] = {
> +	[CDNS_TORRENT_REFCLK_DRIVER] = "refclk-driver",
> +};
> +
>  static const struct reg_field phy_pll_cfg =
>  				REG_FIELD(PHY_PLL_CFG, 0, 1);
> 
> @@ -231,6 +241,36 @@ static const struct reg_field phy_pma_pll_raw_ctrl =
>  static const struct reg_field phy_reset_ctrl =
>  				REG_FIELD(PHY_RESET, 8, 8);
> 
> +#define REFCLK_OUT_NUM_CONFIGURATIONS_PCS_CONFIG	2

This could be reduced just to REFCLK_OUT_NUM_PCS_CONFIG, but up to you.
Same below.

> +
> +enum cdns_torrent_refclk_out_pcs {
> +	PHY_ISO_CMN_CTRL_8,
> +	PHY_PIPE_CMN_CTRL1_0,
> +};
> +
> +#define REFCLK_OUT_NUM_CONFIGURATIONS_CMN_CONFIG	5
> +
> +enum cdns_torrent_refclk_out_cmn {
> +	CMN_CDIAG_REFCLK_OVRD_4,
> +	CMN_CDIAG_REFCLK_DRV0_CTRL_1,
> +	CMN_CDIAG_REFCLK_DRV0_CTRL_4,
> +	CMN_CDIAG_REFCLK_DRV0_CTRL_5,
> +	CMN_CDIAG_REFCLK_DRV0_CTRL_6,
> +};
> +
> +static const struct reg_field refclk_out_pcs_cfg[] = {
> +	[PHY_ISO_CMN_CTRL_8]	= REG_FIELD(PHY_ISO_CMN_CTRL, 8,
> 8),
> +	[PHY_PIPE_CMN_CTRL1_0]	= REG_FIELD(PHY_PIPE_CMN_CTRL1,
> 0, 0),
> +};
> +
> +static const struct reg_field refclk_out_cmn_cfg[] = {
> +	[CMN_CDIAG_REFCLK_OVRD_4]	=
> REG_FIELD(CMN_CDIAG_REFCLK_OVRD, 4, 4),
> +	[CMN_CDIAG_REFCLK_DRV0_CTRL_1]	=
> REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 1, 1),
> +	[CMN_CDIAG_REFCLK_DRV0_CTRL_4]	=
> REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 4, 4),
> +	[CMN_CDIAG_REFCLK_DRV0_CTRL_5]  =
> REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 5, 5),
> +	[CMN_CDIAG_REFCLK_DRV0_CTRL_6]	=
> REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 6, 6),
> +};
> +
>  enum cdns_torrent_phy_type {
>  	TYPE_NONE,
>  	TYPE_DP,
> @@ -279,6 +319,8 @@ struct cdns_torrent_phy {
>  	struct regmap_field *phy_pma_cmn_ctrl_2;
>  	struct regmap_field *phy_pma_pll_raw_ctrl;
>  	struct regmap_field *phy_reset_ctrl;
> +	struct clk *clks[CDNS_TORRENT_REFCLK_DRIVER + 1];
> +	struct clk_onecell_data clk_data;
>  };
> 
>  enum phy_powerstate {
> @@ -288,6 +330,16 @@ enum phy_powerstate {
>  	POWERSTATE_A3 = 3,
>  };
> 
> +struct cdns_torrent_derived_refclk {
> +	struct clk_hw		hw;
> +	struct regmap_field
> 	*pcs_fields[REFCLK_OUT_NUM_CONFIGURATIONS_PCS_CONFIG];
> +	struct regmap_field
> 	*cmn_fields[REFCLK_OUT_NUM_CONFIGURATIONS_CMN_CONFIG];
> +	struct clk_init_data	clk_data;
> +};
> +
> +#define to_cdns_torrent_derived_refclk(_hw)	\
> +			container_of(_hw, struct
> cdns_torrent_derived_refclk, hw)
> +
>  static int cdns_torrent_phy_init(struct phy *phy);
>  static int cdns_torrent_dp_init(struct phy *phy);
>  static int cdns_torrent_dp_run(struct cdns_torrent_phy *cdns_phy,
> @@ -1604,6 +1656,111 @@ static int cdns_torrent_dp_run(struct
> cdns_torrent_phy *cdns_phy, u32 num_lanes)
>  	return ret;
>  }
> 
> +static int cdns_torrent_derived_refclk_enable(struct clk_hw *hw)
> +{
> +	struct cdns_torrent_derived_refclk *derived_refclk =
> to_cdns_torrent_derived_refclk(hw);
> +
> +	regmap_field_write(derived_refclk-
> >cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_6], 0);
> +	regmap_field_write(derived_refclk-
> >cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_4], 1);
> +	regmap_field_write(derived_refclk-
> >cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_5], 1);
> +	regmap_field_write(derived_refclk-
> >cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_1], 0);
> +	regmap_field_write(derived_refclk-
> >cmn_fields[CMN_CDIAG_REFCLK_OVRD_4], 1);
> +	regmap_field_write(derived_refclk-
> >pcs_fields[PHY_PIPE_CMN_CTRL1_0], 1);
> +	regmap_field_write(derived_refclk-
> >pcs_fields[PHY_ISO_CMN_CTRL_8], 1);
> +
> +	return 0;
> +}
> +
> +static void cdns_torrent_derived_refclk_disable(struct clk_hw *hw)
> +{
> +	struct cdns_torrent_derived_refclk *derived_refclk =
> to_cdns_torrent_derived_refclk(hw);
> +
> +	regmap_field_write(derived_refclk-
> >pcs_fields[PHY_ISO_CMN_CTRL_8], 0);
> +}
> +

PHY_ISO_CMN_CTRL is a PHY isolation register. Not sure, but is this correct
to control phy_en_refclk to enable/disable refclk output from here?

> +static int cdns_torrent_derived_refclk_is_enabled(struct clk_hw *hw)
> +{
> +	struct cdns_torrent_derived_refclk *derived_refclk =
> to_cdns_torrent_derived_refclk(hw);
> +	int val;
> +
> +	regmap_field_read(derived_refclk-
> >pcs_fields[PHY_ISO_CMN_CTRL_8], &val);
> +
> +	return !!val;
> +}
> +
> +static const struct clk_ops cdns_torrent_derived_refclk_ops = {
> +	.enable = cdns_torrent_derived_refclk_enable,
> +	.disable = cdns_torrent_derived_refclk_disable,
> +	.is_enabled = cdns_torrent_derived_refclk_is_enabled,
> +};
> +
> +static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy
> *cdns_phy)
> +{
> +	struct cdns_torrent_derived_refclk *derived_refclk;
> +	struct device *dev = cdns_phy->dev;
> +	struct regmap_field *field;
> +	struct clk_init_data *init;
> +	const char *parent_name;
> +	struct regmap *regmap;
> +	char clk_name[100];
> +	struct clk *clk;
> +	int i;
> +
> +	derived_refclk = devm_kzalloc(dev, sizeof(*derived_refclk),
> GFP_KERNEL);
> +	if (!derived_refclk)
> +		return -ENOMEM;
> +
> +	snprintf(clk_name, sizeof(clk_name), "%s_%s", dev_name(dev),
> +		 clk_names[CDNS_TORRENT_REFCLK_DRIVER]);
> +
> +	clk = devm_clk_get_optional(dev, "phy_en_refclk");
> +	if (IS_ERR(clk)) {
> +		dev_err(dev, "No parent clock for derived_refclk\n");
> +		return PTR_ERR(clk);
> +	}
> +
> +	init = &derived_refclk->clk_data;
> +
> +	if (clk) {
> +		parent_name = __clk_get_name(clk);
> +		init->parent_names = &parent_name;
> +		init->num_parents = 1;
> +	}
> +	init->ops = &cdns_torrent_derived_refclk_ops;
> +	init->flags = 0;
> +	init->name = clk_name;
> +
> +	regmap = cdns_phy->regmap_phy_pcs_common_cdb;
> +	for (i = 0; i < REFCLK_OUT_NUM_CONFIGURATIONS_PCS_CONFIG;
> i++) {
> +		field = devm_regmap_field_alloc(dev, regmap,
> refclk_out_pcs_cfg[i]);
> +		if (IS_ERR(field)) {
> +			dev_err(dev, "PCS reg field init failed\n");
> +			return PTR_ERR(field);
> +		}
> +		derived_refclk->pcs_fields[i] = field;
> +	}
> +
> +	regmap = cdns_phy->regmap_common_cdb;
> +	for (i = 0; i < REFCLK_OUT_NUM_CONFIGURATIONS_CMN_CONFIG;
> i++) {
> +		field = devm_regmap_field_alloc(dev, regmap,
> refclk_out_cmn_cfg[i]);
> +		if (IS_ERR(field)) {
> +			dev_err(dev, "CMN reg field init failed\n");
> +			return PTR_ERR(field);
> +		}
> +		derived_refclk->cmn_fields[i] = field;
> +	}
> +
> +	derived_refclk->hw.init = init;
> +
> +	clk = devm_clk_register(dev, &derived_refclk->hw);
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	cdns_phy->clks[CDNS_TORRENT_REFCLK_DRIVER] = clk;
> +
> +	return 0;
> +}
> +
>  static int cdns_torrent_phy_on(struct phy *phy)
>  {
>  	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
> @@ -2071,6 +2228,37 @@ int cdns_torrent_phy_configure_multilink(struct
> cdns_torrent_phy *cdns_phy)
>  	return 0;
>  }
> 
> +static void cdns_torrent_clk_cleanup(struct cdns_torrent_phy *cdns_phy)
> +{
> +	struct device *dev = cdns_phy->dev;
> +
> +	of_clk_del_provider(dev->of_node);
> +}
> +
> +static int cdns_torrent_clk_register(struct cdns_torrent_phy *cdns_phy)
> +{
> +	struct device *dev = cdns_phy->dev;
> +	struct device_node *node = dev->of_node;
> +	int ret;
> +
> +	ret = cdns_torrent_derived_refclk_register(cdns_phy);
> +	if (ret) {
> +		dev_err(dev, "failed to register derived refclk\n");
> +		return ret;
> +	}
> +
> +	cdns_phy->clk_data.clks = cdns_phy->clks;
> +	cdns_phy->clk_data.clk_num = CDNS_TORRENT_REFCLK_DRIVER + 1;
> +
> +	ret = of_clk_add_provider(node, of_clk_src_onecell_get, &cdns_phy-
> >clk_data);
> +	if (ret) {
> +		dev_err(dev, "Failed to add clock provider: %s\n", node-
> >name);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int cdns_torrent_phy_probe(struct platform_device *pdev)
>  {
>  	struct cdns_torrent_phy *cdns_phy;
> @@ -2134,17 +2322,21 @@ static int cdns_torrent_phy_probe(struct
> platform_device *pdev)
>  	if (ret)
>  		return ret;
> 
> +	ret = cdns_torrent_clk_register(cdns_phy);
> +	if (ret)
> +		return ret;
> +
>  	ret = clk_prepare_enable(cdns_phy->clk);
>  	if (ret) {
>  		dev_err(cdns_phy->dev, "Failed to prepare ref clock\n");
> -		return ret;
> +		goto clk_cleanup;
>  	}
> 
>  	cdns_phy->ref_clk_rate = clk_get_rate(cdns_phy->clk);
>  	if (!(cdns_phy->ref_clk_rate)) {
>  		dev_err(cdns_phy->dev, "Failed to get ref clock rate\n");
> -		clk_disable_unprepare(cdns_phy->clk);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto clk_disable;
>  	}
> 
>  	/* Enable APB */
> @@ -2322,7 +2514,10 @@ static int cdns_torrent_phy_probe(struct
> platform_device *pdev)
>  		reset_control_put(cdns_phy->phys[i].lnk_rst);
>  	of_node_put(child);
>  	reset_control_assert(cdns_phy->apb_rst);
> +clk_disable:
>  	clk_disable_unprepare(cdns_phy->clk);
> +clk_cleanup:
> +	cdns_torrent_clk_cleanup(cdns_phy);
>  	return ret;
>  }
> 
> @@ -2339,6 +2534,7 @@ static int cdns_torrent_phy_remove(struct
> platform_device *pdev)
>  	}
> 
>  	clk_disable_unprepare(cdns_phy->clk);
> +	cdns_torrent_clk_cleanup(cdns_phy);
> 
>  	return 0;
>  }
> --
> 2.17.1

Thanks & regards,
Swapnil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
