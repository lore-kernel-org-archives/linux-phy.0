Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC3DDEDF151
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 11:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGfqO2n3JYyNGcMuRq4hkY7iAvmDsSmJx7VM+1oHMS4=; b=MErzeIqrlpavvI
	Z4BfSfgHhJBctK74D8jVlQEWHJ6zt/aUMvEOMhf92pSUT97evMSrpmQanIdMf+NrFCqtaEp/f/lxm
	m8Tj4CWGiGLTqM0XKA8Ycs2aQOVDP7ecyx5aSwDFb+6Uf/RrT3Er+/oZ4/P1N1Fw62i1cjOBp1e2R
	xah9L4bb8TN0LM1PacPm6TmlZRCQoqurulUtzSvVDBOt/A3i2f2RsNv1ISytqwjZSz73F74bMpnCj
	+jkHm85iuc1JrYZy7zqyU+3ozKSIv68a+vShyKR50oHxoWXZ0A2QRuSoQZnYyI0LYdUVRQSvZFiHi
	R+oS6mrVkmBWotPdFelA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqzx-00000003Mea-27Ui;
	Fri, 13 Feb 2026 11:06:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqzv-00000003MeF-3PbH
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 11:06:09 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D7ZgDO652221
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 11:06:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b01twX+VKhpkqJ7l6msvGVJzLekPKelwCmdqFjzI4dA=; b=BYzSLLedjFAWlrkj
	F7M/k2dK4KesFxKiDQ2x659ptGGzTXMNA+8hgJLzPxcTh8LY1NLXknrKOy06/Ik6
	bAKqlDE68a3KnhYg/c9M9oMhDSWLKxDe4/sfbJrldGezRCFL72Iiyi9fsVRnGvUo
	bA75GSjnw00Y+ek6DbezPJbwW3zo5j3G1nGn6rgEbRG9EKVpnEDGz7I4+e6HaIkS
	RVNNp1vMNtaJvI3OjF2TsgioJAZ9hpM3F8LLNPZfeSgrV2EnrZPCwxS9AUVXYW44
	EcbOx3FeTz4YMdbe+bvsSzF5d65IC+1W3Er19hzwNJYIaB+60vl4VvcfxUl98Bfv
	3uMErA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9gbbm4vt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 11:06:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb4025302aso34402585a.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 03:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770980766; x=1771585566; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b01twX+VKhpkqJ7l6msvGVJzLekPKelwCmdqFjzI4dA=;
        b=WEm0ld1q8L85Q06zxX12/7b3MbHLATl9EjJVVoQ4GICZWPYm+gRv/NBqIv3UisBu0t
         nna4cd4mBPJlEnJFq18QP2V+8601KunNbn9XijppbWKewtFodETfAKPJISBW6M5Znvev
         NyONIPR7kwNEsjGxGYkKGOpOkwXWzp/TfhMNeUBkWbnpSzrpau42QWhphe40IqV1w4IY
         qaf75O9C8lwEEDsa/dNwrQTqiIyWZ9gTMOrtEKdPOlAQ84uuWl969htu3qiNVjDaWHkQ
         yyFwp0y4GbnjadUUo6u2yb3cuFlL0eFZRYKhdKyq88VYPvcXTC4KZsJYK7QSqR6rm5yv
         WCwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770980766; x=1771585566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b01twX+VKhpkqJ7l6msvGVJzLekPKelwCmdqFjzI4dA=;
        b=hEV0461xiUezSAg+F1olCyGxaOeK85WVnIHY4nNO39HEcfnmvCnEQ5KC5dZCELZ+wl
         bieEQOymYQpRlrkdh5YAqTGYV8dvu8kmv6Q0jqulKsnNVOqqQnD+eqd3zVVmu7NWa0e5
         SQTeJBnfq0vJs5tezTAA3zeszRZM42A2rpPfWgI1ZAmflmTBTzPrQf5WH2Rvg+eeezdM
         rYEE+Sx2VFAc1JE/2eniY4YxIew2oE1EtaJDx2OAWpuRtwxZLwFfJfHPk+wYI6C0w+ep
         gHSfk5lpKiWDBY5mdPLZEPlsQtxbiRSthuuqxEONAwU+8uNKAvYbnFPzvvINDxG6Q39y
         VzKg==
X-Forwarded-Encrypted: i=1; AJvYcCUsl/tAqjsV6zmeTwABRpB5B6hbQSDN33pBjDjg85Hj6xnAKnlOU8brvKKi6RkdpJe+cY+uaapKdyQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyI63pUd3YtzhuFrTCukTB/XCj3huR5ioyld9rR4aEg2BWSWqpb
	Eiqcq1KqRmrh9k6CoLIsZZSJ+9iT6tNkIArnLsvS39PWQyk/Fjfyxg6w6PmgylFejN61+uzLlk7
	KkrKKSB00F0VP8+9fSWr2jQZwIMl4nq3KxYh41O9zKce5UZqJ6b9qJxJ96wn0NwylCb1bROiSn3
	1V
