Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E742C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 12:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NP2rWLhhUaShBPq8Y3Vy9Tpv5zjXoQd+At3dEJXvXJs=; b=jHfMhCKTJL1QUc
	RH4Xo7KJYrsamjJu4t3E2Osrgpw6Vgbz0BxeKuMLsI05DTAQVuTJ1ywe7668EyXgyriTGYEwHE0H3
	rfXoqmh3PrDFaKrxQvFutbYfrIdWthG8hSKJokIcMpUx1WonSzDgvmqMAABdG2dBG7IRsWPehIAzU
	AIZu1Zw8sNrwYLxDSBlmk7NxPiz6EXVLmM+0rypu3odfKGH6hNasLUnx5s5l8xLGpZP+Bclqh6u2j
	lihmfuvsGJEz+n1p3fUUklFwbm0oGDLp5kmytkAY/2yXc/ESiAk7n8z7LeFGFGlE05gGAmN0pJ02a
	tc3aYdbSA788BPcjhNNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weAwj-0000000EX2w-35Tk;
	Mon, 29 Jun 2026 12:18:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weAwi-0000000EX2c-0NFH
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 12:18:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65TASuiW2603465
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 12:18:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dTFF2lL8qXXy5msaGXAgnP5dRIvRf4GaK1lLNo891d0=; b=YqsWHR552fGbZw0W
	KNVwft65U1+B9mh01kl7P718io5yknr+9lOK6TWzyNWVv1JaUeCWFmyynW9syh7Z
	65fTjHFKSC2jF10C3N5QG+DDsZDLt9r7Jozk2mmPRgEcmhnPY2u7OiMssb2KR3DF
	wWg9SjMKLifmuJlRV3HLLR6T26d5pUJQwvBnoX+rSNtBQsNlDq6LocqH8d67O/6a
	mDenWNxHYTAOaLNsdRbC/xcoLMSZwiXCp6fyM+GrDPicVhgodnTFt75fNXYxxtqq
	FvkTYFzkVFauQK2cSXqq8KFZuMY5FkgiNMpQeQlfsJPWFI3tYr+9oDu82NIrjHPZ
	dDJRsg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3nq88qs0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 12:18:39 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5bd933e15a8so82729e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782735518; x=1783340318; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dTFF2lL8qXXy5msaGXAgnP5dRIvRf4GaK1lLNo891d0=;
        b=ja/G+narUXyXXJE56OMATNxEd7U8E10QkcxA8+fYFoOKd0a5oUjGK8TjAcRupu+zuI
         UnIuhdGCqjincemUrVOQcxXRYKOc8ESowSoE+zjRTpEH70A9waRzu69lasCgKgOshtDr
         qzGofui3sA7uefOhm7Wi841SYTMQqPjVoJoveKegZB3yzB8WBFAkUc0Wn90Co/UiYsKC
         syLZYAOgr95yaOORU9wuxtwXvKQv8rcMYqXOgKrdQMikMvx5X4EgiTK+MSfE4/ISUyry
         qLFe7gz+zwMQXiQGs1PDSZy2chZSFk0/QKm9EDp6N/truS9IxA52YWdrZxKlBrVXW+Ln
         tcKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782735518; x=1783340318;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dTFF2lL8qXXy5msaGXAgnP5dRIvRf4GaK1lLNo891d0=;
        b=Wp7UeDb2RsBh/PZ9F6WXl6t4kLm7IgcucVhU8Q8KUJCxsR3rPYYOLy58DVhua3gLER
         yWHTdX3vUyof9IlmJGcun2xjfKA5z06dgxRjwCAv5cZILsTsHTrY6BP/YJElF9Ef0AEC
         1Te5PyWg+kBhJeZgG2lxtnDoO2We4l+Vy3eZFbqPdBnQHeyG10jKUT9sDVZsUC4z3Xf8
         YqvaB0h5nUM87I64fLeb2HnzKN6Z0gY/AkT0MegBTwamc9z6+mBKH+teqQo+2JveSvqd
         6/Bc+ObT9C4DEnlde0+xpNWgEzI09b63sZnyzmAhMXkxtRRzcfkxlxEqlp9bXDBMaaSP
         bC6w==
