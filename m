Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16E3FCA0FED
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 15:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMtWX7wRwDqkpTNMiW0QRYOHa8uDs49EIqXManQNQVU=; b=aylkxSPxEBrNgY
	R9PmQFKuIKoi2tI9R9LXXOzJEKTC8abJP3tN3QNNJ54mUnVjKl1Ru1QbOG0+0BmzmHmAKEPDj8W7o
	FlaqfEjGShVBWvBEiVsTGJ4tCxMl9+mf7HXYenyLKBHkKrKb+6pa8m40O9cQ4Ek8RhmIPu0KEHVr9
	6eGUleJdS1YMTPI5z/7tL7DhNwlMs8pEeNoj147uhwaYnT6FMInhAGeMk8g5P+JzSaqWcakGX3wjw
	1AAMYmsr5XY7zRfhg5HD5a8StRZJSuvfqYm6YmtnIk4D/aJ4h149tJqRw4vGsbRQfWaCwXopAiin4
	viIo+VfqADT7MUvKNeiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIUv-0000000G5V3-437S;
	Wed, 27 Aug 2025 15:55:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urHBH-0000000FljA-2vVE
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 14:31:21 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R6kUpl027598
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 14:31:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q0lt8Alc0eadGnQMpiWDAGtF8IcvB+wKd8Bpg0uTVog=; b=daTFYMGP9Mk8g61z
	LDzBGao1EZeoj4fn8cyOkWYcYi6w3RqveMI7c7wSJJ6oF/ZwMdw8NqIX8pnQJnl3
	mm/aOEnR3XNURV504Vz7W2Eb8nE5zj5QsAcLhPbskmjtOQ+KkjSZSN9iAz9IOH+a
	Di4R0OVdn2S59QHrJ5qStdl5sTPFbS57QO2ZPDIR8jsQKEdpNCsmkqDPM1KSWAS/
	ZCTiAf6sKCbPc/Ez361+ornmJMf5qT2p6wjf3s+uUq/YM0w/iYQpxx+gbCaSVjMw
	iBsG8PGOQiLXvCOrY90eY8NYPKH9pn1gNmhE3E8heb2dMUDSTutsg1JcWzesgdhE
	qpGbbA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16uxte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 14:31:18 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d989082a1so110934676d6.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 07:31:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756305076; x=1756909876;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q0lt8Alc0eadGnQMpiWDAGtF8IcvB+wKd8Bpg0uTVog=;
        b=HaLKCspct2VkY5bB56tNgtcb+017yRP11dOHhKixHw6eOzYSGapIZlkGf0BulFWQ3l
         LpChGFJZtY+gXodYq1sama8OriNrjV3G5aVTmzP9wUnnHGS3j49+PRPBcQT9OtJtiFjp
         F3loukheS7x6E2C4YAYlBq1hUD+QM7kC4nd6HUPzI0xxGNMneS04FBnVtR/7TdisNgfV
         FBbPFBQfJjiZLuqsgTJMAluSyFHFcydRBLA21p1RzaJWdGZoITYS6d3hvpeJ0pkmRZ3t
         OOy2eJ0H71Vjo16KnM36hnPqI/+b9DLwI6bQzZvfo0xPFepY4/3xzOF6NW2nb217puQI
         JhEw==
X-Forwarded-Encrypted: i=1; AJvYcCVIIUqsNHgkjriP7A3cWkl6zsOOlPJnCnNHfeoMGkEZ+CxbI+VNWfhU0Y6rB4TXsHD7Z9HokeR2+To=@lists.infradead.org
X-Gm-Message-State: AOJu0YzX9Ne1tD8PxbkHd/bMwqlrM4ZkQNeReKtDYVosOUGui2CZ/ofd
	oDqNYYj3wSgl1U2J+m3fVaoVNmcrVOzzIdyHnxEpF6x+sPfv0dpmZt7kU66wT4pJbCFxTug1XzO
	RAVAvoOpyPYX7zaNDCF8Q92/Mgu/GXcMtJMA7jb4/JcBB0+AyhGHK/nKZQNSDh7DnQMze
