Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B70CA0EED
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 17:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flwl0HVxJAVSjrjO7xcB6Mbx/FJ0UX5giB+/nBWwvqE=; b=0TXb3oDzRkmb8z
	SQ+KKdAS1T2Lj/d6f6AyK3eMnnuKej5seXhj68UaZpki/na3TJdbndGgGVNKQOJOA2Oaug0nND66D
	G5ZUwBQSgYijBmbFuIl/BzPFjzIz5NX/1FvYjPro94Btxxb8fe3KxuxxI6wMJS3GD3ymDiLoimLgU
	xYLHSF11hn7ZT46fC8OwepqeIEinjqa906ulnu3CaHenzsZ6CeC8u4wnRIU5SO/kLd4pOS1/QKK6j
	9d7NXlFfem/R13rdNqPlJiqHduClgWiA9Z11gMuMmyI+lpPb4IujO3/0MFmLOl4xJjcY0m+Ab5SW8
	OnKx7CsQFBgYpH0i0n1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgNx-00000002Som-3JsV;
	Thu, 28 Aug 2025 17:26:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urcBg-00000001dbF-1G0l
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 12:57:09 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S9NMB4004946
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 12:57:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EgqQAQ4KchFaH1d0/JwOmtXxNXtrGHk+dx87xXF6dec=; b=hwX/wFBmNgyWLANg
	J+UgdxKE1/wlSCUDIo4H0+8ZmZNELyjSV7p1f6DOGU1bXrzUfJgw+DnXNf5ZEZhf
	S60XDAi6ifGlozQX0feDR5JtA4tKVe5gtwHt0VWja4Ao8BnRUdfcfgJfbI5U/baV
	wtptJp9i+OoIQC9VEz19yFIY03jFzIR9Tp6HNWSNDn2X+76qrjDLvUxRt6UQylkI
	QN7b/gPoVEJKQ5gGUM8UkyKyYlGjOmdjpZWayC/uwjcxCBD+ZVvfrNwEtexTSTHv
	ZfRA1nRJWgCZFeVrWltuDBpx6ngdXzLuWk0Bc31jPZIzuZjAKE4mDM4+kGccs0pz
	TQfjEQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpghypr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 12:57:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b308e4de16so3784671cf.1
        for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 05:57:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385826; x=1756990626;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EgqQAQ4KchFaH1d0/JwOmtXxNXtrGHk+dx87xXF6dec=;
        b=QB+fGoCXLAgsjG3Peo/0/BE+hrJSbUrFpv7hSB6x68D0ASX1Xa0FE91acuv3pJ2aIH
         zUSNVXuCaETmDgHfnvlSiu/jB4d+L9oj5gjl8t7kVpjCQ0SLPGEuQRKyaL1V5qrojD+3
         mVdogdwazWLGRqP6pAW0g2VY6YsRZrVQ5dFBjOZY2rdFZLEqrfGe+ZnAUo3IFIy2IMJ2
         SM4fxOemKWpZ7SBnwikOiXdWKXt47HLJ6SZzb2CZ8hLhI/IFE7G2I0rYoHfZKoO9sYe0
         3Ox4+Nhp4J0yG7XlXzyX5fqG52nbcmMt3wyFzjH2+Eqjqnq8eUBqD15YXC0SiOvcx2YZ
         /tFA==
X-Forwarded-Encrypted: i=1; AJvYcCXGwzzty4Qe+xzNA+E2kNWnkrh+gRB0F+3tJ75xufRJ/PeerT2B3A2GhmsP/1IXzhflVNZRVjdcRSA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpSx0m9NNcWFgl/jGGWAnk7x2NKgs5dUJI/QOAvNsJFc5+yc97
	uSwyf/5p2xdyZapw84+g5d7zLjUjXcejfbLxE/5xJ4WABCSuWQs2qhkgQKulCW2C4qMDekXD73x
	23VW5yyEf+7pz7o+Z8kkgIr0dVGVOQN2/72kTr3qNQBXiIA8v/Bh6IQ/6gPbHxm4xUYbY
