Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF8DCC00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 04:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vn4Fkekap1O90Kjj2z1xaRfw3JlTT45u1cRAxnzFRp0=; b=xldPSu4VFdCZBa
	AY3Tjrc22LT+VoGaswsPZoo0ZNzNPXj4bl9hfgp0iCn4zCnC6BpXv3OAfJfbDvELZyHnv6bzL1/g7
	aZfXiqxCaTcuotr3lgTn7PRqV/CFYBfKCuxKsyNx1CP6FCy98cOq8wxQgKkmguZH2dozIJehkrBJU
	IZGowwenvpWhvxgdHcj27BgMycLyzDyrd53GgVxKbattYOzrf6WN/oCBRAtNBmxAS3ZPntJjT99AR
	qLtQA5kzSlNH+Tb73yKb4PDGy19reW+MxDLF/c1mvkBg0yUUlnuNK5/jxRJgV9wpGtgLo4a6jAWyE
	KU77wLUI0fAdizRcR1ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMMjD-00FFUx-CW; Fri, 12 Aug 2022 04:56:59 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMMjA-00FFSj-3q
	for linux-phy@lists.infradead.org; Fri, 12 Aug 2022 04:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1660280216; x=1691816216;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=T/kAP41KDV55dqAB6JgnRXh4JA6Y1BCc6oZT7kuknXQ=;
  b=Q6rZTLVty5YYAnSl97FMDFXP+H7VIZjs0ISO+c3K2CoOnyfKZ0Ly0RBH
   c2BrREIQBFROkMa/gBGTWZ9UbnLn/s5Y3KyosnejVPUa8ft6dd3EAsGEr
   M/XnOKgeZo+m4e/f/so/soKowMby9i58z4rh/+xPGdim9m0q5qU2ZPtyC
   T5tttFXiJAniVEeMW4PW9/fF/YJB5bzL8hS1uqGk4lCafLF4BX0qX5jyk
   k2EQZqljXzOen9Jv6bRwMQBy3aIr8VJD+XItHQl08Kgk0wJh8bBC5YiGF
   I/6KJ3PUO8oCfto3bFfQibKwEe5DdC6pcEJhHyFl+aSlHAnzbls3AUwYE
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,231,1654531200"; 
   d="scan'208";a="209059557"
Received: from mail-bn8nam12lp2171.outbound.protection.outlook.com (HELO NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.171])
  by ob1.hgst.iphmx.com with ESMTP; 12 Aug 2022 12:56:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lXIhj08bpL1FKaPkYCRr6D/lx8TpjH5520us2TwOuoDpPDXnR/bOaIVE6LclY+mgPRUG2lfoMJdq9eLN8niqp7sCqlXznyWFdB1ETVTxKmKKAmuCZiHhIbLI7ipJqbRIkxZzNvpaCto3wnm0Qhb21xZbZNthGsx8+/TXXGiMNyYo7sh2JxMA3zdxHt33BfIdE70MheACgbvtwX91Hovzl3dwvrZzGuIuMsqWg4NkPPqbTw2QF9yiGYZhIbWFNxJ6aDeUzd53GfPFjqKGOhJ6Z49CQJVnIjn4FUYfcr2cHa88wrBJVWc23gdbj/p5VAgX9AhksbYuhQHuBlqGAjcENQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKNkKh1bbxNW1cSCd+csqwIRddKWDZ3z3dQ0vLj4ViI=;
 b=QwsnGPeW4S4lt675siczwa42UBjmqHsVjyxCwkH3cWTyEHAs1rQDNR3kaRiP6zzjmhxRMIDe1cmbqYq2OlDWOoQjNEEHJLGX0RSo1kf86aOR3UdxA3NAsyBpIbCEcebwnFqzV3RvHy0jD9KdWkBpJe0sH4zCge8bYnGQudgknBfI4c496TQjZYGM1FTnkS9WdDr9/fCYIrx58WBeMtPWSUMH81igaDrQhUsJ2gOoHkyPs/heGzZfp//8TnuTbGrOf13VlSSNvh5/zHlUCEMO11JZF+UlgfnfkohY2nCCUC9YQRrstN1AnChb3NRnB1c0JVKUiQdF0D03oP/AP9xLVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PKNkKh1bbxNW1cSCd+csqwIRddKWDZ3z3dQ0vLj4ViI=;
 b=nSKZ0XvNKpTBC4iT54m1sJuhsaHR+9DFS6WD1093FD8JLMv7/NT9ZwV2W4XDHO/xfkXPRpqXD3LQixhYt+AdFmOIGMXRVm5qOkxUPae1pZ2FUlNv/Q6hh4kfBUcWZGviMrZxAKRHFIjtVCsP1rLZkdasDuhMX2Zfj+yxggiWyAU=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 BY5PR04MB6626.namprd04.prod.outlook.com (2603:10b6:a03:223::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Fri, 12 Aug
 2022 04:56:51 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89%6]) with mapi id 15.20.5525.010; Fri, 12 Aug 2022
 04:56:51 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index: AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK2mvtwAgAGhgwCAAsWmAA==
