Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567C5C87FC9
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jul 2025 13:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUBrAVUkrfFS9IOnQY571sADAoZw6F3SXKVPeAzvI9E=; b=xYg+rV8QYMcHFO
	APw129Cy71h5lz3ILLKUGt06ni3UzJdLx0kU9ByPGANhHvong8ab2TRcbIknDPVXay8BIK+cYBNiz
	0G9CCbttj35/W16ZwE6a0TX5twqe5Xh18nCywbuf4HnD5Lvt9sg5RS94VmSFmqtADYODlu3yhPkqb
	xZwYDPPBvapF+LG83/WgKAL6FTDbcG+1jnGeL3WHgOczKkxvHUtcmYNa3waqn6cEq6Cu3vnFW28Bl
	XZtyV8GiKb7S+ZfDqOukO9huavv5g3zE3WGTu5JPINInRY4gG8G3sO81/LyduagfLZPp7mWoI1SZp
	3G1uRFKGd3cUDF6yIOPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugkRB-0000000Goa0-3lfL;
	Tue, 29 Jul 2025 13:32:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugkR8-0000000GoZe-38Tp
	for linux-phy@lists.infradead.org;
	Tue, 29 Jul 2025 13:32:12 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56TA2urb016216
	for <linux-phy@lists.infradead.org>; Tue, 29 Jul 2025 13:32:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rxf3Nnt90oOV5L8CNTt+oQ9ToPCocW8enMiasd1MNto=; b=jpnWDldJ9rk8DHmw
	ADBKBxby2tR09BvFzV5peoYbLgDHaxu1NVUEEVdOAODl8IAqMUWC2G60HthJ6vYG
	/ShgPqyY0SRQrqoJR6iTJkSy5K6anl7cHdIY+ORJWlCLcbUMIdNs9lT3m3By5yus
	u47vk/XSzMKMbBaW40Kp67l5Ddt9no3/5HqKysSgsVFxTIVo6h5QhHjr35ZoURBR
	T/s9WgeCN6sArXuSaSlJkBWjlnp+VV9T45FvpHWJvuSYldnMb/JI5im96jwCtbro
	SAGkx6TbuYH+HHC2q/xV/ileXpfqBo2+FaMlVhJU5KeHaDniMB1dgpL3PyPz4Krb
	Q1vDMg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 486v6y0k0w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Jul 2025 13:32:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23e1f9f2010so13224095ad.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Jul 2025 06:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753795928; x=1754400728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rxf3Nnt90oOV5L8CNTt+oQ9ToPCocW8enMiasd1MNto=;
        b=heO4iTQZb/7iZPLSubHm1q9a4fuYpu8uAj+ojhjE82YFjkkpgWTqV5svoqoQ7DGDJj
         GRre0jGpOly/8Ls54kRR4ICwMzfQ093WKSEW/p1GHT/yppfFEV2DZiVEZmvjROpC4MXN
         P9bAv5BT/2WWEz3ugRAeU/yKr9z5VX1uILDMn3F84li5sX7V11fKMXmkvAevLTrB04ys
         20EzEZkskLdIypcuI50zUdHCRfxcSLmZuYkluwGDKp85HpJAbBOBpW6SwQywx9MCzkTS
         KkAfBpyaTfkti12Q9qDBQOG5zRo1IroBE3iOxw3+pmm2eRfoyPo/0F2TN01E+cvNq352
         eKmw==
X-Forwarded-Encrypted: i=1; AJvYcCWF8FdA+Z5DiHXo5Bb+jDKbvxNjhI5sqX1lhY+o4uF1r67ub96hDNgCDSidl3cu5cpurxvs12J3sCw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmlijNRZE/7NgOX2Hm6A8dpnBOEIeJFrGxTkootrpYiTPJSqmd
	8Hx6qmSOSF2hVCtHl/nyRlimzl7MdDRa0+26Mlw7w+oZvPAi0lx25GSiN2qJfdN6DW41Q+l6jEM
	PsWr/y3Uclw/bFMvbY0hSE4oVfA+8L6koD0NDNh1ALA71ahvzIIoYRru626RqcMYoE2Kr
X-Gm-Gg: ASbGncvrFq2QIetBjei5Bsb/AEUG3iW7i5ATs9+1oC+nLUblc6nbPH72V0inUafgmpN
	V5AiDciKu6iRpWvW/l9muyp+boo71W9idizqq88KRfnqhEHwj71LdJBA4QIsxruWfdJy3tSc+Ml
	UZOUicUfaVY/SRC9iulqAwBJsvH4hZxF0MdvrpMPLD4LctzXyYrTdWZDn6lqMKTFs85YxC8E1bR
	H/TK1ondCqi1ZOsxY1ALPdBYOl97jiU4L9wWTzu368Y5/mekrHbeLICkApIHpu252gSqh5eqU99
	pRTHymAYM4u2QNphferv7rhOS1uXhLHD85V6kDKhC74hTPJGFCLLgUqh55BSiEr8b5V4IGao0Vi
	fZRBWTXbKwa/pP/ft9w==
