Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9507D4A613
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 08:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHbV/peAj8H4MWWmHI+E1ElS8gNmYLChhde8mjdEBc4=; b=WhmVWWASItqVqR
	OXF3P5oUWj3+kEA8s6XFvnnLNBbrv9zmFzqSPwRLcQMJ+KOyPTPFpM+rj7rCZrtBoczzvwFeAoT4R
	Zkv3WfZ71qcHR9t0+7b9gXfwhYWvVl5AWQHmzuTKPk3tV1ZwPrigTEKyWeLoYewVFcpoFWVYrea2j
	vWW+qKF4C3C7gcy7B640yEqyjoP0nBEJWmQ4QKznh0/ihjXwDV1m7/mHgwwly7HbaeMAObDeTAz2D
	Fv9TPpPpH1Sb07gFUF1mOAYVDLnQU1T7e+orqY7KpS8pu8lX8ZLOzNPwt4xW7/XARqSJbuRW0Zx2P
	RvV8cMrkSk0lyKLTkfhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfP1-0000000DmlH-2Ell;
	Fri, 16 Jan 2026 08:41:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfOy-0000000DmkX-3Rxq
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 08:41:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8KWX13715045
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 08:41:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MqrY6babuG+epsa1BHzs5F1/SVDAj0TVi7qsEj5Lnts=; b=ftNsvpSS5Janr3rv
	Xy4EnXSPVwrZqlvr+LxNIyOM1YTMK6rbnux1MqHONQXT8yk5csHEPKHR16yM3ev5
	nd+qM+5nzehJJMwNqFMpdDz8Miy3HQ55ujgj3+rv9D0b82F2/I6D/fn9A1ISsq6N
	ha/lsLaAQcDx2Tm+hOqz3jfZ+SyUZQvz7PxBkKfczsRq2891Ak/haAsm+NKnovrf
	2Mto88kXzQUnGXeDqGtDdj40USQcgg2dU4QiKwJuWZY0uFHkTM1r8HK/EnPzKtgP
	rkMtARPoTexvYRbOzjYaQ8HE28RkV1wA2YjX+MUh9nRL/thINyAvDgWs2zU/q2nw
	Ui5Smw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96p9erb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 08:41:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a4c50fe5so396834985a.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 00:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768552911; x=1769157711; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MqrY6babuG+epsa1BHzs5F1/SVDAj0TVi7qsEj5Lnts=;
        b=DTdA8maedGKO0X/9biO8d8FXkodZ+5vg/TgNDL/9KQZZHkZ85ORYNpB9ePJKT3yUK1
         qxBvx9bwOVsChjYg8TBQ3ytFPm5WggQHra8+BubBrcEHWLqhs3k/smqOBg5AQXJUfxvU
         Duc0V9qINdTA8+ylLNCvWP7kbxBdWeAc83SIlR+DsAXKa31v0b5EInGrm08LrDGWWwLL
         t+x8imzGBWRoPm0FGk6ytOYLitkN4nY9CcmfBtWccBfGcA5HSraYNFc1zOWg6BQ4Zfnm
         K7Msby8CAwKj7Hp2eA7RT5VmBMpGFnJJU2PlO1DMslA305g6q3bYKDYyQ0wejbcvg1op
         AJRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768552911; x=1769157711;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MqrY6babuG+epsa1BHzs5F1/SVDAj0TVi7qsEj5Lnts=;
        b=KAwmNz7bgb0N7VsWv3gDvG5Hf2UtD5y3rL1W8Gpkk4VnyR7FxcCgQr37qATXjBhJC0
         VF08aY3PMWGeZleONkuxtrOwT/5ltqezqRfM7d5SWVy7vIQAWFRcf7SXa5PRpojogQnx
         SfnFYJecG26zjC+D7igPl9ul+sQtBziawpuwjbZ0csS7h82XcWjrfQ8TBDUCb/9VHkE0
         bvKjAOJa9vJNDXp+QiRImSnemszY7xB3a0IEoB8+Pd3RpbJZX9YeyEnpUwjcTRBR1Grh
         3x2nHtkjONkZXOnTvUtGQIbebFSyA7rFgVTY2w+NCvp1C2jEEWPPSfgPbOVov3ukmm46
         TeEA==
