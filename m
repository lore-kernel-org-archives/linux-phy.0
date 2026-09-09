Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27FB9C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 13:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6q8voSpmnFxHKg4vHZ5qiZZ5jbEtf7k1AxqMhSm8hQ=; b=fyLv6pUJR57rdB
	ThFVvv7moFOhxx65BMt7eWwYPzPU5p49kRZGRZrANs3UQRXQYxWjyLjBH5jEK16zwrBWJNF7x0SZ9
	ywlD5u7k5fCQldJN3dWphtv4svVOSyAkPQOGEl6UCaWFoz46PBHw3ly/VSZugLu7vJWawll608y0j
	D5+yr53NzFj+v55fqhX58Ts22ulnBAxbJmoBGVZRJ/XE6XWDuPU+gmbhMOIYIZWXP9x1nfSDDnnQi
	bJnnTi6eLGF9NhOPZAOq0pJqw5CVCZC/YxjyzPBMb/Wnx4zv1Tk8hh/l63uRv+rb7JV+D3AANG/aO
	Ma4n0CSjMr3S78g5tEgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Hua-0000000Biey-1Vbm;
	Wed, 09 Sep 2026 13:00:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HuX-0000000BicY-2Bq4
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 13:00:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 689BUOGI600638
	for <linux-phy@lists.infradead.org>; Wed, 9 Sep 2026 13:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vU8DphDo6k5bSz0d7Lxnwr8LMEAl8VYBZuXrpUxN83A=; b=HaBlJ2zwEDFVYmKW
	A/kid77zZU9Rp930kIOBNutwZL125050efqZFA1QM+6ZXO+dWtrbwTMbFLaO1Kjt
	S2Y9EjDF080lGo9Uhi+dbWBrAja08/nAt4a0inwOITpwOWaeC7Ck+evtEeuzlyeA
	1d13/2cM3JSHG9Wjuf6vJwWqLuEpFkYrJ5stQ9KIeMEeOIvI4rdi28gVj4TnhQer
	/LgrywlVnPFppxuuD8MvrqagTa/LzZh0U73ulRM3J1jVUgXQEfrJaJeoZykPkrMk
	n4Tkx8WjURABflPbZ/eSA8RJ1C4ThSBLzQCtFAzNEHnwsr2xpmIeM5A4iua5rA5C
	ozKZVA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjywr210y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 13:00:19 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-73966c839bfso173591137.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 06:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788958819; x=1789563619; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vU8DphDo6k5bSz0d7Lxnwr8LMEAl8VYBZuXrpUxN83A=;
        b=L2bFvDoa2m3Lk5oelErniT629Wf3Xmslif3NwdeNsblo0SbOKkG+uZwxrpro0PA3GL
         2n+bl/GF+NmENlckTLMZDAiKq79IoD8mkkNR/wqzULVCTcev4rGFgCFnmhm0oJBG2Cc2
         L+tGDMx1Z2lZiZaA0Xo6k44elKe5/HoCX+AdWSAKqlY+R2+L4icDtac5V19CRfulMHJ/
         CXMuEkKA/ywGCo5aEdYF2brpbZnKaBs5HOXQD5/BiE9pFC9BcKoZVZ+syAxjWQKwJbpS
         3KZvd8URnYiLOI5vAKFYYYYF3Wz0X/2YW0Smv6m7K7YuHT3U9iT8ZxPVhMak9fFVrLpM
         PeBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788958819; x=1789563619;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vU8DphDo6k5bSz0d7Lxnwr8LMEAl8VYBZuXrpUxN83A=;
        b=dUt9+MOeCOm9yjNeiREW3YDvT9gDW190KF7kaWOGytmbaglEtyQInGb3CwUFzjJFyb
         cbCYcxXaeG4QtBW+ReOl5ZH/pr3aD8ZeDOOz3saLjYZo1caaeI+8Yw6CCukbm3xXV0EU
         +juGUT9JZ7i96zMLqywQ9PsjEHk5DQutXlcZ0ayCg48iQuf30Cs+OdjCdZ5IR3rUky2Z
         JoeeAIcQeXhvHZBtphbGZ2u0rtL8317mkmSfALnDu9LeFaA4W2386ZwK9PXTIGqJXs6u
         x3IeEya5WQMWTx8tW3U/pRQrbiV8YNqUWm+z8b43MkaDtnKm7HS8c9fiwsHePs4SpF+A
         N5Fg==
