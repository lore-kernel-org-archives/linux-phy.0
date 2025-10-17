Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB806CCD183
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 00:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0smI7lJNA/RQyf9JaPbf2klGqRfy+2bjm+Jx62hTlsA=; b=4s2SFTtxKH7Bxb
	dwvhvewj558NRW/MWtlwbJ/1OEA/jgTy5IcZbGL8Wx7qD5xWbX//FDgUYwXcEj6Gjdc9Em8BEiYvo
	lSBTA+sJrEygZSkMVj6Mv9Iq2L8+tkOEXx0PNpQ8t/gfSdx6TdYFLaqacafmD6wjWKYnKotgECBNZ
	QNEL/Cj3HHSHS4Rc62FJGpG+FunhEhFmKQx2f8n9YIjNM5moExpdM6m0B/jFdljLMsbwHGoEcDmV/
	+thliCCAoq5iC7sywB5sHyHsHr9DpQb+wmwrHuAMNKCsMcEEKNQVq8bsd8upGqvgt5MOrUOxYP0B+
	Rig+IFjDuQd3GHAh2IFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Y8V-00000006Bcf-3PLM;
	Fri, 17 Oct 2025 00:16:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Y8S-00000006BcI-0hTO
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 00:15:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLOVo008890
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 00:15:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dJ64cn4Jw2zoNd68Hcx2TgTpp/C+dSWYlA18Bl1jUjA=; b=NFJNagzG1l9y5lzX
	OPI+OcCYKz+fOxIKaZKO+hU6Q4zfOgf8tsGHHvoIGibPaXfurH2nW7rpONXpOXoF
	NpGolOJ4IqlY0dsXhRNUdbWg8KXjeGpTwqvGInfvZQuXtEXCYAxw9fh1WTxd3F6U
	Nwb/F6xtNeKEKTWCLhQflwSgBg2MYEap3dAuRBipNqnTbBOdx2pgzM3Z/PwmNDh1
	0YwXYfm1WtWfGJ7dx8xBVmOB4vqnfsXD2EP/hphrBijCN0R9gDPethI5ED7v2im7
	By0Gps3oZcIT3W/dLFhEZ5JBY+ALy95ivBl6ZM+RxxxGgyD62EL5PyYkC7uMzir1
	Pa5cqw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1apgme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 00:15:52 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33428befd39so3278212a91.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 17:15:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760660151; x=1761264951;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dJ64cn4Jw2zoNd68Hcx2TgTpp/C+dSWYlA18Bl1jUjA=;
        b=ZjaLFPvDwtW1KSrbsI+sqObjwhtZNW0Kux2QlrWuxe4yehCxpl6hqpv/cRPr/Z9pvB
         e82Vd2S0QcKVtBP51Yo49c1eNA7SQBPtpeU5qulYUyKVzPFDoIOD4NlI4kQsOXl+zVgJ
         J+Hm6BX4iM4v3JPCiieUI/BerDBgD+XFdRf9zxJjJFeOdT7L5Li8YmIvymBi4CGeILlS
         6Ske6iaslJYZffHf5+3OHNCbQzpg47Q1CfmZ77NWuq08G410mOv0fgYhHHl73FM81uMW
         nZZ0DOcKAlAqZO3Hnfef6H1F4uSpIpWXJFWQgdNs90ANdoBB6W+Y8IVjgYiFcLRMflzl
         gfew==
X-Forwarded-Encrypted: i=1; AJvYcCWPMEaQmPsjbq2kErRgqfo1jizgkiavw+spjmY7rF2LEiNu5y3SxxuGQB5ax0GcQX9QajTrUa4kbjI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2Wkejrv7GhusafXnjpuQs123JoKwB55QIZ9JXf7o1Tlg/y7Yl
	g+OrE3GKk2MW6HP674ZDQoAzYFwFmTrl6j3AJ3Tf24ijBLsS04lHAaqxEf3S63+lam/aK6Uv7K0
	Q/zkOvX6BoO9w0DLfVxiZgpiIddeDqxfQqnp7K3kmhn387mwCkQ/fI5G0tZnlX2HS7rBnMyS8jI
	oT
