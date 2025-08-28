Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 476B9CA0EED
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 02:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4k5lnMNutHuOi5v2XWrW+GTqeuFMSeR3D10Nt3KhJI=; b=AutICForw1uTHT
	b1xJZoYgRdf5AsG9iHynbSW+lT8NNX/7xOzCLFpRdCCVHLu+e7yUWKQZ+3jxAx4VL9MPzMS9ism4p
	4ZP1KCMgrgbf5nHJWcpFiJVdNN8JHxjD+DYtbTIPFCTWEh47hTDTZqpPtbN4G56fpDtAcuyXqTLzv
	KM3fPAnTLC78bFCl5K98KpkJtOzFuzPAHVJz/sSgRNEZ+Xk+NsjvnC30UhWfbhYQbzzktDaFWRjYs
	tZDCyHYI5UTmKDImGGlsb/2VKK1+SPZJyTz9tABXc0RWf52oCbS/j+XqOYRlSnsmrYZS8aXpz6TFf
	X64Lt3A2vdISzsbd2qGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urSWF-0000000026S-3Yc6;
	Thu, 28 Aug 2025 02:37:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urSWD-0000000025S-1Xcx
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 02:37:42 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RH1gx5008302
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 02:37:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CzpcX1ydkh01oreyPdVhWuWFkuUt/DHhQ7WgcSO750o=; b=TMLl/Xydf3peKmCe
	3SJjXBy53cYoHckUs24pk4jiQpMdnIUK4/0lzziwMe9wGDQPQps29hwfZ8qDwG6L
	y5rwjPVEvjgE6p7nPXO85SsJR/2cR3NQOOh7snQGUiuMeaoO8DnwnTsWmwTmpM+A
	ov2U4t6uUfN162F7218VBxd+Tilqr1B05PSPzWwm/chUSlpouTb8jwCc9wVbe7W3
	zpTxbI6/NmX6H4KPnT29ocU03slHyAqVcgPQWgIOjPtyvcYaN8mkxavwy3wKDmPM
	YWE9yIcef7XVxNc/LGZ/gW0aT4BKSBtGvogfUKuFwJjfhEPeqlvUgrCEj7v0+LM4
	luvzeA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48sh8amvgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 02:37:40 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3275d1275d1so138969a91.1
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 19:37:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756348660; x=1756953460;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CzpcX1ydkh01oreyPdVhWuWFkuUt/DHhQ7WgcSO750o=;
        b=UfIweIokvhuCw1ncreoAlCW17Y3pKdkSsGy6QbIeuVc/Pat3tPIz4z5KEa7RJQMrMe
         4QycS3XhsrEpuMp8Hnc6J1O2Q5f3M64Ut2rrrN1YeN5rnwbi4qi/aIpCuW7ExE71XSki
         YVY6Da699zBGW/7ae3uH/MIrVbEtcjUp9+yTxF4AC4LkJcJe0kGuII+0T/OWrT4R/EOR
         uwShZ1NexWL/LxsCDVFYBntXqUP3v3RbAfSVeSHaKKPxbh3O7/rVklBFsc7bYN3Ieq0z
         MevDBFj2mxQwDWBOJ/UIIq7GG7RJ13lDWlYxLboA+97AmPXq+LdzKSHekdwVA1XPsTEg
         uyWA==
X-Forwarded-Encrypted: i=1; AJvYcCWaWo1pCxfjKzZL5wkZO+7deXpCIX2uCApc8v/q/itqdYgMmq+EYLQwUsbZEVIpfiQnT8OCb3UmYrA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkYmSPlXpJuHFk8lmWa+AHil5NlKcBPYif/GKyGj/D6AuM3mr8
	S076Xkjctnqhtl2LKJXqxyj0LOvEtzzaMRbpZZ5Ee/RoA2mUOr4uMail67ssK1eJunRsx/YuuJS
	lYXd44DAPySNhRfbnobXJj/aJ4xRXZ8v1HRyVgLfOnCZJ8xaLEXKsXC6FuG1j7iAHwxqb
X-Gm-Gg: ASbGncsGYPFmue5x+aj1rluq/ulm6KURcMFralvIRfJ9+dZdB6uEBgz8ZcL5/iHEO23
	sA6riEn/hwgFiaxfBNtkq4FLQYiC+ZJEdzdjVhxwctddJPGObpooPnQd5REa3fxDqOR8JrjQ6u8
	Jvl76arm4zXNC10zQhK79hr0ngFG5lbecaMcGhqLCr5YPAqehrAiTgHYAN8VeXDQEMRNGMkOOjo
	oAJfN4d0mChEyhUHEnqtuviG27nJmRh5rwrcXjhkfU2Bo5SomWRcpOothM7EVJcPNBHB2YMhNtT
	7CU7Ef7nNOG07Ofi7StyoBtU1XpBGg5d7V5Zovbtkjn03lTiZFHWlq5joJ3/+bAhWinmCNdHeSe
	B8l7e/v53B8Lg94o9nQ2ZV39ZINwNTQ==
