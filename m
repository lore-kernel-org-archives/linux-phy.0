Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D24A1C2D0CD
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 22:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXp9VYq87LEDCP44UOW9TzOoM6ph/Po/KqTCNF6C6T0=; b=K41ZKlGDBkKTCr
	DlZkT3xIyXJxwqJiRo4qoWIwM+TzlMnrJdrvHNs+dM3QRUrWMhivV/JRZbWlek+cVN/6GB8XP9Sf/
	JAffr/muO1RkniyxYYsBUZ8GjRb9CRp9svj8jdtRqZIdwhxeLt3fYN9RM0caY+UzB6DoRnVJtOU8G
	k+kWblww3+rgo/sjQy2Gw5ySRgHaFvAmts8dlyzXC/GYh40ZoJvVfnjw+8qWyaSxOdczJxn8ESIGR
	ILDkI+duLCRIK3IXgvipq2g6lIskxK4uHlH4W5Lfrjy7FNib+X34aQF/Smf3S9h8l+d8g5ncqJZI1
	mmvD85NSmw2XlYBr575Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH9FR-0000000AmB4-16ab;
	Mon, 19 May 2025 22:46:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH9DH-0000000Alpm-3F4D
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 22:44:05 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54JKjAMc022751
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 22:44:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4B3h1KneRsR4g4P8DoAhcb5VoEzgECZqghlNOYZOMuU=; b=fSUyTXP0wQdu3qa6
	NSZ2pz+xtkiPjjuHJ5zP6gekDpFkkVLJFqjIFDf0n/bQCDeNkjrHXx4vvZ21oOCY
	sYKydzjoTJebqU1GuAzz+RCEqmSkV7BWPFz/09QFqPMpq2UyauS4MHrt/mvYUDc9
	i9FyChWzyvh4hmAXExD/rG/+Pjr8j08EcbWnda/aiYhYxSkhbT6DbO48r/A51aYh
	WaVfA/4vNyvXpdOVp9akIqp4HH0nrP7h+bvwkKa9XSrgSh1r2PDrc8X9FMl+pv2W
	wBnJh1H3BCQ2AVNNhHzeptA0CD0xQQ4ckKAG4ZZMWv6uSvtOTQ1q7b9a0j3FRqgx
	MlueGg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r29d1x0e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 22:44:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8d32c0b57so6706596d6.2
        for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 15:44:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747694639; x=1748299439;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4B3h1KneRsR4g4P8DoAhcb5VoEzgECZqghlNOYZOMuU=;
        b=TtY4yo+g3nHJCHm/ibGuCTCNYG6xRvjBD/x2rQEhpc0LpF1ZF2dgI8qcWVEVgVFPSv
         6f8bgDhAByMozQHdPwqm9ajwALwB5ivTh6eKwRodGkI1TOBS4zMZISRM2kb0Ii7woqCA
         UeeBREC+9qUzBkGiwPOU9FhxKfZ5/tgaGaHF2WolTmoOkQ7AHNllONrHnyPGOpB1dLWs
         KCYLqV8YXsRa1ELNPOQO3ErmRYd6nwwkbmaP1ttSqly11Xeh5GzKYl6mRwB1ULXpvOEK
         aNE+ktvlo5/IZMRg+SQooKdbYy1nnO+0W/bLBYJq8qnORroe1dXvT4hiwxqRqjUekDhn
         4Inw==
X-Forwarded-Encrypted: i=1; AJvYcCVftUL7097z2li8NH0uhRLVc0mCnBR1fVQvw4eYYgn3rw2VD+JReM9bG+7yHNvoZoHV5BMeXnJI3yo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHxJCObs65gwYhGkh/ZU4FBWtrZX9QBMkd5olJvpPq/jN5UJVX
	h5vHFEXUBKy1vUbBwaNkkahSmIdTY7QidFC07cBKX5zGaEauYe2ZQgXSA9Xhxo4QGN4ZKO/HjmT
	KizsasCPUbdwfqzYOV6/ouuaU89leXoEpTSr3ZXWCP6yGCl45sXRV99RrNcVQ23CanRDm
