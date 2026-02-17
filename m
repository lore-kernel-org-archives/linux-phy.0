Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37B2CE6816B
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 10:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POykbxraz2TnFaByTiHBxk51/2dQFrryGWMjv3RzA/A=; b=0OX/5jIw01N4kg
	8fwIwVGlz3yYhMyJNXz34bX6yTXMedL1ZTvDDMPTJX5ZDCFzX68qb/8AW+WvOiiyZbyN59XaUvUAG
	quWyMIpe0/2XCoMxo0MOlBaVn/Ky5DERoGvt+9VIWlqaGemWqgLTfnz4YPx04R1qmn9XBbjKpZy95
	PQ6bz88OrWfE5J4Gz90RuRnv45jh7JluKp4JhTDyyH9SK/BfxLnixaBLNf5kKoslHPuJtTayO7J5S
	poyz56Xe5hhlhw7FzDUxmL5L8sNf2a4M5w39GV3IAnomNsPXK1XdK/R8gtrdSTEcQ0q1CAgacG0Ku
	w/13A7LaDPszkgVWAOog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsIWJ-000000082rT-0s2b;
	Tue, 17 Feb 2026 10:41:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsIW9-000000082pi-0Vt7
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 10:41:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GL7gix300688
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 10:41:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jvW4MfiEoqcUVdeGjY3STnQGR7tHII8S4Aq0pNbP9LU=; b=Ns42n+kHfsTljtyw
	fCRQQLlXRan4kUVA7HaWKlKOZIV1zVdKTZM0upUawxNMRwLK9l+BNpNtalzPVuHq
	NtX0cH0tHJJOE70JR8Wf/EaWKC/l9TcI0Ec5PI49YAT+Qv+w5+XfZluIkifVDh7Q
	0msU1DEBhVcXbaM5Y9LZ/8XetRLl4N5dHh84KLskG1qeuyQ4zYGd7+WcxiCf61jW
	A8hRx0oAK6Uv4/PgDFb8dwHHZls7B8tw6YVqYvW4KQhr31QhJAOHYUE3onC/LTk7
	TT+/4T7oj1C9fBZx6iz8IY6ne1kDlqqktT47CZ9cPZgnnCYLhNV+TEzgxe5C64zZ
	eU20eg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbnv9m3wk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 10:41:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3a2eb984so4335719385a.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 02:41:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771324862; cv=none;
        d=google.com; s=arc-20240605;
        b=OkPfA/ZULdhJUqo8uQpOl8/otsumd0g7AzzPSqHcwEfKdzp2IyIXsaxPDZXnkzbqWu
         VbyYbUOWOeEZhQ1T/jxttTZ5oIvMmvWsZmFD40q3NjJ6qkMdClmURmdcjI66++5NMbZH
         LzE5iFiqTMMiaLFdfOl8XofYbFhI7b4RQUH7Nm5ZnCXN2cOZKyNjYTfkVfyDE9gGnc2k
         w5/hI7hIvLz8eScWYWZsSSI2lZEy8dl0pBgV9pdnq7aR1xmGnibcy1ct4NPhTGSnobhU
         qvNDCWPeznFLaDCduzfvkplb57BKF2We4kyNHhobHupOZJHfoWNRgNPuWMzPw1vfzmci
         oPpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jvW4MfiEoqcUVdeGjY3STnQGR7tHII8S4Aq0pNbP9LU=;
        fh=yhsOHWuvrSSJmg1MKwDPMR5lf00Kj49uF5Lzo5PhXYI=;
        b=a9qdqHowRxFbq6/N8BlXdyph/RgZXHp0U1QoYQKZSqs1IiMUfnZkdrXdcBOgwAypgg
         tBWzfT4kSzuTGEKgdoTsFi9FhCHjD7MQnC2TQoEvPoKruKzOuSHL/T9ai2EhXYJdRUzq
         4XUeDiP1XUq4cYHsYW60NiByoZbZIQMXjjXbw7m2DJi4SvKqmpUdkMnOp3hZ3s89IBMw
         9qcutBDb7wUOVr/0XUNzmf2ELTv/eMpTz/uQYe7gHXc1FIuaWAYOmxj50aBuThM6l5GV
         oPPRgk3NUQD9LeovxPPhueiwSM92nZt38XOJJkXP88h9ENG84YGGmAXzRSxQFccJdKWh
         er5w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771324862; x=1771929662; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvW4MfiEoqcUVdeGjY3STnQGR7tHII8S4Aq0pNbP9LU=;
        b=Vi82eZ00WmGZz0xTDFsd2Ix0lQPqvZh2UNNdi6mX4PUaq54V2Ay7UHiRkP1bm9k/M/
         Dc+IJbkwwDDyWXqou4DKdh/JaR/cYGK+TtLKSV31LdMkCrtTStsy8yH0EIGU60j7JEOt
         /JFj8kL3kwxIQOA2raFCenaKCly6Kq0MqY886egXghlx9gfa6WXTalrBHXzOnIfD2PHH
         D593NR68G/9BrjR+28WZaMZdXU7q6FDsVy+y7+JAS7WKU/u4h1J0YX3LlUL0wYy7FGLm
         Bhf9R0wNHj8B45bbBKvTs/wtKC6A442gYZh6FIsAOYtzn8otHVfDs4plb0+tB+DnYl+M
         3q2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771324862; x=1771929662;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jvW4MfiEoqcUVdeGjY3STnQGR7tHII8S4Aq0pNbP9LU=;
        b=UtdO9ATML32viJnToLoNcd4M7a2X2gsteXdEhmeQpuASN7MV7BvpE5UT9L8JXegTQq
         tuAiR838qv/viOjP+Kin4Wy7hAJPz7dDAvqXAeBuaFShMdXOovTn9dcequaCncEg36BK
         bpB3UA+ZawPgKmSHpjAzhsXdnOCY27pPHdKcUYOlmdplMl/eY+X9+tEFWvemYYiSR5eP
         j8pkL4fPVzg66t/gPWLh88xm0mrKLkz3MSuPiAIXp/rJvkuMSUPzj4jYH1Utk9fOo17P
         UGiiHTx1FJ//BHNwOHFBHBBzpIJc/2+Uo1fwtPC+MbwA9X22ZXdFZg/06TlV1Z3bTQrL
         pSSw==
