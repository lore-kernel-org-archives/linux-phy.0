Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE6CFF5A8DA
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 03:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZpdUcVBM+2HfJQbMhru0yoA8AA7bZ+rsh3MhcZTtjk=; b=z8lGVWRCTmnNmT
	+rxzOvbmRDP1B1dCTHwyWTVn8AIJ28fmGgF7sOF4iqbsxLT1ZourmgKIEs424zEFvGPlqSOct5CUL
	qAbLw35rL8szifJEevVSMEJRqqpPLQbUFaRVWqshx//G33G8CJRBbQYrbVfgBVvGmOc9Zu+GQv3Ir
	YXjOlhMxObjKqV/Goo7StoG2jIFo77u5EgUJLMxp2x0L/Omj7QCaHh/cdpQ5VjCazmGEP6wG8DHeM
	enV5YQPczUCwzudr3HPP1Oo+zqHTnwFd4Yq28HFP8AIFDVAKcFAN6BJ3QN6Nr788NZGQsKP9iR80o
	WqvpD76orxaGYLlIrSjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF2Bf-000000080gf-1l9c;
	Tue, 21 Apr 2026 03:54:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF2Bd-000000080gJ-1hdQ
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 03:54:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63L1nbHX2755631
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 03:54:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	reNIUZ1BQJrOjK881QqCqiO8dR1s9yebM1FUayY4Tz8=; b=MTtxBLHcFM6nTSOi
	vaV7YFFJDKXwkEgunTZYpZdlm8AaWAtEKg+BzfMN6lmOqaVYaaap/QoFA/l9Obsc
	nTPaiC7JeFYhhLdvXgo1H0tuv6v8GuzKyFfDBtTZ433/Z04iAx3AAEeCtBPPmWpm
	ERCQ104+4i6bHilokPjVte1JNQriJWN7z7h/XtiN5mtCaPKLMg6f4cbCaBoI3H0Z
	cAcu1LyROEF0rbVT5xg+x64e5tzZv8jtqtjxqRM+i2ja3xxo4RtX1k7LeMISQl28
	57HLjPd19zyTNvW1AGn71aD+gXpZ47doYGJr9nn3vsJxRT7ahRW8HLiaCvaACpNH
	/Kacbg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh7xkjas-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 03:54:08 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82f9429f49cso4299575b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 20:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776743647; x=1777348447; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=reNIUZ1BQJrOjK881QqCqiO8dR1s9yebM1FUayY4Tz8=;
        b=kZVPc+hSvT2/SDlHNjNr14VTIO/K/3kaAO9TuwZEdmBnjU+B+fnwG3AayvVJUrCCFw
         5J36fcB7W6uaAGAsWZY9278wIqdY//vFyKPfRfCZ6kUjOxvvaaRdknccDnVmXDuz7DKA
         yh6q/y3hfffuc9fRXT623YbWuO1ytwt7Uooj58qSthhqzUyjIfH2ea19VaCvJYHec6JW
         gHe1245HNowgMZ7JK4g9HfjPm8mf6s1yNwVU5mcHe5eImLEsIpmubsrN9ClSKPpEj30Z
         4bAKVHQuuWx6fy6tKBqbRm6FnAcDegIV2Z36F90RTTEKXxfHz/qtLP192UViHwXeLKTX
         ighA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776743647; x=1777348447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=reNIUZ1BQJrOjK881QqCqiO8dR1s9yebM1FUayY4Tz8=;
        b=jz3e3L6mkUIQ6xcXQC016N2wk4RiaaUnBShNnuVbzlDB9bas1uuXqYGAYjPqxFxKef
         kVJcnehWPyE+cip76heI+EeWv0EAVol1U2ox/Nufj6o4VI+ZN13xB7H0Zz0akamqb8H0
         HxlhSiE12yR5BwJ/z7VSuEUzUbXYrGRn6lrd7evBuLV+J3wHssrEsJGC0M7Isp9Hs1ck
         oiW+5vRdGfBnZcBRnUP32q3DcnROXeQzLddFZgyXq3rI5wK+ltxk1XPr8Z6GM31Ms1N6
         5c3F7D6lklWIhrdCxBHU2qh0hXH+RB6ZeBT0GFrcc3MYutbYf/sxnHcBGnw7/vPnK6Nn
         Uz5Q==
X-Forwarded-Encrypted: i=1; AFNElJ95t9yXPvQZ0gzbhTPIeotYxo8mpW5r2GY2BVFRzvmKJeRG+LsjYyA1BakIKtJaLdGLX9owP2hK0J0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxdhaKqKpZGcGX1+rCgsCT23O8/GXXbaV1CuMukByST5Ru2kPDd
	GDbb04EFejHg8UcDJrURYhmV7G7GPdEECYTOwKb7H/pXJDklFdAbqudk8u+85hHTBV+BhUrqJu5
	UgakjmtA32xF1/brSS/Abo2ribaLHBFORl5XSH03r2yBAl7USgAy4j+9KFZ81LO4mAC3c
