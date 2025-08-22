Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 992F8CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaj/SOh+WcVpNlDCsosKlGt3yehjquC0eTAy2wXarw8=; b=con3mYu/Cv7nng
	qan5LvzcDNndyJROCMBhS0y08HDAkX/V1MOvfymA0f0yPuoh4+0/M5IYp1q2ZyX6sA6lNrd40kWFg
	FxMhbR715d5WDH2LaUGE3oH2u6lf7qctJuViAy4ZGObzCDc1dMURjcSjFWdEtz09/WKds2gJCYY5G
	qJSit3tCPiMBtzUWYWj2YqebRsh0PCMCFQz5K5jTaSRoGwJcOWboXUAXH9vBmsz9POG0JHD6tTS8Y
	ju8mzl8vkFe3x+7J9Ev6BQulXOtBw/i8+gcYHoZYm6AOnqoCTqtozq1MllyLbJzCtMKfms3spy4Dd
	XC5GPkhOrf9grGdNIgUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZb9-00000003XGZ-1D5I;
	Fri, 22 Aug 2025 21:46:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNzq-0000000229c-2v8x
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 09:23:44 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UJE0020865;
	Fri, 22 Aug 2025 09:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gX61FoazzEu2dfspbNtw7L4e4zRSy/lHaPgZlW4iuU4=; b=JarX3u1NTmzTg/3A
	rqCY4qeE9MZHXvqA8VrR+WySD3gGGxdKi/oD/ZVsioZDRo/pih1/+5Pt+rcdEXeG
	88dvtn+h3RLPbI3hBN5vJqsX67AALG4DRpbKwxD3uz9UV2RZkS6Evtze5uu5yw8i
	fsOvYFCXyqzcqcF4E5scpdPuvSUShT5juDMzXCojloeg4tjCDJNN/QZVk8G4Hbif
	7XPFi/gjwa20K/Ib5B/kOXIlHSOUM5rPFLP3Mr0I6B6hwc3unhy9X/n3dObOliYW
	Z/W0to+8lx4RUBcZmFwPv3B2Owe6eAi4gBLE/EOvuIGXj9Ov2fLsBX2lV3ob1x14
	WrX9ZQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5290pf2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Aug 2025 09:23:39 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57M9NcrG026076
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Aug 2025 09:23:38 GMT
Received: from [10.216.22.206] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 22 Aug
 2025 02:23:35 -0700
Message-ID: <2635ced4-b91f-4c79-ae2a-079f06bbb8a9@quicinc.com>
Date: Fri, 22 Aug 2025 14:53:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        "Manivannan
 Sadhasivam" <mani@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <xir3u3hlmcvfu6uasijz6g2oialoasmuu4bno6ctxpscqcebz6@6kw6xpm5bxbd>
 <761c97bb-ee90-4ace-acd3-08349831aade@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <761c97bb-ee90-4ace-acd3-08349831aade@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a8371b cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=3vFY76kdcj1CIDOknBYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-GUID: XfsU-EhmgXv_0IHsY4LYIOFZEA96EXrq
X-Proofpoint-ORIG-GUID: XfsU-EhmgXv_0IHsY4LYIOFZEA96EXrq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX4UUL2xrAk2kz
 uvd3m5dNMtxCRIK4tWLkarYROGzkgov3/Q+B8ByHYTeESsDYdnIgZgHiwpcKvgGF3dMQ+RFDxlA
 NLMQNOlX4sZQoHSDmjtxnV1HvHuY42yquzkGY9Z1A0lvJGNWgDmps8uFdOkAAWH7x6DeoGy3fvX
 pcmhew8toRhCgTYZq75DvKitfdGR/rrjLbk4HiqT9TzypnQMRDuAVP9oKggFBGSYIljP++JHe9E
 ltyPmROTnGU8Rg0lM/mJ6RaXBEwW70C1q3oNvzAVCm+46z3VANPI51e0+dAQ9tQIquTvP6boE8h
 tAh/JyISwooS/uiu0S5qBzhJeDVosPQHeeP8d37s4CT2ewNU6nR+4e6xjD+GuEqd+5atr+tspQL
 k7PiuMYkZtIShujb12CLV2+572EG1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_022342_851006_97083C08 
X-CRM114-Status: GOOD (  13.62  )
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

