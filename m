Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D689EEB8FAF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZoyH6qtpnrLQ58WWG9AdHd99WCdZ0FZ+4Lm/ZpSFLs=; b=31QMjtE8OO80zc
	fi49HsKEVJaiyWxb8mVO4q1h1PXCziBySg7IhZg9VH0XQjuk9ib5pB0F62E1DN9uq/jCPlAMrO3cR
	+CqeidA8dpUxQf9rAQxbYC01aILwT6g5vz9Xc5rj19dcR5nIG/t8+ftKotzVPdw6bdY6+Mfjk7Nq+
	UInwpJTst/ydaEq9EqJWnVQfuWusnj5KyL8KXxLGNBJr3cZBm8jlcVC2xTLEKln+RE1bjRWrqu8eh
	Ga5xxPhl7BOuYCBg69cTHytj8ydwo5mS8/n4BK3HvQagE553cSyXmdPScFkqWS232aAQcDXJJlX55
	Dtb9+K5plSHpIfkzFrjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlCk-007Iiu-13;
	Wed, 06 Sep 2023 05:35:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlCh-007IiX-0Q
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:35:52 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3864eDF1016002;
	Wed, 6 Sep 2023 05:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=K71dDfISUpoL/pGcHA7RhHkRhwFR2rHL+gv6H9gTCAY=;
 b=Asd4J4MwC9uzjlHOXoVFBgP0uiId2UnLFVU+v68q4xfSuBMhzHRS0cQSvyCCG1p6iZ/F
 zrjMGPvUtxMrkp0Oci+73y0SUHDEcvwtsrGaoPmX22Zj3fN/mwyfv1XlIy1NyGaZbRkv
 aZH2m7OSUN7f6Nav7vZhoxYSICiFYZ0OObXxiBJi62eLbRJQ/fToU/HiKO4zfQ3MWgQg
 m7Vex6v66Fhv1K8gA9t8y5S5e67GvGlxDAmehSqxma26QuilfsrtXMo4sfXURKLUy+P1
 NKTQy7EsDp4LomE3UO3MmVe7OTu+Vsk9uBvWCLMX7L9jnUb7BFsRMWjSazALm8ESN4cX 4Q== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sx62wt02p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Sep 2023 05:35:43 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3865ZgUN000725
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Sep 2023 05:35:42 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 22:35:34 -0700
Message-ID: <0d76f851-ef7a-2d09-a344-9ec31ba581a5@quicinc.com>
Date: Wed, 6 Sep 2023 11:05:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 5/5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY
 support
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
 <1693909838-6682-6-git-send-email-quic_rohiagar@quicinc.com>
 <8aefd8f9-cfe9-4011-a24b-ebb13d28faa0@linaro.org>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <8aefd8f9-cfe9-4011-a24b-ebb13d28faa0@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: KMxD0XH2KVxsoNnQxgzWQnaQimkrD6st
X-Proofpoint-ORIG-GUID: KMxD0XH2KVxsoNnQxgzWQnaQimkrD6st
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_13,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 impostorscore=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 suspectscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309060050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_223551_197797_AB7092A8 
X-CRM114-Status: GOOD (  16.33  )
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

