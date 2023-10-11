Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 821E6CD6E5A
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1QX8I0KdFwkql7Iqqkcp3uo4fatuMjM3eyE0e2xAMs=; b=qKjYbnA1jCP5pi
	F3LMG3FCMkAxPhPNk2WI3MrxOrM1KxWfT9L5nZH5N0SfyMmeRkU3i4GM7+39EKKcUsQB347Gtcrxu
	UmUQAE11kAEQYS4LZB4I7R+j67Vv/IyFNuVfCG3Jn0u9wRUJN4uk8rfVDj3uN8QfDqbeTZgvAX4KC
	qVqBwv7W1CiqEWXrklf3vrF/vHiwpreZ4fnu4h5FPKQNF/ewAMIsjzp3Weq/+sEwo2ufYopFz8rwe
	lXTYUTmmWsNAgt6S2RMuq3gI0sjM28rANA10UMcBVwQqFL+C6KlHEKbS4ev6whRvIV2kd3StEGP6x
	RxKjKhDAl0F4RSTMQrJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXA1-00Ficv-0N;
	Wed, 11 Oct 2023 11:13:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqX9y-00Ficc-26
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 11:13:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B6xaWu030377;
	Wed, 11 Oct 2023 11:13:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=bocOC/J8T706Omr3rO0oeDwb+/U0rf0qFLdx0Lbsf/Q=;
 b=dR0j1NbGAAnaOw0KK2/PTT1Tz3ewLMKOAorzCAW+OqfCVsB6v239oUwIWJP3SbwsWPjA
 GtjiMqcaCxiFli+9hj19d+JJcY8690TL1tj2YD9dIBt3Bgl1bOsuHKrty+IYDRAbJYTJ
 cqQUte+PfQT1s5/cRRP1BU1yweYaPlVwUbi3s7bWfL9RsGMKEvJldLq6E/Kk7lRRiW8e
 jVCWAoFqzVQv0cWNgOVaV8VndxJvvABSih042f7/LeZXu5lfsXQp84y8a0wh6hjNWPO7
 wN6YLwTIrXhKx0MqDPd8HplltotX5+pdfi+gdklXt5FtoWy8YIkULlJ0zWlAIWG6Twxi Ag== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tngtp9640-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:13:35 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39BBDYtT009828
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:13:34 GMT
Received: from [10.216.52.55] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 11 Oct
 2023 04:13:26 -0700
Message-ID: <8effa7e5-a223-081b-75b8-7b94400d42e6@quicinc.com>
Date: Wed, 11 Oct 2023 16:43:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 1/5] dt-bindings: PCI: qcom-ep: Add support for SA8775P
 SoC
Content-Language: en-US
To: Shazad Hussain <quic_shazhuss@quicinc.com>, Rob Herring <robh@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <konrad.dybcio@linaro.org>, <mani@kernel.org>,
        <quic_nitegupt@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nayiluri@quicinc.com>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>, <quic_parass@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
	<kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul
	<vkoul@kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mhi@lists.linux.dev>,
        <linux-phy@lists.infradead.org>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
 <20230921183850.GA762694-robh@kernel.org>
 <28bf111f-b965-4d38-884b-bc3a0b68a6cc@quicinc.com>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <28bf111f-b965-4d38-884b-bc3a0b68a6cc@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Ee4rSoIx9q09WeCGTwZYxy1bEmgTmEkg
X-Proofpoint-GUID: Ee4rSoIx9q09WeCGTwZYxy1bEmgTmEkg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_09,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 mlxlogscore=852
 priorityscore=1501 bulkscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_041350_733544_A32F08C5 
X-CRM114-Status: GOOD (  18.83  )
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