CgpPbiA4LzIyLzIwMjUgMjo0NSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAyMi8w
OC8yMDI1IDExOjUzLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+IE9uIFdlZCwgQXVn
IDIwLCAyMDI1IGF0IDAzOjQ5OjMxQU0gR01ULCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4g
T24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDM6NTg6MjZBTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4+Pj4gQWRkIHJlZ3VsYXRvciBsb2FkIHZvdGluZyBzdXBwb3J0IGZvciBTTTg2NTAgYW5k
IFNNODc1MCBwbGF0Zm9ybXMgYnkKPj4+PiBpbnRyb2R1Y2luZyBkZWRpY2F0ZWQgcmVndWxhdG9y
IGJ1bGsgZGF0YSBhcnJheXMgd2l0aCB0aGVpciBsb2FkCj4+Pj4gdmFsdWVzLgo+Pj4+Cj4+Pj4g
VGhlIGxvYWQgcmVxdWlyZW1lbnRzIGFyZToKPj4+PiAtIFNNODY1MDogdmRkYS1waHkgKDIwNW1B
KSwgdmRkYS1wbGwgKDE3LjVtQSkKPj4+PiAtIFNNODc1MDogdmRkYS1waHkgKDIxM21BKSwgdmRk
YS1wbGwgKDE4LjNtQSkKPj4+Pgo+Pj4+IFRoaXMgZW5zdXJlcyBzdGFibGUgb3BlcmF0aW9uIGFu
ZCBwcm9wZXIgcG93ZXIgbWFuYWdlbWVudCBmb3IgdGhlc2UKPj4+PiBwbGF0Zm9ybXMgd2hlcmUg
cmVndWxhdG9ycyBhcmUgc2hhcmVkIGJldHdlZW4gdGhlIFFNUCBVU0IgUEhZIGFuZAo+Pj4+IG90
aGVyIElQIGJsb2NrcyBieSBzZXR0aW5nIGFwcHJvcHJpYXRlIHJlZ3VsYXRvciBsb2FkIGN1cnJl
bnRzIAo+Pj4+IGR1cmluZyBQSFkKPj4+PiBvcGVyYXRpb25zLgo+Pj4+Cj4+Pj4gQ29uZmlndXJh
dGlvbnMgd2l0aG91dCBzcGVjaWZpYyBsb2FkIHJlcXVpcmVtZW50cyB3aWxsIGNvbnRpbnVlIHRv
IHdvcmsKPj4+PiB1bmNoYW5nZWQsIGFzIGluaXRfbG9hZF91QSByZW1haW5zIHplcm8taW5pdGlh
bGl6ZWQgd2hlbiAuaW5pdF9sb2FkX3VBCj4+Pj4gaXMgbm90IHByb3ZpZGVkLgo+Pj4KPj4+IENh
biB3ZSBwbGVhc2UgZ2V0IGNvbmZpZ3VyYXRpb24gZm9yIHRoZSByZXN0IG9mIHRoZSBwbGF0Zm9y
bXM/Cj4+Pgo+Pgo+PiBPbmx5IGlmIHRoZSByZXN0IG9mIHRoZSBwbGF0Zm9ybXMgcmVxdWlyZSBz
ZXR0aW5nIHRoZSBsb2FkLi4uIEl0IGlzIAo+PiBub3QgdmVyeQo+PiBjbGVhciBpZiB0aGUgb2xk
ZXIgcGxhdGZvcm1zIHNoYXJlIHRoZSByZWd1bGF0b3JzIHdpdGggb3RoZXIgSVBzIG9yIG5vdC4K
PiAKPiBZZXMsIHRoZXkgYXJlIHVzdWFsbHkgc2hhcmVkLiBVU0IuIFBDSWUgYW5kIERTSSBmcmVx
dWVudGx5IHNpdCBvbiB0aGUgCj4gc2FtZSB2b2x0YWdlIHJhaWxzLgoKWWVzLCBpdOKAmXMgdHlw
aWNhbGx5IHNoYXJlZCBhY3Jvc3MgbXVsdGlwbGUgY2xpZW50cy4KCkhvd2V2ZXIsIGFzIEkgbWVu
dGlvbmVkIGVhcmxpZXIsIGluIHRoZSBjdXJyZW50IHVwc3RyZWFtIGNvZGViYXNlLCB0aGUgCiJy
ZWd1bGF0b3ItYWxsb3ctc2V0LWxvYWQiIHByb3BlcnR5IGlzIGRlZmluZWQgb25seSBmb3IgU004
NzUwIGFuZCAKU004NjUwIHdpdGhpbiB0aGUgUE1JQyBQSFkgYW5kIFBMTCBkZXZpY2UgdHJlZSBu
b2Rlcy4gVGhpcyBtZWFucyB0aGF0IApldmVuIGlmIHRoZSBVRlMgUEhZIGRyaXZlciBpcyB1cGRh
dGVkIHRvIHZvdGUgZm9yIHRoaXMgY29uZmlndXJhdGlvbiBvbiAKb3RoZXIgcGxhdGZvcm1zLCBp
dCB3aWxsIGhhdmUgbm8gZWZmZWN0LCBhcyB0aGUgcHJvcGVydHkgaXMgbm90IApzdXBwb3J0ZWQg
dGhlcmUuCgoKPiAKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
