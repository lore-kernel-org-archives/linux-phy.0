Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9579AEED618
	for <linux-phy@archiver.kernel.org>; Fri, 15 Sep 2023 16:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1VfuTgVSIEXRWGLPCNfbq3x1qaOQJdvCGqZ5xnClvc=; b=P0R4q3LprgbQrV
	8pRRl+3Zv5LS8355Sdhb/RQR3BDBqx343tlOEJS+TLgnZmMh6djxP60kpHkiAfYrcgHy63tU8xrlU
	RhQnUtLAMnevl73EjKRh/UEGC1iR66rhDIFpuOzaP02Z8ZvxAF4wgY3ecF+RNk2slwIycgetOEWWk
	Bc1J03x7E5K0SyVxeNCaIi+zHjUwPG8GzlSEOUJX+I1mdNaOwQat6UaYYGd1O9d8MkYFkBoVInNeF
	JjdEzIrqQ5/7JseCPUYihGfsNUGHMJGQPtHuES1ADVWZ2pExCiZm22/334kj31wQGVmBtexM6+9OQ
	Wny7lvfX5zHWg0je8mxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhBSs-00B2du-11;
	Fri, 15 Sep 2023 16:14:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhBSm-00B2cb-2C
	for linux-phy@lists.infradead.org;
	Fri, 15 Sep 2023 16:14:39 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38FDivV8020663;
	Fri, 15 Sep 2023 16:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=erJuSEpdqAIVPeaGsYnZ3SEDURTnASwcYNladoGLgmc=;
 b=MQRHmAKUpdVaOWJn/41L5e0pO+oLk7nF3R/b3HCuFLarZsGsWBky91VxvrVoVGyT46+V
 xkj7E1Hl0jZoyPgmkQmtDAgOy+AHquQ5Qe2U5bPOkc7h7I6StumcT4fa4cK/MPjUPTMn
 IVAzBRrHH+KDs3zf631A/NbFAb4WFyyi0JDY16Hm2O16/ErP7O/l0zaCQ41gmhnfFdKD
 d9fXjNzhGas2E2Y6q8Zdah1t3OKZbBrGLCxxG+YiAosZQynz7+Ku6xl7yIzuH2R5yuHu
 3xAYYGE2RZwi385QVZ+pki8lO6MmpiMfxvnDQROaNVEqlYcQtOXyfhrD/no49qk3/pGz JQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t4dvqsv9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2023 16:14:22 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38FGEMNG006287
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2023 16:14:22 GMT
Received: from [10.218.45.181] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Fri, 15 Sep
 2023 09:14:17 -0700
Message-ID: <c9719d64-33c1-d13e-0ab6-289011282044@quicinc.com>
Date: Fri, 15 Sep 2023 21:44:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Manish Pandey
	<quic_mapa@quicinc.com>
References: <20230823091757.31311-1-quic_nitirawa@quicinc.com>
 <20230823091757.31311-3-quic_nitirawa@quicinc.com>
 <24cff590-c71f-4a30-9b80-fa9a0bd27957@linaro.org>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <24cff590-c71f-4a30-9b80-fa9a0bd27957@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: nDrCdLQcMKzJTFPT7rnpBt26XwOzkXPh
X-Proofpoint-ORIG-GUID: nDrCdLQcMKzJTFPT7rnpBt26XwOzkXPh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-15_12,2023-09-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1011
 mlxlogscore=999 phishscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309150145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_091436_776062_4A021AFE 
X-CRM114-Status: GOOD (  16.63  )
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

