Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC29ECE7AEB
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 08:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guqOiT4GHDaXcZSn7EKdAhusDt/3OmctyFFLHGLGvdU=; b=2v/oyL75wAMlKE
	uj11nB5GD7ZazNc0o6n9T5UvHgcvRVVyoe1Wqn6WfLffvJF4PNxOU+xomwaQPHEXM0Jp4pPOp5Qzw
	4ClYNw95badRHNs7lkfBFgq53xG93Zk41dhuzUcH1A2sLNYGvUZM6v3ASuUbV+02q0MZZ4gy1T/lh
	sjNN5eSUn77u7qJUvNxxljwOZs2Gj3fRh5Vwr4JssdU6tTkTwt8hFuI6GW7pX1gCdfbdnNvCTiKUb
	BmT+S4zDMuKg/I2HsP3wRlKll6BFduYOdmEH5H27uNu1SSIlit3lZah7+PuQFJVVWbvswHcK2+Gw1
	gxkFhe/1Ykv0T0UvDdvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUgZ-0000000BPlA-1jN2;
	Fri, 06 Sep 2024 08:51:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUWD-0000000BN9p-0rrV
	for linux-phy@lists.infradead.org;
	Fri, 06 Sep 2024 08:40:39 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4868bXDT019827;
	Fri, 6 Sep 2024 08:40:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ghlw4Kf/YZdwFx4jN6wzWomVsBvEYUqY+Dmgy8yNDxw=; b=ZtaargOLw1Cf5nnq
	dKUSOSpFpkUu5xLzex7nsW8f4qjMicS+1LfPYe11C5fj63iM227jeNjcY6kac8rV
	KY6+f0qNhnl8lQbUtiwt95JSnhpYTCXNw/dMHjir0oBRdzWi1fMUuRzwDRhNaMPG
	GsfTg0yiSWOSyE+lIuoOiYPhKl2Xlc8qmMP3CbSq07Ap6la6lx8XRK6qy+ezgGpD
	x0NrJGUwDtqL0NJnPsxVwux1FTfmGO0gjeCDjE/wb+CkDKav16rh3jCnfQRdzTT/
	G03KMlEFgMFdqCEDp33YIr5pGTdkix4Os+6TlfBXVIwl5zw1Qu/b9euupuelVi3b
	ooqFtQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41fhwu1n4a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Sep 2024 08:40:27 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4868eN6m008396
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 6 Sep 2024 08:40:23 GMT
Received: from [10.239.133.118] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 6 Sep 2024
 01:40:20 -0700
Message-ID: <237865a2-61fb-4d05-a57d-261710aad821@quicinc.com>
Date: Fri, 6 Sep 2024 16:40:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        Neil
 Armstrong <neil.armstrong@linaro.org>
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
 <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org>
 <6fcaa893-70a4-44f4-afc0-853799e30774@quicinc.com>
 <CAA8EJpoTb_-HtBPv2=FecHvtHYQD4ipqfq3C98ky=qXEXB=_6Q@mail.gmail.com>
Content-Language: en-US
From: Song Xue <quic_songxue@quicinc.com>
In-Reply-To: <CAA8EJpoTb_-HtBPv2=FecHvtHYQD4ipqfq3C98ky=qXEXB=_6Q@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: C6EUPLbKsna7x83NeOFbSGOvCCvR56nu
X-Proofpoint-GUID: C6EUPLbKsna7x83NeOFbSGOvCCvR56nu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-05_17,2024-09-05_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 mlxlogscore=987 phishscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409060061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_014037_322988_05B1C06A 
X-CRM114-Status: GOOD (  22.74  )
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

