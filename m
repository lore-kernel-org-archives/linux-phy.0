Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E952CC021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 10:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cw99V4Jyc8mzepFeVXpj1WX5GujvHpoNAXwK33fA3Do=; b=Gqz3JatzZ/gZCn
	e/CYslSOF/m05bmzabDYIAq7pCLfmMdUPESGyH/ahNQVdcXDIxqDdxjbncR9lorTw7D2iPpOHZJVB
	1esXc7S4/YguMkVuh8Nseul5AdnZwXeinGhHCgxKluBKN7GXQiIKqzyIdOHqv3MUj4RLLpxFcgKck
	/P1BeHpZxnfUDfwZJpHisUeEQG8bop8fMO/3S7o0xw32EOl6ddTjfnb2YREoRMIvQAun70dr+PJ4A
	wbrT1aLJT3kBraSgaXNrw0hvVopGD/ci4ztNzDklEWlzKbS1w9hrAhp28hQsNrDcPyqe+7UCDE+r7
	peyVqGbjaA34z4mkZ9KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmsab-0000000Gub9-0Zpj;
	Tue, 25 Feb 2025 10:55:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrrZ-0000000Gl5z-0t6e
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 10:08:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8K7HU009785;
	Tue, 25 Feb 2025 10:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uxyH/J7gXdAxPYjVH0HuLVYnTB8wRvjhOGdiitz2mmw=; b=Gvfi2A0iZ/d4h9m3
	WJ+anG/SyAv+4NzPnMwcRt2ypg/olAVeuFP0Iu++c4QBB4BQseL4yMSoQToSTyO1
	QSX3n+WNLHWMHo8SIfTlmvIVHXzdvvM4Z9aoV4n2zhvtCz4a5hHWuEnHjmASUvAN
	nv/c9ZJNSZBx4BVa/aqNZnDDPBiU3ABdtVmUnVA0RilyxpifMRHyl1aeEly+EAnJ
	d8XHG38Un6GCONgxAga40MTiewW8qNLeB4OzumFtcR1zQ0Tiwh+ew50pYb1ibNg3
	m3CvgjnWieU3Z9eRXGXVwWk4YkfTPKi+mZEiZZvgCmBhmkQbzrq3eYZoeHu/7dJg
	tq7OIQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y3xngpuq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 10:08:22 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51PA8L4Y025087
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 10:08:21 GMT
Received: from [10.239.29.178] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 25 Feb
 2025 02:08:18 -0800
Message-ID: <4a672888-a90e-434c-b494-bb58b91c99a2@quicinc.com>
Date: Tue, 25 Feb 2025 18:08:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "Wenbin Yao
 (Consultant)" <quic_wenbyao@quicinc.com>
CC: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <p.zabel@pengutronix.de>,
        <dmitry.baryshkov@linaro.org>, <abel.vesa@linaro.org>,
        <neil.armstrong@linaro.org>, <quic_devipriy@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
 <20250224122439.njrcoyrfsisddoer@thinkpad>
 <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
 <20250225081744.3aprpztylrdgs2cl@thinkpad>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20250225081744.3aprpztylrdgs2cl@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: pZOfpuD-SAPKU2o1hVWkVVh2d7ArKmx9
X-Proofpoint-GUID: pZOfpuD-SAPKU2o1hVWkVVh2d7ArKmx9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502250070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_020829_371655_E22F171A 
X-CRM114-Status: GOOD (  26.83  )
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

