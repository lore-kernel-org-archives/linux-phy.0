Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C78AD4A5E6
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 08:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KZeBFVmH/E/TPeaxdSrowBYZnGoZRcOFRnwKUMrmqk=; b=zDYt9757WAMSmV
	CwDdGNZD587+GTwZyRnPvnpmOz6jjy0EdHth69QM1M5SW/F8pfnGia4Ew3LEykS6/JltCeB/uIVmC
	ldDX19IsTobrVVmSRkQarESVtHOAll8g+BVLqiKgrTMfJG9ulBsES6QIDktS9Vha/hORnENCKqQ7e
	Aln+VjK9kJWukYH/zCzoBiK8Od9LbIRNZKR7joFQMegxN9aBBUHfk+pnZvBK83DgebSuMHCz75wH3
	kNk6dh8vRIYMdFGLAVZbjDjEfcNURnd3pDl/DL2TzQKX+wkgbSr9RlnwDsDBQZcyYe1AJgV5x0jke
	+ulVNPZN6HGTcosVo3GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf2l-0000000DkZY-0Zf5;
	Fri, 16 Jan 2026 08:18:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf2i-0000000DkYh-2VPg
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 08:18:54 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMkeKP3892663
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 08:18:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iGunpU00SNV3xbEPHhyWD3SLNLFixk/WUO0vwRyUqcQ=; b=PUSJ/j1rXH0/BX/3
	KoYxXb0PrnVDSc6NtD2MRhAHjmd3CfwsMbQ/iCRwQLk4dEOSSBCztCFVVWzxdLMI
	tED4Vh44z+mzG6mYFmlspui0p9VvtT/X40wzMJazTbkj1vVlSNTwcO0Fri2sdQ1u
	BdDIcYjvzFPpkgIqEOxRVOKOOZg+hS+9jGcUcqoNYik/O3exFGczTjB5Cm4ISrJx
	pVMoBabWzSCuumgcIl0QGP6zUNLacLaEFX6cum1tITu0lsyGKNs6ps81xgtVyrGQ
	uLeDE9oTBO+pf7dfOCHsOfTEVBYw82YkJePQ4Es8WtplIcMYTK5YuwHXKluWQhlU
	kYjVHg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9b09c4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 08:18:51 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a13be531b2so17992965ad.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 00:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768551530; x=1769156330; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iGunpU00SNV3xbEPHhyWD3SLNLFixk/WUO0vwRyUqcQ=;
        b=DpFtP780cQau4NhFeoKmQV5sWeCESDXMikLUU3aZiyB6C8ATTcRCbiObekKVwlJ23a
         IQ0YoglFGk2FZw0pO2L/Dvh9hrMaD27/9Li+E2hK1hANRd3Bo3JAl/e+xayTMDQheiRm
         6mu5LK1eFqBZdL/U5qRtrTkjvA0YvgaYrOiKzFHep+r24JDaOBk8nG466t2Nyl7SeryR
         c2TWLGRfiZUgP/lmBk2Ilcn81YFU/mnmKae5xE/FwJnkIz3q5bqkeX1Tlt/s0195rG15
         6SY4+Y5MVeUW2tHHEsG+Mas6THT7zYgdH2N518rKaDhiPgbs+AEVUDnUjcP4dyLJwXBc
         geUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768551530; x=1769156330;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iGunpU00SNV3xbEPHhyWD3SLNLFixk/WUO0vwRyUqcQ=;
        b=HVRNXzj4nNf2AyaaLKbNwNtIDII0mXNGytGbTfi4WaCLiLJt7oRbmvAcJZa+izK5lo
         c6plynDvZtgtOOVCxFjQIntlcNwVW+LtHnRLw8jcMRBk39oNOGj/3D/iC93bNTNg1ZD0
         PTiG4PyzC0WZHTXfXPlup5emPivHSMaYdkfSbr5TiVJx7PMzNpE3Zx+RgPNH4wWY858A
         ixZp2Ww7yFDfiTzl09yC5iCoRgOtVQ8OjNXosRvuLsoXSIxPnDbcdzX9oWVUnn7dhTv6
         ufrn5Jo979uARVdXpTnxIgzZcMjI2hlPK8H8rf5MzEi/+v77aGpyPOdC91GwfNSoLZUc
         gKmA==
X-Forwarded-Encrypted: i=1; AJvYcCVnJ21+wu889mMKAVFreWdukMvkXjaMYfVE8fcxh1L/j0zrRqgLAlDvlXN9TvfzxiWImu3X/dDY77w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yym2MIU1tz3Xx14W/5hkNEbVhC66aDTUzNI+0qsCxaA0tkyFfGd
	vrFf7w2AOMDuC9UumDoi0cMIYpy3etJ3oip8iXj+WhWBNn5jMY23XspsRTlIDvowb4Pyk2kXfnE
	7Ws+LCTuG5iWE8aKpMZ/61Z+0tPI1oKCr2LNKOv1JafEhBYhzdTxQFkxX6Mrt+VG0+R6V
