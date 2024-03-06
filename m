Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97E96C54E41
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 15:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGXdBW7BhvEwnwTRsnNEYptYpN+Nvqg/EjsFHCc7QRY=; b=mnZpd7Qz5VNmzo
	cMCIowm2Co0O7Q8gBQQvvbdedrDtsUsxkUMZSOhRAVQ3ANXosgbJAz8dCmE3wQ1+pF7RSiX9hFZ20
	b7ZldBEkdIX8Cx3zpePG8y1KoJZ2kK4FaITmiZcZoMbbZzL3kmS0JupN3DBrmiHkHg9yqTOzooJVF
	aLo/Vw5dE83oVUdMQKdU1m1+Mb/zf08jUzC2RxHF/jLK6CT4A3QNEhESSRoqNSO2OIaaWjTNf76cD
	wL441ogPFALlyqwwY1w+vhk9EWpzQaSQuotuf9QZwth1CKPoNMXyNm7mw5Ou0EwC7khd1+h3nDTUz
	o4eeSgqNmAecOA/Qg/VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtWq-00000000qt4-0eHk;
	Wed, 06 Mar 2024 15:50:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtWn-00000000qsL-0EOf
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 15:49:58 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 426FISU6031255;
	Wed, 6 Mar 2024 15:49:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=MQc1wjjU8NkRsMI5u/E32Gitd9ayAX0A/PGoygQBeSc=; b=KC
	RdPITzRL+3fcBS2Ri3EqXyGW9R/EHPVXwQ4tOoJJJ0fFoqgkKjfs7gKJUVCA3d9P
	GBRATxpEaiVs+M4K1d+9CQbOcY9xwMwDJZla9OnuSIG6hKLTD8c34EoGAWToi0/W
	PTt8RosHOG6RMZn99fGrEGU+vE55N2ceQBpDVVBcd04qnbbIB3RoR4LiNMDG7j00
	UGume81Z97SudfodeJcvMgL4V63OBA9qW9WYXrqfqJbU2D4VWY/r+l6oZcT7wveE
	LFJdDAvd6fehMfXFAIQdTR3ebLG4J7wYqwvQ+S2GRNwUgEYpfKwICFNT//1iuNdB
	dYXoGyqzliEA25nPUOzw==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wpktps2y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Mar 2024 15:49:45 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 426FnieG012157
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Mar 2024 15:49:44 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 6 Mar
 2024 07:49:37 -0800
Message-ID: <b2ae44ff-55e2-495b-b320-cbb8deae81be@quicinc.com>
Date: Wed, 6 Mar 2024 21:19:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 1/3] dt-bindings: usb: qcom,dwc3: Add support for multiple
 power-domains
Content-Language: en-US
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        <andersson@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <dmitry.baryshkov@linaro.org>
CC: <quic_shazhuss@quicinc.com>, <linux-usb@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <Thinh.Nguyen@synopsys.com>,
        <kishon@kernel.org>, <konrad.dybcio@linaro.org>, <robh@kernel.org>,
        <sudeep.holla@arm.com>, <p.zabel@pengutronix.de>,
        <ulf.hansson@linaro.org>, <conor+dt@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <quic_psodagud@quicinc.com>,
        <quic_nkela@quicinc.com>, <gregkh@linuxfoundation.org>,
        <linux-arm-msm@vger.kernel.org>, <quic_wcheng@quicinc.com>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <vkoul@kernel.org>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
 <86371fc0-ef49-4dc9-b98c-7c5131cd1227@linaro.org>
 <986b49f5-6a4a-430d-ba6a-2f387f2a262a@quicinc.com>
 <84618a4a-be20-4c59-badc-15fa65debf4c@linaro.org>
 <e441e458-a90b-495f-abf1-448620c14c85@quicinc.com>
From: Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <e441e458-a90b-495f-abf1-448620c14c85@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: GYy6pibLFHOesiWJtM5ei5MgkmJmw7qf
X-Proofpoint-ORIG-GUID: GYy6pibLFHOesiWJtM5ei5MgkmJmw7qf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-06_10,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 clxscore=1011 mlxlogscore=793 mlxscore=0 suspectscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403060126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_074957_241367_3AE82DE2 
X-CRM114-Status: GOOD (  21.29  )
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