X-Gm-Gg: ASbGncvFDhX9AxfpBVJEGX5urHfZSXRe4bP6dg1hspe/UVpBDvqnscBJMqes3I/Kd00
	yLWinCE+VnaWpXnWJLFk39W/Eesr/A9jAMgikUepIgdmF68OumdBvlK3EeNnAc2JwFj5suPAaD2
	k99+0I6KzS1jQ+Fr6yCQ67u7mV1YC5NMg9DZJ41OuHlKCGQDoizjziZODmBU0mfrHkXjlhtKmcj
	U2CFOJxtvecBUBc67uI/gYoWF9pY55CeIj0AN7UoICfqn1iVPKfjRgHtoqse4bDC5neNOiFhh+d
	/u81Aa79m/w5qTTtAkjeA6/tdn5HpZaE3TPubUnShNKkJ4jy1c2ePf/eIcYms1CaKA==
X-Received: by 2002:a05:6214:2e09:b0:6f8:b1e9:e5df with SMTP id 6a1803df08f44-6f8b1e9e6afmr67305556d6.3.1747694639356;
        Mon, 19 May 2025 15:43:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIcNvJxTpaX4aSwxX8+XLPauKtBWB3PQV78lz2duPuZaNPM5o3XDBuZzyTejxUixxBkLYQYA==
X-Received: by 2002:a05:6214:2e09:b0:6f8:b1e9:e5df with SMTP id 6a1803df08f44-6f8b1e9e6afmr67305326d6.3.1747694638927;
        Mon, 19 May 2025 15:43:58 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4e8afdsm649638066b.176.2025.05.19.15.43.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 15:43:57 -0700 (PDT)
Message-ID: <3fcc04b8-42b5-4715-a2ea-815b7c4808a1@oss.qualcomm.com>
Date: Tue, 20 May 2025 00:43:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Wesley Cheng <quic_wcheng@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>
Cc: Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
 <Z/exOF4T+0vNLQwg@vaman> <0517c37d-b1ba-466e-bffd-9f47b0d458d5@quicinc.com>
 <aCRVaNDQP/PdAXPR@vaman> <5183b76b-8043-4309-b25d-e1ae505f929e@quicinc.com>
 <6fa4959c-d733-4d50-904f-caf933e02da9@oss.qualcomm.com>
 <f3727b53-8da3-d4f6-575b-108a8d6898e5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f3727b53-8da3-d4f6-575b-108a8d6898e5@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDIxMiBTYWx0ZWRfX+/3MI9n+ogpC
 BnCquMFprhQ3thfqx6UZlifZZHjxKjDiePIeiC2MdxufcN3h8AEFBy06gyHPOFozdHfOTgN/GwD
 zQES4mi3Sgq4u2XN2czLPAFdnsuizwmidQie6f7vcYotRJrUxQk3Qj4jO9uplM5DCcw/oqozeW8
 S4Dcq+2x4zpJxP9UjN0/c0SV6bw0KgTkQds9hgDfK/l+EjqALZXYnBQ6QETuTTa1t5GgK0ja6Dq
 ABpgg1tjujuXbb8tjr3Fzgl5LrJcPP9MNM9s3pI842nOOLLHgVp5mMAw6VkJNlGBdhQJyWBLvyf
 b1/n8DYbk+bDsCY7Xd/x0rtA4WLhTHACNPGrUfxGnFnCctkS/U6dMSGDAiK+ETPyeXrg0cNwMXz
 b0RxXVRvO1v8L0+o1aNOhWHtoKcBmIzzm/z2m9gymMLzZ8x+SE+B+ImtH06J0Srrh/HvTwJ4
X-Proofpoint-GUID: s7ToIWasrWmsCNkt2cyKzdRpJs-j8E3Q
X-Authority-Analysis: v=2.4 cv=KLdaDEFo c=1 sm=1 tr=0 ts=682bb431 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=jJrOw3FHAAAA:8 a=VwQbUJbxAAAA:8
 a=7CQSdrXTAAAA:8 a=9j9lLQFCJERsiU0aoWIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=-FEs8UIgK8oA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: s7ToIWasrWmsCNkt2cyKzdRpJs-j8E3Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_09,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 suspectscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_154403_810677_D30EA2E3 
X-CRM114-Status: GOOD (  19.37  )
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

