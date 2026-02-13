Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98E27EDF152
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 11:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZdBifUj0PGugAvu+6+xhSrBx0IoW1eJEflHattkU+4=; b=iaZYF2P77tvYUO
	mwkTkMU3kt9810FCJKonVayNcdi6VhO7YOcolqFhMcpFNkmpTWmCX4lLTZk258cb4P2KP5mBvmQ++
	7qviEoxb/r65Obx5qRO5onwRlZfnlnNpZ/JjpXsfmKwOBwaws+qaYLFPKmjhHaSHs5xBYAwwe38pt
	G5TlQYwIqcaNxPjW+/l+Fgn/iP/6MMfauZfe5cmN0noYk8jC0zREhLV/i7LepnbtHBVbrKvf5D7AN
	EeGv9+rRRFNhIya5w46DKeNW9+OUs6GehKrm/iRnch+y7oZTWyWVvtwE9GGAHumuTbBSNjo5TUKIp
	v740bhxEjta0jdLBzi5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqr2k-00000003NNH-1LJH;
	Fri, 13 Feb 2026 11:09:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqr2i-00000003NMc-1LU6
	for linux-phy@bombadil.infradead.org;
	Fri, 13 Feb 2026 11:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=TjVCXvYuaym7jzzUznbrAb041QaziKAD/Kf70Jd3rm8=; b=PaZ9PBYc1MVYCA7scFw5NoMSSB
	8pU2CRsjtB/4LctM8kjRxxPZjLlKe24lw8kTtAc2NkO9mSAcAEkbCR8Ia9xIUsr5qvsjZgCORC2FO
	rkM7T5ShLK7QjCLK9eGrZG2AioGHaSwS1FpoClW5xR3hRA9tsus6cba9hAqloG41E3POsxgmNFxn1
	kFNTJbrhvTZirYnj6VIFbCxMYTIuO5PA8J81DXiRFRUmai+6q+1GziLX5vBVBzlC9U5PxZbnnN2mL
	og/LUSJ1SoVkYKKVet39Jk+QkSrbvwfLMtreC3pPzpAF1KAqwWVQCFsauJ5xoyRcMQ61GHKM8ESgH
	Xgc79mLg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqr2c-0000000C8o0-2uzP
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 11:08:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D7mD4Q3424618
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 11:08:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TjVCXvYuaym7jzzUznbrAb041QaziKAD/Kf70Jd3rm8=; b=G53nQuBRO+PzidlT
	HZWE8klgYzu9Nz5eCDKILQGFXKL8BrfT8B2bGk5syqr8S0oetDpgxR9b18Wrw/4E
	cmGsesO8QyS/DhVTd9nexsYyXZ1rmpSYNndlN/XyigY2Zk8mrGBzNY9HFG6aVrvU
	VDdyURh1/r6lGx0DlZwb4ziXO852De4u0frRwnBS+rgF6H6bDWKO/jsfojOmfbAd
	gGbqIrQ66poD9owuqbeJ7DAMVXTUjfhSzqDjQAUA1+evavPPg+Scyg1hrSzD4zqs
	yTPQbAdIAylUnlXvSWH/PwMN2TX2Y2sh5kzPvdzHjBj2jAv7DbaOMmLR0WA5gONF
	zfVZ8g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9yvrrpva-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 11:08:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8ca3952cbb9so27039285a.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 03:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770980929; x=1771585729; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TjVCXvYuaym7jzzUznbrAb041QaziKAD/Kf70Jd3rm8=;
        b=X45x/7e48PDxB0CvSrNViemTkZZoyaCYMgK9ig13QFjDeWEw57W/QSDEm606tm8vpG
         dt+VceyjkuWjEPyAQnrzuNiEbuV9+9die2OkepZiK+HCmjH0Hu6jY6CLAqJ9VEs8exYr
         NK4DN7qhzj4crHuvJX7UkX6bvS2MfV1uorVCVlTsi+OlPMo+p4gllPIxVDwrVhcpmZsy
         oebeSTJhThqxWZcjkPqWFSb0SkrHgPuDEBhK/RV++7FYMWGOGR2qQ+GbZ+cX9pBLWaUk
         rQKJNaIC9C4qIw+LvJacsjTE/WOtUB/8VIM8IDieA3JrGV3IbV2UESCkNDkUoKlQEolS
         5OsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770980929; x=1771585729;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TjVCXvYuaym7jzzUznbrAb041QaziKAD/Kf70Jd3rm8=;
        b=PqYteYuKyMyNdIqaPpKXxXeTzO7gTUA/DQIoEaAMMo6rlZJ+R2XYLFe+byZNaIHVHG
         /M70++TchTT/xlJsRhKuEQkfQ0pqhZG7jJngJFWmlXV09abioCsqCOiWA4GCDZjTaQtT
         SuCG7OCSPuXIjXXJVYsB7zpvjakcf6tgOfBMlU/hrn4JcWQE2ZYvyLn1ueSTQWoFoHUa
         9+DYF4vceU3ZRm3vYKp6Alhl59Vai6br1pEcYRTJz2X0BmO6GG2pS5BkLNEtEbxgtsMW
         hxIpwS5B9zho7bdZN/9OhPgKBAAoIBvGcyL1ETeQWGTaPqfvvnEn5SMMzjWI0Emdxa6i
         iGXA==