X-Gm-Gg: ASbGncsiYyuXdCfyf7MP4/dnEyRviM7xSxzaWO3qN2kLDeZHZer19BBctCQ9EHJtIa+
	scrPjpuFbAI0s3ZCS2MbmTh7SOEarUXO/nILq54uXUkGEwCpnOjxc0prowh2HWIWgT205l0Uj9X
	tgcOwF8iZSB2iUpvLGRUCOhVXgN6rUq8FhgWe56eS7JtLF201HDW8luA1DavIMmh5OJbuYX+oIV
	Zt4SEovZmUfwvB2aUQiXG744jJgvl+P7LpFFmdIi3zPRRieMQPb2stoly9wOE+PcGXgNP2ybBMC
	3Z7JzpgO2KDUgY/i6rNG5cxrAbT6/XjHdxHwnXrv0JmOWkge1diD/ZHZXfALwsvnijOWR2Sm5jl
	9rISb+zcDmWlWQT5Yz9QhLDkrHpxnU6f12azJUcQrKJXCMutXb/s0
X-Received: by 2002:a05:622a:3c8:b0:4b1:2783:ab99 with SMTP id d75a77b69052e-4b2aaacf013mr240586341cf.39.1756305076101;
        Wed, 27 Aug 2025 07:31:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFovrqRv2sivDnbTsFQFcberelJyZtK09JvAw7fJdBbeVxPt0vDz1SXP+xHSgKWaxjA8FBaBw==
X-Received: by 2002:a05:622a:3c8:b0:4b1:2783:ab99 with SMTP id d75a77b69052e-4b2aaacf013mr240585511cf.39.1756305075350;
        Wed, 27 Aug 2025 07:31:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35ca8c35sm2833513e87.143.2025.08.27.07.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 07:31:13 -0700 (PDT)
Date: Wed, 27 Aug 2025 17:31:11 +0300
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
Message-ID: <osav4kwxytfuxvnf26ugdw2qasd753smywsux5punuegbkxqgq@fp3r4esqiqyq>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-7-a43bd25ec39c@oss.qualcomm.com>
 <ofvzduf5xyip7w6yde2xwsrvv3tdh7ew3yyzeya2qzpqty3j7p@bnetyjowhdn5>
 <6f7c3962-ccfc-4400-a77f-399b06da93e1@oss.qualcomm.com>
 <llrt3xnd5gagovnmyzqebp2da5v67bkxjntfcgc5r5auamspyj@7v5taph3i3c4>
 <f3cc06c1-25d2-40f4-bd77-8a9c51b40efa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3cc06c1-25d2-40f4-bd77-8a9c51b40efa@oss.qualcomm.com>
X-Proofpoint-GUID: Jcf3_ypKyPwU4ou9nELwh8BheKkWZQQU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfXznOZtxupnxsL
 el3Li0g9QSoRO1IfW8STKQp6RYM3BBhTUEJLRLobrhLP/bGnCSYDh1B5rXqNemu6xDpITBygRUf
 upyyK6qA+6OQhJNb9TTobPl90acQT6+WzhJQZgo1gBdWhGssVaPs9CjNcab0qsUmEQ0OE4EsTZa
 xtoS5OqFeF9Fhs7ln4BYgjJJXrLXHGBl1uRJ6KcDA5WOqUD4mSSJEyLcKyi9tmQGR3/TqEBlrjB
 ndttmrsLEDJIlj3bOIT/smd5nFoOoMjONlQWHwr6a5ho/Ltl/mm/XH+F/3K6QuBVWRzX3sR+AuI
 8GPSuu+hYv/tGkL0MPRUTmehw0FniDtVN1P6xNdnBubmWaKn5J4p8v3sau7BZgXKQH8Vnu9dnvf
 fJMH8DTB
X-Proofpoint-ORIG-GUID: Jcf3_ypKyPwU4ou9nELwh8BheKkWZQQU
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68af16b6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=LvOJhfRPg24KsvUfCm0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_03,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_073119_833044_E94D5B77 
X-CRM114-Status: GOOD (  32.95  )
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

