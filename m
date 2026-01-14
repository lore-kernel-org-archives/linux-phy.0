Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 492C2D31A3D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 10:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bmROOv24mq1wOMjqhB+rnQy47Rh84UDyOMA4yNZElA=; b=HZtANz+jZCH09M
	8Uw7CTqfSahZr6J5j8Hv1Zsnu3o0abdsrVfpYFV2Cnb+6X+GNybeUBFP3X+AwT5RPsOGW8z1Oxbti
	HktawgH1wQqp2YLq28yG1kBCchDM8cykjItqbINqS/7UUyz2G+1GS062KJ5RmMTq2b3/461zALHbL
	LqV5rZ/fJYvNh8dhBDv1EpxACBmwgJg33R90R9BE5j1ObPWBEEuw6b2jRnUHQXP19WbDpRyQJx3jk
	2iGHt/1b9TL42YW28MQ4kfgxt5J3Jqh+CbdiijmuksC6nNT1w6ZtjxPBz+wHqeE73OdOFXG91gS21
	KVvuJ/+Bty0ZVCjRjOlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxk0-00000008fBN-3ynj;
	Wed, 14 Jan 2026 10:04:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxjx-00000008fAV-3VcT
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 10:04:39 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E7j3mb3270846
	for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 10:04:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LwJOhAcoLnubcI+OpTANBa1Q6k/a05uNgL+zKTmJFTM=; b=nRlFufa38/C8KQB+
	t7XdLj/CP9XUzHX6kWnl2Rlc1rwX9KIJjikY9wM/5Q9iySLu2B4fkeoDvqn516oK
	uyod7fBAZCc0pYL9Y8MLdxf+/T0cG1b9rZClV0BFouqc1pjgowpokTlVjo5zqXUw
	Y1fjQRDlfBDN/RxQtxSL6x+icmC6Hr8WfrKHDm3Ymz1mhqD4qQZWf2V4rtaZsXAB
	TIX8MX7TcSdmk3/LcXDPpKdGIK1crmazxy22Fha9ntRaQT1xPYvkwIquWSlXrOcJ
	CiIA48AHc1QvRap1tDjZv5yL7dZmMsIpi/02o7vhIhh2VvgP3ketv7mM5NDUpx8M
	XC4/+Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bns8v3av2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 10:04:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52de12a65so23666385a.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 02:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768385076; x=1768989876; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LwJOhAcoLnubcI+OpTANBa1Q6k/a05uNgL+zKTmJFTM=;
        b=V5Droyy1wJuHUFYJ4aKpSrRwwpAh0DyKMB1+Ma2jiZ4HuMSrUqDjnxGq8NVDnIuYhs
         CrI/Tn9AqJWLvLOVMRLUSrUpbMr4761uz+NFKh3R88106x0IPHYweaz0Dpig25jVOiPI
         8YLzJv9ENjmbh7V34FELaLxsBn2UPqtPXh2SiPc+sVbtFioDoqpkNeB1U9iCOoCRMsNf
         E9RJ2TdB4C4E/GoWmaPyh/c79LaWSXnX4O5kQZPAoiur0x1rcsMefJx7G/Lg5Td3C+Pj
         uURDLXDf+CKBzMYzzu+yHrD9J4FaM2ZmX+tQH2D0KmDvtbfMev8jCxdDkrgNmJS0HoM4
         Iljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385076; x=1768989876;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LwJOhAcoLnubcI+OpTANBa1Q6k/a05uNgL+zKTmJFTM=;
        b=Tj8d3BQzQMWGAMBjKgtP7CF0uTbSNRwSmiZfLrCnBuHvjOJzY2cuOO77ewFHa5sKoH
         62VO4rsG4ztn1VKBMvFpue7P8BL4Zff5m5ALZDieg9sxcfkL8eIuk0dLyRQTgNxI8zyE
         xKtXLVJ2grjjcErlXfqhmCIw5mxgr6hcuGOdzMPi/gcx3yJDqK6vsS1zEIr482T155FC
         5uNabSGfu8/731m7QzDKEKZuHwf8UlF2mKsvBwkaxNkGfbncH47gEhYgpZBLF2Fac8yC
         pbizLXW9Wx8qFUs+3qxOUt8fxVQLc7z6dVmNwWlXndupKAPj7SfvjWo1Nq7Y/5VHIUmd
         b9QQ==
