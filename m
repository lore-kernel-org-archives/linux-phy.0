Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32AF5C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  9 Dec 2021 06:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuIxFzS3855xoCwjEgrYZxAzXPNZIsTbWatjVteA47E=; b=fuotqRjAQbijPr
	LvWizOy5kiQxTcB7qxuUYKTUU94oJOjLPw5+9SgklKXZchssswT5n51WPvPPq7l84S8NhigmEZ+Jz
	hWDCOsaM4JV2SpLMhfcB7tnokSMF+JbwWaOjJIeTf7LKYM/R02EI3GaVs1T/JKmk1+fFkraWXz5Pl
	Nst0Ab+K3H2lmGMU88HKaJWqSYhA9TsjXeM3pKC/TNchPVkt6fTdJWLNjHPiopQ3O8HD0ym4Kpm52
	uTvgTuoiFScxYn92SB9R8ovp6ubKp/CGJfMySeu8FJ6jE7BB7Wy5w1eDpFGhs25frnZHg1rxIECrH
	3Tnu2uCLGXsYY5A8QsVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvCea-00F3JX-Iu; Thu, 09 Dec 2021 06:11:40 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvCeX-00F3I1-Au
 for linux-phy@lists.infradead.org; Thu, 09 Dec 2021 06:11:39 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1B943eLI025637;
 Wed, 8 Dec 2021 22:11:24 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=SoEFhcv/g+hadu4UTCXenEFWrxMYGZA4STiaW26DoxY=;
 b=KpjVbHGFLV/uhdUXmWYvvR4yotRnv88387uY8lfmw6LfZLVgN0h4RDmDnEsjokCOEeOM
 FzwQf7IYRg31MJ2kFMsWGRtNmkD9NUwMPIHdIqIr2m9O1u+RE0EAQEFT6nKNnRE4A6vY
 2Olz0RRYHTN+f8hu8TYnkNxYrOX48fdjR60QHR85gyu31LxEPDNhERfmllaPfLL2clSA
 UnbHzPr2LL9zmsWB6yl89FZyxvmGdtrzllEcOrhxfOGTc6kn3G7lSIJZCHguW66fkNKK
 H96kfOSeTJ9XkhMX5hQKHhppJNWLVMfF7rBJdfE0GRk7DNYurKFC1J5XU/ovHNNChfjW jg== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
 by mx0b-0014ca01.pphosted.com (PPS) with ESMTPS id 3ctgxfnpe0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Dec 2021 22:11:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwrXtt6MyfEVYwrjC530LdmuBBtYKcLEI1GN5Z+TLItU6LaXR7HBXjjSz+DstpRsOfcl8H3D8CG3/u9r55qjU1sgfFMBJTeSI0Pj+mRISss+89294pCXoDRb+IZeiII4lssHdPs8fsZjR4ssxS+5x8XZZj2xAf6/2fm01cSXJyD9kKgviZcQ+bP/M9Hrm3ZAR12rTJk76sgORh4qv/BkjXVm5DhsAesJUxHywMjANNH6hDuhZF5bbidIS7xvuC+r3bXr+KuF7BQCr/YneSGs2SGULpvAddKXComQqaztu9rjpIukmB6yD1Z2IE9Jyk50JE+WGo7ceKgy+DQbIqs6gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SoEFhcv/g+hadu4UTCXenEFWrxMYGZA4STiaW26DoxY=;
 b=baZIcI6kOZSa67u2esVKE1BNLUFPW4IOzZ80nTG12QNDpGzMBl06I8GuGRcGlraOakXJ2tZ0+nYD9OCfd1kBhQbPRInjSum8hvOaIqpaVKEMTckKyC54qfhRFxgtMB4rIohlZe+EbKdYCoEG5oOJqyAYrApVtjpxzLdiaPHfaPcA2qG4h0YacMCaQuW3hmVIQWFUaTlO/B2cDDJ0o7c3B4hOhrxrEs9VttzAFib7oTa3GE+qiIvpi3XOjkOOaMgh5EZenk7YiWSspJUGwUMFSEfwCrSRZXUiTREYgfj+1/XdG1vbU54XmUu+BgE/J8R7EfewFRV42SZIavLC/crA3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SoEFhcv/g+hadu4UTCXenEFWrxMYGZA4STiaW26DoxY=;
 b=4A6uB+eHoBjNf2vA8xOOjbWIqh40Y9T8ue7YXeJOaBwfEzLpZcFUznolY7zw8NUY/3OzhbiIQO51yxn/zB8Fa6HQz38XWkIoL1V7etNcUp8RwW7vLmSosmSKWsAMe7crmXnJkd5WXkdDjGJcyqjLPR+8Xb4sQ6sPzXHd60p5QhQ=
