Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E499ACA0EE0
	for <linux-phy@archiver.kernel.org>; Fri, 15 Aug 2025 08:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbH20RlOfihTOtHmtYIL9zf4ou+pLWbJzss/UbTUuNg=; b=MVa/9FKs7nvbrW
	Ai/1vJUO+Fk3Vdc0NEaC3uyaKp6Jo/dy0A3tGr0ShtF1zn3bU1xgAU/3sMkHgRgaoEysKneuyFiPZ
	cp4WaWY7jAO5EhogolMkRi31pOd01/A/p2TgA9SUa/KlSGnl/j8bcadzovpJWmssYWmrTd9NtpRn/
	kWf5cY48N0IXIBKDymoiXxen/C/vu4Uh0KyR8efviR+IouvpJvjIv+ixEQmyTlLt8pvotrCygKIFz
	k7L1ByFacizeWo5k9tjxLkwAD8JSF+9gR21SkrKSkWe5mOwnFKnkEjNxwJmAMas40dOpZ0ifI4xYo
	ikIe+0ptleN7dYmoLpYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umpoq-00000001rDH-2RFS;
	Fri, 15 Aug 2025 08:29:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umpl6-00000001qgd-2uWb
	for linux-phy@lists.infradead.org;
	Fri, 15 Aug 2025 08:25:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57EJdg94024004
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 08:25:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NUp9id380DZ/OObz+oDgJw+5UIsJFHPyVrQSjaIg6Ws=; b=W1t5KgYcqdcplNA4
	+D82pGSLq3f6/jEw27m8UaioPHPr5G0p56AbZj8pd/ObiLuCLZtHBBkrYhVFtRUp
	+F/NSRM/ZTFYeiXX57+JgQcIQoDKrSrLDmH4tcxoF8+gFapaaDONaUWtHMAy7pR9
	4CziGzqTrHUqJGg13hwGUJfAVKPp6XdA86OuwVE6XvP+zyuCrLudrV2ufFnkMmOd
	k5RrWiYxKwEVbN13T3ynLEH+idGR4d1d3+NY9LPlaMbpd1FxRvviBZ1G5jqHMQDg
	yllh8mrD3zg7QkmZsTW9ZPxubBe5sfvCjmFWLGn/tDzr0aiodKs75icaFxS++avr
	yZ2wEQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9ry5hn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 08:25:55 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4717557efcso44294a12.3
        for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 01:25:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755246355; x=1755851155;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NUp9id380DZ/OObz+oDgJw+5UIsJFHPyVrQSjaIg6Ws=;
        b=f5+M+OcVvhw2VyXlXn93ZDMUMyNPaaOcy79IXGZBq7JhQiFlEbPYkesI06irqCukL5
         XdWjZ1OiSRUPYcRzyVfzTXn6gM3r2L50lj94x4YhhENtVsCJZgxajp0a4pIJJw9trAuG
         tdAJORNKqRNEgJ9duYmpXHU8LpNGPpGxFX5iKzlxj5mF2yA2xguOyyE/JqZU/vLoz3E0
         adLklOEQFWqla+r7qU9v6BO7rStWAKBKmjfSu4IDsyvcLuHBkSKgCQPFu/oC8/t8rkkF
         JO71odR9vArQ0E21TW1jT6V8td2uyE8qez7Dr42RpGDcY9W2gbG3tCJx8EeVO09oNTIv
         edsA==
X-Forwarded-Encrypted: i=1; AJvYcCWI4xv2U6QI7tgBXxuMgIm1g/GBoaJgQ1DYlFjH+mtzuI/lwgBo2O5ppGRg3uPxYJrviXbW4KnYTK8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuFyoTH3pJPxp4wFEhCo9igw/cc5rSQfi1cYCZB4Gn013/NDUT
	XRjBBLMfGDoGlERMyD8J77kllHej9OL/Zpxume+OeygYhc8LCI9sLfLXToNkqKUfmbvP1KA/1RO
	LJ8jwfvRJ5ksTdHZv/+3wOZQaoLSbRT7/E1x1IDxewWRj6lOilOUyUeHalmFJ7KRz5eZz
