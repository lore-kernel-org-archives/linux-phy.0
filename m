Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 546A0EB48EA
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 09:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOrASZ48MEPNXzjr7Y8iM7itJAQjQgJZ5OLC22TgIKg=; b=y2O62FSABtK0gx
	Laqx4uZfonrnu7LCgaGd+6NM69FXQMxA8Dp34e6a4G9s9zwrzhH8rlzOxwqK9B99NXx6/vtUSp8ci
	d97skcM0fmHp1uTraJDTqAQnnkX+GQq9HjvFzD8RjTrPR/OKr8R8uS5q8xnLU9IM//ZbhFl2IeDaD
	i0rFWIiHaxRs43aw+xugbIXvFa+OjPZtWvZDZYmh4yliVPmQdvsi+sVhYhCDypBy135U9j0aC86N0
	py79k0a2foQ014tAJHamtNK65Rgo/6h58jlwADhqejgK5IBlJCGc7WJmV2ZPwvMwdTpQhQkEs2im9
	PWBxPIZesj9dUjbDTeNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqScQ-00000001o3D-3nOY;
	Thu, 12 Feb 2026 09:04:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqScO-00000001o1Z-1Snn
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 09:04:14 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3Rr8Y3319670
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 09:04:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B0kcqtvA3ePB8KKYwiDSDXXTXzG7b7vVz14UKRtxCZg=; b=mJPSZBi2SRs62zNN
	izVIZFF5+TI6cdweIs2nA87GX+4vA0ao53Z2kZn9BMy0cpm2xyYhe3T2FtlXl09E
	hx+19aqhJVvLalcbaWYlE61/aR2+lnAQjQ/HJHevzt/JxngmprftgwqKzntifrLG
	IwzOyR2Zvta2M0uBvs3JBBPkW7yhfb8vLqmQsLTd1/44uLT4EqUXSp7G/GuFBzY/
	tsh1K8o0ASGZ3DWpVoCFK277j7J+pvwa8KMyPy6sShW31WPAw7Il3RZ2hrO5AV7d
	PHpvy39BOq4sbNmrTd4Jr/XGeB3u7w7Tr2iGWvfMEauVZHxDrJBl2l7g/pkn8xbS
	J6vsgQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8wc4tp13-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 09:04:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354bf10ec2aso4875810a91.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 01:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770887050; x=1771491850; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B0kcqtvA3ePB8KKYwiDSDXXTXzG7b7vVz14UKRtxCZg=;
        b=GHthUujqnmsv5g1QD7yq9xcVWkhuECVLZIAK/86KU+2OKEz2i1qffsbPGcOds3ZwH6
         6WpZjpTBwUD2Q6um5HEpHumuOlj/PCBFZuXs/9c5FaPHHQCg3lttDlVyP+geB7Bg6rlZ
         JsIizqZbyJjxfhi9vrHA7MDuT3CIHFUmT3S2TsykZfZql/0VwG4HujJ9gJJzSs8K7PBZ
         77ftlGE6VpA1SGYat+B2CnpaleFVjpr0kwNjic3jjye3A9yRBKSF3j8pKX4gN16YtCoX
         9xOwo3XfiFBTS0Td745ikRID5fpEnDT1rMQkOJXd7D6UNu8cSBLz1KCXeKbzjPdHOkDI
         9PzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770887050; x=1771491850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B0kcqtvA3ePB8KKYwiDSDXXTXzG7b7vVz14UKRtxCZg=;
        b=Npv/v4or7ENK5vHmdyjaPHuOvPreM9qD+mH/3+ipfnTUSWfQzT6r3lsEQWbFSqq/yd
         1rTOp4lyIjDMpMrZI6q5CwLjCqzop8pBddEmSchKJv405BwFg2y0Si/c2XZzEGRbzjMP
         pdHZ00mhS2zkYvy48U1+vA9jfK4HNjCVe9zmszsMYwhWt2biq6VrQKoY3aVbbG4TYfBl
         geCNqHRCrh3pVYDkFT24EThunSqDG5e2ey+k2/YMMIaEnZXySfkm089V92SxAd9DrO0x
         tNJfzGfX3msSQPGIKdTS8JpVgj4kUmiOPUE5JuA/Gq6eKii4iBBQc2AmKDzoABelw3ZH
         91UA==
