Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6419FEA3F38
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 10:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRk6j4lrwqnEVP0e/oC/CFJGqbY8WXo3USKgkgbO4hA=; b=ckn7m0ELBWAKB2
	QRU26u4Amj3nFNWE4+kRKZ/90yATmgl9Z0FBSdPzW9BfmwR5z+hTrG722Fown2T0jTYzgpEvzXJHD
	qaujKr0kSk5LrfAyZ6q0XvkER6b2nN4tFHCPUJL1Mq0azZipAQ5J9fRKhiQ5pjcHkEllTTg21lsF0
	r8n/yHbnKw53fpeSQsx4K2KLrlBtZJoSqgYivo9Eryb83xgih2O+KRs7T9STMVpOxaAUTFywruuUt
	DE8PaTQib+k9D60/Kee9R261rl4JUXA86Eqjjdh5rPIYBrVocZ/AueXwOB9cT+7kRPbNHESHUibTk
	nrE82u7mAk/hnCaqDNDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpko1-0000000GpJk-3Pdt;
	Tue, 10 Feb 2026 10:17:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkny-0000000GpJM-4A2m
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 10:17:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A6mIqP4003907
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:17:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OaHPDPukpp+Z9s23h/0zCMupcD9EAbUV6Tmo071H7ZE=; b=K9S+j2TbCvlTVQx7
	YXVWnye+7jdZPXwFUxotmPFuk0qCxkmeZBGi7624CLZYY+P32ADGvPIFP7YjNapp
	CTywNDpgTCL7cZmrQgttsC7s0yFtcaKo7nAT+6FbKEIAqh0+QDgPcOC1dch1np+i
	/fLpdB7V/593HG0p4jJ67muP8It0POj0No16KgbUDAfUaHlr3HLFcfvFewUPLnpf
	Y6xW8r++zJnyiDIhv7bqCUS45p5Dpa5WPFzKIS5jTF2IvPsOrPnIiIGn3LdlTYO/
	S88tAfpCbc+WViAJJ3r4lb7zKL0NnduaFs7w/3zASH+O51qZaqbMz2lW9d0HdJBx
	pZ2/nw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7r23j5a4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:17:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7a98ba326so65198755ad.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 02:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770718633; x=1771323433; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OaHPDPukpp+Z9s23h/0zCMupcD9EAbUV6Tmo071H7ZE=;
        b=Sf2+1ThfsaEnFY3yorcWMqkOYKneNizo1xbHCpLDEfFbM5LM9bxsA8R1xrpFnYpQUN
         OOo8yix/23hjcIizzoaMB1b4y+6DrM8FTG6J95X1+xM0GG89/l0Fiq+BKCu/DKArGIej
         gEnAOuEm57eVlcr3QrquFri4pjIKosJ4P56be6AKxNNkDLzRJMk1n4b+lzNMzyHeK6MD
         BNo4FNhyUz1/pFm9f8vdkdvNDIFBLVYKsrEi6Z79crfgQpcPSYk180BG09V0k+pp6ak4
         3L1J5l4I6cC+zG8Kc/09cEEOYidScJbeAqxpMMsLipDB3Bjj+ljaPX8+LJ9FWd6oVFzS
         smHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718633; x=1771323433;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OaHPDPukpp+Z9s23h/0zCMupcD9EAbUV6Tmo071H7ZE=;
        b=vuhR18rQ3fNCFgeNxltBnZVwFTyt2rJ9ur31geiXVk8NtlNEyX0paPA959KGVkrIFy
         GwDIRQXvtMI2XYgc+e1VKJoc7m3EjU112T5x9HwwAPRcy22/qIaHRd2pl5O3cDSJM+6Z
         c6g6QVKF6q5DtnqU3rNPGUqZH+XqmbH0WDEmYueJ84cf1SrDNIOV1GSSZhzOrrddI19y
         2/Ak57B4QZ/N1I5HtUmm4HBOVq6EoucPWMOCZpXBiTg0YQRoJFRMAX76WcimTRPedXZO
         WsSjF2RZUuf59n7ACnLvh3ew7WsywBUBvb3WmlJDtkUL8uuOLxOHgnZdOfvq9EqDPcfQ
         iD7w==