CgpPbiA5LzYvMjAyMyAxOjM0IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIDIzLzA4
LzIwMjMgMTI6MTcsIE5pdGluIFJhd2F0IHdyb3RlOgo+PiBBZGQgU0M3MjgwIHNwZWNpZmljIHJl
Z2lzdGVyIGxheW91dCBhbmQgdGFibGUgY29uZmlncy4KPj4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBN
YW5pc2ggUGFuZGV5IDxxdWljX21hcGFAcXVpY2luYy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1h
bmlzaCBQYW5kZXkgPHF1aWNfbWFwYUBxdWljaW5jLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTml0
aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgfCAxNDIgKysrKysrKysrKysrKysrKysr
KysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNDIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIAo+PiBiL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+PiBpbmRleCAzOTI3ZWJhOGU0
NjguLjUxNGZhMTRkZjYzNCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVmcy5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11ZnMuYwo+IAo+IFtza2lwcGVkIHRhYmxlcyBwcm9ncmFtbWluZ10KPiAKPiA0KSwKU29ycnkg
SSBxdWl0ZSBkaWRuJ3QgZ2V0IHRoaXMgY29tbWVudC4gd2hhdCBleGFjdGx5IGlzIHNraXBwZWQg
P1BsZWFzZSAKY2FuIHlvdSBoZWxwIGV4cGxhaW4/CgoKPj4gQEAgLTg4OCw2ICs5OTMsNDAgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAKPj4gc2E4Nzc1cF91ZnNwaHlfY2ZnID0g
ewo+PiDCoMKgwqDCoMKgIC5yZWdzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IHVmc3BoeV92NV9y
ZWdzX2xheW91dCwKPj4gwqAgfTsKPj4KPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9j
Zmcgc2M3MjgwX3Vmc3BoeV9jZmcgPSB7Cj4+ICvCoMKgwqAgLmxhbmVzwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA9IDIsCj4+ICsKPj4gK8KgwqDCoCAub2Zmc2V0c8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9ICZxbXBfdWZzX29mZnNldHMsCj4+ICsKPj4gK8KgwqDC
oCAudGJscyA9IHsKPj4gK8KgwqDCoMKgwqDCoMKgIC5zZXJkZXPCoMKgwqDCoMKgwqDCoMKgID0g
c204MTUwX3Vmc3BoeV9zZXJkZXMsCj4+ICvCoMKgwqDCoMKgwqDCoCAuc2VyZGVzX251bcKgwqDC
oMKgID0gQVJSQVlfU0laRShzbTgxNTBfdWZzcGh5X3NlcmRlcyksCj4+ICvCoMKgwqDCoMKgwqDC
oCAudHjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBzYzcyODBfdWZzcGh5X3R4LAo+PiArwqDC
oMKgwqDCoMKgwqAgLnR4X251bcKgwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKHNjNzI4MF91
ZnNwaHlfdHgpLAo+PiArwqDCoMKgwqDCoMKgwqAgLnJ4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ID0gc2M3MjgwX3Vmc3BoeV9yeCwKPj4gK8KgwqDCoMKgwqDCoMKgIC5yeF9udW3CoMKgwqDCoMKg
wqDCoMKgID0gQVJSQVlfU0laRShzYzcyODBfdWZzcGh5X3J4KSwKPj4gK8KgwqDCoMKgwqDCoMKg
IC5wY3PCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gc2M3MjgwX3Vmc3BoeV9wY3MsCj4+ICvCoMKg
wqDCoMKgwqDCoCAucGNzX251bcKgwqDCoMKgwqDCoMKgID0gQVJSQVlfU0laRShzYzcyODBfdWZz
cGh5X3BjcyksCj4+ICvCoMKgwqAgfSwKPj4gK8KgwqDCoCAudGJsc19oc19iID0gewo+PiArwqDC
oMKgwqDCoMKgwqAgLnNlcmRlc8KgwqDCoMKgwqDCoMKgwqAgPSBzbTgxNTBfdWZzcGh5X2hzX2Jf
c2VyZGVzLAo+PiArwqDCoMKgwqDCoMKgwqAgLnNlcmRlc19udW3CoMKgwqDCoCA9IEFSUkFZX1NJ
WkUoc204MTUwX3Vmc3BoeV9oc19iX3NlcmRlcyksCj4+ICvCoMKgwqAgfSwKPj4gK8KgwqDCoCAu
dGJsc19oc19nNCA9IHsKPj4gK8KgwqDCoMKgwqDCoMKgIC50eMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA9IHNtODI1MF91ZnNwaHlfaHNfZzRfdHgsCj4+ICvCoMKgwqDCoMKgwqDCoCAudHhfbnVt
wqDCoMKgwqDCoMKgwqDCoCA9IEFSUkFZX1NJWkUoc204MjUwX3Vmc3BoeV9oc19nNF90eCksCj4+
ICvCoMKgwqDCoMKgwqDCoCAucnjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBzYzcyODBfdWZz
cGh5X2hzX2c0X3J4LAo+PiArwqDCoMKgwqDCoMKgwqAgLnJ4X251bcKgwqDCoMKgwqDCoMKgwqAg
PSBBUlJBWV9TSVpFKHNjNzI4MF91ZnNwaHlfaHNfZzRfcngpLAo+PiArwqDCoMKgwqDCoMKgwqAg
LnBjc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBzbTgxNTBfdWZzcGh5X2hzX2c0X3BjcywKPj4g
K8KgwqDCoMKgwqDCoMKgIC5wY3NfbnVtwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKHNtODE1
MF91ZnNwaHlfaHNfZzRfcGNzKSwKPj4gK8KgwqDCoCB9LAo+PiArwqDCoMKgIC5jbGtfbGlzdMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBzbTg0NTBfdWZzX3BoeV9jbGtfbCwKPj4gK8Kg
wqDCoCAubnVtX2Nsa3PCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gQVJSQVlfU0laRShz
bTg0NTBfdWZzX3BoeV9jbGtfbCksCj4gCj4gVGhpcyBkb2Vzbid0IGNvcnJlc3BvbmQgdG8gdGhl
IGJpbmRpbmdzLiBUaGlzIGFycmF5IGhhcyAzIGVucmllcywgd2hpbGUgCj4gaW4gdGhlIGJpbmRp
bmdzIHlvdSBoYXZlIG9wdGVkIGZvciB0d28gY2xvY2tzIGZvciB0aGlzIFBIWS4KU3VyZS4gSSds
bCB1cGRhdGUgdGhlIGJpbmRpbmdzLgoKPiAKPj4gK8KgwqDCoCAudnJlZ19saXN0wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPSBxbXBfcGh5X3ZyZWdfbCwKPj4gK8KgwqDCoCAubnVtX3ZyZWdz
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKHFtcF9waHlfdnJlZ19sKSwK
Pj4gK8KgwqDCoCAucmVnc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IHVm
c3BoeV92NF9yZWdzX2xheW91dCwKPj4gK307Cj4+ICsKPj4gwqAgc3RhdGljIGNvbnN0IHN0cnVj
dCBxbXBfcGh5X2NmZyBzYzgyODB4cF91ZnNwaHlfY2ZnID0gewo+PiDCoMKgwqDCoMKgIC5sYW5l
c8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSAyLAo+Pgo+PiBAQCAtMTY0OCw2ICsxNzg3LDkgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgCj4+IHFtcF91ZnNfb2ZfbWF0Y2hfdGFi
bGVbXSA9IHsKPj4gwqDCoMKgwqDCoCB9LCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAuY29tcGF0
aWJsZSA9ICJxY29tLHNhODc3NXAtcW1wLXVmcy1waHkiLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
LmRhdGEgPSAmc2E4Nzc1cF91ZnNwaHlfY2ZnLAo+PiArwqDCoMKgIH0sIHsKPj4gK8KgwqDCoMKg
wqDCoMKgIC5jb21wYXRpYmxlID0gInFjb20sc2M3MjgwLXFtcC11ZnMtcGh5IiwKPj4gK8KgwqDC
oMKgwqDCoMKgIC5kYXRhID0gJnNjNzI4MF91ZnNwaHlfY2ZnLAo+PiDCoMKgwqDCoMKgIH0sIHsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5jb21wYXRpYmxlID0gInFjb20sc2M4MTgweC1xbXAtdWZz
LXBoeSIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAuZGF0YSA9ICZzbTgxNTBfdWZzcGh5X2NmZywK
Pj4gLS0gCj4+IDIuMTcuMQo+Pgo+IApUaGFua3MsCk5pdGluCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
