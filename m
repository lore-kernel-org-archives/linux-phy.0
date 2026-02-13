Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3411AEDF152
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 11:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwALNLPfHhsaRqKt13KXopFX3OF3WOwLVCVJGQphYPY=; b=3+LVDvucBFKVOc
	cbMWTkvlQdpCOKlaHNa8BSHzowotBb+4z8p/juXyMe0D1p5Bm5gdV0snL8cq7RWdhpl8Y5cgTMVUI
	M3ezG1a5vw6L2JTBsBdmt/Flrf9Eygf+ZUkciFb4fBeZMMLZlIOhKigXGZivH8CepH4mVB5wnoGKA
	CcaeZeVy1U0NwWQ7HDc5ELjPVIUU5mUKbk5WXUqu+owGJnU1/pnwurTw1/p1fN2ebTbfR4pnnvGMt
	g7mor7xy6DywngrAAkV0OzUB6ZqAQwGOJtx1z3pnCn4WZ70mx9ARNyepASxeXIKc5xCBGcMP5o4Yg
	Kbs3zaXMjmj1vcs2S6FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqr7p-00000003Nrx-3vtO;
	Fri, 13 Feb 2026 11:14:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqr7n-00000003Nql-0XSy
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 11:14:16 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D5G2bM420747
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 11:14:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kf0MsnTl1MoxPVgGzu+Koh9phahROaNevqsbTzSVCnM=; b=ZKUd9Pfr0yxAL1GI
	MQSRCEhfkJglu9+6nNnDw5kpHryplPFl53WMA/qoIMCowX/G0zTkF1XMlIP/SiHG
	Zc3pR1WkzfdZkc6dVj/ip1yi7mvUmBJYMVp2+xNIXhazPlfDSIHIeRbiz3wrcyaR
	ktaQRXbnUK7R1i8sH7GSJi8vpGLOj7GKI5/VFZdlJC+S8rfCRUz+rzyqm3QZPpUh
	6PJYNyEEm4JKuK+6axhVdWtGrXFGgbI8AD4EWXcWPikg/c5xS4igZCqXM5vSN0XF
	SxyqoNDUBk66OWHMom29rSpj9a5SWK6dDC2Tl8Kqzx/sQd+Q0P+oBeecrSoBXrem
	yiW1PQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9jgbbn45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 11:14:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb485c686cso6355485a.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 03:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770981253; x=1771586053; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kf0MsnTl1MoxPVgGzu+Koh9phahROaNevqsbTzSVCnM=;
        b=I7g5w1i9dj0QwYhXmy2pkMV1wPxH4m81SbkaW3DIcPZmDGb0a5kWwbBYCUvcpYwPXo
         dJ4/wHfbTyzqdjbZk/ZphewgZl6BUDZAFgB1aL1mh4V/3o5ShDTklgmDTa5eZMckNO4q
         rSm7Qb6/PVpTjGu5N/nbiha7GUcheoL5iXh0HpMJSEpltLiK5y/JUgXYzP67NjYI+dtt
         f1rO5wVcvXZYyA1zAf35rabuL0uwg6Ae2quRP/OJXdEwNsiPgtge9NcdkzWgfe0kJVej
         dEjmvYb3iPnpEMNPGii+UqnraypVXCd+PVptgKd9zV5WAvE1dpciek75FQTU1oalG0/n
         KBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770981253; x=1771586053;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kf0MsnTl1MoxPVgGzu+Koh9phahROaNevqsbTzSVCnM=;
        b=CgNGGPQ1O6PeKNqRsHXki+HnPuMrdz0NGpgX7E1llaRN5b5JdSqIJgYEsQUuax/a4t
         Sn8K7Q5DOHHUe5UwGrbg1AOMYhd8QNczlwC9SMPHWnAAxLL9YirLc+CFOzERuMu+fgfy
         r9vJiqX4vQEzjQrdIGKja6uNOf6Xh89HfCME9NAM52nsBnMiFCRYBV5vt0UHUinokgUQ
         BhesJralKIZIcqr1ew4VwL70cyulG18bV9GClypysMaTO2IWOYOvBojXOQ7uyrCnGgba
         8B+XacALCo8jTiRFYLY9zZakoMrxLRbnfSSjPlNuMJ+BYIWIUsuGlxK4ZIgRQ1HAMzXB
         TqSQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8St+ELFIopYB66ylo5Vf3h0nQWgbtKByZ2LvWniMrDn2HeuZFT/GjDcK+6Zv32ljlEPIkR9MRGjU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBVGT/YEFN40vRLFp0p5JIRhByE7ICQ8B6lhFIU9v1+4XFPo8W
	8VNeZEWuCSh45smFWcZ9owBVjiLISPcdRs1sOdbp3n9xnoBzIYaEF1Ec49efaYrQgUSRDO7v6vm
	pnjJvwOQ4OCuBLSqr9Pvi7vneItKNBKkZNGOI22grS8D/TZY+rMnjHP5xghAvDBOh3UVT
