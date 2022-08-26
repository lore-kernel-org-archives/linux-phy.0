Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89B36ECAAA3
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 04:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iRve/OJRbnCJ2QfjGLYbm3fUqp+kjcKPKclOlNYu90=; b=p1FUoobb4kXSaA
	wVWdtbxDwPeX3C0b8zRuOYuXGSXk9JIIHjGi6AdC50Dq64c4lGpy7aImH3ZN1dx5LjvpTYPZ1EVUr
	g5v7GbPbYf9xKLvSXYsxx1eC/7XFR2J/ycLy36xTqUEju0GZMrvSq0d+kwRK5ayjaRmbGgAch62vV
	R66dCQPsIPORZ+/uKTbso7XAU1U5hy9FqZmGO4wBTw10HTG8bj8klFqaOdT3h8C2P/wWrubKuE6Sq
	3ZMxFpMkO+ngcAFGGqHX5asHL2/RQTpDbSyKXxHf6w2gls3pfUQlwd7iPHzE4yED32W/ZfgyqCXww
	9t2VJINVvqQtIPdaQlnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRRPk-00DTWN-S7; Fri, 26 Aug 2022 04:57:52 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRRPh-00DTKQ-Mc
	for linux-phy@lists.infradead.org; Fri, 26 Aug 2022 04:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1661489869; x=1693025869;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=ki0O8hcAJQz1mbQfdqWmulLq0GC2dikq8BhLH/rf3PA=;
  b=TVYfZxdukJHne5IPAlDSks5aE/SCklZE0Ef0nsT0hQrqfFtaQCnKHNWE
   HvitkwuiItThXi4taCzWGEZ67qH4VG9St2ECjNe5psAZsEIGM9ciE3jvp
   MFdfK96Joba5wmhZtr5w3FNlf5bhpCWJq397PESBuOQ1G25VNQKds6j2m
   iI/pCCbpDOEBicRayHiDd53Jv+TGfIt6mSJDOjKd0fZg94n6lfWZNTfmk
   oKMYSfGQMDkAPZtcMkQePKCeE0EgLcyjr2Z1F+LJbdgDmuwx3OXWCVnjm
   E+uLme9BbEuyJ8sKRXWx6HfkF4QrTqTJ8r2Zuz5Dzjveny8/uQmmHQlj+
   w==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654531200"; 
   d="scan'208";a="209705487"
Received: from mail-mw2nam10lp2105.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.105])
  by ob1.hgst.iphmx.com with ESMTP; 26 Aug 2022 12:57:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mvvlCAbZS2gl2rmYiB1wfq6m5HbcI3/+uXGxUTiHWS6Mxuqbl33aFCpK2UtSosYRnndrL0O+Kff0f1qmkqtaVZ9B2QXacvoTh+SN4onhzSmuB7iTpr5GCSsnTNeKS4VPSiNCnX3EgutP/JYeosjV1GIm70A6d3yVkZOx1hfR2sQMVD+I3OzPlGZImOYdkMuilqmLYFc4ObRWCaBeDlInShSa7tkzU1U5OPEYMcF0iaFFZ0OyEmFPlU3aDuWthuftpilpF52Q9uc2gWiORyFbvjSH5IuODZjrmpemRUgIl6jXfF9W2uFKx3O8xsnVbarVG7DyOaoSkJKN8FphFjOkag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ki0O8hcAJQz1mbQfdqWmulLq0GC2dikq8BhLH/rf3PA=;
 b=iMuJrsznmbZKKTiYRPQZIvF4KQPmB5o1QVMmoTT82W/qCBrNwLVhBCIHXl+JxQT6wAtnIMKWBx6ZM6YB0pC7jww7tmPapjpuMWadmjP/5Hv5mA4tWN1vA7gjbggWqRFaHWG/+8dmZ1sOudUparoPRH2McF76ENh/9JMMj705G42TlCRAQTqmZeVxnQ6md26urlkfC68Hrt7WYAazr80szRodzL3s7mbJ08ULY/n2SkUW1TlTlMjjizUnzfa1OdshZyZU7M0ESgQ5XKtU0hCb+cQBEqcsEihg+4KWYCi9K5+Cu6DoM7K0UA/slS1vQYp5mau4ouimTjBPQH7p8Yl6SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ki0O8hcAJQz1mbQfdqWmulLq0GC2dikq8BhLH/rf3PA=;
 b=CrOs/OyUZITRU0WVvHVIi8aBgif3k8D0PwIM3Kwl+ThUn3An/YBX8Ey4V16F2UvijrGjtvAK75zrJ5WE/048te+kxHT+wou85aoGASifIir/XWQsqxhiVVKwd9Wf/xT/2hyc0O5FhomBwvWv6xA6qpcyVfuCAnCQEycLJiJxJws=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 MN2PR04MB5598.namprd04.prod.outlook.com (2603:10b6:208:39::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Fri, 26 Aug 2022 04:57:37 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::c7e:a51:e59a:d633]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::c7e:a51:e59a:d633%8]) with mapi id 15.20.5566.015; Fri, 26 Aug 2022
 04:57:37 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>