X-Gm-Gg: AeBDieuNd7pKOCt6uDhM05CWEqXseIdSn/ajwIwViMQct6p7zA2n20z8nB9RbRsbbeS
	ZqpQtw0cHv7cbcFvvudeZhTrm/kf27+wL9scJzHHUppwKvaDUL1XuChCjKYxNOldMTaQ2Zcl3Db
	lhAQ7JcR9APM2znfZVZdQ+Sg15OjnT2VMlHYs3kRVTdVk3G864U+BWoxpu2c1ULzMe2ZExl4Z5P
	LbkzF5idDbXm97ILcWKUu+cAJAnaOa3RRJA/xLxJ0oo78m3GxenOWnUxMCFfsNylBlDMoYVGq3E
	YfkOA7cfvpF1fTcNddsQaqdKsDUOMWHegPI9eeBMpkIe/8iG7rFrHs3hGL4vxdlwVR6dP51spco
	HkJJYDydcpNTZ8kPECHI2xqNSRUKnYhiOLVAYkXTg/TyBYgp4evOW+T6RO0CFA5D58ZgBzZvjW1
	WhgvyqIsKFFFzcOyquPIVjhWMAlB11
X-Received: by 2002:a05:6a00:bb91:b0:81f:31c3:2e34 with SMTP id d2e1a72fcca58-82f8c902072mr16719738b3a.25.1776743647437;
        Mon, 20 Apr 2026 20:54:07 -0700 (PDT)
X-Received: by 2002:a05:6a00:bb91:b0:81f:31c3:2e34 with SMTP id d2e1a72fcca58-82f8c902072mr16719704b3a.25.1776743646903;
        Mon, 20 Apr 2026 20:54:06 -0700 (PDT)
Received: from [10.133.33.141] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f97eb5ce8sm10205408b3a.61.2026.04.20.20.54.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2026 20:54:06 -0700 (PDT)
Message-ID: <aad6a3a4-5050-467d-8ece-e83648d219d6@oss.qualcomm.com>
Date: Tue, 21 Apr 2026 11:54:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
 <245f4589-d7ca-4d6b-8162-a86972752bd8@oss.qualcomm.com>
 <12e8a8de-49b8-463a-8b88-2cbbf1ab901c@oss.qualcomm.com>
 <e956b609-3e37-4c3c-9168-a50793722061@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <e956b609-3e37-4c3c-9168-a50793722061@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDAzNSBTYWx0ZWRfX7PLMJAfWJav8
 Pgy1qEU+WQxb55bB28jrOhsY51NiEVZpw2pGJ2Yqoq8zcgcrXYL3bOsGPEugMRtg3Ip8lvs+cA3
 ntYQivxWkbh/Tu/IONJnZsVh/pvmlLTksHGFTGArBgwdqAd4neEWNqXaF0C3XLcgUAwNsv18kqM
 hHhg3LRnWDE32HccFY2tUkzsrsKM2q7AEG9d+72PS+XG/hSZMREWlUOjQYykcE1PKPwkSWkCsyw
 E8W6dbRBjShkJl0/10OBj4y5tZGuwHh+7EKZIPdjYqm04IHJYEiUO3zcA2o6ZQmFWT0h+8GpWx4
 CMmmceGO9+WDk5XaO+fczpqLKuG/ZDmEhafMAFfOhpqRYvbv+an9Xt6UE57FhoVs3Tn0R0xFcBj
 zpv52GWQaWHP0FK5AmfCMZtKDP9L4iF+SpRLlgsyqqjmaPizA+uqKcuPBuCD8F6y0LEQqXHFgRm
 9iOY+8mGd+U1oimEFrg==
X-Authority-Analysis: v=2.4 cv=BPmDalQG c=1 sm=1 tr=0 ts=69e6f4e0 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i7yIW9Iy5qQLytvIRn0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: GtCc_r9SWSc6s_dzdoviIQ52yrHs81i0
X-Proofpoint-GUID: GtCc_r9SWSc6s_dzdoviIQ52yrHs81i0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_01,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_205409_479908_AB431DBE 
X-CRM114-Status: GOOD (  14.17  )
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

