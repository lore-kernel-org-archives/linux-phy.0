Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F0F5ECD983
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 15:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojQy0ZHO2Zdk8w5pO/zIBlKqaV9NK7p0TKcnyf+YwHY=; b=IK3QBgUya/1gXi
	+4Whf9wRzAWri0a89E2q6WfoNXzj8MyXm7ZM1D97SvrTSe2YQx6WiEv0cKM/EDY8v5Ygsui3KMt2W
	mmewWhEMnDpA83pzceAJ7F0LxE8si9J27LRIOG1K1uwSZtC8Rvhk4wjCe9Iqb3Vw003g7thlilezM
	je+eNjqn++jZybm/MVGU+/qJfUt5zExqom7K6F8F943kBZIpDoLoJknOFcqnFHU6S62gKQAIeKWPQ
	d8BHg0HgfsCYD39uAFlE+nFl2e4NINxMs2sTsuxFf0wDtU4hf+lUe20WVEYIBWpJuvggkGsFCd2wn
	d4CxTc8Jk1zKa/X83J3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1jc-0000000ABdx-20f3;
	Thu, 05 Feb 2026 15:57:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1jZ-0000000ABcH-2q7J
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 15:57:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615CAMTd4168198
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 15:57:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fSzWOY7N9ZIbhHc3cCqI4uZzb8cUVIyyPjxeJeKfZMo=; b=PeoBVwjT9W5kVcXQ
	fXPz66lYjlq/Eiv/oYUWDtQlTFgOIzhmVOTucVLEkcFoWW8/PvpJx+cauzrMenDz
	k4+W64P3YUhXwFZ7xZBJzV3thwdPi34nrgxPmJ3soAsQ+GsNLjANFnjU+pjH6h38
	FsdaJD8ZGWaX/ZPok5ytxp2uq5ELL3fIXxF45LsF0qFkAvqWg/dn3DkhH+IqKBXP
	XLuRPUdY7mRKOCYnGXfu8QjE6MZWrjB43cMjFsKOg1MKfYslAlzeyaWNGhi1qFE5
	dVFxMugv1ngeC02SQYWQpTjG5V/LvMicrC021mlP8aVSEfgniO/KMOd/s0UAeNb0
	Hl5Yeg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4neg9u71-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 15:57:30 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-894766748f9so68660136d6.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 07:57:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770307050; cv=none;
        d=google.com; s=arc-20240605;
        b=eIvVRjmNgJgYlXxuBMJ9nTcXGBRxCX/DjrT6GxbUmQ9KsAdrOA3xv8+bs5S/Cfq9HZ
         eejyoXHaQOsZYCok3GVpHwZEhfhsMLVMPE3cNFKjhMw2o4fpQUAGrYlupI5ZaCRCZ/Pk
         JDiTU8nDQi2NPMyfUrnl0TEm+2dfcnI3hll8ckuBuVUyuMb5VLa+7xHfNkrHbRIrAJqf
         Yuof9CTA/eg8cnbNs0EKR2FaqQWxEdrgYR1KSOxOOWPf33odS/Mtx6lF5pDxvm0C4/KI
         6lDsoWgbPoHnn9YIp9oa3AIU7T/j4Y6bz1m1/+3+7XKV3svkGVgcMIjtBxfsjnBZqpe2
         8BMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fSzWOY7N9ZIbhHc3cCqI4uZzb8cUVIyyPjxeJeKfZMo=;
        fh=Np5O5D/PPPP3ReH5QrvyP3pPJXJIwW8xfB2XQIgWM20=;
        b=bM8/GAZPq/sUijjZD/HIVKNFZn986iRy0BLawTLvh+S/5d6XL18RgY5I8ebUTvaafU
         B9dRCQOy+nj2UANOS3EP5eGcSbqQqOVrnWALr5Pe5JZi9XoO/O2Ps+dYXYLpRxRjgLYk
         EyG1ChmLMIfpCtWzP4Jc5NUPmO7/FzhKZZHlq5c64j4ILLCBoFRadExxhAtmJ//ZGR2x
         NqC3saJQw3CYvICr07aveQ4+v336qAXDwYlnPNPEBK0iMP9nOjUtNiUOAzA8fH3weUaj
         4idz1jmWO26QPNzLtPrvTP9qrCHHFuAdi7BYrah4yLVy++3KviPJIXpoj5Cg+0ORW4nx
         BcPQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770307050; x=1770911850; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fSzWOY7N9ZIbhHc3cCqI4uZzb8cUVIyyPjxeJeKfZMo=;
        b=VzJkEy2VZvjILNp60gJqiL330//Q1z52Wsn8GvHxbFW51wGyblzfv43AX+c2ycMkpB
         LPl6Nb8jT5j1212FgzjwFypmQZA85UfEbp3wQiqVKw7gTJS9Hj8oGQhTKM5E6Y7BrzXf
         +M9nIsO2RXbCuExhWwohQZn7DP3NcKLHeLVjUsGIOQFaUDWgLo8+kGHopbIx8OeWBDuo
         mwUeFXnju+W0gn31Xi4pKv1lpaBZqVsS5qyJKF50vAeIW4/jKn48IoTOV9r1kLTq6sZT
         2+55WsjoHdMUiFih/hrmMHQ838Xc3/iUxULs0zHQM4Tlwjvd3LdNi/ZM1EX6fUJAm6bu
         tbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770307050; x=1770911850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fSzWOY7N9ZIbhHc3cCqI4uZzb8cUVIyyPjxeJeKfZMo=;
        b=Y74n94TKxXZZzY6hm7lwB5DJDLptZEhS/4fF5A9q713BEji7Cq7jJwumFGqyhvhZpR
         RKuAKlPgy3JIeeTkLIcbb68XqmwiFdIn2wY6DPfLoHp3pLcDsYNCNq5PoRdGjjm5au10
         GQvvHCGrRz9UfwFvyKhsAMcuqxhiCuzzcbaU2Nc/5t9LOPRPToAg4YKCN4g85NGX7SPP
         JoAwYDvHtuTSh3kHfaDM12JbY1SEzl1NxRI4MlQCBROMsdkiDaNBuTUxAdOVZXiZK5SI
         geWgbyhp1EP8AeBH834jSwGQSrqWRICr8jhqwM+YDs4axe8dRHPQBKLPgxCLRIMZoLHD
         +dOA==
