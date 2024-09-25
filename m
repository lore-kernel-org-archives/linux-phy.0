Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DB58CF9C71
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 03:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHNdXK7f1/cC0fVg3MuHnC+0CRLAbir+5uxuA4UrZ/E=; b=0wUnUJAS2s1OzD
	PslLYhL2Nd6afJp42iTSObpakAKSrV/2IvRD3hul0dGYulLGBfW30vbSwXej40DZinjzs7mPacrzz
	uuCow/g0J3RLJZVCVUH/Qbw+vtqHvK8Mu9qQRvq0zu8WZQ9FuwLtbM9VHH9yPohX2HnQdVd63535y
	069t5JGjnK9PSOa7h9TfUUks6ahBPSHZx6NHgXMRBxsbaXPlD/1R4yQbVjTY7v8n+1chUL2vMdeT4
	LE7wuTo3EPsr2jgvf/my/gmqWZVsT78TdgJsYL1wDiM32hNlIHEZk2uh8+Fq0Fm7/Oh+eg4yrTa9g
	yAGQif9jg5ziIzA9Jq2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stJ9c-00000003wEw-0I0J;
	Wed, 25 Sep 2024 03:57:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stJ9Z-00000003wET-1HJy
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 03:57:26 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48OHPbm2030767;
	Wed, 25 Sep 2024 03:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CX20ZVEGJjZtDO5C6RRvh7xdr6TkKmPim/oalofyHN4=; b=UacvM0WY50vYut0l
	kP8X1l3Crye4s90m2Z+Lmqw2lI/5KeI6RZ5rji9KBIRCBYUPWBV/LE4znoWsZHQS
	Z/XnJfqR0M7TtvXoePbs8pIhiCvrbCsU/jWASWDVqDyggYy1ZepTY/lu/WDO1YH2
	4x6I5MAwQiAz71Fq89AiBib1ZWXuXHiRvtpXskGQn2RTa+EuVquya7F4ATZ72ZPe
	26m5zVstZowa+QeU5VCuhnANUihMd/oqDASkl42ZEGODK0JslX5GMj3U+no/7Zl2
	cbPiPGr6nXO7GLL8EyGpinr3MAe5HqvctzgEOWvo2gtsYvA18Rmdsyvu/d+nyJcG
	0uJq0A==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sph6twn3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:57:15 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48P3vEWl010502
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:57:14 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 24 Sep
 2024 20:57:09 -0700
Message-ID: <f9456f67-0425-4ed0-8de0-17ed61e2af8e@quicinc.com>
Date: Wed, 25 Sep 2024 11:57:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Konrad Dybcio <konradybcio@kernel.org>, <manivannan.sadhasivam@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>
CC: <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: c8VYh7fdAYRf9m3U8TbeBHMSdcxHJSVY
X-Proofpoint-ORIG-GUID: c8VYh7fdAYRf9m3U8TbeBHMSdcxHJSVY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxlogscore=999
 mlxscore=0 adultscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409250027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_205725_497628_20D188A9 
X-CRM114-Status: GOOD (  12.58  )
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

