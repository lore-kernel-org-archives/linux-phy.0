Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69694C83F0A
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 10:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gna5w3BFGpqQqE36L45ykwqLs5plTVvBn3IbaVHTfhc=; b=HPhkkoRph7ndHi
	6BhFoO3ng/b7jk1WwA0yD9sWCDU7rcSXiKf1tqpzexQn1Cvd3T6d3cRkLNiu6qvsmxdZL4oPJNb7L
	ilLu8mpABjDvbLMAxbm21DanD1TDapwYIKVWXsYGSyQVDAkZXJP68YcCYtKhjbL/N3HnipFV+cJWV
	1Ol89vSKbc+vaPS/MrqZeyXXlfnSyCcjDyXQXtx8G/2HFRBy7mciRzv2vvAb4Ol5jgwt/OfcyubUa
	c6z4War7yccMuhXlkIVAkslIGB54mO0oJ3XF47coE48nvn516lCgjqsQX6b7+3iPnega6OEEidRMu
	qIX66xMi9xJQYyB2mGlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSI7-00000008Lu5-3xV5;
	Wed, 09 Jul 2025 10:44:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQuW-0000000860h-1aD1
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 09:16:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5697ld3n023230
	for <linux-phy@lists.infradead.org>; Wed, 9 Jul 2025 09:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cv1BCk8MYMc74KhkADwnTl/g1Y3GZM+AUyi9qevFM4U=; b=MD04QiCbcyupDjwl
	uMpXji2CFwUbWFMp4gW7xRrfwrZxp4LFM7WwubrPVypwEkJ4RNX5iWmon+pTowUp
	JSmny1owcMo9YZW1vft36dB9wAFi2pcXdOLdReDPrdxwxGwAKAmeqRlidX/FTtSw
	p1od8/Z6bq4ShAqeq9qtDW+4MDxabq/a2vZJf0Wtl+ubakfRm42HMYLSTsI6iIyP
	pnEhGuFJ9ArUQcl2QMnMEXzZPgX6xjC5Sj2k+zbRX7SmHTmM+9RzntQeSv7km1K5
	dxDP2hvWQSW7EetVn/i7lzhakHkyVMw6vpYV4yYGjybvf6aSVka0Kf8ILF9f3AqI
	RtKmNQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smbnr92e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 09:16:13 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3130b8246c8so1389869a91.3
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 02:16:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052572; x=1752657372;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Cv1BCk8MYMc74KhkADwnTl/g1Y3GZM+AUyi9qevFM4U=;
        b=c26dmnAf4Tw5MbkyBOfXxH3nM8EcMbR5JtAoMhbxIFuIhl9SkUxnsOV9sEwUxFROGr
         LmuG4MND14ZznD5LBaCuwXYP2Fyn7OlJNwLPQY0662agsUM0oeVVigYsCY+S9rC+c6Iq
         3KMyxSEZwnreJokZviDauyYTRHYPxIXw5TiSQWuC8dDWmGEwqKVvxd5TxycLe4OleBm3
         Upvse2INRASpasDYxwgoiuOqd7rRerxDyW27hC/Z3OKffaVIjAHORiS4OqGaStcHGIXK
         tENqVmDCKFBvTE9uWo8VzpGF5rANvV9vd1S58MFTtQpyICcyicZLdvKGxRFzO2UU5AUg
         XWaw==
X-Forwarded-Encrypted: i=1; AJvYcCWP4+8HyyyAtCfvokYKlTESYBTrxWFVAvdVId5EX0ciLpuA1Oa6EH7d1pqDkOIogaBpzwhWOMV0i/o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWbuWkotUp/I6XO/Y+J2/VA4u5a54dBLcs+S03zSEENLYylOv/
	4ZlqlFDfdWturANptrj8HI7N43CdBBqeWmLNoK85lO75FW6Wzq0xfkPXY+fj9Qc9vse86eMehmu
	FcReQNEELdtbgTi2KarVCDrI6rIuPXV1mB0FFXljY7hbRFkxnCPhBieoNtdDb04FTgT5v
