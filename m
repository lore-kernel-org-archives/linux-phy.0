Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F073C87FCF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 20:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XAWOQhhoEf3HO8JeaoF6NnJATJCDu3x64CFiki4Mgs=; b=4PpZZb+eMkX8ga
	Mr2WZ1k0l5G8lmZ5rbqrJAVQitF+f584Q6yLZ6WYq/VkKCdDOnFm2TjvuEUASLpQQwJm2p0qtTLtj
	Xpr9NTCVfbqvPORCRN9+6M2JWf4NFo4T2QmMQHkrRh+f2M3sS/iyFfJBQA6E3iJ3eru0mzxWoKLHt
	gFbJlZjbs0oP63oGbXvPDbbTQQnzCQ28F7rmrMws3hIBVnTapkRhf+NiYr6npwIhRBKHl2Fue6CB4
	dmh5U2zFN6Tvx1sZXo2S6lu1jNPc6StaBTUY8/3UKg0QOT8IeO4Qsvaw0oF36gWEmab1PRtR8bE8r
	ZS2Cs7suft3ODI1nXliQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umINa-0000000ExIA-2y6T;
	Wed, 13 Aug 2025 20:47:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umINX-0000000ExHg-2yfK
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 20:47:24 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DBLdnt023971;
	Wed, 13 Aug 2025 20:47:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rs7wtH6LdR98sZjYL4DLDsySGPlJJZ6AL8nA/khRlrY=; b=h5kEcq1U8nitrjFq
	OMVR7wV2agR08vLdkhPSetzySp9t+m6qNhZKp40WkmAVd4CdYv9uevX/Qp4jF2Y5
	nmquXJMyMdu1WADa6deLwXycAqLLbevLCpwUy4cRRxXXwatBRg9V1fMT96+1DrVT
	ltFdtI8pkFJZgQiG8XXGEoBjSKL/9ITmD9hG5eaDJMNYDMMtxvQDgkaa8HCRtvNL
	v7VmCCXkscWMeE85Q7PWuOlmBzj2/0AHjmj86uBWw5Lb8ZX2wqsOnBR3HZtlXAdH
	E1NhlMoHGPa0wcgoZ/McD3XX9qU95lGbeyEphKvu1SnWjQQFNPy8jCZrbOE2WSXS
	JyFbeg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rsvcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Aug 2025 20:47:15 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57DKlEE4016361
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Aug 2025 20:47:15 GMT
Received: from [10.216.55.173] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 13 Aug
 2025 13:47:09 -0700
Message-ID: <4e996a17-c996-4194-b57d-128e7d05e8ad@quicinc.com>
Date: Thu, 14 Aug 2025 02:17:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for UFS
 PHY and PLL supplies
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski
	<krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <conor+dt@kernel.org>, <bvanassche@acm.org>,
        <andersson@kernel.org>, <neil.armstrong@linaro.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
 <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
 <9af71063-0629-4ccc-bc76-3fb588677bf4@oss.qualcomm.com>
 <292907f3-25d6-40d9-be6e-b6b83e646d73@kernel.org>
 <5e32be05-0dbd-4d6f-879d-8ce97fb430ba@quicinc.com>
 <rh3qxu2rijpjswfash3rpmmh6sw47l3b6j5p5upti6zffknasz@cywwm3fypghd>
 <89ab7e51-f82e-465a-aa22-1ccb8e7a0f6d@quicinc.com>
 <ljythvl2yfilcnmgdwt2cyyefxmgl54osll5e76qn7njadhgqq@rwrl3dy6ykt3>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <ljythvl2yfilcnmgdwt2cyyefxmgl54osll5e76qn7njadhgqq@rwrl3dy6ykt3>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX+Jpg+HZUGy71
 GdpuCMe5Xd2IgTfp+AF4YryseqNntuG12d02ay4s4cFQUzpxoVdAWF4HLqRPgZuk+IIP3Hr5CiV
 WNsnZVWW25EyUxYIoP0R6fIQQR1L00o1y1TjGWBhC/wZS2QbMAyUF6ebg1HI573NFtGE83n/dZr
 bEboj5MYxe17zEeJd1lPGABMHxMnyfzX/9YtOs7enZ3C3M6AHx2x7BUlUv1Xa8iotCGEfsRoGdt
 xeLghWRiMbzzu2eqWC4/A1jhSBbocvhCTen36U7Tbw95gkOj1kJ42HWqgW12wGLSNb2vbWxDzrl
 QZ2Yj19BXB8sIXOjpn9rybztRTBloJTPuiMbj3aPrcKvOrwlFyOEdw8V4AUjpjrY39Elql6/i7r
 d/FKzllo
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689cf9d3 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=MBlCXbtx4y3c8zbCj10A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: X15fmfcYpaZVSSpbYs4CM75upDHndglW
X-Proofpoint-GUID: X15fmfcYpaZVSSpbYs4CM75upDHndglW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_134723_762864_C88485B7 
X-CRM114-Status: GOOD (  25.68  )
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