X-Received: by 2002:a17:90b:3885:b0:327:76b9:3c74 with SMTP id 98e67ed59e1d1-32776b93dc0mr2682871a91.4.1756348659716;
        Wed, 27 Aug 2025 19:37:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHe55ZTHJRQToocxrNCqcxFeBqSv5AmBiOroCNnrtBkGeKvVOpw2UJG22Bn+GftHwdcq8/fIg==
X-Received: by 2002:a17:90b:3885:b0:327:76b9:3c74 with SMTP id 98e67ed59e1d1-32776b93dc0mr2682846a91.4.1756348659166;
        Wed, 27 Aug 2025 19:37:39 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b49cbb7c0e0sm12696409a12.37.2025.08.27.19.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 19:37:38 -0700 (PDT)
Message-ID: <31a1d952-eab3-4630-8337-94a45d144199@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 10:37:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/14] phy: qcom: qmp-usbc: Finalize USB/DP switchable
 PHY support
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
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-11-a43bd25ec39c@oss.qualcomm.com>
 <jjsijdmh4hdbgd2boebtrmzvblvhz2hnl7mtv5ga76ine2fnsb@i72dz3r4lbjp>
 <82d19340-b887-4093-9d24-4b2e19b99f8b@oss.qualcomm.com>
 <inxoswyre3qalrb3dj3lz3b5vmnpnkyy3hh4oum3z6p7yqlo2v@7g67yvvb25tc>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <inxoswyre3qalrb3dj3lz3b5vmnpnkyy3hh4oum3z6p7yqlo2v@7g67yvvb25tc>
X-Authority-Analysis: v=2.4 cv=cLDgskeN c=1 sm=1 tr=0 ts=68afc0f4 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=cSqeRI19cUNuZMl-djwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDE1MyBTYWx0ZWRfX33fnimGSAFTa
 D23aB4J1uITeCfDfUf175FU3JwMXaOTtGqBdg1y0od6UWi0dIdwb/80jTQ0ZbhmV2JUKWCNLR5f
 Z/njzrfQ0iMwU+2o2TZJlhX35MlGUZYm3O8e2/ddK+B5BKrSIX0HS8gx1Emo0D3slFse1LXYNX0
 AGXPBF3zjJW9K5iA+rSVw61WBEKJkME0idwUWEio8AyAtmm6JYsOK87YL6jNYZn+Lx5S6lB2eTN
 ll/pS4/jbszIiUS0NMj528p4aUweUmF3OtCdZvYyLfCiXpDbQn2COx9hZZ6mH1gzlXxNMTvK3T0
 DY2ggZgqYgo4/8fvTGoECKmmNFFlOYdyPo6ksOuqAOX7EOxX9IQVSuaVpAZSHIQ21sogY1IeeeW
 Vp+tuVDx
X-Proofpoint-GUID: 1VWYBbJ72fi86Gcv-3aREYwOvtQEWkXm
X-Proofpoint-ORIG-GUID: 1VWYBbJ72fi86Gcv-3aREYwOvtQEWkXm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508260153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_193741_414215_338E768D 
X-CRM114-Status: GOOD (  19.13  )
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