X-Gm-Gg: AZuq6aL7wq3/jwXwGgZtsl6RKLa4/0i06NpmKSGCFydvmpfsxeUdv2cBGHnmRAGEcgY
	UTfSYww9eU7wy1l8RDOsZBmN4i4J6DVNbeujS15JTdNPvJZwZgnMETGdSYISD34gD0zEVT6r6jO
	b25s/x8RGYDrxyG8cm8BOalDTWx9AKhC4TNEeWmsz8xNeAY1HsMvWiElrKlLlfBepcGRIRoPDu0
	pSnWA25eScn2EnXy6EyvwJ9DSaB0vBXh3wha9tuswqZOhj5lXR3KUt/IneV5fW9f/jHlspTfqWX
	LsN/mZUyYINtZQi9ixDzIPhpb8+6duWRXJCe5bOmJBIs7HI4TLXhixlV2+Ka2dH9IgOB6OVsrof
	/ixDnMECJ9hDxGVlE2xRZpQKtDhAWBtVrkKIKb1KmZiRy0Sf5WjkcVGtHxzhSDFecWcP+W9JD9L
	Pds4E=
X-Received: by 2002:a05:620a:7014:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8cb40902c06mr168289985a.9.1770980765579;
        Fri, 13 Feb 2026 03:06:05 -0800 (PST)
X-Received: by 2002:a05:620a:7014:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8cb40902c06mr168287585a.9.1770980765028;
        Fri, 13 Feb 2026 03:06:05 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec35688sm246007366b.51.2026.02.13.03.06.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 03:06:04 -0800 (PST)
Message-ID: <f7fed0cc-0c59-4a75-b045-a83df924113d@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 12:06:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: qcom: edp: Add eDP phy mode switch support
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
 <af15838f-6a31-4017-ae5d-7b5e30f24aa4@oss.qualcomm.com>
 <845165e6-4595-41de-8cff-d065e8f6b6be@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <845165e6-4595-41de-8cff-d065e8f6b6be@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA4NSBTYWx0ZWRfX8RthA97lvYKe
 BXbJ7RkQ3H8kFMfz2PjAcvDKSYV+HNZvBuOuwmXW1/d2HwWdFIPo/ZxLfOGL+fEMEMIdlXO2bcd
 Afq5fDSuq6fZiKLK+eSk4h5Yj+61xl/HQojRdvcdO/SwhgI2LB3MJnFqbPZj8z8eZLmSfGEwWSR
 iyGZ1AGttxU/zYVKFjHgHcatWARnruMLLg5qIYwrD4h3SaxzLR32HByT0zKMb92XVoaZPYU6Gjk
 vArvrG6zuUtzEs0pNB41/xS5HBNcCmx4GHubCGgLslsWy6UVpW1QFREzGYbZXPl5QqF48zZ8s4z
 2C9wW3jnYC7rN7endezjXfF7LpfkdKl+zAPHGUx3AXIm/Opc7ChNpjJ1knvzWDVQANHuTNQ8Zzb
 ij631+68D62FWFtT5xEJgcugpRkcnMjkTdCGN3MGs/PpWE/u6MijpsX4dK5/uBkhvDB97V3enJW
 tvVxzyZeD+GBdt5mn5Q==