X-Gm-Gg: ASbGncu1m69LQhx+9bkzjUAKl/+EYAmfqX+63DvvQ/g0KeeK3jkwLuyoG+E4ERB7XkS
	pjA0wioYVSO6bUDfSUQTH6NrzhFlErY3GX9jvYPixteDEnF3oCZr0R7XRcJ8HhvmZLvlHcjCj9P
	DecurRmgyd/kMOEkV4GLLoln2oU/DiPIz+ZDE2ctvSe5GWpf4j1vIn3PU6sGOAp1Ks1xwv96Qw5
	INAKvZN3vKT3UTmK0XVY0/3h88rSKyxeTHUPL7iUjO2IRgsOUjJZ3IxeBSJGZbc2G9fEDh3wnzD
	k+i2eNiUxC8aHse61Qd5FBXsiRqRIUvZE/hrVlvkYXr06LMCKpDk13E6IPRN+9uOMK43fOVZKII
	FLAb8VzpNDZD+
X-Received: by 2002:a17:90b:35ca:b0:312:25dd:1c8b with SMTP id 98e67ed59e1d1-31c2fcb0251mr1322497a91.2.1752052571538;
        Wed, 09 Jul 2025 02:16:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdfQoEh/GXWJ6Pu0rY5iE3WeMtosEwrdpewcGf70D85+7o6PThtirQuZHfaVGHEd9tQdVP5w==
X-Received: by 2002:a17:90b:35ca:b0:312:25dd:1c8b with SMTP id 98e67ed59e1d1-31c2fcb0251mr1322454a91.2.1752052571046;
        Wed, 09 Jul 2025 02:16:11 -0700 (PDT)
Received: from [10.133.33.178] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c30067a55sm1502877a91.14.2025.07.09.02.16.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 02:16:10 -0700 (PDT)
Message-ID: <d427de7d-76ac-4e5b-b79a-3b7638a8e7fc@oss.qualcomm.com>
Date: Wed, 9 Jul 2025 17:16:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        dmitry.baryshkov@oss.qualcomm.com
Cc: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
 <quic_abhinavk@quicinc.com>,
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
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
 <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
        quic_xiangxuy@quicinc.com
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
 <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
 <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
 <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
 <b4e1ea54-ff3c-408e-8716-f48001ec9113@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <b4e1ea54-ff3c-408e-8716-f48001ec9113@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA5MDA4MyBTYWx0ZWRfX0p17oLUmZs33
 zzrihDmlC18tcbJvJjbyvuNSa2Ui5gD7ysVmd0+OjGNxdmRvrpGH7X+d2hTa0v5EgoQutZwQeFX
 L3rc0qVqIvYdhBr9vAFvwFWiEz7NVdKEvhJbIsjuwWDAFBYMmicev7gbB+foNLWRRoGjJaLFJVO
 ecXcc0QD6XqqvBCAo5Ygcc1vgITah9Byd4LCXjaXOv+8T5LQMokEPLZs65+88fp542f+2bIv/42
 MUU36vjSt5pMdUHe05bh3QES2cy6j8OG6IJ8i1C+5QFiR6AngCqdhdbnI9l/h+gH1iCbXUEVTRp
 dWHZDPzbm1dPRdoingTGFhmQrWwU3xpBQfZmNTuOQH67y4Kx2o8odcXrUTOICVl/LlRmDFQBRmz
 i8Uz80bm2qYgjk3vWGVMoykN+7QVyLIbcUzz96Cn/1XLwWF45nYU5lIrbiuYwwgZl3yedkxQ
X-Authority-Analysis: v=2.4 cv=QM1oRhLL c=1 sm=1 tr=0 ts=686e335d cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=M9roUVu_bSbsc9sLP4sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: kY0HckhTYROzApWY163hAvk5DY_-kvDj
X-Proofpoint-GUID: kY0HckhTYROzApWY163hAvk5DY_-kvDj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-09_02,2025-07-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507090083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_021616_420921_4E9F76A0 
X-CRM114-Status: GOOD (  16.88  )
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