T24gV2VkLCBBdWcgMjcsIDIwMjUgYXQgMDk6Mjg6MDBQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gOC8yMi8yMDI1IDY6MDggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiBPbiBGcmksIEF1ZyAyMiwgMjAyNSBhdCAwNDoyOToyOFBNICswODAwLCBYaWFuZ3h1IFlpbiB3
cm90ZToKPiA+PiBPbiA4LzIwLzIwMjUgNzozMCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
PiA+Pj4gT24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDU6MzQ6NDlQTSArMDgwMCwgWGlhbmd4dSBZ
aW4gd3JvdGU6Cj4gPj4+PiBSZWZhY3RvciByZXNldCBhbmQgcmVndWxhdG9yIGNvbmZpZ3VyYXRp
b24gdG8gYmUgbWFuYWdlZCB2aWEgcW1wX3BoeV9jZmcKPiA+Pj4+IGluc3RlYWQgb2YgaGFyZGNv
ZGVkIGxpc3RzLiBUaGlzIGVuYWJsZXMgcGVyLVBIWSBjdXN0b21pemF0aW9uIGFuZAo+ID4+Pj4g
c2ltcGxpZmllcyBpbml0aWFsaXphdGlvbiBsb2dpYyBmb3IgVVNCLW9ubHkgYW5kIFVTQi9EUCBz
d2l0Y2hhYmxlIFBIWXMuCj4gPj4+IFBsZWFzZSBzcGxpdCBpbnRvIHR3byBwYXRjaGVzIGluIG9y
ZGVyIHRvIHNpbXBsaWZ5IHJldmlld2luZy4KPiA+Pgo+ID4+IE9rLCB3aWxsIHNwbGl0IHJlc2V0
IGFuZCByZWd1bGF0b3IgcGFydC4KPiA+Pgo+ID4+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBYaWFu
Z3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4KPiA+Pj4+IC0tLQo+ID4+Pj4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAxMDggKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ID4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRp
b25zKCspLCA1NSBkZWxldGlvbnMoLSkKPiA+Pj4+Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC11c2JjLmMKPiA+Pj4+IGluZGV4IDYxMTI4ZDYwNjIzODMyMWQxYjU3MzY1
NWIzYjk4NzIyNmFhMmQ1OTQuLjRlNzk3YjdlNjVkYTBlM2E4MjdlZmE5YTE3OWYxYzE1MGMxYjhi
MDAgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
dXNiYy5jCj4gPj4+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNi
Yy5jCj4gPj4+PiBAQCAtNDIxLDggKzQyMSw5IEBAIHN0cnVjdCBxbXBfcGh5X2NmZyB7Cj4gPj4+
PiAgCWludCAoKmNvbmZpZ3VyZV9kcF9waHkpKHN0cnVjdCBxbXBfdXNiYyAqcW1wKTsKPiA+Pj4+
ICAJaW50ICgqY2FsaWJyYXRlX2RwX3BoeSkoc3RydWN0IHFtcF91c2JjICpxbXApOwo+ID4+Pj4g
IAo+ID4+Pj4gLQkvKiByZWd1bGF0b3JzIHRvIGJlIHJlcXVlc3RlZCAqLwo+ID4+Pj4gLQljb25z
dCBjaGFyICogY29uc3QgKnZyZWdfbGlzdDsKPiA+Pj4+ICsJY29uc3QgY2hhciAqIGNvbnN0ICpy
ZXNldF9saXN0Owo+ID4+Pj4gKwlpbnQgbnVtX3Jlc2V0czsKPiA+Pj4+ICsJY29uc3Qgc3RydWN0
IHJlZ3VsYXRvcl9idWxrX2RhdGEgKnZyZWdfbGlzdDsKPiA+Pj4+ICAJaW50IG51bV92cmVnczsK
PiA+Pj4+ICAKPiA+Pj4+ICAJLyogYXJyYXkgb2YgcmVnaXN0ZXJzIHdpdGggZGlmZmVyZW50IG9m
ZnNldHMgKi8KPiA+Pj4+IEBAIC00NTMsNyArNDU0LDYgQEAgc3RydWN0IHFtcF91c2JjIHsKPiA+
Pj4+ICAJc3RydWN0IGNsa19odyBkcF9waXhlbF9odzsKPiA+Pj4+ICAJc3RydWN0IGNsa19idWxr
X2RhdGEgKmNsa3M7Cj4gPj4+PiAgCWludCBudW1fY2xrczsKPiA+Pj4+IC0JaW50IG51bV9yZXNl
dHM7Cj4gPj4+PiAgCXN0cnVjdCByZXNldF9jb250cm9sX2J1bGtfZGF0YSAqcmVzZXRzOwo+ID4+
Pj4gIAlzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSAqdnJlZ3M7Cj4gPj4+PiAgCj4gPj4+PiBA
QCAtNTE0LDkgKzUxNCwxOCBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHVzYjNwaHlfcmVz
ZXRfbFtdID0gewo+ID4+Pj4gIAkicGh5X3BoeSIsICJwaHkiLAo+ID4+Pj4gIH07Cj4gPj4+PiAg
Cj4gPj4+PiAtLyogbGlzdCBvZiByZWd1bGF0b3JzICovCj4gPj4+PiAtc3RhdGljIGNvbnN0IGNo
YXIgKiBjb25zdCBxbXBfcGh5X3ZyZWdfbFtdID0gewo+ID4+Pj4gLQkidmRkYS1waHkiLCAidmRk
YS1wbGwiLAo+ID4+Pj4gK3N0YXRpYyBjb25zdCBjaGFyICogY29uc3QgdXNiM2RwcGh5X3Jlc2V0
X2xbXSA9IHsKPiA+Pj4+ICsJInBoeV9waHkiLCAiZHBfcGh5IiwKPiA+Pj4+ICt9Owo+ID4+Pj4g
Kwo+ID4+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSBxbXBfcGh5
X3VzYl92cmVnX2xbXSA9IHsKPiA+Pj4+ICsJeyAuc3VwcGx5ID0gInZkZGEtcGh5IiB9LAo+ID4+
Pj4gKwl7IC5zdXBwbHkgPSAidmRkYS1wbGwiIH0sCj4gPj4+IFBsZWFzZSBmaWxsIGluIHRoZSB2
YWx1ZXMgZm9yIGFsbCBwbGF0Zm9ybXMuIEl0IHdlbGwgbWlnaHQgYmUgdGhhdCB0aGV5Cj4gPj4+
IGFsbCBzaGFyZSB0aGUgc2FtZSBjdXJyZW50IHJlcXVpcmVtZW50cy4KPiA+Pgo+ID4+IEkgY2hl
Y2tlZCBwcmV2aW91cyBEUCBwcm9qZWN0cyBhbmQgZm91bmQgYWxsIHBsYXRmb3JtcyBjb25maWd1
cmVkIHZkZGEtcGh5IHdpdGggMjEuOG1BIGFuZCB2ZGRhLXBsbCB3aXRoIDM2bUEuCj4gPiBOby4g
T24gU0RNNjYwIGFuZCBNU004OTk4IERQIGRlZmluZXMgNzMuNCBtQSBmb3IgMC45ViBzdXBwbHkg
YW5kCj4gPiAxMi41NjAgbUEgZm9yIDEuOCBWIHN1cHBseS4KPiA+Cj4gPj4gSG93ZXZlciwgSSBk
aWRu4oCZdCBmaW5kIFVTQiBsb2FkIGNvbmZpZ3MgaW4gZG93bnN0cmVhbSBhbmQgZnJvbSBTb0Mg
cmVsYXRlZCBwb3dlciBncmlkczoKPiA+IFBsZWFzZSBjaGVjayB0aGUgYWN0dWFsIEhXIGRvY3Vt
ZW50YXRpb24gZm9yIHRob3NlIHBsYXRmb3Jtcy4KPiA+Cj4gPj4gUUNTNjE1Cj4gPj4gTDEyQTog
VkREQV9VU0IwX1NTXzFQOC9WRERBX1VTQjFfU1NfMVA4IElwazoyMG1hCj4gPj4gTDVBOiBWRERB
X1VTQjBfU1NfMFA5L1ZEREFfVVNCMV9TU18wUDkgSXBrOjUwbUEKPiA+Pgo+ID4+IHNtNjE1MAo+
ID4+IEwxMUE6IFZEREFfVVNCMF9TU18xUDgvVkREQV9VU0IxX1NTXzFQOCBJcGs6MjBtYQo+ID4+
IEw0QTogVkREQV9VU0IwX1NTXzBQOS9WRERBX1VTQjFfU1NfMFA5IElwazo1MG1BCj4gPj4KPiA+
PiBTTTYxMTUKPiA+PiBMMTJBOiBWRERBX1VTQl9TU19EUF8xUDggSXBrOjEzLjNtQQo+ID4+IEw0
QTogVkREQV9VU0JfU1NfRFBfQ09SRSBJcGs6NjYuMW1BCj4gPj4KPiA+PiBRQ00yMjkwCj4gPj4g
TDEzQTogVkREQV9VU0JfU1NfRFBfMVA4IElwazoxMy4zbUEKPiA+PiBMMTJBOiBWRERBX1VTQl9T
U19EUF9DT1JFIElwazo2Ni4xbUEKPiA+Pgo+ID4+IHNkbTY2MAo+ID4+IExETzEwQTogVkREQV9V
U0JfU1NfMVA4IElwazoxNG1BCj4gPj4gTERPMUI6IFZEREFfVVNCX1NTX0NPUkUgSXBrOjY4LjZt
QQo+ID4+Cj4gPj4gbXNtODk5OAo+ID4+IEwyQTogVkREQV9VU0JfU1NfMVAyIElwazoxNC4ybUEK
PiA+PiBMMUE6IFZEREFfVVNCX1NTX0NPUkUgSXBrOjY4LjZtQQo+ID4+Cj4gPj4gSXQgc2VlbXMg
dGhlIFVTQiBwb3dlciByZXF1aXJlbWVudHMgdmFyeSBhY3Jvc3MgcGxhdGZvcm1zLCBhbmQgdGhl
Cj4gPj4gMjE4MDAgwrVBIGxvYWQgZm9yIHZkZGEtcGh5IGV4Y2VlZHMgdGhlIElwayByYW5nZSBp
biBtb3N0IGNhc2VzLgo+ID4gSXBrIGJlaW5nID8KPiAKPiAKPiBJUEs6IEluc3RhbnRhbmVvdXMg
UGVhayBDdXJyZW50Cj4gCj4gCj4gPj4gSSBhbHNvIHRlc3RlZCByZW1vdmluZyB0aGUgbG9hZCBz
ZXR0aW5ncyBmb3IgVVNCK0RQIFBIWSwgYW5kIERQIHN0aWxsIHdvcmtzIGZpbmUuCj4gPiBJdCBt
b3N0bHkgd29ya3MgZWl0aGVyIGJlY2F1c2Ugd2UgZG9uJ3QgYWxsb3cgbW9kZSBzd2l0Y2hpbmcg
b24gb2xkZXIKPiA+IHBsYXRmb3JtcyAoeWV0KSBvciBiZWNhdXNlIHNvbWVib2R5IGVsc2UgaGFz
IGFscmVhZHkgdm90ZWQgYW5kIHRoYXQgdm90ZQo+ID4ga2VlcHMgdGhlIHJlcXVpcmVkIG1vZGUu
Cj4gPgo+ID4gQXMgeW91J3ZlIHN0YXJ0ZWQgbG9va2luZyBvbiBzcGVjaWZ5aW5nIHByb3BlciBj
dXJyZW50IGxvYWQsIHBsZWFzZQo+ID4gZmluaXNoIHRoZSB3b3JrLgo+IAo+IAo+IERpc2N1c3Nl
ZCB3aXRoIGNoaXAgdmFsaWRhdGlvbiBhbmQgcG93ZXIgU1cgdGVhbXMuCj4gCj4gVGhlIHBvd2Vy
IGdyaWQgdGFibGVzIGFyZSBwcmltYXJpbHkgdXNlZCB0byBlbnN1cmUgZWFjaCBtb2R1bGUgcmVj
ZWl2ZXPCoAo+IHRoZSBjb3JyZWN0IHZvbHRhZ2UsIGFuZCB0aGV5IGRlZmluZSB0aGUgSXBrIGZv
ciBlYWNoIHN1Ym1vZHVsZS7CoAo+IAo+IFdoaWxlIHRoZXkgZG9u4oCZdCBzcGVjaWZ5IHJlY29t
bWVuZGVkIHJlZ3VsYXRvciBsb2FkIHZhbHVlcywgdGhlIElwayB2YWx1ZXMKPiByZWZsZWN0IHRo
ZSBleHBlY3RlZCBwb3dlciBkb21haW4gc3RyZW5ndGggYW5kIGNhbiBoZWxwIGVzdGltYXRlIHRo
ZSB2b3RpbmcKPiBzdHJlbmd0aCBuZWVkZWQgZm9yIGVhY2ggc3VwcGx5Lgo+IAo+IFNpbmNlIHJl
Z3VsYXRvciBsb2FkIGlzIG1haW5seSB1c2VkIGZvciB2b3RpbmcsIEnigJlsbCBkZWZpbmUgaW5p
dF9sb2FkX3VBIGluCj4gdGhlIG5leHQgcGF0Y2ggYmFzZWQgb24gZWFjaCBTb0PigJlzIElwayB2
YWx1ZXMgdG8gYmV0dGVyIGFsaWduIHdpdGggaGFyZHdhcmUgZXhwZWN0YXRpb25zLgoKSWYgdGhl
IElwayBpcyBkZWZpbmVkIHBlciBtb2R1bGUsIHRoZW4gaXQncyBmaW5lLgoKLS0gCldpdGggYmVz
dCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