X-Forwarded-Encrypted: i=1; AJvYcCXnMirf2J7Hnun2ym7KeWiJ7qNDfkbY3TjrLjJ8Tf2SjLnnVj7yF61z1Eq7n3Fysz4ws9dFi+cKcEc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZLXO+EGK4DVncph2qh9QIXXuO6SiWrHEL1wZ5a/e4HxgelKsY
	nr+oD6hbNp2U/DC3Q1Qg85kDU2I71YYiGN0hPy2216rV6ri9cW9f9uLtEQpsApwFLq6Lh0uKXBp
	qbIJjz+SkiMEJO9cgTAShMqgF+8RL8pnCgUsOnb0KdbwN3hFo2lNFF2ZdD64vCUCu4IGC
X-Gm-Gg: AY/fxX7Kj9ljsN75/qNAaoMvLSuNrqHFIipmtNhUpkjBSOYyIB1d+xX2F4iwyQZ2xR7
	t1OZzsbJnMvpfIweeBNOKqn63xdU0VBq75zdruz7wXpLF1xoJZOIcIJ/yZV9ZgJGJ4BUS21bw2E
	+Zn04a/S6VDAYbUUISkKDihm4FSYG5UacdmtGXvi3fRQKK0gJuE1bHUyIbj3BUqbylJgRgmNVkh
	dP9nyuNapAuxVyFaQJboIbHwK7T/xWsyvkaRmCXBswMOY4BkQ1nAfg43MPEWhFdhJ7EXJSwMWCH
	9+LfmqOKGg8Soze26JoCIOi0kgaZfviWH4UZUKh405G9mRcSTCPbE3BzTQO5gdFsbPIMaqOdPSl
	txwDrRj/T2Ob4HDeCzkyf3DHBo26Sy3HjhTSt126sYrWj8NZ1U/112gTaSACixfV4O9q7ANVtoV
	XcFJlHvNcRndWOx2WyRpuFeqQ=
X-Received: by 2002:a05:620a:2a02:b0:8c6:a3ed:2f82 with SMTP id af79cd13be357-8c6a68d2f34mr294136085a.12.1768552911123;
        Fri, 16 Jan 2026 00:41:51 -0800 (PST)
X-Received: by 2002:a05:620a:2a02:b0:8c6:a3ed:2f82 with SMTP id af79cd13be357-8c6a68d2f34mr294134885a.12.1768552910596;
        Fri, 16 Jan 2026 00:41:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf352846sm568930e87.38.2026.01.16.00.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 00:41:49 -0800 (PST)
Date: Fri, 16 Jan 2026 10:41:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
Message-ID: <rffcbo7fxful5ciy5znmgdnrnoijeoyw3ysk7sxoop3pw4bnyw@httwc7pk4gks>
References: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
 <5187dc04-a1a1-4537-9c80-aaa100dd0033@oss.qualcomm.com>
 <33d57a53-93b4-4ea3-a7bb-0b2015501bad@oss.qualcomm.com>
 <ldl7floy6bi5d6svs45xsdgbgkgwxpvj4kuazzg3e6dxzm654l@l5pjud7mvcgu>
 <80411ac4-6143-4c2e-bc9e-20a734f15987@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80411ac4-6143-4c2e-bc9e-20a734f15987@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA2MyBTYWx0ZWRfX7HTWDt72vFos
 f0OlkpxPBoT0D2ki5CNtTtfjefQAJIVyaACruXGjKa6umBixV3PK/3nPc/f3YOloStKcfUsfcBq
 6YWB1N08cFKqYPef2nuIezVVOy2L8XFjEXeuZb6+VeFvRkvj4u70ShOjgklGMWv6eD23mMgesyr
 SdEMZpuuI+LPwQrplrKMFOd+nYY5y/7qADmeD5s7pN1sMurPJd2tzLcgsMMh9tf5Kk4+hlsmkQx
 /5UQGyI/NqcLXKHSumliqpCo1erE/lK1QbcR/sgRNgEhNoPCFltoi6z/DTByEDTxGP/cpqYLcHY
 QpV49L+kqJ7gKslCEqI1P5l/w2CG2Gfovece5lepr1+iKNcKejo0AeNVGmGKg6Bj2/4PnWvmwFL
 CZ9YmQhfyDYBBd0UpP71IixiKjCMD3QFjdkXzM32kwv1bPsgBh13VSnSmO1r/rlwPXOWaxFjReQ
 Lmo1SWQU71moWzQDD/g==