X-Gm-Gg: AY/fxX7d21lJeyacEtT+REC94s2nkkuSdOsK1qz4M1uqxzgNu2pFaPxoGULEKrUTgrQ
	JpXf2BMdeVKWWq/ftfFJHwPcQ8cDiUuCH6ayN2i8rA8evxLg+sLJtam01bbsUE7XMrJiv24fJow
	ufmgvWVk5O4r5YJqiwoZilZUKwWWhJjXhG02+jmGvhLU93QSH80g1td5aBzp7OtLtDqIhR1evxp
	vkbozU8BG/QR7PQyyeXXfbRwSt3b9I2L2XKlbxl0agLmVPxgIjaTVevEwx/LuFqxiVleDGfoSfN
	IOqR1ZqBaKKL1w5Udhf1JkkptQF3SnJv0yknj5jR5k/Yu8wCfqbAt8D5NlZw3pLkSARd20K5bA1
	9l8z141pbQR+esUQ5FVogqp2ArWWnBAwQoPSTswbjLcDTvgx6CdL5Sk9Cma67hYWfJ74nIAMcvL
	bUZp6N
X-Received: by 2002:a17:902:da83:b0:2a1:3dae:8f22 with SMTP id d9443c01a7336-2a717808b49mr17698955ad.61.1768551530393;
        Fri, 16 Jan 2026 00:18:50 -0800 (PST)
X-Received: by 2002:a17:902:da83:b0:2a1:3dae:8f22 with SMTP id d9443c01a7336-2a717808b49mr17698695ad.61.1768551529909;
        Fri, 16 Jan 2026 00:18:49 -0800 (PST)
Received: from [10.133.33.64] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dbb7fsm13994655ad.64.2026.01.16.00.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 00:18:49 -0800 (PST)
Message-ID: <80411ac4-6143-4c2e-bc9e-20a734f15987@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 16:18:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
 <5187dc04-a1a1-4537-9c80-aaa100dd0033@oss.qualcomm.com>
 <33d57a53-93b4-4ea3-a7bb-0b2015501bad@oss.qualcomm.com>
 <ldl7floy6bi5d6svs45xsdgbgkgwxpvj4kuazzg3e6dxzm654l@l5pjud7mvcgu>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <ldl7floy6bi5d6svs45xsdgbgkgwxpvj4kuazzg3e6dxzm654l@l5pjud7mvcgu>
X-Proofpoint-GUID: v9sObrCFrhYlY5pJKvBPcNLAwDHPTn5T
X-Proofpoint-ORIG-GUID: v9sObrCFrhYlY5pJKvBPcNLAwDHPTn5T
X-Authority-Analysis: v=2.4 cv=TcmbdBQh c=1 sm=1 tr=0 ts=6969f46b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lPA2UZEUP2jnaNcI3IQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA2MCBTYWx0ZWRfX381Sa++2A49p
 yP4mEIL2FqnPZLgH+TsBHFiTSWfwIoAU0eLA5VBZn3i6MHx/lCx4pMsBG5qrc+GQxjKQ5GpYjEl
 BYW0wXg/dhLkIMkLIY4/Ee46a1rGTtWJf5Upv3BF9tTk80ZJiRUwebSL1JuGXRin+FJXnvCkpAK
 9NsxtJkzVENBQaZALKtiWmnXjdG7pMVirkRKwCKbUPWqA2b+12xcxzTVJlO/SvA4s4nD1qBv37M
 3RUAcg8Cl6oBj1TweQ5KE/R4MLj3dbsPcjYycWKk5rAWyjx8PLRh12OxWRpabEv2ZPLDy80StE1
 jqvIx1CZHfXsiBOYNoqb+/rgUJr00+v01V27kKDI5zDNpqh/bNGokifktX1hl1omXEh5yWSDKbh
 CzDg7mZkBlra8DTJze3NhIeBQVaN0W8BeUuDaSR4hje6WLjFRfFnnyIRoJFYmBcQAh+V4I9qKWg
 YRTGtZ8JbieT4Tkwsyg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_02,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001852_644436_32F820F0 
X-CRM114-Status: GOOD (  25.95  )
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

