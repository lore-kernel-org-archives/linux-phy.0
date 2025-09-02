Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACDA1CA1009
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 13:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrWU4iYC2mTvnA/cnBWSRU23OLF6xXZ7cLLSurgU2tw=; b=RdHJPazER+gb3K
	QyAvo6vf+k3OUryUnoUwdiN75lerZpjuTTWMDv/4dTQGoSfKqx/bXUXqJnU4eQ+F5CMvMKbInhn7y
	hlpGllAk7zMuoO/7V8XcLbcvcBpTnXzwGapZSQ5ey/aNU+RBmoVgwAcoerOKb3WLmFfRe8piiOzXm
	PR2Tib6kZe2S2NyphfxjaRed40MxmPjbARp1B0GH8ySGbwwuuWrYajPe1A2eGsbTD1FBDV2Gnrjkb
	LWdgnUTslRYQrSiRKu7kKuci3yUIt9gENAQkWbfjVNMLz0f4CNANNw/YF0a+gfbgxM/fOawRNR4k6
	z0GkEimS8ATFu8troICg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utRFb-000000006ic-1Acn;
	Tue, 02 Sep 2025 13:40:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utOTV-0000000GkDu-4242
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 10:42:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822XGlC031614
	for <linux-phy@lists.infradead.org>; Tue, 2 Sep 2025 10:42:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8HGSFKsLXaVM0YQCxvDcTSEB0RtFGcIdJeQwMuf7cA0=; b=k5FGj8BcmA1eiPhp
	bQChXRO2Bur6Fh3Abwsc5WbKS43zZtdYjhR+gVXcxZ8iE6izst9b4mEIr4tocXqH
	gpM64rn8Tk2zuPKnVTwj2T+KwYHN2nWSJWvVBjBXxJ7v16hMdMGDa0Iag5jZFcML
	nWKtyXfjdbGGxEcxHVW5kkIMiVnJ86XEXqEO0z0ptexxMh0JMah1q0PFDaPzfGM0
	RQhtKehrck1xSC95qAtKUxdiPuJUr5Pr1uf7K1Y4pZyGaEkPuQlemMsoFhhtIZmw
	XhoULg+Uj0XEpri08k9zaukT3nCuBlgHzFsTzMFezCjVacu7UbRzYUDBXp364Y5e
	atzo+g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48wqvw97tg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 10:42:52 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109af71a5so20235791cf.1
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 03:42:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756809771; x=1757414571;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8HGSFKsLXaVM0YQCxvDcTSEB0RtFGcIdJeQwMuf7cA0=;
        b=G2wClkgq5MxMU0ZvpLN4lkFi2KwUNJfug/gH5JsvfSOyqntDrNFc6w6AGRx6uJ7iV5
         zkILvL25VRKyjSEs/Sgj1Z6uS2hfcxWt+QPI2nleY3RbzKXFRbyzXoaNFMVfs1liCPMZ
         s0bGnNOU5GYyS+1PcYgnFocD40o/NK9ePflKMiGr1q40Yebm03Y5whJijydU7UbNZLrJ
         TO6vXNyB7H5LFQ5WCw9c3clO64CmAo03W2j8fGcUFPM4cBIYcz81l9xN19KTMw/WFXjD
         gzWKC1EMGXl7TRgoou3BHNNIi57HvbIWonizS+8vejMM9jh0CsukWpe2VTzEHXgNh9KK
         MlQg==
X-Forwarded-Encrypted: i=1; AJvYcCX2K++Rw4K8vDVREKt7UPyWT4q1fEGLgR9b30ceWsqOvTC8EkxmW7ryHuF1xcUIJ2okngMIvX4nDg4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOhObq5jFIsTuv3MPxWRPE051utzBZFye0gtU8PrQDlgZyNfGI
	+kDizTxRD/MLJk4GBPkFaStt2p/0sCMqtK+sTeNBJyV4sTA/LkiR3Z3HLDK+mpklGkiSQq5q91p
	gfhC39qRQPNUNP57DjQAWEVg09oO8ke4TNwqep0rSR1+W9pK36hC+Gos9lnDnbnzIMIoX