X-Gm-Gg: ASbGncsN96R68AWQ3QJ5/pxZY9hGMmdeb9E/ZkOnlWbftIIbcV191+1CPG5dX5qNJle
	C5QgCK/IyUwjDoxpPf19loQwQ8vug4TWU7q98ozHhjvo2TwP8y7OXKkpB1GzrebiwggxRKVoOHJ
	fA4dXDN9T3Y7S5vo7pZPcBwDunKLMYstCAhQacBLPf5f3LcTVbft+cFoDzmvQrvGgHEKefU84Ch
	EW7iy7BS8ykHWXazis/P50NT2LR5I5m0ImMmntLIErX46EV238lqEgUUZVAvFE5iG5lOOG3HaJQ
	9xdPH58VyCxwhX4PIux18jBLQMkNRfCW/7EuA5YYtQqH3J4P5JNSeG1X+2A6B+xdQ4rSBos/fPN
	RSCAxwv+m4w12O+6tuZYrq59AHNpWV4MElBMnEfj4
X-Received: by 2002:a17:90b:3848:b0:32e:e18a:368c with SMTP id 98e67ed59e1d1-33bcf84e18emr2015513a91.7.1760660150942;
        Thu, 16 Oct 2025 17:15:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFchSn8iE1CbOL7qzU83o7j4yN2YGWnh+JCQIrTf0Qed/q51JsPPPVJjhMi3h/XLUNj365KXA==
X-Received: by 2002:a17:90b:3848:b0:32e:e18a:368c with SMTP id 98e67ed59e1d1-33bcf84e18emr2015486a91.7.1760660150520;
        Thu, 16 Oct 2025 17:15:50 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bb6522fc6sm3313879a91.2.2025.10.16.17.15.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 17:15:49 -0700 (PDT)
Message-ID: <b2b68430-5127-5eca-6bd8-4af31eb9fbed@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 17:15:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
 <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
 <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
 <2a70f878-269c-1b40-2e8c-77b5851de9a1@oss.qualcomm.com>
 <99ab26d3-eb44-401d-8a7c-1d9efd2a1a10@kernel.org>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <99ab26d3-eb44-401d-8a7c-1d9efd2a1a10@kernel.org>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f18ab8 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pJ4duzi49VOVWyagjcoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: bb-AZ51xBx55Ptrke28Kn8K6ibinFnE3
X-Proofpoint-ORIG-GUID: bb-AZ51xBx55Ptrke28Kn8K6ibinFnE3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXxHR/4OqdbRxU
 Mc71J9/WqAKNFtRU8z/9VxGRQzV7NcmCLRZThSNi7VEnUkmi0ZULm06PvkIB+WkUDLScjh6xzrw
 EApc/tlNlxV2yS9UswM+CUvS8v/C21wcCsBqkSjAcrNBDfKm0LLVPy15xUYMTPuiMe1E+E18guk
 A42hZu1ItlfwS1TxfEkop2Hy9ja9VQJxHymstEt4MTsHA8bRrSkq0Q9wvS+y5XwuCGIWM2LivU0
 dDD1t2Ff2y74Oea0+tx4K0bQ7mRxKtpSVKkGhg1DXEA4jCl4X3/xlcY2kULxgERLiUvHLiXzH+6
 1ZqHPZZlaA9YHPQgqwiZYG+0uG7a06DLI23dLZq/6GORHEQetltWYR1+HGwFihr7oCnt2hgy6TI
 vEMrRz6cUsWGuHMgkR1b09e4GpGjVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_171556_207540_DA19BE33 
X-CRM114-Status: GOOD (  16.13  )
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