X-Gm-Gg: ASbGnctdYxQsXlvJgmPNY7XJU4RImKMRwHujyDB24E79y1X3+5j5HJD3/d1eyIZc7tI
	7mULnhVCVPTirMYYYC557sDqYb/PT26RpCTzDEIgnII8KXTgjjzaMbu4XeIWDE1BlILlLHkt34M
	V5pZeCpKK7KJsEx+zbGTPRgm1bMYO6JpDgJEuFDBUYiCuOXvWZtyK8LKploD3WBUJ9DbtKlFOBG
	qcmBEEs0bXoFd6rZaQh6mAwQbWEWt5zaehgzOxigh+FcWZRLJc31TuqwctSL2bMx8sN+VBjL5ER
	ZH8UwKPlbAEw9dp0viKyNtQAMqtAY1+kuVQbodC6ph+8pmEZyApUEUN6RDQZMkNy8KmIV/JTdyp
	XnMKrQyQ3aiBLvkQwNdigG+v4T/8QH9H6NP0EH/Opm67AZ5lpQZn7
X-Received: by 2002:ac8:7fc2:0:b0:4b0:85ad:7916 with SMTP id d75a77b69052e-4b2aab0e427mr276090811cf.53.1756385826360;
        Thu, 28 Aug 2025 05:57:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNc/yDmuGpGZJWn4ShQMOMzt9j5GzyojN6uEoc7LfUnq4nqYpVKDjcBVD9/JUfvz/QuIJu0w==
X-Received: by 2002:ac8:7fc2:0:b0:4b0:85ad:7916 with SMTP id d75a77b69052e-4b2aab0e427mr276090171cf.53.1756385825600;
        Thu, 28 Aug 2025 05:57:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c1dccesm3228854e87.67.2025.08.28.05.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:57:04 -0700 (PDT)
Date: Thu, 28 Aug 2025 15:57:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
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
Subject: Re: [PATCH v3 07/14] phy: qcom: qmp-usbc: Move reset and regulator
 config into PHY cfg
Message-ID: <kndlhnsihvkq64q3tgai2jrij5mzh3c5kehe6r4imj4d7fgbc3@l3edsktmx4y3>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-7-a43bd25ec39c@oss.qualcomm.com>
 <ofvzduf5xyip7w6yde2xwsrvv3tdh7ew3yyzeya2qzpqty3j7p@bnetyjowhdn5>
 <6f7c3962-ccfc-4400-a77f-399b06da93e1@oss.qualcomm.com>
 <llrt3xnd5gagovnmyzqebp2da5v67bkxjntfcgc5r5auamspyj@7v5taph3i3c4>
 <f3cc06c1-25d2-40f4-bd77-8a9c51b40efa@oss.qualcomm.com>
 <osav4kwxytfuxvnf26ugdw2qasd753smywsux5punuegbkxqgq@fp3r4esqiqyq>
 <749ec6d1-f2f9-40f5-9c41-3443698f250a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <749ec6d1-f2f9-40f5-9c41-3443698f250a@oss.qualcomm.com>
X-Proofpoint-GUID: Z3DJs9O3b98XktapAWEugU63DHmgIoPF
X-Proofpoint-ORIG-GUID: Z3DJs9O3b98XktapAWEugU63DHmgIoPF
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68b05223 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=mEe_ubnSu4kMW0ft-g0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX73yYqh/qfZcC
 pUq0g+WTg1mcAiosvi/3I22vpITYPvLAeOoOO6PtotdXZTYEmdap3GtFJBR6xV/uEe8NQSagjam
 FPMQD3asFbWW4g+x38J5FBDod1q5btWZGH1EbOOBa/A/uinDcYGUjUXSprrlEXZFBcV0kJ5fKJv
 eknkVL//CYNmRTmwMXpU8vQWg1WkC+3ETIXx1HnXV9QxE7BfE3gqzRXbDmzeM1q7GeeRUmXRkqL
 NZ2KBz9ueE38tnENxtIr5TH6BZ5MKMO7drheAZXMaz/Im6qKMDv2/s52o3LIpmXjVGY46WNkRfp
 KSySBDTNuySblWPzHf1BbWKmdaiDbG6j3qM3InU7RvActGX6KMfAVEYwB10ooLoL0Gucgr2u9oY
 /7T8G+kb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_055708_457218_FB59F7F3 
