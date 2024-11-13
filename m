Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B5F7D597C8
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 03:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNXDXj+++fYR5YYccRwr/6dVq3Yy3hNC6+3g6MtPdfA=; b=AMnszLuWwG7Qha
	1RvWAZMMbESNevBZPF0JdY2bmICNAVROrHbo3dNPUZStrwIcsq1f3Ls8iOvG+UyltelZXO0ZrUtOc
	Ci0H5AXpSsKYv4uADXYKN8tzTCABFaCAiS++NpgMITpfkxmvxwyWbPrtEQgHR3uUcesa5wEwcdx3W
	njwzQPi6OxAKh5G6zj9FnyUGT1sHbqOdZ4nuxGeZk8jdvLBMKTVt3i2MEWDDOYLUL1Xt64HF9yJT9
	ZQ78bVwgVlAA+ae88oJxsww7+jemtNs6V9croai0Vz6icl6gdykTCr1Sz8KQj9h1XTDarhpWFSaeX
	DRDWlcip8t1AvHu9Dplg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB3rH-00000005ei0-0AX7;
	Wed, 13 Nov 2024 03:15:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB3rE-00000005ehW-3PH5
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 03:15:54 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ACMRgqn020160;
	Wed, 13 Nov 2024 03:15:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+0nLDjWPpDSaIUWRpCkibPRwNwq3e9MLwoKzDakWg+w=; b=JX1qTyrT7zAKVhlY
	RlEkMRqXDsI6mLayZ37Tij6MjkOAABzd7vU7rTN3cRkaAMtIL4s6WtUbLWD2PE41
	7858slkiUsa/VNI9mseBJ/vZsM51j5zzOL6gRMbxLVFsSnC21GbHiBZA19pMypFi
	wVibfE9gQv/f7vwkeB8EcGQLETrSTm5Swok5GJdOvMwOhPGg93B3w4FuJTvwrqoc
	IJbFbvtEZmzwWxFzmzGisGc7nmkxAoaH8Y9SQRuR8ToH+uUtYRj+QDfgPGHU3mxC
	DLa9HJP/7g5zqt3p00icl279ejEt7J914d7Z0eqJm0PfaA5NANgwcMRi/V44ioIu
	Ppdidw==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42uc60e0te-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 03:15:45 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AD3FiTU000592
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 03:15:44 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 12 Nov
 2024 19:15:38 -0800
Message-ID: <ef37236d-8856-4981-82fa-c0194d7b3dfc@quicinc.com>
Date: Wed, 13 Nov 2024 11:15:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/5] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <johan+linaro@kernel.org>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-6-quic_qianyu@quicinc.com>
 <ZyjbrLEn8oSJjaZN@hovoldconsulting.com>
 <de5f40ab-90b7-4c75-b981-dd5824650660@quicinc.com>
 <c558f9eb-d190-4b77-b5a3-7af6b7de68d8@quicinc.com>
 <ZzOQi0PpRZYts-B0@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZzOQi0PpRZYts-B0@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: GcnROkpzv1BlU-MSswyL8At-npoyDzuB
X-Proofpoint-ORIG-GUID: GcnROkpzv1BlU-MSswyL8At-npoyDzuB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 phishscore=0 suspectscore=0 impostorscore=0 mlxlogscore=812 adultscore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411130027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_191553_009499_4A325A98 
X-CRM114-Status: GOOD (  15.38  )
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

Ck9uIDExLzEzLzIwMjQgMToyOSBBTSwgSm9oYW4gSG92b2xkIHdyb3RlOgo+IE9uIE1vbiwgTm92
IDExLCAyMDI0IGF0IDExOjQ0OjE3QU0gKzA4MDAsIFFpYW5nIFl1IHdyb3RlOgo+PiBPbiAxMS81
LzIwMjQgMToyOCBQTSwgUWlhbmcgWXUgd3JvdGU6Cj4+PiBPbiAxMS80LzIwMjQgMTA6MzUgUE0s
IEpvaGFuIEhvdm9sZCB3cm90ZToKPj4+PiBPbiBUaHUsIE9jdCAzMSwgMjAyNCBhdCAwODowOTow
MlBNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmFuZ2VzID0gPDB4MDEwMDAwMDAgMHgwIDB4MDAwMDAwMDAgMHgwIDB4NzgyMDAwMDAgMHgwCj4+
Pj4+IDB4MTAwMDAwPiwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDww
eDAyMDAwMDAwIDB4MCAweDc4MzAwMDAwIDB4MCAweDc4MzAwMDAwIDB4MAo+Pj4+PiAweDNkMDAw
MDA+LAo+Pj4+IENhbiB5b3UgZG91YmxlIGNoZWNrIHRoZSBzaXplIGhlcmUgc28gdGhhdCBpdCBp
cyBpbmRlZWQgY29ycmVjdCBhbmQgbm90Cj4+Pj4ganVzdCBjb3BpZWQgZnJvbSB0aGUgb3RoZXIg
bm9kZXMgd2hpY2ggaW5pdGlhbGx5IGdvdCBpdCB3cm9uZzoKPj4+Pgo+Pj4+ICDCoMKgwqDCoGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNDA3MTAtdG9waWMtYmFybWFuLXYxLTEtNWY2
M2ZjYThkMGZjQGxpbmFyby5vcmcvCj4+IEJUVywgcmVnaW9ucyBvZiBQQ0llNmEsIFBDSWU0LCBQ
Q0llNSBhcmUgNjRNQiwgMzJNQiwgMzJNQiwgcmVzcGVjdGl2ZWx5Lgo+PiBXaHkgcmFuZ2Ugc2l6
ZSBpcyBzZXQgdG8gMHgxZDAwMDAwIGZvciBQQ0llNmEsIGFueSBpc3N1ZSBpcyByZXBvcnRlZCBv
bgo+PiBQQ0llNmE/Cj4gVGhhbmtzIGZvciBjaGVja2luZy4gSXQgc2VlbXMgdGhlIHBhdGNoIGxp
bmtlZCB0byBhYm92ZSB3YXMgYnJva2VuIGZvcgo+IFBDSWU2YSB0aGVuLgo+Cj4gV2UgZGlkIHNl
ZSBQQ0llNSBwcm9iZSBicmVha2luZyBkdWUgdG8gdGhlIG92ZXJsYXAgd2l0aCBQQ0llNCBidXQg
dGhlCj4gcGF0Y2ggcHJlZGF0ZXMgUENJZTUgc3VwcG9ydCBiZWluZyBwb3N0ZWQgYW5kIG1lcmdl
ZCBzbyBpdCB3YXMgcHJvYmFibHkKPiBqdXN0IGJhc2VkIG9uIGluc3BlY3Rpb24uCj4KPiBDb3Vs
ZCB5b3Ugc2VuZCBhIGZpeCBmb3IgUENJZTZhPwpTdXJlLCB3aWxsIHNlbmQgdGhlIGZpeC4KClRo
YW5rcywKUWlhbmcgWXUKPgo+IEpvaGFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