Ck9uIDIvMjUvMjAyNSA0OjE3IFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gT24g
VHVlLCBGZWIgMjUsIDIwMjUgYXQgMDQ6MDY6MTZQTSArMDgwMCwgV2VuYmluIFlhbyAoQ29uc3Vs
dGFudCkgd3JvdGU6Cj4+IE9uIDIvMjQvMjAyNSA4OjI0IFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gd3JvdGU6Cj4+PiBPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMjo0Njo0NFBNICswMTAwLCBL
b25yYWQgRHliY2lvIHdyb3RlOgo+Pj4+IE9uIDI0LjAyLjIwMjUgOTo0NiBBTSwgV2VuYmluIFlh
byAoQ29uc3VsdGFudCkgd3JvdGU6Cj4+Pj4+IE9uIDIvMjQvMjAyNSAzOjMzIFBNLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+PiBPbiBUaHUsIEZlYiAyMCwgMjAyNSBhdCAwNjoy
Mjo1M1BNICswODAwLCBXZW5iaW4gWWFvIHdyb3RlOgo+Pj4+Pj4+IEZyb206IFFpYW5nIFl1IDxx
dWljX3FpYW55dUBxdWljaW5jLmNvbT4KPj4+Pj4+Pgo+Pj4+Pj4+IFNvbWUgUUNPTSBQQ0llIFBI
WXMgc3VwcG9ydCBub19jc3IgcmVzZXQuIFVubGlrZSBCQ1IgcmVzZXQgd2hpY2ggcmVzZXRzIHRo
ZQo+Pj4+Pj4+IHdob2xlIFBIWSAoaGFyZHdhcmUgYW5kIHJlZ2lzdGVyKSwgbm9fY3NyIHJlc2V0
IG9ubHkgcmVzZXRzIFBIWSBoYXJkd2FyZQo+Pj4+Pj4+IGJ1dCByZXRhaW5zIHJlZ2lzdGVyIHZh
bHVlcywgd2hpY2ggbWVhbnMgUEhZIHNldHRpbmcgY2FuIGJlIHNraXBwZWQgZHVyaW5nCj4+Pj4+
Pj4gUEhZIGluaXQgaWYgUENJZSBsaW5rIGlzIGVuYWJsZWQgaW4gYm9vbHRsb2FkZXIgYW5kIG9u
bHkgbm9fY3NyIGlzIHRvZ2dsZWQKPj4+Pj4+PiBhZnRlciB0aGF0Lgo+Pj4+Pj4+Cj4+Pj4+Pj4g
SGVuY2UsIGRldGVybWluZSB3aGV0aGVyIHRoZSBQSFkgaGFzIGJlZW4gZW5hYmxlZCBpbiBib290
bG9hZGVyIGJ5Cj4+Pj4+Pj4gdmVyaWZ5aW5nIFFQSFlfU1RBUlRfQ1RSTCByZWdpc3Rlci4gSWYg
aXQncyBwcm9ncmFtbWVkIGFuZCBub19jc3IgcmVzZXQgaXMKPj4+Pj4+PiBhdmFpbGFibGUsIHNr
aXAgQkNSIHJlc2V0IGFuZCBQSFkgcmVnaXN0ZXIgc2V0dGluZyB0byBlc3RhYmxpc2ggdGhlIFBD
SWUKPj4+Pj4+PiBsaW5rIHdpdGggYm9vdGxvYWRlciAtIHByb2dyYW1tZWQgUEhZIHNldHRpbmdz
Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUgPHF1aWNfcWlhbnl1QHF1
aWNpbmMuY29tPgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFdlbmJpbiBZYW8gPHF1aWNfd2VuYnlh
b0BxdWljaW5jLmNvbT4KPj4+Pj4+IFNvbWUgbml0cGlja3MgYmVsb3cuCj4+Pj4+Pgo+Pj4+Pj4+
IC0tLQo+Pj4+IFsuLi5dCj4+Pj4KPj4+Pj4+PiArwqDCoMKgwqAgKiBJbiB0aGlzIHdheSwgbm8g
bWF0dGVyIHdoZXRoZXIgdGhlIFBIWSBzZXR0aW5ncyB3ZXJlIGluaXRpYWxseQo+Pj4+Pj4+ICvC
oMKgwqDCoCAqIHByb2dyYW1tZWQgYnkgYm9vdGxvYWRlciBvciBQSFkgZHJpdmVyIGl0c2VsZiwg
d2UgY2FuIHJldXNlIHRoZW0KPj4+Pj4+IEl0IGlzIHJlYWxseSBwb3NzaWJsZSB0byBoYXZlIGJv
b3Rsb2FkZXIgbm90IHByb2dyYW1taW5nIHRoZSBpbml0IHNlcXVlbmNlIGZvcgo+Pj4+Pj4gbm9f
Y3NyIHJlc2V0IHBsYXRmb3Jtcz8gVGhlIGNvbW1lbnQgc291bmRzIGxpa2UgaXQgaXMgcG9zc2li
bGUuIEJ1dCBJIGhlYXJkIHRoZQo+Pj4+Pj4gb3Bwb3NpdGUuCj4+Pj4+IFBDSWUzIG9uIFgxRTgw
MTAwIFFDUCBpcyBkaXNhYmxlZCBieSBkZWZhdWx0IGluIFVFRkkuIFdlIG5lZWQgdG8gZW5hYmxl
IGl0Cj4+Pj4+IG1hbnVhbGx5IGluIFVFRkkgc2hlbGwgaWYgd2Ugd2FudC4KPj4+PiBJSVVDIHRo
aXMgd2lsbCBub3QgYmUgYSBjb25jZXJuIGdvaW5nIGZvcndhcmQsIGFuZCB0aGlzIGlzIGEgc3Bl
Y2lhbCBjYXNlCj4+Pj4KPj4+IEknbSB3b25kZXJpbmcgaG93IG1hbnkgKnNwZWNpYWwqIGNhc2Vz
IHdlIG1heSBoYXZlIHRvIGRlYWwgd2l0aCBnb2luZyBmb3J3YXJkLgo+Pj4gQW55aG93LCBJIHdv
dWxkIHByb3Bvc2UgdG8gYXRsZWFzdCB0aHJvdyBhbiBlcnJvciBhbmQgZmFpbCBwcm9iZSgpIGlm
Ogo+Pj4KPj4+ICogdGhlIHBsYXRmb3JtIGhhcyBub19jc3IgcmVzZXQgQU5ECj4+PiAqIGJvb3Rs
b2FkZXIgaGFzIG5vdCBpbml0aWFsaXplZCB0aGUgUEhZIEFORAo+Pj4gKiB0aGVyZSBhcmUgbm8g
aW5pdCBzZXF1ZW5jZXMgaW4gdGhlIGtlcm5lbAo+Pj4KPj4+IC0gTWFuaQo+PiBIbW1tLCByZWdh
cmRsZXNzIG9mIHdoZXRoZXIgaXQncyBhIHNwZWNpYWwgY2FzZSwgd2UgY2FuJ3QgYXNzdW1lIHRo
YXQgVUVGSQo+PiB3aWxsIGVuYWJsZSB0aGUgUEhZIHN1cHBvcnRpbmcgbm9fY3NyIHJlc2V0IG9u
IGFsbCBwbGF0Zm9ybXMuIEl0J3MgYSBiaXQKPj4gcmlza3kuIElmIHdlIG1ha2Ugc3VjaCBhbiBh
c3N1bXB0aW9uLCB3ZSBhbHNvIHdvbid0IG5lZWQgdG8gY2hlY2sgd2hldGhlcgo+PiB0aGUgUEhZ
IGlzIGVuYWJsZWQgYnkgVUVGSSBkdXJpbmcgcG93ZXJpbmcgb24uIFdlIGp1c3QgbmVlZCB0byBj
aGVjawo+PiB3aGV0aGVyIG5vX2NzciByZXNldCBpcyBhdmFpbGFibGUuCj4+Cj4gSSBhbSBub3Qg
c3VwcG9ydGl2ZSBvZiB0aGlzIGFzc3VtcHRpb24gdG8gYmUgY2xlYXIuIFdoaWxlIEkgYW0gT0sg
d2l0aCByZWx5aW5nCj4gb24gbm9fY3NyIHJlc2V0IGFuZCBib290bG9hZGVyIHByb2dyYW1taW5n
IHRoZSBQSFksIHdlIHNob3VsZCBhbHNvIG1ha2Ugc3VyZSB0bwo+IGNhdGNoIGlmIHRoZSBQSFkg
ZG9lc24ndCBpbml0aWFsaXplIGl0LiBPdGhlcndpc2UsIHRoZSBkcml2ZXIgd291bGQgYXNzdW1l
IHRoYXQKPiB0aGUgUEhZIGlzIHdvcmtpbmcsIGJ1dCB0aGUgdXNlcnMgd29uJ3Qgc2VlIGFueSBQ
Q0llIGRldmljZXMuCj4KPj4gQnV0IGl0IG1ha2VzIHNlbnNlIHRvIGNoZWNrIHRoZSBleHNpdGVu
Y2Ugb2YgUEhZIHNlbnF1ZW5jZS4gSG93IGFib3V0Cj4+IGFkZGluZyB0aGUgY2hlY2sgaW4gcW1w
X3BjaWVfaW5pdCwgaWYgYSBQSFkgc3VwcG9ydHMgbm9fY3NyIHJlc2V0IGFuZCBpc24ndAo+PiBp
bml0aWFsaXplZCBpbiBVRUZJIGFuZCB0aGVyZSBpcyBubyBjZmctPnRibHMsIHJldHVybiBlcnJv
ciBhbmQgcHJpbnQgc29tZQo+PiBlcnJvciBsb2cgc28gdGhhdCB0aGUgUENJZSBjb250cm9sbGVy
IHdpbGwgZmFpbCB0byBwcm9iZS4KPj4KPiBTb3VuZHMgZ29vZCB0byBtZS4KSSdtIHdvbmRlcmlu
ZyBpcyBpdCBuZWNlc3NhcnkgdG8gYWRkIHRoaXMgY2hlY2s/IEluIGN1cnJlbnQgUEhZIGRyaXZl
ciwKZm9yIFBIWSB0aGF0IGRvZXNuJ3Qgc3VwcG90IG5vX2NzciByZXNldCB0aGVyZSBpcyBhbHNv
IG5vIHN1Y2ggY2hlY2suCklmIGEgUEhZIHN1cHBvcnRzIG5vX2NzciByZXNldCBhbmQgaXNuJ3Qg
aW5pdCBpbiBVRUZJIGFuZCB0aGVyZSBpcyBubwpjZmctPnRibHMsIHRoZSB3b3JzdCBpc3N1ZSBp
cyBsaW5rIHRyYWluaW5nIGZhaWwgYW5kIFBDSWUgY29udHJvbGxlciB3aWxsCmFsc28gZmFpbCB0
byBwcm9iZS4gQWRkaW5nIHN1Y2ogY2hlY2sgc2VlbXMgbm90IGNoYW5nZSB0aGUgcmVzdWx0LgoK
VGhhbmtzLApRaWFuZwo+Cj4gLSBNYW5pCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
