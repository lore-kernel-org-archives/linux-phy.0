Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F493606A321
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 08:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G7MaVacT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WXmEPNmz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=EIlhomfH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9es/bntCgTcGXWegEaoBsp38lJ5ByhuB6ch7MCb5tL4=; b=G7MaVacTyOosCw
	AJfjGCYrWAOoQbhz+AqRuJ/Ezrqic/2zkKFp0w+QSrRG7e6UR/1fjA1jI2+kIujmRkG2YtW1/BJX/
	qqDtDPofTZTaBUCbvAoEnSB7RvZkDRVDpFG+YuPbCQc+UjNzGgKrP3Av2Df1WONV6qUlOUHYaNe21
	kcMWf3EYTWpRDmq6QfcalFrN/oX9Qg5TqHutGYDx+KOh0LSrBLGcFAZHTlqZtbXbcRQvt6BV7w7JB
	/Neg5AW6viuBwG3Mpboc2u0fRGUcdFKtFB5btJMQ9R6cB9SnQxyKfgVv76Tw9SuPX3ixH+8cfTlXy
	m3cTAuJ8rj7m9lQTWY9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJo9W-0000000Dea9-33Mq;
	Thu, 22 Oct 2026 08:27:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJo9U-0000000DeZk-2F19
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 08:27:58 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69M709iu1996049
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 08:27:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	76imXuIV53mjFS0dpPWGq5NvdTYHllEC/UpDn8X1Lr0=; b=WXmEPNmz4Y4V/pET
	eCtixtBNYIld7rzRsSR+zMTd+ar+kv+KzSoSg+gYGfU8h5tSFasb7MJKclLvOYdT
	uR6dwmDnuKWfe14nLOaXFPNo3lbPhuGIk6wLIPdDp+jNnYur0Rzk5DDFZIsDIHSJ
	TLHjesm01JodFeJEaSMXVxtO/uLTVxfHOZ9qOo7eVKwwlblzJO3XR8CIZlTdK+ku
	HLYc2IgxXky0z3KkNK5gU4PEn9asYzs6kMIDgvHb/jJpcYimy01AJAkslVv04BPx
	glmPCeWl9+HMbhjjzz31cgYUTwX8TiHgOcocLcKYevwpwjqHDCK4grDz/UGmIrvg
	MiznZQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93bsdxp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 08:27:55 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f1440e081so37820785a.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 01:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792657675; x=1793262475; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=76imXuIV53mjFS0dpPWGq5NvdTYHllEC/UpDn8X1Lr0=;
        b=EIlhomfHGEncTbWQdTiL+8hNwabNQjiv6wgmiF4UkLD4yG4XTADAUj30r5+YiFxR0E
         MCxHVKKtyliiFExGPOrkLUcm0VAOKq3qqgYZEHQPu9B3cfZxW0cPU6JhIYoYCug2r3fS
         Uu1YG4oY7lzCjBLQvcov+BwsEow4ZPvldbbNDZCDN7oc6z/xPBOKXCgBWKhIHyYi1nGK
         Po5ooduvZu5L2EE6oJsPZP6D+NJP2869A/1edDwH9C/pPjsAifRsFQAq3Op0LIjpMRZ2
         c1T6Wg97BlEN0Eqt/ezwAsgcYj4/sFZjjrgGR+RwOzuH3LZpPeFsB/6MNHG3HiQtGE3T
         kRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792657675; x=1793262475;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=76imXuIV53mjFS0dpPWGq5NvdTYHllEC/UpDn8X1Lr0=;
        b=yev4OPkYSWhVOqR/1vSY6E7ELIA6f5DEf5uLw+/Tk2w6YYcZ4XCbK6hZnzA5tNjusd
         ngDUzYieO8zjk1M/4DXrXPeIFstqUiURmsOnh69bsLS1xELfrLPrzvO4w4mK3AbDMCGo
         Ltu22rXXHyJr1hvRTd5XXm8agFXwsNJns5JGSmTFEH6uiC/0RzZ1jF7ODF8zQ9RpeADR
         Cq0hsGJE3JqQTntVafx9FGKNy6lJQ/HTEXMi99u6RYW/caDm+ivWBGAmvKwFtJiRcnio
         JWB5W3+Nzn6pDW6ExlGF1tfS6tNuaDyQGmAYpZdr5r8auP5HC5wGRopKGZtg026TFo3R
         LYAQ==
X-Forwarded-Encrypted: i=1; AKwUvBzqxeTGZvD8zS75hdL2ldzP/rMcRzi8hKQv+/opSf8ZeeKU8uQT2xc4/YMeiiuugrhvsEBUcd88LfQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYJb8bYU5JrFUr5HzFoIfC1fvjucePXyKqOZkENCJDavONPpQYdS
	G6lqiDAghf/bvuQxPPJv6cqcmJesI3WBCcBjtTPLuYBDdh4cUfWWypWdo9Q0LIeTKgWTP6LDa5O
	tX79lj9ClExab+Jbm/sEZZWUfWhFucxnxBtH/Vz+c0UNETjQViVmh+Rv8ot+Te6pZcZat
X-Gm-Gg: AYBFou20HH/nOVqkW6Z+ICrbart2lxt2yv2ZQKErxfnduBMvuzuc3WRnr/VB3/3+bx3
	T2PZ9A7eIbLcYBuKTuJH0n6Oa+yohFIMMXDI8IMoMQ/B86iORXKYnEHDUZlaOxDxkq8K7TD3jQ6
	/5JjVSHly4Kot3FopSxZNAhDiuuqlJvVkKwfZkr0JYf0n5HZE4/K+p2cRM3gmQeIPDYl2gCg65S
	4M/IcZ8OrD+tVVa9FOa7vo0PPMbbrDt8I8cjqLWV25asqaStp3RHE2EpM8kEa4i3zOgo3/z3k0a
	8xMi2kVaGL0v68TRF+OHTLdQ8CJj5Wiafz9nYN5SiKbVLeF1WFHxB8/5EsqjY1P38eGjsUISYfc
	w8/f15Dq/IxpJsNHxIXRKlg==
