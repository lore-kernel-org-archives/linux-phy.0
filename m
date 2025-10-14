Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56492CCD185
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 01:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P54yWvWiCeqpeqvqPfz27Y1J8DOBTw4i8LVib5giqDY=; b=oujnJIk3YMebT8
	lZ7SxUjHngnYxdTf9Hk/x6kSuwoquVLrG4XV/28vKsIeMb6I07SBbRG8id0HyzkjqdOU6C/OsSOFH
	toC3mhdv9IV+uRMmP107VrJi1VXvtVBMvC1Zg9NxOmNzYPjIQwS2nbLK3nkRnwAy2kARIqZJf0129
	/Zf8WQ9iEj7Mvq9SxzepRHFGVZITEU7UAwPP0THdTIZpWY8xPbAV3TbIdK/6xK0X/SB1mdn2/Q1UQ
	/e1v1bmFaqFlSIk1ezvh5VWK1JYTrb6CSZlTlsalj8+zm56skT61LTP6lTVw7RnoFC4pCSuAWS9Xv
	00krw8eG8/D90HkTnInA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Te3-0000000Esrx-3rfi;
	Tue, 14 Oct 2025 01:16:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Te1-0000000Esqs-39cH
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 01:16:07 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDBUo018959
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 01:16:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aBxsTtnZ+1IYc29HTC1+91xtqulsSxhtxcQZF6gRcXU=; b=HqHUwIXZoBKQoLm1
	pp9KPIkA1VbhXLJqkbHHet1Mv+qQv6VU3XDUH5gCVQHInTgSTfDpS0Dn4HQSeiqA
	Dl7uf3cqUEfMBxGJ7DDx7B/2egqqQ4ZGG64EdWyj9ymBlg2UJX1CuFFRbFiRY/xt
	CDN0EfpocrBqJ942MJ8IEoPp37DvHcBzpZWY8NLbETyQLxwwV5wfdPSAOJr5YudF
	0rKubX8CwqHS61Fdrh5oQNXnEqKyIxUInCQ9Na0sLW7vHct065Q/wAFATzbHGV1G
	cjpAiZBkMdMscImjpnb+UvAfWpqB3e3lXl//XoDswk5c08YQh6InX+oE/+SLqKqW
	oXBa/w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qferxpgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 01:16:04 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-78117fbda6eso7455176b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 18:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760404563; x=1761009363;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBxsTtnZ+1IYc29HTC1+91xtqulsSxhtxcQZF6gRcXU=;
        b=bJHVsPKE95RR0L88/9vzeRkP18ea09jAk8ntF250JrbtA+9oh3dFsTjFHI6odQelFa
         nKjm7xWDeShaTDuxwOVfo++Iy1Cqppe552iPiJg+ZcnQ7sK4So2UHdfbh3u2ostCyOCq
         f1Dh+CZI0VcqT4m5h2q/RgTX/gHDkNLJcHlNVNa0aiLNBM0q/3MKT40UP1PEiPUSLoBA
         M0GXU32xe+tn3EwbwwyGyk98Fvim+fm4y6UMbs+tdi3CpaKEei90m/UN/aOAS/sDcZyg
         4GWT6XpVCFmUcO0MonkkpUJV2wAv1vLAzWrmRSzl5OLbePRVPpsoyo3eq/W8o/6pcfqo
         4gBA==
X-Forwarded-Encrypted: i=1; AJvYcCV3HzMgP+H3HvB3xnnsn8jiMv9+Q7gEfcSWIBSzcOs3y2JiX76bTSYPPDaNuEVnIfbE4K0Vu5C9P9s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGLkHdHX8HeEO7EnJAWFD7Kefv9O+iL7CskPTCWGIKpVfDOdk+
	LTdTQfwmHB8Fb0zWFP+vqBKTII8/d1SlOpQCRoSVn5I5k2iBVzScPMXF1+Ps5k8CWjnOt3rUKiz
	ROOEh3dmKuOp50trPLzk1l8JNxHSFDNNp+Y+WoOSDXAeFvsHLxI5VXqfZWM5qXcoh04lY
