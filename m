Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4716FC87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 31 Jul 2025 05:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55r+wJHSrrUsDQWauN1oWkbIWwu24nOeUZu0qhyhsbo=; b=JsAOey5gBw3A48
	NkG9O2mS+Jv5e3RmWYAYQqqK/1una37n1CjJN+kFXcUTMm78s1p0YiJVIB3c77WV+h/qZMUSgQU1k
	MsEZD02oH35xaXfCZ9d/1cpaSJLnlkwQF0CsB5PkwQvv83CRcEEYrwfWmuYQzM50Ai7FZ+AWLutmS
	RyUc9bDhIPO2tmoCFgAs+hyE55RSdMZEFln0CohJGnXrkyqEonLFfRvWo3bQvZyrjfp5p0aCTC7EJ
	9x0cf6nAw2EsCdxvKFfSWyBBclpjyNCQdKqnc9V8vHXG1UTwnXN9GHexJ/aVmMmtDXmkySwWbx4Ha
	TmxfsSb9onFj2QJ4CbbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhLVW-00000002uws-3Kxg;
	Thu, 31 Jul 2025 05:07:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhLVT-00000002uvl-3waX
	for linux-phy@lists.infradead.org;
	Thu, 31 Jul 2025 05:07:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56V1fRic008158
	for <linux-phy@lists.infradead.org>; Thu, 31 Jul 2025 05:07:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fdm4gXLWdVs5flQzM+AWNBlwOFKGXX/VfQzEuW5xlxU=; b=DLURZnli+jI0/Dhh
	V51nnbO62PvhNn3SwX1zE4K5eq3SRqc6NnfSjPVEGaSC1qcYZl605CqdLO86kJrk
	H/Ie1UJ+pHXtnj9JsPAQa4IKfOeLW/OWHWl9AdpmBCDRMS3Z8P87JqRD4cLBnwHV
	DghJ+fJIP4k4epiHkwOXRsQxvZV2NxFRQHGpb6+HWb+LRHgyRoCExby4ASkicpHC
	ml83szLswhcG182FZFldUX41y34+/uz3+WXL+Du3Nhw0vDbRzAhgpfcDQUpeecUD
	+I+c9T2iKhbnT2ub4SfX/flAAVNazX+P2ynwcqTJw5D7J7GTaLyIRTByvozD16Bm
	4muGbA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2p8rb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 31 Jul 2025 05:07:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23ffa62abbcso1064465ad.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 22:07:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753938425; x=1754543225;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fdm4gXLWdVs5flQzM+AWNBlwOFKGXX/VfQzEuW5xlxU=;
        b=CDJ7AX1QxUc/hi4Yml8cGKa+hE+WIqSBmQhdfUpXr2zEInANrm6lL2uvqihEk1PQYe
         vdlHoEtnFiO54Yo6sIc50jazKzJnq5bQIU/cawwJpcNmUB9P/cUswyqnV9GtOtlgI/Jj
         cqvlP8gVkA5fKyDtISv2M3dstHc2Qb3WxWG7CJ4zNkXjYORr4Ckle+SbV235sUzfjK8k
         TqWRBcYpyxE/zM/sKLE98sKox5a6aWXbi9hNIHaSfUBNovYndQ4+iPRJzPyilUx1yaSv
         htmMIjtfWWmcVT55+yzDzRNGkOcPP/SCzf+A2jWFji+w8fTBybrjz3xPswQwTi8K46E+
         +Rtw==
X-Forwarded-Encrypted: i=1; AJvYcCUWOYj18pfZwO9N3EwzanCAfqi3zvnjw+rW7gK6OuRepWcOBUV+XNUP+OkTuD5tHLZpMPUP1UQlIkU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfoDDIdvRL3bGEXydXC6pk6JSgxmwG++qE/a5SAAPHVKpxfDSD
	rGF/o3WM23F9OLAOPKTMlINOO7oZbzRgNN5CpqPJsSdooitcebH2igJFCDItRqAq7NEgR9b08Gy
	QObExneJnxWNHq6EZABBFWnHwK22plyPjwagFo5+QE8Wi4WLIOrp9vvA9+CvOKmeGc274