CgpPbiAxLzE0LzIwMjYgMjo1NSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBUdWUs
IEphbiAxMywgMjAyNiBhdCAwODowNDowNlBNICswODAwLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDEvOS8yMDI2IDU6NTggUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+PiBPbiAx
LzkvMjYgOTozMCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+Pj4+IEN1cnJlbnRseSwgdGhlIExl
TWFucy9Nb25hY28gRFAgUEhZIG9wZXJhdGVzIGluIERQIG1vZGUgcmF0aGVyIHRoYW4gZURQCj4+
Pj4gbW9kZS4gUGVyIHRoZSBQSFkgSFBHLCB0aGUgU3dpbmcgYW5kIEVtcGhhc2lzIHNldHRpbmdz
IGhhdmUgYmVlbiBjb3JyZWN0ZWQKPj4+PiB0byB0aGUgYXBwcm9wcmlhdGUgRFAtbW9kZSB2YWx1
ZXMuCj4+Pj4KPj4+PiBBZGRpdGlvbmFsbHksIHRoZSBIUEcgc3BlY2lmaWVzIHRoYXQgdGhlIExE
TyB2YWx1ZSBzaG91bGQgYmUgc2V0IHRvIDAgd2hlbgo+Pj4+IGluIERQIG1vZGUuIFRoZXNlIG1p
c2NvbmZpZ3VyYXRpb25zIGNhbiBsZWFkIHRvIGxpbmsgdHJhaW5pbmcgZmFpbHVyZXMgb24KPj4+
PiBjZXJ0YWluIGRvbmdsZXMuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBZb25neGluZyBNb3Ug
PHlvbmd4aW5nLm1vdUBvc3MucXVhbGNvbW0uY29tPgo+Pj4+IC0tLQo+Pj4+ICAgIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysr
LS0tCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
ZWRwLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+Pj4+IGluZGV4IDEz
ZmVhYjk5ZmVlYy4uNWIwZDc3NGJkNzE1IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLWVkcC5jCj4+Pj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tZWRwLmMKPj4+PiBAQCAtMTIyLDYgKzEyMiwxMyBAQCBzdGF0aWMgY29uc3QgdTggZHBf
c3dpbmdfaGJyX3Jicls0XVs0XSA9IHsKPj4+PiAgICAJeyAweDFmLCAweGZmLCAweGZmLCAweGZm
IH0KPj4+PiAgICB9Owo+Pj4+ICtzdGF0aWMgY29uc3QgdTggZHBfc3dpbmdfaGJyX3Jicl92MVs0
XVs0XSA9IHsKPj4+PiArCXsgMHgwNywgMHgwZiwgMHgxNiwgMHgxZiB9LAo+Pj4+ICsJeyAweDEx
LCAweDFlLCAweDFmLCAweGZmIH0sCj4+Pj4gKwl7IDB4MTYsIDB4MWYsIDB4ZmYsIDB4ZmYgfSwK
Pj4+PiArCXsgMHgxZiwgMHhmZiwgMHhmZiwgMHhmZiB9Cj4+Pj4gK307Cj4+Pgo+Pj4gRm9yIHRo
ZXNlIHBsYXRmb3JtcywgSSBzZWUgNCB0YWJsZXMgb2Ygc2V0dGluZ3M6Cj4+Pgo+Pj4gKExvdy9I
aWdoKSBTd2luZy9QcmUtZW0gZm9yIChMb3cvSGlnaCkgSEJSCj4+Pgo+Pj4gTm9uZSBvZiB0aGVt
IGV4YWN0bHkgbWF0Y2ggeW91ciBjaGFuZ2UKPj4+Cj4+IEVtbSwgdGhpcyB0YWJsZSBpcyBpbiBM
ZU1hbnMgZURQIEhQRywgaGVyZSBhcmUgNiB0YWJsZXMuIDQgb2YgdGhlbSB1c2UgZm9yCj4+IGVE
UCBtb2RlIGFuZCByZXNldCAyIHRhYmxlcyB1c2VkIGZvciBEUCBtb2RlLiBJZiBteSB1bmRlcnN0
YW5kaW5nIGlzCj4+IGluY29ycmVjdCwgcGxlYXNlIGNvcnJlY3QgbWUuIFRoYW5rcyB+fn4gPiBb
Li4uXQo+Pj4KPj4+PiAtCWxkb19jb25maWcgPSBlZHAtPmlzX2VkcCA/IDB4MCA6IDB4MTsKPj4+
PiArCWxkb19jb25maWcgPSAhZWRwLT5pc19lZHAgPyAweDAgOiAweDE7Cj4+Pgo+Pj4gWW91J2xs
IG5vdGljZSB0aGF0IHRoaXMgaXMgZnVydGhlciB3cm9uZywgYmVjYXVzZSBmb3IgZURQLCBpdCBz
aG91bGQgYmUKPj4+IDB4ODEgYXQgbG93LXN3aW5nLWhpZ2gtSEJSIGFuZCAweGMxIGF0IGxvdy1z
d2luZy1sb3ctSEJSLCBhbmQgMCBhdCBib3RoCj4+PiBjYXNlcyBvZiBoaWdoLXN3aW5nCj4+Pgo+
Pj4gUGxlYXNlIHNwbGl0IHRoZSBMRE8gY2hhbmdlIGludG8gYSBzZXBhcmF0ZSBjb21taXQgYmVj
YXVzZSBpdCB0b3VjaGVzCj4+PiBtb3JlIHBsYXRmb3Jtcwo+Pj4KPj4+IEtvbnJhZAo+Pj4KPj4K
Pj4gWWVzLCB5b3UgYXJlIHJpZ2h0LCBoZXJlIHNlZW1zIHNvbWV0aGluZyBub3QgY29ycmVjdC4g
aSB3aWxsIHNlcGFyYXRlIHRoaXMKPj4gY2hhbmdlIGludG8gc2luZ2xlIG9uZS5IZXJlIGFyZSBz
b21lIHBhcnRzIEkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCBoZXJlLgo+PiBDb3VsZCB5b3UgcGxl
YXNlIHBvaW50IGl0PyBIb3cgZG8gd2Uga25vdyB3aGV0aGVyIGl0IGlzIGluIGxvd+KAkXN3aW5n
IG9yCj4+IGhpZ2jigJFzd2luZy4gSSBkaWRu4oCZdCBzZWUgYW55IGxvZ2ljIGluIHRoZSBjdXJy
ZW50IGNvZGUgdGhhdCBkZXRlcm1pbmVzIHRoaXMuCj4+IEFsc28sIHRoZSB2YWx1ZSBpbiBIYW1v
YSBzZWVtcyBub3Qgc2FtZSB3aXRoIExlTWFucyxpdCBpcyAweDUxIGFuZCAweDkxLgo+Pgo+PiBX
aGlsZSBnb2luZyB0aHJvdWdoIHRoZSBIYW1vYSBIUEcsIEkgbm90aWNlZCBhIHBvdGVudGlhbCBp
c3N1ZS4KPj4KPj4gICBzdGF0aWMgc3RydWN0IHFjb21fZWRwX3BoeV9jZmcgeDFlODAxMDBfcGh5
X2NmZyA9IHsKPj4gCS5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y0LAo+PiAJLnZjb19kaXZf
Y2ZnID0gZWRwX3BoeV92Y29fZGl2X2NmZ192NCwKPj4gCS5zd2luZ19wcmVfZW1waF9jZmcgPSAm
ZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZywuLi5JdCB1c2UKPj4gZHBfcGh5X3N3aW5nX3ByZV9l
bXBoX2NmZyBub3QgZWRwX3BoeV9zd2luZ19wcmVfZW1waF9jZmcsIGJ1dCBIYW1vYSByZWFsbHkK
Pj4gdXNlIGVkcC1wYW5lbCBoZXJlLi4gc28gZG9lcyB0aGlzIHBoeSBjZmcgY29ycmVjdCBoZXJl
Pwo+IAo+IEFsbCBQSFlzIHNob3VsZCBzdXBwb3J0IGVEUCBhbmQgRFAgbW9kZXMsIHNvIG1vc3Qg
b2YgdGhlIGNvbmZpZ3VyYXRpb24KPiB0YWJsZXMgbmVlZCB0byBiZSB1cGRhdGVkL2ZpeGVkLiBJ
IHRyaWVkIGdvaW5nIHRocm91Z2ggYWxsIHRoZSB0YWJsZXMsCj4gYnV0IEkgbmV2ZXIgaGFkIHRp
bWUgdG8gZG8gaXQgaW4gYSBzYW5lIGFuZCBjb21wbGV0ZSB3YXkuIEFzIHlvdSBzdGFydGVkCj4g
bG9va2luZyBpbnRvIGl0LCB3b3VsZCB5b3UgcGxlYXNlIHJldmlldyBwcm9ncmFtbWluZyBmb3Ig
YWxsIGNoaXBzZXRzCj4gc3RhcnRpbmcgZnJvbSBTQzgxODBYPwo+IApJIGRvbid0IGdvdCB0aGUg
U0M4MTgwWCBQSFkgSFBHIHBlcm1pc3Npb24gbm93LiBvbmNlIGkgZ290IGl0LCB3aWxsIApjaGVj
ayBpdCdzIGNvbmZpZ3VyYXRpb24gYW5kIHNlZSB3aGF0IGkgY2FuIGRvLiBCdXQgZmlyc3QgaSB3
YW50IHRvIApjb3JyZWN0IHRoZSBMZU1hbnMgYW5kIEhhbW9hIGNvbmZpZ3VyYXRpb24gYW5kIHBv
c3QgdGhlIExETyBjaGFuZ2UuIERvIAp5b3UgbWVhbiBzd2l0Y2hpbmcgYmV0d2VlbiB0aGUgZURQ
IGFuZCBEUCBtb2RlIHRhYmxlcyBiYXNlZCBvbiBpc19lZHAsIAppbnN0ZWFkIG9mIHVzaW5nIGEg
Zml4ZWQgdGFibGU/CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