T24gNS8yMC8yNSAxMjowNCBBTSwgV2VzbGV5IENoZW5nIHdyb3RlOgo+IEhpIEtvbnJhZCwKPiAK
PiBPbiA1LzE3LzIwMjUgMTE6MjggQU0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDUvMTQv
MjUgODoyNCBQTSwgV2VzbGV5IENoZW5nIHdyb3RlOgo+Pj4gSGkgVmlub2QsCj4+Pgo+Pj4gT24g
NS8xNC8yMDI1IDE6MzMgQU0sIFZpbm9kIEtvdWwgd3JvdGU6Cj4+Pj4gT24gMTYtMDQtMjUsIDE1
OjQ1LCBXZXNsZXkgQ2hlbmcgd3JvdGU6Cj4+Pj4+IEhpIFZpbm9kLAo+Pj4+Pgo+Pj4+PiBPbiA0
LzEwLzIwMjUgNDo1MyBBTSwgVmlub2QgS291bCB3cm90ZToKPj4+Pj4+IE9uIDA5LTA0LTI1LCAx
MDo0OCwgTWVsb2R5IE9sdmVyYSB3cm90ZToKPj4+Pj4+Cj4+Pj4+Pj4gK3N0YXRpYyBpbnQgbTMx
ZXVzYjJfcGh5X3dyaXRlX3JlYWRiYWNrKHZvaWQgX19pb21lbSAqYmFzZSwgdTMyIG9mZnNldCwK
Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3QgdTMy
IG1hc2ssIHUzMiB2YWwpCj4+Pj4+Pj4gK3sKPj4+Pj4+PiArwqDCoMKgIHUzMiB3cml0ZV92YWw7
Cj4+Pj4+Pj4gK8KgwqDCoCB1MzIgdG1wOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArwqDCoMKgIHRtcCA9
IHJlYWRsX3JlbGF4ZWQoYmFzZSArIG9mZnNldCk7Cj4+Pj4+Pj4gK8KgwqDCoCB0bXAgJj0gfm1h
c2s7Cj4+Pj4+Pj4gK8KgwqDCoCB3cml0ZV92YWwgPSB0bXAgfCB2YWw7Cj4+Pj4+Pj4gKwo+Pj4+
Pj4+ICvCoMKgwqAgd3JpdGVsX3JlbGF4ZWQod3JpdGVfdmFsLCBiYXNlICsgb2Zmc2V0KTsKPj4+
Pj4+PiArCj4+Pj4+Pj4gK8KgwqDCoCB0bXAgPSByZWFkbF9yZWxheGVkKGJhc2UgKyBvZmZzZXQp
Owo+Pj4+Pj4KPj4+Pj4+IFdoeSBhcmUgeW91IHVzaW5nIF9yZWxheGVkIHZlcnNpb24gaGVyZT8K
Pj4+Pj4+Cj4+Pj4+Cj4+Pj4+IE5vIHBhcnRpY3VsYXIgcmVhc29uLsKgIEkgdGhpbmsgc29tZW9u
ZSBwb2ludGVkIHRoaXMgb3V0IHByZXZpb3VzbHksIGFuZCBJCj4+Pj4+IHdhcyBvcGVuIHRvIHVz
ZSB0aGUgbm9uLXJlbGF4ZWQgdmFyaWFudHMsIGJ1dCBJIGFzc3VtZSB1c2luZyB0aGUgcmVsYXhl
ZCB2cwo+Pj4+PiBub24tcmVsYXhlZCBhcGlzIGNvbWVzIGRvd24gdG8gcHJlZmVyZW5jZSBpbiB0
aGlzIGNhc2UuCj4+Pj4KPj4+PiBOb3BlIHlvdSBjYW50ISBUaGVyZSBfbmVlZHNfIHRvIGJlIGEg
c3BlY2lmaWMgcmVhc29ucyEKPj4+PiBXaGVuIHlvdSBhcmUgZG9pbmcgcmVhZCwgbW9kaWZ5LCB3
cml0ZSwgaXQgaXMgdmVyeSBpbXBvcnRhbnQgdG8ga25vdyB0aGUKPj4+PiByaWdodCB2ZXJzaW9u
IHRvIHVzZS4uLgo+Pj4+Cj4+Pgo+Pj4gSSBtZWFuLCBpdHMgYSB3cml0ZSByZWFkYmFjaywgd2hp
Y2ggZW5zdXJlcyB0aGUgYnVzIHRyYW5zYWN0aW9uIGlzIGNvbXBsZXRlCj4+PiBiYXNlZCBvbiBb
MV0sIGhlbmNlIHdoeSAqKmluIHRoaXMgc2l0dWF0aW9uKiogaXQgaXMgdXAgdG8gcHJlZmVyZW5j
ZS4KPj4+Cj4+PiBPdGhlcndpc2UsIHcvbyB0aGUgcmVhZGJhY2sgdGhlbiB3ZSdkIG5lZWQgdG8g
ZW5zdXJlIHdyaXRlcyBhcmUgbWFkZQo+Pj4gZGVwZW5kaW5nIG9uIHRoZSByZXF1aXJlZCBzZXF1
ZW5jaW5nIChpbiBzcG90cyB3aGVyZSB0aGUgc2VxdWVuY2UgaXMKPj4+IHN0cmljdGx5IGRlZmlu
ZWQpLCBhbmQgdGhhdCBjYW4gYmUgZW5mb3JjZWQgdXNpbmcgYmFycmllcnMuwqAgSWYgeW91IGZl
ZWwKPj4+IGxpa2UgdXNpbmcgdGhlIG5vbi1yZWxheGVkIHZhcmlhbnQgaXMgcHJlZmVycmVkIGxl
dCBtZSBrbm93LsKgIEkgY2FuIHJlcGxhY2UKPj4+IGl0IGFuZCByZW1vdmUgdGhlIHJlYWRiYWNr
Lgo+Pgo+PiBSZWFkYmFjayBpcyBzdHJvbmdlciBvbiBhcm02NCwgYXMgb3RoZXJ3aXNlIHRoZSB3
cml0ZXMgbWF5IGJlIGJ1ZmZlcmVkIGFuZAo+PiBub3Qgb2JzZXJ2YWJsZSBhdCB0aGUgb3RoZXIg
ZW5kcG9pbnQgZXZlbiB0aG91Z2ggdGhlIGluc3RydWN0aW9uIGhhcyBiZWVuCj4+IGlzc3VlZCwg
ZXZlbiBpZiBhIGJhcnJpZXIgaGFzIGJlZW4gaXNzdWVkCj4+Cj4+IFNvbWUgcmVzb3VyY2VzOgo+
Pgo+PiBodHRwczovL3lvdXR1LmJlL2k2RGF5Z2hoQThRCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LWFybS1tc20vMjAyNDA2MTgxNTM0MTkuR0MyMzU0QHdpbGxpZS10aGUtdHJ1Y2sv
Cj4+IGh0dHBzOi8vZGV2ZWxvcGVyLmFybS5jb20vZG9jdW1lbnRhdGlvbi9kZGkwNDg3L2xhdGVz
dCBzZWMgQjIuNi45Cj4+Cj4+IFRoZXJlJ3MgYmVlbiBhIHJlYWwgYnVnIG9ic2VydmVkIChwdW4g
bm90IGludGVuZGVkKToKPj4gQ29tbWl0IDJmOGNmMmMzZjNlMyAoImNsazogcWNvbTogcmVzZXQ6
IEVuc3VyZSB3cml0ZSBjb21wbGV0aW9uIG9uIHJlc2V0IGRlL2Fzc2VydGlvbiIpCj4+Cj4gCj4g
VGhhbmtzIGZvciBzaGFyaW5nLsKgIFVzZWZ1bCBpbmZvLi4uVGhlIHdheSBJIGludGVycHJldCBp
dCwgZXZlbiBiZXR3ZWVuIHJlbGF4ZWQgYW5kIG5vbi1yZWxheGVkIHZhcmlhbnRzLCBhIHJlYWRi
YWNrIGlzIGFsd2F5cyBkZXNpcmVkLgoKWWVzLCBhbmQgSUlSQyBpdCBkaWRuJ3QgZXhhY3RseSBt
YXR0ZXIgd2hpY2ggb2YgdGhlIHBhcmFtZXRlcnMgd2FzIHNldApmaXJzdCwgc28gd2UgY2FuIHVz
ZSByZWxheGVkCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