X-Gm-Gg: ASbGncv4WBJn69eS8VzDqfmwJcXgC7OWTXhEOMBt7nsI1VyBm7R3/GudfSTkX5pvvoJ
	69AtudM1uHc44i4BSNUTHVLauHQdbgslYafIaGQBiFQHHFQgTaYnC/og66/wLPG9ajjyvPEVrf6
	m936b/bTWOo4HwF6Ny3L5gTLmbybm8yC7Mm0z41VL8LmyQ0I7dh+NtgjHQw6qmiwft1+isU2U7X
	6VJyyZOpwg8hdVl6eEUtYKts8kpKzmZGsIzSkCHgW7u38PNtPyy4RvNjNnk0nFKL9In+P9eJwFI
	jyIkBMWRzYveDmAUk6pJHSonIDUurfi7YoFnCoAnHCVPQU1SdXDL7n1TFysTJRFdoSyRxmMmCnW
	Vg0jiDQZRwS6q2D9M6cmxn3kPC5g49w==
X-Received: by 2002:a17:903:1245:b0:240:5bde:5356 with SMTP id d9443c01a7336-24096b43fabmr34301465ad.12.1753938425055;
        Wed, 30 Jul 2025 22:07:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpuslh08k6M34ym6YfFcMckHCuWB75owSXY1Cvj445vcdl3T8PffXsxv+Hr0oDFjwXUsQMdg==
X-Received: by 2002:a17:903:1245:b0:240:5bde:5356 with SMTP id d9443c01a7336-24096b43fabmr34301165ad.12.1753938424492;
        Wed, 30 Jul 2025 22:07:04 -0700 (PDT)
Received: from [10.133.33.112] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8976cbdsm6670135ad.75.2025.07.30.22.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 22:07:04 -0700 (PDT)
Message-ID: <bd8f8643-a8c8-43d7-b293-acdba5ff798a@oss.qualcomm.com>
Date: Thu, 31 Jul 2025 13:06:57 +0800
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
 <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
 <ffdvzupefzhqq7fqtloycc3xzu57i55ths73xcjftor2cifuzr@5vhq2hfmkvda>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ffdvzupefzhqq7fqtloycc3xzu57i55ths73xcjftor2cifuzr@5vhq2hfmkvda>
X-Proofpoint-GUID: qfSjGyQdOuKCk2uhZxDJD6usrzJ0XSLz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMxMDAzMyBTYWx0ZWRfXxuTJsR91nQ0H
 pyjfJqErRHJpEcCpeyCtbJBafdxdfPm4/PZuOQTO1FsOAQZciFt4miGaFrjazsiGRZkfnE8+3Dj
 BzYOMdqkIoqWpY1eP7scXLCulIM9U4OG1hxZrxxxymkLBAb37AvuTlk2/gx7c2IYYeryQ43J78n
 1rSj1JD9HMN77eCGUYG0TNHgcKnft9SNiOZzxizINzMd6gAzWlRTFFS3r+z1PLnHbRkOsy5313j
 /qkEE8nF95Y1yjiSbOs6ls0+lka2XPkxGquAhC5dsYs2SCFj5jFiK2xea0WhvH2kzRyiroQKlIH
 pZhZN0ebYnVstzQoJz+Xu9VWX940bwHhQQauhdY5cG6Ntmsscm9kv05xqvy3RUC3+3TXGUDdiW1
 2OZnfT6KYU27BlJqheoknqGIxvhz4/idE3qgwThPytilBfTW/2+xJLBAio6af2lSw9bj43Kf
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=688af9fa cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8
 a=mDTR1APp6137iyMtkm8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-ORIG-GUID: qfSjGyQdOuKCk2uhZxDJD6usrzJ0XSLz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_01,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507310033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_220708_122133_4D85F880 
X-CRM114-Status: GOOD (  35.35  )
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