X-Gm-Gg: ASbGnctqNO6H57ntHoJZWrIIDO3TZ8cSazXPFqxqLJ9GqJ6ZH1d8ALNzYLlyXvBrsJm
	Z2oqRtnGwHPg/+myXUiZHvBH5Pxn4R+Es6cdFJAj2oYJEpKKjhHDewrSBh2znP6ZBOlU0I1FhvR
	8WjSNmr+EunvFajoZN3ifdoLtv96VirMWG2zieTIxUZ1h4FNb/2rRjTUzE+5gVU5B7Ojo0ZfCrK
	RqT8Ie7F6AnWq5+lPIe1NxDaOSAk9s7M9080dVMSw402BUP2+hDm3WFSVH4p++uHVy+aDirfuHH
	cQ1tYcFEqikNptBaql990bYAqhIS58aAjl4vVAgsgX48Yxm6iDh1kL5jJ7HXQ2ppDZK64dt50Q9
	KTddnLg==
X-Received: by 2002:a05:6a21:3394:b0:2ea:41f1:d54a with SMTP id adf61e73a8af0-32da8540764mr31709129637.55.1760404563421;
        Mon, 13 Oct 2025 18:16:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELt/YGsVm2PjjEZ477lrGaSp2HNzDVReiR0NJSLQK9e2H2AIf2ucuUQKdNf5z06//FvgGKdQ==
X-Received: by 2002:a05:6a21:3394:b0:2ea:41f1:d54a with SMTP id adf61e73a8af0-32da8540764mr31709094637.55.1760404562901;
        Mon, 13 Oct 2025 18:16:02 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b065c40sm13045573b3a.10.2025.10.13.18.16.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 18:16:02 -0700 (PDT)
Message-ID: <2a70f878-269c-1b40-2e8c-77b5851de9a1@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 18:16:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
 <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
 <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=68eda454 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=sZIQVmb-xcyDnIycNOAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 8-Io_XvJb5ELRZv4_yussUG4vOV_oio5
X-Proofpoint-ORIG-GUID: 8-Io_XvJb5ELRZv4_yussUG4vOV_oio5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX7LeCpySo+K0U
 wYUALAxcxEznc2WpMaEwwvQOgv1OGDaM+VRe7MKaYYLHWRaMjQeR3/QVbjZTCqyCRF8MJylTEMq
 NvE2NtnJwH3dkHN5MwZJPAQz1ql7DzYgNMMx9L/8p/fJrSRugjC68uF/qmhJ/szCMGLUiAeWK00
 0edZMHnDeo26UCh7r39S8SpfuoKiVsTGQmepsvd6O7y0I6SJ5k0+V4WraMMz/2OTbwhXQODriO0
 yBwqEG/D0uY5OOGBJpKlRC/hI8QmloBPJ7T3kYop6wr/3ZAtzXsa8WpIVFh3h41R/fZ5uG0mKKK
 sPUsWTTvBstDDOJESVf7mgFIpN97t1xn9k885c3CxjQKEQbCrVTq3ZwypLhyO+KNzpCjXOw+zFV
 S5UkXP4YwVBy4uEPMLRcdE6GatQ51Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_181605_903970_C952410D 
X-CRM114-Status: GOOD (  15.25  )
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