X-Gm-Gg: ASbGncvEfZ0HXxScdpiNpNkoTMXoy9MBQOpA+5LtB80RaoyU9slIX6ekn+JbOUbK6WU
	Z9WWmcOr3leOy4dt35kdGPKYFITEbh16O/YCtoHn6dB1XLWZ/TcBXvsIot5cuVtdUguBZqPVKKh
	eTaWwJP79hSeQIA1MM4H4MIFkT+0GPgcVO8N0fTkMaYdPtEJsshIdmgpnefpTyqKIlNAApjg5w/
	wmP6rJZ49QQjwAQ7m4LAl5Q2r8GPVc0i/SJcinsGeVc/2ud23/MzR8hs02kRBVk+G9DeMWzHMzw
	9nYoKl6sworUBBmTP4ThDTmg4W7EQeZSHVYPwJ5eqNdUsXtyW4WttE1qQvEwq3OVeKqdWOra7bu
	QMlCAbrPq0jeAlgblan5Z9Q==
X-Received: by 2002:ac8:58ca:0:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b30e90634emr127554401cf.3.1756809770632;
        Tue, 02 Sep 2025 03:42:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIa+zdu/DvCI2hhATthcW4/zvfigbUW8Sknvl3mmHIrbuZ2hMWV/w4jclDKRuy1HZUPW0xbA==
X-Received: by 2002:ac8:58ca:0:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b30e90634emr127554151cf.3.1756809769909;
        Tue, 02 Sep 2025 03:42:49 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc4bbc6bsm9385161a12.29.2025.09.02.03.42.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:42:49 -0700 (PDT)
Message-ID: <f49b34be-89d3-498d-8b85-ff6b0be01acf@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 12:42:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
 <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
 <28b33851-24eb-428f-b046-b145342fd982@oss.qualcomm.com>
 <75f8789d-9d97-49d9-97b0-908a5692c325@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <75f8789d-9d97-49d9-97b0-908a5692c325@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAyMDAyNCBTYWx0ZWRfX12QHsKU+ch90
 ENY0zg/1AC7xlqdV1rYI3rrjp6WvYNl8agPpxGEhB0hQqEKJSWPUfT6RrEC8IsVoq60xU8epXGi
 zp7bvJbD1Y+v/xkOc9/gz8o6jqNXDEngX7jctgzuNa7PvoIQvCPZwbMnYUt9vGtT8YAchU3mZfJ
 uchJv8FyDOx9abZpuevofU4yNuuRMjvDI7OaUrmah16dCY+Or8NUhANZVxZFg2butX2A0+O9EnO
 EVXuPVrfwjMeY62ePbF5dzXU4xt6GkbeKMXJ4FRlOVUeHG+7YgkVwdLqfR4+5ueFw0FTaXLAe1f
 qNZcfAHvz4AMLVQSfAdpsvk9kBdd1xKky0/Lo+QVNtmRgONpG07ho7U8Kef7wOzOTBTS9DvN0cU
 RSzNRG4A
X-Authority-Analysis: v=2.4 cv=WKh/XmsR c=1 sm=1 tr=0 ts=68b6ca2c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=zKpf_v0BVtz8pCFJhw8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: XMpUtwEHk1JVhZx0Lkqp2_yzUS1bx64x
X-Proofpoint-ORIG-GUID: XMpUtwEHk1JVhZx0Lkqp2_yzUS1bx64x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509020024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_034254_008275_3EEA47C7 
X-CRM114-Status: GOOD (  21.19  )
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