X-Forwarded-Encrypted: i=1; AJvYcCUzZUpZPTtMu9n5t8uk+omMVY+Nm1XtwN5GpgHdQhFdU8uZBRuFVDPITn12UWac0sUcU9NVENuApQg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnnsyWs18Erx3DABaN/RC+EsGk4oTXIi6N9TN50XbgHjTKWHX0
	E0zQMgm04HXGPeAoE7L6sA3S19SyPPJmsAx1YBR9Hg4goKIT6n64cuE7VgqAi9QfdYdAD/rPBRv
	Jf6TFuQErZG09T4UoHWp/C1/uKOSwBcQKYgkWXmSjrm+Nqdk6qacJbYw8Tsbk1/sYwUdY
X-Gm-Gg: AZuq6aKV2E2M6WFCg1Q92XrqO9p9cPeI8X+gOgo6ltf6y05jovYxpTFjY0P+LK3qZ6+
	eFQ8VF03jMthqqXBGRQ7YKH/2oW+u8tPdPQpd40SYEyghNdLtw7LDXu5jo934YutDRfEBG62iHq
	DiKIlRpj4CZQ5bVuG8HBEsewYSYTiR3I6xIZC6yBCA4LJaoss4lxBKRKSn5U6c9KUpwf+z8kybr
	EEBoWMoanrsoo1LJcdgpdrT/RrJYTRm3QujxyN6QXagvvi1hFnJTGf7oGBQCmwJmVWAh9TQ07yj
	D1Ro/aibrvRWAcWVZW87F21/uDhWTLqaAoFPdns0qpwo8IfXJO5rNVEk88ENz3JVXVQeqSDdobd
	QFhnnqjMOUVIrvM2MtqHVVQ69rKl9OT5Vp9dMTBBd86gCTee79zvY0jn3w8UCHmm80+cmBQ88D5
	ZQu6Y=
X-Received: by 2002:a05:620a:4486:b0:8c7:9e6:3a4e with SMTP id af79cd13be357-8cb4074ba86mr186090285a.0.1770980928874;
        Fri, 13 Feb 2026 03:08:48 -0800 (PST)
X-Received: by 2002:a05:620a:4486:b0:8c7:9e6:3a4e with SMTP id af79cd13be357-8cb4074ba86mr186088685a.0.1770980928416;
        Fri, 13 Feb 2026 03:08:48 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bace3fc4esm577073a12.0.2026.02.13.03.08.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 03:08:47 -0800 (PST)
Message-ID: <404ab3ec-1f24-4558-8c3d-b43de5730a34@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 12:08:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo PHY
 configuration values
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <1b78ea12-84ba-467e-b541-1ffd2348f38c@oss.qualcomm.com>
 <92556aa2-607f-4743-a480-19458836fffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <92556aa2-607f-4743-a480-19458836fffa@oss.qualcomm.com>