Ck9uIDEwLzYvMjAyMyA0OjI0IFBNLCBTaGF6YWQgSHVzc2FpbiB3cm90ZToKPgo+Cj4gT24gOS8y
Mi8yMDIzIDEyOjA4IEFNLCBSb2IgSGVycmluZyB3cm90ZToKPj4gT24gV2VkLCBTZXAgMjAsIDIw
MjMgYXQgMDc6MjU6MDhQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIgd3JvdGU6Cj4+PiBBZGQgZGV2
aWNldHJlZSBiaW5kaW5ncyBzdXBwb3J0IGZvciBTQTg3NzVQIFNvQy4KPj4+IERlZmluZSByZWcg
YW5kIGludGVycnVwdCBwZXIgcGxhdGZvcm0uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTXJpbm1h
eSBTYXJrYXIgPHF1aWNfbXNhcmthckBxdWljaW5jLmNvbT4KPj4+IC0tLQo+Pj4gwqAgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1lcC55YW1swqDCoMKgwqDCoCB8IDEzMCAK
Pj4+ICsrKysrKysrKysrKysrKysrLS0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEwOCBpbnNl
cnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtZXAueWFtbCAKPj4+IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtZXAueWFtbAo+Pj4g
aW5kZXggYTIyM2NlMC4uZTg2MGU4ZiAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLWVwLnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLWVwLnlhbWwKPj4+IEBAIC0x
Myw2ICsxMyw3IEBAIHByb3BlcnRpZXM6Cj4+PiDCoMKgwqAgY29tcGF0aWJsZToKPj4+IMKgwqDC
oMKgwqAgb25lT2Y6Cj4+PiDCoMKgwqDCoMKgwqDCoCAtIGVudW06Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgIC0gcWNvbSxzYTg3NzVwLXBjaWUtZXAKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSBxY29tLHNkeDU1LXBjaWUtZXAKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNt
ODQ1MC1wY2llLWVwCj4+PiDCoMKgwqDCoMKgwqDCoCAtIGl0ZW1zOgo+Pj4gQEAgLTIwLDI5ICsy
MSwxOSBAQCBwcm9wZXJ0aWVzOgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBx
Y29tLHNkeDU1LXBjaWUtZXAKPj4+IMKgIMKgwqDCoCByZWc6Cj4+PiAtwqDCoMKgIGl0ZW1zOgo+
Pj4gLcKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUXVhbGNvbW0tc3BlY2lmaWMgUEFSRiBjb25m
aWd1cmF0aW9uIHJlZ2lzdGVycwo+Pj4gLcKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogRGVzaWdu
V2FyZSBQQ0llIHJlZ2lzdGVycwo+Pj4gLcKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogRXh0ZXJu
YWwgbG9jYWwgYnVzIGludGVyZmFjZSByZWdpc3RlcnMKPj4+IC3CoMKgwqDCoMKgIC0gZGVzY3Jp
cHRpb246IEFkZHJlc3MgVHJhbnNsYXRpb24gVW5pdCAoQVRVKSByZWdpc3RlcnMKPj4+IC3CoMKg
wqDCoMKgIC0gZGVzY3JpcHRpb246IE1lbW9yeSByZWdpb24gdXNlZCB0byBtYXAgcmVtb3RlIFJD
IGFkZHJlc3Mgc3BhY2UKPj4+IC3CoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IEJBUiBtZW1vcnkg
cmVnaW9uCj4+PiArwqDCoMKgIG1pbkl0ZW1zOiA2Cj4+PiArwqDCoMKgIG1heEl0ZW1zOiA3Cj4+
PiDCoCDCoMKgwqAgcmVnLW5hbWVzOgo+Pj4gLcKgwqDCoCBpdGVtczoKPj4+IC3CoMKgwqDCoMKg
IC0gY29uc3Q6IHBhcmYKPj4+IC3CoMKgwqDCoMKgIC0gY29uc3Q6IGRiaQo+Pj4gLcKgwqDCoMKg
wqAgLSBjb25zdDogZWxiaQo+Pj4gLcKgwqDCoMKgwqAgLSBjb25zdDogYXR1Cj4+PiAtwqDCoMKg
wqDCoCAtIGNvbnN0OiBhZGRyX3NwYWNlCj4+PiAtwqDCoMKgwqDCoCAtIGNvbnN0OiBtbWlvCj4+
PiArwqDCoMKgIG1pbkl0ZW1zOiA2Cj4+PiArwqDCoMKgIG1heEl0ZW1zOiA3Cj4+Cj4+IERvbid0
IG1vdmUgdGhlc2UgaW50byBpZi90aGVuIHNjaGVtYXMuIFRoZW4gd2UgYXJlIGR1cGxpY2F0aW5n
IHRoZQo+PiBuYW1lcywgYW5kIHRoZXJlIGlzIG5vIHJlYXNvbiB0byBrZWVwIHRoZW0gYWxpZ25l
ZCBmb3IgbmV3IGNvbXBhdGlibGVzLgo+Pgo+PiBSb2IKPgo+IEhpIFJvYiwKPiBBcyB3ZSBoYXZl
IG9uZSBleHRyYSByZWcgcHJvcGVydHkgKGRtYSkgcmVxdWlyZWQgZm9yIHNhODc3NXAtcGNpZS1l
cCwKPiBpc24ndCBpdCBleHBlY3RlZCB0byBiZSBtb3ZlZCBpbiBpZi90aGVuIGFzIHBlciBudW1i
ZXIgb2YgcmVncwo+IHJlcXVpcmVkLiBBbnl3YXlzIHdlIHdvdWxkIGhhdmUgZHVwbGljYXRpb24g
b2Ygc29tZSBwcm9wZXJ0aWVzIGZvciBuZXcKPiBjb21wYXRpYmxlcyB3aGVyZSB0aGUgbWVtYmVy
IG51bWJlcnMgZGlmZmVycyBmb3IgYSBwcm9wZXJ0eS4KPgo+IEFyZSB5b3Ugc3VnZ2VzdGluZyB0
byBhZGQgdGhlIGV4dHJhIHJlZyBwcm9wZXJ0eSAoZG1hKSBpbiB0aGUgZXhpc3RpbmcgCj4gcmVn
IGFuZCByZWctbmFtZXMgbGlzdCwgYW5kIGFkZCBtaW5JdGVtcy9tYXhJdGVtcyBmb3IgYWxsIGNv
bXBhdGlibGVzIAo+IHByZXNlbnQgaW4gdGhpcyBmaWxlID8KPgo+IC1TaGF6YWQKCkhlcmUgd2Ug
aGF2ZSBkZWZpbmVkIHJlZyBhbmQgaW50ZXJydXB0IHBlciBwbGF0Zm9ybSBhcyBjbG9ja3MgaXMg
ZGVmaW5lZC4KCi1NcmlubWF5CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