CgpPbiA0LzIwLzIwMjYgODo0OSBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA0LzIwLzI2
IDI6NDggUE0sIFlvbmd4aW5nIE1vdSB3cm90ZToKPj4KPj4KPj4gT24gNC8xNi8yMDI2IDU6MzQg
UE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+PiBPbiAzLzIvMjYgOToyOCBBTSwgWW9uZ3hpbmcg
TW91IHdyb3RlOgo+Pj4+IFRoZSBlRFAgUEhZIHN1cHBvcnRzIGJvdGggZURQJkRQIG1vZGVzLCBl
YWNoIHJlcXVpcmVzIGEgZGlmZmVyZW50IHRhYmxlLgo+Pj4+IFRoZSBjdXJyZW50IGRyaXZlciBk
b2Vzbid0IGZ1bGx5IHN1cHBvcnQgZXZlcnkgY29tYm8gUEhZIG1vZGUgYW5kIHVzZQo+Pj4+IGVp
dGhlciB0aGUgZURQIG9yIERQIHRhYmxlIHdoZW4gZW5hYmxlIHRoZSBwbGF0Zm9ybS4gSW4gYWRk
aXRpb24sIHNvbWUKPj4+PiBwbGF0Zm9ybXMgbWlzbWF0Y2ggYmV0d2VlbiB0aGUgbW9kZSBhbmQg
dGhlIHRhYmxlIHdoZXJlIERQIG1vZGUgdXNlcwo+Pj4+IHRoZSBlRFAgdGFibGUgb3IgZURQIG1v
ZGUgdXNlIHRoZSBEUCB0YWJsZS4KPj4+Pgo+Pj4+IENsZWFuIHVwIGFuZCBjb3JyZWN0IHRoZSB0
YWJsZXMgZm9yIGN1cnJlbnRseSBzdXBwb3J0ZWQgcGxhdGZvcm1zIGJhc2VkIG9uCj4+Pj4gdGhl
IEhQRyBzcGVjaWZpY2F0aW9uLgo+Pj4+Cj4+Pj4gSGVyZSBsaXN0cyB0aGUgdGFibGVzIGNhbiBi
ZSByZXVzZWQgYWNyb3NzIGN1cnJlbnQgcGxhdGZvcm1zLgo+Pj4+IERQIG1vZGXvvJoKPj4+PiAg
wqDCoMKgwqAtc2E4Nzc1cC9zYzcyODAvc2M4MjgweHAveDFlODAxMDAKPj4+PiAgwqDCoMKgwqAt
Z2x5bXVyCj4+Pj4gZURQIG1vZGUobG93IHZkaWZmKToKPj4+PiAgwqDCoMKgwqAtZ2x5bXVyL3Nh
ODc3NXAvc2M4MjgweHAveDFlODAxMDAKPj4+PiAgwqDCoMKgwqAtc2M3MjgwCj4+Pj4KPj4+PiBD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+Pj4+IEZpeGVzOiBmMTk5MjIzY2I0OTAgKCJwaHk6
IHFjb206IEludHJvZHVjZSBuZXcgZURQIFBIWSBkcml2ZXIiKQo+Pj4+IFNpZ25lZC1vZmYtYnk6
IFlvbmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4gLS0tCj4+
Pgo+Pj4gSSB3ZW50IHRocm91Z2ggZXZlcnl0aGluZyBhbmQgYWxsIHRoZSBzZXF1ZW5jZXMgYXJl
IE9LLgo+Pj4KPj4+IFNDODE4MFggd2lsbCBuZWVkIGNoYW5nZXMsIGJ1dCBpdCdzIGFscmVhZHkg
aW5jb3JyZWN0IHNvIHRoaXMKPj4+IGRvZXNuJ3QgbmVjZXNzYXJpbHkgYWZmZWN0IGl0Cj4+Pgo+
Pj4gVGhhbmtzIQo+Pj4KPj4+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHli
Y2lvQG9zcy5xdWFsY29tbS5jb20+Cj4+Pgo+Pj4gS29ucmFkCj4+IFRoYW5rcyBoZXJlLi4gSSBk
aWRu4oCZdCBub3RpY2UgYmVmb3JlIHRoYXQgU0M4MTgwWCBpcyBkaWZmZXJlbnQgZnJvbSBTQzcy
ODAsIGFuZCB3aWxsIGNvcnJlY3QgaXQgaW4gdGhlIG5leHQgdmVyc2lvbi4KPiAKPiBQbGVhc2Ug
bWFrZSBpdCBhbm90aGVyIHBhdGNoIG9uIHRvcCBvZiB0aGVzZSB0d28sIHNvIHRoYXQgd2UgZG9u
J3QgaGF2ZQo+IHRvIHJlLXZhbGlkYXRlIHRoZSBleGlzdGluZyBkaWZmCj4gCj4gS29ucmFkClRo
YW5rcyB2ZXJ5IG11Y2ggZm9yIHRoZSB2YWxpZGF0aW5nIHRoaXMgcGF0Y2guIENvdWxkIHlvdSBz
eW5jIHdpdGggCkRtaXRyeSBob3cgaSBwb3N0IG5leHQgcGF0Y2g/Li4uIEhlIHN1Z2dlc3QgbWUg
dG8gc3BsaXRlIHRoaXMgcGF0Y2guLi4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
