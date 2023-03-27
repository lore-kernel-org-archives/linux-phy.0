Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 326B9C7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 05:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYQUg80IuDwxeBW3Qa91pJwtouM3IUkzEDD3uL8zfX4=; b=SIeUQox1XMVQx0
	umyD0Pszu3ssF+vIHLWg+WCbkhyoejIyrn/silyAebRTHcQYK6Qc4ImH+sOyNbxqJ1FMdAM7S00Ua
	bSl317cwFGFFtQtHWeOwYOvGyDHrfKdMcnCthAOGEubfwGsmhmjV8ajIHVXQ4R2OPjrONkFuZc9Es
	PdRAbm4gTilSqfah9iotcqXi3qjxxJGntxkGkb6XFC+YtbXQ3nxrFTRfZbHuAoPthmGbImut2BQgv
	+hduAr4TR1azrgGZmOafBUtWDja0Axcnkj2HeW3+BLPvxVvZLN0CkZPSVZaXxQ/sHlEH0tx1WFuPB
	JUpddaBG2KJWPGt0CL5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgfV6-009pJ3-2M;
	Mon, 27 Mar 2023 05:34:36 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193] helo=mx0a-0014ca01.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgfV3-009pHp-0L
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 05:34:34 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
	by mx0b-0014ca01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32QLWGc0027719;
	Sun, 26 Mar 2023 22:34:18 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=/81IUI0e5gw2xPqM1tw3Ys8Yy+ICOt08deLUtyoM+V0=;
 b=PcoSBMDiOxOY6U3qh7zWvRI99kW61Kuqkz6pxFMMqnz3xArfpIBOoanwA9d3ViRgHsqB
 0NtgNKikU4fQdxskGg4Cfg0jMURgJudVE1/VB08BC/hkuGR8fF2e2PBrnm9btyTqY+2m
 MFOoIC9kiaVRwE15rv1MeUnv7vXALyzIdJIUL4BI8YACWaB/kwBXaZsGDPqVRuDm5AED
 Qqm3mJffjGadhODzwDmij0GzlAY/B5TGYmc434ByI4h0TdwdtPkw7VvM30yRtGX73FhR
 DsArW9MunGePaHqzaHikQIZdMneBijzey/Zne7p61JE2zEIINezZKPF2WgQCyZdODBPc kw== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0b-0014ca01.pphosted.com (PPS) with ESMTPS id 3phvj0e1je-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 26 Mar 2023 22:34:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HhG4bHS5Yq02xLT02sxwVtJnCWOWsY5kSgUqK6AyewUFV3rN7IlKcxVwI08QzPorciT/JoG8yBJfqAVS5csSFpltOaDaCro3qsh+D+buOmPNJsCTfKvmu8RlUBLI8E4LcgCuIY53JSxMo2lzLbz6gfbkcUJHT5FVimpZybQ3lEsjPYZRDSOjGJofu1Of8FaR3VFyRIfYqZMAogpBNCNwpUUejshuUtzV6UPW3GhQgoK5LSlYmkOEZvX99LQRhvBBmZMniJalsW6ebg9T2N8nL1xK+ZduNGM2ogmkKodtFxb8NxBYm+yZ6jstoS1nsILhxy+mlLMPsE3LVHzCkHyBBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/81IUI0e5gw2xPqM1tw3Ys8Yy+ICOt08deLUtyoM+V0=;
 b=eJWUIi73I9CrhWJKaKzmnwdkqs0skPl2M74n47UOwEF/l2G3zIhOfey6PTnllxA3kQIzpnljiIxDBLi24N/CobprKCQkDB7CduT6QteC+Ei6emf1ql+7pv4WWjtlD26su9rcOVZh6MJ7nIu8s0jRyyqmEkluaIAENTnlZOl3dutLyItpRCVd/q3S4CWOyXOyHb2Q1A/o73jEkoLDqsoEQo3W3J5BToxwM9c+jZ5rzqQPERr4YVILBwJzQx7wQI2O18H2l7G79zadtCDwrT8zGXvCI+KE/+QbuDqnJlTnZKrFlDXX1DMBZKu2/v6dt/XDdnDYtsJDZO4QcgvoePMamg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/81IUI0e5gw2xPqM1tw3Ys8Yy+ICOt08deLUtyoM+V0=;
 b=W8TUe14CgIwPctgH7oYH4DV5Y0y2YJzRjplrEgWhT3tqm+JQ8ZGB0jYWQSywMn6Yhy1p5G5BBQb6EaRFPrn2ATT4feCXJDv+WefukrWusrSUUvO3EXs2itPpWsWtN2QPyzZJL9E9gH0jVVqIHdraBXwBHY1DAvs+7XvdF99qz1Y=