X-Gm-Gg: AZuq6aLRg4mUxJm/sMIPbCb2bBjcJVU1ZRdnMyTIibZW0hf6G1/zwMmqbZQhxrSULLx
	4mHSe7SD9o5EuAjApJznVvJB7AbVBjQZvzbm6jMEC+Cgd2nlnBCxBegjPEte8GdwRBvZprFjRwe
	hmconq+BPK57PLmUcTCQcaQPSdA7qTr7pNBj/mQUqOCj7cteD6EJOkoPXN8LwRfr1BCCMVHHbJh
	fyXXGnv/cAtVm2UKkfdBJSFCPAkKuj7XJfYtid+MmxhBYROjHyHngOkUqnqRR3BgKOpEFQ05qGh
	lyMh87h0A/qSXsqtwDdH9RdADG+A6JxcWLGRxW0wu/TMFNfsN4OrL6QQqTkC55wXIt8wiJrBAUX
	JUl8EQEy4ENQSOmzOYktgb9WuARtqmBVEgMq2UlEmvWrfVrBCV03LW6yOa4ZU5LzrHK58NH91r8
	I26lc=
X-Received: by 2002:a05:620a:454f:b0:8ca:2e7:56c5 with SMTP id af79cd13be357-8cb40916695mr184541085a.11.1770981253581;
        Fri, 13 Feb 2026 03:14:13 -0800 (PST)
X-Received: by 2002:a05:620a:454f:b0:8ca:2e7:56c5 with SMTP id af79cd13be357-8cb40916695mr184538585a.11.1770981253134;
        Fri, 13 Feb 2026 03:14:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6eca3f67sm243715966b.59.2026.02.13.03.14.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 03:14:12 -0800 (PST)
Message-ID: <ece590b8-9a29-49f2-934b-6082f093290d@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 12:14:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
 <200b055b-7221-45b5-aea1-2462e07a3c1c@oss.qualcomm.com>
 <8dbc18a0-6a64-491b-84b0-ba220c9050ac@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8dbc18a0-6a64-491b-84b0-ba220c9050ac@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA4NiBTYWx0ZWRfX1mm+HV0zM3Zi
 6Q4fQL7NlkYyEzkaBQ1YTc+twBTWuVk+MU10TYsBIEhEsZ4Cu3nDAJBUxmkddM4FaCQN4At0A69
 siwwHkDJ9oMlKC9YYQ8ffXpeoeJC8ttBMe8DVBH/wgssDvADY8qgSTlpFdUFf+8SV5XGH3pz/Ba
 Wb+khH9FEshyycPn/Ott2o8iEf2owSprKcrE1INZXSM7ZreXAHMLRAi2iJiUZ1184+MmrsaxQBA
 KkpnlMrvHNIAHb0F5QYnxvHB3s1O03eUzRjspeDB7kwLcrMrk6HoU2vYB+1Iu8MplpDwDfggf8V
 LNpPgOjmtYRbVxknOg1WhSMOzpWC7m+bW/3CZGbL0590lgmxIT2vymC2kVKq+as85CQdRmZ/SKO
 DQXbhgWL0mw2kFFzUG+17exj7eej85yE7Iro9zy/vh6075MkXWg8RbVwIa6fvqESB74VBlm0mHy
 Kab+6CvrzKxNjlgrWRA==
X-Authority-Analysis: v=2.4 cv=ArzjHe9P c=1 sm=1 tr=0 ts=698f0786 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=cNRGMQsWfAapTQTvfRUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: q9WQ3HH1LdFyvvynI54jnSwHiHwUwxa5
X-Proofpoint-GUID: q9WQ3HH1LdFyvvynI54jnSwHiHwUwxa5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_031415_302020_FB7199DA 
X-CRM114-Status: GOOD (  14.14  )
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