X-Forwarded-Encrypted: i=1; AJvYcCWTd1w128GHux5/tBhXhF8icO6wbHiW24s3G1B4mAWzc4E+BzVbEedfWlSp7Fqk+FGOeHMxe93Xcc0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPVjJuJb/wi79tWRFLXwM8fAj1p9rCtjLX5cx/tw0MInOXhFyr
	6VtN8uCzYoAkhswMJjdwoOXe+YfIxcSsjIg3epZ9pb6bELjprJnO79m6xGAlwJGh84qv6Dgnx+8
	U9fMtg/zVsyiji/ElQycFy6aFCicXqD09qx70o5Ii/dScYcYbmFi+PmjUwVvTTvfzmvWf
X-Gm-Gg: AZuq6aJSa9XHSadtDmDAjQP5FQbsjQK8e+NXo1Y391fyHPAtJ95CbmpydFAy7+wfcNf
	JgMCHD3tSoef8wDYJvAVt5BwMibkzka2oG1mKJ+uL3Ty8Nao2YRiQraomudzli7OCU8WU+Yec6M
	wB0TnbCf1GBnbyHwqVnB6k9meYhtvNLld/x8DuwpxEr+DLgEXRGCr7OqkCgJkAVKZvcnfyDRY/T
	c/VJHIGogkJkHQFlUgJxVj+n9IfBXzxvfTzy0qlaW3fFwW6hNJ6kdYGLxxEZfmT7VAgeoDeA0TH
	mv0Xk9F1T6IIXTz1n/iRrtcshUas6pES9IanSQ8FJhOYEB4B9YSGfYBMI/XFPGL7cygUp18FY25
	5M6RNM2zGN3YgXeya9X4vvB0L2etsNMQSPflOOv6U9s1PWQObgFjuBCvN6qzNmxZH7FwxHEMO6Z
	XYIHjRqJ5zASf8U5w=
X-Received: by 2002:a17:903:2f45:b0:2a9:327f:ac57 with SMTP id d9443c01a7336-2ab0fe973d4mr17049685ad.28.1770718632752;
        Tue, 10 Feb 2026 02:17:12 -0800 (PST)
X-Received: by 2002:a17:903:2f45:b0:2a9:327f:ac57 with SMTP id d9443c01a7336-2ab0fe973d4mr17049475ad.28.1770718632266;
        Tue, 10 Feb 2026 02:17:12 -0800 (PST)
Received: from [10.133.33.6] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aa3ec42e2asm138713045ad.53.2026.02.10.02.17.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 02:17:11 -0800 (PST)
Message-ID: <23e007dc-4145-4260-8810-1e98e533b1b5@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 18:17:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo PHY
 configuration values
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <57bwrceuqejzliljhrzj5wfumtr2q3dslgmjj3vd7masafi4k2@dskfnosor553>
 <23930db0-730e-4f99-a661-262b15f1a8ac@oss.qualcomm.com>
 <w3vmcgeh5bw7lfuyv7ziiw3oxpxtjyqmojddamjo5alz4nv7ld@ytgjwdhecfua>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <w3vmcgeh5bw7lfuyv7ziiw3oxpxtjyqmojddamjo5alz4nv7ld@ytgjwdhecfua>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4NSBTYWx0ZWRfX1W3P8VKCv2yj
 j/MUFxj4mYGsmNcBGnY+g4+DycssHORLde+u4LnUsLs8yGE9KR9xuknRxUGvhM1KokWI8iuqQIA
 pwPlrzgV3wqc2Bsuv0UVASba3EPjmhy8JhvplT/S1+y6UDQtRiRdMGEpR9Yh1/cViteZtITVOBa
 0lvEC5YLoZnMOvCeIO9Lr/lb5rEtcHq5kG46vaMG3ov+TDXfvN3j4HX0VwLhBX+nFSL0sfZQNfN
 TI/stKxrWz/vKv1f88JORacvKFEGTPYMfWP1iceQzuR3vQ6g0Vmvh/A6Mkes3SxLNwooEPZTytX
 MC8yjTOk6hPRymSRkoF2d3MWPNPo/GXhX00KadijdodXFV2HJRdOtBAoCLh+/W+NY6dABfjDyNq
 QqAJRaloOYMvMIslpWxAijzXtKELby2y37Z0ya2h9lqGGNmqus6d+NcV9e+IxdA1mLv3elWFzU0
 mrC6BJV3YZyQVA2ngdg==