X-Forwarded-Encrypted: i=1; AJvYcCUx2HZbP4qvTlKoHGcuPdBXJi9eQsxIgEufyehSfXPyGl2b6J9ChWlHXg3eKIMYFGeNfIMgHjf2W24=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTzJO33BPufxfz2j7Ki5o39bExSybe7cScFgfAre5JxDtgUVvl
	b/f6mnbE85kxPWbAAIubzrxhwsm2zBDUt7n8qKV5Tm3LIMk9qDn8ICJzrKAqqtIPWGwG1b/yd5z
	/W8ZHxAik3NsbIOEoccwiynE8Jb3NtRPquJrZc0PFLCNRBh191gPda/l8EvVhdH3UqEer
X-Gm-Gg: AZuq6aIwtQVGwbNjOAnHTsiFPrgUhUC6zvZgAWi0s7k4zqAeiOul7UPdfxlW37zpdgv
	ksBezlpT03oXrtOL5yDDgo/Wu8s4lgbf9fArRSkQz41teTaGpvFOVCICfGMBPm0ycRcrG629pUL
	C02XpNEN7KFFJxPNZ5PeMgTxOKG3EiKIOXNtwEZD3Kl3+oIrIVKPHpXGBE7o7qrvtrhg2t5HBHj
	eakfkNQFykuVejY58pglGIksnxfPlHK+QHhfr5a88lRXa0ChKqx46TDgIo5Y5JYiihn+8W2Hwti
	GOSusUJ2Y2voXGFlWfI2g41WogBEkocNAgQNqh8NKIXRgWBuRMlb//dwTqieVEUo/Pb0uxk6Z44
	qULOa+/0Mrd1UCCTamvO35djIQA4mrWW2AP98sFft1BZXqLIgaqfhC/Lo1q4AwTD4Jmxoo5fLjq
	dCBuHDVt88dw+ILE8Clg==
X-Received: by 2002:a17:90b:49:b0:341:8bda:d0ae with SMTP id 98e67ed59e1d1-3568f3e103cmr2276264a91.20.1770887049925;
        Thu, 12 Feb 2026 01:04:09 -0800 (PST)
X-Received: by 2002:a17:90b:49:b0:341:8bda:d0ae with SMTP id 98e67ed59e1d1-3568f3e103cmr2276226a91.20.1770887049311;
        Thu, 12 Feb 2026 01:04:09 -0800 (PST)
Received: from [10.133.33.213] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e1967c884sm4457244a12.7.2026.02.12.01.04.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:04:08 -0800 (PST)
Message-ID: <8dbc18a0-6a64-491b-84b0-ba220c9050ac@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 17:04:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
 <200b055b-7221-45b5-aea1-2462e07a3c1c@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <200b055b-7221-45b5-aea1-2462e07a3c1c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 9wKXcR2cmvyyAzzaYhxAa3_CZicHBYb9
X-Authority-Analysis: v=2.4 cv=NrLcssdJ c=1 sm=1 tr=0 ts=698d978a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=MeP4MrRKjM_wGNXPxAkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2NiBTYWx0ZWRfX1jSNZY9QlHHY
 faIoQanneSEBFvCa5aqzbqrllahpIp2rg06pi4XTm8eS36tc+gxgEZKGr+bMlcf6Hih+eJK3tch
 2XjoPXEr9t/MZmXfWmStZt97WbEUawUDZu56WpCApPgV/6JTtZ484iG3hiqzbSBJKAT3rPgu2Zl
 SWca8t28UZ7y3he+W0ZWnPN/KgmTnf8npGYVa8W0uothBK2yU+kF9ChZw406RtE2HtWcRSlEZNS
 1gJ704CHaqvTHy9RudI32tvinuIAJLcBO3JmDaiWEry7gAgR77+V4F7mn0HvXJ+aJUh1thz8BHE
 gzAuaD+n+vAE4WC7CD72YewrcQ8Gf6ISQb8IoNdi1Y85Tp5HT4m/CrO9ub4VMH35xZdYBFm8KYY
 ToD8k8lGyWp9WxkSQYZ+IYquEX0g5/INZStRNIMOt62tt6CElLE2om/K/4TAWY9Af7XYREWF1dW
 E0Z5/Vn8bNtHIpRF3jA==
