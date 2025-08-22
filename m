Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92BD1CA0FE1
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pnPc0OMkcXRUAyXNY1dMZj/A9MLHWnBVzvwm7iZshA=; b=gJrOt72gkIFYII
	8Cwve48ID1AikNqJnouqjTua9XKGw0qwreL6pNudz6zZntdy4nAT1+cRqyy9thNHcfsu9M0dxLLx9
	9Ohkao7RqLCvTCn1WgsPx2GTVWRdyci1h9X0ABMWigscGu4TVeqvTQ0u0b1ikTXW1GONZpCGeo96L
	SJekHP/9siLwHRg3v+NWTfOnFp8nXG5422zby5dngDhBCvRkYHb7VOx3+kQYq1dcIbmJsHJ3D+xQX
	PkoOGnBUxUeDAAcx9MbJgXsfw63fjMjP7aE1NcRIxwdWp+GENhlRaFqto1qNkDZMOXANPWFCPGGJD
	myu/HqJaWQ+UCkW8CtQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphji-00000003w1C-0VRI;
	Sat, 23 Aug 2025 06:28:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQ7H-00000002M40-3cIG
	for linux-phy@bombadil.infradead.org;
	Fri, 22 Aug 2025 11:39:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=URe68+m74VE3wYAAfDXp6vPIEBqNgHCchsFwNybDTMw=; b=dalO3nwqnYO8+W11TL7vLxqzyY
	KG+pJphIVkcC8GRDwTKlzvRi0SQTwtnH5955wxcXQRHn3Q0QH+lo6C16msBSSq29BZVwRCl7WySCK
	RqF4iQupUskS4iM3awx3ilfyZk3Ti5uWNz+DbV43xhDU+7sRFRprgacaqXCFbeEaowlf3FdwWZvsc
	75YsV8Kldap2YVnpZVdexP1KEETH+TIsrs9SXkGBp4xudlQpjyTdviVxZHZmiHGNBOTO2m6we9zPl
	gOQZchZbYiLAv5H9dkJ0rrjFvr6Dot/NqiLTgL+FYst5qYoC7UdFN2dj07SyHxj9GHgKR3iOxY23g
	yumVmusQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQ7E-00000000tOg-1jJb
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:39:30 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UT1Z001157;
	Fri, 22 Aug 2025 11:39:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	URe68+m74VE3wYAAfDXp6vPIEBqNgHCchsFwNybDTMw=; b=PA0BE+25E4zHlDjI
	dw6k83kUsW8gx9p9bI4R+fBMKHwb8jsYBOQU2Ub0iRYjZK3PEy35f88YjE35oONu
	tCabbQwt+9CKPX5wnPbeprOMhxdxMnoHqMhmLce/2yJ4zBX2UOkQNz6iBL6gDOrq
	GFG/IaYU7GMudW1YNUAd+PMjM8vjr3NzoJqhlK7DXD4uM9fryMNF7kmniOWN9GN8
	COCszUXVFIXyq7PEpV6QxWV71hFNaolLwuYvBr7X4x8op2wsYFVuroXcJvO3dcZh
	JiYIb6kxQ8+jioppS6VPm5jpDh6SL/Dp6LMGqMjsPjdsMhZx4wdQ7+nv8AYwfeau
	ByF7Kg==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52992m0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Aug 2025 11:39:22 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57MBdLcj009520
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Aug 2025 11:39:21 GMT
Received: from [10.216.22.206] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 22 Aug
 2025 04:39:18 -0700
Message-ID: <61070746-431d-4adf-9e68-7ae9646a44c9@quicinc.com>
Date: Fri, 22 Aug 2025 17:09:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
To: Manivannan Sadhasivam <mani@kernel.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <xir3u3hlmcvfu6uasijz6g2oialoasmuu4bno6ctxpscqcebz6@6kw6xpm5bxbd>
 <761c97bb-ee90-4ace-acd3-08349831aade@oss.qualcomm.com>
 <2635ced4-b91f-4c79-ae2a-079f06bbb8a9@quicinc.com>
 <pp3hr3kssytyfuuesdfrzdo6hm6e3tjlahla53mlmydetsgxdy@wmxwkatf7lvr>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <pp3hr3kssytyfuuesdfrzdo6hm6e3tjlahla53mlmydetsgxdy@wmxwkatf7lvr>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 5v7xh36p9XeVI0fn4RteLWNjKdl2vSH_
