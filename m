Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A68606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 14:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=o2Pe8OnF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=I/B4aZSU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=NCcpQVX/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5wK3YOpxJrUpU6zKrF6zGtPG9V8tdUCEGAUviY8mJzI=; b=o2Pe8OnF20vvY+pLOnN8797jWW
	+AzMdGQ/8eJRtI6qTT0RXBqVD2s0I9S9eqUAPIDD0XgkgIgJuX2ouSUMSWxKXigrYUDMSaTLvS1+l
	lEckcYjazaLnpwpDcyML8mYx6rBUEnitbX5EzMRcEYJjm0vGNnUbQBoiSTXmlJZA5Kc55TwjbwXTm
	IYYoHsWUZHqGndlVQcGrgYhZBLkMsCcVeZcn7dCz6VNuBLtAADbZcDppL2j68CRrfr5rgCz4yog3l
	Lb3Am/W696mOnBN2Ff0tUCFH2BqiE5CiLbf69hqKBQURhkyZlC1n2Zxq2NJWMKklUhb4zsxtcuQiv
	HI0iVQwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnEi-0000000BpFT-2hPL;
	Fri, 30 Oct 2026 14:05:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnEd-0000000BpF3-2vfk
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 14:05:38 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UDnWYa3431759
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 14:05:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rbV34oi9cJeVMXAr54dz5VJbd/j+Zn5ocM7OggS00LE=; b=I/B4aZSUbex+VvzH
	UGsrZ/7W+JVAfwK8lQqdrmfv4UkM2BuKAZKFE9Sm/HVI9Hi+D9fmMoJtXnah+iIY
	Up3vBSjW7ogvrz+TMhbMZNVxup2cRbceEQxdkP2GRUCjfrD44Ewx07Q/9HC5YjV1
	0iQfqKLuNrj/ec4SQoiTraQWtUci4WUAyybJqwQDm9p7B+4tXXdKfG7tIJ8qt38k
	Ht5gd5X5tsTeuRaO+vcZpAYUOnecBG2VaFwK9QVyO4nfKIQY68/Os+vGiAOfbeGR
	cy4zyS4CAwiQtVoM9a9kMOWKHqoB1jMGpIdJ4ZOjf0NytbiJJn8XaO53ZochKWiZ
	dQ4zgg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qkdu4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 14:05:32 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cdaf3f2a58aso1182420a12.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 07:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793369132; x=1793973932; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rbV34oi9cJeVMXAr54dz5VJbd/j+Zn5ocM7OggS00LE=;
        b=NCcpQVX/oky5+R4s8rH50BzeY8QyClyw8Ok1jgsInXz6Ejir05wSjyLRiqvpIvC3qD
         yQGmz9FSdPpE1h40IvQajOttEhldLunN/2QlkEPP/2e4B6bgmN8pndE9PIRubjCKU2JU
         v/ndk9r0R8V7KdloduxeMRTzgoo5FX1mw1IW/OSnIegHpLJbKnulXAexM7VOrlPPr1m0
         8Q/fJuzDrTwlz1J8nA1NbycQbdBOCZ349ayv8zkWxVAt8I9cpNYVHaR7FLC8Lqklf+pr
         uRred3JHPX4pZ6+MRQ+0CayeUS2+CUt+cJwPYmAKagVOXntPDTpwAdEG14QBp3XM43L9
         YO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793369132; x=1793973932;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rbV34oi9cJeVMXAr54dz5VJbd/j+Zn5ocM7OggS00LE=;
        b=m4b2zCIMB7atzpiH+UoHv4uQGXx3RzXCItFREcQerD8QHTmHaQwd2SLK8+KcB38p57
         XoN+tEBZZmDzfSVGnrkmbc0NQ8SkOgQejkxOADvfg2aAZCoIATYtkuaKe0b3x+d21zBr
         ZZ/GvZ1DrUUOC55M0jUoqmGThD/LcqhcZAjEMRnzHBCJWSUdoW5gwpoDinAWWqTy3uAL
         RV5gd5sCfyCc2uyTqGGfH93NmVGjFngTehXjBvuZARIOtT+j/3r4wcsoOfPWAXrL7Hqs
         URKULRik9XUvgykOtmjhG3GYml/acKmo6GmP1HWnT8VRxnyb/RfVPVPQsxKGxYNS8H4W
         xo+g==