X-Received: by 2002:a05:620a:6493:b0:939:9ef4:79eb with SMTP id af79cd13be357-93f57ff1ff9mr956235785a.6.1792657674928;
        Thu, 22 Oct 2026 01:27:54 -0700 (PDT)
X-Received: by 2002:a05:620a:6493:b0:939:9ef4:79eb with SMTP id af79cd13be357-93f57ff1ff9mr956233285a.6.1792657674506;
        Thu, 22 Oct 2026 01:27:54 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c468a59d641sm81530766b.60.2026.10.22.01.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 01:27:53 -0700 (PDT)
Message-ID: <1ec9207e-0eb8-481b-8cad-ee6cbb31bee8@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 10:27:51 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: HP OmniBook X 16 (X2 Elite, Mahua): DT bring-up report and
 questions
To: Jeff Roach <jeff.roach0@gmail.com>, linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>, lumag@kernel.org,
        vkoul@kernel.org, neil.armstrong@linaro.org,
        linux-phy@lists.infradead.org
References: <CAAnD8Rb4ZZrHFWMJayabioB_8bOHh1mqZ5LCXZz0jTNGMA7UZQ@mail.gmail.com>
 <CAAnD8RaicCmi2vk_Mna-Mfct4Ebh5dFVnKUkvVSiX6kpTB_imw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAAnD8RaicCmi2vk_Mna-Mfct4Ebh5dFVnKUkvVSiX6kpTB_imw@mail.gmail.com>
X-Proofpoint-GUID: fqel0Nm6isrlfaBSZy0u1ejeq8KbMbb2
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDAzMyBTYWx0ZWRfX7RnOCVwHTw++
 Bc1koFh/UdMBFb+dvlHAyDa+72qxEK8WMQIM9BuZQuJ2Bp90Pq6gstar0SLLrHer76WdpeiTfII
 Ti4yYeqktWN7tCJAbIks7FbOATySbzQ=
X-Authority-Analysis: v=2.4 cv=F4fC5ahN c=1 sm=1 tr=0 ts=6ad9c90b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=rDIKrhz2CLtF2elHLeAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: fqel0Nm6isrlfaBSZy0u1ejeq8KbMbb2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDAzMyBTYWx0ZWRfX7azXhxCA6ECB
 Z4AkmWA0qm1PGLhybkodGTvmMJjLRraJvtd0nFDiFoipCK+fD/lz5y4LLRq0k9w4/m/W/dmwe2r
 tvhU52bOGOzf5gYB9unYPfQrB31lePV+8xs/SXZNbu9e2aa+ow66SiRimDvVHEpKJK/6kd62+Id
 0OOKYfBWlMzBlMpUCuqPtz0O+131QgSCsA7fbHDTR27MQUTp3E0x/aGTLEZ2Q4QeHTFXiH+D5YP
 j2FZCUHGShked2kJi0w0LmOx5HRexibIcEzURubViZx5woxKY7pPpr6XXwpWB57QRfG2SE6uB9/
 VFLJbEFNyY3qL/QGD137On9VcYnRgUDcna/2LgwgU1EZHeo1AaU8+UDiBhHNpwHJgx0+LMTzwCn
 m5WUFlyNRBe3b1ABSvQrJf/zR5W6+6uikkBbcUChIaJjww/oXlMjNmsM7jrd/Upqy58Vbi6bsKx
 Q8LG6MZdpoBXANNWdzA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_012756_717902_0C16E691 
X-CRM114-Status: GOOD (  10.64  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjIvMjYgMjo0NyBBTSwgSmVmZiBSb2FjaCB3cm90ZToKPiBPbiBXZWQsIE9jdCAyMSwg
MjAyNiBhdCA1OjM04oCvUE0gSmVmZiBSb2FjaCA8amVmZi5yb2FjaDBAZ21haWwuY29tPiB3cm90
ZToKPj4KPj4gSGkgYWxsLAo+Pgo+PiBJIGhhdmUgYSBkZXZpY2UgdHJlZSBmb3IgdGhlIEhQIE9t
bmlCb29rIFggTGFwdG9wIDE2LWNwMXh4eCAoYm9hcmQKPj4gOEY0NiwgU25hcGRyYWdvbiBYMiBF
bGl0ZSAxMi1jb3JlLCAicWNvbSxtYWh1YSIpIHRoYXQgYm9vdHMgYW5kIHJ1bnMgYQo+IAo+IEhp
IGFsbCwKPiAKPiBBIGZvbGxvdy11cCB3aXRoIG9uZSBuZXcgcmVzdWx0OiBEaXNwbGF5UG9ydCBh
bHQgbW9kZSBvbiB0aGUgVVNCLUMKPiBwb3J0cywgYW5kIHdoYXQgbG9va3MgbGlrZSBhIHdyb25n
IGNsb2NrIGRpdmlkZXIgaW4gdGhlIEdseW11ciBjb21ibwo+IFBIWSBkcml2ZXIuCgpDYW4geW91
IGdpdmUgdGhpcyBzZXJpZXMgYSBzaG90PwoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
YXJtLW1zbS8yMDI2MTAwMS1nbHltdXItcGh5LXYzLXY1LTAtMzg0OGMyNjE1ZDVhQG9zcy5xdWFs
Y29tbS5jb20vCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