Ck9uIDkvNi8yMDIzIDI6MDggQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMDUvMDkv
MjAyMyAxMzozMCwgUm9oaXQgQWdhcndhbCB3cm90ZToKPj4gQWRkIHN1cHBvcnQgZm9yIFVTQjMg
UU1QIFBIWSBmb3VuZCBpbiBTRFg3NSBwbGF0Zm9ybS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUm9o
aXQgQWdhcndhbCA8cXVpY19yb2hpYWdhckBxdWljaW5jLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2IuYyB8IDE1OCAKPj4gKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE1OCBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
dXNiLmMgCj4+IGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYi5jCj4+IGlu
ZGV4IDAxMzBiYjguLjU3YjhiNWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC11c2IuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdXNiLmMKPj4gQEAgLTIzLDYgKzIzLDcgQEAKPj4gwqAgI2luY2x1ZGUgInBoeS1xY29t
LXFtcC1wY3MtbWlzYy12My5oIgo+PiDCoCAjaW5jbHVkZSAicGh5LXFjb20tcW1wLXBjcy11c2It
djQuaCIKPj4gwqAgI2luY2x1ZGUgInBoeS1xY29tLXFtcC1wY3MtdXNiLXY1LmgiCj4+ICsjaW5j
bHVkZSAicGh5LXFjb20tcW1wLXBjcy11c2ItdjYuaCIKPj4gwqAgwqAgLyogUVBIWV9TV19SRVNF
VCBiaXQgKi8KPj4gwqAgI2RlZmluZSBTV19SRVNFVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBCSVQoMCkKPj4gQEAgLTg1OCw2ICs4NTksMTM0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cW1wX3BoeV9pbml0X3RibCAKPj4gc2R4NjVfdXNiM191bmlwaHlfcnhfdGJsW10gPSB7Cj4KPiBb
c2tpcHBlZCB0aGUgdGFibGVzXQo+Cj4+IEBAIC0xNTU2LDYgKzE2ODUsMzIgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAKPj4gc2R4NjVfdXNiM191bmlwaHlfY2ZnID0gewo+PiDC
oMKgwqDCoMKgIC5oYXNfcHdyZG5fZGVsYXnCoMKgwqAgPSB0cnVlLAo+PiDCoCB9Owo+PiDCoCAr
c3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzZHg3NV91c2IzX3VuaXBoeV9jZmcgPSB7
Cj4+ICvCoMKgwqAgLmxhbmVzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IDEsCj4+ICvCoMKgwqAg
Lm9mZnNldHPCoMKgwqDCoMKgwqDCoCA9ICZxbXBfdXNiX29mZnNldHNfdjUsCj4KPiB2Nj8KU2lu
Y2UgdGhlIG9mZnNldHMgZm9yIHY1IGFuZCB2NiBhcmUgc2FtZSwgSSBkaWQgbm90IGludHJvZHVj
ZSBhIG5ldyAKc3RydWN0IHdpdGggdGhlIHNhbWUgdmFsdWVzLgpQbGVhc2UgY29ycmVjdCBtZSBp
ZiBJIGhhdmUgdG8gaW50cm9kdWNlIHY2IG9mZnNldHMuCj4KPj4gKwo+PiArwqDCoMKgIC5zZXJk
ZXNfdGJswqDCoMKgwqDCoMKgwqAgPSBzZHg3NV91c2IzX3VuaXBoeV9zZXJkZXNfdGJsLAo+PiAr
wqDCoMKgIC5zZXJkZXNfdGJsX251bcKgwqDCoMKgwqDCoMKgID0gQVJSQVlfU0laRShzZHg3NV91
c2IzX3VuaXBoeV9zZXJkZXNfdGJsKSwKPj4gK8KgwqDCoCAudHhfdGJswqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA9IHNkeDc1X3VzYjNfdW5pcGh5X3R4X3RibCwKPj4gK8KgwqDCoCAudHhfdGJsX251
bcKgwqDCoMKgwqDCoMKgID0gQVJSQVlfU0laRShzZHg3NV91c2IzX3VuaXBoeV90eF90YmwpLAo+
PiArwqDCoMKgIC5yeF90YmzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gc2R4NzVfdXNiM191bmlw
aHlfcnhfdGJsLAo+PiArwqDCoMKgIC5yeF90YmxfbnVtwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9T
SVpFKHNkeDc1X3VzYjNfdW5pcGh5X3J4X3RibCksCj4+ICvCoMKgwqAgLnBjc190YmzCoMKgwqDC
oMKgwqDCoCA9IHNkeDc1X3VzYjNfdW5pcGh5X3Bjc190YmwsCj4+ICvCoMKgwqAgLnBjc190Ymxf
bnVtwqDCoMKgwqDCoMKgwqAgPSBBUlJBWV9TSVpFKHNkeDc1X3VzYjNfdW5pcGh5X3Bjc190Ymwp
LAo+PiArwqDCoMKgIC5wY3NfdXNiX3RibMKgwqDCoMKgwqDCoMKgID0gc2R4NzVfdXNiM191bmlw
aHlfcGNzX3VzYl90YmwsCj4+ICvCoMKgwqAgLnBjc191c2JfdGJsX251bcKgwqDCoCA9IEFSUkFZ
X1NJWkUoc2R4NzVfdXNiM191bmlwaHlfcGNzX3VzYl90YmwpLAo+PiArwqDCoMKgIC5jbGtfbGlz
dMKgwqDCoMKgwqDCoMKgID0gcW1wX3Y0X3NkeDU1X3VzYnBoeV9jbGtfbCwKPj4gK8KgwqDCoCAu
bnVtX2Nsa3PCoMKgwqDCoMKgwqDCoCA9IEFSUkFZX1NJWkUocW1wX3Y0X3NkeDU1X3VzYnBoeV9j
bGtfbCksCj4+ICvCoMKgwqAgLnJlc2V0X2xpc3TCoMKgwqDCoMKgwqDCoCA9IG1zbTg5OTZfdXNi
M3BoeV9yZXNldF9sLAo+PiArwqDCoMKgIC5udW1fcmVzZXRzwqDCoMKgwqDCoMKgwqAgPSBBUlJB
WV9TSVpFKG1zbTg5OTZfdXNiM3BoeV9yZXNldF9sKSwKPgo+IENsb2NrcyBhbmQgcmVzZXRzIGFy
ZSBnb25lIGluIAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDIzMDgyNDIx
MTk1Mi4xMzk3Njk5LTEtZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnLwo+ClN1cmUuCj4+ICvC
oMKgwqAgLnZyZWdfbGlzdMKgwqDCoMKgwqDCoMKgID0gcW1wX3BoeV92cmVnX2wsCj4+ICvCoMKg
wqAgLm51bV92cmVnc8KgwqDCoMKgwqDCoMKgID0gQVJSQVlfU0laRShxbXBfcGh5X3ZyZWdfbCks
Cj4+ICvCoMKgwqAgLnJlZ3PCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gcW1wX3Y1X3VzYjNwaHlf
cmVnc19sYXlvdXQsCj4KPiBUaGlzIG11c3QgYmUgdjYsIGlmIHRoZSByZXN0IG9mIHRoZSBQSFkg
aXMgdXNpbmcgdjYgcmVnaXN0ZXIgbmFtZXMuClNhbWUsIFNoYWxsIEkgaW50cm9kdWNlIHY2IHN0
cnVjdD8KClRoYW5rcywKUm9oaXQuCj4KPj4gK8KgwqDCoCAucGNzX3VzYl9vZmZzZXTCoMKgwqDC
oMKgwqDCoCA9IDB4MTAwMCwKPj4gKwo+PiArwqDCoMKgIC5oYXNfcHdyZG5fZGVsYXnCoMKgwqAg
PSB0cnVlLAo+PiArfTsKPj4gKwo+PiDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2Zn
IHNtODM1MF91c2IzX3VuaXBoeV9jZmcgPSB7Cj4+IMKgwqDCoMKgwqAgLmxhbmVzwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA9IDEsCj4+IMKgIEBAIC0yMjU2LDYgKzI0MTEsOSBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCAKPj4gcW1wX3VzYl9vZl9tYXRjaF90YWJsZVtdID0gewo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgLmNvbXBhdGlibGUgPSAicWNvbSxzZHg2NS1xbXAtdXNiMy11
bmktcGh5IiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5kYXRhID0gJnNkeDY1X3VzYjNfdW5pcGh5
X2NmZywKPj4gwqDCoMKgwqDCoCB9LCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAuY29tcGF0aWJsZSA9
ICJxY29tLHNkeDc1LXFtcC11c2IzLXVuaS1waHkiLAo+PiArwqDCoMKgwqDCoMKgwqAgLmRhdGEg
PSAmc2R4NzVfdXNiM191bmlwaHlfY2ZnLAo+PiArwqDCoMKgIH0sIHsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIC5jb21wYXRpYmxlID0gInFjb20sc202MTE1LXFtcC11c2IzLXBoeSIsCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCAuZGF0YSA9ICZxY20yMjkwX3VzYjNwaHlfY2ZnLAo+PiDCoMKgwqDCoMKg
IH0sIHsKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
