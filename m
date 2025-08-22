Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A549CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 14:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIjjyS4DjYpkd9GeVDpxFJj5Y0BGb/br3LR3bjCOhLI=; b=eNj84/FrOy4jaE
	XKYh/2iV5I6vUShiJMpEywlmSnLpdLPrekODi9wAhoSpXyNkeQeiz1vpNaIA/c3EfHg4bJ9eMvOlg
	WeA2TyTHjBE3VH/jPhwbJbewvcOkyIp+73oBZfoNIMcltBbBVFPZseaCmg6mRtTW5yL2tGkr1kM/u
	QwG5JfMzEtGEbugRPRm/98wSbog5vtuoK2AfA8KuNC33Z+OigL13oIWI91vlY8KbCvXTc439l9Csr
	97fn9WeTXmWxWj2julqp53OPWlR2Y4mqfcoyse1cRTSZukc12JzvCHTZo1FGIngZA8sA6B2e7U398
	+W54lLNZst50tw9/4ALw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upScz-00000002nEj-1fGr;
	Fri, 22 Aug 2025 14:20:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNMq-00000001xzI-1ytK
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 08:43:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UIdB020852
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 08:43:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	prp9ElU8fS7+zbL7ub2mUXEAEbk0qpOcYYPRR8CM44Q=; b=axp2p5FVzEy9YAcS
	QpKxjbGkrARU1RbimpueVhli6iCQEpUDyqcg494lAA22Jsblt0Th/sBfiscGIE69
	1cMrxA9iLjFC8wqeBW3j+iVi4qMr7244u1I2nLm0h8ZcHGhRtGUE91bywbj+wAC+
	dS1OXqb5MHjUQgLEWmycT0onvSSvjEhCGo3MvcxRyatfJNxu//k0NhgqtqE48r/o
	IQxgsdFIhbVJrbr+U3VeiDUKJ6oh2ETrWciK8ez1kn1/YDad6B5nZdZUNVYnfMn2
	t4hhYkryc5kLI8EpPH6r4NFTYV4FS6Ojkiu8Keq4erueicN48lcstEy2lB1MfY/4
	iGR/rA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5290j3r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 08:43:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244580538c3so4849975ad.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 01:43:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755852201; x=1756457001;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=prp9ElU8fS7+zbL7ub2mUXEAEbk0qpOcYYPRR8CM44Q=;
        b=xS+B9yIXgdUOk/0XXKBvel8iSAmyktZmbI6EDU059c745hfGK7//lxsTVHaLT1eSYs
         96q5Hr1EmUeuKvcneFjH/+xH5ozZcroJbbisCIv9tJtIap5DlBxPRqy3OuqqpZ+q43M7
         fTVqnT25/dSBfP5SEY2siGubqvVbD26CX3txKNaRphzkdKM2f+tlUNsLIErl/hR7C4a/
         7MfY4Opme7JAWXCRv49Mpwg9RrqcYeD73SAYHYTQnuE9XQw45nB7mrfolGfupY1Wv8w9
         X6ToqZCZloIW/BDmdvHAZlL1ajPYVrp4yx9COs3UtUFcb3R1eQIHY5eHcTNPEidU1gmP
         EtOA==
X-Forwarded-Encrypted: i=1; AJvYcCXffnzWOpTCiyXRqgcguWogACAWup0/R0KOQKQPaPaNSnakKNhWKpvqDvKUqWuUc/O7OHWD2J6GYHU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNx6W43Vtz6zKdDFTs6c0Er1NsKGD5zst8+XV5IKHmdfuNTVXK
	WjNw1JB+uEnvueFg8dll4zN7Xxk9WJSvKGwQNErKzUVQ4n635XjavBb5tFe3fRBHTtfDBus3ySn
	YyfE19Yc0s8VNzFLL94++9TFBIL2aWD5rebwIpO9oGzZVWws5oHpk5zDWU/32X1FaQ9Bt
X-Gm-Gg: ASbGnctf/66p+sbyD5CKckMYeUJgs/NN7zS/3Vshi5q/7MDcz6O1xGNaIQfUeWwWmDA
	TONiYDR1DmOb7r9fo7RYuAioQTIBU1a5ZREEbW/6c1c2zcKvAqyL9uD7iBXDENB6NyM0Ro555Er
	O6Zjhy1YsPgnWPexT1VuiEEeJHMUObwzgpD59VJ11EJ9APJiVJpi8NfKRRrlXuGLavQfinScuRx
	F0mg0EG/fQ9z3TO0vd8wRQoup3B82hVGMuPvka+JgCf9dGJdA6896GBhVtTq21C5E1stca93eY1
	MWBZmuaAUji6Srxc/BJlCJjANOSqFTJLKDzxmGyQrFZSHpxcpMvMJYBZncF2PaMLUTxGcbcyEiN
	iB0TAgFJQfUBPoXqzCgQqYjItrEKIYQ==
X-Received: by 2002:a17:903:1d2:b0:240:3e41:57a3 with SMTP id d9443c01a7336-2462eb662c2mr18144955ad.0.1755852201143;
        Fri, 22 Aug 2025 01:43:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEXolhUjPQKDUCRG284FJEb8zvrf0fcnVfDTTz3DHtqN0qA20e9P4wmEWvBmU3EEicTDFcdg==
X-Received: by 2002:a17:903:1d2:b0:240:3e41:57a3 with SMTP id d9443c01a7336-2462eb662c2mr18144665ad.0.1755852200709;
        Fri, 22 Aug 2025 01:43:20 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4c7588sm77576235ad.101.2025.08.22.01.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 01:43:20 -0700 (PDT)