X-Authority-Analysis: v=2.4 cv=M7ZA6iws c=1 sm=1 tr=0 ts=6969f9d0 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=am5YAbE0vFZGFUSnBLEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: WiSKVbT2VRCQQcTilurawOcxkr0D4vVk
X-Proofpoint-ORIG-GUID: WiSKVbT2VRCQQcTilurawOcxkr0D4vVk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_02,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_004152_867268_9DB66AE7 
X-CRM114-Status: GOOD (  45.38  )
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

T24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMDQ6MTg6NDNQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDEvMTQvMjAyNiAyOjU1IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3Rl
Ogo+ID4gT24gVHVlLCBKYW4gMTMsIDIwMjYgYXQgMDg6MDQ6MDZQTSArMDgwMCwgWW9uZ3hpbmcg
TW91IHdyb3RlOgo+ID4gPiAKPiA+ID4gCj4gPiA+IE9uIDEvOS8yMDI2IDU6NTggUE0sIEtvbnJh
ZCBEeWJjaW8gd3JvdGU6Cj4gPiA+ID4gT24gMS85LzI2IDk6MzAgQU0sIFlvbmd4aW5nIE1vdSB3
cm90ZToKPiA+ID4gPiA+IEN1cnJlbnRseSwgdGhlIExlTWFucy9Nb25hY28gRFAgUEhZIG9wZXJh
dGVzIGluIERQIG1vZGUgcmF0aGVyIHRoYW4gZURQCj4gPiA+ID4gPiBtb2RlLiBQZXIgdGhlIFBI
WSBIUEcsIHRoZSBTd2luZyBhbmQgRW1waGFzaXMgc2V0dGluZ3MgaGF2ZSBiZWVuIGNvcnJlY3Rl
ZAo+ID4gPiA+ID4gdG8gdGhlIGFwcHJvcHJpYXRlIERQLW1vZGUgdmFsdWVzLgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBBZGRpdGlvbmFsbHksIHRoZSBIUEcgc3BlY2lmaWVzIHRoYXQgdGhlIExETyB2
YWx1ZSBzaG91bGQgYmUgc2V0IHRvIDAgd2hlbgo+ID4gPiA+ID4gaW4gRFAgbW9kZS4gVGhlc2Ug
bWlzY29uZmlndXJhdGlvbnMgY2FuIGxlYWQgdG8gbGluayB0cmFpbmluZyBmYWlsdXJlcyBvbgo+
ID4gPiA+ID4gY2VydGFpbiBkb25nbGVzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBZb25neGluZyBNb3UgPHlvbmd4aW5nLm1vdUBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiAgICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyB8
IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5n
ZWQsIDI0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyBiL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4gPiA+ID4gPiBpbmRleCAxM2ZlYWI5OWZl
ZWMuLjViMGQ3NzRiZDcxNSAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLWVkcC5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1lZHAuYwo+ID4gPiA+ID4gQEAgLTEyMiw2ICsxMjIsMTMgQEAgc3RhdGljIGNvbnN0
IHU4IGRwX3N3aW5nX2hicl9yYnJbNF1bNF0gPSB7Cj4gPiA+ID4gPiAgICAJeyAweDFmLCAweGZm
LCAweGZmLCAweGZmIH0KPiA+ID4gPiA+ICAgIH07Cj4gPiA+ID4gPiArc3RhdGljIGNvbnN0IHU4
IGRwX3N3aW5nX2hicl9yYnJfdjFbNF1bNF0gPSB7Cj4gPiA+ID4gPiArCXsgMHgwNywgMHgwZiwg
MHgxNiwgMHgxZiB9LAo+ID4gPiA+ID4gKwl7IDB4MTEsIDB4MWUsIDB4MWYsIDB4ZmYgfSwKPiA+
ID4gPiA+ICsJeyAweDE2LCAweDFmLCAweGZmLCAweGZmIH0sCj4gPiA+ID4gPiArCXsgMHgxZiwg
MHhmZiwgMHhmZiwgMHhmZiB9Cj4gPiA+ID4gPiArfTsKPiA+ID4gPiAKPiA+ID4gPiBGb3IgdGhl
c2UgcGxhdGZvcm1zLCBJIHNlZSA0IHRhYmxlcyBvZiBzZXR0aW5nczoKPiA+ID4gPiAKPiA+ID4g
PiAoTG93L0hpZ2gpIFN3aW5nL1ByZS1lbSBmb3IgKExvdy9IaWdoKSBIQlIKPiA+ID4gPiAKPiA+
ID4gPiBOb25lIG9mIHRoZW0gZXhhY3RseSBtYXRjaCB5b3VyIGNoYW5nZQo+ID4gPiA+IAo+ID4g
PiBFbW0sIHRoaXMgdGFibGUgaXMgaW4gTGVNYW5zIGVEUCBIUEcsIGhlcmUgYXJlIDYgdGFibGVz
LiA0IG9mIHRoZW0gdXNlIGZvcgo+ID4gPiBlRFAgbW9kZSBhbmQgcmVzZXQgMiB0YWJsZXMgdXNl
ZCBmb3IgRFAgbW9kZS4gSWYgbXkgdW5kZXJzdGFuZGluZyBpcwo+ID4gPiBpbmNvcnJlY3QsIHBs
ZWFzZSBjb3JyZWN0IG1lLiBUaGFua3Mgfn5+ID4gWy4uLl0KPiA+ID4gPiAKPiA+ID4gPiA+IC0J
bGRvX2NvbmZpZyA9IGVkcC0+aXNfZWRwID8gMHgwIDogMHgxOwo+ID4gPiA+ID4gKwlsZG9fY29u
ZmlnID0gIWVkcC0+aXNfZWRwID8gMHgwIDogMHgxOwo+ID4gPiA+IAo+ID4gPiA+IFlvdSdsbCBu
b3RpY2UgdGhhdCB0aGlzIGlzIGZ1cnRoZXIgd3JvbmcsIGJlY2F1c2UgZm9yIGVEUCwgaXQgc2hv
dWxkIGJlCj4gPiA+ID4gMHg4MSBhdCBsb3ctc3dpbmctaGlnaC1IQlIgYW5kIDB4YzEgYXQgbG93
LXN3aW5nLWxvdy1IQlIsIGFuZCAwIGF0IGJvdGgKPiA+ID4gPiBjYXNlcyBvZiBoaWdoLXN3aW5n
Cj4gPiA+ID4gCj4gPiA+ID4gUGxlYXNlIHNwbGl0IHRoZSBMRE8gY2hhbmdlIGludG8gYSBzZXBh
cmF0ZSBjb21taXQgYmVjYXVzZSBpdCB0b3VjaGVzCj4gPiA+ID4gbW9yZSBwbGF0Zm9ybXMKPiA+
ID4gPiAKPiA+ID4gPiBLb25yYWQKPiA+ID4gPiAKPiA+ID4gCj4gPiA+IFllcywgeW91IGFyZSBy
aWdodCwgaGVyZSBzZWVtcyBzb21ldGhpbmcgbm90IGNvcnJlY3QuIGkgd2lsbCBzZXBhcmF0ZSB0
aGlzCj4gPiA+IGNoYW5nZSBpbnRvIHNpbmdsZSBvbmUuSGVyZSBhcmUgc29tZSBwYXJ0cyBJIGRv
bid0IGZ1bGx5IHVuZGVyc3RhbmQgaGVyZS4KPiA+ID4gQ291bGQgeW91IHBsZWFzZSBwb2ludCBp
dD8gSG93IGRvIHdlIGtub3cgd2hldGhlciBpdCBpcyBpbiBsb3figJFzd2luZyBvcgo+ID4gPiBo
aWdo4oCRc3dpbmcuIEkgZGlkbuKAmXQgc2VlIGFueSBsb2dpYyBpbiB0aGUgY3VycmVudCBjb2Rl
IHRoYXQgZGV0ZXJtaW5lcyB0aGlzLgo+ID4gPiBBbHNvLCB0aGUgdmFsdWUgaW4gSGFtb2Egc2Vl
bXMgbm90IHNhbWUgd2l0aCBMZU1hbnMsaXQgaXMgMHg1MSBhbmQgMHg5MS4KPiA+ID4gCj4gPiA+
IFdoaWxlIGdvaW5nIHRocm91Z2ggdGhlIEhhbW9hIEhQRywgSSBub3RpY2VkIGEgcG90ZW50aWFs
IGlzc3VlLgo+ID4gPiAKPiA+ID4gICBzdGF0aWMgc3RydWN0IHFjb21fZWRwX3BoeV9jZmcgeDFl
ODAxMDBfcGh5X2NmZyA9IHsKPiA+ID4gCS5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y0LAo+
ID4gPiAJLnZjb19kaXZfY2ZnID0gZWRwX3BoeV92Y29fZGl2X2NmZ192NCwKPiA+ID4gCS5zd2lu
Z19wcmVfZW1waF9jZmcgPSAmZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZywuLi5JdCB1c2UKPiA+
ID4gZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZyBub3QgZWRwX3BoeV9zd2luZ19wcmVfZW1waF9j
ZmcsIGJ1dCBIYW1vYSByZWFsbHkKPiA+ID4gdXNlIGVkcC1wYW5lbCBoZXJlLi4gc28gZG9lcyB0
aGlzIHBoeSBjZmcgY29ycmVjdCBoZXJlPwo+ID4gCj4gPiBBbGwgUEhZcyBzaG91bGQgc3VwcG9y
dCBlRFAgYW5kIERQIG1vZGVzLCBzbyBtb3N0IG9mIHRoZSBjb25maWd1cmF0aW9uCj4gPiB0YWJs
ZXMgbmVlZCB0byBiZSB1cGRhdGVkL2ZpeGVkLiBJIHRyaWVkIGdvaW5nIHRocm91Z2ggYWxsIHRo
ZSB0YWJsZXMsCj4gPiBidXQgSSBuZXZlciBoYWQgdGltZSB0byBkbyBpdCBpbiBhIHNhbmUgYW5k
IGNvbXBsZXRlIHdheS4gQXMgeW91IHN0YXJ0ZWQKPiA+IGxvb2tpbmcgaW50byBpdCwgd291bGQg
eW91IHBsZWFzZSByZXZpZXcgcHJvZ3JhbW1pbmcgZm9yIGFsbCBjaGlwc2V0cwo+ID4gc3RhcnRp
bmcgZnJvbSBTQzgxODBYPwo+ID4gCj4gSSBkb24ndCBnb3QgdGhlIFNDODE4MFggUEhZIEhQRyBw
ZXJtaXNzaW9uIG5vdy4gb25jZSBpIGdvdCBpdCwgd2lsbCBjaGVjawo+IGl0J3MgY29uZmlndXJh
dGlvbiBhbmQgc2VlIHdoYXQgaSBjYW4gZG8uIEJ1dCBmaXJzdCBpIHdhbnQgdG8gY29ycmVjdCB0
aGUKPiBMZU1hbnMgYW5kIEhhbW9hIGNvbmZpZ3VyYXRpb24gYW5kIHBvc3QgdGhlIExETyBjaGFu
Z2UuIERvIHlvdSBtZWFuCj4gc3dpdGNoaW5nIGJldHdlZW4gdGhlIGVEUCBhbmQgRFAgbW9kZSB0
YWJsZXMgYmFzZWQgb24gaXNfZWRwLCBpbnN0ZWFkIG9mCj4gdXNpbmcgYSBmaXhlZCB0YWJsZT8K
CkJhc2VkIG9uIHRoZSBQSFkgYmVpbmcgdXNlZCBpbiB0aGUgZURQIG9yIERQIG1vZGVzIChpdCBp
cyByZWxhdGVkIGJ1dApub3QgZXF1aXZhbGVudCB0byB0aGUgaXNfZWRwKS4KCi0tIApXaXRoIGJl
c3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