Ck9uIDkvMjQvMjAyNCAxMDoyNiBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAyNC4wOS4y
MDI0IDEyOjE0IFBNLCBRaWFuZyBZdSB3cm90ZToKPj4gRGVzY3JpYmUgUENJZTMgY29udHJvbGxl
ciBhbmQgUEhZLiBBbHNvIGFkZCByZXF1aXJlZCBzeXN0ZW0gcmVzb3VyY2VzIGxpa2UKPj4gcmVn
dWxhdG9ycywgY2xvY2tzLCBpbnRlcnJ1cHRzIGFuZCByZWdpc3RlcnMgY29uZmlndXJhdGlvbiBm
b3IgUENJZTMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxdWljX3FpYW55dUBxdWlj
aW5jLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hr
b3ZAbGluYXJvLm9yZz4KPj4gLS0tCj4gUWlhbmcsIE1hbmkKPgo+IEkgaGF2ZSBhIFJUUzUyNjEg
bW1jIGNoaXAgb24gUENJZTMgb24gdGhlIFN1cmZhY2UgTGFwdG9wLgo+IEFkZGluZyB0aGUgZ2xv
YmFsIGlycSBicmVha3Mgc2RjYXJkIGRldGVjdGlvbiAodGhlIGNoaXAgc3RpbGwgY29tZXMKPiB1
cCBmaW5lKSBzb21laG93LiBSZW1vdmluZyB0aGUgaXJxIG1ha2VzIGl0IHdvcmsgYWdhaW4gOnwK
Pgo+IEkndmUgY29uZmlybWVkIHRoYXQgdGhlIGlycSBudW1iZXIgaXMgY29ycmVjdApBY3R1YWxs
eSwgSSB2ZXJpZmllZCB0aGlzIHBhdGNoIHdpdGggc2V2ZXJhbCBkZXZpY2VzIChTRFg3NSwgQUlD
MTAwIGFuZApSODE2OSBvZiBUUC1MSU5LKSBhdHRhY2hlZCB0byBYMUU4MDEwMCBRQ1AuIEJ1dCBJ
IGRpZG4ndCBtZWV0IHRoaXMgaXNzdWUuCkVhY2ggZGV2aWNlIHdhcyBkZXRlY3RlZC4gQ2FuIHlv
dSBwbGVhc2Ugc2hhcmUgYm9vdCBsb2cgaWYgaXQgaXMgcG9zc2libGU/CgpNYW5pLCBkaWQgeW91
IGV2ZXIgbWVldCBzaW1pbGFyIGlzc3VlIG9uIG90aGVyIHBsYXRmb3Jtcz8KCjAwMDM6MDE6MDAu
MCBDbGFzcyAwMjAwOiBEZXZpY2UgMTBlYzo4MTYxIChyZXYgMTUpCiDCoMKgwqDCoMKgwqDCoCBT
dWJzeXN0ZW06IERldmljZSAxMGVjOjgxNjgKIMKgwqDCoMKgwqDCoMKgIEkvTyBwb3J0cyBhdCAx
MDAwMDAgW3NpemU9MjU2XQogwqDCoMKgwqDCoMKgwqAgTWVtb3J5IGF0IDc4MzA0MDAwICg2NC1i
aXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTRLXQogwqDCoMKgwqDCoMKgwqAgTWVtb3J5IGF0
IDc4MzAwMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTE2S10KIMKgwqDCoMKg
wqDCoMKgIEtlcm5lbCBkcml2ZXIgaW4gdXNlOiByODE2OQoKMDAwMzowMTowMC4wIENsYXNzIGZm
MDA6IERldmljZSAxN2NiOjAzMDkKIMKgwqDCoMKgwqDCoMKgIFN1YnN5c3RlbTogRGV2aWNlIDE3
Y2I6MDMwOQogwqDCoMKgwqDCoMKgwqAgTWVtb3J5IGF0IDc4NTgwMDAwICg2NC1iaXQsIG5vbi1w
cmVmZXRjaGFibGUpIFtzaXplPTRLXQogwqDCoMKgwqDCoMKgwqAgTWVtb3J5IGF0IDc4NTgxMDAw
ICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTRLXQogwqDCoMKgwqDCoMKgwqAgS2Vy
bmVsIGRyaXZlciBpbiB1c2U6IG1oaS1wY2ktZ2VuZXJpYwoKMDAwMzowMTowMC4wIENsYXNzIDEy
MDA6IERldmljZSAxN2NiOmExMDAKIMKgwqDCoMKgwqDCoMKgIFN1YnN5c3RlbTogRGV2aWNlIDE3
Y2I6YTEwMAogwqDCoMKgwqDCoMKgwqAgUmVnaW9uIDA6IE1lbW9yeSBhdCA3ODMwMDAwMCAoNjQt
Yml0LCBub24tcHJlZmV0Y2hhYmxlKSAKW2Rpc2FibGVkXSBbc2l6ZT00S10KIMKgwqDCoMKgwqDC
oMKgIFJlZ2lvbiAyOiBNZW1vcnkgYXQgNzg0MDAwMDAgKDY0LWJpdCwgbm9uLXByZWZldGNoYWJs
ZSkgCltkaXNhYmxlZF0gW3NpemU9Mk1dCiDCoMKgwqDCoMKgwqDCoCBSZWdpb24gNDogTWVtb3J5
IGF0IDc4NjAwMDAwICg2NC1iaXQsIHByZWZldGNoYWJsZSkgW2Rpc2FibGVkXSAKW3NpemU9NjRL
XQoKVGhhbmtzLApRaWFuZyBZdQo+Cj4gS29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