T24gOS8xLzI1IDI6MzIgUE0sIFhpYW5neHUgWWluIHdyb3RlOgo+IAo+IE9uIDgvMjgvMjAyNSA3
OjA1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+PiBPbiAyOC8wOC8yMDI1IDA3OjUxLCBY
aWFuZ3h1IFlpbiB3cm90ZToKPj4+Cj4+PiBPbiA4LzIwLzIwMjUgNjoxOCBQTSwgRG1pdHJ5IEJh
cnlzaGtvdiB3cm90ZToKPj4+PiBPbiBXZWQsIEF1ZyAyMCwgMjAyNSBhdCAwNTozNDo0M1BNICsw
ODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+Pj4gQWRkIERpc3BsYXlQb3J0IGNvbnRyb2xsZXIg
Zm9yIFF1YWxjb21tIFNNNjE1MCBTb0MuCj4+Pj4+IFdoaWxlIFNNNjE1MCBjdXJyZW50bHkgc2hh
cmVzIHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gYXMgU0M3MTgwLAo+Pj4+PiBpdHMgaGFyZHdhcmUg
Y2FwYWJpbGl0aWVzIGRpZmZlci4gRXhwbGljaXRseSBsaXN0aW5nIGl0IGVuc3VyZXMgY2xhcml0
eQo+Pj4+PiBhbmQgYXZvaWRzIHBvdGVudGlhbCBpc3N1ZXMgaWYgU0M3MTgwIHN1cHBvcnQgZXZv
bHZlcyBpbiB0aGUgZnV0dXJlLgo+Pj4+IEkgYXNzdW1lLCBpdCBoYXMgbm8gTVNUIHN1cHBvcnQu
IEFtIEkgcmlnaHQ/Cj4+Pgo+Pj4KPj4+IMKgRnJvbSBzbTYxNTAgaXBjYXQsIEkgZm91bmQgTVNU
LXJlbGF0ZWQgcmVnaXN0ZXJzIGFuZCBwaXhlbDEgY2xrwqBkZWZpbml0aW9uLgo+Pgo+PiBUaGVu
IHBsZWFzZSBkZXNjcmliZSBNU1QgYXMgdGhlIG1haW4gZGlmZmVyZW5jZSBiZXR3ZWVuIFNNNjE1
MCBhbmQgU0M3MTgwICh3aGljaCBkb2Vzbid0IGhhdmUgTVNUKS4KPj4KPj4gQWxzbyB0aGlzIG5l
ZWRzIHRvIGJlIHJlYmFzZWQgb24gdG9wIG9mIHRoZSBNU1QgYmluZGluZ3MuIEkndmUgcGlja2Vk
IHVwIHRoZSBsYXRlc3QgcG9zdGVkIHJldmlzaW9uLCBidXQgYmFzaW5nIG9uIHRoZSBvbi1saXN0
IGRpc2N1c3Npb24gSSBtaWdodCBuZWVkIHRvIGRyb3AgaXQgYW5kIHBvc3QgYW5vdGhlciBpdGVy
YXRpb24uwqAKPj4KPiAKPiBXb3VsZCB5b3UgcHJlZmVyIEkga2VlcCB0aGUgY3VycmVudCBwYXRj
aCBhbmQgdXBkYXRlIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUKPiBNU1QgY2FwYWJpbGl0eSBkaWZm
ZXJlbmNlIHdpdGggU0M3MTgwIGluIHRoZSBjb21taXQgbWVzc2FnZSwgb3IgcmViYXNlIG9uCj4g
eW91ciBzZXJpZXMgYW5kIHVwZGF0ZSB0aGUgZHQtYmluZGluZyBhY2NvcmRpbmdseT8KPiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA4MjktZHBfbXN0X2JpbmRpbmdzLXY3LTAtMmIy
NjhhNDM5MTdiQG9zcy5xdWFsY29tbS5jb20KPiAKPiBTaW5jZSBNU1Qgc3VwcG9ydCBpcyBub3Qg
eWV0IG1haW5saW5lZCBpbiB0aGUgRFAgZHJpdmVyLCBldmVuIGlmIEkgcmViYXNlCj4gbm93LCB0
aGUgZmluYWwgaW1wbGVtZW50YXRpb24gbWF5IHJlcXVpcmUgcmVkZWZpbmluZyBtc21fZHBfZGVz
YyBmb3IKPiBTTTYxNTAgaW4gYm90aCB0aGUgZHQtYmluZGluZyBhbmQgdGhlIGRyaXZlciBvbmNl
IE1TVCBsYW5kcy4KCmR0LWJpbmRpbmdzIG11c3QgZGVzY3JpYmUgdGhlIGhhcmR3YXJlIHJlZ2Fy
ZGxlc3Mgb2YgdGhlIGN1cnJlbnQgZHJpdmVyCmZ1bmN0aW9uYWxpdHkgKHdoaWNoIGlzIHVuZm9y
dHVuYXRlbHkgc29tZXRoaW5nIHdlJ3ZlIG5vdCBwYWlkIHN1ZmZpY2llbnQKYXR0ZW50aW9uIHRv
IGJlZm9yZSBhbmQgd2UncmUgbm93IHVudGFuZ2xpbmcgc29tZSBtZXNzeSBmaWxlcy4uKQoKS29u
cmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
