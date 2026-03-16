Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B2FFF4644F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 11:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOiNRYDjVpP30r5w+2s+/A95dl4zxp2mzICyKSlEV8U=; b=dvoZD6uUjjHfVm
	BjfxV5jB//0SOYEE+aLosCgUGlVuB4frwj/KN/j5ISsPUIQ2NHeVuDrWixACAvtRWNhNcLstcnbOX
	2g9tSpIn1lDqonJ3x4vltI1Ajn1nzdRQmGLYZC8GdLmqLXOu8dHfwIuc3xwVZT3i1ff8HrheWPzCw
	/uK7hDhNKAsqOEtSQY2wxJaj3WxXXpSIniirc2NfFXT+pqeswTv7O0DglZIr0OeaZtqyruXEiI2V6
	K1EWxCejgkCubYx5cIcWSCrqVL6JIO4soy6Nrpolt4KCT2HnB+pdQtRVOrMG3ZRbq6Vj3ogRaXuTh
	n6BeT0YaHDqJhMFkeOQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w25w4-00000003oCa-3pfd;
	Mon, 16 Mar 2026 11:16:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w25w0-00000003oBF-0Eyb
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 11:16:35 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64ggG323594
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 11:16:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/YDE7D97huJARZebmKe+OloJlAk/ia60u5iSeajG+rk=; b=cT9zdv3/LsiK0XOn
	e7DvD3I6uHY3osqlO3yW4WM1DNHhrt9ivqErNILqLdqrcc3HlbpYqebd1yyDxoDw
	thmpW5OA+Kcp1XdQJwWEp996Eg9qFvPF6uF//ba2oOmk/pEKkJIpgp80QR4O9CAy
	J2aHLoEYQLli9hhzamv8mK43lNUrS3PBDOgyresS23A0sgqL+0Fzd/sVPr96gMJa
	yunxfvbJ43lwyHlqAL92D+0LlTaUbEiuJaxpJ3q39Ji7W+HjbLnBaR/GbGdfnpFm
	Xl9m/2CpJzA+wdVPTJ6CcBVjuU7m8BCeuf1EwUXRz4dyr1geJ9DbDT77Mdliw3Bn
	MNvdGQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03qngay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 11:16:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd84cfae34so247926385a.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 04:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773659790; x=1774264590; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/YDE7D97huJARZebmKe+OloJlAk/ia60u5iSeajG+rk=;
        b=IGOJVP10tn8iCkCmdaaYlTmf+TE3eO/vOhHmsT0/q+JsycurVFRKPYeoEioQHSGT90
         KL4ZrNKJrI/JPQ8fLRhyGEJK7lc5YQTXiDY4eNWPEGirY2fueIC/ETqoC3VagA9UnKxv
         nXpIxiOubypPVw1Lezw4//Q0LN2MTi611E4D6bD0THIO7M7U3dKunRZXvlI7K21WbGK8
         d1hTRZ2gpZ5CJOeGB8tHugORUdKSnnVjrDLoxzuk/nmAiXCx12f1u9HJRj3H/jMMfhPj
         sX89dCm38xBi1rSauXq4Zys9ZUiuh81sfK2mV9BJOb+OHlgnXKtui3uVjmQ6RSrSBGhp
         3cJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773659790; x=1774264590;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/YDE7D97huJARZebmKe+OloJlAk/ia60u5iSeajG+rk=;
        b=Fx5DzmQkIdNIJ2aEOT7p18HuYUeRyumwfG8rAJdi+6O/N4y1HJIhcBAo0KO7YbgdKu
         PpFK1aV5iGxzNU+W6cpfbm1I90SwZFYe8KUx5YsOnz7Ogilhokocp3oaV0MezfUDoaa6
         Asg6EmNcAHZkaDWym9NgeXLqJdTprBCPjlnANsa7HYax/i7rBON0vbcNnTTj/Y8SnU7g
         VDVJBX+2YjauCrvSj4p6ItChe9l9hM1NCidgV+HvprkSUdZ0t3jonIptaV6/Txi+pwl1
         HcKKRi4mgSFAqbjB7DJVPQz+PUeWhUgubbMFHl/7uLxAzmTyuAmipk0vMVAFDou3Jwms
         eZ5w==
X-Forwarded-Encrypted: i=1; AJvYcCUggHedXONQku++1a11kYG2EJN7/UThkRCathGXgRCYRvkUVvInGnRp15a+lk/rx2mF7SnfHCAnbHo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0rX8G9SUbmzWP/Izr3JRRriF4b0gfhliXGZfx7835v07UgZr0
	2f3J2wzAn7ZmtvRCD0V5HMLdFkww63KMcBiZCZk+yT5mbKpgjqaJ8iW7knrxtzcMSOpayTClju+
	arpBkd8ey++XVfi0AV4/3xY9T7Dhm8AzVOrJekgolcRLfN++x1ddgq2TqnEGQnUvBrUf1
X-Gm-Gg: ATEYQzyg3TT0kv7xP7GhL6Iib/n3BIM5n/pr/ppL0E/4eqmETiYnjg+YvZZLamSKWQW
	qgBUU+N5qtGnsLZcrvoIgIhEj+goTJko9YFfuiWpDEoeOXouqHx5va7Y6rNsGoB2NzrfLkHXo3H
	aAmbV6dJ6VWEPHMcD7OdQwO7H9EMpVpgj3YYNMyDWcHQTBkT+fjHimk24X+B2LP8KGizt7Jkcd4
	bKm05DEuCMEs1hAzIkLn6ETdBatrvI6x4EySacFy2aQkeDVhYR8rsx5WUlTmP38WMpJOmvFw4C0
	Y0B9RV+Xz5tIKkhVIgCrwjE8x6LGPvkOd8ThTsWCTq82sjCCAtaDsBQTNT4UJhrT4Ie3nISl72A
	fDj54weZa5xhx5mQEyxkWC9MyJRIcDei67gfJWFhHqWk4aCMCuIuir8lZiOZfNSZmUQohAHUNLJ
	1Xed8=
