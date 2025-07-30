Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DD0C87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 08:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pdO8hC4+DeAZWzwd76x9DN7X/LIbavb0UDsTMnKj8Y=; b=eB59ZIrNsCi9s1
	cfnkxsm9Z4qu/PV0XwyFjbFhk8FaZOzDpej+yxNvoCNVZ/J1z+WSpwBFGEYAayKaZBQAuESmGWgGB
	MlRChH2qRU+RwnpyE69tUcQxNgwa2FUJtBPxNwUTECMQpMvkwbwcmCoLWujnUBagcjcGJCxdO0WCs
	8VU93yKlAZKi+a4Lc+NDS+mrNQh+IxpyfYv1L6G7ObX+SOHk8xJt6pQ5l3ALtZTCpqXbvIpwlmXzW
	Xl4l1w29CPMomMoTgy9OM4qsFbIqC60jITWjj95s4UMUfX85TjG82NKzXQ2yByxPwd/Xt/nkdFrrh
	aUnNH0E3OuCVMVJL+9bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2Z3-000000012Bm-0rdx;
	Wed, 30 Jul 2025 08:53:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2Z0-000000012B7-2MMD
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 08:53:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U7KBaE006654
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 08:53:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yry99kMMFqY8zCfj7lzYjkJIij1/JDYYNXnSDFUTCG0=; b=A4eBIy1GyrTNL8FR
	HHew1H3isqDjCTSZtmeUW71Pfb+vXhZb14hPo2yiP6y/g+PreAftTE7fwR83tuPg
	Y+fEQG3eA/Vm3fmXCJ4XEtE91oC5J3mim4FDKKN6bFTAKGg6TC9dO1SYJabrd3jH
	TF8vY0vbIFnqJ6D4eZ9HhWSnqvAK+d5sc8lfPXMNxwgHAraCuOv8nzW1cx63jY3h
	IOS/l65gkDY0Pc9Uh0rETLD/njU8X88t0CQSp9o//UadTiX+Fo0Lx1DN4mo2DFw+
	YNmRprdQRRuogDuIglMIHWBSg8VQ6VLeXlvYMwjFaTx7JLbv8zdSqTZBSCXoxmSA
	XpmR2Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mcrb7vj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 08:53:27 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74cf7913166so1200925b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 01:53:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753865607; x=1754470407;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yry99kMMFqY8zCfj7lzYjkJIij1/JDYYNXnSDFUTCG0=;
        b=ZabN6l7/WAxcHuwAYXAswQRAB9dv33n5MHN6RqmymsR8gl6eXjxjb+913VdeLTzRwm
         nhKOvB/2dE+iXd4UV+jHNce9ahmh9wolWPKtPndgJbYaukO9+jQs6ffFnyxnUAUHIS/Q
         Cbp7nEezsxt76REg4IVm4IZlhjzwOt0MG9m/kTVOMGXeXgiF6WNup0c5OBb6r/2wLqM8
         6YcYoskBrdcs3rh8M1/LXj6zI4j1WyYJQedsM+DZQookXO43v9o6BMqGHGOCU2+dVk52
         GvEOjjWs/trWxlhb7ujLjfayef5TrDgOR+UoWelLgUfDgoTWy5qOGLa5JrWyEJT8hoyM
         W18w==
X-Forwarded-Encrypted: i=1; AJvYcCXJ3awgOwWKDd34B1yl0U6Lxf0Dn+4CBF7XvYXah/4Q5bKJmR9/0giIqKWP7qKCarG2iQl+00pF5lg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwV0QISXPvBhcC0t88UB4p2tZa8AHWpy9h23GuAzPkbkP2o1CxN
	SrUjs9k5IBlsbUR3cXrghI2DpqXUvvNQhW6LqDMqnKgqEsdCYmbHC+HAyspq41bJg53lSHmwepi
	x3rLTWBSC+CKqXTarBl0EmQr1FkgISIu3QX2skGCMnVWxe8zXurZ/AhpNqAmCUsCvhXb5
