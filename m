Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C37E2CA0FE1
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3GlhcXyBQwG5J4oIRy6Fop50DoDWBVgBuwzCZnlEL4=; b=zFRqFTZbFgriBO
	hGAnA4/XgGzXqBVtSefMMl3ZKaKcdGCCl300Kb1ta5oeBS9rmX8X8oa6dXcwyzScRxipgSP0Z3NK8
	zQ9R2G3ONYB65KCx50Ai57rMk3x6nNRyaCl3kzwyhnBvyqWySLsUsGVowtTL/5Bf336U7Wit0YS4H
	yAruJdTwFonDDtoBuK+1+pDwKFn3JxxHAW0CQVI1d3GN3Vf5ZdwUSNXo+je7/iwyam2otZaDdZAix
	dW4AB8vJJNOtXJJLTlZJ10sH8T1PrQ7dIe2wVturd5MWTmmRVB50NDd157pj8tFiu2wbEFSDdCV0v
	CYxey+kIL/d0NGwP98CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZb0-00000003X3g-1ik8;
	Fri, 22 Aug 2025 21:46:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNi3-000000020T2-0icZ
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 09:05:20 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UVdQ011289
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 09:05:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	we5kOYIR9rQ9t3N19Qt3EpeOAg+A9dfHS8z2hNw9bB4=; b=ZGLmcP9nYIXNfPDT
	gU9FtFbEBKZSTsVW8aLigBY5uEQ/hnFdyNcvyHFUZD9fPKNDnHTRCJBlN8/Qt7UC
	vBgrKPcz0yA2adVkAsptuqijCFbVEc8H9ejj31wnFtreBmRb6oCLnNZ3NGVJfbmP
	8GlXXefuEt80YiooSQ0riLJyEJ2oSppWw4XNysM51MQSLPJ6xKkw0JDyZ0cyHUh/
	K1p3uKUyoZCwLheemmfi0z/PcE5UNZynhwHqy+njDzVy+o9yURLG/LQXcMmJ8ouV
	nWcXj/CFMTBlFX8adGal7WHiD83vbzUXo/jA3NBQJOG/2FDu0ZOIZgdWiWBZb9am
	M/mYpg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngt8edq9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 09:05:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70d9eb2eb9bso4225586d6.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 02:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755853517; x=1756458317;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=we5kOYIR9rQ9t3N19Qt3EpeOAg+A9dfHS8z2hNw9bB4=;
        b=NkrotDNpOU3DhRrUWCdIQXuPBZ2y4VdSzHckTltIFWCjsyd7ctyujow7oRhL19ypEp
         gK/2aaYYhTIIw9PCIFs/Fla4LdFHZO0p6wVZKkrnL8/INRdJEBkEKjsuvY4jUsWNfWYy
         PKCVcKuFY2zz36GG0kuhnuqDsYd5kwopJU4OZrr/z+KASe3Lhsly/MRaSI0Q3mVY+zKF
         Il2a0SSYLl63KuCymX60cCbwGFldSYVL3F1Dfgcw9qgotmIFUTIK0SQGSkBYS9ZePY19
         JMLJLCQltXgniN2CrqnIHe+jl+2wr9zXnt1C4f2zLgS9pKDVCDTz1EYdRi+qT1f8R6cz
         20uA==
X-Forwarded-Encrypted: i=1; AJvYcCU3OoaBv/4PH9JOjN6OSw25cVZQiIekJxPmV292We92U4A0ms+fiX3V0xAZjeYEJer5rmzwkTObcvA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEt/OTOWBX+l14f3OSAuj1QZXxr1gvT1KIgRF796Y3CFeEj6tQ
	S/t+Qbsxk1cCeSh+8x1s0rCVOiXjX1HxWdvrhAZT6Wj5W/6ic9QZZoLH3kkETtMY+OSuZd3j4GO
	5y3k6ddnirRjRmMfA4nKp8wlr2MC04k091n7DbAaPRfbBuXzf3JOIfCHo36sPdk3n32ay
X-Gm-Gg: ASbGncs6CUPajDy5h4M1wRLCv3CJBer2/bM4PrPaOnrql6S5EqYu6A11Yd55nK63+Gz
	+8pm5vd/4IaOF8ZpuEL8JI5prBzhnL8fIjmxQ0TfVwQ8OwWnYVWg60da8c7y5NwbKBnvZoCrA0b
	YGxSbp7/f6p5iCnzd7r377pPef2FJEUEoUbqo+g4P3gf8YTyzrPu3W01cq96hqCaviyBJSVP6Kl
	FZ2RtbziUnYMxatKvZ6nwLrmyd255AMgXCmL1r1k2LdI6VWmMVvoYR4ODUvrrio8SEaozG7RoC+
	03PwFGvdH9xbHjZdIwaTc2FVm1SGhXrwBamHUO51BSGziu2oRsvXYbWKHoA+vuiZDeUlxYJOvsL
	SgMNGUBj0zMVmC8nc9w==
X-Received: by 2002:ad4:596b:0:b0:70d:6de2:1b32 with SMTP id 6a1803df08f44-70d9723e3d8mr27746836d6.62.1755853516746;
        Fri, 22 Aug 2025 02:05:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxMWfBZW68IB/KZovde+NRVxhgZvhNidsma5/daN4tO/i9zHYH0AJAj9sHGZxcIBJB4AMYUw==