X-Forwarded-Encrypted: i=1; AHgh+RrkeK86x+CoZUXeI7paJYFqqtRIScvHLOBpzkF7IIjotk1aGrjVvYAruaLZ2idZhwGSklNydgK4m+c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXNYrMveuTe3IJ6qwummK6Xeiyjy5cUsW+NkYJB72HZqv/z2oZ
	PGYnPAbzvP6IU80VEpYqup1pmZ1xGSwv7EX84x3cbBjamXfkHXPijb/Gql0tYLOGWovvt3xuKW0
	Dwd6R5BvcsXHUG83yI/1RMH+eVfjF88dSXaHNXi040tGr0TvaMizq8PVwX/TME7lEquc/
X-Gm-Gg: AfdE7clUJjfJFCEr4XmmGjj3EWozPjLiL+QHqSu9QzH+QpZ0qevJON36aztkVB5fLwR
	r4NuWMjqgEJT2qC6Cx0JHciLNjWl+jnC8hdp2f74s8M38GEnKDfFGYqm7DSjtbulDpq6KvNzIkp
	C1V/GAE+ucMJ+7wwc7dMRlnakamrCqOWsYTGxmvXfShERz+6ZKnjWIUKObxd4Bxek+gqrmyOaMY
	wO3jV5bjkdIdy8nf62NNADuw0/95jmbxdmePgAlqooAyuJ63XfTAOknu5d9+0k/JHbzdt9J3dGq
	jKSBrk52ZI91QoCUKY9ZyqfYmOv5dp4IZYnB8W8JwrJZcQ9+EExd2qQL1vyeg4TSXEBU9cNj0pU
	CvLoFaiaLIpb8CnFvITTfxVvZ9AaWXnnbMc4=
X-Received: by 2002:a05:6102:32cd:b0:739:64ad:bf4e with SMTP id ada2fe7eead31-73964adc4e6mr249533137.7.1782735518211;
        Mon, 29 Jun 2026 05:18:38 -0700 (PDT)
X-Received: by 2002:a05:6102:32cd:b0:739:64ad:bf4e with SMTP id ada2fe7eead31-73964adc4e6mr249524137.7.1782735517777;
        Mon, 29 Jun 2026 05:18:37 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69848e5ebc0sm3117738a12.3.2026.06.29.05.18.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 05:18:36 -0700 (PDT)
Message-ID: <f2c68d67-1b12-40b3-8097-5b863d7710ac@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 14:18:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom: qmp-pcie: Add vdda-refgen supply
 support for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
 <8811c181-9caf-4797-8e17-52311702e292@oss.qualcomm.com>
 <akJhrpyMuLnoXzJM@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <akJhrpyMuLnoXzJM@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-GUID: CVM38V6JDOMUleAjdQlEo2j73ZKxzQ7f
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDEwMSBTYWx0ZWRfX8+Q8Ae4GlWTA
 KnPAEF2Mz8vWjjR9NZSF1U8qAadHC6CwnaUtLFlHnhUiy46oLSW0NnDxjfNG8nZpkiFFsWT3eQy
 A2orwDaYT00b2m7JTYjLeosaqOI2Nkc=