X-Forwarded-Encrypted: i=1; AJvYcCX0+SynGS9S0/7IyRXpooslGrr7W727b5WzpyrbjyImWOWFAtzSftrw9ZhbIKavkXvgGqn5eWrK4bQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHR+XVWDk9UJ6cUOKGdP6HYRCo3UKLR6j7OEleghqH1I7bgOqW
	g8+MLQGgS9BXZXOj+6waQtEUVQTKcRJ0D+Tf/yS9x4CzN//ilErVtdE/NAyOZ5PXxlib3pWtUIV
	ISb+3glYDzDIwTsrTRuUXdxekp9WPGqyRyoITBQf2vRIo/zaRyQFbox6gadcuwINii4LH39qFG6
	tYiZZdIyJf4PhZS6nijA9p7EUYUtUNbQX4Hmgf0ms+nQo=
X-Gm-Gg: AZuq6aI1QqDEsTz85WF3+J/iKYs+vKcseISWDPvXHJdYe4NDSCYb2sfyKGjNk7DZd5N
	fw/JoZCl2jY9N6qdD6P1S4kHFeZS+w8ob4c/jByiGaPxGSS1mYO0HM+TJztXaNB3oNS0K/UwTnm
	IqCa2eiIC7yyyIUDwbJN/+bDsdYJcv0ukYf1hmv55nu+GcB0M8mdLVGRQGl1TCwiGssdoKS5V0Q
	TI34knCpeOA7uBPc0Pv88DVJ1w=
X-Received: by 2002:a05:6214:20cc:b0:894:6c2d:533a with SMTP id 6a1803df08f44-895221c7e17mr103620416d6.37.1770307050212;
        Thu, 05 Feb 2026 07:57:30 -0800 (PST)
X-Received: by 2002:a05:6214:20cc:b0:894:6c2d:533a with SMTP id
 6a1803df08f44-895221c7e17mr103620026d6.37.1770307049763; Thu, 05 Feb 2026
 07:57:29 -0800 (PST)