X-Proofpoint-ORIG-GUID: 5v7xh36p9XeVI0fn4RteLWNjKdl2vSH_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX9EuZ9Z/NdqLp
 VvVDGpm0X7MsRJ6EG1xN8EhtTsaFAIh+8hCT0c4+XUJhN3Ek7CA85CW3kEB7mCzpwp+vETeIx9d
 WNeYb9z2lzu3rplil9FJ351Md4uPAiUe0gjaDEwRxVHu6GjJzOnMjPE0hzICbBbLYtvnO0z3dh3
 i9wRGLa+9Aaoo6pLxGbmnt8cfjTcZN5WdmCl6flXk6DfV5v3u3IPw8XMGlaZYut+bSbGJvsb7Jy
 e5+AHX64kBBgbgZ4oTe90D1aDqgVMprtP2gazRrtb2qawzgZhSLjpJvLKsqt8ZW8czGkFktTzBP
 VXouk+E37EA+fNiOKmUUpFJUcLTQIfe2KcGMpq16U0F6sjR99uXLb8MSyr3cE4rtrk0zr0BeCef
 k8WNI0fl8UvIeBbdrZAvtI7cuaK+eA==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a856ea cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=GElOo5Rt_zXM7e0JAJwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_123928_911474_9338D489 
X-CRM114-Status: GOOD (  17.89  )
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