CgpPbiAxMC8xMy8yMDI1IDQ6NTAgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24g
MTQvMTAvMjAyNSAwMTo0NiwgV2VzbGV5IENoZW5nIHdyb3RlOgo+Pj4+PiAgwqDCoMKgICIjY2xv
Y2stY2VsbHMiOgo+Pj4+PiAgwqDCoMKgwqDCoCBjb25zdDogMAo+Pj4+PiBAQCAtMTU3LDYgKzE2
MCwyNSBAQCBhbGxPZjoKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+Pj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoKPj4+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGVudW06Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFj
b20sZ2x5bXVyLXFtcC11c2IzLXVuaS1waHkKPj4+Pj4gK8KgwqDCoCB0aGVuOgo+Pj4+PiArwqDC
oMKgwqDCoCBwcm9wZXJ0aWVzOgo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgY2xvY2tzOgo+Pj4+Cj4+
Pj4gTWlzc2luZyBtaW5JdGVtcy4KPj4+Pgo+Pj4KPj4+IEhpIEtyenlzenRvZiwKPj4+Cj4+PiBX
b24ndCB0aGUgbWluSXRlbXMgYmUgaW5oZXJpdGVkIGJ5IHRoZSBiYXNlIGRlZmluaXRpb24/Cj4+
Pgo+Pgo+PiBBaC4uLmFyZSB5b3Ugc2F5aW5nIHRvIGRlZmluZSBtaW5JdGVtcyB0byA1IGFzIHdl
bGwsIHNpbmNlIHdlIG5lZWQgdG8KPj4gaGF2ZSBhbGwgNSBjbG9ja3MgaGFuZGxlcyBkZWZpbmVk
IHRvIHdvcms/Cj4gCj4gCj4gWW91IG5lZWQgdGhlIG1pbkl0ZW1zIGNvbnN0cmFpbnQgYXMgd2Vs
bCwgdG8gZGVmaW5lIHRoZSBkaW1lbnNpb24KPiBhY2N1cmF0ZWx5Lgo+IAo+Pgo+PiBUaGFua3MK
Pj4gV2VzbGV5IENoZW5nCj4+Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgbWF4SXRlbXM6IDUK
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzOgo+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgIGl0ZW1zOgo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBhdXgKPj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogY2xrcmVmCj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJlZgo+Pj4+Cj4+Pj4gV2hhdCBpcyB0aGUgZGlmZmVy
ZW5jZSBiZXR3ZWVuIHRoZXNlIHR3bz8gV2hpY2ggYmxvY2sgSU5QVVRzCj4+Pj4gKGltcG9ydGFu
dCEpIHRoZXkgcmVwcmVzZW50Pwo+Pj4+Cj4+Pgo+Pj4gY2xrcmVmIGlzIHRoZSBUQ1NSIHJlZmVy
ZW5jZSBjbG9jayBzd2l0Y2gsIGFuZCB0aGUgcmVmIGlzIHRoZSBhY3R1YWwgQ1hPCj4+PiBoYW5k
bGUuCj4gCj4gCj4gVGhlbiB0aGlzIHNob3VsZCBiZSBuYW1lZCBzb21laG93IGRpZmZlcmVudGx5
LiBDWE8gaXMgY2xvY2suIFJlZmVyZW5jZQo+IGNsb2NrIGlzIGNsb2NrLi4uIFRvIG1lIGl0IGZl
ZWxzIGxpa2UgeW91IGFyZSBkZXNjcmliaW5nIHRoZSBzYW1lIGNsb2NrLAo+IGp1c3QgbWlzc2lu
ZyBzb21lIGdhdGUgaW4gVENTUi4gQnV0IGluIGNhc2UgdGhlc2UgYXJlIG5vdCB0aGUgc2FtZQo+
IGNsb2NrcywgeW91IG5lZWQgdG8gbmFtZSBpdCBhY2N1cmF0ZWx5Lgo+IAoKVGVjaG5pY2FsbHkg
aXRzIGFsbCBoYW5kbGluZyB0aGUgc2FtZSBjbG9jayBicmFuY2ggKENYTyksIHdlIGhhdmUgdGhl
IApUQ1NSIGNsa3JlZiByZWdpc3RlciB0aGF0IGFsbG93cyB1cyB0byBnYXRlIHRoZSBDWE8gdG8g
dGhlIFVTQiBQSFksIGFzIApDWE8gaXMgc2hhcmVkIGFjcm9zcyBzZXZlcmFsIEhXIGJsb2Nrcywg
c28gaXQgYWxsb3dzIHVzIHRvIHByb3Blcmx5IApwb3dlcmRvd24gdGhlIFBIWSBldmVuIHRob3Vn
aCBvdGhlciBjbGllbnRzIGFyZSB2b3RpbmcgZm9yIENYTyBvbi4gIFRoZW4gCndlIG9idmlvdXNs
eSBoYXZlIHRvIHJlbW92ZSBvdXIgdm90ZSB0byB0aGUgb3ZlcmFsbCBDWE8sIHNvIHRoYXQgaXQg
Y2FuIApwb3RlbnRpYWxseSBiZSBzaHV0ZG93bi4KCk1heWJlIHdlIGNhbiByZW5hbWUgaXQgdG8g
ImNsa3JlZiIgZm9yIHRoZSBDWE8gaGFuZGxlIGFuZCAKImNsa3JlZl9zd2l0Y2giIGZvciB0aGUg
VENTUkNDIGhhbmRsZT8KClRoYW5rcwpXZXNsZXkgQ2hlbmcKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