X-Gm-Gg: ASbGncvl4vIKpNjnROzfBlSy7yo0osBGCJ9zM3MrkB/TKrihOScm/1sLMtHWOSJCC1z
	cFaEYsYZXKaoqjf3hqHLI82VoniFHx5wG1MSA9s3I7aMH5llUxhXp6P3VDzU0WEi5oK+eP3QEot
	rRwifj+/ZTb8DGGlAC4hfGxYKAdr9FvW09RbcDG4cdZ2ReNtnKZAaUVb1e1AlrHlJxat8TUX6wx
	G1l47kfybk/Z9I3aGdEA9GOSnDVZsMoOo/2OtNLHR4mRuFlggK8m+bhxAis6JKNJqx1yxyhD37z
	8JxJkEytubrIdJFT1QutSRkxXZ8kZC+eiiqy6NWZ936vlsON/7aHjoXbpxZuxDxBXTDNLpZADTD
	fee7rNmLM189VQvkgy0vdOUj42INy
X-Received: by 2002:a05:6a00:1393:b0:76b:cf2b:18ab with SMTP id d2e1a72fcca58-76e446b43d3mr731551b3a.1.1755246354608;
        Fri, 15 Aug 2025 01:25:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlOGconyNmSJveNt3MkVQqNUPji6K3KxwQpbezFFRgXr8JkSt+WNcYJk1eoULrcB7MfzyFyg==
X-Received: by 2002:a05:6a00:1393:b0:76b:cf2b:18ab with SMTP id d2e1a72fcca58-76e446b43d3mr731532b3a.1.1755246354054;
        Fri, 15 Aug 2025 01:25:54 -0700 (PDT)
Received: from [10.133.33.10] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e4558a81asm629191b3a.83.2025.08.15.01.25.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 01:25:53 -0700 (PDT)
Message-ID: <661789d6-5fbe-4915-b70a-5ff2466c7a26@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 16:25:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <0c94206c-f70f-4bed-81ec-bb2870748121@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <0c94206c-f70f-4bed-81ec-bb2870748121@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX5LHKQPyJQISF
 kqE1sJQQLYBlvd5RKc0I2DaWJYHDD4O5GMsrJnXkTS0jQ2CL46LB3DeM4O2UK7zO5WhhAcn6OF9
 UU2uASDcf3tvZ0J/Ds2uTM/8PY/k7E7MaZ5GqiBs5dTm+bS03+FK+Nssghy6M/iHqtwgPiLtO6+
 YxFVTrOZsS7VZKcfLiiE8BG0NlpZLTXaSzYwtQpOh2ilZGgMxRFE23010nSD1ATANPIY/q24UMa
 awIeNyMp+dqkdv9SE+fmFirkvBiG1M4U+E8nvthibdAfEzEYeqn2KSAa2LI19wJbenXvw7JnThl
 puehFjhrJbX+b+9RuUjJN6auN/nQ5eRk86Bi8CqnCyNdbvPsLNrCL8HenEKGAWn3TYF64vZBHjk
 UproJaqy
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689eef13 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=P-IC7800AAAA:8 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=0gnJL556ed7yCVVD25sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: _CCjRoNsr_Aii8q8Cjs8RXuMsd4vM3nn
X-Proofpoint-GUID: _CCjRoNsr_Aii8q8Cjs8RXuMsd4vM3nn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_012556_741321_EB60E3D6 
X-CRM114-Status: GOOD (  25.02  )
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