T24gMy82LzIwMjQgMTowMyBQTSwgS3Jpc2huYSBLdXJhcGF0aSBQU1NOViB3cm90ZToKPiAKPiAK
PiBPbiAzLzYvMjAyNCAxMjozMyBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24g
MDUvMDMvMjAyNCAxOTowMywgU3JpcmFtIERhc2ggd3JvdGU6Cj4+PiBPbiAzLzUvMjAyNCAxMDoz
NyBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBPbiAwNS8wMy8yMDI0IDE3OjU3
LCBTcmlyYW0gRGFzaCB3cm90ZToKPj4+Pj4gU29tZSB0YXJnZXQgc3lzdGVtcyBhbGxvdyBtdWx0
aXBsZSByZXNvdXJjZXMgdG8gYmUgbWFuYWdlZCBieSAKPj4+Pj4gZmlybXdhcmUuCj4+Pj4+IE9u
IHRoZXNlIHRhcmdldHMsIHRhc2tzIHJlbGF0ZWQgdG8gY2xvY2tzLCByZWd1bGF0b3JzLCByZXNl
dHMsIGFuZAo+Pj4+PiBpbnRlcmNvbm5lY3RzIGNhbiBiZSBkZWxlZ2F0ZWQgdG8gdGhlIGZpcm13
YXJlLCB3aGlsZSB0aGUgcmVtYWluaW5nCj4+Pj4+IHJlc3BvbnNpYmlsaXRpZXMgYXJlIGhhbmRs
ZWQgYnkgTGludXguCj4+Pj4+Cj4+Pj4+IFRvIHN1cHBvcnQgdGhlIG1hbmFnZW1lbnQgb2YgcGFy
dGlhbCByZXNvdXJjZXMgaW4gTGludXggYW5kIGxlYXZlIAo+Pj4+PiB0aGUgcmVzdAo+Pj4+PiB0
byBmaXJtd2FyZSwgbXVsdGlwbGUgcG93ZXIgZG9tYWlucyBhcmUgaW50cm9kdWNlZC4gRWFjaCBw
b3dlciAKPj4+Pj4gZG9tYWluIGNhbgo+Pj4+PiBtYW5hZ2Ugb25lIG9yIG1vcmUgcmVzb3VyY2Vz
LCBkZXBlbmRpbmcgb24gdGhlIHNwZWNpZmljIHVzZSBjYXNlLgo+Pj4+Pgo+Pj4+PiBUaGVzZSBw
b3dlciBkb21haW5zIGhhbmRsZSBTQ01JIGNhbGxzIHRvIHRoZSBmaXJtd2FyZSwgZW5hYmxpbmcg
dGhlCj4+Pj4+IGFjdGl2YXRpb24gYW5kIGRlYWN0aXZhdGlvbiBvZiBmaXJtd2FyZS1tYW5hZ2Vk
IHJlc291cmNlcy4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogU3JpcmFtIERhc2ggPHF1aWNf
c3JpcmFtZEBxdWljaW5jLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+IMKgwqAgLi4uL3BoeS9xY29tLHNj
ODI4MHhwLXFtcC11c2IzLXVuaS1waHkueWFtbMKgwqDCoMKgwqDCoMKgIHwgNzQgCj4+Pj4+ICsr
KysrKysrKysrKysrKystLS0tLS0KPj4+Pj4gwqDCoCAuLi4vYmluZGluZ3MvcGh5L3Fjb20sdXNi
LXNucHMtZmVtdG8tdjIueWFtbMKgwqDCoMKgwqDCoCB8IDQ5IAo+Pj4+PiArKysrKysrKysrKyst
LQo+Pj4+PiDCoMKgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9xY29tLGR3YzMueWFtbMKg
wqDCoMKgwqDCoMKgwqAgfCAzNyArKysrKysrKysrLQo+Pj4+PiDCoMKgIDMgZmlsZXMgY2hhbmdl
ZCwgMTMwIGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0t
Z2l0IAo+Pj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxz
YzgyODB4cC1xbXAtdXNiMy11bmktcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBoeS55YW1sCj4+Pj4+IGlu
ZGV4IDFlMmQ0ZGQuLjUzYjliYTkgMTAwNjQ0Cj4+Pj4+IC0tLSAKPj4+Pj4gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBo
eS55YW1sCj4+Pj4+ICsrKyAKPj4+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBoeS55YW1sCj4+Pj4+IEBAIC00NCw3
ICs0NCwzMiBAQCBwcm9wZXJ0aWVzOgo+Pj4+PiDCoMKgwqDCoMKgwqAgbWF4SXRlbXM6IDUKPj4+
Pj4gwqDCoMKgwqAgcG93ZXItZG9tYWluczoKPj4+Pj4gLcKgwqDCoCBtYXhJdGVtczogMQo+Pj4+
PiArwqDCoMKgIGRlc2NyaXB0aW9uOiBzcGVjaWZpZXMgYSBwaGFuZGxlIHRvIFBNIGRvbWFpbiBw
cm92aWRlciBub2RlCj4+Pj4KPj4+PiBQbGVhc2UgZHJvcCBhbGwgcmVkdW5kYW50IGRlc2NyaXB0
aW9ucy4gQWRkaW5nIHRoZW0gaXMgbm90IGV2ZW4gcmVsYXRlZAo+Pj4+IHRvIHRoaXMgcGF0Y2gu
Cj4+Pj4KPj4+Cj4+PiBUaGFua3MgS3J6eXN6dG9mIGZvciB0aGUgc3VwZXIgcXVpY2sgcmVzcG9u
c2UgIQo+Pj4gU3VyZS4gd2lsbCBkcm9wIHRoZSBkZXNjcmlwdGlvbiBmb3IgcG93ZXItZG9tYWlu
Cj4+PiBhbmQgcG93ZXItZG9hbWluLW5hbWVzLgo+Pj4KPj4+Pj4gK8KgwqDCoCBtaW5JdGVtczog
MQo+Pj4+PiArwqDCoMKgIG1heEl0ZW1zOiAyCj4+Pj4+ICsKPj4+Pj4gK8KgIHBvd2VyLWRvbWFp
bi1uYW1lczoKPj4+Pj4gK8KgwqDCoCBkZXNjcmlwdGlvbjoKPj4+Pj4gK8KgwqDCoMKgwqAgQSBs
aXN0IG9mIHBvd2VyIGRvbWFpbiBuYW1lIHN0cmluZ3Mgc29ydGVkIGluIHRoZSBzYW1lIG9yZGVy
IAo+Pj4+PiBhcyB0aGUKPj4+Pj4gK8KgwqDCoMKgwqAgcG93ZXItZG9tYWlucyBwcm9wZXJ0eS4K
Pj4+Pj4gKwo+Pj4+PiArwqDCoMKgwqDCoCBGb3IgcGxhdGZvcm1zIHdoZXJlIHNvbWUgcmVzb3Vy
Y2UgYXJlIGZpcm13YXJlIG1hbmFnZWQsIHRoZSAKPj4+Pj4gbmFtZQo+Pj4+PiArwqDCoMKgwqDC
oCBjb3JyZXNwb25kaW5nIHRvIHRoZSBpbmRleCBvZiBhbiBTQ01JIGRvbWFpbiBwcm92aWRlciBj
YW4gYmUKPj4+Pj4gK8KgwqDCoMKgwqAgInVzYl9jb3JlIiBvciAidXNiX3RyYW5zZmVyIi4KPj4+
Pj4gK8KgwqDCoCBpdGVtczoKPj4+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogdXNiX2NvcmUKPj4+
Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogdXNiX3RyYW5zZmVyCj4+Pj4KPj4+PiBIb3cgaXMgdGhp
cyByZWxhdGVkIHRvIGZ3LW1hbmFnZWQ/IEkgZmFpbCB0byBzZWUgaXQuIERvbid0IG1peAo+Pj4+
IGluZGVwZW5kZW50IHByb2JsZW1zIGluIG9uZSBwYXRjaC4KPj4+Pgo+Pj4KPj4+IFNvbWUgb2Yg
dGhlIHRoZSByZXNvdXJjZXMgbGlrZSBjbG9ja3MsIHJlZ3VsYXRvcnMsIGV0YyB3aWxsIGJlCj4+
PiBjb250cm9sbGVkIGJ5IHRoZSBmaXJtd2FyZSBpbnN0ZWFkIG9mIE9TLiBIb3dldmVyLCBzb21l
IHJlc291cmNlcwo+Pj4gc3RpbGwgd2lsbCBiZSBjb250cm9sbGVkIGJ5IE9TIChpbnRlcnJ1cHRz
IGZvciBleGFtcGxlKS4KPj4+Cj4+PiBTbywgdG8gc3VwcG9ydCB0aGUgbWFuYWdlbWVudCBvZiBw
YXJ0aWFsIHJlc291cmNlcyBpbiBMaW51eCwgYW5kCj4+PiBvZmZsb2FkIHRoZSBvdGhlciByZXNv
dXJjZSBtYW5hZ2VtZW50IHRvIGZpcm13YXJlLCBtdWx0aXBsZSBwb3dlcgo+Pj4gZG9tYWlucyBh
cmUgaW50cm9kdWNlZC4gVGhleSB3aWxsIGJlIGNvcnJlc3BvbmRpbmcgdG8gZGlmZmVyZW50Cj4+
PiBodyBibG9ja3MuCj4+Pgo+Pj4gRG8geW91IHN1Z2dlc3Qgc3BsaXR0aW5nIHRoZSBhZGRpdGlv
biBvZiBwb3dlci1kb21haW4tbmFtZXMgYW5kCj4+PiBhZGRpdGlvbiBvZiBmdy1tYW5hZ2VkIHBy
b3BlcnR5IGluIHNlcGFyYXRlIHBhdGNoZXMgZm9yIGJpbmRpbmdzIQo+Pj4KPj4+Pj4gKwo+Pj4+
PiArwqAgcW1wLGZ3LW1hbmFnZWQ6Cj4+Pj4KPj4+PiBQbGVhc2UgZG8gbm90IHVwc3RyZWFtIHZl
bmRvciBjb2RlIGRpcmVjdGx5LCBidXQgcGVyZm9ybSBiYXNpYwo+Pj4+IGFkanVzdG1lbnQgdG8g
dXBzdHJlYW0gTGludXgga2VybmVsLiBUaGVyZSBpcyBubyBzdWNoIGNvbXBhbnkgYXMgZ21wLgo+
Pj4+Cj4+Pj4gUnVuIHRoaXMgZmlyc3QgdGhyb3VnaCB5b3VyIGludGVybmFsIHJldmlldyBwcm9j
ZXNzLgo+Pj4+Cj4+Pgo+Pj4gVGhpcyBwcm9wZXJ0eSBpcyBuZXdseSBpbnRyb2R1Y2VkIGZvciB0
aGUgcW1wIHN1cGVyc3BlZWQgcGh5IGFuZAo+Pj4gc2ltaWxhciBkdCBwcm9wZXJ0aWVzIGFyZSBp
bnRyb2R1Y2VkIGZvciBoc3BoeSBhbmQgZHdjMyBxY29tCj4+PiBjb250cm9sbGVyIGdsdWUgbGF5
ZXIgZHJpdmVyLiBJdCB3aWxsIGdvdmVybiB0aGUgc3VzcGVuZC8gcmVzdW1lCj4+PiBvZiB0aGUg
cmVzb3VyY2VzIChieSBmaXJtd2FyZSBvciBPUykgYXMgcmVxdWlyZWQuCj4+Cj4+IFNvIHRoYXQn
cyB5b3VyIGFuc3dlciB0byAidGhlcmUgaXMgbm8gc3VjaCBjb21wYW55IGFzIGdtcCI/IEl0J3Mg
bm90Cj4+IHJlbGV2YW50IGF0IGFsbC4KPj4KPj4gUGxlYXNlIHJ1biBpdCB0aHJvdWdoIGludGVy
bmFsIHJldmlldyBmaXJzdC4KPj4KPj4KPiBIaSBTcmlyYW0sCj4gCj4gIMKgUU1QIGluZGljYXRl
cyB0aGUgZHJpdmVyIG5hbWUgIlFNUCBQaHkiIChmb3Igc3VwZXIgc3BlZWQgbW9kZSBvZiAKPiBv
cGVyYXRpb24pLCBub3QgdGhlIGNvbXBhbnkgbmFtZS4gSWYgdGhpcyBwcm9wZXJ0eSBpcyBmb3Ig
aWRlbnRpZmljYXRpb24gCj4gb2YgZncgbWFuYWdlbWVudCB0byBiZSBkb25lIC8gKG9yIG5vdCB0
byBiZSBkb25lKSBpbiBRTVAgUGh5LCB0aGVuIAo+IHBsZWFzZSByZW5hbWUgaXMgYXBwcm9wcmlh
dGVseS4gQ2hlY2sgaG93IG90aGVyIHByb3BlcnRpZXMgYXJlIGRlZmluZWQgCj4gaW4gdGhlIFFN
UCBiaW5kaW5ncyBhbmQgYWRkICJxY29tIiBhdCBiZWdpbm5pbmcgcHJlZmVyYWJseS4gRm9yIAo+
IHJlZmVyZW5jZSBhcyB0byBob3cgcHJvcGVydGllcyB3ZXJlIGFkZGVkIHRvIGZlbXRvIHBoeSBk
cml2ZXI6IFsxXS4KPiAKPiBbMV06IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJv
amVjdC9saW51eC1hcm0tbXNtL3BhdGNoLzE2NjI0ODA5MzMtMTIzMjYtMi1naXQtc2VuZC1lbWFp
bC1xdWljX2tyaXNrdXJhQHF1aWNpbmMuY29tLwo+IAoKVGhhbmtzIGZvciB0aGUgcmVmZXJlbmNl
cyBLcnp5c3p0b2YvS3Jpc2huYS4KSSBnb3Qgc3VnZ2VzdGlvbiBmcm9tIERtaXRyeSBvbiB0aGUg
dXNlIG9mIHRoZQpwcm9wZXJ0eSB0b28uIEluZGVlZCB3ZSB3aWxsIGJlIHRoZSBzY21pIGJhc2Vk
CmNsb2NrLyBQRCBtYW5hZ2VtZW50IG9uIFNBODc3NS4gU28sIHdlIHdpbGwKaW50cm9kdWNlIGEg
bmV3IGNvbXBhdGlibGUgc3RyaW5nIGFuZCB0YWtlIHRoZQpkZWNpc2lvbiBpbiBkcml2ZXIgYWNj
b3JkaW5nbHkuCgoKPiBSZWdhcmRzLAo+IEtyaXNobmEsCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
