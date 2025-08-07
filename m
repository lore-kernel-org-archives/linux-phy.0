Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4419C87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 17:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMDNYhdLoY7aaIKH02Ldj0LBJ8EoGwU/cpo/UVT7J94=; b=1RvQTjxUxE7R+f
	iUshmOtQNGfBK27e0yDJI2wBtE1SfHVqR/DIsYulQl+o6kZVgixEr1MP6zhmmcdqQ9Dnt3bFDhFpp
	3TvPLq+4mWh1p9cNiCu/TS/WDFpAS+gDlRNf6W9HbmrMzaUu8IrPnkgYsAXAqFxcQeo+RkpeOumUj
	x2gNMWyNE7+RCHGku/dgn3gNrR83FKHoha0VeDxA1P209Y4Rc1RkIuNKy7Z8n4EHOTHgiavGv9prp
	Ip0cspkH/mi7OZNcuESfJMkILQVJy7BRwkuQKZhRbj9RWL5XoCvBu1dp3H586VzZp1NSf5u2Gt3EA
	ABPptoeSK0T0HJ6XRPmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4t6-00000001Hq4-1SHc;
	Thu, 07 Aug 2025 17:58:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4qx-00000001HRo-2IsJ
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 17:56:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 577EDJOF030191;
	Thu, 7 Aug 2025 17:56:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6YHORUoMsrOOCbSVlY5NdFABShlBBXio8F17YDO65R0=; b=Q1flqUP6PMBVoDCh
	4WuU/Ye6HRn0UYWMJediByNq9gVnohTMXsCGfMwGaUN7Z0Hn3ZtYM9rhzAGF/onQ
	9Wkph3nL0JD4keWxzvxJN9TWQX3wOj1neujKNc1H0sSZW7pJ3T5w7ko09nNHdglb
	ohQ280jUlCO2D54Z0lH4LGiZcF/0fzmNDaiww+izGdcPs4U6RPKwcVT9SlD/S6D9
	9iPMA4d2S41SPI3S+9N/43ojTeGGkBHwqNftfTGNYycfHPTaKxGhqTgmykITj3Z9
	GXOc4Eqm8V5YxfDvGE6Q+T5cTfw2d5/1ppGzursKE1OJNz0FYs10itpO7MFESZI4
	y7qMKw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvyyb4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Aug 2025 17:56:28 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 577HuRmY002761
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 7 Aug 2025 17:56:27 GMT
Received: from [10.216.57.148] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 7 Aug
 2025 10:56:21 -0700
Message-ID: <31461227-3f3a-4316-9c8a-c851209d0278@quicinc.com>
Date: Thu, 7 Aug 2025 23:26:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>
CC: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <mani@kernel.org>, <conor+dt@kernel.org>,
        <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <685e3d36-c0e3-4faa-b817-aecc15976a25@quicinc.com>
 <c1435858-6288-4525-8c92-e27ed86cb55e@sirena.org.uk>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <c1435858-6288-4525-8c92-e27ed86cb55e@sirena.org.uk>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: f4X0BDZ2xxnLo2baqVvaSX_SGzcEVSXm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX6063Wcwgldw1
 ePf2g2CsxZDBs0GpvopTBrpv/lYK64lYg60azlmMSyGEpJTkBJRf1Yw5UAcQMRJt3Xtqi69D3Jk
 LE24U3CK88usnuU1gIm3U3TJ/YoPOlAy9XtgkPK9NVPQXAgPEz6oO6gAEOQlkAF2m7PqCpqw/CJ
 8Rf6bqobUPA5AMswFMYl6UeZQWS8ac/DACL5uYrjWzm08HilWV72o7d+Qy239uG4JM/lG2p21P3
 boqVAsTpAlNe8oWZZTvzshBp74cUOt9884jxgKfN1DPwrb7twN4WG3zdZtN+VRNnx+th2ZQ2P5l
 oEf72bIkznh0lKJrMmmUxAYwLD4rURFzIoOxDBR3vjUDiH1fFEXwaL4356GcsDGhq47DxMQPkZf
 zTHwaQ3U
X-Proofpoint-ORIG-GUID: f4X0BDZ2xxnLo2baqVvaSX_SGzcEVSXm
X-Authority-Analysis: v=2.4 cv=NsLRc9dJ c=1 sm=1 tr=0 ts=6894e8cc cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8
 a=Q3xy-p0DM1bs88ZO6TcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_105635_702971_68F08222 
X-CRM114-Status: GOOD (  19.46  )
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