CgpPbiA4LzMxLzIwMjQgNzo0NSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBTYXQs
IDMxIEF1ZyAyMDI0IGF0IDAyOjEzLCBTb25nIFh1ZSA8cXVpY19zb25neHVlQHF1aWNpbmMuY29t
PiB3cm90ZToKPj4gT24gOC8zMC8yMDI0IDQ6MjAgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4+PiBUaGUgTlhQIFBUTjMyMjIgaXMgdGhlIHNpbmdsZS1wb3J0IGVVU0IyIHRvIFVTQjIgcmVk
cml2ZXIgdGhhdCBwZXJmb3Jtcwo+Pj4gdHJhbnNsYXRpb24gYmV0d2VlbiBlVVNCMiBhbmQgVVNC
MiBzaWduYWxsaW5nIHNjaGVtZXMuIEl0IHN1cHBvcnRzIGFsbAo+Pj4gdGhyZWUgZGF0YSByYXRl
czogTG93IFNwZWVkLCBGdWxsIFNwZWVkIGFuZCBIaWdoIFNwZWVkLgo+Pj4KPj4+IFRoZSByZXNl
dCBzdGF0ZSBlbmFibGVzIGF1dG9uZWdvdGlhdGlvbiBvZiB0aGUgUEhZIHJvbGUgYW5kIG9mIHRo
ZSBkYXRhCj4+PiByYXRlLCBzbyBubyBhZGRpdGlvbmFsIHByb2dyYW1taW5nIGlzIHJlcXVpcmVk
Lgo+Pj4KPj4+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGlu
YXJvLm9yZz4KPj4+IFRlc3RlZC1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkeWJjaW9Aa2VybmVs
Lm9yZz4KPj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hr
b3ZAbGluYXJvLm9yZz4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9waHkvS2NvbmZpZyAgICAgICAg
ICAgfCAgMTEgKysrKwo+Pj4gICAgZHJpdmVycy9waHkvTWFrZWZpbGUgICAgICAgICAgfCAgIDEg
Kwo+Pj4gICAgZHJpdmVycy9waHkvcGh5LW54cC1wdG4zMjIyLmMgfCAxMjMgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+PiAgICAzIGZpbGVzIGNoYW5nZWQsIDEz
NSBpbnNlcnRpb25zKCspCj4gCj4gW3RyaW1tZWRdCj4gCj4+PiArCj4+PiArTU9EVUxFX0RFU0NS
SVBUSU9OKCJOWFAgUFROMzIyMiBlVVNCMiBSZWRyaXZlciBkcml2ZXIiKTsKPj4+ICtNT0RVTEVf
TElDRU5TRSgiR1BMIik7Cj4+Pgo+PiBUaGUgSTJDIGRyaXZlciBqdXN0IHJlYWxpemVzIHRoZSBm
dW5jdGlvbiBvbiByZXNldCBhbmQgUFdSLiBXaGF0IGFib3V0Cj4+IG90aGVyIEkyQyBkcml2ZXIg
ZnVuY3Rpb24gbGlrZSBJMkMgaW50ZXJmYWNlIG9wZXJhdGlvbnMsCj4gCj4gSSBkb24ndCBxdWl0
ZSB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4gYnkgdGhpcy4gQ291bGQgeW91IHBsZWFzZSBjbGFy
aWZ5Pwo+IAo+PiAgIGF1dG8tc3VzcGVuZCwKPiAKPiBJIHRoaW5rIHlvdSBtZWFuIHBtX3J1bnRp
bWUgaGVyZS4gSXQncyBhIHZhbGlkIGNhc2UsIGJ1dCBncmFudGVkIHRoYXQKPiBpdCBzaG91bGQg
c3RheSBlbmFibGVkIHdoZW4gVVNCIGNvbnRyb2xsZXIgaXMgZW5hYmxlZCwgdGhlIGdhaW4gc2hv
dWxkCj4gYmUgcHJldHR5IGxpbWl0ZWQuIEknbGwgY29uc2lkZXIgYSBmb2xsb3d1cCBwYXRjaCBp
bXBsZW1lbnRpbmcKPiBwbV9ydW50aW1lIGZvciB0aGUgc2FrZSBvZiBiZWluZyBhYmxlIHRvIGRp
c2FibGUgSTJDIGhvc3QgaWYgRFdDMwo+IGNvbnRyb2xsZXIgZGlzYWJsZXMgdGhlIFBIWS4KPiAK
Pj4gcmVtb3RlIHdha2V1cCwKPiAKPiBOb3Qgc3VwcG9ydGVkIGJ5IGRlc2lnbi4gUFROMzIyMiBk
b2Vzbid0IGhhdmUgSVJRIHBpbnMgdG8gcmVwb3J0Cj4gZXZlbnRzIHRvIHRoZSBob3N0Lgo+IAo+
PiBtZW1vcnkgbWFwcyBldGMuCj4gCj4gaHVoPwo+IAo+PiAgIFdobyB3aWxsIGVuYWJsZSB0aGVz
ZT8gSSB0aGluayBpdCBpcyBub3QKPj4gaW5jb21wbGV0ZSBJMkMgZHJpdmVyLCBpZiBvbiBzb21l
ZGF5LCBwdG4zMjIyIGlzIHVzZWQgYXMgSTJDIGRldmljZS4KPiAKPiBXZWxsLCBJJ20gdXNpbmcg
aXQgYXMgYW4gSTJDIGRldmljZS4KPiAKU29ycnkgZm9yIHRoZSBkZWxheWVkIHJlc3BvbnNlLgpU
aGUgZnVuY3Rpb25zIEkgbGlzdGVkLCBzdWNoIGFzIGF1dG8tc3VzcGVuZCBhbmQgd2FrZS11cCwg
YXJlIGp1c3QgCmV4YW1wbGVzLiBNeSBtYWluIHBvaW50IGlzIHRoYXQgYSBiYXNpYyBJMkMgZHJp
dmVyIHNob3VsZCBpbmNsdWRlIApmdW5kYW1lbnRhbCBmdW5jdGlvbnMgbGlrZSBzZXR0aW5nIHVw
IHRoZSBJMkMgYnVzLCBjb25maWd1cmluZyB0aGUgCmNsb2NrLCBhbmQgc2V0dGluZyB0aGUgU0RB
IChkYXRhIGxpbmUpIGFuZCBTQ0wgKGNsb2NrIGxpbmUpLiBBIGJhc2ljIEkyQyAKZHJpdmVyIHNo
b3VsZG7igJl0IGJlIGxpbWl0ZWQgdG8gZW5hYmxpbmcgdGhlIHBvd2VyIHN1cHBseSBhbmQgcmVz
ZXQgcGluLCAKYXMgdGhlc2UgZmVhdHVyZXMgY2FuIGJlIGhhbmRsZWQgYnkgb3RoZXIgZHJpdmVy
cyBhcyB3ZWxsLgpJZiB5b3UgaW1wbGVtZW50IHRoZXNlIGZ1bmRhbWVudGFsIGZ1bmN0aW9ucywg
SSB0aGluayBpdCB3aWxsIGJlIHN1ZmZpY2llbnQuCgpSZWdhcmRzLApTb25nIFh1ZQoKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