X-Authority-Analysis: v=2.4 cv=MLRtWcZl c=1 sm=1 tr=0 ts=698b05a9 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=NlieldvSFmUDVkRJfYoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: ZOwHEDGhJAuup8pq4yPmzsz_TUG57-Kz
X-Proofpoint-GUID: ZOwHEDGhJAuup8pq4yPmzsz_TUG57-Kz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_021715_036059_8577A5DC 
X-CRM114-Status: GOOD (  20.79  )
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

CgpPbiAyLzkvMjAyNiA4OjQ3IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
RmViIDA5LCAyMDI2IGF0IDA1OjUyOjIyUE0gKzA4MDAsIFlvbmd4aW5nIE1vdSB3cm90ZToKPj4K
Pj4KPj4gT24gMi83LzIwMjYgNjoyMiBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9u
IFRodSwgRmViIDA1LCAyMDI2IGF0IDA1OjIwOjUzUE0gKzA4MDAsIFlvbmd4aW5nIE1vdSB3cm90
ZToKPj4+PiBBY2NvcmRpbmcgdG8gdGhlIGN1cnJlbnQgSFBHIHNldHRpbmdzLCBtb3N0IGVEUC9E
UCBjb21ibyBQSFlzIGNhbiByZXVzZSB0aGUKPj4+PiBzYW1lIGNvbmZpZ3VyYXRpb24gdmFsdWVz
Lgo+Pj4+IERQIG1vZGXvvJoKPj4+PiAJLXNhODc3NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAw
Cj4+Pj4gCS1nbHltdXIKPj4+PiBlRFAgbW9kZShsb3cgdmRpZmYpOgo+Pj4+IAktZ2x5bXVyL3Nh
ODc3NXAvc2M4MjgweHAveDFlODAxMDAKPj4+PiAJLXNjNzI4MAo+Pj4+IFRoZSBjdXJyZW50IGRy
aXZlciBzdGlsbCBrZWVwcyBtdWx0aXBsZSB2ZXJzaW9ucyBvZiB0aGVzZSB0YWJsZXMgYW5kCj4+
Pj4gZG9lc24ndCBmdWxseSBzdXBwb3J0IGV2ZXJ5IGNvbWJvIFBIWSBtb2RlLiBUaGlzIHBhdGNo
IHJlbW92ZXMgdGhlCj4+Pgo+Pj4gU2VlIERvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5n
LXBhdGNoZXMucnN0LCAiVGhpcyBwYXRjaCIuCj4+Pgo+PiBTdXJlLiBnb3QgaXQgdGhhbmtzLCB3
aWxsIHJlbW92ZSAiVGhpcyBwYXRjaCIuCj4+Pj4gcmVkdW5kYW50IGNvbmZpZ3MgYW5kIGtlZXBz
IG9ubHkgdGhlIHNldHMgd2UgYWN0dWFsbHkgdXNlLCBtYXRjaGluZyB0aGUKPj4+PiBwbGF0Zm9y
bXMgbGlzdGVkIGFib3ZlLgo+Pj4KPj4+IFNob3VsZCBpdCBiZSBjb21iaW5lZCB3aXRoIHRoZSAz
cmQgcGF0Y2g/IFRoZXJlIHlvdSBzb3J0IG91dCBhbGwgdGhlCj4+PiB0YWJsZXMsIGl0IG1ha2Vz
IG1vcmUgc2Vuc2UgdG8gcmV2aWV3IGFsbCBwcm9ncmFtbWluZyB0b2dldGhlci4KPj4+Cj4+IEhp
LCBpZiB0aGlzIHdvdWxkIGhlbHAgd2l0aCB5b3VyIHJldmlldyB3b3JrLCBJ4oCZbSB2ZXJ5IGhh
cHB5IHRvIGRvIGl0Lgo+PiBNeSBvcmlnaW5hbCBpbnRlbnRpb24gd2FzIHRvIGRvIHNvbWUgY2xl
YW51cCBpbiB0aGlzIHBhdGNo4oCUY29ycmVjdCB0aGUgdGFibGUKPj4gdmFsdWVzIHNvIHRoYXQg
bW9yZSBwbGF0Zm9ybXMgY2FuIHJldXNlIHRoZSBzYW1lIHRhYmxlLgo+IAo+IEZpeGVkIHNob3Vs
ZCBjb21lIGJlZm9yZSBjbGVhbnVwcyAoc28gdGhhdCB0aGV5IGNhbiBiZSBiYWNrcG9ydGVkIHRv
Cj4gc3RhYmxlIGtlcm5lbHMpLgo+IApIaSwgZG8geW91IG1lYW4gdGhlIHNlY29uZCBMRE8gcGF0
Y2ggc2hvdWxkIGNvbWUgYmVmb3JlIHRoZSBmaXJzdCAKcGF0Y2jvvJ9JbiBmYWN0LCBtYXliZSB0
aHJlZSBwYXRjaGVzIHNob3VsZCBnbyBpbnRvIHRoZSBzdGFibGUgYnJhbmNoLiBUaGUgCkxETyBw
YXRjaCBjYW5ub3QgYmUgdXNlZCBvbiBpdHMgb3duLiBPbiBib3RoIHNhODc3NXAgYW5kIGhhbW9h
LCB0aGVpciAKZURQL0RQIG1vZGVzIGRvIG5vdCBtYXRjaCB0aGUgdGFibGVzIHRoZXkgYXJlIGN1
cnJlbnRseSB1c2luZyAoaGFtb2EgCnNob3VsZCB1c2UgdGhlIGVEUCB0YWJsZSwgd2hpbGUgc2E4
Nzc1cCBzaG91bGQgdXNlIHRoZSBEUCB0YWJsZSkuIElmIApvbmx5IHRoZSBMRE8gcGF0Y2ggaXMg
YXBwbGllZCwgaXQgbWF5IGNhdXNlIGxpbmsgdHJhaW5pbmcgdG8gZmFpbC4KPj4gIEZyb20gS29u
YXJk4oCZcyBjb21tZW50cywgaXQgc2VlbXMgdGhhdCB0aGUgSFBHIHRhYmxlIG1heSBub3QgYmUg
dGhlIG1vc3QKPj4gYXBwcm9wcmlhdGUgb25lIGVpdGhlci4KPj4gTWF5YmUgc2hvdWQgZmlyc3Qg
ZGV0ZXJtaW5lIHdoYXQgdGhlIGNvcnJlY3QgdGFibGUgdmFsdWVzIHNob3VsZCBiZS4KPiAKPiBQ
bGVhc2UgZm9sbG93IHRoZSB0YWJsZXMgZm9yIGVhY2ggU0tVIHNlcGFyYXRlbHkgKHRoYXQncyB0
aGUgJ2ZpeCcKPiBwYXJ0KS4KPiAKU3VyZS4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