X-Forwarded-Encrypted: i=1; AJvYcCXwqGTo3Wdkq903VjdwI+tQ5ptSZInhJAXp7il7xJCmoygtRoDN9psH1bJ8KbISraJaEGNX/dg/sIE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw19dyBuhSX9pAcN+gDYAHvl9Ee91s0PEDC226+bRRMvPa9o+7e
	YjG6DBAacm4PEVIAdRC9mVG2JyGQRglb4W5n+yzr0HF2//2PBVslTLkoiNFI9aTnbmyetk4Dr96
	yxgDuDkvCV2+EZagDvWUmStfnFvEVULNsRj+EfSr68Y1UVGkKwXcGpfROwkiyQvoY7xj0PqlfWT
	4QL1kj5ndxL22hkWnCyn/0TkYkBQ0Fglt1OoDvTlyYsg8=
X-Gm-Gg: AZuq6aJQF5xgCci7wu1UpGEjq5ewSMQFcIV3AjWJej73uq1/ISOo0bIuvLxbAKsEAcQ
	Sm6CUt1Rroz53Zgw57e3L/eY+i3XN5Ug/7KY3n4TuhYMiwWE8YfZTN413gvcGzGOUN9iJGOaWXl
	WAgsJy40v/dPLy8bbVBKf0y8ymr/9dHt1ugTtLfozFRPuSDOnr/K0lIIsajaKgrpa175pQlVBw5
	IjJktBTCKceodT4o07/NSLjrNQDU8oe4yHbCbs=
X-Received: by 2002:a05:620a:2683:b0:8cb:39e0:1710 with SMTP id af79cd13be357-8cb4bff2b57mr1321677785a.54.1771324861846;
        Tue, 17 Feb 2026 02:41:01 -0800 (PST)
X-Received: by 2002:a05:620a:2683:b0:8cb:39e0:1710 with SMTP id
 af79cd13be357-8cb4bff2b57mr1321676185a.54.1771324861516; Tue, 17 Feb 2026
 02:41:01 -0800 (PST)
MIME-Version: 1.0
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com> <aY7pvakkOnaYsd5p@hovoldconsulting.com>
 <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com>
 <aY8Asvu-1u0e02oJ@hovoldconsulting.com> <CAFEp6-0rzkqc0ajN72q=mv3U-TT0JHMSPmnJD6ohKuLmbPz2-A@mail.gmail.com>
 <20260213201550.vk5cosmoewokarlx@skbuf> <aZL12oyiLumpf39e@hovoldconsulting.com>
In-Reply-To: <aZL12oyiLumpf39e@hovoldconsulting.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 11:40:50 +0100
X-Gm-Features: AaiRm51hdbGztObdC541hjPZzX1mYaenKfzwcLtfRh4FjIoMnwsHXszFXK_xCQg
Message-ID: <CAFEp6-0s9RtHWv6eRUM68OPE11x3NuY_s9PPmvs7piBijvkL2Q@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
To: Johan Hovold <johan@kernel.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, vkoul@kernel.org, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5kZi34gNQ2d69x1L66hs7aF16Y0hVKuh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA4OSBTYWx0ZWRfX7/N0O3O2dKgN
 qNixgqLlF42LFKD66jmf2v+Qd3Fri9XJVLK9gVATWM+Y66B0a7htDlVxjbSDzXwNt3hG37WZ85c
 QnpG63p5xZJKcR4/U7+t3Qomjy49RKPAMZQRxLWFA4rym3IcYtLFTnH2lrPnl18CUjaeq7Jt6z3
 R/9TV8Tpga0xBsE/ZHG1CsfkNH7BQd4fghg1+jFmXiT+H7Jif34yzhhWEIoRWyZNPKF/Tl51Ril
 mWkdHew9f18TDW0PKAI7XDRnLbNOmLwT/OYpasniH39SsiNYHtgs/d4Rvku0zyqbokAhMbkd4t2
 Sve6olyasPHGIAfG7MDmVA8W0Bbgf6NnRe9+NB168S64pNnKXs7exYnHA5ktmZowtLCYapVjN6s
 1thge4yFeEIV3jugNnWIx35C9WY4x6KZy5BuEgxY3ceNIJ/JCm7zcdlb5EmgKCmRCJaVhGSQfDF
 +Gx3TRMaV2Ldo8pWLBw==