Ck9uIDcvMzEvMjAyNSAyOjM1IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
SnVsIDMwLCAyMDI1IGF0IDA0OjUzOjE2UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBP
biA3LzIyLzIwMjUgODo0MSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9uIFR1ZSwg
SnVsIDIyLCAyMDI1IGF0IDA4OjA1OjA2UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+
IE9uIDcvMjIvMjAyNSA0OjM4IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+PiBPbiBU
dWUsIEp1bCAyMiwgMjAyNSBhdCAwMzoyMjowM1BNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToK
Pj4+Pj4+IEludHJvZHVjZSBkZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRo
ZSBRdWFsY29tbSBRTVAgRFAgUEhZCj4+Pj4+PiBvbiBRQ1M2MTUgU29Dcy4gVGhpcyBQSFkgc3Vw
cG9ydHMgRGlzcGxheVBvcnQgZnVuY3Rpb25hbGl0eSBhbmQgaXMKPj4+Pj4+IGRlc2lnbmVkIHRv
IG9wZXJhdGUgaW5kZXBlbmRlbnRseSBmcm9tIHRoZSBVU0IzIFBIWS4KPj4+Pj4+Cj4+Pj4+PiBV
bmxpa2UgY29tYm8gUEhZcyBmb3VuZCBvbiBvdGhlciBwbGF0Zm9ybXMsIHRoZSBRQ1M2MTUgRFAg
UEhZIGlzCj4+Pj4+PiBzdGFuZGFsb25lIGFuZCBkb2VzIG5vdCBzdXBwb3J0IFVTQi9EUCBtdWx0
aXBsZXhpbmcuIFRoZSBiaW5kaW5nCj4+Pj4+PiBkZXNjcmliZXMgdGhlIHJlcXVpcmVkIGNsb2Nr
cywgcmVzZXRzLCBUQ1NSIGNvbmZpZ3VyYXRpb24sIGFuZCBjbG9jay9QSFkKPj4+Pj4+IGNlbGxz
IGZvciBwcm9wZXIgaW50ZWdyYXRpb24uCj4+Pj4+IFNpbXBseSBwdXQ6IG5vLCB0aGlzIGlzIG5v
dCBjb3JyZWN0LiBFdmVuIGlmIHlvdSBnbyB0byB0aGUgU002MTUwIGJsb2NrCj4+Pj4+IGRpYWdy
YW0sIGl0IHBvaW50cyBvdXQgdGhhdCBEUCB1c2VzIHRoZSBVU0IzIFBIWSwgbm90IGEgc2VwYXJh
dGUgRFAgUEhZLgo+Pj4+Pgo+Pj4+PiBJIHRob3VnaHQgdGhhdCB3ZSBoYXZlIGRpc2N1c3NlZCBp
dCBiZWZvcmVoYW5kLgo+Pj4+Pgo+Pj4+PiBJIGNhbiBxdW90ZSBteSBjb21tZW50IGZyb20gdGhl
IHByZXZpb3VzIHRocmVhZDoKPj4+Pj4KPj4+Pj4+PiBOby4gSXQgbWVhbnMgcmVwbGFjaW5nIGV4
dGVuZGluZyBleGlzdGluZyBlbnRyaWVzIHdpdGggYmlnZ2VyIHJlZyBhbmQKPj4+Pj4+PiAjcGh5
LWNlbGxzID0gPDE+LiBUaGUgZHJpdmVyIG11c3Qga2VlcCB3b3JraW5nIHdpdGggb2xkIG5vZGUg
ZGVmaW5pdGlvbnMKPj4+Pj4+PiBhcyBpcyB0byBlbnN1cmUgYmFja3dhcmRzIGNvbXBhdGliaWxp
dHkuIE5ldyBub2RlcyBzaG91bGQgbWFrZSBpdAo+Pj4+Pj4+IHJlZ2lzdGVyIHR3byBQSFlzIChV
U0IzIGFuZCBEUCkuIE9uIHRoZSBkcml2ZXIgc2lkZSBtb2RpZnkgZ2VuZXJpYyBjb2RlCj4+Pj4+
Pj4gcGF0aHMsIGFsbCBwbGF0Zm9ybXMgc3VwcG9ydGVkIGJ5IHRoZSBkcml2ZXIgc2hvdWxkIGJl
IGFibGUgdG8gc3VwcG9ydAo+Pj4+Pj4+IFVTQjMrRFAgY29tYmluYXRpb24uCj4+Pj4+IExvb2tp
bmcgYXQgdGhlIGhhcmR3YXJlIG1lbW9yeSBtYXBzOgo+Pj4+Pgo+Pj4+PiBNU004OTk4OiBVU0Iz
IFBIWSByZWdzIGF0IDB4YzAxMDAwMCwgRFAgUEhZIHJlZ3MgYXQgMHhjMDExMDAwCj4+Pj4+IFNE
TTY2MDogVVNCMyBQSFkgcmVncyBhdCAweGMwMTAwMDAsIERQIFBIWSByZWdzIGF0IDB4YzAxMTAw
MAo+Pj4+PiBRQ00yMjkwOiBVU0IzIFBIWSByZWdzIGF0IDB4MTYxNTAwMCwgRFAgUEhZIHJlZ3Mg
YXQgMHgxNjE2MDAwCj4+Pj4+IFNNNjExNTogVVNCMyBQSFkgcmVncyBhdCAweDE2MTUwMDAsIERQ
IFBIWSByZWdzIGF0IDB4MTYxNjAwMAo+Pj4+Pgo+Pj4+PiBOb3c6Cj4+Pj4+IFNNNjE1MDogVVNC
MyBQSFkgcmVncyBhdCAweDg4ZTYwMDAKPj4+Pj4gICAgICAgICBVU0IzIFBIWSByZWdzIGF0IDB4
ODhlODAwMCwgRFAgUEhZIHJlZ3MgYXQgMHg4OGU5MDAwCj4+Pj4+Cj4+Pj4+IEkgZG8gbm90IGtu
b3csIHdoeSBtc20tNC4xNCBkaWRuJ3QgZGVzY3JpYmUgc2Vjb25kIFVTQjMgUEhZLiBNYXliZSB5
b3UKPj4+Pj4gY2FuIGNvbW1lbnQgb24gaXQuCj4+Pj4+Cj4+Pj4+IEJ1dCBiYXNlZCBvbiB0aGF0
IGxpc3QsIHRoZSBvbmx5IHNwZWNpYWwgY2FzZSB0aGF0IHdlIG5lZWQgdG8gaGFuZGxlIGlzCj4+
Pj4+IHRoZSBmaXJzdCBVU0IzIFBIWSwgd2hpY2ggZG9lc24ndCBoYXZlIGEgY29ycmVzcG9uZGlu
ZyBEUCBQSFkgYmxvY2suIEJ1dAo+Pj4+PiBpdCB3aWxsIGJlIGhhbmRsZWQgYW55d2F5IGJ5IHRo
ZSBjb2RlIHRoYXQgaW1wbGVtZW50cyBzdXBwb3J0IGZvciB0aGUKPj4+Pj4gZXhpc3RpbmcgRFQg
ZW50cmllcy4gQWxsIG90aGVyIGhhcmR3YXJlIGJsb2NrcyBhcmUgY29tYm8gVVNCK0RQIFBIWXMu
Cj4+Pj4+Cj4+Pj4+IEhhdmluZyBhbGwgb2YgdGhhdCBpbiBtaW5kLCBwbGVhc2UsIGZvciB2MyBw
YXRjaHNldCBpbXBsZW1lbnQgVVNCK0RQCj4+Pj4+IHN1cHBvcnQgaW4gdGhlIHBoeS1xY29tLXFt
cC11c2JjIGRyaXZlciBhbmQgYWRkIHRoZSBmb2xsb3dpbmcgbG9naWMKPj4+Pj4gdGhhdCBhbHNv
IHdhcyByZXF1ZXN0ZWQgaW4gdjEgcmV2aWV3Ogo+Pj4+Pgo+Pj4+Pj4+IE5vdCBxdWl0ZS4gQm90
aCBVU0IzIGFuZCBEUCBkcml2ZXJzIHNob3VsZCBiZSBjYWxsaW5nIHBvd2VyX29uIC8gX29mZi4K
Pj4+Pj4+PiBJZiBVU0IzIGlzIG9uLCBwb3dlcmluZyBvbiBEUCBQSFkgc2hvdWxkIGZhaWwuIFZp
Y2UgdmVyc2EsIGlmIERQIGlzIG9uLAo+Pj4+Pj4+IHBvd2VyaW5nIG9uIFVTQiBzaG91bGQgZmFp
bC4KPj4+Pj4gSSB0aGluayBvdXIgdW5kZXJzdGFuZGluZyBtaWdodCBub3QgYmUgZnVsbHkgYWxp
Z25lZC4gCj4+PiBJIGRpZCBub3Qgd3JpdGUgdGhpcy4gUGxlYXNlIGZpeCB5b3VyIG1haWxlciB0
byBxdW90ZSBtZXNzYWdlcyBwcm9wZXJseS4KPj4+IEFzIHlvdSBhcmUgdXNpbmcgVGh1bmRlcmJp
cmQsIEknbSBub3Qgc3VyZSB3aGVyZSB0aGUgaXNzdWUgY29tZXMgZnJvbS4KPj4+Cj4+PiBBbHNv
IHBsZWFzZSBmaXggaXQgdG8gd3JhcCB5b3VyIHJlc3BvbnNlcyBzb213aGVyZSBsb2dpY2FsbHku
Cj4+Pgo+Pj4+PiBQZXJoYXBzIHRoaXMgaXMgYmVjYXVzZSBJIGRpZG7igJl0IGFjY3VyYXRlbHkg
dXBkYXRlIHRoZSBtdXR1YWwgZXhjbHVzaW9uIHJlbGF0aW9uc2hpcHMgYW5kIHRlc3QgcmVzdWx0
cyBmb3IgdGhlIGRpZmZlcmVudCBQSFlzLiAKPj4+Pj4gTGV0IG1lIGNsYXJpZnkgbXkgbGF0ZXN0
IGZpbmRpbmdzIGFuZCBleHBsYWluIHdoeSBJIGJlbGlldmUgdGhlc2UgYXJlIHNlcGFyYXRlIFBI
WXMgdGhhdCByZXF1aXJlIG11dHVhbCBleGNsdXNpb24gdmlhIFRDU1IuCj4+Pj4+Cj4+Pj4+IDEu
IEFib3V0IHRoZSBUQ1NSIERQX1BIWU1PREUgUmVnaXN0ZXJzCj4+Pj4+Cj4+Pj4+IE1TTTg5OTgv
U0RNNjYwOgo+Pj4+PiAJT25seSBvbmUgVENTUl9VU0IzX0RQX1BIWU1PREUgcmVnaXN0ZXIgYXQg
MHgxRkNCMjQ4Lgo+Pj4+PiBRQ00yMjkwL1NNNjExNToKPj4+Pj4gCVRDU1JfVVNCM18wX0RQX1BI
WU1PREUgYXQgMHgzQ0IyNDgKPj4+Pj4gCVRDU1JfVVNCM18xX0RQX1BIWU1PREUgYXQgMHgzQ0Iy
NEMKPj4+Pj4gU002MTUwOgo+Pj4+PiAJVENTUl9VU0IzXzBfRFBfUEhZTU9ERSBhdCAweDFGQ0Iy
NDgKPj4+Pj4gCVRDU1JfVVNCM18xX0RQX1BIWU1PREUgYXQgMHgxRkNCMjRDCj4+PiBTTTYxNTAg
aGFzIHR3byBkaWZmZXJlbnQgc2V0cyBvZiBvdXRwdXQgcGlucywgc28gdGhlIGZpcnN0IHJlZ2lz
dGVyCj4+PiBjb3ZlcnMgZmlyc3Qgc2V0IG9mIFNTIGxhbmVzICh3aGljaCBhcmUgcm91dGVkIHRv
IHRoZSBkb2N1bWVudGVkIFNTCj4+PiBQSFkpLCB0aGUgc2Vjb25kIHJlZ2lzdGVyIGNvdmVycyB0
aGUgc2Vjb25kIHNldCBvZiBTUyBsYW5lcyAod2hpY2ggYXJlCj4+PiByb3V0ZWQgdG8gdGhlIERQ
IGFuZCBzZWNvbmRhcnkgVVNCIFBIWSkuCj4+Pgo+Pj4gSSBjYW4gb25seSBhc3N1bWUgdGhhdCB0
aGUgc2FtZSBjb25maWd1cmF0aW9uIHdhcyBzdXBwb3NlZCB0byBiZQo+Pj4gYXBwbGljYWJsZSB0
byBRQ00yMjkwIC8gU002MTE1LCBidXQgd2FzIGxhdGVyIHJlbW92ZWQgLyBkaXNhYmxlZCwgd2hp
bGUKPj4+IHRoZSByZWdpc3RlcnMgd2VyZSBrZXB0IGluIHRoZSBUQ1NSIGJsb2NrLgo+Pj4KPj4+
Pj4gRXZlbiB0aG91Z2ggTVNNODk5OCwgU0RNNjYwLCBRQ00yMjkwLCBhbmQgU002MTE1IGFsbCBo
YXZlIG9uZSBVU0IzIFBIWSBhbmQgb25lIERQIFBIWSwgdGhlIFRDU1IgRFBfUEhZTU9ERSByZWdp
c3RlciBjb25maWd1cmF0aW9uIGlzIGRpZmZlcmVudCBvbiBlYWNoIHBsYXRmb3JtLgo+Pj4+Pgo+
Pj4+PiBBZGRpdGlvbmFsbHksIEkgZm91bmQgc29tZSBpbnRlcmVzdGluZyByZWdpc3RlciBkb2N1
bWVudGF0aW9uIGZvciBRQ00yMjkwL1NNNjExNToKPj4+Pj4gCVRDU1JfVVNCM18wX0RQX1BIWU1P
REU6IOKAnEluIGthbW9ydGEgdGhpcyBvbmUgaXMgZm9yIG1vYmlsZSB1c2IuIERQIG5vdCBzdXBw
b3J0ZWQu4oCdCj4+Pj4+IAlUQ1NSX1VTQjNfMV9EUF9QSFlNT0RFOiDigJxEUCBtb2RlIHN1cHBv
cnRlZCBmb3IgQXV0byB1c2IgaW4ga2Ftb3J0YS7igJ0KPj4+Pj4gSSB0aGluayB0aGUgcmVhc29u
IGZvciBoYXZpbmcgdHdvIGRpZmZlcmVudCBUQ1NSIHJlZ2lzdGVycyBpcyB0byBhbGxvdyBib3Ro
IHRoZSBVU0IzLjAgYW5kIERQIFBIWXMgdG8gYmUgdXNlZHMgYXQgdGhlIHNhbWUgdGltZSBpbiBj
ZXJ0YWluIHByb2R1Y3QgY29uZmlndXJhdGlvbnMuCj4+PiBTdXJlLiBPbmUgZm9yIHRoZSBmaXJz
dCBQSFkgKFVTQiksIG9uZSBmb3IgdGhlIHNlY29uZCBQSFkgKFVTQitEUCkuCj4+PiBJZiB5b3Ug
Y2hlY2sgdGhlIG1lbW9yeSBtYXAsIHlvdSB3aWxsIGZpbmQgdGhlIHNlY29uZCBWTFMgQ0xBTVAg
cmVnaXN0ZXIKPj4+IGZvciB0aGUgc2Vjb25kIFVTQiBQSFkuCj4+Pgo+Pj4+PiAyLiBTTTYxNTAg
VGVzdCBSZXN1bHRzCj4+Pj4+IFdoZW4gVENTUl9EUF9QSFlNT0RFXzAgaXMgc3dpdGNoZWQgdG8g
RFAsIHRoZSBVU0IzIHByaW1hcnkgUEhZIGNhbm5vdCB3b3JrLCBhbmQgdGhlIERQIFBIWSBpcyBh
bHNvIG5vdCBmdW5jdGlvbmFsIChwb3NzaWJseSBkdWUgdG8gY2xvY2sgbGFjayBvciBvdGhlciBj
b25maWd1cmF0aW9uIG1pc21hdGNoIHdpdGggdGhpcyBUQ1NSIHNldHRpbmcpLgo+Pj4+PiBXaGVu
IFRDU1JfRFBfUEhZTU9ERV8xIGlzIHN3aXRjaGVkIHRvIERQLCBib3RoIHRoZSBVU0IzIHByaW1h
cnkgUEhZIGFuZCB0aGUgRFAgUEhZIHdvcmsgbm9ybWFsbHkuCj4+Pj4+IEkgdGhpbmsgIndoeSBt
c20tNC4xNCBkaWRuJ3QgZGVzY3JpYmUgc2Vjb25kIFVTQjMgUEhZIiwgYmVjYXVzZSBUQ1NSX0RQ
X1BIWU1PREVfMSBhbHdheXMgd29ya3MgaW4gRFAgbW9kZS4KPj4+Pj4gaHR0cHM6Ly9hbmRyb2lk
Lmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2FmMDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRm
MTkxNWIwNWQwYzE0ODgvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jYXRhbG9nX3YyMDAuYwo+
Pj4gSGVyZSBpdCBzdGlsbCBwcm9ncmFtcyB0aGUgVENTUiByZWdpc3Rlci4KPj4+Cj4+Pj4+IEJh
c2VkIG9uIHRoZXNlIGluZm8sIEkgYmVsaWV2ZSB0aGVzZSBhcmUgc2VwYXJhdGUgUEhZcywgYW5k
IG9ubHkgdGhlCj4+Pj4+IFRDU1IgRFBfUEhZTU9ERSByZWdpc3RlcnMgZGV0ZXJtaW5lIHdoaWNo
IFVTQjMvRFAgUEhZcyBhcmUgcGFpcmVkIG9yCj4+Pj4+IG11dHVhbGx5IGV4Y2x1c2l2ZS4gVGhp
cyBpcyB3aHkgSSBoYXZlIG1haW50YWluZWQgc2VwYXJhdGUgcHJpdmF0ZQo+Pj4+PiBkYXRhIGZv
ciBlYWNoIFBIWSBhbmQgaW1wbGVtZW50ZWQgUG93ZXIgb24gbXV0ZXggY29udHJvbCB2aWEgVENT
UiwKPj4+Pj4gcmF0aGVyIHRoYW4gdXNpbmcgYSBxbXBfY29tYm8tbGlrZSBzdHJ1Y3R1cmUuCj4+
PiBTdGlsbCwgbm8uIENoZWNrIHRoZSBibG9jayBkaWFncmFtIG9mIFNNNjE1MC4KPj4+Cj4+Pj4+
IEdpdmVuIHRoZSBhYm92ZSwgZG8geW91IHRoaW5rIHdlIHN0aWxsIG5lZWQgdG8gZm9yY2UgVVNC
IGFuZCBEUCB0byBiZSBzdHJpY3RseSBib3VuZCB0b2dldGhlciBsaWtlIGEgY29tYm8gUEhZPwo+
Pj4gWWVzLgo+PiBJIGNoZWNrZWQgdGhlIHJlbGF0ZWQgUEhZIHNlcmllcyBhbmQgYmxvY2sgZGlh
Z3JhbXMgYWdhaW4uCj4+Cj4+IFBSSSBhbmQgU0VDIGdvIHRvIGRpZmZlcmVudCBub2RlcyBiYXNl
ZCBvbiB0aGUgU29DIGRlc2lnbiwgYW5kIHRoZXJlIGFyZSB0d28gdHlwZXMgb2YgY29uZmlndXJh
dGlvbnM6IFVTQjMtb25seSBhbmQgVVNCMytEUCBwYWlyaW5nLgo+Pgo+PiBCZWZvcmUgcHJvY2Vl
ZCB0aGUgdjMgcGF0Y2hzZXQsIEnigJlkIGxpa2UgdG8gZG91YmxlLWNvbmZpcm0gd2hldGhlciB0
aGUgZm9sbG93aW5nIHN0cnVjdHVyZSBpcyB3aGF0IHlvdSBleHBlY3Q6Cj4+Cj4+IHVzYl9xbXBw
aHlfMTogcGh5QDg4ZTYwMDAgewo+PiDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHNtNjE1MC1x
bXAtdXNiMy1wcmltLXBoeSI7IDw9PSByZW5hbWUgdG8gUFJJTQo+IE5vLCB3ZSBhbHJlYWR5IGhh
dmUgYSBjb21wYXRpYmxlIG5hbWUgYW5kIERUIHNjaGVtYSBmb3IgdGhpcyBkZXZpY2UuClRoZW4g
Y3VycmVudCBjb21wYXRpYmxlIG5hbWUgaXMgInFjb20scWNzNjE1LXFtcC11c2IzLXBoeSIgYW5k
IHNoYWxsIHdlIG5lZWQgdXBkYXRlIHRvICJxY29tLHNtNjE1MC1xbXAtdXNiMy1waHkiPwo+Cj4+
IMKgwqDCoCAuLi4KPj4gwqDCoMKgIHFjb20sdGNzci1yZWcgPSA8JnRjc3IgMHhiMjQ0PiwgPCZ0
Y3NyIDB4YjI0OD47Cj4+IMKgwqDCoCBxY29tLHRjc3ItbmFtZXMgPSAidmxzX2NsYW1wIiwgImRw
X3BoeV9tb2RlIjsKPiBObyBuZWVkIGZvciBxY29tLHRjc3ItbmFtZXMuIFNlY29uZCBUQ1NSIHJl
Z2lzdGVyIHNob3VsZCBiZSBvcHRpb25hbCBpbgo+IHRoZSBkcml2ZXIuCk9rLgo+Cj4+IMKgwqAg
wqAKPj4gwqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsKPj4gwqDCoMKgICNwaHktY2VsbHMgPSA8
MT47Cj4gI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICNwaHktY2VsbHMgPSA8MD47Cj4KPj4gwqDCoMKg
IC4uLgo+PiB9Owo+Pgo+PiB1c2JfcW1wcGh5XzI6IHBoeUA4OGU4MDAwIHsKPj4gwqDCoMKgIGNv
bXBhdGlibGUgPSAicWNvbSxzbTYxNTAtcW1wLXVzYjNkcC1zZWMtcGh5IjsgPD09IFNFQyBTUywg
dXNlIHVzYjNkcCB0byBpbmRpY2F0ZSBEUCBjYXBhYmlsaXR5Cj4gcWNvbSxzbTYxNTAtcW1wLXVz
YjMtZHAtcGh5Ck9rLCBidXQgZm9yIHRoaXMgcGFydCwgc2hhbGwgd2UgdXBkYXRlIGR0LWJpbmRp
bmcgaW4gInFjb20sbXNtODk5OC1xbXAtdXNiMy1waHkueWFtbCIgb3IgY3JlYXRlIGEgbmV3IG9u
ZT8KPgo+PiDCoMKgwqAgcmVnID0gPDB4MCAweDA4OGU4MDAwIDB4MCAweDIwMDA+OyA8PT0gU1My
IGJhc2UgYWRkcmVzcyBhbmQgb2Zmc2V0IGRlZmluZSBpbiBkcml2ZXIgY29uZmlnCj4+Cj4+IMKg
wqDCoCBjbG9ja3MgPSA8JmdjYyBHQ0NfQUhCMlBIWV9XRVNUX0NMSz4sCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VTQjNfU0VDX0NMS1JFRl9DTEs+OyA8PT0gVGhpcyBTb0Mg
aGFzIG5vIFVTQjMuMCBTRUMgU1MgY2xrCj4+IMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjZmdfYWhi
IiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyZWYiOwo+PiDCoMKgwqAgY2xv
Y2stb3V0cHV0LW5hbWVzID0gImRwX3BoeV9saW5rX2NsayIsCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJkcF9waHlfdmNvX2Rpdl9jbGsiOwo+IE5vIG5lZWQgdG8s
IHRoZSBkcml2ZXIgY2FuIGdlbmVyYXRlIG5hbWVzIG9uIGl0cyBvd24uCk9rLgo+Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoAo+PiDCoMKgwqAgcmVzZXRzID0gPCZn
Y2MgR0NDX1VTQjNQSFlfUEhZX1NFQ19CQ1IgPiwKPj4gwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBH
Q0NfVVNCM19EUF9QSFlfU0VDX0JDUj47Cj4+IMKgwqDCoCByZXNldC1uYW1lcyA9ICJwaHkiLCAi
cGh5X3BoeSI7Cj4gInBoeV9waHkiLCAiZHBfcGh5Ii4gSXMgdGhlcmUgbm8gR0NDX1VTQjNfUEhZ
X1NFQ19CQ1I/ClRoZXJlIGFyZSBvbmx5IEdDQ19VU0IyX1BIWV9TRUNfQkNSIGFuZCBHQ0NfVVNC
M1BIWV9QSFlfU0VDX0JDUiwgbm8gR0NDX1VTQjNfUEhZX1NFQ19CQ1IuCj4+IMKgwqDCoCBxY29t
LHRjc3ItcmVnID0gPCZ0Y3NyIDB4YmZmMD4sIDwmdGNzciAweGIyNGM+Owo+PiDCoMKgwqAgcWNv
bSx0Y3NyLW5hbWVzID0gInZsc19jbGFtcCIsICJkcF9waHlfbW9kZSI7IDw9PSBhZGRlZCBmb3Ig
YmFja3dhcmQgY29tcGF0aWJpbGl0eSB3aXRoIGxlZ2FjeSBjb25maWdzIHRoYXQgb25seSBoYWQg
dmxzX2NsYW1wCj4gTm8gbmVlZCBmb3IgcWNvbSx0Y3NyLW5hbWVzLCBjb3JyZWN0IG90aGVyd2lz
ZS4KPgo+PiDCoMKgwqAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+PiDCoMKgwqAgI3BoeS1jZWxscyA9
IDwxPjsKPj4KPj4gwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+IH07Cj4+Cj4+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4K
Pj4+Pj4+IC0tLQo+Pj4+Pj4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLWRwLXBo
eS55YW1sICAgICAgIHwgMTExICsrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMTEgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