Ck9uIDgvMjgvMjAyNSAxMjoxNCBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBXZWQs
IEF1ZyAyNywgMjAyNSBhdCAwODozNDozOVBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4g
T24gOC8yMC8yMDI1IDc6NDIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBXZWQs
IEF1ZyAyMCwgMjAyNSBhdCAwNTozNDo1M1BNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+
PiBDb21wbGV0ZSBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgaW50ZWdyYXRpb24gYnkgYWRkaW5nIERQ
IGNsb2NrCj4+Pj4gcmVnaXN0cmF0aW9uLCBhdXggYnJpZGdlIHNldHVwLCBhbmQgRFQgcGFyc2lu
Zy4gSW1wbGVtZW50IGNsb2NrCj4+Pj4gcHJvdmlkZXIgbG9naWMgZm9yIFVTQiBhbmQgRFAgYnJh
bmNoZXMsIGFuZCBleHRlbmQgUEhZIHRyYW5zbGF0aW9uCj4+Pj4gdG8gc3VwcG9ydCBib3RoIFVT
QiBhbmQgRFAgaW5zdGFuY2VzLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4g
PHhpYW5neHUueWluQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4gLS0tCj4+Pj4gIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAzMzEgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMjk5IGluc2VydGlvbnMoKyksIDMyIGRl
bGV0aW9ucygtKQo+Pj4+Cj4+Pj4gIHN0YXRpYyBpbnQgcW1wX3VzYmNfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPj4+PiAgewo+Pj4+ICAJc3RydWN0IGRldmljZSAqZGV2ID0g
JnBkZXYtPmRldjsKPj4+PiBAQCAtMTcwMywxNiArMTk0NCwzMiBAQCBzdGF0aWMgaW50IHFtcF91
c2JjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+Pj4gIAlpZiAocmV0KQo+
Pj4+ICAJCXJldHVybiByZXQ7Cj4+Pj4gIAo+Pj4+IC0JLyogQ2hlY2sgZm9yIGxlZ2FjeSBiaW5k
aW5nIHdpdGggY2hpbGQgbm9kZS4gKi8KPj4+PiAtCW5wID0gb2ZfZ2V0X2NoaWxkX2J5X25hbWUo
ZGV2LT5vZl9ub2RlLCAicGh5Iik7Cj4+Pj4gLQlpZiAobnApIHsKPj4+PiAtCQlyZXQgPSBxbXBf
dXNiY19wYXJzZV91c2JfZHRfbGVnYWN5KHFtcCwgbnApOwo+Pj4+IC0JfSBlbHNlIHsKPj4+PiAr
CWlmIChxbXAtPmNmZy0+dHlwZSA9PSBRTVBfUEhZX1VTQkNfVVNCM19EUCkgewo+Pj4gU2hvdWxk
IG5vdCBiZSBuZWNlc3NhcnkuCj4+Cj4+IEdvdCBpdC4gSeKAmWxsIG1lcmdlIHRoZSBwYXJzaW5n
IGxvZ2ljIGludG8gYSBzaW5nbGUgcW1wX3VzYmNfcGFyc2VfZHQgZnVuY3Rpb24uCj4+Cj4+IEFs
c28sIEkgY2hlY2tlZCB0aGUgY29tcGF0aWJsZSBzdHJpbmdzIGluIHRoZSBkdHNpIGZpbGVzIGZv
ciB0aGlzIFBIWSBzZXJpZXMKPj4gbG9va3MgbGlrZSBubyBjdXJyZW50IHByb2R1Y3QgdXNlcyB0
aGUgbGVnYWN5IGJpbmRpbmcuwqAKPj4gSeKAmWxsIGRyb3AgcW1wX3VzYmNfcGFyc2VfdXNiX2R0
X2xlZ2FjeSBpbiB0aGUgbmV4dCB2ZXJzaW9uLgo+Cj4gTm8uIEl0J3MgX2xlZ2FjeV8sIGl0IGhh
cyBiZWVuIGltcGxlbWVudGVkIGluIG9yZGVyIHRvIHN1cHBvcnQgb2xkIERUcywKPiB3aGljaCBl
eGlzdGVkIGF0IHNvbWUgcG9pbnQgYnV0IHRoZW4gd2VyZSByZWZhY3RvcmVkIGludG8gdGhlIGN1
cnJlbnQKPiBzdGF0ZS4gWW91IGNhbid0IHJhbmRvbWx5IGRyb3AgRFQgc3VwcG9ydC4KCgpPaywg
dW5kZXJzdGFuZC4KCgo+Pgo+Pj4+ICAJCW5wID0gb2Zfbm9kZV9nZXQoZGV2LT5vZl9ub2RlKTsK
Pj4+PiAtCQlyZXQgPSBxbXBfdXNiY19wYXJzZV91c2JfZHQocW1wKTsKPj4+PiArCj4+Pj4gKwkJ
cmV0ID0gcW1wX3VzYmNfcGFyc2VfdXNiM2RwX2R0KHFtcCk7Cj4+Pj4gKwkJaWYgKHJldCkgewo+
Pj4+ICsJCQlkZXZfZXJyKHFtcC0+ZGV2LCAicGFyc2UgRFAgZHQgZmFpbCByZXQ9JWRcbiIsIHJl
dCk7Cj4+Pj4gKwkJCWdvdG8gZXJyX25vZGVfcHV0Owo+Pj4+ICsJCX0KPj4+PiArCj4+Pj4gKwkJ
cmV0ID0gZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXIoZGV2KTsKPj4+PiArCQlpZiAocmV0KSB7Cj4+
Pj4gKwkJCWRldl9lcnIocW1wLT5kZXYsICJhdXggYnJpZGdlIHJlZyBmYWlsIHJldD0lZFxuIiwg
cmV0KTsKPj4+PiArCQkJZ290byBlcnJfbm9kZV9wdXQ7Cj4+Pj4gKwkJfQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
