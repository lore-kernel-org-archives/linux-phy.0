Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3B77EC1430
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 12:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ac1jicjCj/H4GjbiAJpzZDcsyotaHxO4HHYwPucKolc=; b=Vcj2Dn3cn77z94
	hTaqTHU8AJUs+p+PbjrgwXA6nzB1Jg4wbcYYY9NQjURoyOmY5pGIk/bYWM2368wWOx46KLZ5RAW9f
	g7Ucuwin0LZv67ThkY6Fx1DOGRN6+yMpATsfn8L+VMCr4E3/RxsUhYWNN/D1wpQgDZWD1hv7SnYcY
	JQCejOFGNS0RdG8NOE/YmlUntXt6a5f/3tAQBHNHIXawB6MaT0w5FhYTgP4q+aeimAmkMwO9AMZCC
	OLKOqTLrJ4NEZg0dFrrQWyZlOqbEio5xaekVWYDK0Cg89nfNzl12eRGlw/fFuosViII52fRcixOBh
	OfWTs+en/IkQT2ZfsCBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxOxT-0000000F9b7-0FCa;
	Tue, 03 Mar 2026 12:34:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxOxQ-0000000F9an-111H
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 12:34:37 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n50E1838218
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 12:34:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PIuYmbxJe3YpzBkc93wu4DVwPzKyxn0+SKVVjH/VvoA=; b=FiugB3IGvpfN4QHB
	ZiFqk94l/CHM0FQwKzwh9gG+buTduhvSdU6oW/SM57UhBvHWUEQerMGK3gBvtM4T
	hY+urZ8TboLdsYmIuvNMSnh5MWnewMhC1/6SHq4ZQRAvolZycl4gqnhbGAuo40f6
	Q2DlFsfsplxud2EcriLXZZ2rXjN1C9/acFDLXXTMhTVhReTVc/EmKZBcYLuaVUET
	yCocOyvrz7Flp5B+aF+TIup46dX3xsug8+v2PjzB+aJZa1NU1BoxZLeT9drEY9vz
	sAkTM1bBADoIH/9pzB9aIFUwxacUPtoORFQzVcMOwVOGBED3PN/L0ZVY+omLs7Tc
	Wv/ayw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnngga655-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 12:34:35 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a086578c5so5655466d6.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 04:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772541274; x=1773146074; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PIuYmbxJe3YpzBkc93wu4DVwPzKyxn0+SKVVjH/VvoA=;
        b=T29H0tSlzg/VIsKyKYR0PDJunu/Q9yrJy1Ks1W6EuE1gLsq/n7xOC4+yylM6lxLtxm
         jLpvitd2Cim6x+9TyZ+wdnObrhq/pITrJUDotujcOTcvoGD7ckCnKScvKaBaaWCOXatT
         29M8uGzqe6Ae/776JWTUnjYdLjVdwmlvexjwMymOO+BVddjSrG+BYhUexACgQ/E742Ob
         40uBeYrIUoa+ncewLbCCTZt8+wprYhwPKfVG/PlYXgp3sGFKbAfz3gMh3gKHKwGDFpI/
         7idij8t6nGKPAQmmSfwaEektru/dDUflOYeSXD58mYkXMAMl/d2MtD3Pux2xpqWdAGmz
         O3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772541274; x=1773146074;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PIuYmbxJe3YpzBkc93wu4DVwPzKyxn0+SKVVjH/VvoA=;
        b=oyySTYv+IAlq43OPNVn6V2uLWDYos0lY/Xi6zpHh7B7fdxUz/njl3PTJ1FV1WX3GFO
         jQwy8vdZX4wacU6ImWwcfC1blNSxWofl4vmPpLRlNFUf2tkw5GvP2vDuTH7o7sLOv4/K
         T7pIQerchqwqxRGMrcDFZKn7SPP0GnXokFiYOYRjMAJ5lVozBkk2rrPu/QlY+WwJkYu9
         cbOZGVUzE/lRNcq94Es9YIB2o3GwC20Da6K9lRKE8F9RiEqEs0x6CnAdStTbON2hvEIF
         LQ+x62woKqanMafSdrFAITfEu8Lu1+HIuhly28F5iACGtjj58zd6N4wzRzLc+K8f+7T0
         jysA==
X-Forwarded-Encrypted: i=1; AJvYcCXhlLqiB+rnHZ7j/3u+FbddSS1JJynPiyhE8JOD2iWiRBJtYsaOLOSj7XdHKv442y0OcusI5Egh1mM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvSSOBxOoyn48Qal8l9AzsiJb+NsXMsX6pkjfFoN664cxxJBF1
	5nRcse1rr+xtrhErSelzCYvJwGMG/ODsCkPd3XGlEJOjE6QcCRTvORHvCOVKoopSsmOAAAdB1Mf
	5qWGQrF9ruA1eVgl1QYdy43QihGyB6VSvjBFJYpZPterb3F1Y2ws+DJpz0wEx7CeTlGzZ
X-Gm-Gg: ATEYQzyiBEWGFGvXtqq+E107McbJNc2kpsKJgvrFSeVhxt6DzMRuw7mJ/vkKOb3N+5D
	w2zWCCHYw6HFyVbvnT1/hqhBgvuph6dF5TTB0RMlyccMvsdIeuuRoubsQ4zStpXRC3MRgfYkVqq
	e5NNe8ZAgO9I5TrwPssgJdLCaQa7duCDYytYwPM7yqjQzAbKE1NYUucIIQ9FeooCVn4W1wDI8j1
	y5sv6gY74AJu3NKyrZqsnBBtaKndaksrLDfPuMFG9QYNvrBdANWOqsp2lHxcXSyoVP/KLAjy+Ml
	4YE2M3FZk9tCEIHKP3R0Opnzve8PUos0Ao7dOFxqgNL3Bn+lGggj/oDXGgIaWyndbTZt3d5bOOk
	DJEqpx+OgEil3HZWUH/qY0mGSoTlGHKbX7pJviQ9LXzCSuWwSr278mAZ1KulleQ3u6uyRwK7b85
	F4T18=
