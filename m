Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F440CA9ECF
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 01:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3016o8hvMwI+7LDAOWC9CqjHzbXKhtPnyoXTV0qjsoA=; b=mRUSxF80V4hyqsu4SE1VQixgKd
	OtbV/wCLrj+VPgUSWYIN0nuD819zegJOv1ij2DH83mr5D8BBm5dkQOj949iEpYm6b0GMZM7T4Njlf
	KqFb/no5Dq1Nkfrx+n5waNq387l1QwYXEaEvQMbBrGEqAHQr4aWXZOoXDdp44P4K4cTQXrI/TSTqP
	ov8E3fsIkgoZzNZwmo5JEG1EPIQqV2eDFYzQ6E03uWJU+a9krKtdin7B6mqLbxk8Zw2vjUetNRAaM
	tLWTqetjrjN1gS/BDS4Kv5nKqA+0AOu5RppG+3/W5HnfSKBiTsmHcLgq5Y1axpJ7AtWsmjp7ky2yS
	WZ0XAwJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG4nj-00000009Y1N-1TeQ;
	Mon, 12 Oct 2026 01:26:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG4ng-00000009Y13-1JBc
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 01:26:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69BMVJNF335667
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 01:25:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+SEuxb14RGNKNzw6OwUej2/dkzCU8mOD1TxdNQEWpLI=; b=Ef2doeZT40tKHpf/
	gJ/AkFWnxyGdnVyMQA26UdzIFPCrlJ16TSSKJW8ShUPfKFtlqVwfMQehhlHxpa3b
	f9ffnFbqpBfQb5kesV0FFIwwQiCuY/awgnDdmSzuJ/7TuAKssJzhfB082f+BLlA1
	AHqK/W1IL6z4nX/bAhg7W/wbRrzNOt1K1kVfBYY1Ks4mVZuvOel9AG4fzFQzXTyB
	Z5/YeHFA+azU6JJkntqaCjIUtkQj165Q//c3LjEyzs2c9IJkn0X6mtYGNzLoslxU
	vSBBV5oYTAEpDgQp7ae3ppmfbjZwX1g5+BYB2M7HFl6qDNC6Fy+Z2RSsGIZkgmRh
	HYItdg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7aqmvn37-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 01:25:56 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc42a07d04aso784307a12.1
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 18:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791768356; x=1792373156; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:references
         :subject:to:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=+SEuxb14RGNKNzw6OwUej2/dkzCU8mOD1TxdNQEWpLI=;
        b=g931EvevLWVpk8QHLYMwibeKe4VEgu96wrEsz40f8LF3WztoWL2it9B4v6+Hos/sNn
         GtCGD1VqO190EecZqFmVWyZUxnDg8JVmVEQO+pQCXaf2ZUKuLQK5Ev+ZIPXpEiWeRvrq
         e/JMI+twsO+Q4Qtg31f2gxPw4RLrKa+0HjUhaT4wbQ4gYTFHZQwUfxqw9XgrRATvJt+7
         FaumlRk6J4eouyYoWpsRk0RBupC32Li0a2JgAgVQEz48kktqW6qxMDrEA432NGLCRYZV
         oMw6XRIxZXHHh7cdmtXFY7G5ealc5pqOfhQxffD+6En9XirQiIcYvPUTNUFO2IukdO2s
         xf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791768356; x=1792373156;
        h=content-transfer-encoding:content-type:in-reply-to:references
         :subject:to:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+SEuxb14RGNKNzw6OwUej2/dkzCU8mOD1TxdNQEWpLI=;
        b=OPiCsBWyeyhNlwM9C+rPtngh0dnBGBgxuqkmOPPYZW1f2P5UuQVqK5E4ZzF2+mN1VA
         2OmmljHPLHySLpL6TRffByuq3VQ/NwMuREak88oydk7Fo0E0TGpHNLSzpqLOBL1PCAm2
         8Zdv/3RFvwDvpDYboDUH4D5K28qhucK4UyehSHmIZ4LcT56SLmSpAFwma/50Me49xPg8
         +pw9LNo9JOG3ibKTD1VtDqA9VPioPAuGLBwJMC9GlcCjSejF3QeX3ls+zKMMG76v1ZNU
         xV336IFN6pQMRVz5/20fEB2AhmeTCXX1ZWq10npl29jeZBulUq0wyMYeYWDKUGMBadCA
         TgVw==
X-Forwarded-Encrypted: i=1; AKwUvBy2e8mtMsN3eFuZILwvv3f/baA0coVi/t40EG5UfdDBtIwU+b0Wfxea/HUvH1d2Sh1ImAakAF6s5cU=@lists.infradead.org
X-Gm-Message-State: AFq9FYIx9ghoZuP1xXnZV3CYZL/acYi4JvQ0Br355u668fPdFCG2JW5P
	Bk4ooEurDE8VDelgTfAt3uw5YvaCt0FQI5jj6HadKdovxqO1HK7fNq9Dg1Y7Gl1MIJX29vQuuHp
	X46qSb2FglnOuwwYSqKbe/KB7F/V15FPeF2yY87Skc1ocNpZIwFtvJSquk4kKS9BeV51N