X-Gm-Gg: ASbGncsP4ucCx1EMU8m9XjVPT7itRC8iZeWTsgTU7cl30p9bCvredgeAK97RCJ8AxkZ
	O9KvVcuQxKQ0jTdk3Uxz2pRECSWMCPILBgXCkIS1oe6XxkE06r5XwDGToVUfmhHcSc0Fm4d5XEE
	tJ5FvSY7F7IZBauhsQ1lJILtAUVBot4M7ch+rhE5jeGeJEMzqDCkZbKWSPSzY1rD3HRRhxv68hX
	R1VH579/Dse9HO09iL9vF3Z+1D9qIU7ro6uRl2Gi2z3iEGdBgoortmzLcL+Hxl7MWm6XIua7qAJ
	AhE8Jcf6RP+8ahXkzE4roHajV9fQpzDXcwToaVnz2EZl1XDpC58RNwCfLSChI5uZuJSagBp7QC3
	jw8vai87DrPuf3qRgb/jHiX0YDPi+aQ==
X-Received: by 2002:a05:6a00:3a15:b0:736:fefa:b579 with SMTP id d2e1a72fcca58-76ab331d67emr1785818b3a.7.1753865606434;
        Wed, 30 Jul 2025 01:53:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1lcGCmyjgrElcbydcxH4piKCVTBp09W5mqd3uW9/dBMAgGC4DCe3OpUMuk8Rvd0cylpoWZg==
X-Received: by 2002:a05:6a00:3a15:b0:736:fefa:b579 with SMTP id d2e1a72fcca58-76ab331d67emr1785793b3a.7.1753865605877;
        Wed, 30 Jul 2025 01:53:25 -0700 (PDT)
Received: from [10.133.33.112] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76b210e4f94sm1072225b3a.36.2025.07.30.01.53.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 01:53:25 -0700 (PDT)
Message-ID: <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 16:53:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
 <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
 <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA2MCBTYWx0ZWRfXwUHh6RrKlpuv
 pnXxsY3QhaSgaSiFDYKYTRCS0ZViAMfIjhMHSvJSTXLCUS1/JcHCQ293Kc6UMk9qEx4jIKXSnvC
 YNcGCz1KnrkzIi2Sgv2BR5O6UPF8Q2I2k89WzFOYGUHurVAlDwZcfzhaMf+hYJWYAmuCOe2NVke
 KSRRLUQFiYHb/uM+Bn2rJrA65aVAsFEEXY/C3V4EBVTFqWZ8kx2lpE2iUwk1byE3qINugKXGDQr
 lc5Tg52PgW5qAkEMNZM+64JS8fjQ1wUxu/WIVqKdmn0Bf4o50VDsNCKTJguU2zpvb92cG9vL9hk
 gUVdobkE81KFIsJHY0PepwMM67kgw8alWzkoTNq5/QnWTedPvJNtnrpqfktLut1hsW8hHLCr1kz
 jZUXM1TPX1nKPqs0xWEkmCsJoIBx3Fw5ssmyzmQbFyemKl77IC4nxS9VJYdTJh2mX0d8JROI
X-Authority-Analysis: v=2.4 cv=Hth2G1TS c=1 sm=1 tr=0 ts=6889dd87 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8
 a=B85Fo_iQka-ta6S4ByUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-GUID: WD6M-PsFkBvlAKEu1qQDhlwW2Orp0KTu
X-Proofpoint-ORIG-GUID: WD6M-PsFkBvlAKEu1qQDhlwW2Orp0KTu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_03,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_015330_725826_9E43BB0F 
X-CRM114-Status: GOOD (  36.10  )
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