Received: from MW2PR07MB7899.namprd07.prod.outlook.com (2603:10b6:302:13::26)
 by MW2PR07MB3964.namprd07.prod.outlook.com (2603:10b6:907:10::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.19; Thu, 9 Dec
 2021 06:11:19 +0000
Received: from MW2PR07MB7899.namprd07.prod.outlook.com
 ([fe80::f5f9:1f1e:20f3:9603]) by MW2PR07MB7899.namprd07.prod.outlook.com
 ([fe80::f5f9:1f1e:20f3:9603%7]) with mapi id 15.20.4755.022; Thu, 9 Dec 2021
 06:11:19 +0000
From: Milind Parab <mparab@cadence.com>
To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>, Vinod Koul
 <vkoul@kernel.org>
CC: "kishon@ti.com" <kishon@ti.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "a-govindraju@ti.com" <a-govindraju@ti.com>
Subject: RE: [PATCH v3 13/15] phy: cadence: Sierra: Add PCIe + QSGMII PHY
 multilink configuration
Thread-Topic: [PATCH v3 13/15] phy: cadence: Sierra: Add PCIe + QSGMII PHY
 multilink configuration
Thread-Index: AQHXx2bHbOfmGFbXzk2tEl4jP3glVKwQu9eAgAHAZgCAAWqCAIALl9WAgAp44CA=
Date: Thu, 9 Dec 2021 06:11:19 +0000
Message-ID: <MW2PR07MB7899EC5A08D975E646F48A96D3709@MW2PR07MB7899.namprd07.prod.outlook.com>
References: <20211022170236.18839-1-sjakhade@cadence.com>
 <20211022170236.18839-14-sjakhade@cadence.com> <YZxyja2xEkpWvStR@matsya>
 <DM6PR07MB6154FB5EB84B7BE063965619C5619@DM6PR07MB6154.namprd07.prod.outlook.com>
 <YZ8aygJQoxie+Ddn@matsya>
 <DM6PR07MB61549C25EBF70ED2639FBCF6C5699@DM6PR07MB6154.namprd07.prod.outlook.com>
In-Reply-To: <DM6PR07MB61549C25EBF70ED2639FBCF6C5699@DM6PR07MB6154.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce97a217-b115-4702-2ce6-08d9badab7a3
x-ms-traffictypediagnostic: MW2PR07MB3964:EE_
x-microsoft-antispam-prvs: <MW2PR07MB3964E096094D5E17CD9B96AFD3709@MW2PR07MB3964.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OosLACnQiFSmsAa4LoQCEc6SwjHPZVdWfLCI+9I8esN8QZDKfc9woLNXcJdsjhAA/oQfWxQs9GVUpCVXN/S4BLcaQDlK1la6yxbpae817ia3RkhyIMRaqyNdc3AemZES4r5/4se/+FgBHUSOGrHFQMfwsOxm1wNBzL42Zdq0aX+oVQnRekAlCJa0A92p9kXsYP5s57jCuGYy6UBLHVHBm2yRstUY+AoHRHoNIh0h9NxBD23Qzg5cBYponExAH3Z7VYD0y7gSKE07OCBwUvmk8sRfye4c3fqCkFa2dR7YMLHLMDnh0z2/XUgRmCKsjDNeZzRxIInEVfWDSHAfp/4XLZFLDAEkGxdYbd69Gj3vHjB66tBjue0rZFeQpOvuqBN9s/qPmc65jr9f1mTTKNHYVuolBMlG036rCUK4hyEXFx6j3fFt/3W0932Ya1HdbsML4HXde7HwIuPDqmK97c2rGLqdq8bQQK6FVmRnzflBpyrjN0Q6Ombu0FAZ3pb/s0l/Y1n3DgbKHSK3Aew73JfZoddQ5jAeOaxxyEGp+nzs2V+YzP+jbm00yll8gm5+iSk0R4ULDDWCK1jT/RWaOp1FcTyQvAw+Ac+whCWeWpEzIFYSsGOC0BBSrkwFEI5G25x5JPTAhyl4OEEO44gqpLdoUsunAqahV78iWENwmB/JK/WRaEHUQeVAdrIxi05W/iDry9sGjIFMg/URFIB5OT7zy74M1JlGd34ZvBkW0+FN1Xe1cqdtTu56j53sJQH/nIFr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR07MB7899.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(36092001)(2906002)(8676002)(508600001)(71200400001)(38070700005)(9686003)(76116006)(83380400001)(66946007)(66476007)(66556008)(316002)(66446008)(110136005)(64756008)(4326008)(5660300002)(8936002)(55016003)(54906003)(52536014)(33656002)(38100700002)(186003)(122000001)(86362001)(26005)(53546011)(7696005)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TLQdnYim3EOsw0e8XZfPItBTEvgVwFZXb5XJZqJyaR4DTewFYCLxcFHgKqbe?=
 =?us-ascii?Q?kEYiTfkWgvs926mlG4afvyQGk2x3C0q2Yd0SOAB4sXu6dlPhViyi0uhFGo1U?=
 =?us-ascii?Q?NkKGMkbzYowFDU0Ipl+8jDFnXAUhHZcBFbUuxLQyKCW1gi9/z6C0c4tnW7vc?=
 =?us-ascii?Q?Zl1jXyWdl/Peua8Jl2tbNFNj0uQAIrUw5zoCuKmnv+LAhGOWAdm7EN3OD+vP?=
 =?us-ascii?Q?EqbyATHGEpTeXvfTui2m63QThaE10fL8u1sKntT3oYR4y6B/yPwT9oTJqtXD?=
 =?us-ascii?Q?jk7wptun4CncVQ/A/INszMcOnaF9eOn8m+bOYplUzIIiyprqD3M9OsQE9YAe?=
 =?us-ascii?Q?DkC+9RKWn1dFXzT2+oYy6i6Y6+oEADiTIyG/1fYOCgJ8etkic24/mpkTi1bh?=
 =?us-ascii?Q?x+nfn8lJVe4CI4FE/KGuKgyZdig9+jE+VGseeeWUXXhShJixj4owi9IP/rgB?=
 =?us-ascii?Q?ms4SRNvVXB+BsMwfX/ZqLMgeDL2YvOnwpBtGEVBQ64s6p7nufkr5yjK7Xmo3?=
 =?us-ascii?Q?OU+OmnV1SLHw8U24optLgQs4/XT11TsrDl7LMNZXFjDI9DoYkV80cwP4oGRM?=
 =?us-ascii?Q?QlaIccNNzzcPBcVxAWnMS+9gjEG47hz07+KfFOgb+yr2JGEuwqxikB7JQly1?=
 =?us-ascii?Q?hWVpH8WkQipweFckanM4mklQjkdOToDInYQaSjXxkhlsOqO/EUksRApH8EBp?=
 =?us-ascii?Q?u3Z0L9945mcdc+y0gdGo2PIfvs98HAa3ORZtH4Ca4ZDcXhqpFVTIRd59HXUu?=
 =?us-ascii?Q?tvEj90W3lI3RZTCHiQ33z1zo9FahzVSYbhIgqjGC3TN2WvNNIGS+rYUsTHHf?=
 =?us-ascii?Q?RVTZS1LIjUvos01bGcHwfS4ckORNOxImlEQlUO8ll6t9HOhzCL+Sf0mA3aV9?=
 =?us-ascii?Q?38PcLlORDP++bgijLUSm6MYRciHsPaMSHDJ9QWE2lxGXrN2t7gI7cmHSrJst?=
 =?us-ascii?Q?2JQSlhl9H8nPW8r07OjLg/6o3P6m0XX0eK1fPcMaUHNL147mEMHQ0X6cQHpY?=
 =?us-ascii?Q?lrqceO1KbiI6UnGs1+ikgADckhDu9VHZ4WOjf/ku4ZqIGDl9m79DgAQ7V98n?=
 =?us-ascii?Q?JnAK4Qhh11Zx2l1FIbi97boGcYsT994fkdbharht8dW96cMIyt0EWbr5uyu7?=
 =?us-ascii?Q?0ZAHn5beX88U21v5vt0zat0EIM2AN+QI0N1k8NYur579zUBdkFA0xr4zQaR1?=
 =?us-ascii?Q?roigS9QGdL/MrAr8szixYahUcnsYyl4NJOa8Z/WCnk8GBpcPceXyZmVoRYWd?=
 =?us-ascii?Q?z14b3qqXQaZaCJaGd74XNobalpCYBV9Xmku+CisOK1Ielxc5cAMGtU3a0lLg?=
 =?us-ascii?Q?FA7voy/pQFWRNbG85MmXUncx3lYar/3TviJXzBMPEeqHE41DWZWpsAEiTtqJ?=
 =?us-ascii?Q?KTdFCwOuURvRCibCkLkDnyhhB0YmTl/J1h2z4magIzU4oycCqPLKejqEzv9s?=
 =?us-ascii?Q?uooHeIloJxKFUMZcS1O8Gl3cxbFJyU4dGKSvqH10b9fpRizX6Rp7eeZQGX0X?=
 =?us-ascii?Q?MYysSgiqXRIbxPAbT7VlC4AryyblgR1CJt2Z9yEx2Fo59+j21wsLKJ6szOKl?=
 =?us-ascii?Q?xhTBI8PMA/S5gtiNaRsmkdkJnzBWrusG9omUBPG+4EIsHPGBRbNv/8FTl1BK?=
 =?us-ascii?Q?xmcPwIPVimq7xr4ke+gEqk0SIkoHqVNb2vreTADd84XjJySm3RA3GVqafiJX?=
 =?us-ascii?Q?elCh5g=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR07MB7899.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce97a217-b115-4702-2ce6-08d9badab7a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2021 06:11:19.5007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jxMvE9/dXhDe+FJ7zWnV8eSg+kA/Klu74b4MG3U4LnpYaY1PNFBptyGXO+oV+tLhBe4FYLW5vRGRwWzMoEHv+TI9OGRtMakwKP2L0Du2yA4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR07MB3964
X-Proofpoint-GUID: UNkeRXBESgEJ6PmqVUjU_FGbcH0njjKG
X-Proofpoint-ORIG-GUID: UNkeRXBESgEJ6PmqVUjU_FGbcH0njjKG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-09_02,2021-12-08_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 clxscore=1011
 adultscore=0 mlxscore=0 lowpriorityscore=0 impostorscore=0 mlxlogscore=733
 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112090030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_221137_714015_CF98E320 
X-CRM114-Status: GOOD (  21.67  )
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

Hi Vinod,

Do you have any further comments on this.
The implementation follows the same approach as is done for Cadence Torrent multiprotocol Phy

Regards,
Milind

>-----Original Message-----
>From: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
>Sent: Thursday, December 2, 2021 7:43 PM
>To: Vinod Koul <vkoul@kernel.org>
>Cc: kishon@ti.com; robh+dt@kernel.org; p.zabel@pengutronix.de; linux-
>phy@lists.infradead.org; linux-kernel@vger.kernel.org;
>devicetree@vger.kernel.org; Milind Parab <mparab@cadence.com>; a-
>govindraju@ti.com
>Subject: RE: [PATCH v3 13/15] phy: cadence: Sierra: Add PCIe + QSGMII PHY
>multilink configuration
>
>Hi Vinod,
>
>> -----Original Message-----
>> From: Vinod Koul <vkoul@kernel.org>
>> Sent: Thursday, November 25, 2021 10:41 AM
>> To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
>> Cc: kishon@ti.com; robh+dt@kernel.org; p.zabel@pengutronix.de; linux-
>> phy@lists.infradead.org; linux-kernel@vger.kernel.org;
>> devicetree@vger.kernel.org; Milind Parab <mparab@cadence.com>; a-
>> govindraju@ti.com
>> Subject: Re: [PATCH v3 13/15] phy: cadence: Sierra: Add PCIe + QSGMII
>> PHY multilink configuration
>>
>> EXTERNAL MAIL
>>
>>
>> On 24-11-21, 07:33, Swapnil Kashinath Jakhade wrote:
>>
>> > > so this is pcie->qsgmii ->ssc/external/internal ... ok
>> > >
>> > > > +				[NO_SSC] =
>> > > &pcie_100_no_ssc_plllc_cmn_vals,
>> > > > +				[EXTERNAL_SSC] =
>> > > &pcie_100_ext_ssc_plllc_cmn_vals,
>> > > > +				[INTERNAL_SSC] =
>> > > &pcie_100_int_ssc_plllc_cmn_vals,
>> > > > +			},
>> > > >  		},
>> > > >  		[TYPE_USB] = {
>> > > >  			[TYPE_NONE] = {
>> > > >  				[EXTERNAL_SSC] =
>> > > &usb_100_ext_ssc_cmn_vals,
>> > > >  			},
>> > > >  		},
>> > > > +		[TYPE_QSGMII] = {
>> > > > +			[TYPE_PCIE] = {
>> > >
>> > > now it is reverse! qsgmii -> pcie -> ... why?
>> > >
>> > > what is meant by pcie->qsgmii and qsgmii-> pcie?
>> > >
>> >
>> > Multi-protocol configuration is done in 2 phases, each for one protocol.
>> > e.g. for PCIe + QSGMII case,
>> > [TYPE_PCIE][TYPE_QSGMII] will configure common and lane registers
>> > for PCIe and [TYPE_QSGMII][TYPE_PCIE] will configure common and lane
>> registers for QSGMII.
>>
>> Then it should be always common + protocol or protocol + common, not
>> both please! Pls make an order and stick to it everywhere... If that
>> is not possible, I would like to understand why
>>
>
>Could you please elaborate what do you mean by " common + protocol or
>protocol + common, not both please!"?
>The order is same everywhere which is common + lane configuration for
>protocol 1 and then for protocol 2. For multiprotocol case, PHY configuration is
>based on which protocols are operating simultaneously. So e.g.
>[TYPE_QSGMII][TYPE_PCIE] -> QSGMII configuration when other protocol is
>PCIe Which might be different than [TYPE_QSGMII][TYPE_*] -> QSGMII
>configuration with other protocol.
>
>Thanks & regards,
>Swapnil
>
>> --
>> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