Message-ID: <2e3c1559-7da2-4c6e-bcef-eb1e8dfd4c31@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 16:43:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/14] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
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
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-8-a43bd25ec39c@oss.qualcomm.com>
 <su3zkeepxaislh6q5ftqxp6uxsyg7usxmc5hkafw7yn2mgtqeu@wua72odmy7zp>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <su3zkeepxaislh6q5ftqxp6uxsyg7usxmc5hkafw7yn2mgtqeu@wua72odmy7zp>
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a82daa cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=B0UfJI3MrboyiCAuw3UA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: Z5_OCjEiuBgy5dfl9vQymKbsril-9WBe
X-Proofpoint-ORIG-GUID: Z5_OCjEiuBgy5dfl9vQymKbsril-9WBe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX6IDhWQVRMb0n
 YbTouoNXnQlg1J7xc3lKu/mwAqILHIAkpkqg5ky2ksNz5EFjRTT3oCxtl2dZsoYNtjr6YUwzzaO
 8bN7+pTavGTr+cIozcgWTW4938EAc6kas+EIYY68UuWl6TnqF3y70EKN5QU/zjb7GYYTW/tpmvK
 1cynBl3zFvECKIuJBigGI1FYWzvbUPA0muNWztU3Nie03Nzf6jyONEySEMU/lHpdoCqk9rY7hQ7
 MBI2STtnEHdSul2H5olxO3LDEQaGS8qVe6yoxtut7alWrhuWD3LnuuFui/BqAL7zg0+ofJCyt8w
 y9I56sCBYN23l4ihWHP8Vrp7moUtEHuiKfFWOK0ah6IcyLrxy720Q/zg/Z4ZsaTmT/pjSjrYafa
 tsdfK6c8YZeXWDTZtRd+JaSd00HNTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_014324_654656_AD2D53A3 
X-CRM114-Status: GOOD (  15.12  )
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

Ck9uIDgvMjAvMjAyNSA3OjE2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDA1OjM0OjUwUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBJ
bnRyb2R1Y2UgRGlzcGxheVBvcnQgUEhZIGNvbmZpZ3VyYXRpb24gcm91dGluZXMgZm9yIFFDUzYx
NSwgaW5jbHVkaW5nCj4+IGF1eCBjaGFubmVsIHNldHVwLCBsYW5lIGNvbnRyb2wsIHZvbHRhZ2Ug
c3dpbmcgdHVuaW5nLCBjbG9jawo+PiBwcm9ncmFtbWluZyBhbmQgY2FsaWJyYXRpb24uIFRoZXNl
IGNhbGxiYWNrcyBhcmUgcmVnaXN0ZXJlZCB2aWEKPj4gcW1wX3BoeV9jZmcgdG8gZW5hYmxlIERQ
IG1vZGUgb24gVVNCL0RQIHN3aXRjaGFibGUgVHlwZS1DIFBIWXMuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1kcC1waHkuaCB8ICAgMSArCj4+ICBk
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jICAgfCAyNTEgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgMjUyIGluc2VydGlvbnMo
KykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1k
cC1waHkuaCBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1kcC1waHkuaAo+PiBp
bmRleCAwZWJkNDA1YmNhZjBjYWM4MjE1NTUwYmZjOWIyMjZmMzBjYzQzYTU5Li41OTg4NTYxNjQw
NWY4Nzg4ODVkMDgzNzgzOGEwYmFjMTg5OWZiNjlmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtZHAtcGh5LmgKPj4gKysrIGIvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLWRwLXBoeS5oCj4+IEBAIC0yNSw2ICsyNSw3IEBACj4+ICAjZGVm
aW5lIFFTRVJERVNfRFBfUEhZX0FVWF9DRkc3CQkJCTB4MDNjCj4+ICAjZGVmaW5lIFFTRVJERVNf
RFBfUEhZX0FVWF9DRkc4CQkJCTB4MDQwCj4+ICAjZGVmaW5lIFFTRVJERVNfRFBfUEhZX0FVWF9D
Rkc5CQkJCTB4MDQ0Cj4+ICsjZGVmaW5lIFFTRVJERVNfRFBfUEhZX1ZDT19ESVYJCQkJMHgwNjgK
PiBUaGlzIHJlZ2lzdGVyIGNoYW5nZXMgYmV0d2VlbiBQSFkgdmVyc2lvbnMsIHNvIHlvdSBjYW4g
bm90IGRlY2xhcmUgaXQgaGVyZS4KPgo+IE90aGVyd2lzZSBMR1RNLgoKCk9rLgoKVGhpcyBQSFkg
YXBwZWFycyB0byBiZSBRTVBfRFBfUEhZX1YyLMKgYnV0IHRoZXJlJ3Mgbm8gZGVkaWNhdGVkIGhl
YWRlciBmb3IgaXQgeWV0LsKgCgpJ4oCZbGwgY3JlYXRlwqB8cGh5LXFjb20tcW1wLWRwLXBoeS12
Mi5ofMKgbmV4dCBwYXRjaCBhbmQgZGVmaW5lwqB8VkNPX0RJVnzCoGFuZCBzaGFyZWQgb2Zmc2V0
cyB3aXRoIFYzIHdpbGwgYmUgcmVkZWZpbmVkIGFjY29yZGluZ2x5LgoKCj4KPj4gIAo+PiAgLyog
UVNFUkRFUyBDT01fQklBU19FTl9DTEtCVUZMUl9FTiBiaXRzICovCj4+ICAjIGRlZmluZSBRU0VS
REVTX1YzX0NPTV9CSUFTX0VOCQkJCTB4MDAwMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