CgpPbiA4LzcvMjAyNSAxMToxMyBQTSwgTWFyayBCcm93biB3cm90ZToKPiBPbiBUaHUsIEF1ZyAw
NywgMjAyNSBhdCAxMTowNTowOFBNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPj4gT24gOC83
LzIwMjUgMTA6NTYgUE0sIE1hcmsgQnJvd24gd3JvdGU6Cj4gCj4+PiBUaGUgaXNzdWUgaXNuJ3Qg
dXNpbmcgcmVndWxhdG9yX3NldF9sb2FkKCksIHRoYXQncyBwZXJmZWN0bHkgZmluZSBhbmQKPj4+
IGV4cGVjdGVkLiAgVGhlIGlzc3VlIGlzIGVpdGhlciByZWFkaW5nIHRoZSB2YWx1ZSB0byB1c2Ug
ZnJvbSB0aGUKPj4+IGNvbnN0cmFpbnQgaW5mb3JtYXRpb24gKHdoaWNoIGlzIGp1c3QgYnVnZ3kp
IG9yIGFkZGluZyBhIGdlbmVyaWMKPj4+IHByb3BlcnR5IGZvciB0aGlzICh3aGljaCBJJ20gbm90
IGNvbnZpbmNlZCBpcyBhIGdvb2QgaWRlYSwgSSdkIGV4cGVjdCBhCj4+PiBsYXJnZSBwcm9wb3By
dGlvbiBvZiBkcml2ZXJzIHNob3VsZCBqdXN0IGtub3cgd2hhdCB0aGVpciByZXF1aXJlbWVudHMK
Pj4+IGFyZSBhbmQgdGhhdCBhIGdlbmVyaWMgcHJvcGVydHkgd291bGQganVzdCBnZXQgYWJ1c2Vk
KS4KPiAKPj4+PiBUaGVzZSBkcml2ZXJzIGFsc28gZGVmaW5lIGNvcnJlc3BvbmRpbmcgYmluZGlu
ZyBwcm9wZXJ0aWVzLCBhcyBzZWVuIGluIHRoZQo+Pj4+IFVGUyBpbnN0YW5jZXMgZG9jdW1lbnRl
ZCBoZXJlOgo+IAo+Pj4+IFVGUyBDb21tb24gRFQgQmluZGluZyAoKGxpbmsgLSBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0
L3RyZWUvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy91ZnMtY29tbW9uLnlh
bWw/aD1uZXh0LTIwMjUwODA3KQo+IAo+Pj4gTm90ZSB0aGF0IHRoYXQncyBzcGVjaWZ5aW5nIE9Q
UHMgd2hpY2ggaXMgZGlmZmVyZW50Li4uCj4gCj4+IFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uIC5J
bnN0ZWFkLCBJIG1lYW50IHRoZSBmb2xsb3dpbmcgdGhyZWUgcHJvcGVydGllcwo+PiBkZWZpbmVk
IGluIHRoZSBsaW5rIHRvIHVmcy1jb21tb24ueWFtbCBiaW5kaW5nLCB3aGljaCBzcGVjaWZ5IHRo
ZSBtYXhpbXVtCj4+IGxvYWQgdGhhdCBjYW4gYmUgZHJhd24gZnJvbSB0aGUgcmVzcGVjdGl2ZSBw
b3dlciBzdXBwbGllcy4KPiAKPj4gICAgdmNjLW1heC1taWNyb2FtcDoKPj4gICAgICBkZXNjcmlw
dGlvbjoKPj4gICAgICAgIFNwZWNpZmllcyBtYXguIGxvYWQgdGhhdCBjYW4gYmUgZHJhd24gZnJv
bSBWQ0Mgc3VwcGx5Lgo+Pgo+PiAgICB2Y2NxLW1heC1taWNyb2FtcDoKPj4gICAgICBkZXNjcmlw
dGlvbjoKPj4gICAgICAgIFNwZWNpZmllcyBtYXguIGxvYWQgdGhhdCBjYW4gYmUgZHJhd24gZnJv
bSBWQ0NRIHN1cHBseS4KPj4KPj4gICAgdmNjcTItbWF4LW1pY3JvYW1wOgo+PiAgICAgIGRlc2Ny
aXB0aW9uOgo+PiAgICAgICAgU3BlY2lmaWVzIG1heC4gbG9hZCB0aGF0IGNhbiBiZSBkcmF3biBm
cm9tIFZDQ1EyIHN1cHBseS4KPiAKPiBPSywgYnV0IHRoYXQncyBzdGlsbCBub3QgbW90aXZhdGlu
ZyBwdXR0aW5nIHRoaW5ncyBpbiBEVCAodGhlIHByb3BlcnRpZXMKPiBhcmUgdGhlcmUgYnV0IGRv
bid0IGV4cGxhaW4gd2h5KSBhbmQgaGF2aW5nIHRoaXMgZm9yIHNvbWUgZGV2aWNlcwo+IGRvZXNu
J3QgcmVhbGx5IGFkZHJlc3MgdGhlIHdoeSBtYWtlIGl0IGEgZ2VuZXJpYyByYXRoZXIgdGhhbiBk
ZXZpY2UKPiBzcGVjaWZpYyBwYXJ0IG9mIHRoaW5ncyBsaWtlIEtvbnJhZCB3YXMgc3VnZ2VzdGlu
Zy4gIFBlcmhhcHMgdGhlcmUncwo+IGVub3VnaCBib2FyZCBzcGVjaWZpYyB2YXJpYXRpb24gdGhh
dCBpdCBkb2VzIG1ha2Ugc2Vuc2UgdG8gcHV0IHNvbWV0aGluZwo+IHNwZWNpZmljIHRvIHRoaXMg
Y29uc3VtZXIgaW4gRFQsIGJ1dCBpdCdkIGJlIGFub3RoZXIgc3RlcCB0byBtYWtlIGl0IGEKPiBn
ZW5lcmljIHRoaW5nIHRoYXQgYXBwbGllcyB0byBhbGwgcmVndWxhdG9ycy4KCkhpIE1hcmssCgpU
aGFua3MgZm9yIHlvdXIgcmV2aWV3IGFuZCBmZWVkYmFjay4KVG8gYWRkcmVzcyB5b3VyIHF1ZXN0
aW9uIGFib3V0IHdoeSB0aGVzZSBwcm9wZXJ0aWVzIHNob3VsZCBiZSBpbmNsdWRlZCAKaW4gdGhl
IGRldmljZSB0cmVlOgoKMS4gUmVndWxhdG9yIGFuZCBQTUlDIGNvbmZpZ3VyYXRpb25zIGFyZSBi
b2FyZC1zcGVjaWZpYywgbWVhbmluZyB0aGV5IApjYW4gdmFyeSBzaWduaWZpY2FudGx5IGFjcm9z
cyBkaWZmZXJlbnQgcGxhdGZvcm1zLiBGb3IgZXhhbXBsZSwgc29tZSAKYm9hcmRzIG1heSB1c2Ug
ZGlmZmVyZW50IGdlbmVyYXRpb25zIG9mIFVGUyBkZXZpY2VzIOKAlCBzdWNoIGFzIFVGUyAyLngg
4oCUIAp3aGljaCBjb21lIHdpdGggZGlzdGluY3QgcG93ZXIgYW5kIGxvYWQgcmVxdWlyZW1lbnRz
IGFuZCBzb21lIHdpdGggClVGUzMueCB3aGljaCBoYXMgaXQgb3duIHBvd2VyL2xvYWQgcmVxdWly
ZW1lbnQuCgoyLiBVRlMgUEhZIGxvYWQgYW5kIFBNSUMgcmVxdWlyZW1lbnRzIGFsc28gdmFyaWVz
IGFjcm9zcyB0YXJnZXRzLCAKZGVwZW5kaW5nIG9uIHRoZSB1bmRlcmx5aW5nIHRlY2hub2xvZ3kg
bm9kZSBhbmQgdGhlIHNwZWNpZmljIFBIWSAKY2FwYWJpbGl0aWVzLiBUaGVzZSBkaWZmZXJlbmNl
cyBjYW4gYmUgaW5mbHVlbmNlZCBieSB0aGUgTUlQSSB2ZXJzaW9uIG9yIApvdGhlciBpbXBsZW1l
bnRhdGlvbiBkZXRhaWxzLgoKR2l2ZW4gdGhpcyB2YXJpYWJpbGl0eSwgZXhwcmVzc2luZyB0aGVz
ZSByZXF1aXJlbWVudHMgaW4gdGhlIGRldmljZSB0cmVlIAphbGxvd3MgZm9yIGEgZmxleGlibGUg
YW5kIGFjY3VyYXRlIHdheSB0byBkZXNjcmliZSBib2FyZC1zcGVjaWZpYyAKY29uc3RyYWludHMg
d2l0aG91dCBoYXJkY29kaW5nIHRoZW0gaW50byB0aGUgZHJpdmVyLgoKVGhhbmtzLApOaXRpbgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