CgpPbiA4LzIyLzIwMjUgNDoyNiBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+IE9u
IEZyaSwgQXVnIDIyLCAyMDI1IGF0IDAyOjUzOjMxUE0gR01ULCBOaXRpbiBSYXdhdCB3cm90ZToK
Pj4KPj4KPj4gT24gOC8yMi8yMDI1IDI6NDUgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+
PiBPbiAyMi8wOC8yMDI1IDExOjUzLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4g
T24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDM6NDk6MzFBTSBHTVQsIERtaXRyeSBCYXJ5c2hrb3Yg
d3JvdGU6Cj4+Pj4+IE9uIFdlZCwgQXVnIDIwLCAyMDI1IGF0IDAzOjU4OjI2QU0gKzA1MzAsIE5p
dGluIFJhd2F0IHdyb3RlOgo+Pj4+Pj4gQWRkIHJlZ3VsYXRvciBsb2FkIHZvdGluZyBzdXBwb3J0
IGZvciBTTTg2NTAgYW5kIFNNODc1MCBwbGF0Zm9ybXMgYnkKPj4+Pj4+IGludHJvZHVjaW5nIGRl
ZGljYXRlZCByZWd1bGF0b3IgYnVsayBkYXRhIGFycmF5cyB3aXRoIHRoZWlyIGxvYWQKPj4+Pj4+
IHZhbHVlcy4KPj4+Pj4+Cj4+Pj4+PiBUaGUgbG9hZCByZXF1aXJlbWVudHMgYXJlOgo+Pj4+Pj4g
LSBTTTg2NTA6IHZkZGEtcGh5ICgyMDVtQSksIHZkZGEtcGxsICgxNy41bUEpCj4+Pj4+PiAtIFNN
ODc1MDogdmRkYS1waHkgKDIxM21BKSwgdmRkYS1wbGwgKDE4LjNtQSkKPj4+Pj4+Cj4+Pj4+PiBU
aGlzIGVuc3VyZXMgc3RhYmxlIG9wZXJhdGlvbiBhbmQgcHJvcGVyIHBvd2VyIG1hbmFnZW1lbnQg
Zm9yIHRoZXNlCj4+Pj4+PiBwbGF0Zm9ybXMgd2hlcmUgcmVndWxhdG9ycyBhcmUgc2hhcmVkIGJl
dHdlZW4gdGhlIFFNUCBVU0IgUEhZIGFuZAo+Pj4+Pj4gb3RoZXIgSVAgYmxvY2tzIGJ5IHNldHRp
bmcgYXBwcm9wcmlhdGUgcmVndWxhdG9yIGxvYWQKPj4+Pj4+IGN1cnJlbnRzIGR1cmluZyBQSFkK
Pj4+Pj4+IG9wZXJhdGlvbnMuCj4+Pj4+Pgo+Pj4+Pj4gQ29uZmlndXJhdGlvbnMgd2l0aG91dCBz
cGVjaWZpYyBsb2FkIHJlcXVpcmVtZW50cyB3aWxsIGNvbnRpbnVlIHRvIHdvcmsKPj4+Pj4+IHVu
Y2hhbmdlZCwgYXMgaW5pdF9sb2FkX3VBIHJlbWFpbnMgemVyby1pbml0aWFsaXplZCB3aGVuIC5p
bml0X2xvYWRfdUEKPj4+Pj4+IGlzIG5vdCBwcm92aWRlZC4KPj4+Pj4KPj4+Pj4gQ2FuIHdlIHBs
ZWFzZSBnZXQgY29uZmlndXJhdGlvbiBmb3IgdGhlIHJlc3Qgb2YgdGhlIHBsYXRmb3Jtcz8KPj4+
Pj4KPj4+Pgo+Pj4+IE9ubHkgaWYgdGhlIHJlc3Qgb2YgdGhlIHBsYXRmb3JtcyByZXF1aXJlIHNl
dHRpbmcgdGhlIGxvYWQuLi4gSXQgaXMKPj4+PiBub3QgdmVyeQo+Pj4+IGNsZWFyIGlmIHRoZSBv
bGRlciBwbGF0Zm9ybXMgc2hhcmUgdGhlIHJlZ3VsYXRvcnMgd2l0aCBvdGhlciBJUHMgb3Igbm90
Lgo+Pj4KPj4+IFllcywgdGhleSBhcmUgdXN1YWxseSBzaGFyZWQuIFVTQi4gUENJZSBhbmQgRFNJ
IGZyZXF1ZW50bHkgc2l0IG9uIHRoZQo+Pj4gc2FtZSB2b2x0YWdlIHJhaWxzLgo+Pgo+PiBZZXMs
IGl04oCZcyB0eXBpY2FsbHkgc2hhcmVkIGFjcm9zcyBtdWx0aXBsZSBjbGllbnRzLgo+Pgo+PiBI
b3dldmVyLCBhcyBJIG1lbnRpb25lZCBlYXJsaWVyLCBpbiB0aGUgY3VycmVudCB1cHN0cmVhbSBj
b2RlYmFzZSwgdGhlCj4+ICJyZWd1bGF0b3ItYWxsb3ctc2V0LWxvYWQiIHByb3BlcnR5IGlzIGRl
ZmluZWQgb25seSBmb3IgU004NzUwIGFuZCBTTTg2NTAKPj4gd2l0aGluIHRoZSBQTUlDIFBIWSBh
bmQgUExMIGRldmljZSB0cmVlIG5vZGVzLiBUaGlzIG1lYW5zIHRoYXQgZXZlbiBpZiB0aGUKPj4g
VUZTIFBIWSBkcml2ZXIgaXMgdXBkYXRlZCB0byB2b3RlIGZvciB0aGlzIGNvbmZpZ3VyYXRpb24g
b24gb3RoZXIgcGxhdGZvcm1zLAo+PiBpdCB3aWxsIGhhdmUgbm8gZWZmZWN0LCBhcyB0aGUgcHJv
cGVydHkgaXMgbm90IHN1cHBvcnRlZCB0aGVyZS4KPj4KPiAKPiBXaGljaCBtZWFuczoKPiAKPiAx
LiBUaG9zZSBwbGF0Zm9ybXMgYXJlIHN0aWxsIHByb25lIHRvIHRoaXMgc3RhYmlsaXR5IGlzc3Vl
Lgo+IDIuIE9ubHkgVUZTIGlzIHNldHRpbmcgdGhlIHJlZ3VsYXRvciBjb25zdHJhaW50LCBidXQg
bm90IG90aGVyIGRyaXZlcnMgc2hhcmluZwo+IHRoZSBzYW1lIHJlZ3VsYXRvci4KCllvdSB1bmRl
cnN0YW5kaW5nIGlzIGNvcnJlY3QuCgo+IAo+IElNTywgYm90aCBjYXNlcyBhcmUgYmFkLiBBdCBs
ZWF0LCB5b3UgY2FuIHVwZGF0ZSB0aGUgVUZTIGRyaXZlciB0byBzZXQgdGhlIGxvYWQKPiBub3cg
YW5kIGxhdGVyIG9uIGFkZCB0aGUgRFRTIHByb3BlcnR5IGFzIGEgZm9sbG93LXVwIHNlcmllcyBm
b3IgdGhvc2UgcGxhdGZvcm1zLgoKCnN1cmUgd2lsbCB0YWtlIGNhcmUgb2YgdGhpcy4+Cj4gLSBN
YW5pCgoKCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
