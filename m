Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90642C87FD3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 15:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhBu6F7B+v+1bidOGJ+7tnzA8EoylnrcDHJkCSx58Q8=; b=bAC+W4y/p5aGfD
	ijuUpHzhNa857frfSjLELdu4fuL6f1/BHeVyWTNHVaDOJIf9rELakyBkwhteQvPuCO2riJIPR5Htm
	Ja5c/VUNyXKfAOxCXEAeaVT0J4S6mWX0uXPhCSDQdjzlxJEl1nKsdL79pgcnu4eHg42db8ZFXyoVl
	wNUnaLNslFdvnmV4XILWLyCFjiZODoVgfxnaEujyuqrxArrn9/wVz8kgGbg6rLm+Eu5rviB7QizP2
	oPTE6oD46kJBB8ALY5L+QRIUrowV+aoSep4/JuxMSbd2IGCmFLPXMr/YzqBdy+4+6wepZMTwF8NKb
	Y9ShSl8Q8NMK9j4qap2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukOvB-000000039Ts-0fJJ;
	Fri, 08 Aug 2025 15:22:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukOtB-0000000393x-1wpx
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 15:20:14 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 578F5NKf000995;
	Fri, 8 Aug 2025 15:20:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H+21hjpa8XJ6XRd6SoHfWWI7noNUkNVcdDwUeOUPVmo=; b=d5pTy9tCVXZOwHWY
	SJwANfzhsGw3MowAgZIpVLwGfGVWlNLP1Mf2BrpcFVNZQGBn+y9o+Wz2ZcqWzLDB
	7weNpMZac7PgFYuheU9WfbDW0uDzfZAbCrfxRDalgGlD53x2uxV8wbyXkG0c2Kjo
	bAZjkS+lfFm690bRJsV4RwLE/5l2910tA0DBo/VC4yp0pEkhRLe/kuwQkiJ/wHDJ
	H/8OePvTA6bjYrB049yozUYZiloFhzFTygqAQh+9KVx4dpk/Chd4XagE9hpwuHjK
	0QallPYYw/iesthsjjTXqkE6DWflT+knGtHO2cVz3VnFoJBAWhtAGgv2A2EUlu4i
	DAYljw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw3ac7y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Aug 2025 15:20:04 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 578FK2Sx026396
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 8 Aug 2025 15:20:02 GMT
Received: from [10.216.30.51] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 8 Aug
 2025 08:19:55 -0700
Message-ID: <5e32be05-0dbd-4d6f-879d-8ce97fb430ba@quicinc.com>
Date: Fri, 8 Aug 2025 20:49:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for UFS
 PHY and PLL supplies
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <conor+dt@kernel.org>, <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
 <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
 <9af71063-0629-4ccc-bc76-3fb588677bf4@oss.qualcomm.com>
 <292907f3-25d6-40d9-be6e-b6b83e646d73@kernel.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <292907f3-25d6-40d9-be6e-b6b83e646d73@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOCBTYWx0ZWRfX78XoknspEosh
 3OXl0pK59Pa75jpfRdrwTq7trc7HCBDexXL4ZIsyp1LdiYmJbw4jKndVDQJz7SpZ5gLsjoeBUFM
 Hi6pkPDFQYy7JueFxwvOOoi/BJKVHmbA/qct4sytFFInvj5w3cJceCV+k0IPVqknyRLaKJIVDfQ
 6XsJEuE4kxfb8hD07+KyJvll6lNtro1lnNo+bRuwnKArUe63j6mh9s+xjenbutWnbEB7fU0RZWn
 xR39RmRE6dhtzHCwjq1d9ibh3MeRR1mYJ/fqGuFG4/BV4kmnsN1YxUuLqPgTdlg3blLnPomMVA9
 5tCQWFaC4AQDe8u7sB6dINeXq9t35d/S/vLRZF1WwEEabxDKhHSrCP/R84MY13cuprq8inB+gwZ
 eXUeCHX0