X-Received: by 2002:a05:6a21:4603:b0:235:6606:6840 with SMTP id adf61e73a8af0-23d701797efmr10497074637.6.1753795927894;
        Tue, 29 Jul 2025 06:32:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGppZH4tBm0B0ZjZxNPeIr5Ha36dgu+n0hmG3OmQx2BO7yLnrEJlDf1YuOvKQHgy5pzupLEDg==
X-Received: by 2002:a05:6a21:4603:b0:235:6606:6840 with SMTP id adf61e73a8af0-23d701797efmr10497026637.6.1753795927390;
        Tue, 29 Jul 2025 06:32:07 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af8f62b27a1sm19823066b.54.2025.07.29.06.32.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 06:32:05 -0700 (PDT)
Message-ID: <8dca591d-0a4e-43ee-903a-7a6dccff9250@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 15:32:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
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
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
 <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDEwNCBTYWx0ZWRfX7MhQ84zLraXK
 tOL2DPTWYLOySYaT2Q4On+RiINCR8YZMNDGOahg9pBGE4hSboj1SyF1IVO+s69l+5yFey2O9NMR
 un6/AoJxOt3x7mYCYt8TfaBiE3k2S14TSNx8DDttE1vAFhkP+XtmLQX1GoZ87cSubkIZQBw5kO7
 eZEfytBgASZiIKzo9IekljAeCQ0eL7cJobz14o4ytQNEep8LCS3IDmlFsn7UoA2WTYc8LIX9+8C
 WI14//5uDyK7h2z0tS37/unCoYO2pGU3hyciOFtK83HZrRMergQ5BXqRHHRiwwKlnZ99XY4Q4ec
 qXn/W8FiiOgi6SrpVHK3Qfp89W3q7hP7pR933gUdeSFIZ+C2NlokjFCgm2OHkCjFYKWfRB/q1RW
 gsHpPpTB9aswxI4/Fk5O1vgGNpgNWXUOH+jNoxEQo5ZFcWTYSEbJdEVO/BYO0l0JStvh4QZw
X-Proofpoint-GUID: wdWb3ToBMldE5L3cfQ9mbJ46g6EguxPn
X-Proofpoint-ORIG-GUID: wdWb3ToBMldE5L3cfQ9mbJ46g6EguxPn
X-Authority-Analysis: v=2.4 cv=QYlmvtbv c=1 sm=1 tr=0 ts=6888cd58 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=8Yr4R-HfXjpLVZqX0moA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 suspectscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_063210_790403_75E3C76B 
X-CRM114-Status: GOOD (  12.85  )
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

T24gNy8yNS8yNSAxMjoyMiBQTSwgWml5dWUgWmhhbmcgd3JvdGU6Cj4gVGhlIGdjY19hdXhfY2xr
IGlzIHVzZWQgYnkgdGhlIFBDSWUgUm9vdCBDb21wbGV4IChSQykgYW5kIGlzIG5vdCByZXF1aXJl
ZAo+IGJ5IHRoZSBQSFkuIFRoZSBjb3JyZWN0IGNsb2NrIGZvciB0aGUgUEhZIGlzIGdjY19waHlf
YXV4X2Nsaywgd2hpY2ggdGhpcwo+IHBhdGNoIHVzZXMgdG8gcmVwbGFjZSB0aGUgaW5jb3JyZWN0
IHJlZmVyZW5jZS4KPiAKPiBUaGUgZGlzdGluY3Rpb24gYmV0d2VlbiBBVVhfQ0xLIGFuZCBQSFlf
QVVYX0NMSyBpcyBpbXBvcnRhbnQ6IEFVWF9DTEsgaXMKPiB0eXBpY2FsbHkgdXNlZCBieSB0aGUg
Y29udHJvbGxlciwgd2hpbGUgUEhZX0FVWF9DTEsgaXMgcmVxdWlyZWQgYnkgY2VydGFpbgo+IFBI
WXPigJRwYXJ0aWN1bGFybHkgR2VuNCBRTVAgUEhZc+KAlGZvciBpbnRlcm5hbCBvcGVyYXRpb25z
IHN1Y2ggYXMgY2xvY2sKPiBnYXRpbmcgYW5kIHBvd2VyIG1hbmFnZW1lbnQuIFNvbWUgbm9uLUdl
bjQgUXVhbGNvbW0gUEhZcyBhbHNvIHVzZQo+IFBIWV9BVVhfQ0xLLCBidXQgdGhleSBkbyBub3Qg
cmVxdWlyZSBBVVhfQ0xLLgo+IAo+IFRoaXMgY2hhbmdlIGVuc3VyZXMgcHJvcGVyIGNsb2NrIGNv
bmZpZ3VyYXRpb24gYW5kIGF2b2lkcyB1bm5lY2Vzc2FyeQo+IGRlcGVuZGVuY2llcy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8eml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbT4K
PiAtLS0KClJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFs
Y29tbS5jb20+CgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