Received: from DM6PR07MB6154.namprd07.prod.outlook.com (2603:10b6:5:17e::20)
 by SJ0PR07MB9666.namprd07.prod.outlook.com (2603:10b6:a03:4e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Mon, 27 Mar
 2023 05:34:09 +0000
Received: from DM6PR07MB6154.namprd07.prod.outlook.com
 ([fe80::6d9d:8f21:f49b:6acc]) by DM6PR07MB6154.namprd07.prod.outlook.com
 ([fe80::6d9d:8f21:f49b:6acc%5]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 05:34:08 +0000
From: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
To: Roger Quadros <rogerq@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
        "kishon@kernel.org" <kishon@kernel.org>,
        "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
CC: Milind Parab <mparab@cadence.com>
Subject: RE: [PATCH] phy: cadence: Sierra: Add PCIe + SGMII PHY multilink
 configuration
Thread-Topic: [PATCH] phy: cadence: Sierra: Add PCIe + SGMII PHY multilink
 configuration
Thread-Index: AQHZRTVZZt7PSGILJ0qEJdebsUpxC67YBBOAgDZMgeA=
Date: Mon, 27 Mar 2023 05:34:08 +0000
Message-ID:  <DM6PR07MB615438BAA6DA35E5FFE4737FC58B9@DM6PR07MB6154.namprd07.prod.outlook.com>
References: <20230220141216.25326-1-sjakhade@cadence.com>
 <c7bdaf8f-d377-9fdc-c11a-747c65775b3c@kernel.org>
In-Reply-To: <c7bdaf8f-d377-9fdc-c11a-747c65775b3c@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref:  PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2pha2hhZGVcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy1mZDhhN2ZjNS1jYzYwLTExZWQtODVlNC1jOGY3NTA0NDIyZDhcYW1lLXRlc3RcZmQ4YTdmYzctY2M2MC0xMWVkLTg1ZTQtYzhmNzUwNDQyMmQ4Ym9keS50eHQiIHN6PSI5NTEiIHQ9IjEzMzI0MzY4ODQ3MTI5MzAwNyIgaD0icU9ieGQwSTFSVlFuTXhBSU12QjRWVk5kZVR3PSIgaWQ9IiIgYmw9IjAiIGJvPSIxIi8+PC9tZXRhPg==
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR07MB6154:EE_|SJ0PR07MB9666:EE_
x-ms-office365-filtering-correlation-id: b3b97cdf-9837-4bea-4137-08db2e84e320
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  betnF/mc+RAopgT/vycFl+Nfo3Pkpg5oUrz/3UG59MoqqCRtcgi9akcC9zy8xZ69ivFEgnHgXvVbDV5Plh3gXkiXYdjduXJjallX8c1WOUo4YeHKVw4SAzVIhuaWnVGapS1dpif/D9VVPanuDIFGlXaQ0tvoT3iFgOEUxaT55qL1WGJlshu7BswBr6pCq9qduwr0K1WM/O4j38Vnpp1Vnlyz9Rm6PyjC1chth4P6njmb9nSOvVj9v3as5RUYmF1x5mPJ+XZrGGE5eUwWWhOQJbTUeQ7In2wBWJfLcLLVVL0FUtrb40DiWgYTGorfkvBXWgVuQv6PuGat3dAynCHailrv5Xz9wFhmNdK7DBy8FMY/jlheho7YqcTGVKv0WUhV5UG/Tdur3CSN3Xw/Ekgs7Fm4HCCo1KG0+X57eSdaHEZnDcFaHTLOlNl/h6O8AwnVLITq1Y36AM1Vkl8tn7MLOOdS3CwKCmzVIUhCsqWu06gKKVHhZ08tPO4VMetzm1KKeiL6xGX+gZ+V2koyp427XO1pam6bFb5ABk+4ccETrQQ4nyeqMH/VZqdTrH6KcUmWpYAmeL/I7akgqHaQMtHLz+ge17XY1Eln3NmTTEXctV71n1OBTfzkn24PYW92wPTR6b/Uwr/6oHnHFdp9X8wr/85hMoudfxLB5evlVfx+hc4=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR07MB6154.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(136003)(396003)(39860400002)(376002)(36092001)(451199021)(8676002)(83380400001)(52536014)(4326008)(53546011)(26005)(6506007)(8936002)(7696005)(186003)(9686003)(478600001)(64756008)(33656002)(66476007)(86362001)(110136005)(71200400001)(66556008)(66946007)(4744005)(38070700005)(316002)(66446008)(55016003)(38100700002)(122000001)(41300700001)(2906002)(5660300002)(76116006)(107886003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?WXhPemJOYlhwRlNKTTJOTVRHWURveUxFQzlCcUxXOVRGVkZSU2lCaXVrc1FI?=
 =?utf-8?B?RmFzT2ZHUXhmcWZZQVhNTUhpUXdldGZMdGV1aGkvQUdNWEwyejk2dm9rSURr?=
 =?utf-8?B?WVVkclZtWWtRRXBCUHE3RGpWYStFbWFvZkNUbThORkp1M2E1dDJrYTZwT2NI?=
 =?utf-8?B?SjY2S3RTL29WcWVLanNaMlh6UnZFRjRPUUI4M3FNa3V3dTEyOHFtS1ZuZTRO?=
 =?utf-8?B?ZTVBSHNWQXJlWlVpdVNPY0lCNkM0YWxWYkFSOEpMTzNWS09DeEk2WEtncG44?=
 =?utf-8?B?a3YxeERGb0F4bDFseGwyVlJZZnJQZUxuSTFRTXN4VkZ0UGo1b0F0UGc4V0lv?=
 =?utf-8?B?OEFWdy9VSDNtclJRYVJUcDlOckRGd2xnOUZJTVhHbWt4dWx1VlJyL1NiL3R2?=
 =?utf-8?B?N1ZOdWpxT3N4Tk1WQmpuZlJmZFNlY3VQUFhLd3QwWlloMjFzdGJZdjlvWmlI?=
 =?utf-8?B?a0tQWm15Z1N5Z09MeUUrNnFiNWlqc3c5MktucktvbW5jcWI0TlIzVDJ1Y1NO?=
 =?utf-8?B?b3A4aHpiWVRneG1NOTdZOUlsb0V3T2R3anVhM001TEFvdVYwTUxxR24vQTQv?=
 =?utf-8?B?RkRicGNYWmxJU3RNMzA5dlR1aWtkS3hBQ2xLR0VncXF5Wi9tTzg4MjVqRURn?=
 =?utf-8?B?RWMxSG9QaDgrMWdIRVBocDZhSDkrc2EwUFhNcHVMOThhd2VYcGYzVnYzbWJR?=
 =?utf-8?B?ZU14dUp0K2NsYlBlV045WEc2NXFrYlM5Z0hLTUtzcWNmaVVCVnI0NTdZRFYy?=
 =?utf-8?B?ajV3RFpPL1d5dkNydlJQNmRMTXB2eE16d1VwMlZWS3BLWDdOczdKaURXWlN3?=
 =?utf-8?B?bHcreWlrVFFQNWdVZ21VQXBTZ1RzYzFwQXhMU0VOZkxpbW83UTNPYnhlWW1X?=
 =?utf-8?B?dHJ5MWsrMWJRUitRZ1Nkc09vdktMckFlRlllTmZxWVBXSlNQN0svSEZnK0sw?=
 =?utf-8?B?aSs3ZU8vQm1zbDE5REt3aWtlSXp6c0tidldEZ3BPSWJ6SFNWazRpWS9waUIv?=
 =?utf-8?B?WWtEZE5UVkQ1WTlwMURvU0ZWeGJoeWlGQzJkRDNORzhvaTgrQWE4L2xzQkNr?=
 =?utf-8?B?bDV3b05KV1NKa3VTK0JEWm0rYmNqUkd6UytoRDJkQlZNanNxR1FERlhORE42?=
 =?utf-8?B?anVnOTJGeHRWM2xqQjVCQVg1alBMeW5ERW44MEhGNjF5YWNnV2h6TUFlV25w?=
 =?utf-8?B?Q1ZLNUpFQXZMWEloUGNkTGlHRExOcG5QWnJqb1VBZWdVV2lFOThpYkVWTDI1?=
 =?utf-8?B?SWgrdzZDT2drOC90T29SSDFsS3JaaFcrOGdmSHZoc0dRRloveTl4dytZMjk1?=
 =?utf-8?B?Y09ydVp0cmtNZFRIUHk4SFIvMURBWVVFc2tDdkdsZjNpYmpldyt6NXRBRkd0?=
 =?utf-8?B?TDRXc1NPWFRyb0FWR1h3b1ErSTA2MWlpMDk3UnhWcVkyWnFVVmk1NmlsZTRw?=
 =?utf-8?B?QmczaHhzdVpRWFEyaTBRenZkdWJpQURuOVltaHlXcG5LcEVjQVV4bVR5Y25V?=
 =?utf-8?B?SDVDeFdnUkxRd0pRUnZwanhKNnRpbEt2N2lTT1AvNXpuR3FFZzJMODJOQWJ1?=
 =?utf-8?B?dzJtR0toQnRzR2JwbjBtV1lrZTJiZTdiRzdxRVlscDdFK1BEc0E1M0pBWmR2?=
 =?utf-8?B?NzVhVXN6UitBcHFVcHZydC80bXdPN2VRRUxuRmQxK0ZOWWRkd2ZEVFNWeG5Q?=
 =?utf-8?B?Tm5RZElXWGdiWjUwcFlZdlhpckdoVThFTnNJaTB3MmhTV0ZuYmRLRlFTNG1M?=
 =?utf-8?B?NkV5YVdhRklLVU5qZkl6OVB4aDlUSWxKbGRoVnRaaFNCanNOaSt6Tm9KQm9Y?=
 =?utf-8?B?VXRCRDZyc1FZTzgwS25LbXo3S2hpOUxpYkdrK0c3WWp3Y1hCUElaQUU4emZa?=
 =?utf-8?B?d21KWURsN0RDM25pWE5QMXJoZUN0ZkMxYUlCdG5OSEJRWmd1Nm82dmVMVTA1?=
 =?utf-8?B?eGVVZnlKR3NDSWZlOWJPTG0vYlF2UG1LTm9VbnFnclc1akl4azRLa0NjWUdC?=
 =?utf-8?B?TkZCRzI4V1UvVTVTdjlOczBYY2Z4U21WNE0xWjg5eHhkRXNJbUZ5Tjl6OHl5?=
 =?utf-8?B?MmZIVFF4cnFGblBQbUt2T3V2VWREYWxkNXdrVVNtRjNWdTJtSmVjTThDdlln?=
 =?utf-8?B?bXNOSndvNmx6aWhnVzZPMHR4Nm52VUhrWkg0ZFhueUlHem4zZlJwTXVRRUVQ?=
 =?utf-8?B?cXc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR07MB6154.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3b97cdf-9837-4bea-4137-08db2e84e320
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 05:34:08.3534
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ze5zGTzRxzdGSdNi6C6qrCXqYBgr0qscvYRZQ90CgSUz3MvzY86EFslqEaWpl1k7wDJdrVZHzARhx9dQR5I8639kJ5okrE/Ig2vnrIIpnDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB9666
X-Proofpoint-GUID: o39Dk0_if5inIDSMVdDH4Qn2TfDREtdO
X-Proofpoint-ORIG-GUID: o39Dk0_if5inIDSMVdDH4Qn2TfDREtdO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-24_11,2023-03-24_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 impostorscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=998 spamscore=0 mlxscore=0
 malwarescore=0 phishscore=0 adultscore=0 clxscore=1011 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303270046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_223433_748590_B6A9FBB6 
X-CRM114-Status: GOOD (  14.16  )
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

> -----Original Message-----
> From: Roger Quadros <rogerq@kernel.org>
> Sent: Monday, February 20, 2023 9:50 PM
> To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>;
> vkoul@kernel.org; kishon@kernel.org; linux-phy@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Cc: Milind Parab <mparab@cadence.com>
> Subject: Re: [PATCH] phy: cadence: Sierra: Add PCIe + SGMII PHY multilink
> configuration
> 
> EXTERNAL MAIL
> 
> 
> 
> 
> On 20/02/2023 16:12, Swapnil Jakhade wrote:
> > Add register sequences for PCIe + SGMII PHY multilink configuration.
> > This has been validated on TI J7 platforms.
> >
> > Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> 
> Reviewed-by: Roger Quadros <rogerq@kernel.org>

Could you please consider reviewing and merging this patch.

Thanks & regards,
Swapnil
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