X-Gm-Message-State: AFuF++lopTQr/spB0Rd5DAr0Ji5lY/dZw48H4eTe2KwmLb1h0211Myhs
	LfQVYQ/jwX0AJG9LWjk0H2fHIa+jbhjB1ty+78VevxLckl76/qR8D6hZT/acy1UL4an/y3eb8lB
	4ErZNK7pB+28BiA3T8Iffhfl03riTYMMjVBDJUd2w2lsuOgQ68mj+S2ZYvN210nAiRycu
X-Gm-Gg: AYBFou25UQiVNnYI4c+MNJSi/WbIdZJn+/fu7T/JrR7EAnNvpKLGlQiB+Pxbcpc/UBw
	RytWyaaNA9kNkdB28rfvSLV9FqGuGsK1pxmFpL0suf5bI6+oTKzVclYAS8+452F1aieW7/MlcnK
	kc5Sr0muNA51sZ6pPb0m07mDfpscQjMb12QAm9OjkexdZaCw68K6en7VH1t60MatDHv1jk4TYhk
	XFd6rpDIUdgWKW1KuwCDSALaDu12xzVt6zL7xIVGeK39O2S/wSPiAm7KnIO143dQ90DTcJjfEEZ
	KAgzJ075u8U0EQCsInaPjrZ5OMCdE9SjjcFGDv+XyEoSJvqZIZLquafsng4dOguZNQkHaektCGn
	sZ/Fzdjfy0HybseeTLiIqcg==
X-Received: by 2002:a05:6102:4b13:b0:78d:3ee3:c558 with SMTP id ada2fe7eead31-78d3ee3c590mr2591554137.1.1788958818670;
        Wed, 09 Sep 2026 06:00:18 -0700 (PDT)
X-Received: by 2002:a05:6102:4b13:b0:78d:3ee3:c558 with SMTP id ada2fe7eead31-78d3ee3c590mr2591535137.1.1788958818116;
        Wed, 09 Sep 2026 06:00:18 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b667b6c30fsm3387051e87.9.2026.09.09.06.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2026 06:00:17 -0700 (PDT)
Message-ID: <978dee45-827e-4fbf-a574-8c61c7e0e097@oss.qualcomm.com>
Date: Wed, 9 Sep 2026 15:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
 <20260905-eusb2-interrupt-v7-v7-5-820cf5377a70@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-5-820cf5377a70@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=a4YAM0SF c=1 sm=1 tr=0 ts=6aa15863 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=FycFWezSpWEMHrBiXq0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA5MDE0NSBTYWx0ZWRfX2zggSxxrK08X
 ONZUY0f7alXqPlQnaHYoM+AG2IjBzCf9Tyqrm/NfPmgEngNHC9l4H60jEH1QCAxvvNlR8zOgrkP
 WB9nBG2snNtN65pjxgAFsKoWACtb4UczXqqfY+/DYSZgDT0sJlGeqwbhd+Q+o4ZxHJeLc+xzbBx
 Qy2qljqHC1n68+dTFhLNUp1xnYvaGxkBEmISgjIzqlhuLNjrOloQ8cgw52J8vCH9H0XUCCs+SJ2
 Fkhl9zdq7zkOtydaYspna+Ii6XbVLaRM/je+gZGrWaJIZKSZX2abdlJ8nP0q8t1V1F29oQvhTOH
 gLEspdK3QHczZfpdCRe9JfoT7pEUthMvLoT4WPfNoaWbmrZ6tk63lVM8XsDtqQbb/pqMAZSGIrW
 t8rTb4cNfUva/TKQnJAdZQb2cNcM/B3nlFeP4LtejwkmymLCJJ0AbcluJ9pvEUNOP1+ltoXGh/V
 TJDMd+EGx+dXuw5fhDQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA5MDE0NSBTYWx0ZWRfX7DrDV7lFIp+D
 hA8S88M6IPwf/weodhHYSvJhC0JBd34G7URJb/YhAtBHS1EsI6pKbsOhLIesaDB2+TmPKzuZ4YW
 GhFVfuyatxOtZegN/PuxFGpyb0u0gq8=