X-Forwarded-Encrypted: i=1; AJvYcCVw+bCtBcx8SvicwDsd4/0OLmycRogUk1Ss/c/gvQhgQ80RixI3g6/zSziSI2wi8kHk2Ntbhj4Asys=@lists.infradead.org
X-Gm-Message-State: AOJu0YzN3nyox/Sn+j4PjaifbkJGsphBUAEbIwnMmgumO3kVFohZLQRY
	JcGGUcNkk+jRTf2mYqc40p8WZ4Y83LIbHb4VC+yUPxmHeLrI+ud7XhWCQ9RDwoXs28moinMHqkd
	PWE9aCDAMvY5V/lxmlMUO7iFpwZtAh6bkbxUy0FZn6QOdhVXArH/FJZl8tZzxoeEVYuFp
X-Gm-Gg: AY/fxX5GLJ2IP8d7OI/3nW5jnOJRSlDIFIjM3WMJY+VEOEI9vM+yu6hyUFg1/xisUt5
	6l70vY0NFfdoRYtPmoKenXlG/zV3p4AjQI+LFz58A6zW6a3/r3xlr5lGhMeQUr2RdfzF8Lfbth3
	unfwseXxK2Z17RJac8D5Yji9PdmI3x89aw5Sxi0Nt2WPrmAAMT14byKFxIs/guyGfheNBwZwD7N
	EwnT3jxPKgDDNqnghsOJIKzKDQvZKHwocW6amb9cHG47LKcJdqAiAqmKX9nbMzn8wpfYcMy/uvP
	m1D5c6uIiXhMmaP2oOWNHfcFt0lPLTtbw+MnAJ+Zo+WqRphylJwMQezOM4hYjNJkLXjrVInypbv
	bIs4hyNxzaZaJL1XAKTDwFWUN3Sd34ewu2/6XiAeieY/QqUifmqF3Jg6qOJYZfnvIyeo=
X-Received: by 2002:a05:620a:4411:b0:8b9:e0ea:af3b with SMTP id af79cd13be357-8c52fb74bd4mr221987385a.5.1768385075629;
        Wed, 14 Jan 2026 02:04:35 -0800 (PST)
X-Received: by 2002:a05:620a:4411:b0:8b9:e0ea:af3b with SMTP id af79cd13be357-8c52fb74bd4mr221982985a.5.1768385075013;
        Wed, 14 Jan 2026 02:04:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b22c3absm22533208a12.0.2026.01.14.02.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:04:34 -0800 (PST)
Message-ID: <dd877ea8-b634-4cc9-8280-08663f82776d@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 11:04:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
        andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
        sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
        melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
        ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
        luca.weiss@fairphone.com, mitltlatltl@gmail.com,
        krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
        kernel@collabora.com
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
 <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
 <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
 <aWdk-RP-59cJeCBo@smile.fi.intel.com>
 <ae46b504-58d3-4042-be05-f31e9e01091b@oss.qualcomm.com>
 <aWdn_j7SOKq97vpY@smile.fi.intel.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aWdn_j7SOKq97vpY@smile.fi.intel.com>
X-Authority-Analysis: v=2.4 cv=aY5sXBot c=1 sm=1 tr=0 ts=69676a34 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=K6O-kMeRs0nb6JyVbzgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: X-yoo8SQiyRofX2CsVH62PLKo5SCCuLb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA4MiBTYWx0ZWRfX8qptLfdaGSof
 6p70E5FhBUa21QLzatkVNq4jIRBS5GA4dBbnZo+sGaK5LN/xl1YhI08axKrDBQb2XwU/AdfHPwf
 cROCQ+xfA5TZArpYooKVkKCIjRZwXFaTm05cgE3djCOGUJ1BIv6lI3I4Eo1ILaqwvuQA59fp9XD
 fI9fqkJVL1IMN2UurXhjnbn9sYAlzRNLKWtVLvlk5XdaRgHKeqAB3VrxkGi0NOOdE7y9PgAuBdw
 XchX+/lemkHYfpuQJxKW8wOg8mw9D35ybsGzFyju1QXzEq1YmAnKqrVCa+kgeDVH5Vuw9j9NGxi
 eh68P1AVX1tJ7r/Cap672sie8QP/75qCV154K8fmLnGDAcD2USI1azEsKmpHEGd4D9jYxXnjgbk
 YaKZnevH9zB38bxWVpJ3fUeuchhip3mAkgSXm2p+AKfkYcp0oC5KHmpgg3tk6riM4ZG+fTHAE7n
 gNMprZn4P6n5sx4H9Hg==
