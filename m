Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0CF6C3DA61
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 09:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qohGlP7uzF34sVTo2TP8Z6dnRALH65ej9aACFs6ikWw=; b=ccl+pV3Er+EkPN
	FszkknK9aFiBOC0hX0ybnXwYP2AVv3FbUwzTVWI0kGiww5a6DyBZzv2Y72f0Tr3UE1aP3Bx0Y7lcr
	iSQK3hmFecU/aVzZNKm4qdspR5TTy+pjECCX9nA1gFLmtt1h6xtajunn4llrySBKcEtjhCW5nSyhr
	Ux4rN872MNPiPSwD2JpmBj+jDyucPcz8/cTCAUihjHADtvWG8GVEoaPDgicISQCgB9ZzrMsFU5lHI
	yhdyfyUlbMz7UM8d8vwhfbiWfw5ICymGGfZpZr3nWxDOKaMKYAVdN8vDP/xog9yOq/+IQDI/UERc+
	4rOrsXQ/lzHGHjBNY0xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMyW-0000000Akn2-2xPo;
	Mon, 29 Jul 2024 09:47:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMyT-0000000Akm8-2PdD
	for linux-phy@lists.infradead.org;
	Mon, 29 Jul 2024 09:47:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46T0K33K018457;
	Mon, 29 Jul 2024 09:47:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pxxdc/pYVKgzVeeMdjjBXMbhXRjZr78T908e+MFmHB0=; b=ivz3633oyDfDv3j7
	onp5fU+isjOxou4O8FhRvN3pLugQHzFQg6EeehW4PORw9ROtL8kgtoT3mcgS3EaA
	xAqhkI/nMXLyMcw9WXrGYgnxFkT6sz3TH5SCvXWXIWl+AHQa2AZso1Ui3D/v2mtz
	5L/aqmKbYS0QFU3KwY3fOPy/ucayCXdMEsVT+dvBtSFlk7JuRekd0dc8kpu+Mbph
	XCWIyianmPszYXpx40zl6JwdgK0c9Q/W/4ysnjfP6DdAcvt9Q8O1Sii7IVYWdXPI
	kZCWKuGSnyB46XcXm/F2EXjB9QUbw9xBdEbyEnT12LDNJL268r3TOGhXcTVWN0Fb
	wI8dng==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 40mrfxkqrm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Jul 2024 09:47:20 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 46T9lJYH022094
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Jul 2024 09:47:19 GMT
Received: from [10.239.132.204] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 29 Jul
 2024 02:47:13 -0700
Message-ID: <21c86552-4719-4e60-ab7e-9df3d732df46@quicinc.com>
Date: Mon, 29 Jul 2024 17:47:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: describe the Qualcomm SGMII PHY
 for QCS9100
From: Tengfei Fan <quic_tengfan@quicinc.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-0-5ffeb16252db@quicinc.com>
 <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-1-5ffeb16252db@quicinc.com>
 <1486c975-3cc8-46b9-b049-1df4dfed0040@kernel.org>
 <8ef27923-03ed-44d2-bfa3-6efc75f8d6be@quicinc.com>
In-Reply-To: <8ef27923-03ed-44d2-bfa3-6efc75f8d6be@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: tg_MxtNkXlRMhuqreJSbhio9BbFLijZw
X-Proofpoint-ORIG-GUID: tg_MxtNkXlRMhuqreJSbhio9BbFLijZw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-29_07,2024-07-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=999 malwarescore=0
 bulkscore=0 phishscore=0 clxscore=1011 mlxscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2407290065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_024725_775191_DD8439A5 
X-CRM114-Status: GOOD (  17.20  )
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