X-Received: by 2002:a05:620a:bc4:b0:8cd:8751:2b19 with SMTP id af79cd13be357-8cdb5b8cb21mr1296897885a.7.1773659790148;
        Mon, 16 Mar 2026 04:16:30 -0700 (PDT)
X-Received: by 2002:a05:620a:bc4:b0:8cd:8751:2b19 with SMTP id af79cd13be357-8cdb5b8cb21mr1296894485a.7.1773659789695;
        Mon, 16 Mar 2026 04:16:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb47fasm520697266b.43.2026.03.16.04.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 04:16:28 -0700 (PDT)
Message-ID: <c404887b-ccc2-4731-a7fb-2e37ffbbaf3f@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 12:16:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: uu5bItB0f0uWbzegHcy3W-ocuBvlIdDX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4NiBTYWx0ZWRfX+lMPBfUKQKEI
 F2NU3s2YiPh4PHFnq6Lpy7aQ07ryferUM2B/LxJHVqcMtH/CTo6x43t8qGm1H8IUHVO9dHDWiVo
 t2b35+pJnjCrYEuPqeaTY8EBdO/S5rfAyKYzbtvaqdgHeN9SHLiTCQQOSlicWr5WBXogucVMYKi
 yRZifIMKPQdZWdhGiycV2NGS8G5QnqhodBcshh/fUzOg3SqmNgxwsCRD4nOasl3TohX2Q6H+AWB
 E89pCI3GFxHr84rFEjZ5XaDgqsgaD7Ng0QwL1qk4gongfmwsxTpvtGFhmMG9zEfKT1xhbEE6iOg
 5Isrc4KvxWQ/KRKrlYQsK32fnTYqJX30lKp1yW1/81oGKIm/5916zUiM7iQaU1v7cvtE07AyZcw
 QoUYHQNBxL/+hO2uc6/KM1/G34eEW8t5g7GwoESQw6SfbGyjSrj/L3lMppgtyVytVu1zcKHmftG
 7sO1xcgadqQ/Cw2MXRg==
X-Proofpoint-ORIG-GUID: uu5bItB0f0uWbzegHcy3W-ocuBvlIdDX
X-Authority-Analysis: v=2.4 cv=ZbQQ98VA c=1 sm=1 tr=0 ts=69b7e68e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=hNqFj29UGYf0a7zNkJMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603160086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_041634_535663_1F15F16B 
X-CRM114-Status: GOOD (  10.83  )
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

T24gMy8xMy8yNiAxMDo0NiBBTSwgWml5dWUgWmhhbmcgd3JvdGU6Cj4gQ29tbWl0IDk2MDYwOWIy
MmJlNSAoImFybTY0OiBkdHM6IHFjb206IGhhbW9hOiBNb3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtl
Cj4gR1BJT3MgdG8gUENJZSBwb3J0IG5vZGVzIGFuZCBhZGQgcG9ydCBOb2RlcyBmb3IgYWxsIFBD
SWUgcG9ydHMiKSBkaWQgbm90Cj4gY29udmVydCBhbGwgSGFtb2HigJFiYXNlZCBwbGF0Zm9ybXMg
dG8gdGhlIG5ldyBtZXRob2Qgb2YgZGVmaW5pbmcgUEVSU1QgYW5kCj4gV2FrZSBHUElPcyBpbiB0
aGUgUENJZSByb290IHBvcnQgbm9kZXMuCj4gCj4gV2l0aG91dCB0aGUgY2hhbmdlIFBDSWUgcHJv
YmUgd2lsbCBmYWlsLiBUaGUgcHJvYmUgZmFpbHVyZSBoYXBwZW5zIGJlY2F1c2UKPiB0aGUgUEhZ
IHN0YXlzIGluIHRoZSBjb250cm9sbGVyIG5vZGUgd2hpbGUgdGhlIFBFUlNUL1dha2UgR1BJT3Mg
d2VyZSBtb3ZlZAo+IHRvIHRoZSBwb3J0IG5vZGVzLgo+IAo+IFRoaXMgZml4ZXMgcHJvYmUgZmFp
bHVyZXMgc2VlbiBvbiB0aGUgZm9sbG93aW5nIHBsYXRmb3JtczoKPiAgLSB4MS1ocC1vbW5pYm9v
ay14MTQKPiAgLSB4MS1taWNyb3NvZnQtZGVuYWxpCj4gIC0geDFlODAxMDAtbGVub3ZvLXlvZ2Et
c2xpbTd4Cj4gIC0geDFlODAxMDAtbWVkaW9uLXNwcmNocmdkLTE0LXMxCj4gIC0geDFwNDIxMDAt
bGVub3ZvLXRoaW5rYm9vay0xNgo+ICAtIHgxLWFzdXMtemVuYm9vay1hMTQKPiAgLSB4MS1jcmQK
PiAgLSB4MS1kZWxsLXRoZW5hCj4gCj4gRml4ZXM6IDk2MDYwOWIyMmJlNSAoImFybTY0OiBkdHM6
IHFjb206IGhhbW9hOiBNb3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtlIEdQSU9zIHRvIFBDSWUgcG9y
dCBub2RlcyBhbmQgYWRkIHBvcnQgTm9kZXMgZm9yIGFsbCBQQ0llIHBvcnRzIikKPiBTaWduZWQt
b2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8eml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0K
ClJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+CgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
