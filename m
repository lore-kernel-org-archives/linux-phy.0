Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9350BC02181
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjGEof4fBJ7oC38XxUXsZub96CM0tfrhm0T1otVFsFk=; b=zz2zTHSG/yas1j
	Ia5o//0wYNN4igjvN34vCUW1Z80Ksa+MNR5aJ109a7WLzqnkCOcitPpBdq34+pfJy+pEEIpwvuLMz
	V1gL+2MQa9pmXy8c8abEsg5aoF/knnRPq8gHvqRcjWMF0TheLACvsu0A0eYO16Yv/whTgfacO8qFX
	KqiGYJIWWM/42LHmFgntZ8KNDgj94pDHFb8b3VjnUEiQg8R4g6B6MZbFGwb2732Ad2c7XejhcWW/8
	qi4mJuayD056FR80HqKrYrU6Dq5mUrYqWSbCr6q/e0ARza3iPZYarx5H3k0qr6u5Gv7MXAawLcDYA
	mpU/D4ksPY3yYPm9SNMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGpj-00000004dHr-3PDl;
	Mon, 13 Jan 2025 09:34:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGj3-00000004bLV-16hu
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 09:27:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50D6glEL024409;
	Mon, 13 Jan 2025 09:27:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MOfjFAH+CybZ33SMwzfNlmQyC6CmVOKixDLWbRV01BM=; b=O1dn8fNAabIUgm/j
	3BKm3WVSMnTh8LSexcu482RLtmKRfjcX2yK8sjt8q42vfX2+VXSRqG7xFdhKQVaa
	artSSdfyh6Gj+qf21EcNSQAhLTnC40CAxedR5HFvby7u1Lyt0+TXaYbCoZOEW5e5
	UT50Ggril+HHlopK9d5ivvzrz6h535htRps9WdtXoZHukccPtd5yow2efJ67H4j7
	nyA1dkF3C0P6YC9XgjWIzgOsH4HjKPiC5uBZ5/P43vTTRZNc2EdmIZ/BWu8NuC/i
	h08Dfgg5OScI6Lw4grVeS6tDMW9pcNODeNc5z4emleqhAYZI+MYX2bXu0b9FkaHv
	ZZXj7w==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 444wt4rd06-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 09:27:06 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50D9R57H029576
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 09:27:05 GMT
Received: from [10.64.68.119] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 13 Jan
 2025 01:26:59 -0800
Message-ID: <9a87724c-1906-4a9b-bf01-e603b310e47a@quicinc.com>
Date: Mon, 13 Jan 2025 17:26:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] Display enablement changes for Qualcomm QCS8300
 platform
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh
	<quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
 <qsq5so5i7fy3r7xcjtcr7aq2vtbywh57j3b3e7ddbsmmeu5qwy@pgcntgxknuul>
Content-Language: en-US
From: Yongxing Mou <quic_yongmou@quicinc.com>
In-Reply-To: <qsq5so5i7fy3r7xcjtcr7aq2vtbywh57j3b3e7ddbsmmeu5qwy@pgcntgxknuul>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: FZvTmcrhQQEHUT1SOKIGh2bA7JiNFdyI
X-Proofpoint-GUID: FZvTmcrhQQEHUT1SOKIGh2bA7JiNFdyI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 suspectscore=0 bulkscore=0 priorityscore=1501 mlxscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_012713_310874_64429C50 
X-CRM114-Status: GOOD (  20.48  )
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