X-Proofpoint-GUID: aX0U1M_ZEwcxYEIgcdjmCA8DjV0IJMiY
X-Proofpoint-ORIG-GUID: aX0U1M_ZEwcxYEIgcdjmCA8DjV0IJMiY
X-Authority-Analysis: v=2.4 cv=LNZrgZW9 c=1 sm=1 tr=0 ts=698f0641 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EN9MfmX0twoZTdPln7MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA4NSBTYWx0ZWRfX2pMnL7PvcG/k
 NXYjr4b0PzdwMn+zwFHAemu/KzSvoEReR/6IH9xwlRnexnGGWR+3aJNRtdet4HtwivH1PRA7QDd
 rQv2X3er7iv9ZXaXGBOcMJA7unegLPmlATLTGaeWlsKCN8CbIrh1KSRqID9owSO9afJZmhxctSc
 BwKUNZ+7PTceP2mLFtcmYBXdlXzBA5/M/dkbfB/3IL2KbrTkJ1UaYhC0SLMnqkALarsrfI7l5JH
 lugCRl3L/BEzH0Vpnh+lFxqT3tjf+JgbioghJfuuN3DD0I1vrlcWm9oQVG6WXc+LAZNx1044k5t
 enM0XiN+WiZPZndchtjgFhaFXO9QBMo83L2pV477FmA5N9Y5QsHyqxUG0+xwvpeiBlqa0x9+e1V
 U79liqkWN6Qz4l6LlXTAnmyQ6p5Kn9Etdxvgpl/88NcfjshA5f2ljGGZe53muqAvwvYynLw1oZt
 zy81226uEPmprAP5Yzw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_110855_385235_4FAE8C38 
X-CRM114-Status: GOOD (  18.67  )
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

