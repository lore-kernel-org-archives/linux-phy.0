Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26AEAC83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 09:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voZgMuWdI3/APwN+dLEfDBze8oa91XEufOx/FMpKxsk=; b=PZTULD5o9z/1WA
	i6TtLtB1bXOx7H+gmQR5U/RzgSrQdtIfbk9n+2Y9FLYQB7lDcXzsuEBBjVf7jPJ44VSo/AAZQ+tad
	E7S21SN7Swb7CEy+qd9xR2VqKTRBFQJAPN4i5eoMx8ulNDwIfiQ1NMgYC7pOwEqJ3SUpR0OPFAi1L
	tSYu7VsUJjQRePWqTlNkixKKZZWix3tCzvtpZLNfHW5x9aBq2JPN5lEMTnYV+B/0o7inEsYKbRtOR
	o7Rz2zIRgV43DBvK5LqoALHqJ9rJNnhXjCNrdmRMgcF2iyGZF62ikPEHQWstsd5UALahvz8b8v5Ht
	fTzqQfEtl1ggRHRf3yoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue9Ti-000000022N8-3hVW;
	Tue, 22 Jul 2025 09:40:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue9Su-0000000225w-08rF
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 09:39:17 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M34KfD016286
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 09:39:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0X7mSZFr4n9kIrvMvdwIufpEltafXbdIueSaAC9+zUs=; b=Opxcb8lnO+OHyYKw
	mKisAnKlEieMkvCV1KmS3sb+j40YB1jFd0xVbgNTNxJE3ea+w7MGqzjeuiBp8Bm5
	ZMQYzsHiFUFGJeu9YXwDg+6dO9VAhXOwYhyRRQk4gxo13NVmvp2WaXm+Jr4dKUF9
	TCQVzB82HcYF9aQOT9JHfyCs9XX78EDiJRSB1fv6etQD6GXCp53XQsFYpjewHnmD
	wtNhNOCdHJU5PGTC3HtyWYvLTOHNSqZeAb8mtxjH8yzt9zCTcx0Oc+/uSH3CAf7i
	lADDMuUk2aP+vamD51ur0AZrRl/kplc7OzlKh8SyWNfZlNQYmANmRiNsrMtYi/+o
	Ff3IiQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s118r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 09:39:14 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-748f569321eso214201b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 02:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753177154; x=1753781954;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0X7mSZFr4n9kIrvMvdwIufpEltafXbdIueSaAC9+zUs=;
        b=bGmyc3psbVzsmArlxPYucZIrS5C3AqvcPYKbR3YNxaHIUABBJ6VvYdA5Pxnbpp6BfD
         lg67NuyzfUmQIxABDoF3/vmjQWxNd62KNsGS9GD8UK0WSKnR//kaZ8FjxCj1n/wbcqM7
         /O0kVQNUUU/drrzxeAHjSEDV5ChPyczRJkni+0j6rMpnEhgSBwaKvuqWcsYu9jXayGde
         HA802PYnwArzELGmOwG0xH0IuEMVHzdjcbKfNdlh0wLVzblj1uKfAlVL/lDr2pLJDp1n
         3VLok5nYLc04HS2GQ5V88BWL8ThCpwOOe0/wn+dYQF8b1cPpbqTXVP8jWtKX4fsJONm1
         KX/A==
X-Forwarded-Encrypted: i=1; AJvYcCUeiPiaLn9P4XRVDzPsOVD1/fLpT6Q7TF3rk+aF9YEK9qsk//ZxVX0xx43km17vL1p1NqfbfOQc0Bk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy19pTcngJ0dRkI3056QgNRXyDRUOEUNBoD4VnDF0Isg9NoPup4
	wYgDj3x+1brGYMPZFpzjrjT+NCMT05N0O54uoV+frx47ENvpb2JUk+WjNzJz35VSVzXp6wfpaOO
	85cCN4A8kGy3ZiOcLB8+Bp9mM4EyFaD/Uy/o0dRiIQs593bDA650v3YF3dAd3FC75RmSo