T24gMi8xMi8yNiAxMDowNCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+IAo+IAo+IE9uIDIvNi8y
MDI2IDY6NTIgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDIvNS8yNiAxMDoyMCBBTSwg
WW9uZ3hpbmcgTW91IHdyb3RlOgo+Pj4gSW50cm9kdWNlIHRoZSBjb21fbGRvX2NvbmZpZyBjYWxs
YmFjayB0byBzdXBwb3J0IHBlcuKAkVBIWSBMRE8KPj4+IGNvbmZpZ3VyYXRpb24uCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNv
bT4KPj4+IC0tLQo+Pgo+PiBbLi4uXQo+Pgo+Pj4gK3N0YXRpYyBpbnQgcWNvbV9lZHBfbGRvX2Nv
bmZpZ192NChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKPj4+ICt7Cj4+PiArwqDCoMKgIGNv
bnN0IHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfZHAgKmRwX29wdHMgPSAmZWRwLT5kcF9vcHRz
Owo+Pj4gK8KgwqDCoCB1MzIgbGRvX2NvbmZpZzsKPj4+ICsKPj4+ICvCoMKgwqAgaWYgKCFlZHAt
PmlzX2VkcCkKPj4+ICvCoMKgwqDCoMKgwqDCoCBsZG9fY29uZmlnID0gMHgwOwo+Pj4gK8KgwqDC
oCBlbHNlIGlmIChkcF9vcHRzLT5saW5rX3JhdGUgPD0gMjcwMCkKPj4+ICvCoMKgwqDCoMKgwqDC
oCBsZG9fY29uZmlnID0gMHhDMTsKPj4KPj4gbG93ZXJjYXNlIGhleCwgcGxlYXNlCj4+Cj4+PiAr
wqDCoMKgIGVsc2UKPj4+ICvCoMKgwqDCoMKgwqDCoCBsZG9fY29uZmlnID0gMHg4MTsKPj4+ICsK
Pj4+ICvCoMKgwqAgd3JpdGVsKGxkb19jb25maWcsIGVkcC0+dHgwICsgVFhuX0xET19DT05GSUcp
Owo+Pj4gK8KgwqDCoCB3cml0ZWwobGRvX2NvbmZpZywgZWRwLT50eDEgKyBUWG5fTERPX0NPTkZJ
Ryk7Cj4+Cj4+IHR4MSBzaG91bGQgYmUgZHBfb3BzLT5sYW5lcyA/IDIgOiBsZG9fY29uZmlnIDog
MHgwMCwgaW4gYWxsIGNhc2VzLAo+PiBJIGJlbGlldmUKPj4KPj4gS29ucmFkCj4gSGksIGhlcmUg
aSB3YW50IHRvIGNvbmZpcm0gYWdhaW4uLiBJbiB0aGUgSFBHIG1haW4gbGluayBicmludXAgc2Vx
dWVuY2UsIGl0IG5vdCBzYXkgd3JpdGUgVFgwL1RYMSBsZG9fY29uZmlnIGJhc2VkIG9uIHRoZSBs
YW5lIGNvdW50LiBPbmx5IHdoZW4gd2Ugc3dpdGNoIHRoZSBsYW5lIG1vZGUswqAgdGhlIExETyBj
b25maWcgd2lsbCBiZSB1cGRhdGVkIGFjY29yZGluZyB0byB0aGUgbGFuZSBjb3VudC4gc28gaGVy
ZSBkbyB3ZSByZWFsbHkgbmVlZCB0aGlzIGNvbmRpdGlvbj8KCkkgZG9uJ3QgYmVsaWV2ZSB0aGVz
ZSB0d28gY2FzZXMgYXJlIGRpZmZlcmVudGlhdGVkIGluIHlvdXIgcGF0Y2gsIHVubGVzcwp5b3Un
cmUgdHJ5aW5nIHRvIHNheSB0aGF0IHRoZSBoYXJkd2FyZSBpcyBzbWFydCBlbm91Z2ggdG8gdHVy
biBvZmYgdGhlIExETwpmb3IgVFgyMyBvbiBpdHMgb3duIGFzIHdlIHN3aXRjaCBtb2Rlcywgd2hp
Y2ggSSB3b3VsZG4ndCBiZXQgaXQgaXMgYW5kIGNhbid0CmZpbmQgY29uZmlybWF0aW9uIGZvcgoK
S29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