CgpPbiAyMDI1LzEvMTMgMTc6MDIsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gTW9uLCBK
YW4gMTMsIDIwMjUgYXQgMDQ6MDM6MDdQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+PiBU
aGlzIHNlcmllcyBpbnRyb2R1Y2VzIHN1cHBvcnQgdG8gZW5hYmxlIHRoZSBNb2JpbGUgRGlzcGxh
eSBTdWJzeXN0ZW0gKE1EU1MpCj4+ICwgRGlzcGxheSBQcm9jZXNzaW5nIFVuaXQgKERQVSksIERp
c3BsYXlQb3J0IGNvbnRyb2xsZXIgZm9yIHRoZSBRdWFsY29tbQo+PiBRQ1M4MzAwIHRhcmdldC4g
SXQgaW5jbHVkZXMgdGhlIGFkZGl0aW9uIG9mIHRoZSBoYXJkd2FyZSBjYXRhbG9nLCBjb21wYXRp
YmxlCj4+IHN0cmluZywgYW5kIHRoZWlyIFlBTUwgYmluZGluZ3MuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFlvbmd4aW5nIE1vdSA8cXVpY195b25nbW91QHF1aWNpbmMuY29tPgo+PiAtLS0KPj4gQ2hh
bmdlcyBpbiB2MzpGaXhlZCByZXZpZXcgY29tbWVudHMgZnJvbSBLcnp5c3p0b2YsIERtaXRyeS4K
Pj4gLSBGaXggdGhlIG1pc3Npbmcgc3BhY2UgaXNzdWUgaW4gY29tbWl0IG1lc3NhZ2UuW0tyenlz
enRvZl0KPj4gLSBTZXBhcmF0ZSB0aGUgcGF0Y2ggZm9yIHRoZSBwaHkgZnJvbSB0aGlzIHNlcmll
cy5bRG1pdHJ5XQo+PiAtIFJlbW92ZSB1bnVzZWQgZGVwZW5kZW5jaWVzIGFuZCB1cGRhdGUgaW4g
dGhlIGNvdmVyIGxldHRlci5bRG1pdHJ5XVtLcnp5c3p0b2ZdCj4+IC0gTGluayB0byB2MjogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0MTIyNi1tZHNzZHRfcWNzODMwMC12Mi0wLWFjYmEw
ZGI1MzNjZUBxdWljaW5jLmNvbQo+Pgo+PiBDaGFuZ2VzIGluIHYyOkZpeGVkIHJldmlldyBjb21t
ZW50cyBmcm9tIEtyenlzenRvZiwgRG1pdHJ5LCBSb2IuCj4+IC0gRGVjb3VwbGUgdGhlIGRldmlj
ZXRyZWUgY2hhbmdlcyBmcm9tIHRoaXMgc2VyaWVzLltEbWl0cnldW0tyenlzenRvZl0KPj4gLSBE
cm9wIHRoZSBkcHUgZHJpdmVyIGNoYW5nZXMgYW5kIHJldXNlIFNBODc3NVAgRFBVIGRyaXZlci5b
RG1pdHJ5XQo+PiAtIEZpeCBjb21waWxhdGlvbiBpc3N1ZXMgaW4gTURTUyBiaW5kaW5ncy5bUm9i
XVtLcnp5c3p0b2ZdCj4+IC0gQ29ycmVjdCBmb3JtYXR0aW5nIGVycm9ycyBhbmQgcmVtb3ZlIHVu
bmVjZXNzYXJ5IHN0YXR1cyBpbiBNRFNTCj4+ICAgIGJpbmRpbmdzLltLcnp5c3p0b2ZdCj4+IC0g
QWRkIHRoZSB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIGluIE1EU1MgY2hhbmdlcyBjb21taXQg
bXNnLltEbWl0cnldCj4+IC0gUmViYXNlIE1EU1MgZHJpdmVyIGNoYW5nZXMgdG8gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLwo+PiAgICAyMDI0MTEyNy1tc20tbWRzcy11YndjLXYz
LTAtOTc4MmE3YzJiMDIzQGxpbmFyby5vcmcvLltEbWl0cnldCj4+IC0gUGFja2FnZSB0aGUgRGlz
cGxheVBvcnQgY29udHJvbGxlciBhbmQgZURQIFBIWSBiaW5kaW5ncyBkb2N1bWVudCB0bwo+PiAg
ICB0aGlzIHBhdGNoIHNlcmllcy4KPj4gLSBDb2xsZWN0aW5nIE1EU1MgY2hhbmdlcyByZXZpZXdk
LWJ5IERtaXRyeS4KPj4gLSBSZXVzZSB0aGUgc2E4Nzc1cCBlRFAgUEhZIGFzIGEgZmFsbGJhY2sg
Y29tcGF0LltEbWl0cnldCj4+IC0gUmV1c2UgdGhlIHNtODY1MCBEUCBjb250cm9sbGVyIGFzIGEg
ZmFsbGJhY2sgY29tcGF0LltEbWl0cnldCj4+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI0MTEyNy1tZHNzX3FjczgzMDAtdjEtMC0yOWIyYzNlZTk1YjhAcXVpY2lu
Yy5jb20KPj4gfgo+Pgo+PiAtLS0KPj4gWW9uZ3hpbmcgTW91ICg0KToKPj4gICAgICAgIGR0LWJp
bmRpbmdzOiBkaXNwbGF5L21zbTogRG9jdW1lbnQgdGhlIERQVSBmb3IgUUNTODMwMAo+PiAgICAg
ICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IG1zbTogZHAtY29udHJvbGxlcjogZG9jdW1lbnQgUUNT
ODMwMCBjb21wYXRpYmxlCj4+ICAgICAgICBkdC1iaW5kaW5nczogZGlzcGxheS9tc206IERvY3Vt
ZW50IE1EU1Mgb24gUUNTODMwMAo+IAo+IElzIHRoZXJlIGFueSByZWFzb24gZm9yIG5vdCB1c2lu
ZyBhIGNvbW1vbiBzdHlsZSBmb3IgdGhlc2UgdGhyZWUKPiBjb21taXRzPwo+IApIae+8jGFjdHVh
bGx5LCBmb3IgdGhlIGRwLWNvbnRyb2xsZXIueWFtZWwgZmlsZSwgSSBqdXN0IG5vdGljZWQgdGhh
dCB0aGUgCnByZXZpb3VzIHBsYXRmb3JtcyBhZGRlZCB0aGUgZHQtYmluZGluZyBmaWxlcyB1c2lu
ZyB0aGlzIGZvcm1hdC4gU28sIEkgCmZvbGxvd2VkIHRoZWlyIGZvcm1hdCB0byB3cml0ZSB0aGUg
Y29tbWl0IG1lc3NhZ2UuIFN1Y2ggYXMgZHQtYmluZGluZ3MgCmZvciBzbTg2NTAvc204MTUwL3Nt
ODI1MC4uLgo+PiAgICAgICAgZHJtL21zbTogbWRzczogQWRkIFFDUzgzMDAgc3VwcG9ydAo+Pgo+
PiAgIC4uLi9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwgICAgICAgIHwg
ICA0ICsKPj4gICAuLi4vYmluZGluZ3MvZGlzcGxheS9tc20vcWNvbSxxY3M4MzAwLW1kc3MueWFt
bCAgICB8IDI0NCArKysrKysrKysrKysrKysrKysrKysKPj4gICAuLi4vYmluZGluZ3MvZGlzcGxh
eS9tc20vcWNvbSxzbTg2NTAtZHB1LnlhbWwgICAgICB8ICAxMyArLQo+PiAgIGRyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX21kc3MuYyAgICAgICAgICAgICAgICAgICAgIHwgIDExICsKPj4gICA0IGZp
bGVzIGNoYW5nZWQsIDI2OCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+PiAtLS0KPj4g
YmFzZS1jb21taXQ6IDJiODg4NTFmNTgzZDNjNGU0MGJjZDQwY2ZlMTk2NTI0MWVjMjI5ZGQKPj4g
Y2hhbmdlLWlkOiAyMDI0MTIyNC1tZHNzZHRfcWNzODMwMC0xMWI3ODgzZGM2MGIKPj4KPj4gQmVz
dCByZWdhcmRzLAo+PiAtLSAKPj4gWW9uZ3hpbmcgTW91IDxxdWljX3lvbmdtb3VAcXVpY2luYy5j
b20+Cj4+Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