Ck9uIDcvMjIvMjAyNSA4OjQxIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFR1ZSwg
SnVsIDIyLCAyMDI1IGF0IDA4OjA1OjA2UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBP
biA3LzIyLzIwMjUgNDozOCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9uIFR1ZSwg
SnVsIDIyLCAyMDI1IGF0IDAzOjIyOjAzUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+
IEludHJvZHVjZSBkZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBRdWFs
Y29tbSBRTVAgRFAgUEhZCj4+Pj4gb24gUUNTNjE1IFNvQ3MuIFRoaXMgUEhZIHN1cHBvcnRzIERp
c3BsYXlQb3J0IGZ1bmN0aW9uYWxpdHkgYW5kIGlzCj4+Pj4gZGVzaWduZWQgdG8gb3BlcmF0ZSBp
bmRlcGVuZGVudGx5IGZyb20gdGhlIFVTQjMgUEhZLgo+Pj4+Cj4+Pj4gVW5saWtlIGNvbWJvIFBI
WXMgZm91bmQgb24gb3RoZXIgcGxhdGZvcm1zLCB0aGUgUUNTNjE1IERQIFBIWSBpcwo+Pj4+IHN0
YW5kYWxvbmUgYW5kIGRvZXMgbm90IHN1cHBvcnQgVVNCL0RQIG11bHRpcGxleGluZy4gVGhlIGJp
bmRpbmcKPj4+PiBkZXNjcmliZXMgdGhlIHJlcXVpcmVkIGNsb2NrcywgcmVzZXRzLCBUQ1NSIGNv
bmZpZ3VyYXRpb24sIGFuZCBjbG9jay9QSFkKPj4+PiBjZWxscyBmb3IgcHJvcGVyIGludGVncmF0
aW9uLgo+Pj4gU2ltcGx5IHB1dDogbm8sIHRoaXMgaXMgbm90IGNvcnJlY3QuIEV2ZW4gaWYgeW91
IGdvIHRvIHRoZSBTTTYxNTAgYmxvY2sKPj4+IGRpYWdyYW0sIGl0IHBvaW50cyBvdXQgdGhhdCBE
UCB1c2VzIHRoZSBVU0IzIFBIWSwgbm90IGEgc2VwYXJhdGUgRFAgUEhZLgo+Pj4KPj4+IEkgdGhv
dWdodCB0aGF0IHdlIGhhdmUgZGlzY3Vzc2VkIGl0IGJlZm9yZWhhbmQuCj4+Pgo+Pj4gSSBjYW4g
cXVvdGUgbXkgY29tbWVudCBmcm9tIHRoZSBwcmV2aW91cyB0aHJlYWQ6Cj4+Pgo+Pj4+PiBOby4g
SXQgbWVhbnMgcmVwbGFjaW5nIGV4dGVuZGluZyBleGlzdGluZyBlbnRyaWVzIHdpdGggYmlnZ2Vy
IHJlZyBhbmQKPj4+Pj4gI3BoeS1jZWxscyA9IDwxPi4gVGhlIGRyaXZlciBtdXN0IGtlZXAgd29y
a2luZyB3aXRoIG9sZCBub2RlIGRlZmluaXRpb25zCj4+Pj4+IGFzIGlzIHRvIGVuc3VyZSBiYWNr
d2FyZHMgY29tcGF0aWJpbGl0eS4gTmV3IG5vZGVzIHNob3VsZCBtYWtlIGl0Cj4+Pj4+IHJlZ2lz
dGVyIHR3byBQSFlzIChVU0IzIGFuZCBEUCkuIE9uIHRoZSBkcml2ZXIgc2lkZSBtb2RpZnkgZ2Vu
ZXJpYyBjb2RlCj4+Pj4+IHBhdGhzLCBhbGwgcGxhdGZvcm1zIHN1cHBvcnRlZCBieSB0aGUgZHJp
dmVyIHNob3VsZCBiZSBhYmxlIHRvIHN1cHBvcnQKPj4+Pj4gVVNCMytEUCBjb21iaW5hdGlvbi4K
Pj4+IExvb2tpbmcgYXQgdGhlIGhhcmR3YXJlIG1lbW9yeSBtYXBzOgo+Pj4KPj4+IE1TTTg5OTg6
IFVTQjMgUEhZIHJlZ3MgYXQgMHhjMDEwMDAwLCBEUCBQSFkgcmVncyBhdCAweGMwMTEwMDAKPj4+
IFNETTY2MDogVVNCMyBQSFkgcmVncyBhdCAweGMwMTAwMDAsIERQIFBIWSByZWdzIGF0IDB4YzAx
MTAwMAo+Pj4gUUNNMjI5MDogVVNCMyBQSFkgcmVncyBhdCAweDE2MTUwMDAsIERQIFBIWSByZWdz
IGF0IDB4MTYxNjAwMAo+Pj4gU002MTE1OiBVU0IzIFBIWSByZWdzIGF0IDB4MTYxNTAwMCwgRFAg
UEhZIHJlZ3MgYXQgMHgxNjE2MDAwCj4+Pgo+Pj4gTm93Ogo+Pj4gU002MTUwOiBVU0IzIFBIWSBy
ZWdzIGF0IDB4ODhlNjAwMAo+Pj4gICAgICAgICBVU0IzIFBIWSByZWdzIGF0IDB4ODhlODAwMCwg
RFAgUEhZIHJlZ3MgYXQgMHg4OGU5MDAwCj4+Pgo+Pj4gSSBkbyBub3Qga25vdywgd2h5IG1zbS00
LjE0IGRpZG4ndCBkZXNjcmliZSBzZWNvbmQgVVNCMyBQSFkuIE1heWJlIHlvdQo+Pj4gY2FuIGNv
bW1lbnQgb24gaXQuCj4+Pgo+Pj4gQnV0IGJhc2VkIG9uIHRoYXQgbGlzdCwgdGhlIG9ubHkgc3Bl
Y2lhbCBjYXNlIHRoYXQgd2UgbmVlZCB0byBoYW5kbGUgaXMKPj4+IHRoZSBmaXJzdCBVU0IzIFBI
WSwgd2hpY2ggZG9lc24ndCBoYXZlIGEgY29ycmVzcG9uZGluZyBEUCBQSFkgYmxvY2suIEJ1dAo+
Pj4gaXQgd2lsbCBiZSBoYW5kbGVkIGFueXdheSBieSB0aGUgY29kZSB0aGF0IGltcGxlbWVudHMg
c3VwcG9ydCBmb3IgdGhlCj4+PiBleGlzdGluZyBEVCBlbnRyaWVzLiBBbGwgb3RoZXIgaGFyZHdh
cmUgYmxvY2tzIGFyZSBjb21ibyBVU0IrRFAgUEhZcy4KPj4+Cj4+PiBIYXZpbmcgYWxsIG9mIHRo
YXQgaW4gbWluZCwgcGxlYXNlLCBmb3IgdjMgcGF0Y2hzZXQgaW1wbGVtZW50IFVTQitEUAo+Pj4g
c3VwcG9ydCBpbiB0aGUgcGh5LXFjb20tcW1wLXVzYmMgZHJpdmVyIGFuZCBhZGQgdGhlIGZvbGxv
d2luZyBsb2dpYwo+Pj4gdGhhdCBhbHNvIHdhcyByZXF1ZXN0ZWQgaW4gdjEgcmV2aWV3Ogo+Pj4K
Pj4+Pj4gTm90IHF1aXRlLiBCb3RoIFVTQjMgYW5kIERQIGRyaXZlcnMgc2hvdWxkIGJlIGNhbGxp
bmcgcG93ZXJfb24gLyBfb2ZmLgo+Pj4+PiBJZiBVU0IzIGlzIG9uLCBwb3dlcmluZyBvbiBEUCBQ
SFkgc2hvdWxkIGZhaWwuIFZpY2UgdmVyc2EsIGlmIERQIGlzIG9uLAo+Pj4+PiBwb3dlcmluZyBv
biBVU0Igc2hvdWxkIGZhaWwuCj4+PiBJIHRoaW5rIG91ciB1bmRlcnN0YW5kaW5nIG1pZ2h0IG5v
dCBiZSBmdWxseSBhbGlnbmVkLiAKPiBJIGRpZCBub3Qgd3JpdGUgdGhpcy4gUGxlYXNlIGZpeCB5
b3VyIG1haWxlciB0byBxdW90ZSBtZXNzYWdlcyBwcm9wZXJseS4KPiBBcyB5b3UgYXJlIHVzaW5n
IFRodW5kZXJiaXJkLCBJJ20gbm90IHN1cmUgd2hlcmUgdGhlIGlzc3VlIGNvbWVzIGZyb20uCj4K
PiBBbHNvIHBsZWFzZSBmaXggaXQgdG8gd3JhcCB5b3VyIHJlc3BvbnNlcyBzb213aGVyZSBsb2dp
Y2FsbHkuCj4KPj4+IFBlcmhhcHMgdGhpcyBpcyBiZWNhdXNlIEkgZGlkbuKAmXQgYWNjdXJhdGVs
eSB1cGRhdGUgdGhlIG11dHVhbCBleGNsdXNpb24gcmVsYXRpb25zaGlwcyBhbmQgdGVzdCByZXN1
bHRzIGZvciB0aGUgZGlmZmVyZW50IFBIWXMuIAo+Pj4gTGV0IG1lIGNsYXJpZnkgbXkgbGF0ZXN0
IGZpbmRpbmdzIGFuZCBleHBsYWluIHdoeSBJIGJlbGlldmUgdGhlc2UgYXJlIHNlcGFyYXRlIFBI
WXMgdGhhdCByZXF1aXJlIG11dHVhbCBleGNsdXNpb24gdmlhIFRDU1IuCj4+Pgo+Pj4gMS4gQWJv
dXQgdGhlIFRDU1IgRFBfUEhZTU9ERSBSZWdpc3RlcnMKPj4+Cj4+PiBNU004OTk4L1NETTY2MDoK
Pj4+IAlPbmx5IG9uZSBUQ1NSX1VTQjNfRFBfUEhZTU9ERSByZWdpc3RlciBhdCAweDFGQ0IyNDgu
Cj4+PiBRQ00yMjkwL1NNNjExNToKPj4+IAlUQ1NSX1VTQjNfMF9EUF9QSFlNT0RFIGF0IDB4M0NC
MjQ4Cj4+PiAJVENTUl9VU0IzXzFfRFBfUEhZTU9ERSBhdCAweDNDQjI0Qwo+Pj4gU002MTUwOgo+
Pj4gCVRDU1JfVVNCM18wX0RQX1BIWU1PREUgYXQgMHgxRkNCMjQ4Cj4+PiAJVENTUl9VU0IzXzFf
RFBfUEhZTU9ERSBhdCAweDFGQ0IyNEMKPiBTTTYxNTAgaGFzIHR3byBkaWZmZXJlbnQgc2V0cyBv
ZiBvdXRwdXQgcGlucywgc28gdGhlIGZpcnN0IHJlZ2lzdGVyCj4gY292ZXJzIGZpcnN0IHNldCBv
ZiBTUyBsYW5lcyAod2hpY2ggYXJlIHJvdXRlZCB0byB0aGUgZG9jdW1lbnRlZCBTUwo+IFBIWSks
IHRoZSBzZWNvbmQgcmVnaXN0ZXIgY292ZXJzIHRoZSBzZWNvbmQgc2V0IG9mIFNTIGxhbmVzICh3
aGljaCBhcmUKPiByb3V0ZWQgdG8gdGhlIERQIGFuZCBzZWNvbmRhcnkgVVNCIFBIWSkuCj4KPiBJ
IGNhbiBvbmx5IGFzc3VtZSB0aGF0IHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gd2FzIHN1cHBvc2Vk
IHRvIGJlCj4gYXBwbGljYWJsZSB0byBRQ00yMjkwIC8gU002MTE1LCBidXQgd2FzIGxhdGVyIHJl
bW92ZWQgLyBkaXNhYmxlZCwgd2hpbGUKPiB0aGUgcmVnaXN0ZXJzIHdlcmUga2VwdCBpbiB0aGUg
VENTUiBibG9jay4KPgo+Pj4gRXZlbiB0aG91Z2ggTVNNODk5OCwgU0RNNjYwLCBRQ00yMjkwLCBh
bmQgU002MTE1IGFsbCBoYXZlIG9uZSBVU0IzIFBIWSBhbmQgb25lIERQIFBIWSwgdGhlIFRDU1Ig
RFBfUEhZTU9ERSByZWdpc3RlciBjb25maWd1cmF0aW9uIGlzIGRpZmZlcmVudCBvbiBlYWNoIHBs
YXRmb3JtLgo+Pj4KPj4+IEFkZGl0aW9uYWxseSwgSSBmb3VuZCBzb21lIGludGVyZXN0aW5nIHJl
Z2lzdGVyIGRvY3VtZW50YXRpb24gZm9yIFFDTTIyOTAvU002MTE1Ogo+Pj4gCVRDU1JfVVNCM18w
X0RQX1BIWU1PREU6IOKAnEluIGthbW9ydGEgdGhpcyBvbmUgaXMgZm9yIG1vYmlsZSB1c2IuIERQ
IG5vdCBzdXBwb3J0ZWQu4oCdCj4+PiAJVENTUl9VU0IzXzFfRFBfUEhZTU9ERTog4oCcRFAgbW9k
ZSBzdXBwb3J0ZWQgZm9yIEF1dG8gdXNiIGluIGthbW9ydGEu4oCdCj4+PiBJIHRoaW5rIHRoZSBy
ZWFzb24gZm9yIGhhdmluZyB0d28gZGlmZmVyZW50IFRDU1IgcmVnaXN0ZXJzIGlzIHRvIGFsbG93
IGJvdGggdGhlIFVTQjMuMCBhbmQgRFAgUEhZcyB0byBiZSB1c2VkcyBhdCB0aGUgc2FtZSB0aW1l
IGluIGNlcnRhaW4gcHJvZHVjdCBjb25maWd1cmF0aW9ucy4KPiBTdXJlLiBPbmUgZm9yIHRoZSBm
aXJzdCBQSFkgKFVTQiksIG9uZSBmb3IgdGhlIHNlY29uZCBQSFkgKFVTQitEUCkuCj4gSWYgeW91
IGNoZWNrIHRoZSBtZW1vcnkgbWFwLCB5b3Ugd2lsbCBmaW5kIHRoZSBzZWNvbmQgVkxTIENMQU1Q
IHJlZ2lzdGVyCj4gZm9yIHRoZSBzZWNvbmQgVVNCIFBIWS4KPgo+Pj4gMi4gU002MTUwIFRlc3Qg
UmVzdWx0cwo+Pj4gV2hlbiBUQ1NSX0RQX1BIWU1PREVfMCBpcyBzd2l0Y2hlZCB0byBEUCwgdGhl
IFVTQjMgcHJpbWFyeSBQSFkgY2Fubm90IHdvcmssIGFuZCB0aGUgRFAgUEhZIGlzIGFsc28gbm90
IGZ1bmN0aW9uYWwgKHBvc3NpYmx5IGR1ZSB0byBjbG9jayBsYWNrIG9yIG90aGVyIGNvbmZpZ3Vy
YXRpb24gbWlzbWF0Y2ggd2l0aCB0aGlzIFRDU1Igc2V0dGluZykuCj4+PiBXaGVuIFRDU1JfRFBf
UEhZTU9ERV8xIGlzIHN3aXRjaGVkIHRvIERQLCBib3RoIHRoZSBVU0IzIHByaW1hcnkgUEhZIGFu
ZCB0aGUgRFAgUEhZIHdvcmsgbm9ybWFsbHkuCj4+PiBJIHRoaW5rICJ3aHkgbXNtLTQuMTQgZGlk
bid0IGRlc2NyaWJlIHNlY29uZCBVU0IzIFBIWSIsIGJlY2F1c2UgVENTUl9EUF9QSFlNT0RFXzEg
YWx3YXlzIHdvcmtzIGluIERQIG1vZGUuCj4+PiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNl
LmNvbS9rZXJuZWwvbXNtLysvYWYwM2VlZjdkNGMzY2JkMWZlMjZjNjdkNGYxOTE1YjA1ZDBjMTQ4
OC9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2NhdGFsb2dfdjIwMC5jCj4gSGVyZSBpdCBzdGls
bCBwcm9ncmFtcyB0aGUgVENTUiByZWdpc3Rlci4KPgo+Pj4gQmFzZWQgb24gdGhlc2UgaW5mbywg
SSBiZWxpZXZlIHRoZXNlIGFyZSBzZXBhcmF0ZSBQSFlzLCBhbmQgb25seSB0aGUKPj4+IFRDU1Ig
RFBfUEhZTU9ERSByZWdpc3RlcnMgZGV0ZXJtaW5lIHdoaWNoIFVTQjMvRFAgUEhZcyBhcmUgcGFp
cmVkIG9yCj4+PiBtdXR1YWxseSBleGNsdXNpdmUuIFRoaXMgaXMgd2h5IEkgaGF2ZSBtYWludGFp
bmVkIHNlcGFyYXRlIHByaXZhdGUKPj4+IGRhdGEgZm9yIGVhY2ggUEhZIGFuZCBpbXBsZW1lbnRl
ZCBQb3dlciBvbiBtdXRleCBjb250cm9sIHZpYSBUQ1NSLAo+Pj4gcmF0aGVyIHRoYW4gdXNpbmcg
YSBxbXBfY29tYm8tbGlrZSBzdHJ1Y3R1cmUuCj4gU3RpbGwsIG5vLiBDaGVjayB0aGUgYmxvY2sg
ZGlhZ3JhbSBvZiBTTTYxNTAuCj4KPj4+IEdpdmVuIHRoZSBhYm92ZSwgZG8geW91IHRoaW5rIHdl
IHN0aWxsIG5lZWQgdG8gZm9yY2UgVVNCIGFuZCBEUCB0byBiZSBzdHJpY3RseSBib3VuZCB0b2dl
dGhlciBsaWtlIGEgY29tYm8gUEhZPwo+IFllcy4KCkkgY2hlY2tlZCB0aGUgcmVsYXRlZCBQSFkg
c2VyaWVzIGFuZCBibG9jayBkaWFncmFtcyBhZ2Fpbi4KClBSSSBhbmQgU0VDIGdvIHRvIGRpZmZl
cmVudCBub2RlcyBiYXNlZCBvbiB0aGUgU29DIGRlc2lnbiwgYW5kIHRoZXJlIGFyZSB0d28gdHlw
ZXMgb2YgY29uZmlndXJhdGlvbnM6IFVTQjMtb25seSBhbmQgVVNCMytEUCBwYWlyaW5nLgoKQmVm
b3JlIHByb2NlZWQgdGhlIHYzIHBhdGNoc2V0LCBJ4oCZZCBsaWtlIHRvIGRvdWJsZS1jb25maXJt
IHdoZXRoZXIgdGhlIGZvbGxvd2luZyBzdHJ1Y3R1cmUgaXMgd2hhdCB5b3UgZXhwZWN0OgoKdXNi
X3FtcHBoeV8xOiBwaHlAODhlNjAwMCB7CsKgwqDCoCBjb21wYXRpYmxlID0gInFjb20sc202MTUw
LXFtcC11c2IzLXByaW0tcGh5IjsgPD09IHJlbmFtZSB0byBQUklNCsKgwqDCoCAuLi4KwqDCoMKg
IHFjb20sdGNzci1yZWcgPSA8JnRjc3IgMHhiMjQ0PiwgPCZ0Y3NyIDB4YjI0OD47CsKgwqDCoCBx
Y29tLHRjc3ItbmFtZXMgPSAidmxzX2NsYW1wIiwgImRwX3BoeV9tb2RlIjsKwqDCoCDCoArCoMKg
wqAgI2Nsb2NrLWNlbGxzID0gPDE+OwrCoMKgwqAgI3BoeS1jZWxscyA9IDwxPjsKwqDCoMKgIC4u
Lgp9OwoKdXNiX3FtcHBoeV8yOiBwaHlAODhlODAwMCB7CsKgwqDCoCBjb21wYXRpYmxlID0gInFj
b20sc202MTUwLXFtcC11c2IzZHAtc2VjLXBoeSI7IDw9PSBTRUMgU1MsIHVzZSB1c2IzZHAgdG8g
aW5kaWNhdGUgRFAgY2FwYWJpbGl0eQoKwqDCoMKgIHJlZyA9IDwweDAgMHgwODhlODAwMCAweDAg
MHgyMDAwPjsgPD09IFNTMiBiYXNlIGFkZHJlc3MgYW5kIG9mZnNldCBkZWZpbmUgaW4gZHJpdmVy
IGNvbmZpZwoKwqDCoMKgIGNsb2NrcyA9IDwmZ2NjIEdDQ19BSEIyUEhZX1dFU1RfQ0xLPiwKwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNCM19TRUNfQ0xLUkVGX0NMSz47IDw9PSBU
aGlzIFNvQyBoYXMgbm8gVVNCMy4wIFNFQyBTUyBjbGsKwqDCoMKgIGNsb2NrLW5hbWVzID0gImNm
Z19haGIiLArCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInJlZiI7CsKgwqDCoCBjbG9j
ay1vdXRwdXQtbmFtZXMgPSAiZHBfcGh5X2xpbmtfY2xrIiwKwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgImRwX3BoeV92Y29fZGl2X2NsayI7CsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCDCoArCoMKgwqAgcmVzZXRzID0gPCZnY2MgR0NDX1VTQjNQSFlf
UEhZX1NFQ19CQ1IgPiwKwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNCM19EUF9QSFlfU0VD
X0JDUj47CsKgwqDCoCByZXNldC1uYW1lcyA9ICJwaHkiLCAicGh5X3BoeSI7CgrCoMKgwqAgcWNv
bSx0Y3NyLXJlZyA9IDwmdGNzciAweGJmZjA+LCA8JnRjc3IgMHhiMjRjPjsKwqDCoMKgIHFjb20s
dGNzci1uYW1lcyA9ICJ2bHNfY2xhbXAiLCAiZHBfcGh5X21vZGUiOyA8PT0gYWRkZWQgZm9yIGJh
Y2t3YXJkIGNvbXBhdGliaWxpdHkgd2l0aCBsZWdhY3kgY29uZmlncyB0aGF0IG9ubHkgaGFkIHZs
c19jbGFtcAoKwqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsKwqDCoMKgICNwaHktY2VsbHMgPSA8
MT47CgrCoMKgwqAgc3RhdHVzID0gImRpc2FibGVkIjsKfTsKCj4KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4KPj4+PiAtLS0KPj4+
PiAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtZHAtcGh5LnlhbWwgICAgICAgfCAx
MTEgKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxMTEgaW5zZXJ0
aW9ucygrKQo+Pj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