CgpPbiAxMC8xMy8yMDI1IDk6MzYgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24g
MTQvMTAvMjAyNSAwMzoxNiwgV2VzbGV5IENoZW5nIHdyb3RlOgo+Pj4+Cj4+Pj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoCBtYXhJdGVtczogNQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1u
YW1lczoKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+Pj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGF1eAo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gY29uc3Q6IGNsa3JlZgo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29u
c3Q6IHJlZgo+Pj4+Pj4KPj4+Pj4+IFdoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGVz
ZSB0d28/IFdoaWNoIGJsb2NrIElOUFVUcwo+Pj4+Pj4gKGltcG9ydGFudCEpIHRoZXkgcmVwcmVz
ZW50Pwo+Pj4+Pj4KPj4+Pj4KPj4+Pj4gY2xrcmVmIGlzIHRoZSBUQ1NSIHJlZmVyZW5jZSBjbG9j
ayBzd2l0Y2gsIGFuZCB0aGUgcmVmIGlzIHRoZSBhY3R1YWwgQ1hPCj4+Pj4+IGhhbmRsZS4KPj4+
Cj4+Pgo+Pj4gVGhlbiB0aGlzIHNob3VsZCBiZSBuYW1lZCBzb21laG93IGRpZmZlcmVudGx5LiBD
WE8gaXMgY2xvY2suIFJlZmVyZW5jZQo+Pj4gY2xvY2sgaXMgY2xvY2suLi4gVG8gbWUgaXQgZmVl
bHMgbGlrZSB5b3UgYXJlIGRlc2NyaWJpbmcgdGhlIHNhbWUgY2xvY2ssCj4+PiBqdXN0IG1pc3Np
bmcgc29tZSBnYXRlIGluIFRDU1IuIEJ1dCBpbiBjYXNlIHRoZXNlIGFyZSBub3QgdGhlIHNhbWUK
Pj4+IGNsb2NrcywgeW91IG5lZWQgdG8gbmFtZSBpdCBhY2N1cmF0ZWx5Lgo+Pj4KPj4KPj4gVGVj
aG5pY2FsbHkgaXRzIGFsbCBoYW5kbGluZyB0aGUgc2FtZSBjbG9jayBicmFuY2ggKENYTyksIHdl
IGhhdmUgdGhlCj4+IFRDU1IgY2xrcmVmIHJlZ2lzdGVyIHRoYXQgYWxsb3dzIHVzIHRvIGdhdGUg
dGhlIENYTyB0byB0aGUgVVNCIFBIWSwgYXMKPiAKPiAKPiBBaCwgZXhhY3RseS4gVGhlbiBjbGty
ZWYgaXMgbm90IGEgY2xvY2suIFlvdSBuZWVkIHJhdGhlciBwcm9wZXIgY2xvY2sKPiBoaWVyYXJj
aHkuCj4gCj4+IENYTyBpcyBzaGFyZWQgYWNyb3NzIHNldmVyYWwgSFcgYmxvY2tzLCBzbyBpdCBh
bGxvd3MgdXMgdG8gcHJvcGVybHkKPj4gcG93ZXJkb3duIHRoZSBQSFkgZXZlbiB0aG91Z2ggb3Ro
ZXIgY2xpZW50cyBhcmUgdm90aW5nIGZvciBDWE8gb24uICBUaGVuCj4+IHdlIG9idmlvdXNseSBo
YXZlIHRvIHJlbW92ZSBvdXIgdm90ZSB0byB0aGUgb3ZlcmFsbCBDWE8sIHNvIHRoYXQgaXQgY2Fu
Cj4+IHBvdGVudGlhbGx5IGJlIHNodXRkb3duLgo+Pgo+PiBNYXliZSB3ZSBjYW4gcmVuYW1lIGl0
IHRvICJjbGtyZWYiIGZvciB0aGUgQ1hPIGhhbmRsZSBhbmQKPj4gImNsa3JlZl9zd2l0Y2giIGZv
ciB0aGUgVENTUkNDIGhhbmRsZT8KPiAKPiBOYW1pbmcgaXMgYmV0dGVyLCBidXQgaXQgaXMgc3Rp
bGwgbm90IGNvcnJlY3QuIFRoaXMgaXMgbm90IGluZGVwZW5kZW50Cj4gY2xvY2sgc2lnbmFsLiBJ
dCBpcyB0aGUgc2FtZSBjbG9jay4KPiAKCkhtbW0uLi4gSSBndWVzcyB0aGF0J3Mgd2h5IEkga2Vw
dCB0aGUgc2FtZSBjbGtyZWYgdGFnLCB0byBkZW5vdGUgdGhhdCAKaXRzIHRoZSBzYW1lIGNsb2Nr
LCBidXQgb25lIGlzIGEgc3dpdGNoL2dhdGUgZm9yIGl0LiAgV291bGQgeW91IGhhcHBlbiAKdG8g
aGF2ZSBhbnkgc3VnZ2VzdGlvbnMgeW91IG1pZ2h0IGhhdmUgdGhhdCBtYWtlcyBpdCBjbGVhcmVy
IGZvciAKZXZlcnlvbmUgdG8gdW5kZXJzdGFuZD8KClRoYW5rcwpXZXNsZXkgQ2hlbmcKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