X-Received: by 2002:a0c:f10a:0:b0:89a:911:cd97 with SMTP id 6a1803df08f44-89a0911d399mr20611836d6.0.1772541274253;
        Tue, 03 Mar 2026 04:34:34 -0800 (PST)
X-Received: by 2002:a0c:f10a:0:b0:89a:911:cd97 with SMTP id 6a1803df08f44-89a0911d399mr20611586d6.0.1772541273777;
        Tue, 03 Mar 2026 04:34:33 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ab146bdsm584236466b.6.2026.03.03.04.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 04:34:32 -0800 (PST)
Message-ID: <04f22394-2dbb-4b7b-bce3-9b41ebfb7709@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 13:34:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@nxsw.ie>, Bryan O'Donoghue <bod@kernel.org>,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <676e2a9f-d274-40fa-988f-e9388ba40f71@nxsw.ie>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <676e2a9f-d274-40fa-988f-e9388ba40f71@nxsw.ie>
X-Authority-Analysis: v=2.4 cv=P7E3RyAu c=1 sm=1 tr=0 ts=69a6d55b cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3czUjEcpsIvkoZBIbdgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: MVj_HhrnSzxzVCvTHP0Q32mCo53PjL4k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA5OCBTYWx0ZWRfX76n8ITPbwwCU
 7wVyjv2VNAcvD8XGCQ9meQ1Pv+gh5WOpueQsSQgooKf4H0o0r5wwjy8OjD/3fkWpTI2mWEa+MYu
 pokgQINJbcpH0//pS45zMRHjUd07QAV+tx57wh1TZHLeIZkmb7GiqWJ+evmXjMYtHN1KR5ExwAt
 zdYsq8m3ehJgaNIQJSpx/p3PaM4FzRYfgZE124CUtTg92Y2FEEP9dnEEjy1WdJnlccBnIDZ7AhK
 vzY2hYDq5qN2IPpvI2yxy5lc2f/vayOkJ5nXIs7bQSuZ/J0Lmyp5duhhnYsQXoyPzlhI4rKfBoK
 lwI8JwsCmhqZcAc4zzOZgufm1gqwTBwqB3tykUXwJ5ui0pZTSiHf78j8o1R7tE6WDXcjtj/FSwV
 01eYk0q1bzp4iC3uj3Fg+z9rsXyrRovvD+VdGJ81LH8zS8e8lLyRCGtcMb1oy67j7vZJa1Fc5pq
 9anP68aPHxs1KChaVsg==
X-Proofpoint-ORIG-GUID: MVj_HhrnSzxzVCvTHP0Q32mCo53PjL4k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_043436_289135_B93A0570 
X-CRM114-Status: GOOD (  12.42  )
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

T24gMy8zLzI2IDEwOjMwIEFNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDAzLzAzLzIw
MjYgMDk6MjcsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+IC0gTVhBIC0gZmlyc3QgdGltZSBJ
J3ZlIGhlYXJkIG9mIHRoaXMgcmFpbCwgZnJvbSBtZW1vcnkgSSBkb24ndCByZW1lbWJlcgo+PiAg
wqDCoMKgwqDCoMKgwqAgaGF2aW5nIHNlZW4gdGhpcyBpbiBpcGNhdCB3aGVuIEkgY291bGQgZG8g
c28uCj4gCj4gWWVhaCBubyBNWEEgaXNuJ3QgYSByZXF1aXJlZCB2b3RlLgoKVGhhdCBkZXBlbmRz
IG9uIHRoZSB1c2UgY2FzZS4KCk1YQSBpcyBhbHdheXMtb24gKHRoYXQncyB0aGUgJ0EnIGluIHRo
ZSBuYW1lLCBhcyBvcHBvc2VkIHRvICdDJwpmb3IgJ0NvbGxhcHNpYmxlJyksIGJ1dCBpdCdzIG5v
dCBhbHdheXMgYXQgdGhlIHJlcXVpcmVkIHBlcmZvcm1hbmNlCnN0YXRlIChzdnMsIG5vbSwgZXRj
LikuIEZvciBzb21lIGNsb2NrIGNvbnRyb2xsZXJzIHNwZWNpZmljYWxseSwgdGhlcmUKaXMgbm8g
bmVlZCB0byBwdXQgdGhlbSBpbnRvIHRoZSBwaWN0dXJlLCBhcyB0aGUgcmFpbCBtYXkgYmUgdW5j
b25uZWN0ZWQKYWx0b2dldGhlciwgb3Igb25seSB1c2VkIGZvciBzb21lIHJldGVudGlvbiBtZWNo
YW5pc21zICh3aGljaCBvbmx5CnJlcXVpcmUgdGhlIHJhaWwgdG8gYmUgZW5hYmxlZCBhbmQgbm90
aGluZyBtb3JlKQoKS29ucmFkCgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFy
bS1tc20vOWZmMTY0NWYtYjJjOS00YzFhLWFlMmQtOTZhZjQxNmIwOGQ5QG9zcy5xdWFsY29tbS5j
b20vCj4gCj4gLS0tCj4gYm9kCj4gCj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