X-Proofpoint-GUID: X-yoo8SQiyRofX2CsVH62PLKo5SCCuLb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_020437_997387_832BA757 
X-CRM114-Status: GOOD (  20.82  )
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

T24gMS8xNC8yNiAxMDo1NSBBTSwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIFdlZCwgSmFu
IDE0LCAyMDI2IGF0IDEwOjQ3OjIwQU0gKzAxMDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9u
IDEvMTQvMjYgMTA6NDIgQU0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPj4+IE9uIFdlZCwgSmFu
IDE0LCAyMDI2IGF0IDEwOjA5OjQ1QU0gKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25v
IHdyb3RlOgo+Pj4+IElsIDE0LzAxLzI2IDEwOjA3LCBBbmR5IFNoZXZjaGVua28gaGEgc2NyaXR0
bzoKPj4+Pj4gT24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMTA6MDM6NTdBTSArMDEwMCwgQW5nZWxv
R2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4+Pj4+PiBJbCAxNC8wMS8yNiAxMDowMCwgQW5k
eSBTaGV2Y2hlbmtvIGhhIHNjcml0dG86Cj4+Pj4+Pj4gT24gV2VkLCBKYW4gMTQsIDIwMjYgYXQg
MDk6NTk6NDBBTSArMDEwMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4+Pj4+
Pj4+IElsIDE0LzAxLzI2IDA5OjU2LCBBbmR5IFNoZXZjaGVua28gaGEgc2NyaXR0bzoKPj4+Pj4+
Pj4+IE9uIFdlZCwgSmFuIDE0LCAyMDI2IGF0IDA5OjM5OjUyQU0gKzAxMDAsIEFuZ2Vsb0dpb2Fj
Y2hpbm8gRGVsIFJlZ25vIHdyb3RlOgo+IAo+IC4uLgo+IAo+Pj4+Pj4+Pj4+ICsJc3RydWN0IHJl
Z21hcF9jb25maWcgc2RhbV9yZWdtYXBfY29uZmlnID0gewo+Pj4+Pj4+Pj4+ICsJCS5yZWdfYml0
cyA9IDE2LAo+Pj4+Pj4+Pj4+ICsJCS52YWxfYml0cyA9IDgsCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
ICsJCS5tYXhfcmVnaXN0ZXIgPSAweDEwMCwKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBBcmUgeW91IHN1
cmU/IFRoaXMgbWlnaHQgYmUgYSBiYWQgbmFtaW5nLCBidXQgaGVyZSBtYXggPT0gdGhlIGxhc3Qg
YWNjZXNzaWJsZS4KPj4+Pj4+Pj4+IEkgYmV0IGl0IGhhcyB0byBiZSAweGZmIChidXQgc2luY2Ug
dGhlIGFkZHJlc3MgaXMgMTYtYml0IGl0IG1pZ2h0IGJlIGFjdHVhbGx5Cj4+Pj4+Pj4+PiAyNTcg
cmVnaXN0ZXJzLCBidXQgc291bmRzIHZlcnkgd2VpcmQpLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBZZXMs
IEknbSBzdXJlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gU28sIHdoYXQgaXMgcmVzaWRlZCBvbiBhZGRyZXNz
IDB4MTAwID8KPj4+Pj4+Cj4+Pj4+PiBJIGRvbid0IHJlbWVtYmVyLCB0aGlzIGlzIHJlc2VhcmNo
IGZyb20gYXJvdW5kIDUgbW9udGhzIGFnbywgd2hlbiBJJ3ZlIHNlbnQKPj4+Pj4+IHRoZSB2MSBv
ZiB0aGlzLgo+Pj4+Pj4KPj4+Pj4+IElmIHlvdSByZWFsbHkgd2FudCB0aG91Z2gsIEkgY2FuIGlu
Y29ycmVjdGx5IHNldCBtYXhfcmVnaXN0ZXIgdG8gMHhmZi4KPj4+Pj4KPj4+Pj4gV2h5IGluY29y
cmVjdGx5PyBDYW4geW91IGRpZyBpbnRvIHRoZSBkYXRhc2hlZXQgYW5kIGNoZWNrLCBwbGVhc2U/
IFdlIGRvbid0Cj4+Pj4+IGtub3cgd2hhdCBpcyB0aGUgMHgxMDAgYWRkcmVzcyBtZWFucy4KPj4+
Pgo+Pj4+IEkgZG9uJ3QgaGF2ZSBhbnkgZGF0YXNoZWV0cyBmb3IgUXVhbGNvbW0gSVBzLgo+Pj4K
Pj4+IEhtbS4uLiBDYW4gd2UgaGF2ZSBzb21lYm9keSBmcm9tIFFDIHRvIGNoZWNrIG9uIHRoaXM/
Cj4+PiBQZXJoYXBzIERtaXRyeT8KPj4KPj4gMHhlNiBpcyB0aGUgbGFzdCB1c2FibGUgcmVnaXN0
ZXIgdG9kYXkKPiAKPiBUaGFua3MgZm9yIGNoZWNraW5nIQo+IAo+PiBCdXQgSSB3b3VsZG4ndCBt
aW5kIGVpdGhlciAweGZmIG9yIDB4MTAwIGJlY2F1c2UgSSBkb24ndCB3YW50Cj4+IGFueW9uZSB0
byBwdWxsIHRoZWlyIGhhaXIgb3V0IGlmIGEgcmVnbWFwIGFjY2VzcyBpcyBkcm9wcGVkIHNvbWUg
ZGF5Li4KPiAKPiBUaGVyZSBpcyBhY3R1YWxseSBhYm91dCB0aGUgZXhhY3Qgd2luZG93IHNpemUg
d2hlcmUgcmVnaXN0ZXJzIGFyZSBiZWxvbmcgdG8gdGhlCj4gc2FtZSBlbnRpdHkgKHN1YmRldmlj
ZSkuIEFzIGluIHRoZSBIVyB3b3JsZCBtb3N0IG9mIHRoZSB0aGluZ3MgYXJlIHN0dWNrIHdpdGgK
PiBwb3dlci1vZi10d28gbnVtYmVycywgYW5kIHRha2luZyBpbnRvIGFjY291bnQgdGhlIG5hbWlu
ZyBvZiB0aGUgZmllbGQsIEkgZG8gbm90Cj4gYmVsaWV2ZSBvbmUgcHJvdmlkZXMgYSAyNTcgKDI1
NiArIDEgPSAy4oG4ICsgMSkgcmVnaXN0ZXIgX3dpbmRvd3NfICgicyIgaXMgYWxzbwo+IGltcG9y
dGFudCBoZXJlLCBhcyBpdCBwb2ludHMgb3V0IHRvIHRoZSBwYXR0ZXJuKSBmb3IgdGhlIHN1YmRl
dmljZXMuIEkgYmV0IHRoZQo+IDB4ZmYsIGkuZS4gMjU2LCBpcyB0aGUgKmNvcnJlY3QqIHdpbmRv
dyBmcm9tIHRoZSBIVyBwZXJzcGVjdGl2ZS4KClJpZ2h0LCBbMHgxMDBuLCAweDEwMG4gKyAweGZm
XSBpbmNsdXNpdmUgaXMgdGhlIHJlc2VydmVkIHJlZ2lzdGVyIHdpbmRvdwpmb3IgYWxsIFF1YWxj
b21tIFBNSUMgcGVyaXBoZXJhbHMsIHNvIEkgZ3Vlc3MgMHhmZiBpcyB0aGUgY29ycmVjdCBjaG9p
Y2UKaGVyZQoKSWYgYSBwZXJpcGhlcmFsIGlzIG1vcmUgY29tcGxleCwgaXQncyBzcGxpdCBpbnRv
IGEgY291cGxlIG9mIHRoZXNlCnNhbWUtc2l6ZWQgYmxvY2tzCgpLb25yYWQKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