CgpPbiA4LzEyLzIwMjUgNDoyMiBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBUdWUs
IEF1ZyAxMiwgMjAyNSBhdCAwMToyNTowMkFNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPj4K
Pj4KPj4gT24gOC85LzIwMjUgNDozNyBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+
Pj4gT24gRnJpLCBBdWcgMDgsIDIwMjUgYXQgMDg6NDk6NDVQTSBHTVQsIE5pdGluIFJhd2F0IHdy
b3RlOgo+Pj4+Cj4+Pj4KPj4+PiBPbiA4LzgvMjAyNSAzOjA5IFBNLCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgo+Pj4+PiBPbiAwOC8wOC8yMDI1IDEwOjU4LCBLb25yYWQgRHliY2lvIHdyb3Rl
Ogo+Pj4+Pj4gT24gOC84LzI1IDk6MjkgQU0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+
Pj4+Pj4gT24gV2VkLCBBdWcgMDYsIDIwMjUgYXQgMDk6MTM6MzhQTSArMDUzMCwgTml0aW4gUmF3
YXQgd3JvdGU6Cj4+Pj4+Pj4+IEFkZCBgdmRkYS1waHktbWF4LW1pY3JvYW1wYCBhbmQgYHZkZGEt
cGxsLW1heC1taWNyb2FtcGAgcHJvcGVydGllcyB0bwo+Pj4+Pj4+PiB0aGUgVUZTIFBIWSBub2Rl
IGluIHRoZSBkZXZpY2UgdHJlZS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhlc2UgcHJvcGVydGllcyBk
ZWZpbmUgdGhlIG1heGltdW0gY3VycmVudCAoaW4gbWljcm9hbXBzKSBleHBlY3RlZAo+Pj4+Pj4+
PiBmcm9tIHRoZSBQSFkgYW5kIFBMTCByZWd1bGF0b3JzLiBUaGlzIGFsbG93cyB0aGUgUEhZIGRy
aXZlciB0bwo+Pj4+Pj4+PiBjb25maWd1cmUgcmVndWxhdG9yIGxvYWQgYWNjdXJhdGVseSBhbmQg
ZW5zdXJlIHByb3BlciByZWd1bGF0b3IKPj4+Pj4+Pj4gbW9kZSBiYXNlZCBvbiBsb2FkIHJlcXVp
cmVtZW50cy4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoYXQncyBub3QgdGhlIHByb3BlcnR5IG9mIHBoeSwg
YnV0IHJlZ3VsYXRvci4KPj4+Pj4+Pgo+Pj4+Pj4+IEFsc28gcmVhc29uaW5nIGlzIGhlcmUgaW5j
b21wbGV0ZSAtIHlvdSBqdXN0IHBvc3QgZG93bnN0cmVhbSBjb2RlLiA6Lwo+Pj4+Pj4KPj4+Pj4+
IFRoZSByZWFzb24gZm9yIHRoaXMgY2hhbmdlIGlzIGdvb2QsIGJ1dCBwZXJoYXBzIG5vdCBleHBs
YWluZWQgY2xlYXJseQo+Pj4+Pj4KPj4+Pj4+IEFsbCBvZiB0aGVzZSB2YWx1ZXMgcmVmZXIgdG8g
dGhlIG1heGltdW0gY3VycmVudCBkcmF3IHRoYXQgbmVlZHMgdG8gYmUKPj4+Pj4+IGFsbG9jYXRl
ZCBvbiBhIHNoYXJlZCB2b2x0YWdlIHN1cHBseSBmb3IgdGhpcyBwZXJpcGhlcmFsIChiZWNhdXNl
IHRoZQo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBJdCBzb3VuZHMgdmVyeSBkaWZmZXJlbnQgdGhhbiBob3cg
bXVjaCBpdCBjYW4gYmUgZHJhd24uIEhvdyBtdWNoIGNhbiBiZQo+Pj4+PiBkcmF3biBpcyB0aGUg
cHJvcGVydHkgb2YgdGhlIHJlZ3VsYXRvci4gVGhlIHJlZ3VsYXRvciBrbm93cyBob3cgbXVjaAo+
Pj4+PiBjdXJyZW50IGl0IGNhbiBzdXBwb3J0Lgo+Pj4+Cj4+Pj4gQ29uc3VtZXJzIGFyZSBhd2Fy
ZSBvZiB0aGVpciBkeW5hbWljIGxvYWQgcmVxdWlyZW1lbnRzLCB3aGljaCBjYW4gdmFyeSBhdAo+
Pj4+IHJ1bnRpbWXigJR0aGlzIGF3YXJlbmVzcyBpcyBub3QgcmVjaXByb2NhbC4gVGhlIHBvd2Vy
IGdyaWQgaXMgZGVzaWduZWQgYmFzZWQKPj4+PiBvbiB0aGUgY29sbGVjdGl2ZSBsb2FkIHJlcXVp
cmVtZW50cyBvZiBhbGwgY2xpZW50cyBzaGFyaW5nIHRoZSBzYW1lIHBvd2VyCj4+Pj4gcmFpbC4K
Pj4+Pgo+Pj4+IFNpbmNlIHJlZ3VsYXRvcnMgY2FuIG9wZXJhdGUgaW4gbXVsdGlwbGUgbW9kZXMg
Zm9yIHBvd2VyIG9wdGltaXphdGlvbiwgZWFjaAo+Pj4+IGNvbnN1bWVyIGlzIGV4cGVjdGVkIHRv
IHZvdGUgZm9yIGl0cyBydW50aW1lIHBvd2VyIG5lZWRzLiBUaGVzZSB2b3RlcyBoZWxwCj4+Pj4g
dGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsgbWFpbnRhaW4gdGhlIHJlZ3VsYXRvciBpbiB0aGUgYXBw
cm9wcmlhdGUgbW9kZSwKPj4+PiBlbnN1cmluZyBzdGFibGUgYW5kIGVmZmljaWVudCBvcGVyYXRp
b24gYWNyb3NzIGFsbCBjbGllbnRzLgo+Pj4+Cj4+Pj4KPj4+PiBTdGFiaWxpdHkgaXNzdWVzIGNh
biBhcmlzZSBpZiBlYWNoIGNvbnN1bWVyIGRvZXMgbm90IHZvdGUgZm9yIGl0cyBvd24gbG9hZAo+
Pj4+IHJlcXVpcmVtZW50Lgo+Pj4+IEZvciBleGFtcGxlLCBjb25zaWRlciBhIHNjZW5hcmlvIHdo
ZXJlIGEgc2luZ2xlIHJlZ3VsYXRvciBpcyBzaGFyZWQgYnkgdHdvCj4+Pj4gY29uc3VtZXJzLgo+
Pj4+Cj4+Pj4gSWYgdGhlIGZpcnN0IGNsaWVudCByZXF1ZXN0cyBsb3ctcG93ZXIgbW9kZSBieSB2
b3RpbmcgZm9yIHplcm8gb3IgYSBtaW5pbWFsCj4+Pj4gbG9hZCB0byByZWd1bGF0b3IgZnJhbWV3
b3JrIGR1cmluZyBpdHMgZHJpdmVyJ3MgTFBNIHNlcXVlbmNlLCBhbmQgdGhlIHNlY29uZAo+Pj4+
IGNsaWVudCAoZS5nLiwgVUZTIFBIWSkgaGFzIG5vdCB2b3RlZCBmb3IgaXRzIG93biBsb2FkIHJl
cXVpcmVtZW50IHRocm91Z2gKPj4+PiB0aGUgcmVndWxhdG9yIGZyYW1ld29yaywgdGhlIHJlZ3Vs
YXRvciBtYXkgdHJhbnNpdGlvbiB0byBsb3ctcG93ZXIgbW9kZS4KPj4+PiBUaGlzIGNhbiBsZWFk
IHRvIGlzc3VlcyBmb3IgdGhlIHNlY29uZCBjbGllbnQsIHdoaWNoIGV4cGVjdHMgYSBoaWdoZXIg
cG93ZXIKPj4+PiBzdGF0ZSB0byBvcGVyYXRlIGNvcnJlY3RseS4KPj4+Pgo+Pj4KPj4+IEkgdGhp
bmsgd2UgYWxsIGFncmVlIG9uIGNvbnN1bWVycyBzZXR0aW5nIHRoZSBsb2FkIGZvciBzaGFyZWQg
cmVndWxhdG9ycywgYnV0Cj4+PiB0aGUgbmFtaW5nIGFuZCBkZXNjcmlwdGlvbiBvZiB0aGUgRFQg
cHJvcGVydHkgaXMgd2hhdCBjYXVzaW5nIGNvbmZ1c2lvbiBoZXJlLgo+Pj4gVGhlcmUgaXMgbm8g
d2F5IHRoZSBjb25zdW1lcnMgY2FuIHNldCB0aGUgKm1heCogY3VycmVudCBkcmF3IGZvciBhIHNo
YXJlZAo+Pj4gcmVndWxhdG9yLiBUaGV5IGNhbiBvbmx5IHJlcXVlc3QgbG9hZCBhcyBwZXIgdGhl
aXIgcmVxdWlyZW1lbnQuIEJ1dCB0aGUgbWF4Cj4+PiBjdXJyZW50IGRyYXcgaXMgYSByZWd1bGF0
b3IgY29uc3RyYWludC4KPj4KPj4gVG8gYXZvaWQgY29uZnVzaW9uIHdpdGggcmVndWxhdG9yLWxl
dmVsIGNvbnN0cmFpbnRzLCBJJ20gb3BlbiB0byByZW5hbWluZwo+PiB0aGUgcHJvcGVydHkgdmRk
YS1waHktbWF4LW1pY3JvYW1wIHRvIHNvbWV0aGluZyBtb3JlIGRlc2NyaXB0aXZlLCBzdWNoIGFz
Cj4+IHZkZGEtcGh5LWNsaWVudC1wZWFrLWxvYWQtbWljcm9hbXAgb3IgdmRkYS1waHktcGVhay1s
b2FkLW1pY3JvYW1wLiBBbG9uZwo+PiB3aXRoIHVwZGF0aW5nIHRoZSBkZXNjcmlwdGlvbiwgdGhp
cyB3b3VsZCBiZXR0ZXIgcmVmbGVjdCB0aGUgcHJvcGVydHkncwo+PiBhY3R1YWwgaW50ZW50OiB0
byBzcGVjaWZ5IHRoZSBtYXhpbXVtIGN1cnJlbnQgYSBjbGllbnQgbWF5IGRyYXcgZHVyaW5nIHBl
YWsKPj4gb3BlcmF0aW9uLCByYXRoZXIgdGhhbiBpbXBseWluZyBpdCBkZWZpbmVzIHRoZSByZWd1
bGF0b3LigJlzIG1heGltdW0KPj4gY2FwYWJpbGl0eS4KPiAKPiBNb3ZlIHRoZW0gaW50byB0aGUg
ZHJpdmVyIHBsZWFzZS4KClN1cmUgRG1pdHJ5LiBJ4oCZbGwgd2lsbCB0YWtlIGNhcmUgb2YgdGhp
cyBpbiBuZXh0IHBhdGNoc2V0LgoKVGhhbmtzLApOaXRpbgoKCj4gCj4+Cj4+Cj4+IEhhdmluZyBz
YWlkIHRoYXQsIEkgaGFkIGEgZm9sbG93LXVwIGRpc2N1c3Npb24gd2l0aCB0aGUgUEhZIGRlc2ln
bmVyIHRvCj4+IGNvbmZpcm0gd2hldGhlciB0aGlzIHZhbHVlIGNvdWxkIHZhcnkgYXQgdGhlIGJv
YXJkIGxldmVsLiBCYXNlZCBvbiB0aGVpcgo+PiByZXNwb25zZSwgaXQncyBhIGZpeGVkIHZhbHVl
IGZvciB0aGUgU29DIGFuZCBkb2VzIG5vdCBjaGFuZ2UgYWNyb3NzCj4+IGRpZmZlcmVudCBib2Fy
ZHMoYXRsZWFzdCBmb3Igbm93KS4gVGhlcmVmb3JlLCBJIGNhbiByZW1vdmUgZnJvbSBkZXZpY2Ug
dHJlZQo+PiBhbmQgcmVwbGFjZWQgd2l0aCBoYXJkY29kZWQsIHBlci1jb21wYXRpYmxlIGRhdGEg
aW4gdGhlIGRyaXZlci4KPj4KPj4+Cj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4+IHN1cHBseSdzIGNh
cGFiaWxpdGllcyBjaGFuZ2UgZGVwZW5kaW5nIG9uIHRoZSBtYXhpbXVtIHBvdGVudGlhbCBsb2Fk
Cj4+Pj4+PiBhdCBhbnkgZ2l2ZW4gdGltZSwgd2hpY2ggdGhlIHJlZ3VsYXRvciBkcml2ZXIgbXVz
dCBiZSBhd2FyZSBvZikKPj4+Pj4+Cj4+Pj4+PiBUaGlzIGlzIGEgcHJvcGVydHkgb2YgYSByZWd1
bGF0b3IgKmNvbnN1bWVyKiwgaS5lLiBpZiB3ZSBoYWQgYSBjaGFpbgo+Pj4+Pj4gb2YgTEVEcyBo
YW5naW5nIG9mZiBvZiB0aGlzIHN1cHBseSwgd2UnZCBuZWVkIHRvIHNwZWNpZnkgTlVNX0xFRFMg
Kgo+Pj4+Pj4gTUFYX0NVUlIgdW5kZXIgdGhlICJsZWQgY2hhaW4iIGRldmljZSwgdG8gbWFrZSBz
dXJlIHRoYXQgaWYgdGhlCj4+Pj4+PiBhZ2dyZWdhdGVkIGN1cnJlbnQgcmVxdWlyZW1lbnRzIGdv
IG92ZXIgYSBjZXJ0YWluIHRocmVzaG9sZCAod2hpY2ggaXMKPj4+Pj4+IHVua25vd24gdG8gTGlu
dXggYW5kIGhpZGRlbiBpbiBSUE1oIGZ3KSwgdGhlIHJlZ3VsYXRvciBjYW4gYmUKPj4+Pj4+IHJl
Y29uZmlndXJlZCB0byBhbGxvdyBmb3IgYSBoaWdoZXIgY3VycmVudCBkcmF3IChsaWtlbHkgYXQg
c29tZQo+Pj4+Pj4gZG93bmdyYWRlIHRvIGVmZmljaWVuY3kpCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRo
ZSBwcm9ibGVtIGlzIHRoYXQgcmF0aW9uYWxlIGlzIGRvd25zdHJlYW0uIEluc3RlYWQgSSB3YW50
IHRvIHNlZSBzb21lCj4+Pj4+IHJlYXNvbjogZS5nLiBkYXRhc2hlZXRzLCBzcGVjLCB0eXBlIG9m
IFVGUyBkZXZpY2UgKHRoYXQgd2FzIHRoZSBhcmd1bWVudAo+Pj4+PiBpbiB0aGUgZHJpdmVyIHBh
dGNoIGRpc2N1c3Npb24pLgo+Pj4+Cj4+Pj4KPj4+PiBUaGUgUEhZIGxvYWQgcmVxdWlyZW1lbnRz
IGZvciBjb25zdW1lcnMgc3VjaCBhcyBVRlMsIFVTQiwgUENJZSBhcmUgZGVmaW5lZAo+Pj4+IGJ5
IFF1YWxjb21t4oCZcyBQSFkgSVAgYW5kIGFyZSB3ZWxsLWRvY3VtZW50ZWQgaW4gUXVhbGNvbW3i
gJlzIGRhdGFzaGVldHMgYW5kCj4+Pj4gcG93ZXIgZ3JpZCBkb2N1bWVudGF0aW9uLiBUaGVzZSB2
YWx1ZXMgY2FuIGRlcGVuZGluZyBvbiB0aGUgcHJvY2VzcyBvcgo+Pj4+IHRlY2hub2xvZ3kgbm9k
ZSwgYm9hcmQgZGVzaWduLCBhbmQgZXZlbiB0aGUgY2hpcCBmb3VuZHJ5IHVzZWQuCj4+Pj4KPj4+
PiBBcyBhIHJlc3VsdCwgdGhlIGxvYWQgdmFsdWVzIGNhbiBkaWZmZXIgYWNyb3NzIFNvQ3Mgb3Ig
bWF5IGJlIGV2ZW4KPj4+PiBib2FyZCh1bmxpa2VseSB0aG91Z2gpIGR1ZSB0byB2YXJpYXRpb25z
IGluIGFueSBvZiB0aGVzZSBwYXJhbWV0ZXJzLgo+Pj4+Cj4+Pgo+Pj4gT2theS4gVGhpcyBnb2Vz
IGludG8gdGhlIGNvbW1pdCBtZXNzYWdlIGFuZCBwb3NzaWJseSBzb21lIHBhcnQgb2YgaXQgdG8g
cHJvcGVydHkKPj4+IGRlc2NyaXB0aW9uIGFsc28uCj4+Cj4+Cj4+Cj4+Cj4+Pgo+Pj4gLSBNYW5p
Cj4+Pgo+Pgo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