X-Proofpoint-ORIG-GUID: CVM38V6JDOMUleAjdQlEo2j73ZKxzQ7f
X-Authority-Analysis: v=2.4 cv=PqSjqQM3 c=1 sm=1 tr=0 ts=6a42629f cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=x4UBAUAyasPmGnV1h00A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDEwMSBTYWx0ZWRfXzq3sedCW0mFb
 3CZf+UyoIBq3fRpH6vvj0FAFD+fvVH4bkAGofsQs1ub1kLJgseRuUUynXfYx47qWgvDwOdmCYA2
 11Kiy87+3JtkDzqQZWbzm5iwtOPfsA6p06Ay8j6cdrypPg/Catzz+oQdJnI0qrc1Lk1sGmHrg5x
 YZx/FFmNyQxYAUSKb2aP2dE5m6oCx+n5STxjIczCJWrlyNJNk8exSblgGPaQlM3S/aodO30baLX
 W6koX+AsZbWQhJ84VWCADv1xJTh4Jj7yyJZ5zAUg+NnvNnwTPRPi2mvXQv4J7uAAWDQ6vFQdErG
 Hzk9dFuwiLpd/xeWTcldEaF0WLTZqdWq+/lZRTe0Iy+gLJVY1lS6yOrVCqRcWXu7Z3HSEh15gCS
 +5xTfVmD1rL9ADJ/K0O8qHKAaqP1efiqSldbZbPzJnxZZAnMJ4JfA3cUPZOzNwpYMHwRwB3eGZl
 6SAULys3fZ35SSvAxZA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606290101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_051840_133799_18533DA3 
X-CRM114-Status: GOOD (  19.87  )
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