X-Received: by 2002:ad4:596b:0:b0:70d:6de2:1b32 with SMTP id 6a1803df08f44-70d9723e3d8mr27746106d6.62.1755853515855;
        Fri, 22 Aug 2025 02:05:15 -0700 (PDT)
Received: from [10.207.49.70] (84-253-220-51.bb.dnainternet.fi. [84.253.220.51])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a48b46bsm32794951fa.36.2025.08.22.02.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 02:05:15 -0700 (PDT)
Message-ID: <d4e1f836-afbb-4cc7-a5fd-fa961e3203ec@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 12:05:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
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
 <20250820-add-displayport-support-for-qcs615-platform-v3-5-a43bd25ec39c@oss.qualcomm.com>
 <7b6utbnibia767bp55vhvg6ghdavb66ubdpabyguohuwtmz3mp@unvm36jttota>
 <8922ae6e-9be6-49f7-ac84-d4a1dd60421b@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <8922ae6e-9be6-49f7-ac84-d4a1dd60421b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNCBTYWx0ZWRfX9v4tUbPtbeB9
 aKqs0dD7Q8ABc5LWAUiyf7Y9bZB4PYINRESyJvJQb9UNa4+DxcnbQhF15l+GiRT/Wy/5VevXkvK
 fm/t5CCNTbYK7ortj9u10xumP0u6wxjrQ3MDwrzXlqTNba1Ukpu//+0+fK9Xj0cdAY24nN0H5nl
 Jozi61P7GxFrT7Uucth7pEGh+tPTZi9+tNaKw1rR7zk/IF9V05lIkPyXWX8cEC9svmMLzv+61dh
 OnZWBw7rj3S8V7ENEoj4dS1qlyuqaU7iH6yOU+FMDFkl6ewaMhlMM0E37jecr1t6DTgXPxbOeaS
 BkmWvvMtp+XjJ0x7EKAgy2dBbNUBfHl+lFha0rZzx8QRgPOnR5LOA5jqKjtquL/OjK02438ciqe
 h6J4nTgKL6go8DVd9wjk7eTLpIVoBA==
X-Authority-Analysis: v=2.4 cv=c/fygR9l c=1 sm=1 tr=0 ts=68a832cd cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=JdIsBVl79nXNK9flUcZCTw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=G97a9vFw7kLByEIGoT4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: T0ZPcNRzgjrRcBdDC3ofLOXxELKfT9yP
X-Proofpoint-ORIG-GUID: T0ZPcNRzgjrRcBdDC3ofLOXxELKfT9yP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_020519_330249_364E47C0 
X-CRM114-Status: GOOD (  14.57  )
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

T24gMjIvMDgvMjAyNSAwOTo1OSwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gCj4gT24gOC8yMC8yMDI1
IDc6NDcgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIFdlZCwgQXVnIDIwLCAyMDI1
IGF0IDA1OjM0OjQ3UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4gRXh0ZW5kIHFtcF91
c2JjX29mZnNldHMgYW5kIHFtcF9waHlfY2ZnIHdpdGggRFAtc3BlY2lmaWMgZmllbGRzLAo+Pj4g
aW5jbHVkaW5nIHJlZ2lzdGVyIG9mZnNldHMsIGluaXQgdGFibGVzLCBhbmQgY2FsbGJhY2sgaG9v
a3MuIEFsc28KPj4+IHVwZGF0ZSBxbXBfdXNiYyBzdHJ1Y3QgdG8gdHJhY2sgRFAtcmVsYXRlZCBy
ZXNvdXJjZXMgYW5kIHN0YXRlLgo+Pj4gVGhpcyBlbmFibGVzIHN1cHBvcnQgZm9yIFVTQi9EUCBz
d2l0Y2hhYmxlIFR5cGUtQyBQSFlzIHRoYXQgb3BlcmF0ZQo+Pj4gaW4gZWl0aGVyIG1vZGUuCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29t
bS5jb20+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVz
YmMuYyB8IDczICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tCj4+PiAgIDEgZmlsZSBj
aGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPj4+Cj4+PiAgIAo+Pj4g
KwlzdHJ1Y3QgcmVnbWFwICp0Y3NyX21hcDsKPj4+ICsJdTMyIHZsc19jbGFtcF9yZWc7Cj4+PiAr
CXUzMiBkcF9waHlfbW9kZV9yZWc7Cj4+PiArCj4+PiAgIAlzdHJ1Y3QgbXV0ZXggcGh5X211dGV4
Owo+Pj4gICAKPj4+ICsJc3RydWN0IHBoeSAqdXNiX3BoeTsKPj4gU2hvdWxkIGJlIGEgcGFydCBv
ZiB0aGUgcHJldmlvdXMgcGF0Y2guCj4gCj4gCj4gT2ssIHdpbGwgbW92ZSB1c2JfcGh5IHJlbmFt
ZSB0byBwYXRjaCAnUmVuYW1lIFVTQi1zcGVjaWZpYyBvcHMnLAo+IAo+IHRoZW4gc2hhbGwgSSBu
ZWVkIGRyb3DCoHRoZcKgfFJldmlld2VkLWJ5fMKgdGFnIGluIHRoYXQgcGF0Y2ggc2luY2UgaXQg
d2lsbCBjaGFuZ2U/CgpEZXBlbmRzIG9uIHRoZSBhbW91bnQgb2YgY2hhbmdlcy4KCi0tIApXaXRo
IGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