Ck9uIDcvMjIvMjAyNSA1OjE4IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDIy
LzA3LzIwMjUgMDk6MjIsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBJbnRyb2R1Y2UgZGV2aWNlIHRy
ZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgUXVhbGNvbW0gUU1QIERQIFBIWQo+PiBv
biBRQ1M2MTUgU29Dcy4gVGhpcyBQSFkgc3VwcG9ydHMgRGlzcGxheVBvcnQgZnVuY3Rpb25hbGl0
eSBhbmQgaXMKPj4gZGVzaWduZWQgdG8gb3BlcmF0ZSBpbmRlcGVuZGVudGx5IGZyb20gdGhlIFVT
QjMgUEhZLgo+IEEgbml0LCBzdWJqZWN0OiBkcm9wIHNlY29uZC9sYXN0LCByZWR1bmRhbnQgImJp
bmRpbmcgZm9yIi4gVGhlCj4gImR0LWJpbmRpbmdzIiBwcmVmaXggaXMgYWxyZWFkeSBzdGF0aW5n
IHRoYXQgdGhlc2UgYXJlIGJpbmRpbmdzLgo+IFNlZSBhbHNvOgo+IGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y2LjctcmM4L3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCNMMTgKCk9rLCB3aWxsIHVwZGF0ZSBzdWJq
ZWN0IGluIG5leHQgcGF0Y2guCgo+PiBVbmxpa2UgY29tYm8gUEhZcyBmb3VuZCBvbiBvdGhlciBw
bGF0Zm9ybXMsIHRoZSBRQ1M2MTUgRFAgUEhZIGlzCj4+IHN0YW5kYWxvbmUgYW5kIGRvZXMgbm90
IHN1cHBvcnQgVVNCL0RQIG11bHRpcGxleGluZy4gVGhlIGJpbmRpbmcKPj4gZGVzY3JpYmVzIHRo
ZSByZXF1aXJlZCBjbG9ja3MsIHJlc2V0cywgVENTUiBjb25maWd1cmF0aW9uLCBhbmQgY2xvY2sv
UEhZCj4+IGNlbGxzIGZvciBwcm9wZXIgaW50ZWdyYXRpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIC4u
Li9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLWRwLXBoeS55YW1sICAgICAgIHwgMTExICsr
KysrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDExMSBpbnNlcnRpb25zKCsp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3Fjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLWRwLXBoeS55YW1sCj4+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAu
LjE3ZTM3YzFkZjdiNjFkYzJmN2FhMzVlZTEwNmZkOTRlZTI4MjljNWYKPj4gLS0tIC9kZXYvbnVs
bAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scWNz
NjE1LXFtcC1kcC1waHkueWFtbAo+PiBAQCAtMCwwICsxLDExMSBAQAo+PiArIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+PiArJVlBTUwgMS4yCj4+
ICstLS0KPj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L3Fjb20scWNz
NjE1LXFtcC1kcC1waHkueWFtbCMKPj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9t
ZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+PiArCj4+ICt0aXRsZTogUXVhbGNvbW0gUU1QIFBIWSBj
b250cm9sbGVyIChEUCwgUUNTNjE1KQo+IFRoYXQncyB0b28gdmFndWUgdGl0bGUuIFlvdSBhcmUg
bm90IGFkZGluZyBoZXJlIFF1YWxjb21tIFFNUCBQSFkKPiBjb250cm9sbGVycy4KCldpbGwgdXBk
YXRlIHRvICdRdWFsY29tbSBRTVAgVVNCMy1EUCBQSFkgY29udHJvbGxlciAoRFAsIFFDUzYxNSkn
IGluIG5leHQgcGF0Y2guCgo+Cj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIFZpbm9kIEtv
dWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4gSG0/IFdoeT8KCgpJIHJlZmVycmVkIHRvIHRoZSBkZWZp
bml0aW9ucyBpbiBxY29tLG1zbTg5OTgtcW1wLXVzYjMtcGh5LnlhbWwgYW5kIHFjb20sc2M4Mjgw
eHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwuCgpJIGFsc28gZm91bmQgdGhhdCBWaW5vZCBLb3VsIGlz
IGxpc3RlZCBhcyB0aGUgbWFpbnRhaW5lciBvZiB0aGUgR0VORVJJQyBQSFkgRlJBTUVXT1JLIGlu
IGxpbnV4LW5leHQvTUFJTlRBSU5FUlMuCgpEaWQgSSBtaXN1bmRlcnN0YW5kIGFueXRoaW5nIGhl
cmU/CgoKPj4gKwo+PiArZGVzY3JpcHRpb246Cj4+ICsgIFRoZSBRTVAgRFAgUEhZIGNvbnRyb2xs
ZXIgc3VwcG9ydHMgRGlzcGxheVBvcnQgcGh5c2ljYWwgbGF5ZXIgZnVuY3Rpb25hbGl0eQo+PiAr
ICBvbiBRdWFsY29tbSBRQ1M2MTUgU29Dcy4gVGhpcyBQSFkgaXMgaW5kZXBlbmRlbnQgZnJvbSBV
U0IzIFBIWSBhbmQgZG9lcyBub3QKPj4gKyAgc3VwcG9ydCBjb21ibyBtb2RlLgo+PiArCj4+ICtw
cm9wZXJ0aWVzOgo+PiArICBjb21wYXRpYmxlOgo+PiArICAgIGVudW06Cj4+ICsgICAgICAtIHFj
b20scWNzNjE1LXFtcC1kcC1waHkKPj4gKwo+PiArICByZWc6Cj4+ICsgICAgbWF4SXRlbXM6IDQK
PiBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5b3UgYXJlIGRvaW5nIGhlcmUuIFdoeSBwcmV2aW91
cyBwYXRjaCBldm9sdmVkCj4gaW50byB0aGlzPyBXaGVyZSBpcyBhbnkgcmVhc29uaW5nIGZvciB0
aGF0IGluIHRoZSBjaGFuZ2Vsb2c/IFlvdSBzYWlkOgo+Cj4gIi0gQWRkIG5ldyBiaW5kaW5nIHFj
b20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBmb3IgUUNTNjE1IHN0YW5kYWxvbmUgRFAKPiBbS3J6
eXN6dG9mXSIKPgo+IGJ1dCB5b3UgbXVzdCBzYXkgV0hZIHlvdSBhcmUgZG9pbmcgdGhpbmdzLi4u
Cj4KPiBBbnl3YXksIG1pc3NpbmcgY29uc3RyYWludHMuIExvb2sgYXQgb3RoZXIgUXVhbGNvbW0g
YmluZGluZ3MuCgoKSSBtaXN1bmRlcnN0b29kIHlvdXIgZWFybGllciBjb21tZW50IGluwqAnMjAy
NDExMjktYWRkLWRpc3BsYXlwb3J0LXN1cHBvcnQtZm9yLXFjczYxNS1wbGF0Zm9ybS12MS0yLTA5
YTQzMzhkOTNlZkBxdWljaW5jLmNvbSfCoGFuZCBtaXN0YWtlbmx5IGluY2x1ZGVkICJbS3J6eXN6
dG9mXSIgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIGFzIGlmIGl0IHdlcmUgYSBxdW90ZS7CoAoKQXBv
bG9naWVzIGZvciB0aGUgY29uZnVzaW9uIGFuZCB3aWxsIGRyb3AgdGhpcyBwYXJ0IGluIGNvdmVy
IGxldHRlciBpbiBuZXh0IHBhdGNoLgoKSW4gbmV4dCBwYXRjaCwgdGhlIGFkZHJlc3MgcmVnaW9u
cyB3aWxsIGJlIGNvbnNvbGlkYXRlZCBpbnRvIGEgc2luZ2xlIHJhbmdlLCBzaW1pbGFyIHRvIG90
aGVyIFFNUCBQSFlzLCBhbmTCoHxtYXhJdGVtc3zCoHdpbGwgYmUgdXBkYXRlZCB0b8KgfDF8LgoK
Cj4KPj4gKwo+PiArICBjbG9ja3M6Cj4+ICsgICAgbWF4SXRlbXM6IDIKPj4gKwo+PiArICBjbG9j
ay1uYW1lczoKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gY29uc3Q6IGNmZ19haGIKPj4gKyAg
ICAgIC0gY29uc3Q6IHJlZgo+PiArCj4+ICsgIGNsb2NrLW91dHB1dC1uYW1lczoKPj4gKyAgICBt
YXhJdGVtczogMgo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgTmFtZXMgb2YgdGhlIGNs
b2NrcyBwcm92aWRlZCBieSB0aGUgUEhZLgo+IERyb3AgZGVzY3JpcHRpb24sIHJlZHVuZGFudC4g
SXQgY2Fubm90IGJlIGFueXRoaW5nIGVsc2UuCgoKT2ssIHdpbGwgZHJvcCBpdC4KCgo+Cj4+ICsK
Pj4gKyAgcWNvbSx0Y3NyLXJlZzoKPj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9k
ZWZpbml0aW9ucy9waGFuZGxlLWFycmF5Cj4+ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGl0ZW1z
Ogo+PiArICAgICAgICAgIC0gZGVzY3JpcHRpb246IHBoYW5kbGUgdG8gVENTUiBoYXJkd2FyZSBi
bG9jawo+PiArICAgICAgICAgIC0gZGVzY3JpcHRpb246IG9mZnNldCBvZiB0aGUgRFAgUEhZIG1v
b2RlIHJlZ2lzdGVyCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBEUCBQSFkgbW9vZGUg
cmVnaXN0ZXIgcHJlc2VudCBpbiB0aGUgVENTUgo+PiArCj4+ICsgIHJlc2V0czoKPj4gKyAgICBt
YXhJdGVtczogMQo+PiArCj4+ICsgIHJlc2V0LW5hbWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAg
ICAgLSBjb25zdDogcGh5Cj4gRHJvcCByZXNldC1uYW1lcywgdXNlbGVzcy4KCgpJbiBuZXh0IHBh
dGNoLCB0aGlzIGNvbmZpZyB3aWxsIGJlIHVwZGF0ZWQgdG8gVVNCIG9yIERQIFBIWSBiaW5kaW5n
IHdpdGggdHdvIHJlc2V0czogJ3BoeV9waHknIGZvciBVU0IgYW5kICdkcF9waHknIGZvciBEUC4K
U2hhbGwgSSBrZWVwICdyZXNldC1uYW1lcycgcHJvcCBoZXJlPwoKPgo+PiArCj4+ICsgIHZkZGEt
cGh5LXN1cHBseTogdHJ1ZQo+PiArCj4+ICsgIHZkZGEtcGxsLXN1cHBseTogdHJ1ZQo+PiArCj4+
ICsgICIjY2xvY2stY2VsbHMiOgo+PiArICAgIGNvbnN0OiAxCj4+ICsgICAgZGVzY3JpcHRpb246
Cj4+ICsgICAgICBTZWUgaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LXFjb20tcW1wLmgKPj4g
Kwo+PiArICAiI3BoeS1jZWxscyI6Cj4+ICsgICAgY29uc3Q6IDEKPj4gKyAgICBkZXNjcmlwdGlv
bjoKPj4gKyAgICAgIFNlZSBpbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHktcWNvbS1xbXAuaAo+
PiArCj4+ICtyZXF1aXJlZDoKPj4gKyAgLSBjb21wYXRpYmxlCj4+ICsgIC0gcmVnCj4+ICsgIC0g
Y2xvY2tzCj4+ICsgIC0gY2xvY2stbmFtZXMKPj4gKyAgLSBjbG9jay1vdXRwdXQtbmFtZXMKPj4g
KyAgLSBxY29tLHRjc3ItcmVnCj4+ICsgIC0gcmVzZXRzCj4+ICsgIC0gcmVzZXQtbmFtZXMKPj4g
KyAgLSB2ZGRhLXBoeS1zdXBwbHkKPj4gKyAgLSB2ZGRhLXBsbC1zdXBwbHkKPj4gKyAgLSAiI2Ns
b2NrLWNlbGxzIgo+PiArICAtICIjcGh5LWNlbGxzIgo+PiArCj4gV2h5IGludHJvZHVjaW5nIGNv
bXBsZXRlbHkgZGlmZmVyZW50IG9yZGVyPyBTZWUgZXhpc3RpbmcgYmluZGluZyBhbmQgRFRTCj4g
Y29kaW5nIHN0eWxlLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKCk9rLCB3aWxsIHVw
ZGF0ZSB0byBmb2xsb3cgdGhlIGV4aXN0aW5nIG9yZGVyLgoKY29tcGF0aWJsZQpyZWcKY2xvY2tz
CmNsb2NrLW5hbWVzCnJlc2V0cwpyZXNldC1uYW1lcwp2ZGRhLXBoeS1zdXBwbHkKdmRkYS1wbGwt
c3VwcGx5CiNjbG9jay1jZWxscwojcGh5LWNlbGxzCnFjb20sdGNzci1yZWcKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