X-Gm-Gg: ASbGncvQEn6FJfFr0LdnV37JOAEwUvqnqdlOKg9aV4pki/cTGqwmimvyDY7TxjH1Wpr
	bdnG8IIgTgTa/GQktQRm4+MNhMQ68zE4K0xFHig77tcylJy7POM/OFQLO71gSnyd0WJJTFeZZNx
	gvkJ5TYlaIr2RvFmH8zA77MCGj1y60slQ8eotve6hRm7thP8pna2E2VnTTdhftl1dGHP59B46Ll
	PR6EXiiHc7I43FYLS8LE64UujYcN1XlzSVZs7Z+fV3B4gZHKgNHJ3uJ40oIw2ya2Tlbkhs8FmLD
	JGeIN/ijD1S9/PgcQ4KHW6YU2ikns8axwJhILIqv3IYg7eF0U70GuClcUOXVpbVFzzPSY9AnfTF
	j9Mp6ylUWycGW/Vjggt/llbuzHH7i
X-Received: by 2002:a05:6a00:4c18:b0:730:8526:5db2 with SMTP id d2e1a72fcca58-756e9fe71a8mr12334492b3a.5.1753177153664;
        Tue, 22 Jul 2025 02:39:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG309WOl0f0xT5Osz89iIc9rjwEya2Gw7AuRefQ4nhG1+/3l19kPlLrow82m3GRjOtFkvaFmw==
X-Received: by 2002:a05:6a00:4c18:b0:730:8526:5db2 with SMTP id d2e1a72fcca58-756e9fe71a8mr12334474b3a.5.1753177153138;
        Tue, 22 Jul 2025 02:39:13 -0700 (PDT)
Received: from [10.133.33.17] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb67901csm7313456b3a.100.2025.07.22.02.39.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 02:39:12 -0700 (PDT)
Message-ID: <66634041-0e31-4a1d-9f1c-920ba583430e@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 17:39:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] dt-bindings: display/msm: Document DP on QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-1-42b4037171f8@oss.qualcomm.com>
 <e15df8ba-f058-4eb2-919c-bc327290e66a@kernel.org>
 <5ec480ac-ee60-473d-83e6-c2f25d3d30d8@oss.qualcomm.com>
 <b810f0d9-b1e8-4182-9551-601b248d572d@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <b810f0d9-b1e8-4182-9551-601b248d572d@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA3OSBTYWx0ZWRfXzUTQhnKOVV5B
 0H9Qrrp7qx987vMEMz14Pr5YHBN4bAhf77zKU8DAu/7CejmgPiGNl82oFhO4tWdQAiH+R98cYRQ
 2TDIu+d1E2p3czObyK6xWj7mHseN1YzXeYtyzvV7bBWi5WmzL58xxZcgkmjzDvHNIBtXXjFUnAV
 2dJSanZOVgTyWa+R8dG9kP7aRq/fPGYeCQeKO5zF3t6lAiIKX4HoTiNjDTTsQC9Ak/kV4zz0xv2
 +uH8/MGjHF1E6Ac34px+JxDTCl40ttf7L8+VNVh/aDZ75GGWSillqlm8O7C/dJamAjWjKcUwvIg
 tiEUqFkW7ljjPr/EjC0q20kZ4UsqJPyugGHyVXGidDAlVUBC7bWyzBv9os7Sua/CXO47vymuH7k
 k3gZeE/HzYiIavCUuwnWhfs8xM1CH2JsNdTOpJt0t9zMx0xEf0xIl5Bc4cwt3ThfIQzGr9fF
X-Proofpoint-ORIG-GUID: K9LYHt8PAnWoxD_RTBxprriyIJzNMsT5
X-Proofpoint-GUID: K9LYHt8PAnWoxD_RTBxprriyIJzNMsT5
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687f5c42 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=YuxCsFRrSdhSRJBAAjcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=978 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_023916_190986_E320D7DE 
X-CRM114-Status: GOOD (  14.25  )
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