X-Forwarded-Encrypted: i=1; AKwUvBzrQv/rR2+czzsNBp+Ew+887YdyxN54Szi6O+d9okREzd31+ZRQkN+K9hk3BpxTl1OQVLDKffuJPCQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYI4/RxJ7bwnWeQotdRlRAM5BHZgOiPohd3SFcvI/eQGbctrVge2
	Fu6bd7vSB0R2KroR/YDNjgXi9EphIwX6Lu9V57XD3hQ8qCmGlIlN+AUt9PuHqaWGJbPEslgdJOs
	QndrkQANeVknE9d1Mgu4n7nTR1MPnHGjmt3nYUm0G4f1KJIuMngDzWEy/A0fkrrtXFpQq
X-Gm-Gg: AYBFou1ZP527YTM9bgGLsXarnhkOWD9nAhkIX0uBj6KOy8pt4YpVn9fLRDIfvmH3EAV
	aOwQyQiFlc5+WmINYRpUJg09W1l4Zh0UX9CoYQUroLl5AOU/QMJtfd0yblFru6xP++0VhF+WU2X
	XTx5XICvGIoKmEaGATiCVYF5zIIuHQvzHTVs/Gc2k8PYLRDHL52aHxmKs71nwT/iwCxCqrwxYZ1
	iGq9ByrtG9R1WfglJBbp2k5dlq7/T8hXzOHnVvGwH0jr5VrT38YzfSu76UyphdADjxeQFeGBZE/
	KKvgcE3wYfmR16BJ3/3h2pEOBD/FxsDQ2uGpOBnYNIHxXwjCABg+2OrTZE2F/8AKoRcQwR75Ixp
	YIu2264sJQC5DskWzciapjq1d74fHnGnSZxDbKjqYYUW1O6L56l6N5ZGbi2vg9NleFHfLJICY+5
	NG0JUq2EkKQU0rcWFttNmku7KNPpMbHJL9NcOD
X-Received: by 2002:a17:90a:dfc7:b0:3ac:6e91:3f1f with SMTP id 98e67ed59e1d1-3ae6f00cccemr3780128a91.37.1793369132058;
        Fri, 30 Oct 2026 07:05:32 -0700 (PDT)
X-Received: by 2002:a17:90a:dfc7:b0:3ac:6e91:3f1f with SMTP id 98e67ed59e1d1-3ae6f00cccemr3780080a91.37.1793369131298;
        Fri, 30 Oct 2026 07:05:31 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.160.247])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdb096fbfa9sm739707a12.17.2026.10.30.07.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 07:05:28 -0700 (PDT)
Message-ID: <10c00e3b-bdbc-447b-b8e5-23642faaa4d2@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 22:05:18 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] dt-bindings: media: Add CAMSS device for Hawi and
 Maili
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <20261030-hawi-maili-camss-v3-3-9742bca8cef2@oss.qualcomm.com>
 <CAFEp6-2vN5UEbSwDH91eUzP_w7DHd3WtuLnui-_k7az2oQnoHw@mail.gmail.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <CAFEp6-2vN5UEbSwDH91eUzP_w7DHd3WtuLnui-_k7az2oQnoHw@mail.gmail.com>
X-Proofpoint-GUID: p1ZW7ngWAd4AmrKFFCDEopcK0VKqjP53
X-Authority-Analysis: v=2.4 cv=KLzPn1Fo c=1 sm=1 tr=0 ts=6ae4a42c cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=6d0oVIyUxUng7TJeo7N4IA==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=tb7J9fPpy6OZh8FWujQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1NiBTYWx0ZWRfX0k6AQO3KTqlK
 l4ncMpoqwqd7VehCzHkPRKk6EaN39lsfpLyCg+PYGtPsMq6vITcV7wLo4JIj4V2boHiGoJSy1zP
 7iV6iqbQWW3G8n9lHb3kAa8NAd2ByBRqTmi7rxMjcO1QUrkYTejoFfhK/9aqupo92An+g9cqFOA
 J9+wlOZTRE3gw6JbgwDNZuwI5TLcWIxHUWMcshNy2fNPjIQ6aRgeNqi9hKtuKCtM3Q62f4mbF0c
 iFJEWd934EwRwD7fR7hmdsX4+PDRxsGY5ww4nrBY4TTfZ3/MaV1tTe12ZJVbNNjRCejmxLpCNNq
 e8CmBJcGhhaaZ3tzKPS+Jqx+bmWC8f7tvPCtkilvZWRtQjE9LYfkz2RGxI2P91sBaVhD5DpqU66
 mJzkxxmP8btIC+KaBD9w8K+bfaw3kUafUqf7dEH0UeVk/gKM5eQUmJXyIhxWW77+H6s+Rsaqu58
 qajtEIuf9tyMDbSVR6w==