T24gMi85LzI2IDEwOjAwIEFNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gCj4gCj4gT24gMi82LzIw
MjYgNjo0NyBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4gT24gMi81LzI2IDEwOjIwIEFNLCBZ
b25neGluZyBNb3Ugd3JvdGU6Cj4+PiBBY2NvcmRpbmcgdG8gdGhlIGN1cnJlbnQgSFBHIHNldHRp
bmdzLCBtb3N0IGVEUC9EUCBjb21ibyBQSFlzIGNhbiByZXVzZSB0aGUKPj4+IHNhbWUgY29uZmln
dXJhdGlvbiB2YWx1ZXMuCj4+Cj4+IEV2ZW4gYWNyb3NzIHRoZSB2YXJpb3VzIHByb2Nlc3Mgbm9k
ZXM/Cj4+Cj4gRW1tLEN1cnJlbnRseSwgSSBoYXZlIG9ubHkgY2hlY2tlZCB0aGUgZml2ZSBwbGF0
Zm9ybXMgdGhhdCBhbHJlYWR5IGhhdmUgZURQIFBIWSBkcml2ZXIgc3VwcG9ydCBlbmFibGVkLiBU
aGUgcmVzdWx0cyBhcmUgdGhlIHNhbWUgYXMgc3RhdGVkIGluIHRoZSBjb21taXQgbWVzc2FnZTog
aW4gRFAgbW9kZSBhbmQgaW4gZURQIGxvd+KAkXZkaWZmIG1vZGUsIHRoZXJlIGFyZSBmb3VyIHBs
YXRmb3JtcyB0aGF0IGNhbiByZXVzZSB0aGUgc2FtZSBzZXR0aW5ncy4gVGhlIEhQRyBJIHVzZWQg
d2FzIHRoZSBvbmUgSSBmb3VuZCBvbiBJUENBVC4gUmVnYXJkaW5nIEhSRywgcGxlYXNlIG1vdmUg
dG8gbmV4dCBjb21tZW50Lgo+Pj4gRFAgbW9kZe+8mgo+Pj4gwqDCoMKgwqAtc2E4Nzc1cC9zYzcy
ODAvc2M4MjgweHAveDFlODAxMDAKPj4+IMKgwqDCoMKgLWdseW11cgo+Pj4gZURQIG1vZGUobG93
IHZkaWZmKToKPj4+IMKgwqDCoMKgLWdseW11ci9zYTg3NzVwL3NjODI4MHhwL3gxZTgwMTAwCj4+
PiDCoMKgwqDCoC1zYzcyODAKPj4+IFRoZSBjdXJyZW50IGRyaXZlciBzdGlsbCBrZWVwcyBtdWx0
aXBsZSB2ZXJzaW9ucyBvZiB0aGVzZSB0YWJsZXMgYW5kCj4+PiBkb2Vzbid0IGZ1bGx5IHN1cHBv
cnQgZXZlcnkgY29tYm8gUEhZIG1vZGUuIFRoaXMgcGF0Y2ggcmVtb3ZlcyB0aGUKPj4+IHJlZHVu
ZGFudCBjb25maWdzIGFuZCBrZWVwcyBvbmx5IHRoZSBzZXRzIHdlIGFjdHVhbGx5IHVzZSwgbWF0
Y2hpbmcgdGhlCj4+PiBwbGF0Zm9ybXMgbGlzdGVkIGFib3ZlLgo+Pgo+PiBJIHNlZSB0aGF0IGUu
Zy4gZURQIExvdy1WZGlmZiBzd2luZyBzZXR0aW5nIGZvciBSQlIgaXM6Cj4+Cj4gSGksIGRvIHlv
dSBtZWFuIGVtcGhhc2lzIHNldHRpbmdzLCBpIGRvbid0IHNlZSAweDExwqDCoMKgIDB4MTIgaW4g
YXJyWzBdWzFdLgo+PiDCoMKgwqDCoMKgwqDCoCBoYW1vYcKgwqDCoCBrb2RpYWsKPj4gYXJyWzBd
WzFdwqDCoMKgIDB4MTHCoMKgwqAgMHgxMgo+Pgo+PiBJdCBtYXkgYmUgdGhhdCB0aGlzIGNoYW5n
ZWQgbGF0ZXIgZHVyaW5nIHR1bmluZyBidXQgaXQncyBub3QgcmVmbGVjdGVkCj4+IGluIHRoZSBk
b2NzIGZvciBrb2RpYWsKPiBFbW0sIGlmIHRoYXQsIHdoZXJlIGNhbiBpIGdldCB0aGUgY29ycmVj
dCB2YWx1ZSBmb3IgdGFibGVzLi4gSW4gdGhpcyBwYXRjaCwgSeKAmW0gaW5kZWVkIHF1aXRlIGN1
cmlvdXMgd2h5IHRoZSB2YWx1ZXMgYmVmb3JlIHRoZSBtb2RpZmljYXRpb24gZGlmZmVyIGZyb20g
dGhvc2UgaW4gdGhlIEhQRy4gSeKAmW0gbm90IHN1cmUgYWJvdXQgdGhlIHJlYXNvbi4gVGhlIEhQ
RyBJIHVzZWQgd2FzIHRha2VuIGRpcmVjdGx5IGZyb20gdGhlIGN1cnJlbnQgZ28vaXBjYXQuIENv
dWxkIHlvdSB0ZWxsIG1lIHdoZXJlIEkgY2FuIG9idGFpbiB0aGUgZmluYWwgdGFibGUgdGhhdCBz
aG91bGQgYmUgdXNlZD8KCkkuLiB3YW50ZWQgdG8gYXNrIHlvdSB0aGUgc2FtZSBxdWVzdGlvbi4u
CgpJIHdvdWxkIGFzc3VtZSB0aGF0IHRoZXJlJ3MgMyBwb3NzaWJpbGl0aWVzOgoKYSkgdGhlIHZh
bHVlcyBoYXZlIGNoYW5nZWQgYXMgdGhleSBkbyBkdXJpbmcgcGxhdGZvcm0gbWF0dXJpdHkKYikg
c29tZW9uZSB1c2VkIHRoZSB3cm9uZyB2YWx1ZXMgZnJvbSB0aGUgZG9jcwpjKSBzb21lb25lIGRv
d25zdHJlYW0ga2VybmVsIGFzIHJlZmVyZW5jZSBhbmQgdGhhdCBoYWQgd3JvbmcgLyBvbGRlciB2
YWx1ZXMKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
