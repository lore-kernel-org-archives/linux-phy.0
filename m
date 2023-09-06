Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A8E1EB8FA5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlvyWzPwaBh1KdjXyGu/qyQ/iYmr4RuTZ5XwO/GymEM=; b=yj5xJlmHLozUJS
	QV83IKGEh5fK+02HB+VHUt5x2MNGxHYYzy/j5ssLZQznGjAHEduNPF6uh6Tygip8lJDelDdbrHNaC
	LlUeV6wVqSBsZScmq9IFimCoyYLuPd3Wu8eAfqYgebYyrZL8/KAQusGEBsFzbQXKPFfcaucVALEtc
	BC8Qg2kO/Wo8LT6L8a/ALVALIqrwmcONLnr2dTy/e0Y/Qw7OG2CBC9j4M+i870Jpu1Fsrk62bFcLd
	Fp/baorNNdZd1odkZilYb5lWDugxDD3O2LRfiyVYcB2O9D809CUyC5dXERdVnlCYzziAiT6XUHFp1
	R78J8oXRXZ5Z0TyIWkxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdkob-007HGu-1t;
	Wed, 06 Sep 2023 05:10:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdkoZ-007HFV-06
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:10:56 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38656b6m023650;
	Wed, 6 Sep 2023 05:10:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=06kt8lU5x8NTGtXA1hKL+fDrhbSDkk4y2ysFAVVjJJs=;
 b=mA8zgeFeGxSoyhWqNYTBV0mT/sat79+ZzTqktc4kCB5pbSauLkelgyy1kN6tw6ZJnKnd
 2cCUS4G7xXIn9Yyl36cuTXzNyfE7hmE3n2+azwlqA2IQVnuZwnjfdkUcwpSLMNHXOuqT
 yq+hX+zJ1CM9h1dBcUuQuTxyCqHeT+6dzvZHn7Lcci8C1BOBlri4KKMrWGYcPGpT4bxZ
 2HlltC65l8UDDKol5eu9u+K9mB80wthsb2UKFLOGLjRKf1JGZxSWuneZ5t7QuU+HUPtM
 HM5LdXY4AkjIPyfVqg+EdHMrKz7HYX7wF8xS5av99iyMfuXyuQcQLUB3l55x3Z8uegvL gg== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sww32tt0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Sep 2023 05:10:43 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3865AgFW000975
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Sep 2023 05:10:42 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 22:10:34 -0700
Message-ID: <cde5be37-26a1-3efc-17f4-d58b87a9b99d@quicinc.com>
Date: Wed, 6 Sep 2023 10:40:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 3/5] dt-bindings: usb: qcom,dwc3: Fix SDX65 clocks
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <kernel@quicinc.com>
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-4-git-send-email-quic_rohiagar@quicinc.com>
 <35475122-cc40-486d-90a7-09be53588219@linaro.org>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <35475122-cc40-486d-90a7-09be53588219@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: uKWCAu0GXn7YnzIm0Xf9JtbCNihwD-2D
X-Proofpoint-GUID: uKWCAu0GXn7YnzIm0Xf9JtbCNihwD-2D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_13,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 mlxlogscore=637 mlxscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309060046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_221055_203183_805E87C2 
X-CRM114-Status: GOOD (  13.87  )
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

Ck9uIDkvNi8yMDIzIDI6MDUgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMDUvMDkv
MjAyMyAxMzozMCwgUm9oaXQgQWdhcndhbCB3cm90ZToKPj4gU0RYNjUgaGFzIDUgY2xvY2tzIHNv
IG1lbnRpb24gaW4gdGhlIGJpbmRpbmdzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSb2hpdCBBZ2Fy
d2FsIDxxdWljX3JvaGlhZ2FyQHF1aWNpbmMuY29tPgo+Cj4gRml4ZXMgdGFnPwpBY2suCj4KPj4g
LS0tCj4+IMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcWNvbSxkd2Mz
LnlhbWwgfCAxICsKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Cj4+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sZHdj
My55YW1sIAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcWNvbSxk
d2MzLnlhbWwKPj4gaW5kZXggNjc1OTEwNS4uMDE4MTE3YiAxMDA2NDQKPj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9xY29tLGR3YzMueWFtbAo+PiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sZHdjMy55YW1sCj4+IEBA
IC0xODAsNiArMTgwLDcgQEAgYWxsT2Y6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAtIHFjb20sc2RtNjcwLWR3YzMKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0g
cWNvbSxzZG04NDUtZHdjMwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29t
LHNkeDU1LWR3YzMKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzZHg2NS1k
d2MzCj4KPiBJcyBpbmRlbnQgY29ycmVjdCBoZXJlPwo+CkkgZG91YmxlIGNoZWtlZCB0aGUgcGF0
Y2ggYW5kIGRpZG50IGZpbmQgdGhlIGluZGVudGF0aW9uIHdyb25nLiBOb3QgCnN1cmUsIGluIHlv
dXIgcmVwbHkgaXQgc2VlbXMgd3JvbmcgYnV0IHRoZSBvcmlnaW5hbCBwYXRjaCBoYXMgY29ycmVj
dCAKaW5kZW50LgoKClRoYW5rcywKUm9oaXQKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gcWNvbSxzbTYzNTAtZHdjMwo+PiDCoMKgwqDCoMKgIHRoZW46Cj4+IMKgwqDCoMKgwqDC
oMKgIHByb3BlcnRpZXM6Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