X-Proofpoint-ORIG-GUID: p1ZW7ngWAd4AmrKFFCDEopcK0VKqjP53
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1NiBTYWx0ZWRfXyCAjqoxWvz9B
 6sILHGsgavPsPwfKHWU12oJ7d9Q6/H3WyeFUGbGwxLgHrdKqH5uhf9i1RxFH4oYnmKC84jCRm/9
 YCPE08gY190AHXFdJEW7eRAmcOLymG8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 spamscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610300056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_070535_739580_899304FC 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMzAvMjAyNiA5OjM4IFBNLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gT24gRnJpLCBPY3Qg
MzAsIDIwMjYgYXQgMTo0M+KAr1BNIE5paGFsIEt1bWFyIEd1cHRhCj4gPG5paGFsLmd1cHRhQG9z
cy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Pgo+PiBGcm9tOiBIYW5neGlhbmcgTWEgPGhhbmd4aWFu
Zy5tYUBvc3MucXVhbGNvbW0uY29tPgo+Pgo+PiBBZGQgYmluZGluZ3MgZm9yIENhbWVyYSBTdWJz
eXN0ZW0gKENBTVNTKSBvbiB0aGUgUXVhbGNvbW0gSGF3aSBwbGF0Zm9ybS4KPj4KPj4gVGhlIEhh
d2kgcGxhdGZvcm0gcHJvdmlkZXM6Cj4+IC0gNiB4IENTSVBIWSAoQ1NJIFBoeXNpY2FsIExheWVy
KQo+PiAtIDMgeCBUUEcgKFRlc3QgUGF0dGVybiBHZW5lcmF0b3IpCj4+IC0gMyB4IENTSUQgKENT
SSBEZWNvZGVyKQo+PiAtIDIgeCBDU0lEIExpdGUKPj4gLSAzIHggVkZFIChWaWRlbyBGcm9udCBF
bmQpLCA1IFJESSBwZXIgVkZFCj4+IC0gMiB4IFZGRSBMaXRlLCA0IFJESSBwZXIgVkZFIExpdGUK
Pj4KPj4gU2lnbmVkLW9mZi1ieTogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxj
b21tLmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBOaWhhbCBLdW1hciBHdXB0YSA8bmloYWwuZ3Vw
dGFAb3NzLnF1YWxjb21tLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTmloYWwgS3VtYXIgR3VwdGEg
PG5paGFsLmd1cHRhQG9zcy5xdWFsY29tbS5jb20+CgpbLi4uXQoKPj4gK2V4YW1wbGVzOgo+PiAr
ICAtIHwKPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcWNvbSxoYXdpLWdjYy5o
Pgo+PiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLGhhd2ktY2FtY2MuaD4K
Pj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJjb25uZWN0L3Fjb20saWNjLmg+Cj4+
ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVyY29ubmVjdC9xY29tLGhhd2ktcnBtaC5o
Pgo+PiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0t
Z2ljLmg+Cj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3Fjb20scnBtaHBkLmg+
Cj4+ICsKPj4gKyAgICBzb2Mgewo+PiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4g
KyAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+ICsKPj4gKyAgICAgICAgaXNwQDkyNTMwMDAg
ewo+IAo+IEFkZHJlc3Mgc2hvdWxkIG1hdGNoIHlvdXIgZmlyc3QgcmVnIGFkZHIuCj4gCgpBY2ss
IHRoYW5rcy4gTWlzc2VkIHVwZGF0aW5nIHRoZSBiaW5kaW5nIGFjY29yZGluZ2x5LiBXaWxsIGZp
eCBpdCBpbiB0aGUgCm5leHQgcmV2aXNpb24uCgotLS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
