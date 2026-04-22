Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A5AAF9B601
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 09:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhZ7JHqIbCGNxWdDu6VCOvHqKiKUsgygr4E8KEj4pdI=; b=htkRDOMGk/WNH6
	LXJ9RD1jTRIkNpELsrbgEEBi0pPF85RMmh96yq4JfvK6TakUurUAspKGYH2XCo+se4T2TqCtzmEod
	oG+CXmFR0zdP9w4+6vrPSgtqoSffzi4stDfjsM3v2OxqAZnxpyCTs1qUq/E7rZqPRIzdPc7RdwfWg
	GVhs3Ako+4Iq4GmvcTgGHdyAJ5+p5hgsgu4ZYnxO5cDacQZnIo3vKsluXDECTPgfFbROw6l0anGCS
	wvG7DsQxfgwKjKwxRjnVUVRWe0lNFHSaqzQSunIdYextmjCp6Z2i0zjMIgXXPjfu2LMkMssITs5fg
	69xUAWkdGL7EtMEkN09w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUI2-00000009tkm-0RIw;
	Wed, 22 Apr 2026 09:54:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUHz-00000009tkQ-3Ly0
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 09:54:36 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M586UT2123575
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:54:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xAtj7A5eiI9lqq774F43KPQibsO1yZwbXiCwBAPqRT8=; b=o7uikPmyEGyVDQSB
	1OAkiocjRjIPfDGJVgyArKPCkFWbMOCodpxTlvVh0CiURKxhnsE8x9ZMlxjGuC13
	WJ/E3hIw4lVz0xQ7zLlboIEVCh5qrW+CfOS58veOiwdi8MrPeQwINIvLcrv4c+fd
	441LlHG2gkdzqfxWvpQB8SlbW767wypvTsu9M8nL2j0ewVCVOxCFl3r9WE9aBogh
	UhBjSv17DPTsKCarDYsGsGfOyJ69KTZbZeT2hj35V/lffvxwoUeeFip1JcXyomsy
	xUuar4YdYh2h3jdJhTIu0u/+56MucGzKducMly72a4qxDDe8SGhTyzrzjAgNiR6B
	xZt4dw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenftu1s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:54:35 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89f548d0872so13524516d6.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 02:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776851674; x=1777456474; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xAtj7A5eiI9lqq774F43KPQibsO1yZwbXiCwBAPqRT8=;
        b=YgkMGEFxD9WfNLfUG42vbDIgsBVuZIcJxWk8s7AisVir2SIbyVfG+0AjIxU575XGkn
         wLT3I/lLM9wV26pFomuA+1JJ2MzYczOJWgCuPgxl8idUed3IpochTQx288RrhtIIiJXp
         Oinr+sK1uOLGNfEIMEsaJDtBKuOyXxC/9fkXYTkIbn80wnZduhTN6mYNbF8hCireEyTh
         BIXILPyNmihugNfReoWFa6D0qX3TOXW2OX2ESurcSY8N4pQSOfAp2TFtAJNAEmWgwsmh
         2LqWZee+LJqhxMD7aGdoJj2slzmixN1Z4HvFLd2tQjztjOd4XRN0ZH2pKmm43BNKcqza
         iQqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776851674; x=1777456474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xAtj7A5eiI9lqq774F43KPQibsO1yZwbXiCwBAPqRT8=;
        b=iK5cCmGJkoXg1DvhvB3KNhOvoH7ILbhWWUrCBljcBzPbvcHwXAKRBA3QtsVe22oHmW
         pIw3eDQPPKwR+9SXeQcrLaTESiFjSOWJwiYY01c37szj6uEiEKm7VhhsO5EGNh76D6W3
         pt+ra2vHXrWupcj23ZgkLof751ut2dtywvs45nhR7dUBdBYUfaOGulq9ymsaaEf1+dno
         2NsMDP9oHGhDxGD+9UZ+e6BI2dqhmpwm8TTe2IsXDmf0lGypxVWNKBaQwlsAyVfJV5RR
         JumP1f7STF17cagftm/Ns+csMKHiqrdkgtthzqdtTtBOs/eWjtJi7LdlmD9+7zagYvxm
         hk+w==