CgpPbiA1LzI4LzIwMjUgNDo0OSBBTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAxMi8zLzI0
IDM6MDcgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIFR1ZSwgRGVjIDAzLCAyMDI0
IGF0IDA0OjEzOjIyUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiAx
MS8yOS8yMDI0IDk6NTMgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4gT24gRnJpLCAy
OSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVpY2luYy5j
b20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBBZGQgYSBtZWNoYW5pc20gdG8gcmV0cnkgTGluayBUcmFp
bmluZyAyIGJ5IGxvd2VyaW5nIHRoZSBwYXR0ZXJuIGxldmVsCj4+Pj4+IHdoZW4gdGhlIGxpbmsg
dHJhaW5pbmcgIzIgZmlyc3QgYXR0ZW1wdCBmYWlscy4gVGhpcyBhcHByb2FjaCBlbmhhbmNlcwo+
Pj4+PiBjb21wYXRpYmlsaXR5LCBwYXJ0aWN1bGFybHkgYWRkcmVzc2luZyBpc3N1ZXMgY2F1c2Vk
IGJ5IGNlcnRhaW4gaHViCj4+Pj4+IGNvbmZpZ3VyYXRpb25zLgo+Pj4+Cj4+Pj4gUGxlYXNlIHJl
ZmVyZW5jZSBjb3JyZXNwb25kaW5nIHBhcnQgb2YgdGhlIHN0YW5kYXJkLCBkZXNjcmliaW5nIHRo
aXMgbG93ZXJpbmcuCj4+Pj4KPj4+IFBlciBEaXNwbGF5UG9ydCAxLjRhIHNwZWNpZmljYXRpb24g
U2VjdGlvbiAzLjUuMS4yIGFuZCBUYWJsZSAzLTEwLCB3aGlsZSB0aGUgc3RhbmRhcmQgZG9lc24n
dCBleHBsaWNpdGx5IGRlZmluZSBhIFRQUyBkb3duZ3JhZGUgbWVjaGFuaXNtLCBpdCBkb2VzIHNw
ZWNpZnk6Cj4+Cj4+IEFueXRoaW5nIGluIERQIDIuMT8KPj4KSW4gdGhlIERQIDIuMSBzcGVjLCBt
YWlubHkgb24gc2VjdGlvbiAnMy42LjcuMiA4Yi8xMGIgRFAgTGluayBMYXllciBMVFRQUiBMaW5r
IFRyYWluaW5nIE1hbmRhdGVzJywgZGVmaW5lZCAnTFRUUFIgc2hhbGwgc3VwcG9ydCBUUFM0Jy4K
VGhlIG90aGVyIHBhcnRzIHNlZW1zIHNpbWlsYXIgdG8gdGhlIDEuNCBzcGVjLgo+Pj4gLSBBbGwg
ZGV2aWNlcyBzaGFsbCBzdXBwb3J0IFRQUzEgYW5kIFRQUzIKPj4+IC0gSERSMi1jYXBhYmxlIGRl
dmljZXMgc2hhbGwgc3VwcG9ydCBUUFMzCj4+PiAtIEhEUjMtY2FwYWJsZSBkZXZpY2VzIHNoYWxs
IHN1cHBvcnQgVFBTNAo+Pj4gV2hpbGUgdGhlc2UgY2FwYWJpbGl0aWVzIGFyZSBleHBsaWNpdGx5
IGRlZmluZWQgRFBDRCBmb3Igc2luayBkZXZpY2VzLCBzb3VyY2UgZGV2aWNlIGNhcGFiaWxpdGll
cyBhcmUgbGVzcyBzdHJpY3RseSBkZWZpbmVkLCB3aXRoIHRoZSBtaW5pbXVtIHJlcXVpcmVtZW50
IGJlaW5nIHN1cHBvcnQgZm9yIFRQUzEgYW5kIFRQUzIuCj4+PiBJbiBRQ1M2MTUgRFAgcGh5IGlz
IG9ubHkgc3VwcG9ydGluZyB0byBIQlIyLCB3ZSBvYnNlcnZlZCBhIGNyaXRpY2FsIGludGVyb3Bl
cmFiaWxpdHkgc2NlbmFyaW8gd2l0aCBhIERQLT5IRE1JIGJyaWRnZS4gV2hlbiBsaW5rIHRyYWlu
aW5nIGF0IFRQUzQgY29uc2lzdGVudGx5IGZhaWxlZCwgZG93bmdyYWRpbmcgdG8gdGhlIG5leHQg
bG93ZXIgdHJhaW5pbmcgcGF0dGVybiBzdWNjZXNzZnVsbHkgZXN0YWJsaXNoZWQgdGhlIGxpbmsg
YW5kIGRpc3BsYXkgb3V0cHV0IHN1Y2Nlc3NmdWxseS4KPj4KPj4gQW55IG90aGVyIGRyaXZlciBk
b2luZyBzdWNoIFRQUyBsb3dlcmluZz8gT3IgbWF5YmUgd2Ugc2hvdWxkIGJlCj4+IHNlbGVjdGlu
ZyBUUFMzIGZvciBIQlIyLW9ubHkgZGV2aWNlcz8KPiAKVGhpcyBsb2dpYyBpcyBwb3J0aW5nIGZy
b20gcXVhbGNvbW0gZG93bnN0cmVhbSwgCkZvciBvdGhlciBkZXZpY2UsIG9ubHkgZm91bmQgaW4g
c29tZSBvbGRlciBUeCBjaGlwcyBsaWtlIGk5MTXvvIhpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJu
KSB1c2VkIHRoZSBtYXhpbXVtIGhhcmR3YXJlLXN1cHBvcnRlZCBwYXR0ZXJucywgYnV0IG5vdCBs
b3dlcmluZy4KCkFjY29yZGluZyB0byB0aGUgZGVzY3JpcHRpb24gaW4gRFBDRCB0YWJsZSAyLTIz
MiAwMDNoLCBGcm9tIHRoZSBEUCBzcGVjIHBlcnNwZWN0aXZlLCBpdCBhcHBlYXJzIHRoYXQgYWxs
IHN1cHBvcnRlZCBjYXNlcyBzaG91bGQgcHJlZmVyYWJseSBhZG9wdCBUUFM0LCBhcyBpdCBpcyBt
b3JlIHJvYnVzdC4KJ0RQUlhzIHNob3VsZCBzdXBwb3J0IFRQUzQgYW5kIHNldCB0aGlzIGJpdCwg
cmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZSBEUFJYIHN1cHBvcnRzIEhCUjMgYmVjYXVzZSBUUFM0
IGlzIG1vcmUgY29uZHVjaXZlIHRvIHJvYnVzdCBsaW5rIGVzdGFibGlzaG1lbnQgdGhhbiBUUFMy
IGFuZCBUUFMzLgowID0gVFBTNCBpcyBub3Qgc3VwcG9ydGVkLgoxID0gVFBTNCBpcyBzdXBwb3J0
ZWQgKHNoYWxsIGJlIHN1cHBvcnRlZCBmb3IgZG93bnN0cmVhbSBkZXZpY2VzIHdpdGggRFBDRCBy
MS40LCBleGNlcHQgZm9yIGVEUFJYcykuJwoKQWx0aG91Z2ggbWF4aW11bSBjYXBhYmlsaXR5IG9m
IFFDUzYxNSBpcyBIQlIyLCBidXQgdGhlIGFjdHVhbCBwYXR0ZXJuIHN1cHBvcnRzIFRQUzQuIApG
cm9tIHB1cmUgZGVzaWduIHBlcnNwZWN0aXZlLCBpdCB3b3VsZCBiZSBjbGVhbmVyIHRvIGRyb3Ag
dGhpcyBsb3dlcmluZyBpbiBuZXh0IHBhdGNoLiAKPiBCdW1wLCB0aGlzIHBhdGNoIGxvb2tzIGlu
dGVyZXN0aW5nIGFuZCBJJ2QgbGlrZSB0byBzZWUgaXQgcmV2aXNpdGVkIGlmCj4gaXQncyBjb3Jy
ZWN0Cj4gCj4gS29ucmFkCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