CgpPbiA3LzExLzIwMjQgMTE6NTIgQU0sIFRlbmdmZWkgRmFuIHdyb3RlOgo+IAo+IAo+IE9uIDcv
MTAvMjAyNCA2OjEzIFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiAwOS8wNy8y
MDI0IDE3OjE1LCBUZW5nZmVpIEZhbiB3cm90ZToKPj4+IERvY3VtZW50IHRoZSBRdWFsY29tbSBT
R01JSSBQSFkgZm9yIHRoZSBRQ1M5MTAwIHBsYXRmb3Jtcy4KPj4+IFFDUzkxMDAgaXMgZHJpdmVk
IGZyb20gU0E4Nzc1cC4gQ3VycmVudGx5LCBib3RoIHRoZSBRQ1M5MTAwIGFuZCBTQTg3NzVwCj4+
PiBwbGF0Zm9ybSB1c2Ugbm9uLVNDTUkgcmVzb3VyY2UuIEluIHRoZSBmdXR1cmUsIHRoZSBTQTg3
NzVwIHBsYXRmb3JtIHdpbGwKPj4+IG1vdmUgdG8gdXNlIFNDTUkgcmVzb3VyY2VzIGFuZCBpdCB3
aWxsIGhhdmUgbmV3IHNhODc3NXAtcmVsYXRlZCBkZXZpY2UKPj4+IHRyZWUuIENvbnNlcXVlbnRs
eSwgaW50cm9kdWNlICJxY29tLHFjczkxMDAtZHdtYWMtc2dtaWktcGh5IiB0byBkZXNjcmliZQo+
Pj4gbm9uLVNDTUkgYmFzZWQgdGhlIFF1YWxjb21tIFNHTUlJIFBIWS4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBUZW5nZmVpIEZhbiA8cXVpY190ZW5nZmFuQHF1aWNpbmMuY29tPgo+Pj4gLS0tCj4+
PiAgIAo+Pj4gLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2E4Nzc1cC1kd21hYy1z
Z21paS1waHkueWFtbCAgICAgICAgCj4+PiB8IDUgKysrKy0KPj4+IMKgIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IAo+Pj4g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2E4Nzc1cC1kd21h
Yy1zZ21paS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxzYTg3NzVwLWR3bWFjLXNnbWlpLXBoeS55YW1sCj4+PiBpbmRleCBiOTEwNzc1OWIyYTUu
Ljc0ZWM0NTc5YzBkNiAxMDA2NDQKPj4+IC0tLSAKPj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNhODc3NXAtZHdtYWMtc2dtaWktcGh5LnlhbWwKPj4+ICsr
KyAKPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNhODc3
NXAtZHdtYWMtc2dtaWktcGh5LnlhbWwKPj4+IEBAIC0xNSw3ICsxNSwxMCBAQCBkZXNjcmlwdGlv
bjoKPj4+IMKgIHByb3BlcnRpZXM6Cj4+PiDCoMKgwqAgY29tcGF0aWJsZToKPj4+IC3CoMKgwqAg
Y29uc3Q6IHFjb20sc2E4Nzc1cC1kd21hYy1zZ21paS1waHkKPj4+ICvCoMKgwqAgaXRlbXM6Cj4+
Cj4+IGl0ZW1zIGlzIG5vdCBuZWVkZWQgaGVyZSwgdGhpcyBjb3VsZCBiZSBhbiBlbnVtIGRpcmVj
dGx5Lgo+Pgo+PiBBY2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxv
d3NraUBsaW5hcm8ub3JnPgo+IAo+IFRoYW5rcyBLcnp5c3p0b2YhCj4gCj4gSW4gdGhlIG5leHQg
dmVyc2lvbiBwYXRjaCBzZXJpZXMsIEkgd2lsbCBjaGVjayBhbGwgdGhlIHBhdGNoIHNlcmllcywg
Cj4gdXNpbmcgYW4gZW51bSBpbnN0ZWFkIG9kIGl0ZW1zLgoKQWZ0ZXIgY29uc2lkZXJpbmcgdGhl
IGZlZWRiYWNrIHByb3ZpZGVkIG9uIHRoZSBzdWJqZWN0LCBXZSBoYXZlIGRlY2lkZWQKdG8ga2Vl
cCBjdXJyZW50IFNBODc3NXAgY29tcGF0aWJsZSBhbmQgQUJJIGNvbXBhdGliaWxpdHkgaW4gZHJp
dmVycy4KTGV0J3MgY2xvc2UgdGhpcyBzZXNzaW9uIGFuZCBpZ25vcmUgYWxsIHRoZSBjdXJyZW50
IHBhdGNoZXMgaGVyZS4KVGhhbmsgeW91IGZvciB5b3VyIGlucHV0LgoKPiAKPj4KPj4KPj4KPj4g
QmVzdCByZWdhcmRzLAo+PiBLcnp5c3p0b2YKPj4KPiAKCi0tIApUaHggYW5kIEJScywKVGVuZ2Zl
aSBGYW4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