MIME-Version: 1.0
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-3-loic.poulain@oss.qualcomm.com> <3facbb23-80ad-4648-b81c-73f4608129f5@oss.qualcomm.com>
In-Reply-To: <3facbb23-80ad-4648-b81c-73f4608129f5@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 16:57:19 +0100
X-Gm-Features: AZwV_Qh1Z06yd9BDAsc2kDJRh1ttLlphk-7I0IyoswFK-pToiw7AwuVqTGPa2SY
Message-ID: <CAFEp6-1scG6AbRzYDwLRNxGwSULDTjLqyXEiBmNq2yEDorGzDQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] phy: qcom: qmp-usbc: Fix possible NULL-deref on
 early runtime suspend
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyMCBTYWx0ZWRfX0MNVMK6xlSih
 Glh493A+vaR+j6iuWX4ooGCUjLip5wtl9/AEU8+TYvT4ZcnFgMgdeW+an8Wpnj1VjKi6a+zoGyB
 NnnuNcUhj318T5n2zeEFPhlOL2ec0CigCiNEqMq4N3F+FTmemwskrieUb75IU5sToM9+Xu8g1MP
 MCmUlzn5LIxMoQP9sa2BNwk9ROSlDXGVlS9Fj2KGT8AUhGdIq/YQzqBwUKJQ7pkk+RSaaGpFnOQ
 BgoHXNHEqz6dUyTLCfetXUIowLrWS1TJeeQXuuyad0ep9vETWteZzOkFzeJvEnkEBxQSvtT+cvU
 EHPhZZr/S3PxE2fUdZ9dqONipPQ+jEjSmIGjUOShsvtcHdqIOmywxTVbs9WmtN3cziFUApJu1+0
 rWEVOI950e/I39APuHY5Z0pyzvDv39065r/Q9dUZbXlW52emHk4fubFU4uMigoxbkNRtOvhFLky
 CMssKMYFMSmtO6g363A==
X-Authority-Analysis: v=2.4 cv=ZITaWH7b c=1 sm=1 tr=0 ts=6984bdea cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=UD6jFWV5_MqAamJTNaQA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: KS-AivMxuvT0yDWllZ5u_YIaBRab4FC1
X-Proofpoint-GUID: KS-AivMxuvT0yDWllZ5u_YIaBRab4FC1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_075733_832749_E130C30E 
X-CRM114-Status: GOOD (  26.40  )
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