CC: =?iso-8859-1?Q?Marek_Beh=FAn?= <kabel@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Damien Le
 Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index:  AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK2mvtwAgAGhgwCAAsWmAIAAOQWAgAA9WACAAAwygIAAE9SAgACpvICAAAN5gIAADLmAgAAA7ICAAAjcAIAAhS4AgAAnggCAAAIYAIAADPSAgAAA8gCAAKrngIAAAlAAgBIyoYCAAQo8AA==
Date: Fri, 26 Aug 2022 04:57:37 +0000
Message-ID: <20220826045736.7ice6y3mruv7petg@shindev>
References: <20220813010351.fauxwpi6w4d4shmn@pali>
 <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
 <20220813125052.hjd6lhh4fcc7jl5u@pali>
 <20220813230233.3hyvkoexqitfnlte@shindev>
 <20220813231050.l5xadzdpavmmtdbq@pali> <20220825130443.ccjtbwvcjm7upvgy@pali>
In-Reply-To: <20220825130443.ccjtbwvcjm7upvgy@pali>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4cbb345c-b2a8-485e-42ac-08da871f7f42
x-ms-traffictypediagnostic: MN2PR04MB5598:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  TVI04fqvNKTC4eHLY3p73D0KuI/2+GYv9HHPKFHTfUQA/Pk1gvvqTswjl1r/AQdGw6+3QX7UVw9fddfS0BEMAIyUu6xqq/EqCEfdfC1/htH6LtqMLBiV2H8xS5tIp0ProoCtAZT/CsPMkpU/8Cg0rMKNmU7+OUEHDIFXmb5GZnlUt7YKOSDnqFqe9AqxlGRhi4eyniDPdg+N3tXVyHfSWhtbNmyE5K7vxncJG5wLq/nbNInyLAUA9+AD3ewpUWtI3F9FykaWDIhsKj52GBBdF+AWdprTTsOoqU33MKOKjjReN9P7aC7T5cvySuBHTPBU4UVetBsMrzHWSQGzJeQIapJ7hv5b5ClYKQxfjb6gI4KqWj+yujnApDU+pkSMx3rcpXBZuWYKstth9+XYSDfuvdkSZsKJqk6fiM0+TSMsz//w/6OxgGWBYgav73l/DdiKqGV8St5prPpQB/dmUscLPMON+nDGP3VTu9EQ9XsZSgBk6OkgJfriEGKxnbeYK7Nt7ULLg5VrnXf6jYHNkTOFKT5VDJ5uXqPfjDWKBFLLVK/AuYNdwipzfWISo/ryDE2J1OfdeYMblIBadAaLiAzbbDptLiPlMEuCo2UO9tYFvQa9skcyioPif1MnwIlWLkf88/Sr+aLwG5GJjIa/ovvHPpo03cm0LKtYwweeaUFrGW90k/t4B6OF7J/ADeuswMtTYQSa6mHLf3uDCIiNuboZs/W0zQ8eVwnzeQTCF/fN0rK2oTH+ZVKwgQYFKadVPr8WitT8C8surRKuFV38w/t3iw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(478600001)(6506007)(6512007)(9686003)(41300700001)(71200400001)(26005)(5660300002)(91956017)(4744005)(44832011)(6916009)(316002)(54906003)(4326008)(8676002)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(82960400001)(38070700005)(86362001)(2906002)(6486002)(38100700002)(83380400001)(33716001)(186003)(1076003)(122000001)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?ontSKovBGqTsMLPi8QiJO+h3IeIp3+rb/NwN6zvdjlvDU/bUYiS/ATdUz/?=
 =?iso-8859-1?Q?mM8dCzM+6RYKLa+q/c7PAQk1Rmr6l9l6+4Qq4q1mxWrxiBFFTGvBX3miBL?=
 =?iso-8859-1?Q?KCXVUpUCFIQGhNqhcLDOY474cJyIzhljFdjcg8E+19wKALWJ6zQHtiq4lP?=
 =?iso-8859-1?Q?NZGEGEGWSgpu3XYbnzMHIxxLt3JE8KUAjcjSXxY/cJD7FEgXeB3hNBJYOU?=
 =?iso-8859-1?Q?jNogdU2hGYiif6hvd+TwFkEBxuqsW4JwVdzhVMyL8Nl++0mxO8q1y2KKT6?=
 =?iso-8859-1?Q?SoixuIn39wGItYgcHs/i4hWrRC45DOXYD8DO0fezAFlD8Fl8Blv7YXh6ZE?=
 =?iso-8859-1?Q?1MYmkX5xowIQVDUHHeRacVrR/XGqbNNCm1QHnq/PkmJ6dhGDa1WrOomkq6?=
 =?iso-8859-1?Q?R2Nrs1jUfPjXMrtHSfzjIPHutCAASL37NtnlbZGdCgysCW3PFgW1F0wwIa?=
 =?iso-8859-1?Q?2sBlxWUs+1a7HskJMUCzKAkOzqI8479YDVyBF32GdcgHQYXIALsP3I2FBz?=
 =?iso-8859-1?Q?2xS33b+plkYnbGhpc1X9L53bSWBPKDc3vqjxU3D+YRSoQ+IZIeABrqFACK?=
 =?iso-8859-1?Q?wSlj/piI7pAMF8Q3pyF6KTSK2cZQHuIImk0SqIvowyn+tgJVAuaav3Lt9J?=
 =?iso-8859-1?Q?zVA1hOTWouVSaAR81zUavPUeWS/J6fUACuCAyT0VM0jyjKleEW1CP5be46?=
 =?iso-8859-1?Q?2AiqhNI+duo+qsdmhj2j6+Rbik0xNvQnVTWnQnlOkO6oFHs6wap5rjWCV2?=
 =?iso-8859-1?Q?UlqxA1VQOTsijGOiRDA8s624aLYaHRw/HLhJ3qXLImfitkop/y1oxCz4tq?=
 =?iso-8859-1?Q?DF6npkkn4KZw4tZFIrNXSuvMp4TbSNeKNFnxtP+YICSw+jOE2UAhXaACaM?=
 =?iso-8859-1?Q?ruHJerdeRd44g9+FFPJ9+Zh9SlOsk4ycPnFMH8pAy1detmuyn3ucS+Q7Sz?=
 =?iso-8859-1?Q?7va3TG1lCB4K5DCemg/GLjRkrbdrN2gJpkmvtEoG9z7ObOu1GdLYAlE8CE?=
 =?iso-8859-1?Q?0MOYPD8ICI9XmN8t5ohUW01uXoJu4JTiNQp1xhYEhfi0/mP9+FUYQ0Gx4A?=
 =?iso-8859-1?Q?q+jHd597+MRYuSY69trSRky9yAGw3fPRoxcqXQP5oSNBvTMIcV8oLHj00n?=
 =?iso-8859-1?Q?7ua++ONzeoFZb6rAcntav6gjmU2kI0CNppQtq1st14JvfDpkH4C0JWCHpk?=
 =?iso-8859-1?Q?GddlOK0zW6G9UfY7hcunn+EgQeF1pibkO6rDu8NdQ2PKIKp9qpD/+rZjbh?=
 =?iso-8859-1?Q?kzV0P4cYGH1HftrktJzPWTZhJ7+MUFP9yS0IQCY1zFMnLpiM/1G4KeGQzc?=
 =?iso-8859-1?Q?BAvjrAIUGjfBGvLxT9UsJMlS19PLoJpYMCeOM2h/6COZlvZD9J62Sw9vkW?=
 =?iso-8859-1?Q?jnA2pKhyhkE/pTINBue2mAMoWBytV+t4d2thc9BzaLIixV4uivwRh7+Z0f?=
 =?iso-8859-1?Q?V15hcmGQLNoL2AGRT0kAxjiB0dLj/kSpLCRTTLVFXvcWzmbc0b24409v/5?=
 =?iso-8859-1?Q?KDqIMwS2nE5X7NCQFzHkpuLS/Z/1z01aBZ3cVYuwHMYzqe4B+c63gIABve?=
 =?iso-8859-1?Q?1mOD/F8rNQNf9oawt924NgRwBIgpFALQkul92w2gOq64v6j0LjYDsKxdB/?=
 =?iso-8859-1?Q?9Y/NZsdpWsxYS49rUtmMC4YAyYL/TbyX6XLpPwwGolMC30jMOMZXAAtcCK?=
 =?iso-8859-1?Q?p+v0WwoDLXZruS1aQKg=3D?=
Content-ID: <E63E808535A0E94996A5544277CBE327@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cbb345c-b2a8-485e-42ac-08da871f7f42
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2022 04:57:37.4662
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z8CCTSGDfxYnK1w8GQ9IuyronbBc6PYACTEnHoqrBHF3jD2djpKqqQKCx9OO7k/RNdG0gqcC7AORJl4JbEqFJJ9WGeinOFwuwiNiQJdFXcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_215750_083906_2B9F1A72 
X-CRM114-Status: UNSURE (   8.64  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Aug 25, 2022 / 15:04, Pali Roh=E1r wrote:

[...]

> Shinichiro, meanwhile, could you try following change on top of clean
> linux tree without any additional patches?

Thanks for caring this issue. Sure, I tried it on v5.18.16 and confirmed it
avoids the "ata1: SATA link down (SStatus 100 SControl 300)" message. My SS=
D was
detected as /dev/sda. It looks working as expected.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