X-Forwarded-Encrypted: i=1; AFNElJ8extFXwKkYXamHQTwqHJ62s1twAUCx5/4GKprkuROYSvu90lnZQcHuhkdj0M7b8Vl283luuI4baVM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsswFD5r/oKvWbFsHgS13/asdSOHhfpLWuoO2QlLtEWqRN98n8
	6y31fQTf9i5AwyjlHJHEKl624ez9um/CMX/m0VN0X9eOFxQ4QEqZ9vO/7ENlwdexiILrp+HZHNX
	lhy4eFUOcVH2N1u4EB+xA3VFNDh+5me3cojv87E9e8PbSS5vNiLIz2//o2uaTXc6L5Vom
X-Gm-Gg: AeBDietqHumkX7gVapnA4Gp1yH0ceyXkKniQzhKBd1n/Mvmq38F+xkpg8IEZpWdUwiw
	4kmG3zXJFt573r6sd9xVij6WIjGobUuJefVpvU//qcNE0fMQTPZX7NiHLzN6eBr+VaA9lDGkstC
	iHM6STmKQHtV2BxQvkx74ODTzARe3+E0ivMPMq/opD5UyQgS4k8m8a68mcYNcSBBmNTCEwAIm0/
	7rxX4WcHtHolkz8hsp3LAX/fwcVJQQYhyDeBPZzo7BDTrnH3IK+gctesbQgqmCPrcXYN6xwdW0u
	UM0WJ5OVHTDEdgaoFZj0jhrK23Sf4w7ZrpDrlmmRUm1F7vBOW1uxgLIFFjkzOJ0k8qKL7KkObKp
	KcdAzP1dxQS+FG00ZLsrZkFmlfSgbBopUMtgSYEen7XMHDvptfA1EiAGMBg6NCZf0sji2fZ1OM1
	8lSvA6N+yUJiemvg==
X-Received: by 2002:a05:6214:21e8:b0:89a:46fd:3001 with SMTP id 6a1803df08f44-8b027e819a5mr233907976d6.0.1776851673983;
        Wed, 22 Apr 2026 02:54:33 -0700 (PDT)
X-Received: by 2002:a05:6214:21e8:b0:89a:46fd:3001 with SMTP id 6a1803df08f44-8b027e819a5mr233907706d6.0.1776851673452;
        Wed, 22 Apr 2026 02:54:33 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba45503c414sm519877666b.44.2026.04.22.02.54.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 02:54:32 -0700 (PDT)
Message-ID: <b21b1f73-881a-40bd-aef6-5c34aed0e266@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 11:54:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
References: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
 <CAO9ioeXT0jxu875jBsAbOVrDqonASWSmmxJbP0AiitXb-gUANQ@mail.gmail.com>
 <a967d7ec-66f7-4eaa-91e3-0a96e5a8ec7f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a967d7ec-66f7-4eaa-91e3-0a96e5a8ec7f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OdioyBTY c=1 sm=1 tr=0 ts=69e89adb cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=TPV1Kb3VoT3DjyXF_ZUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: Rg9bhk-UDNV5AH4WYBtFly-saKOzBaNU
X-Proofpoint-GUID: Rg9bhk-UDNV5AH4WYBtFly-saKOzBaNU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA5MyBTYWx0ZWRfX8wXbit5k7U4U
 iJsFMgdwUEa9eSUB5lIqNs018MH4k6diXnjerQ7HpeznNCJmSSFcjYwyVNizv2CxB2ZQfh8JeBf
 y/TXZHOfrwg+0M6t56lfC7QoRFCdD02nyi+dbKnJ+mfjfkHl/QvBH5EcKTHC8FiBxb2z0ee0W5X
 e8N+dJWVuVQlw9kDN8eIwk+BGvHTMKL8sDXUiLhEC5nI38F+TvxcQ41V+mIwjpLSkMHBslGD+zW
 YUljqxp/V/bWPZVMzd2hqCedZmAfxlJqOIJrEmigAFTAmPoZMRbWRiciKw+6FpBnZkir4xNZHGh
 cO1LOzudHPKkElO2PXiy3N1fwNyDwl7Iw5WI41Jnw7Wsh6SXM6mP4l/qNnz8KYWa8x8eJW08ETn
 LTeIGcIJCb4//592wYnm7UnFeIUamH1b6dVsVXze30xPeL4qovzCy483kIdXW+DOCASvpRwE9c1
 UBw+Z50ncL/sTNJc75w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 phishscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604220093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_025435_839943_FA94F705 
X-CRM114-Status: GOOD (  13.07  )
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