T24gVGh1LCBKYW4gMjIsIDIwMjYgYXQgNDowMOKAr1BNIEtvbnJhZCBEeWJjaW8KPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiAxLzIxLzI2IDM6MjggUE0sIExv
aWMgUG91bGFpbiB3cm90ZToKPiA+IFRoZXJlIGlzIGEgc21hbGwgd2luZG93IHdoZXJlIHRoZSBy
dW50aW1lIHN1c3BlbmQgY2FsbGJhY2sgbWF5IHJ1bgo+ID4gYWZ0ZXIgcG1fcnVudGltZV9lbmFi
bGUoKSBhbmQgYmVmb3JlIHBtX3J1bnRpbWVfZm9yYmlkKCkuIEluIHRoaXMKPiA+IGNhc2UsIGEg
Y3Jhc2ggb2NjdXJzIGJlY2F1c2UgcnVudGltZSBzdXNwZW5kL3Jlc3VtZSBkZXJlZmVyZW5jZXMK
PiA+IHFtcC0+cGh5IHBvaW50ZXIsIHdoaWNoIGlzIG5vdCB5ZXQgaW5pdGlhbGl6ZWQ6Cj4gPiAg
ICAgYGlmICghcW1wLT5waHktPmluaXRfY291bnQpIHtgCj4gPgo+ID4gVGhpcyBjYW4gYWxzbyBv
Y2N1ciBpZiB1c2VyIHJlLWVuYWJsZXMgcnVudGltZS1wbSB2aWEgdGhlIHN5c2ZzCj4gPiBhdHRy
aWJ1dGUgYmVmb3JlIHFtcCBwaHkgaXMgaW5pdGlhbGl6ZWQuCj4gPgo+ID4gVXNlIHFtcC0+dXNi
X2luaXRfY291bnQgaW5zdGVhZCBvZiBxbXAtPnBoeS0+aW5pdF9jb3VudCB0byBhdm9pZAo+ID4g
ZGVwZW5kaW5nIG9uIHRoZSBwb3NzaWJseSB1bmluaXRpYWxpemVkIHBoeSBwb2ludGVyLgo+ID4K
PiA+IEZpeGVzOiAxOTI4MTU3MWE0ZDUgKCJwaHk6IHFjb206IHFtcC11c2I6IHNwbGl0IFVTQi1D
IFBIWSBkcml2ZXIiKQo+ID4gU2lnbmVkLW9mZi1ieTogTG9pYyBQb3VsYWluIDxsb2ljLnBvdWxh
aW5Ab3NzLnF1YWxjb21tLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC11c2JjLmMgfCA0ICsrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXVzYmMuYwo+ID4gaW5kZXggNWU3ZmNiMjY3NDRhLi5lZGZhYTE0ZGI5NjcgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jCj4gPiAr
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jCj4gPiBAQCAtNjkw
LDcgKzY5MCw3IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcW1wX3VzYmNfcnVudGltZV9z
dXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+Cj4gPiAgICAgICBkZXZfdmRiZyhkZXYsICJT
dXNwZW5kaW5nIFFNUCBwaHksIG1vZGU6JWRcbiIsIHFtcC0+bW9kZSk7Cj4gPgo+ID4gLSAgICAg
aWYgKCFxbXAtPnBoeS0+aW5pdF9jb3VudCkgewo+ID4gKyAgICAgaWYgKCFxbXAtPnVzYl9pbml0
X2NvdW50KSB7Cj4KPiBUaGlzIGZ1bmN0aW9uIGNoYW5nZWQgYSBtb250aCBhZ28sIHBsZWFzZSBy
ZWJhc2UgYWdhaW5zdCBuZXh0Cj4KPiBBbHRob3VnaCBJIGJlbGlldmUgdGhpcyBwYXRjaCBiZWNv
bWVzIHVubmVjZXNzYXJ5IHdpdGggMyBpbiB0aGUgcGljdHVyZS4KClRoYW5rcy4gSSBjYW4gaW5k
ZWVkIHJlbW92ZSB0aGlzIHBhdGNoIGZyb20gdGhlIHNlcmllcwoKPiBJIHN1cHBvc2UgdGhlIGNh
c2UgdGhhdCB5b3UgbWVudGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIGhvd2V2ZXIKPiBpbXBy
b2JhYmxlLCBjb3VsZCBiZSBmaXhlZCBieSBtb3ZpbmcgdGhlIHBtIGNhbGwgdG8gYWZ0ZXIgZGV2
bV9waHlfY3JlYXRlCgpGb3Igd2hhdGV2ZXIgc2NoZWR1bGluZyBlZmZlY3QsIHRoaXMgYmVoYXZp
b3IgaGFzIGJlZW4gc2VlbiBxdWl0ZQpyZWd1bGFybHkgKH4xLzUwIGJvb3RzKSBkdXJpbmcgc3Ry
ZXNz4oCRdGVzdCBzY2VuYXJpb3Mgd2l0aCBvdGhlciBQSFkKZHJpdmVyIChxY29tLXF1c2IyKS4K
CkFzIERtaXRyeSBub3RlZCBlYXJsaWVyLCBQTSBtdXN0IGJlIGVuYWJsZWQgYmVmb3JlIGNhbGxp
bmcKZGV2bV9waHlfY3JlYXRlKCksIGJlY2F1c2UgcGh5X2NyZWF0ZSgpIHJlbGllcyBvbiB0aGUg
UE3igJFlbmFibGVkIHN0YXRlCnRvIGNvbmZpZ3VyZSBpdHMgb3duIHJ1bnRpbWUgUE0gYmVoYXZp
b3IuCgo+Cj4gQWx0aG91Z2ggd2UnZCB0aGVuIHJlbHkgb24gZGV2bGluayB0byBtYWtlIHN1cmUg
YSBjb25zdW1lciBkb2Vzbid0IHNuYXRjaAo+IHRoZSByZWZlcmVuY2UgaGFsZndheSB0aHJvdWdo
IC5wcm9iZS4uLgo+Cj4gS29ucmFkCgpDaGVlcnMsCkxvaWMKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