X-Proofpoint-GUID: 9wKXcR2cmvyyAzzaYhxAa3_CZicHBYb9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_010412_506526_FD4E6B1B 
X-CRM114-Status: GOOD (  13.46  )
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

CgpPbiAyLzYvMjAyNiA2OjUyIFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+IE9uIDIvNS8yNiAx
MDoyMCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+PiBJbnRyb2R1Y2UgdGhlIGNvbV9sZG9fY29u
ZmlnIGNhbGxiYWNrIHRvIHN1cHBvcnQgcGVy4oCRUEhZIExETwo+PiBjb25maWd1cmF0aW9uLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBZb25neGluZyBNb3UgPHlvbmd4aW5nLm1vdUBvc3MucXVhbGNv
bW0uY29tPgo+PiAtLS0KPiAKPiBbLi4uXQo+IAo+PiArc3RhdGljIGludCBxY29tX2VkcF9sZG9f
Y29uZmlnX3Y0KGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRwKQo+PiArewo+PiArCWNvbnN0IHN0
cnVjdCBwaHlfY29uZmlndXJlX29wdHNfZHAgKmRwX29wdHMgPSAmZWRwLT5kcF9vcHRzOwo+PiAr
CXUzMiBsZG9fY29uZmlnOwo+PiArCj4+ICsJaWYgKCFlZHAtPmlzX2VkcCkKPj4gKwkJbGRvX2Nv
bmZpZyA9IDB4MDsKPj4gKwllbHNlIGlmIChkcF9vcHRzLT5saW5rX3JhdGUgPD0gMjcwMCkKPj4g
KwkJbGRvX2NvbmZpZyA9IDB4QzE7Cj4gCj4gbG93ZXJjYXNlIGhleCwgcGxlYXNlCj4gCj4+ICsJ
ZWxzZQo+PiArCQlsZG9fY29uZmlnID0gMHg4MTsKPj4gKwo+PiArCXdyaXRlbChsZG9fY29uZmln
LCBlZHAtPnR4MCArIFRYbl9MRE9fQ09ORklHKTsKPj4gKwl3cml0ZWwobGRvX2NvbmZpZywgZWRw
LT50eDEgKyBUWG5fTERPX0NPTkZJRyk7Cj4gCj4gdHgxIHNob3VsZCBiZSBkcF9vcHMtPmxhbmVz
ID8gMiA6IGxkb19jb25maWcgOiAweDAwLCBpbiBhbGwgY2FzZXMsCj4gSSBiZWxpZXZlCj4gCj4g
S29ucmFkCkhpLCBoZXJlIGkgd2FudCB0byBjb25maXJtIGFnYWluLi4gSW4gdGhlIEhQRyBtYWlu
IGxpbmsgYnJpbnVwIHNlcXVlbmNlLCAKaXQgbm90IHNheSB3cml0ZSBUWDAvVFgxIGxkb19jb25m
aWcgYmFzZWQgb24gdGhlIGxhbmUgY291bnQuIE9ubHkgd2hlbiAKd2Ugc3dpdGNoIHRoZSBsYW5l
IG1vZGUsICB0aGUgTERPIGNvbmZpZyB3aWxsIGJlIHVwZGF0ZWQgYWNjb3JkaW5nIHRvIAp0aGUg
bGFuZSBjb3VudC4gc28gaGVyZSBkbyB3ZSByZWFsbHkgbmVlZCB0aGlzIGNvbmRpdGlvbj8KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