X-Gm-Gg: AYBFou2ffo0WHZcRKgEpOWs2dBPOHwDY/OVseP4q7nKs4SZtlba6EOCKNQJMr3qCVMD
	/VOYbEbNZXwW3lis9CuWLRjH3gew1uwDzEEsUjxnqhCOaiQzsfwRrUU1RIS/7y/tw6lGAm4bjDi
	flfDIiaeNKKDEQLR1QAz5bxRry+ANwHMwvbZJBl0KOzjVpqLvrzq3b+IHpJ15hyG1TYdxXIwQIa
	RuupxUwdH6TeonavutL1rAmbKkRCe3e9em2AkwSmPWhokY5Jo5SQg6yXBaDuYbWYqRB6WqHEVon
	zvqkIYG5PQ7SLEoANpfFP5SzjWQnw6u8X7GvdU1fsZZh92hB/I8nEjYs5jFymZdW9K4HWBt0HjA
	dqaPqRxt19d5m+sMqNmlT3/CdkKTLStsjgm1lINaPCl6jYDuxAaDWdGebZMMmn/A=
X-Received: by 2002:a05:6a20:4327:b0:3e1:4f30:fdd3 with SMTP id adf61e73a8af0-3e16c0b5110mr7383246637.66.1791768355518;
        Sun, 11 Oct 2026 18:25:55 -0700 (PDT)
X-Received: by 2002:a05:6a20:4327:b0:3e1:4f30:fdd3 with SMTP id adf61e73a8af0-3e16c0b5110mr7383226637.66.1791768355028;
        Sun, 11 Oct 2026 18:25:55 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89928fd8469sm1622685b3a.61.2026.10.11.18.25.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2026 18:25:54 -0700 (PDT)
Message-ID: <5d4a3126-44c2-494a-938b-1887503c7a52@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 09:25:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: hangxiang.ma@oss.qualcomm.com
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Subject: Re: [PATCH v20 08/13] media: qcom: camss: vfe: Add support for VFE
 1080
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
 <20261010-kaanapali-camss-v20-8-63e98ce9ac0c@oss.qualcomm.com>
 <a6e5dc34-c2e7-4a3c-a0e4-fb0a3a28cece@linaro.org>
In-Reply-To: <a6e5dc34-c2e7-4a3c-a0e4-fb0a3a28cece@linaro.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAwNSBTYWx0ZWRfXxR+WMuC1cQlV
 QNh259EdeoeiDdjojzZgOcPL2Ezo04CufdOCpW8vEG4eEbpjWsJp+G0z+W2Pr0n1wXBTxeHFMLh
 eKvy0KqsOcvC2lvyYo7fHkJqGbPfKY4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAwNSBTYWx0ZWRfX9gw1dCicNPxw
 PcN51hJXy3bJHSSrfri/6RIjgc+86TZRk855ipt18z2e5mvDD8twS/AdBvGzFY3FqFJ5ay1TL3y
 9q6wvArs34+xxGo+ZlWvMrcx3e5GTBDXBulc1dQOpVLgfYwMD00HCfr13WIDgaN0T97C340Leuf
 JsCUyoVnBIbzG3SsLdUgflO2fZJydLojTDu3kpIdXUL+KswVvrcTTJEPIu1h/EnDFwZpcNNFHrt
 SIBsiUbYP92ncABWDI0ekKDMMsQBSXm/8p7+qxlaPM1qvYlszq4mKspa1DDQrxTLWxrtIAh2CsX
 XMVq1G2C4HZnyEwrclMMQolCIIXG3MGt5IYGPWQyvFmKErYfH6UkeeNFLWiq/+I92XAd82j9nRT
 VUhAtfbPTJwtHgbPzG0mQyUvcbuLZG/5mHVa+Q9Kh24Eur/kMmhCq2odOgvmrZuqZg/1OuYsgYz
 DdL17m68TPyAbuYXw2A==
X-Authority-Analysis: v=2.4 cv=Uq32pOwB c=1 sm=1 tr=0 ts=6acc3724 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=KKAkSRfTAAAA:8 a=HmBDO3gPv43XiXRR4pAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: cexmRtNp7YOrW5mTjBp3Bp5JAKoe_v5d
X-Proofpoint-GUID: cexmRtNp7YOrW5mTjBp3Bp5JAKoe_v5d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-11_05,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_182600_485944_5C63CD80 
X-CRM114-Status: GOOD (  19.85  )
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