X-Authority-Analysis: v=2.4 cv=b7K/I9Gx c=1 sm=1 tr=0 ts=699445be cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8 a=frQsgQOtNAQVVFUjO-EA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 5kZi34gNQ2d69x1L66hs7aF16Y0hVKuh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_024126_187665_1BEC8E44 
X-CRM114-Status: GOOD (  17.40  )
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

T24gTW9uLCBGZWIgMTYsIDIwMjYgYXQgMTE6NDjigK9BTSBKb2hhbiBIb3ZvbGQgPGpvaGFuQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBGZWIgMTMsIDIwMjYgYXQgMTA6MTU6NTBQTSAr
MDIwMCwgVmxhZGltaXIgT2x0ZWFuIHdyb3RlOgo+Cj4gPiBBbm90aGVyIGNvbW1lbnQgdXBvbiBy
ZXZpZXdpbmcgdGhpcyBkcml2ZXIncyBydW50aW1lIFBNIHVzZSAoYWx0aG91Z2gKPiA+IHRoaXMg
aXMgYXQgbW9zdCBzb21ldGhpbmcgdGhhdCBtYXkgcmVzdWx0IGluIGEgcGF0Y2ggZm9yICJuZXh0
Iik6Cj4gPgo+ID4gVGhpcyBkcml2ZXIgdXNlcyBoc3BoeS0+cGh5X2luaXRpYWxpemVkIHRvIG1h
a2Ugc3VyZSBxY29tX3NucHNfaHNwaHlfc3VzcGVuZCgpCj4gPiBpc24ndCBjYWxsZWQgdW5sZXNz
IHFjb21fc25wc19oc3BoeV9pbml0KCkgd2FzIGNhbGxlZC4KPiA+Cj4gPiBEb24ndCB3ZSBhY2hp
ZXZlIHRoZSBzYW1lIGJlaGF2aW91ciBieSByZXBsYWNpbmcgImhzcGh5LT5waHlfaW5pdGlhbGl6
ZWQgPSB0cnVlIgo+ID4gd2l0aCBwbV9ydW50aW1lX2dldF9zeW5jKGRldikgYW5kICJoc3BoeS0+
cGh5X2luaXRpYWxpemVkID0gZmFsc2UiIHdpdGgKPiA+IHBtX3J1bnRpbWVfcHV0KGRldik/Cj4K
PiBObywgdGhlIGRldmljZSBjYW4gc3RpbGwgc3VzcGVuZCBiZWZvcmUgcGh5X2luaXQoKSBpcyBj
YWxsZWQuCj4KPiBXaGF0IHdvdWxkIHdvcmssIGFuZCB3aGljaCBzaG91bGQgcHJvYmFibHkgYmUg
cHJlZmVycmVkIG92ZXIgYWRkaW5nCj4gdGhlc2UgcGh5X2luaXRpYWxpemVkIGZsYWdzLCBpcyB0
byBpbmNyZW1lbnQgdGhlIHBtIHVzYWdlIGNvdW50ZXIgYmVmb3JlCj4gZW5hYmxpbmcgcnVudGlt
ZSBwbSBhbmQgZGVjcmVtZW50aW5nIGl0IGFmdGVyIHRoZSBQSFkgaGFzIGJlZW4gY3JlYXRlZC4K
Ck9rLCB5ZXMsIHVzaW5nIHRoZSB1c3VhbCBwbV9ydW50aW1lX2dldF9ub3Jlc3VtZSgpIGJlZm9y
ZSBlbmFibGluZwpydW50aW1lIFBNIHdvdWxkIHdvcmsgYXMgd2VsbC4gVGhpcyBpcyBjb25jZXB0
dWFsbHkgc2ltaWxhciB0byB0aGlzCmNoYW5nZSwgd2hpY2ggaW5zdGVhZCByZWxpZXMgb24gcG1f
cnVudGltZV9mb3JiaWQoKS4gSG93ZXZlciwgSSBhZ3JlZQp0aGF0IGZvcmJpZCBwcm92aWRlcyBu
byBndWFyYW50ZWUgYWJvdXQgd2hlbiBydW50aW1lIFBNIG1heSBiZQpyZS1lbmFibGVkIGJ5IGEg
dXNlci4uLgoKUmVnYXJkcywKTG9pYwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