Date: Fri, 12 Aug 2022 04:56:50 +0000
Message-ID: <20220812045650.nzisin52zfbbwhsq@shindev>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
 <20220809094234.cpv6tdpmqfb3cfqq@pali>
 <20220810103654.w3yurhdeulgyepbb@shindev>
In-Reply-To: <20220810103654.w3yurhdeulgyepbb@shindev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff01e45f-d154-43c6-f696-08da7c1f11c3
x-ms-traffictypediagnostic: BY5PR04MB6626:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  KG3VRESpQuFWCHBu8rLchqDx4HW6fVjEoA1Cq3ruCQTqMAyxzxHshNjwGshpUx5nVZmVSRuKLj+Kk/X7bJcE8f16lJ8ZAicGl68VCQcdep+9KW2JMiUxgzdBC0FgUH/jXaVXtVwajGPM6kLOmFMW+Vks2HIx1Fg/yLmG48UzR3NiGLfQZvjuO2UWZbyv/yZHkrIo1zUFp1ufMKWTrwv/eyyhlfsDuOAP2dMeHou5/eoIK+tP+KH6GLElXeK09WBh0bY5p0Yod3Sa8virEt4yR0MoP59GnJnq1Lb9oifB/TxfU/RI2GVuGrHHlU4GkBqpoTVdpl8nIY1qQZTAIfYVSd6jlv3XXWB5P8L2jZki0Prcj8ds5Ej3OK154923SKjdQ93lZl9QdmswC2mcP6cD1mCm6eENWk0Gvd29zCKwqp3Vqwlc9gGvh8050PjT4xwXnNUsvDpmaRvN/OR5JGJRoIlPwGSv6OlkjA0lHE/0uRncBPxJnbwwxF8cg+voDj1pi1UTYINCjJzJ0QnRDjWK6B7hRItA1cLIf3ExvLkTXtUzoz9/sk/YCSZUNpvttI9ZqR8bJjmIhqNr2ffRkOHHQr50/BkdyFyQFwlUa5Eu76xP3b1sZVLgE3qonLCPTnTiSr01Z7H4wqAg2gat/+5de796KQQ5wUTjkeHWGhT/uGx8sXZpyzyu7nUvh1GJBUjSjsItSuW4e/nFesY5dswzPbjzlBsDM8vdjwU9+719U9yZPQnO3t5XZ3YyBwzJy+g+PSdH7HXXi1gf+/YPO/krjysjBrj5523bAtNMNSIJJbkRWgUyaosb3wfgDWxtp5RL
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(91956017)(38100700002)(316002)(44832011)(86362001)(64756008)(66556008)(66476007)(122000001)(66446008)(66946007)(82960400001)(4326008)(8676002)(8936002)(5660300002)(38070700005)(76116006)(83380400001)(6486002)(66574015)(6506007)(478600001)(6512007)(1076003)(26005)(41300700001)(186003)(9686003)(33716001)(54906003)(6916009)(71200400001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?6Rnp4/Po65uCKwpKOphJpHgsXZZ0fRhYryHIrpJyfA5nEjutCyWaBECqZP?=
 =?iso-8859-1?Q?w1PURJjE//rKJs5KtBeweqiPWbaRdUPLOVm5ThpYIwRcnYKl8LgZXe+xGE?=
 =?iso-8859-1?Q?bHDX3AciWhQMVG65w0Q/uK9Wapq/XostSpUgFuf1uYCE+qkmYpUhScOedL?=
 =?iso-8859-1?Q?KTJJOXgLmKymeVrL7VEg1Bd09I8wj6PTS1vvlZTY90IypbFkjXcZ7NJLV7?=
 =?iso-8859-1?Q?djPX3xoCVGLhwu0Wa1OY9bUD/19hLRwo7B4cMQmAX/fjTI8My6lFB+u8d+?=
 =?iso-8859-1?Q?h+wO8DXPaaZP5BknqMapBi6s1KqFs5d2+jzXp41bVMeQvYPpA8hEuNZ1IX?=
 =?iso-8859-1?Q?lMlb4P6M/20c9tme26aTouF2ZQKp1WDivnzZAqq+VZp1I6sujdigPe0hya?=
 =?iso-8859-1?Q?KHqkuLAc548h/HLJPVXVEk8Gglct50P3TU6Sg+zLTlRTFTLCsdSgcneJoU?=
 =?iso-8859-1?Q?7vU72ELuJTi88QSbpdyQ+XUY1CNqkmnEdsomgchX85tkBfeHrYa8SJb8lZ?=
 =?iso-8859-1?Q?6l3pONIpJS5wxz44OmnX/u3epc+YUqp0sNUP/0AHtfUZCge4y/QyM1lhAX?=
 =?iso-8859-1?Q?pB719YTAxyNNpGViqHGmX0VPZXUK8gZ+MBVIHfUdZRrjq2IGz6F8kIe060?=
 =?iso-8859-1?Q?BXJSj0PzjjkvXgXz85uI5WLUwFTqZccuVeDFT1Cy9N/O5CLbntGKWTg5O7?=
 =?iso-8859-1?Q?a3yTuf3FQ9h/9UEm7pPdjo5l/HIwWpoSN0YmWJYCrLPuwKkDcEWUBNtP1l?=
 =?iso-8859-1?Q?Ac5dMV2yISkrf3basSjVeVvW29Dhe9MgaFHYFZClP84zh9hEzY8r1kA1My?=
 =?iso-8859-1?Q?xxNYIRj2/YcjlMnwR68yPvDvQW/m8/+Oh9HhzjncM95JP5t9dcmr8l2S6y?=
 =?iso-8859-1?Q?t90CXgz7sjtfc9cx3bsXDPZMAHfuSLRxawoPNVJs1ojBl5fztfHLIevaQM?=
 =?iso-8859-1?Q?+WmS4nVbPV2/tNSpxRebs9rrSLOhR+yDV0JQ4n0ga3xdnS7/9siiOturQl?=
 =?iso-8859-1?Q?SEOaWAdlGpuODz5Vs5igxBd+n79D079rFHjhHgHtyHOIRiLZxZNaVjAJur?=
 =?iso-8859-1?Q?7ijsvJXE12FBOWuHn09AhY7308iLgfTFFJKXM09HEfqxQuBX34ph0EWExY?=
 =?iso-8859-1?Q?w4WQ9fhcHD26KgC6IkUNvSaPADfXGIRO6KOG5yPzxnwrHkY/GttwbqjJv5?=
 =?iso-8859-1?Q?7Fedr1bfNATC/BjQjyURS+lBhGg4c1k6zwP+OkbxEWC9G4WLteicfHHMTY?=
 =?iso-8859-1?Q?FEbGmLRhdO0txyC0BTC+KjRtGyrJwZoX1nB3EM4er+Kcgbcf16of+WI2ku?=
 =?iso-8859-1?Q?AXWYmfBptwfFPAoP3uCvrzLVk3ZgUchbCkStgWvit09O/Oq/ZqRNeBKAsQ?=
 =?iso-8859-1?Q?fMi/A2t5e9I1IL26SbrQHLdjkVFckR/JP/OCvTLKZzOkYxfwQa8m++Vi62?=
 =?iso-8859-1?Q?rmWg55ML2pfBebFcBYv0PuQHBU5I8M+eDeRAHhX60FHW+5889AttqzOPtN?=
 =?iso-8859-1?Q?NDtP7hw1cligINLNg3+CHNeEoxyEda97gh0wwhcuRVmfZeZOwKbT7cBgU4?=
 =?iso-8859-1?Q?OCbvoqCh2O8zW468xomjufXPsxFqb/zRBVw6EOzBYmfLIDf7VR+HPH8Gu7?=
 =?iso-8859-1?Q?UNirzBPECdZ03v1QxkiEFlhMltrrAlSz3fDZjphlQo9e6jFIwb7LbbPBIN?=
 =?iso-8859-1?Q?eQQWW3Z0tZ9G1+vRe0E=3D?=
Content-ID: <205391F976A74740BB21C9B67D46CB74@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	Yf9WolG9XxRwesoulxsPdaGzKbGs/sZ2XojUy6c47emMhhHbiIOOTCcMyvi/ZzC8j67EGhSiPVKwgCoUg5zduPmnw6wi4+hKBHxGcwGKDT7r4aXbbdyhhEbXeCbwTnurKQDbGRu00tZJGjvdahRK6kVinmP3zUIdKa7Lu4X9u65ndNV47pwZjmceikHrtZMrQBC2A0kjQursoKcqWL8wlYW6go1DJ512u9SRctyJMCOlJsaA/v49aQfZkUyvRRgaTNsv23fSp6UKP0BaeAztG8nDXBnOYCnhUuQAaGXGPH4hogphQhBqvDr7ZANs6Q6DcUc2Ws0xjQVzQYTNoFCSV3pwI6+aeNpiJPMO/qUoPP/j27Q3QWYQjmKkc3RS7pL2RV5dtnS7oA0xXLBc1i0HqBXkzOpr8PTwDN0txju986uDOhcQtYd5XI9zPbFJcBtoH0p+hjMxfheHy1+A79cNdCUBxXXji44McxSSNNGbZ7W6yICITi/4lcc8KZQzORza5vdA9bist0sSwQKBiJ/pHgiU0gbvxVntYjazMUg4TR8xqEsHd6SFbr7qWkK+FR+zcYk6wpCGuV/m3fjyw0SVJ66Ci33ol/nt99chQjTwwUmU2zkcUng5QATfKdYkjWjZ2UdG4NZ5Y13s7jBvfD8lPnhr81+hEBZpgLbxvhCZZCRDYPrD4NJ+8G6PZLScSKop0iNAw/Vg8X+SLTma4nv5gcr26eGrO+1oow7Ay37kpN3UW1puBIWWs6DU18hgzv6gyxguc1mR5ZOYxVqKcpxu9J4rO7dSVb886AY2jN4krlX7yFlqPC7fQF/xiVGAd+1YzeAreiXlFWjoh4iIPGd76g==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff01e45f-d154-43c6-f696-08da7c1f11c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:56:51.0076
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q6r6ERWDhvONf3QRQB57JFbt7xpMIwK8kHCSssatroaB45jtYTG3iTvOnpqC14pRcrExcx82Kdbt4wjgHaRYlGUqDBanX43wQ+fw9vVthaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6626
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220811_215656_516461_1C7470D1 
X-CRM114-Status: GOOD (  24.04  )
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

On Aug 10, 2022 / 19:36, Shin'ichiro Kawasaki wrote:
> On Aug 09, 2022 / 11:42, Pali Roh=E1r wrote:
> > Hello Shinichiro!
> =

> [...]
> =

> > Sorry for late reply. At the time when you sent this message I had
> > issues with office station and was waiting for repairing support. And
> > after that I forgot about this email.
> > =

> > Now I have looked at it. For testing purposes I took Espressobin V5
> > board and some random SATA disk (some Samsung SSD). I installed latest
> > firmwares (secure-firmware, ARM trusted-firmware and U-Boot) on
> > Espressobin's SPI-NOR and Linux kernel version 5.18.16 on SD card.
> > =

> > Disk is successfully detected in U-Boot as:
> =

> Hello Pali! Thank you for looking into this. So, there should be something
> different between your system and my system.
> =

> > Could you please check if you still have these issues with the 5.18.16
> > kernel version (IIRC it should be the latest 5.18 release)?
> > =

> > And could you please check if your disk is working fine in U-Boot?
> =

> Yes, I will check these points. Let me have several days to work on them.

Hello Pali, I've tried the latest 5.18.x kernel and disk detection by U-boo=
t.
Unfortunately, the issue is still observed with the kernel v5.18.16. When I
connect my SSD to the board, it prints out the message "ata1: SATA link down
(SStatus 101 SControl 300)", and the SSD is not detected as a sd device.

From U-Boot, my SSD is detected. "scsi scan" command shows the SSD vendor n=
ame
"SanDisk". I was able to look in ext4 filesystem on the SSD from U-Boot. So=
 it
looks ok from U-Boot to access the SSD.

  Marvell>> scsi scan
  scanning bus for devices...
  Target spinup took 0 ms.
  AHCI 0001.0300 32 slots 1 ports 6 Gbps 0x1 impl SATA mode
  flags: ncq led only pmp fbss pio slum part sxs =

    Device 0: (0:0) Vendor: ATA Prod.: SanDisk SDSSDA24 Rev: U210
              Type: Hard Disk
              Capacity: 228936.5 MB =3D 223.5 GB (468862128 x 512)
  Marvell>> scsi info
  Device 0: (0:0) Vendor: ATA Prod.: SanDisk SDSSDA24 Rev: U210
              Type: Hard Disk
              Capacity: 228936.5 MB =3D 223.5 GB (468862128 x 512)
  Marvell>> ext4ls scsi 0 /
  <DIR>       4096 .
  <DIR>       4096 ..
  <DIR>      16384 lost+found
                 4 bar
  Marvell>>


I noticed one difference between your system and mine: U-Boot version.
On my system, it has rather old version now:

  Marvell>> version
  U-Boot 2017.03-armada-17.10.2-g14aeedc (Jun 01 2018 - 15:39:10 +0800)
  aarch64-linux-gnu-gcc (Linaro GCC 5.2-2015.11-2) 5.2.1 20151005
  GNU ld (GNU Binutils) 2.25.0 Linaro 2015_10

Do you think it's worth trying the latest U-boot?

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