X-Proofpoint-ORIG-GUID: x9y-cS5WwMhXRtSpHBRh__mPYKWkLsqb
X-Proofpoint-GUID: x9y-cS5WwMhXRtSpHBRh__mPYKWkLsqb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609090145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_060021_563318_0E9F3FDB 
X-CRM114-Status: GOOD (  15.35  )
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

T24gOS81LzI2IDU6MjkgUE0sIEtyaXNobmEgS3VyYXBhdGkgd3JvdGU6Cj4gZVVTQjIgdGFyZ2V0
cyBoYW5kbGUgd2FrZXVwIGludGVycnVwdHMgZGlmZmVyZW50bHkgZGVwZW5kaW5nIG9uIGRldmlj
ZQo+IHNwZWVkIHdoZW4gb3BlcmF0aW5nIGluIGhvc3QgbW9kZS4KPiAKPiBBY2NvcmRpbmcgdG8g
dGhlIGVVU0IyIHNwZWNpZmljYXRpb24sIHJlbW90ZSB3YWtldXAgc2lnbmFsaW5nIGluIGhvc3QK
PiBtb2RlIGlzIGRldGVjdGVkIHZpYSBkaWZmZXJlbnQgZGF0YS1saW5lIGFzc2VydGlvbnMgYmFz
ZWQgb24gdGhlCj4gY29ubmVjdGVkIGRldmljZSBzcGVlZC4KClsuLi5dCgoKPiBAQCAtNjI4LDYg
KzY0OSw3IEBAIHN0YXRpYyBpbnQgZHdjM19xY29tX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIAlpbnQJCQlyZXQ7Cj4gIAlib29sCQkJaWdub3JlX3BpcGVfY2xrOwo+ICAJ
Ym9vbAkJCXdha2V1cF9zb3VyY2U7Cj4gKwlzdHJ1Y3QgcGh5CQkqcGh5Owo+ICAKPiAgCXFjb20g
PSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpxY29tKSwgR0ZQX0tFUk5FTCk7Cj4g
IAlpZiAoIXFjb20pCj4gQEAgLTY5OCw2ICs3MjAsMTcgQEAgc3RhdGljIGludCBkd2MzX3Fjb21f
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlmIChyZXQpCj4gIAkJZ290
byBjbGtfZGlzYWJsZTsKPiAgCj4gKwlwaHkgPSBkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgoZGV2
LCBkZXYtPm9mX25vZGUsIDApOwo+ICsJaWYgKElTX0VSUihwaHkpKSB7Cj4gKwkJaWYgKFBUUl9F
UlIocGh5KSAhPSAtRU5PREVWKSB7CgpHUFQgcmVwb3J0czoKCldoZW4gQ09ORklHX0dFTkVSSUNf
UEhZIGlzIGRpc2FibGVkLCB0aGUgc3R1YiBpbiBpbmNsdWRlL2xpbnV4L3BoeS9waHkuaDo0ODkt
NDkzCnJldHVybnMgRVJSX1BUUigtRU5PU1lTKS4gVGhlIHBhdGNoIG9ubHkgdHJlYXRzIC1FTk9E
RVYgYXMg4oCcbm8gUEhZ4oCdOgoKQnV0IGl0J3Mgbm90IGxpa2Ugb25lIGNhbiByZWFsbHkgdXNl
IHRoaXMgZHJpdmVyIHdpdGhvdXQgYSBQSFkuLgpXZSBjYW4gYWRkIGEgZm9sbG93LXVwIHRvIGRl
cGVuZCBvbiB0aGF0IGZvciB0aGUgcWNvbSBkcml2ZXIKCm90aGVyd2lzZQoKQWNrZWQtYnk6IEtv
bnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KCktvbnJhZAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