X-CRM114-Status: GOOD (  32.01  )
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

T24gVGh1LCBBdWcgMjgsIDIwMjUgYXQgMDk6NDA6NTFBTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gOC8yNy8yMDI1IDEwOjMxIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+
ID4gT24gV2VkLCBBdWcgMjcsIDIwMjUgYXQgMDk6Mjg6MDBQTSArMDgwMCwgWGlhbmd4dSBZaW4g
d3JvdGU6Cj4gPj4gT24gOC8yMi8yMDI1IDY6MDggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gPj4+IE9uIEZyaSwgQXVnIDIyLCAyMDI1IGF0IDA0OjI5OjI4UE0gKzA4MDAsIFhpYW5neHUg
WWluIHdyb3RlOgo+ID4+Pj4gT24gOC8yMC8yMDI1IDc6MzAgUE0sIERtaXRyeSBCYXJ5c2hrb3Yg
d3JvdGU6Cj4gPj4+Pj4gT24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDU6MzQ6NDlQTSArMDgwMCwg
WGlhbmd4dSBZaW4gd3JvdGU6Cj4gPj4+Pj4+IFJlZmFjdG9yIHJlc2V0IGFuZCByZWd1bGF0b3Ig
Y29uZmlndXJhdGlvbiB0byBiZSBtYW5hZ2VkIHZpYSBxbXBfcGh5X2NmZwo+ID4+Pj4+PiBpbnN0
ZWFkIG9mIGhhcmRjb2RlZCBsaXN0cy4gVGhpcyBlbmFibGVzIHBlci1QSFkgY3VzdG9taXphdGlv
biBhbmQKPiA+Pj4+Pj4gc2ltcGxpZmllcyBpbml0aWFsaXphdGlvbiBsb2dpYyBmb3IgVVNCLW9u
bHkgYW5kIFVTQi9EUCBzd2l0Y2hhYmxlIFBIWXMuCj4gPj4+Pj4gUGxlYXNlIHNwbGl0IGludG8g
dHdvIHBhdGNoZXMgaW4gb3JkZXIgdG8gc2ltcGxpZnkgcmV2aWV3aW5nLgo+ID4+Pj4gT2ssIHdp
bGwgc3BsaXQgcmVzZXQgYW5kIHJlZ3VsYXRvciBwYXJ0Lgo+ID4+Pj4KPiA+Pj4+Cj4gPj4+Pj4+
IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29t
Pgo+ID4+Pj4+PiAtLS0KPiA+Pj4+Pj4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11c2JjLmMgfCAxMDggKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ID4+Pj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDU1IGRlbGV0aW9ucygtKQo+ID4+Pj4+
Pgo+ID4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXVzYmMuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMKPiA+Pj4+
Pj4gaW5kZXggNjExMjhkNjA2MjM4MzIxZDFiNTczNjU1YjNiOTg3MjI2YWEyZDU5NC4uNGU3OTdi
N2U2NWRhMGUzYTgyN2VmYTlhMTc5ZjFjMTUwYzFiOGIwMCAxMDA2NDQKPiA+Pj4+Pj4gLS0tIGEv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYwo+ID4+Pj4+PiArKysgYi9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jCj4gPj4+Pj4+IEBAIC00MjEs
OCArNDIxLDkgQEAgc3RydWN0IHFtcF9waHlfY2ZnIHsKPiA+Pj4+Pj4gIAlpbnQgKCpjb25maWd1
cmVfZHBfcGh5KShzdHJ1Y3QgcW1wX3VzYmMgKnFtcCk7Cj4gPj4+Pj4+ICAJaW50ICgqY2FsaWJy
YXRlX2RwX3BoeSkoc3RydWN0IHFtcF91c2JjICpxbXApOwo+ID4+Pj4+PiAgCj4gPj4+Pj4+IC0J
LyogcmVndWxhdG9ycyB0byBiZSByZXF1ZXN0ZWQgKi8KPiA+Pj4+Pj4gLQljb25zdCBjaGFyICog
Y29uc3QgKnZyZWdfbGlzdDsKPiA+Pj4+Pj4gKwljb25zdCBjaGFyICogY29uc3QgKnJlc2V0X2xp
c3Q7Cj4gPj4+Pj4+ICsJaW50IG51bV9yZXNldHM7Cj4gPj4+Pj4+ICsJY29uc3Qgc3RydWN0IHJl
Z3VsYXRvcl9idWxrX2RhdGEgKnZyZWdfbGlzdDsKPiA+Pj4+Pj4gIAlpbnQgbnVtX3ZyZWdzOwo+
ID4+Pj4+PiAgCj4gPj4+Pj4+ICAJLyogYXJyYXkgb2YgcmVnaXN0ZXJzIHdpdGggZGlmZmVyZW50
IG9mZnNldHMgKi8KPiA+Pj4+Pj4gQEAgLTQ1Myw3ICs0NTQsNiBAQCBzdHJ1Y3QgcW1wX3VzYmMg
ewo+ID4+Pj4+PiAgCXN0cnVjdCBjbGtfaHcgZHBfcGl4ZWxfaHc7Cj4gPj4+Pj4+ICAJc3RydWN0
IGNsa19idWxrX2RhdGEgKmNsa3M7Cj4gPj4+Pj4+ICAJaW50IG51bV9jbGtzOwo+ID4+Pj4+PiAt
CWludCBudW1fcmVzZXRzOwo+ID4+Pj4+PiAgCXN0cnVjdCByZXNldF9jb250cm9sX2J1bGtfZGF0
YSAqcmVzZXRzOwo+ID4+Pj4+PiAgCXN0cnVjdCByZWd1bGF0b3JfYnVsa19kYXRhICp2cmVnczsK
PiA+Pj4+Pj4gIAo+ID4+Pj4+PiBAQCAtNTE0LDkgKzUxNCwxOCBAQCBzdGF0aWMgY29uc3QgY2hh
ciAqIGNvbnN0IHVzYjNwaHlfcmVzZXRfbFtdID0gewo+ID4+Pj4+PiAgCSJwaHlfcGh5IiwgInBo
eSIsCj4gPj4+Pj4+ICB9Owo+ID4+Pj4+PiAgCj4gPj4+Pj4+IC0vKiBsaXN0IG9mIHJlZ3VsYXRv
cnMgKi8KPiA+Pj4+Pj4gLXN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgcW1wX3BoeV92cmVnX2xb
XSA9IHsKPiA+Pj4+Pj4gLQkidmRkYS1waHkiLCAidmRkYS1wbGwiLAo+ID4+Pj4+PiArc3RhdGlj
IGNvbnN0IGNoYXIgKiBjb25zdCB1c2IzZHBwaHlfcmVzZXRfbFtdID0gewo+ID4+Pj4+PiArCSJw
aHlfcGh5IiwgImRwX3BoeSIsCj4gPj4+Pj4+ICt9Owo+ID4+Pj4+PiArCj4gPj4+Pj4+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgcW1wX3BoeV91c2JfdnJlZ19sW10g
PSB7Cj4gPj4+Pj4+ICsJeyAuc3VwcGx5ID0gInZkZGEtcGh5IiB9LAo+ID4+Pj4+PiArCXsgLnN1
cHBseSA9ICJ2ZGRhLXBsbCIgfSwKPiA+Pj4+PiBQbGVhc2UgZmlsbCBpbiB0aGUgdmFsdWVzIGZv
ciBhbGwgcGxhdGZvcm1zLiBJdCB3ZWxsIG1pZ2h0IGJlIHRoYXQgdGhleQo+ID4+Pj4+IGFsbCBz
aGFyZSB0aGUgc2FtZSBjdXJyZW50IHJlcXVpcmVtZW50cy4KPiA+Pj4+IEkgY2hlY2tlZCBwcmV2
aW91cyBEUCBwcm9qZWN0cyBhbmQgZm91bmQgYWxsIHBsYXRmb3JtcyBjb25maWd1cmVkIHZkZGEt
cGh5IHdpdGggMjEuOG1BIGFuZCB2ZGRhLXBsbCB3aXRoIDM2bUEuCj4gPj4+IE5vLiBPbiBTRE02
NjAgYW5kIE1TTTg5OTggRFAgZGVmaW5lcyA3My40IG1BIGZvciAwLjlWIHN1cHBseSBhbmQKPiA+
Pj4gMTIuNTYwIG1BIGZvciAxLjggViBzdXBwbHkuCj4gPj4+Cj4gPj4+PiBIb3dldmVyLCBJIGRp
ZG7igJl0IGZpbmQgVVNCIGxvYWQgY29uZmlncyBpbiBkb3duc3RyZWFtIGFuZCBmcm9tIFNvQyBy
ZWxhdGVkIHBvd2VyIGdyaWRzOgo+ID4+PiBQbGVhc2UgY2hlY2sgdGhlIGFjdHVhbCBIVyBkb2N1
bWVudGF0aW9uIGZvciB0aG9zZSBwbGF0Zm9ybXMuCj4gPj4+Cj4gPj4+PiBRQ1M2MTUKPiA+Pj4+
IEwxMkE6IFZEREFfVVNCMF9TU18xUDgvVkREQV9VU0IxX1NTXzFQOCBJcGs6MjBtYQo+ID4+Pj4g
TDVBOiBWRERBX1VTQjBfU1NfMFA5L1ZEREFfVVNCMV9TU18wUDkgSXBrOjUwbUEKPiA+Pj4+Cj4g
Pj4+PiBzbTYxNTAKPiA+Pj4+IEwxMUE6IFZEREFfVVNCMF9TU18xUDgvVkREQV9VU0IxX1NTXzFQ
OCBJcGs6MjBtYQo+ID4+Pj4gTDRBOiBWRERBX1VTQjBfU1NfMFA5L1ZEREFfVVNCMV9TU18wUDkg
SXBrOjUwbUEKPiA+Pj4+Cj4gPj4+PiBTTTYxMTUKPiA+Pj4+IEwxMkE6IFZEREFfVVNCX1NTX0RQ
XzFQOCBJcGs6MTMuM21BCj4gPj4+PiBMNEE6IFZEREFfVVNCX1NTX0RQX0NPUkUgSXBrOjY2LjFt
QQo+ID4+Pj4KPiA+Pj4+IFFDTTIyOTAKPiA+Pj4+IEwxM0E6IFZEREFfVVNCX1NTX0RQXzFQOCBJ
cGs6MTMuM21BCj4gPj4+PiBMMTJBOiBWRERBX1VTQl9TU19EUF9DT1JFIElwazo2Ni4xbUEKPiA+
Pj4+Cj4gPj4+PiBzZG02NjAKPiA+Pj4+IExETzEwQTogVkREQV9VU0JfU1NfMVA4IElwazoxNG1B
Cj4gPj4+PiBMRE8xQjogVkREQV9VU0JfU1NfQ09SRSBJcGs6NjguNm1BCj4gPj4+Pgo+ID4+Pj4g
bXNtODk5OAo+ID4+Pj4gTDJBOiBWRERBX1VTQl9TU18xUDIgSXBrOjE0LjJtQQo+ID4+Pj4gTDFB
OiBWRERBX1VTQl9TU19DT1JFIElwazo2OC42bUEKPiA+Pj4+Cj4gPj4+PiBJdCBzZWVtcyB0aGUg
VVNCIHBvd2VyIHJlcXVpcmVtZW50cyB2YXJ5IGFjcm9zcyBwbGF0Zm9ybXMsIGFuZCB0aGUKPiA+
Pj4+IDIxODAwIMK1QSBsb2FkIGZvciB2ZGRhLXBoeSBleGNlZWRzIHRoZSBJcGsgcmFuZ2UgaW4g
bW9zdCBjYXNlcy4KPiA+Pj4gSXBrIGJlaW5nID8KPiA+Pgo+ID4+IElQSzogSW5zdGFudGFuZW91
cyBQZWFrIEN1cnJlbnQKPiA+Pgo+ID4+Cj4gPj4+PiBJIGFsc28gdGVzdGVkIHJlbW92aW5nIHRo
ZSBsb2FkIHNldHRpbmdzIGZvciBVU0IrRFAgUEhZLCBhbmQgRFAgc3RpbGwgd29ya3MgZmluZS4K
PiA+Pj4gSXQgbW9zdGx5IHdvcmtzIGVpdGhlciBiZWNhdXNlIHdlIGRvbid0IGFsbG93IG1vZGUg
c3dpdGNoaW5nIG9uIG9sZGVyCj4gPj4+IHBsYXRmb3JtcyAoeWV0KSBvciBiZWNhdXNlIHNvbWVi
b2R5IGVsc2UgaGFzIGFscmVhZHkgdm90ZWQgYW5kIHRoYXQgdm90ZQo+ID4+PiBrZWVwcyB0aGUg
cmVxdWlyZWQgbW9kZS4KPiA+Pj4KPiA+Pj4gQXMgeW91J3ZlIHN0YXJ0ZWQgbG9va2luZyBvbiBz
cGVjaWZ5aW5nIHByb3BlciBjdXJyZW50IGxvYWQsIHBsZWFzZQo+ID4+PiBmaW5pc2ggdGhlIHdv
cmsuCj4gPj4KPiA+PiBEaXNjdXNzZWQgd2l0aCBjaGlwIHZhbGlkYXRpb24gYW5kIHBvd2VyIFNX
IHRlYW1zLgo+ID4+Cj4gPj4gVGhlIHBvd2VyIGdyaWQgdGFibGVzIGFyZSBwcmltYXJpbHkgdXNl
ZCB0byBlbnN1cmUgZWFjaCBtb2R1bGUgcmVjZWl2ZXPCoAo+ID4+IHRoZSBjb3JyZWN0IHZvbHRh
Z2UsIGFuZCB0aGV5IGRlZmluZSB0aGUgSXBrIGZvciBlYWNoIHN1Ym1vZHVsZS7CoAo+ID4+Cj4g
Pj4gV2hpbGUgdGhleSBkb27igJl0IHNwZWNpZnkgcmVjb21tZW5kZWQgcmVndWxhdG9yIGxvYWQg
dmFsdWVzLCB0aGUgSXBrIHZhbHVlcwo+ID4+IHJlZmxlY3QgdGhlIGV4cGVjdGVkIHBvd2VyIGRv
bWFpbiBzdHJlbmd0aCBhbmQgY2FuIGhlbHAgZXN0aW1hdGUgdGhlIHZvdGluZwo+ID4+IHN0cmVu
Z3RoIG5lZWRlZCBmb3IgZWFjaCBzdXBwbHkuCj4gPj4KPiA+PiBTaW5jZSByZWd1bGF0b3IgbG9h
ZCBpcyBtYWlubHkgdXNlZCBmb3Igdm90aW5nLCBJ4oCZbGwgZGVmaW5lIGluaXRfbG9hZF91QSBp
bgo+ID4+IHRoZSBuZXh0IHBhdGNoIGJhc2VkIG9uIGVhY2ggU29D4oCZcyBJcGsgdmFsdWVzIHRv
IGJldHRlciBhbGlnbiB3aXRoIGhhcmR3YXJlIGV4cGVjdGF0aW9ucy4KPiA+IElmIHRoZSBJcGsg
aXMgZGVmaW5lZCBwZXIgbW9kdWxlLCB0aGVuIGl0J3MgZmluZS4KPiAKPiAKPiBZZXMsIHVuZGVy
IGVhY2ggcmVndWxhdG9yLCBtdWx0aXBsZSBzdWJtb2R1bGVzIGFyZSBwb3dlcmVkLCBhbmQgZWFj
aCBzdWJtb2R1bGUgZGVmaW5lcyBpdHMgb3duIElwayB2YWx1ZS4KCkFjaywgdGhlbiBpdCdzIHdo
YXQgd2Ugd2VyZSBsb29raW5nIGZvciEKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