X-Authority-Analysis: v=2.4 cv=J8Cq7BnS c=1 sm=1 tr=0 ts=689615a4 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=x0E13wpUDKbC8JPA_PIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: ByLAag_KUVeJdsX6CF77K1wWPjNQXd1S
X-Proofpoint-ORIG-GUID: ByLAag_KUVeJdsX6CF77K1wWPjNQXd1S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_082013_631438_55DC23AC 
X-CRM114-Status: GOOD (  22.74  )
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

CgpPbiA4LzgvMjAyNSAzOjA5IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDA4
LzA4LzIwMjUgMTA6NTgsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDgvOC8yNSA5OjI5IEFN
LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gT24gV2VkLCBBdWcgMDYsIDIwMjUgYXQg
MDk6MTM6MzhQTSArMDUzMCwgTml0aW4gUmF3YXQgd3JvdGU6Cj4+Pj4gQWRkIGB2ZGRhLXBoeS1t
YXgtbWljcm9hbXBgIGFuZCBgdmRkYS1wbGwtbWF4LW1pY3JvYW1wYCBwcm9wZXJ0aWVzIHRvCj4+
Pj4gdGhlIFVGUyBQSFkgbm9kZSBpbiB0aGUgZGV2aWNlIHRyZWUuCj4+Pj4KPj4+PiBUaGVzZSBw
cm9wZXJ0aWVzIGRlZmluZSB0aGUgbWF4aW11bSBjdXJyZW50IChpbiBtaWNyb2FtcHMpIGV4cGVj
dGVkCj4+Pj4gZnJvbSB0aGUgUEhZIGFuZCBQTEwgcmVndWxhdG9ycy4gVGhpcyBhbGxvd3MgdGhl
IFBIWSBkcml2ZXIgdG8KPj4+PiBjb25maWd1cmUgcmVndWxhdG9yIGxvYWQgYWNjdXJhdGVseSBh
bmQgZW5zdXJlIHByb3BlciByZWd1bGF0b3IKPj4+PiBtb2RlIGJhc2VkIG9uIGxvYWQgcmVxdWly
ZW1lbnRzLgo+Pj4KPj4+IFRoYXQncyBub3QgdGhlIHByb3BlcnR5IG9mIHBoeSwgYnV0IHJlZ3Vs
YXRvci4KPj4+Cj4+PiBBbHNvIHJlYXNvbmluZyBpcyBoZXJlIGluY29tcGxldGUgLSB5b3UganVz
dCBwb3N0IGRvd25zdHJlYW0gY29kZS4gOi8KPj4KPj4gVGhlIHJlYXNvbiBmb3IgdGhpcyBjaGFu
Z2UgaXMgZ29vZCwgYnV0IHBlcmhhcHMgbm90IGV4cGxhaW5lZCBjbGVhcmx5Cj4+Cj4+IEFsbCBv
ZiB0aGVzZSB2YWx1ZXMgcmVmZXIgdG8gdGhlIG1heGltdW0gY3VycmVudCBkcmF3IHRoYXQgbmVl
ZHMgdG8gYmUKPj4gYWxsb2NhdGVkIG9uIGEgc2hhcmVkIHZvbHRhZ2Ugc3VwcGx5IGZvciB0aGlz
IHBlcmlwaGVyYWwgKGJlY2F1c2UgdGhlCj4gCj4gCj4gSXQgc291bmRzIHZlcnkgZGlmZmVyZW50
IHRoYW4gaG93IG11Y2ggaXQgY2FuIGJlIGRyYXduLiBIb3cgbXVjaCBjYW4gYmUKPiBkcmF3biBp
cyB0aGUgcHJvcGVydHkgb2YgdGhlIHJlZ3VsYXRvci4gVGhlIHJlZ3VsYXRvciBrbm93cyBob3cg
bXVjaAo+IGN1cnJlbnQgaXQgY2FuIHN1cHBvcnQuCgpDb25zdW1lcnMgYXJlIGF3YXJlIG9mIHRo
ZWlyIGR5bmFtaWMgbG9hZCByZXF1aXJlbWVudHMsIHdoaWNoIGNhbiB2YXJ5IAphdCBydW50aW1l
4oCUdGhpcyBhd2FyZW5lc3MgaXMgbm90IHJlY2lwcm9jYWwuIFRoZSBwb3dlciBncmlkIGlzIGRl
c2lnbmVkIApiYXNlZCBvbiB0aGUgY29sbGVjdGl2ZSBsb2FkIHJlcXVpcmVtZW50cyBvZiBhbGwg
Y2xpZW50cyBzaGFyaW5nIHRoZSAKc2FtZSBwb3dlciByYWlsLgoKU2luY2UgcmVndWxhdG9ycyBj
YW4gb3BlcmF0ZSBpbiBtdWx0aXBsZSBtb2RlcyBmb3IgcG93ZXIgb3B0aW1pemF0aW9uLCAKZWFj
aCBjb25zdW1lciBpcyBleHBlY3RlZCB0byB2b3RlIGZvciBpdHMgcnVudGltZSBwb3dlciBuZWVk
cy4gVGhlc2UgCnZvdGVzIGhlbHAgdGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsgbWFpbnRhaW4gdGhl
IHJlZ3VsYXRvciBpbiB0aGUgCmFwcHJvcHJpYXRlIG1vZGUsIGVuc3VyaW5nIHN0YWJsZSBhbmQg
ZWZmaWNpZW50IG9wZXJhdGlvbiBhY3Jvc3MgYWxsIApjbGllbnRzLgoKClN0YWJpbGl0eSBpc3N1
ZXMgY2FuIGFyaXNlIGlmIGVhY2ggY29uc3VtZXIgZG9lcyBub3Qgdm90ZSBmb3IgaXRzIG93biAK
bG9hZCByZXF1aXJlbWVudC4KRm9yIGV4YW1wbGUsIGNvbnNpZGVyIGEgc2NlbmFyaW8gd2hlcmUg
YSBzaW5nbGUgcmVndWxhdG9yIGlzIHNoYXJlZCBieSAKdHdvIGNvbnN1bWVycy4KCklmIHRoZSBm
aXJzdCBjbGllbnQgcmVxdWVzdHMgbG93LXBvd2VyIG1vZGUgYnkgdm90aW5nIGZvciB6ZXJvIG9y
IGEgCm1pbmltYWwgbG9hZCB0byByZWd1bGF0b3IgZnJhbWV3b3JrIGR1cmluZyBpdHMgZHJpdmVy
J3MgTFBNIHNlcXVlbmNlLCAKYW5kIHRoZSBzZWNvbmQgY2xpZW50IChlLmcuLCBVRlMgUEhZKSBo
YXMgbm90IHZvdGVkIGZvciBpdHMgb3duIGxvYWQgCnJlcXVpcmVtZW50IHRocm91Z2ggdGhlIHJl
Z3VsYXRvciBmcmFtZXdvcmssIHRoZSByZWd1bGF0b3IgbWF5IAp0cmFuc2l0aW9uIHRvIGxvdy1w
b3dlciBtb2RlLiBUaGlzIGNhbiBsZWFkIHRvIGlzc3VlcyBmb3IgdGhlIHNlY29uZCAKY2xpZW50
LCB3aGljaCBleHBlY3RzIGEgaGlnaGVyIHBvd2VyIHN0YXRlIHRvIG9wZXJhdGUgY29ycmVjdGx5
LgoKCj4gCj4gCj4+IHN1cHBseSdzIGNhcGFiaWxpdGllcyBjaGFuZ2UgZGVwZW5kaW5nIG9uIHRo
ZSBtYXhpbXVtIHBvdGVudGlhbCBsb2FkCj4+IGF0IGFueSBnaXZlbiB0aW1lLCB3aGljaCB0aGUg
cmVndWxhdG9yIGRyaXZlciBtdXN0IGJlIGF3YXJlIG9mKQo+Pgo+PiBUaGlzIGlzIGEgcHJvcGVy
dHkgb2YgYSByZWd1bGF0b3IgKmNvbnN1bWVyKiwgaS5lLiBpZiB3ZSBoYWQgYSBjaGFpbgo+PiBv
ZiBMRURzIGhhbmdpbmcgb2ZmIG9mIHRoaXMgc3VwcGx5LCB3ZSdkIG5lZWQgdG8gc3BlY2lmeSBO
VU1fTEVEUyAqCj4+IE1BWF9DVVJSIHVuZGVyIHRoZSAibGVkIGNoYWluIiBkZXZpY2UsIHRvIG1h
a2Ugc3VyZSB0aGF0IGlmIHRoZQo+PiBhZ2dyZWdhdGVkIGN1cnJlbnQgcmVxdWlyZW1lbnRzIGdv
IG92ZXIgYSBjZXJ0YWluIHRocmVzaG9sZCAod2hpY2ggaXMKPj4gdW5rbm93biB0byBMaW51eCBh
bmQgaGlkZGVuIGluIFJQTWggZncpLCB0aGUgcmVndWxhdG9yIGNhbiBiZQo+PiByZWNvbmZpZ3Vy
ZWQgdG8gYWxsb3cgZm9yIGEgaGlnaGVyIGN1cnJlbnQgZHJhdyAobGlrZWx5IGF0IHNvbWUKPj4g
ZG93bmdyYWRlIHRvIGVmZmljaWVuY3kpCj4gCj4gCj4gVGhlIHByb2JsZW0gaXMgdGhhdCByYXRp
b25hbGUgaXMgZG93bnN0cmVhbS4gSW5zdGVhZCBJIHdhbnQgdG8gc2VlIHNvbWUKPiByZWFzb246
IGUuZy4gZGF0YXNoZWV0cywgc3BlYywgdHlwZSBvZiBVRlMgZGV2aWNlICh0aGF0IHdhcyB0aGUg
YXJndW1lbnQKPiBpbiB0aGUgZHJpdmVyIHBhdGNoIGRpc2N1c3Npb24pLgoKClRoZSBQSFkgbG9h
ZCByZXF1aXJlbWVudHMgZm9yIGNvbnN1bWVycyBzdWNoIGFzIFVGUywgVVNCLCBQQ0llIGFyZSAK
ZGVmaW5lZCBieSBRdWFsY29tbeKAmXMgUEhZIElQIGFuZCBhcmUgd2VsbC1kb2N1bWVudGVkIGlu
IFF1YWxjb21t4oCZcyAKZGF0YXNoZWV0cyBhbmQgcG93ZXIgZ3JpZCBkb2N1bWVudGF0aW9uLiBU
aGVzZSB2YWx1ZXMgY2FuIGRlcGVuZGluZyBvbiAKdGhlIHByb2Nlc3Mgb3IgdGVjaG5vbG9neSBu
b2RlLCBib2FyZCBkZXNpZ24sIGFuZCBldmVuIHRoZSBjaGlwIGZvdW5kcnkgCnVzZWQuCgpBcyBh
IHJlc3VsdCwgdGhlIGxvYWQgdmFsdWVzIGNhbiBkaWZmZXIgYWNyb3NzIFNvQ3Mgb3IgbWF5IGJl
IGV2ZW4gCmJvYXJkKHVubGlrZWx5IHRob3VnaCkgZHVlIHRvIHZhcmlhdGlvbnMgaW4gYW55IG9m
IHRoZXNlIHBhcmFtZXRlcnMuCgoKUmVnYXJkcywKTml0aW4KCgoKPiAKPiBUaGUgb25seSBhcmd1
bWVudCBoZXJlIGZvciBnaXZlbiB2YWx1ZSBpczogZG93bnN0cmVhbSBoYXMgaXQuCj4gCj4gQmVz
dCByZWdhcmRzLAo+IEtyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