T24gNC8yMC8yNiA0OjE4IFBNLCBNYWhhZGV2YW4gUCB3cm90ZToKPiAKPiAKPiBPbiA0LzE5LzIw
MjYgNjo0OCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24gU3VuLCAxOSBBcHIgMjAy
NiBhdCAxMzoxNiwgTWFoYWRldmFuIFAgPG1haGFkZXZhbi5wQG9zcy5xdWFsY29tbS5jb20+IHdy
b3RlOgo+Pj4KPj4+IFRoZSBleGlzdGluZyBEUCBQSFkgUExMIGFuZCBBVVggY29uZmlndXJhdGlv
biBmb3IgdGhlIEdseW11ciBwbGF0Zm9ybQo+Pj4gZG9lcyBub3QgZnVsbHkgZm9sbG93IHRoZSBI
YXJkd2FyZSBQcm9ncmFtbWluZyBHdWlkZSByZXF1aXJlbWVudHMgZm9yCj4+PiBEUCBvdmVyIFR5
cGUtQywgd2hpY2ggcmVzdWx0cyBpbiBEUCBsaW5rIGJyaW5nLXVwIGZhaWx1cmVzLgo+Pj4KPj4+
IFVwZGF0ZSB0aGUgRFAgUEhZIHByb2dyYW1taW5nIHNlcXVlbmNlIGFuZCBQTEwtcmVsYXRlZCBy
ZWdpc3Rlcgo+Pj4gc2V0dGluZ3MgdG8gYWxpZ24gd2l0aCB0aGUgbGF0ZXN0IEhQRyByZWNvbW1l
bmRhdGlvbnMuIFdpdGggdGhpcwo+Pj4gY2hhbmdlLCBEUCBsaW5rIHRyYWluaW5nIGNvbXBsZXRl
cyBzdWNjZXNzZnVsbHkgb24gR2x5bXVyLWJhc2VkCj4+PiBwbGF0Zm9ybXMuCj4+Pgo+Pj4gRml4
ZXM6IGQxMDczNmRiOThkMiAoInBoeTogcXVhbGNvbW06IHFtcC1jb21ibzogQWRkIERQIG9mZnNl
dHMgYW5kIHNldHRpbmdzIGZvciBHbHltdXIgcGxhdGZvcm1zIikKPj4+IFNpZ25lZC1vZmYtYnk6
IFJpdGVzaCBLdW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5jb20+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBNYWhhZGV2YW4gUCA8bWFoYWRldmFuLnBAb3NzLnF1YWxjb21tLmNvbT4KPj4+IC0t
LQoKWy4uLl0KCj4+PiArwqDCoMKgwqDCoMKgIHdyaXRlbCh2YWwsIHFtcC0+ZHBfZHBfcGh5ICsg
UVNFUkRFU19EUF9QSFlfUERfQ1RMKTsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqAgd3JpdGVsKDB4
NWMsIHFtcC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfTU9ERSk7Cj4+Cj4+IEFyZSB5b3Ug
c2F5aW5nIHRoYXQgd2UgZG9uJ3QgbmVlZCB0byB3cml0ZSAweDRjIGhlcmUgaW4gY2FzZSBvZiB0
aGUKPj4gcmV2ZXJzZSBtb2RlPyBXYXMgdGhhdCBjaGFuZ2VkIGFuZCB3aHk/Cj4gWWVzIGZvciBn
bHltdXIgaXQgaXMgY2hhbmdlZAo+IERQMl9QSFlfRFBfUEhZX1BEX0NUTAo+IE5vcm1hbCBPcmll
bnRhdGlvbjogMHg3RCBmb3IgNGxhbmU7IDB4NzUgZm9yIDFMYW5lIG9yIDJMYW5uZQo+IEZsaXAg
T3JpZW50YXRpb246IDB4N0QgZm9yIDRMYW5lOyAweDZEIGZvciAxTGFuZSBvciAyTGFuZQoKCkRt
aXRyeSBhc2tlZCBhYm91dCB0aGUgb3RoZXIgcmVnaXN0ZXIgLSBEUF9QSFlfTU9ERS4KCkkgY2hl
Y2tlZCB0aGUgcmVnIGRlc2NyaXB0aW9uLCBhbmQgYXQgbGVhc3QgZm9yIEdseW11ciwgQklUKDUp
Cih0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIDB4NGMgYW5kIDB4NWMpIHNheXMgInRha2UgYml0IDQg
aW50bwpjb25zaWRlcmF0aW9uLCBvdGhlcndpc2UgbGV0IHRoZSBIVyBkZWNpZGUiLiBJIHdvbmRl
ciBpZiB3ZSBuZWVkCnRvIHNldCBpdCBhdCBhbGwsIGZvciBhbnkgdGFyZ2V0LgoKS29ucmFkCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