Ck9uIDcvMjIvMjAyNSA1OjIzIFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDIy
LzA3LzIwMjUgMTE6MTYsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIDIyLzA3LzIwMjUg
MTI6MTMsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAyMi8wNy8yMDI1IDA5OjIy
LCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+PiBUaGUgUUNTNjE1IHBsYXRmb3JtIGlzIGJhc2VkIG9u
IHRoZSBTTTYxNTAgU29DLiBTaW5jZSB0aGUgRFAgaGFyZHdhcmUgaXMKPj4+PiBzaGFyZWQgd2l0
aCBTTTYxNTAsIHRoZSBjb21wYXRpYmxlIHN0cmluZyBxY29tLHNtNjE1MC1kcCBpcyB1c2VkIHRv
Cj4+Pj4gcmVwcmVzZW50IHRoZSBEUCBjb250cm9sbGVyIG9uIFFDUzYxNS4KPj4+Cj4+PiBObywg
eW91IGNhbm5vdCB1c2Ugb3RoZXIgU29DIGNvbXBhdGlibGUgZm9yIGRpZmZlcmVudCBvbmUuIExv
b2sgYXQKPj4+IHFjczYxNS5kdHNpIGFuZCBib2FyZCBEVFMgLSB0aGVyZSBpcyBub3RoaW5nIHNh
eWluZyB0aGF0IHRoaXMgaXMgdGhlCj4+PiBzYW1lIGRpZS4KPj4gUGxlYXNlIHRha2UgYW5vdGhl
ciBsb29rLCB3ZSBldmVuIGhhdmUgcmVuYW1lZCBxY3M2MTUuZHRzaSB0byBzbTYxNTAuZHRzaQo+
IEkgY2hlY2tlZCBvbiByZWNlbnQgbmV4dCwgYWx0aG91Z2ggbm90IGxhdGVzdCBuZXh0LTIwMjUw
NzE2LiBDb21taXQgbXNnCj4gc2hvdWxkIGV4cGxhaW4gdGhhdC4gQW55IHFjczYxNSBmZWVsIHRo
ZW4gaW5hcHByb3ByaWF0ZSBoZXJlLgo+Cj4gU3ViamVjdCBzYXlzIGNsZWFybHkgIm9uIFFDUzYx
NSIuIFBhdGNoIGRvZXMgc29tZXRoaW5nIGNvbXBsZXRlbHkgZWxzZSEKPgo+IEZvciBnb2RzIHNh
a2UgaG93IGFueW9uZSBjYW4gdW5kZXJzdGFuZCB0aGlzPwpTb3Jyee+8jEnigJl2ZSB2ZXJpZmll
ZCBmdWxsIGZ1bmN0aW9uYWxpdHkgd2l0aCB0aGUgRFRTSSBvbiB0aGUgNy8xNSBsaW51eC1uZXh0
IHZlcnNpb24sIGFuZCBhbHNvIGNoZWNrZWQgcGF0Y2ggY29uZmxpY3RzIGFuZCBjaGVja3BhdGNo
IGlzc3VlcyBhZ2FpbnN0IHRoZSA3LzIyIHZlcnNpb24uCgpCYXNlZCBvbiB5b3VyIGNvbW1lbnRz
LCBJIG5vdGljZWQgdGhhdCB0aGUgRFRTSSByZW5hbWUgZnJvbSBxY3M2MTUuZHRzaSB0byBzbTYx
NTAuZHRzaSB3YXMgYWxyZWFkeSBtZXJnZWQgb24gNy8xNjoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjUwNjA0LXFjczYxNS1zbTYxNTAtdjEtMC0yZjAxZmQ0NmMzNjVAb3NzLnF1YWxj
b21tLmNvbS8KCknigJlsbCB1cGRhdGUgYWxsIHJlbGF0ZWQgZGVzY3JpcHRpb25zIGZvciBxY3M2
MTUgYW5kIHNtNjE1MCBpbiB0aGUgbmV4dCBwYXRjaCB2ZXJzaW9uLCBhbmQgcmV2ZXJpZnkgZnVs
bCBmdW5jdGlvbmFsaXR5IHdpdGggdGhlIGxhdGVzdCBsaW51eC1uZXh0IGltYWdlLgoKVGhhbmtz
IGFnYWluIGZvciBwb2ludGluZyB0aGlzIG91dC4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9m
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