T24gMTAvMTEvMjYgNDo1NiBQTSwgQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxp
bmFyby5vcmc+IHdyb3RlOgo+IE9uIDEwLzEwLzIwMjYgMTc6MDEsIEhhbmd4aWFuZyBNYSB3cm90
ZToKPiA+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIXZmZS0+cmVzLT5yZWdfdXBkYXRlX2FmdGVyX2Nz
aWRfY29uZmlnKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BzLT5yZWdfdXBkYXRlKHZm
ZSwgbGluZS0+aWQpOwo+IAo+IFNvIEknZCBwcmVmZXIgdG8gaGF2ZSBhIGRpc2N1c3Npb24gYWJv
dXQgaWYgd2UgY2FuIG1vdmUgYWxsIG9mIHRoZSAKPiB1cGRhdGVzIHRvIG9uZSBtZXRob2QuCj4g
Cj4gaS5lLiB3aHkgc2hvdWxkIGFueSBvZiB0aGUgdXBkYXRlcyBoYXBwZW4gYmVmb3JlIGNzaWQg
Pwo+IAo+IFN1cmUgdmZlIDEwODAncyBkb2N1bWVudGF0aW9uIG1ha2VzIHNvbWUgc29ydCBvZiBl
eHBsaWNpdCBzdGF0ZW1lbnQgCj4gYWJvdXQgYW4gdXBkYXRlIHRoYXQgaGFzIGJlZW4gaW1wbGll
ZCBmb3Igc29tZSB0aW1lLgo+IAo+IE15IHF1ZXN0aW9uIGlzIHdoeSBub3QgZ2F0ZSBhbGwgb2Yg
dGhlIHVwZGF0ZXMgdGhpcyB3YXkgYW5kIG1ha2UgdGhpcyAKPiBub3QgYSBmbGFnIGJ1dCBhIGds
b2JhbCBiZWhhdmlvdXIgPwo+IAo+IC0tLQo+IGJvZAo+IAoKWWVzIEJyeWFuLiBUaGF0J3MgYSBm
YWlyIHBvaW50LgoKVGhlIHJlYXNvbiBJIGludHJvZHVjZWQgdGhlIGZsYWcgaXMgdGhhdCBvbiBW
RkUgMTA4MCB0aGUgZG9jdW1lbnRhdGlvbiBleHBsaWNpdGx5IHN0YXRlcyB0aGF0IHRoZSByZWdp
c3RlciB1cGRhdGUgc2hvdWxkIGhhcHBlbiBhZnRlciB0aGUgQ1NJRCBjb25maWd1cmF0aW9uIGFu
ZCBpdCByZWFsbHkgZm9sbG93cyB0aGUgZ3VpZGFuY2UsIHdoaWxlIG9sZGVyIGdlbmVyYXRpb25z
IGFwcGVhciB0byBoYXZlIHJlbGllZCBvbiB0aGUgcHJldmlvdXMgb3JkZXJpbmcgaW1wbGljaXRs
eS4KClRoYXQgc2FpZCwgSSBhZ3JlZSB0aGF0IGlmIHRoZXJlIGlzIG5vIGZ1bmN0aW9uYWwgcmVx
dWlyZW1lbnQgZm9yIHNvbWUgdXBkYXRlcyB0byBoYXBwZW4gYmVmb3JlIENTSUQgY29uZmlndXJh
dGlvbiwgaGF2aW5nIGEgc2luZ2xlIHVwZGF0ZSBwYXRoIHdvdWxkIGJlIGNsZWFuZXIgYW5kIGVh
c2llciB0byBtYWludGFpbi4gVGhlIGZsYWcgd2FzIG1haW5seSBpbnRlbmRlZCB0byBtaW5pbWl6
ZSBiZWhhdmlvciBjaGFuZ2VzIGZvciBleGlzdGluZyB0YXJnZXRzIHVudGlsIHdlIGhhdmUgYSBi
ZXR0ZXIgdW5kZXJzdGFuZGluZyBvZiB0aGUgZGVwZW5kZW5jeS4KCkknbGwgdGFrZSBhbm90aGVy
IGxvb2sgYXQgdGhlIHVwZGF0ZSBzZXF1ZW5jZSBhbmQgY2hlY2sgd2hldGhlciBvdGhlciBvbGRl
ciBwbGF0Zm9ybXMgY2FuIHNhZmVseSBtb3ZlIHRvIHRoZSBzYW1lIHBvc3QtQ1NJRCB1cGRhdGUg
Zmxvdy4gTXkgY29sbGVhZ3VlcyB3aG8gaGF2ZSBzdWNoIHJlc291cmNlIG1heWJlIGNhbiBoZWxw
IG1lIG9uIHRoaXMuICBJIGNhbiByZW1vdmUgdGhlIHBsYXRmb3JtLXNwZWNpZmljIGZsYWcgZW50
aXJlbHkgYW5kIG1ha2UgdGhpcyB0aGUgY29tbW9uIGJlaGF2aW9yIGlmIHRoYXQgaG9sZHMuCgpJ
biB0aGlzIHdheSwgSSB0aGluayBJIG5lZWQgdG8gcmFpc2UgYSBuZXcgc2VyaWVzIHRvIGNvbGxl
Y3QgY2hhbmdlcyBhbW9uZyBvdGhlciBDU0lEIGdlbk4gcGFydCBhbmQgVkZFIGZyYW1ld29yayBw
YXJ0LiBDb3VsZCBJIG1hcmsgaXQgYXMgdGhlIGRlcGVuZGVuY3kgYXMgdGhpcyBLTlAgc2VyaWVz
PyBPciBmdW5jdGlvbmFsIGRlcGVuZGVuY3kgaXMgZW5vdWdoPyBUaGFua3MuCgotLS0KQmVzdCBS
ZWdhcmRzLApIYW5neGlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