T24gNi8yOS8yNiAyOjE0IFBNLCBRaWFuZyBZdSB3cm90ZToKPiBPbiBNb24sIEp1biAyOSwgMjAy
NiBhdCAxMjo1MTo1NVBNICswMjAwLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+PiBPbiA2LzIzLzI2
IDM6MDUgUE0sIFFpYW5nIFl1IHdyb3RlOgo+Pj4gVGhlIFBDSWUgUU1QIFBIWXMgb24gR2x5bXVy
IHJlcXVpcmUgYm90aCByZWZnZW4gZm9yIHN0YWJsZSByZWZlcmVuY2UKPj4+IHZvbHRhZ2UgYW5k
IHFyZWYgZm9yIHN0YWJsZSByZWZlcmVuY2UgY2xvY2suIFRoZSByZWZnZW4gcmVxdWlyZXMgdHdv
IHBvd2VyCj4+PiBzdXBwbGllczogdmRkYS1yZWZnZW4wcDkgYW5kIHZkZGEtcmVmZ2VuMXAyLgo+
Pj4KPj4+IGNhbiBiZSBleHRlbmRlZCBpbiB0aGUgZnV0dXJlLgo+Pj4KPj4+IFRoaXMgc2VyaWVz
IGNyZWF0ZXMgYSBHbHltdXItc3BlY2lmaWMgc3VwcGx5IGxpc3QgaW5jbHVkaW5nIHRoZSByZWZn
ZW4KPj4+IHN1cHBsaWVzIGFuZCB1cGRhdGVzIGJvdGggR2VuNXg0IGFuZCBHZW40eDIgY29uZmln
dXJhdGlvbnMgdG8gdXNlIGl0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFu
Zy55dUBvc3MucXVhbGNvbW0uY29tPgo+Pj4KPj4+IENoYW5nZXMgaW4gdjI6Cj4+PiAtIEFkZCBk
dHMgcGF0Y2ggaW4gdGhpcyBzZXJpZXMuCj4+PiAtIFJld29yZCBjb21taXQgbXNnIG9mIGR0Ymlu
ZGluZyBwYXRjaC4KPj4+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjYwMjA4LXJlZmdlbi12MS0wLTg3Y2E4NGZkNzhiM0Bvc3MucXVhbGNvbW0uY29tLyAKPj4+
Cj4+PiAtLS0KPj4KPj4gSXMgdGhpcyBuZWNlc3NhcnkgKGZvciBHbHltdXIpIG5vdyB0aGF0IHdl
IGNvcnJlbGF0ZWQgc29tZSBvZiB0aGUKPj4gVENTUiBjbG9ja3Mgd2l0aCB0aGUgcmlnaHQgbm9k
ZXM/Cj4gCj4gVGhpcyBwYXRjaCBpcyBuZWNlc3NhcnkgZm9yIGdseW11ciBhbmQgbWFodWEgYW5k
IG90aGVyIFF1YWxjb21tIHRhcmdldHMsCj4gd2hpY2ggY2FuIGJlIHZlcmlmaWVkIGZyb20gdGhl
IFJFRkdFTiBwYWdlIGFuZCBwb3dlciBncmlkIHBhZ2Ugb24gaXBjYXQuCj4gCj4gVGFrZSBHbHlt
dXIgUENJZTMgUEhZIGFzIGFuIGV4YW1wbGU6IGl0IHJlcXVpcmVzIHR3byBSRUZHRU5zIOKAlCBS
RUZHRU4wIGZvcgo+IHRoZSBQSFkgaXRzZWxmIGFuZCBSRUZHRU40IGZvciBRUkVGLiBJbiB0aGUg
VENTUiBkcml2ZXIsIG9ubHkgdGhlIExET3MgZm9yCj4gUkVGR0VONCBhcmUgdm90ZWQsIG5vdCBS
RUZHRU4wLiBUaGlzIGlzIGludGVudGlvbmFsOiBlYWNoIGNvbnN1bWVyIGlzCj4gcmVzcG9uc2li
bGUgZm9yIHZvdGluZyB0aGUgTERPcyBvZiB0aGUgUkVGR0VOIGl0IHVzZXMuIFNpbmNlIFFSRUYg
dXNlcwo+IFJFRkdFTjQsIHRoZSBUQ1NSIGRyaXZlciB2b3RlcyB0aGUgUkVGR0VONCBMRE9zOyBz
aW5jZSB0aGUgUEhZIHVzZXMKPiBSRUZHRU4wLCB0aGUgUEhZIGRyaXZlciB2b3RlcyB0aGUgUkVG
R0VOMCBMRE9zLgo+IAo+IEZvciBzb21lIFBIWSBpbnN0YW5jZXMgaW4gcG93ZXIgZ3JpZCwgeW91
IGNhbiBvbmx5IHNlZSBvbmUgUkVGR0VOLCB0aGF0Cj4gaW5kaWNhdGVzIHRoZSBwaHkgZG9lc24n
dCByZXF1aXJlIFFSRUYgb3IgdGhlIHBoeSBhbmQgdGhlIFFSRUYgaXQgcmVxdWlyZXMKPiBzaGFy
ZSBzYW1lIFJFRkdFTi4KPj4KPj4gUGVyaGFwcyB0aGlzIHdvdWxkIGJlIG5lY2Vzc2FyeSBmb3Ig
TWFodWEgc2luY2UgaXRzIGNsb2NrcyBkb24ndAo+PiByZXF1aXJlIFFSRUYgKG9yIHdlIGNhbiBs
aWUgYWJvdXQgaXQgYW5kIGhhbmRsZSB0aGVtIHRoZXJlKT8KPiAKPiBGb3IgTWFodWEgUENJZTUg
UEhZLCBpdCBkb2Vzbid0IHJlcXVpcmUgUVJFRi4gU28gd2UgZG9uJ3QgbmVlZCB0byB2b3RlCj4g
UkVGR0VOIExET3MgZm9yIFFSRUYgaW4gdGNzciBkcml2ZXIuIEJ1dCB0aGUgUEhZIHJlcXVpcmVz
IFJFRkdFTi4gU28gd2UKPiBzdGlsbCBuZWVkIHRvIHZvdGUgaW4gUEhZIGRyaXZlci4KCk9LLCBJ
IHRoaW5rIEkgZ290IG15IG1lbnRhbCBtb2RlbCBvZiBhbGwgb2YgdGhpcyBzdHJhaWdodC4gQnV0
IGV4cGVjdAptZSB0byBtYWtlIG1vcmUgbWlzdGFrZXMgYW5kIHNvcnJ5IGZvciB0aGF0IQoKS29u
cmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