X-Authority-Analysis: v=2.4 cv=a849NESF c=1 sm=1 tr=0 ts=698f059e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=HLvL9enDxULGCeejQg4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: jxN0ZBUtBjRXXSLBf41-tvOCgPlwFflt
X-Proofpoint-ORIG-GUID: jxN0ZBUtBjRXXSLBf41-tvOCgPlwFflt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602130085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_030607_879389_A813CB3A 
X-CRM114-Status: GOOD (  14.91  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMi8xMC8yNiAxMToyOSBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+IAo+IAo+IE9uIDIvNi8y
MDI2IDc6MDIgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDIvNS8yNiAxMDoyMCBBTSwg
WW9uZ3hpbmcgTW91IHdyb3RlOgo+Pj4gQWRkIERQL2VEUCBzd2l0Y2ggc3VwcG9ydCBieSBzcGxp
dHRpbmcgdGhlIFBIWSBzd2luZy9wcmUtZW1waGFzaXMgdGFibGVzCj4+PiBpbnRvIHNlcGFyYXRl
IERQIGFuZCBlRFAgY29uZmlndXJhdGlvbnMuIFRoaXMgYWxsb3dzIHRoZSBkcml2ZXIgdG8gc2Vs
ZWN0Cj4+PiB0aGUgY29ycmVjdCB0YWJsZSBiYXNlZCBvbiB0aGUgaXNfZWRwIGZsYWcuCj4+Pgo+
Pj4gQWRkIGEgZGVkaWNhdGVkIHRhYmxlIGZvciB0aGUgU0M3MjgwL2dseW11ciBwbGF0Zm9ybXMs
IGFzIHRoZXkgYXJlIG5vdAo+Pj4gY29tcGF0aWJsZSB3aXRoIHRoZSBvdGhlcnMuCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNv
bT4KPj4+IC0tLQo+Pgo+PiBbLi4uXQo+Pgo+Pj4gK3N0YXRpYyBjb25zdCB1OCBlZHBfc3dpbmdf
aGJyMl9oYnIzX3YzWzRdWzRdID0gewo+Pj4gK8KgwqDCoCB7IDB4MGIsIDB4MTEsIDB4MTYsIDB4
MWIgfSwKPj4+ICvCoMKgwqAgeyAweDBiLCAweDE5LCAweDFmLCAweGZmIH0sCj4+PiArwqDCoMKg
IHsgMHgxOCwgMHgxZiwgMHhmZiwgMHhmZiB9LAo+Pj4gK8KgwqDCoCB7IDB4MWYsIDB4ZmYsIDB4
ZmYsIDB4ZmYgfQo+Pj4gK307Cj4+PiArCj4+PiArc3RhdGljIGNvbnN0IHU4IGVkcF9wcmVfZW1w
X2hicjJfaGJyM192M1s0XVs0XSA9IHsKPj4+ICvCoMKgwqAgeyAweDBjLCAweDE1LCAweDE5LCAw
eDFlIH0sCj4+PiArwqDCoMKgIHsgMHgwOSwgMHgxNCwgMHgxOSwgMHhmZiB9LAo+Pj4gK8KgwqDC
oCB7IDB4MGYsIDB4MTQsIDB4ZmYsIDB4ZmYgfSwKPj4+ICvCoMKgwqAgeyAweDBkLCAweGZmLCAw
eGZmLCAweGZmIH0KPj4+ICt9Owo+Pgo+PiBUaGlzIGlzIG5vdCBxdWl0ZSBpbiBsaW5lIHdpdGgg
ZG9jcyBmb3Iga29kaWFrLiBOb3csIGlmIHlvdSBoYXZlCj4+IGJldHRlci9uZXdlciBzZXF1ZW5j
ZXMgdGhhbiB0aGUgSFBHLCBJJ20gbm90IG9iamVjdGluZywgYnV0IHBsZWFzZQo+PiBjcm9zcy1j
aGVjawo+Pgo+PiB0aGUgcmVzdCBvZiB0aGlzIHBhdGNoIEkgdGhpbmsgbG9va3MgZmluZQo+Pgo+
PiBLb25yYWQKPiBUaGFua3MgZm9yIHBvaW50IHRoYXQuLgo+Pj4gK3N0YXRpYyBjb25zdCB1OCBl
ZHBfc3dpbmdfaGJyMl9oYnIzX3YzWzRdWzRdID0gewo+Pj4gK8KgwqDCoCB7IDB4MGIsIDB4MTEs
IDB4MTYsIDB4MWIgfSwKPiBoZXJlIHNob3VsZCBiZSB7IDB4MDYsIDB4MTEsIDB4MTYsIDB4MWIg
fSwgYXJyWzBdWzFdOiAweDBiLT4weDA2Cj4gZG9lcyB0aGlzIGxvb2tzIGZpbmU/IHdpbGwgY2hl
Y2sgdGFibGVzIGFnYWluLi4KCkZvciBrb2RpYWsgSSBzZWU6CgplRFAgSEJSMjMgLyBsb3cgdmRp
ZmY6Cgpzd2luZwoweDBiLCAweDExLCAweDE3LCAweDFjCjB4MTAsIDB4MTksIDB4MWYKMHgxOSwg
MHgxZgoweDFmCgpwcmVlbXAKMHgwYywgMHgxNSwgMHgxOSwgMHgxZQoweDA4LCAweDE1LCAweDE5
CjB4MGUsIDB4MTQKMHgwZAoKKG5vdGljZSBob3cgdGhhdCBtb3N0bHkgZGlmZmVycyBieSB0aGUg
bG93ZXN0IGJpdCBiZWluZyAobm90KXNldCB2cwp5b3VyIHByb3Bvc2FsKQoKZURQIEhCUjIzIC8g
aGlnaCB2ZGlmZjoKCnN3aW5nCjB4MGEsIDB4MTEsIDB4MTcsIDB4MWYKMHgwYywgMHgxNCwgMHgx
ZAoweDE1LCAweDFmCjB4MTcKCnByZWVtcAoKMHgwOCwgMHgxMSwgMHgxNywgMHgxYgoweDAwLCAw
eDBjLCAweDEzCjB4MDUsIDB4MTAsCjB4MDAKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
