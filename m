Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3230C54F51
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fkf4FYRdCa5RgYApyHR7LXUp2sinLXa0MHeOLTitsjw=; b=bKmTs4UBljCOuJ
	D/LFt9jaHa9yhBpQVObFJ0sV99EvnKaMK/3QuGPq23HNvqAqQiCFdi/O16bJI6G6X0wljjk2ajllA
	YkHYiv3Vhm0fCVRSudZmJILOQQrBqXkAWQSEkGOpHQlng/hnnncqXW+1OPhmvDKwQaeVjpSYc2baf
	8ki7jeNBEKhnJxe+CjCzcNQ1vWsenlOcusDABTJykgJ3M2gmtFn0jJZ5l2i897JN+n8enHRH/yMEV
	pFyG/ZU7x4rL5rz//wb5e3e2wFn9E/7kiLWtwnEZ36vL/iRcCcIfO8H3WQQ5dpQWDHISbjZ+aAF7y
	arSyBFFTjbxh6rLnKhpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4b4-00000008AoF-17kA;
	Wed, 29 Jul 2026 13:45:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4b1-00000008Anj-3Lds
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 13:45:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66TD8AYq2089202
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 13:45:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ydcBBOmJWDiikEfEAdfgcfIh4T+Y3DWrvF1t3+oEgx0=; b=SkMjFX7QSmh3eR9a
	cVUz9S2hdrPG/3kUpnSySfrAjRvzB7vxvI5i52QEJ6wrM4I9hJ3sUesSsJF/qyPU
	t2vEWPFcO95GERsx1RipFiAqO+yIiSue94r12WhcdmSSYlKrZ0vm5rsMDW//Z2ek
	78ZV5qQyvDc7Ft5FoaJ1XK2w1nT2+BPixiDwFpnWf7vicKwl/5tTxZ/mrhiBK707
	Z3iuORni3bZti4S/r4A9nnciL4KZXH04BjprvOFrnWQOluEFCNP1Cis3wDROX2Fs
	UToQJgqC4K+bJafEXsjX8x4iNBePsEdLFBL0ikOlwv8CfkZOWStKCtPK7EecUzce
	LYdVlA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqhe98bng-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 13:45:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c21c01cf3so17038861cf.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 06:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785332718; x=1785937518; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ydcBBOmJWDiikEfEAdfgcfIh4T+Y3DWrvF1t3+oEgx0=;
        b=dbC7ckzN0vGZcN7aRqMOLTEOR79QJG+/+atiNwEdksDzjec5LognWAbGaTP/ZCHPOI
         pI/8MO8XUAI2WfBdMcwuTxHIh7/+w9i2aK6tYhTgk6DZfCXsc8cKGPRyQdbwc/AWHJcB
         UKM/hMkxXV9tSd6wQmSa2VHHBDEk/j6fxBaEoVD3lL5Vs7G7B46Ipb7oKrov1mosAMUb
         JaaE6uvJTHe2bYg5bq6R2ysa3CIfaUfdfbnh3eJlOpcgxtHig8EudnF6cWghHlUwNc5m
         IuZsfku1aaxHkyB6Z4/HncvB1AK5vl6VXc211QmZB/p2bfgq+/jzoAag8gXzOoXIZl52
         mEuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785332718; x=1785937518;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ydcBBOmJWDiikEfEAdfgcfIh4T+Y3DWrvF1t3+oEgx0=;
        b=Omd6NC48/97wE90GPT1+Q34lmqMCisMsLf3fut27xnQGAG3wprVh1xDv8O2YFTLIDS
         zn5vB/BcJoz3RLJc1BXHRp9dJXlzJN2OtLnjsZ5aHLsso2L1nhVageAmdcoV+1AfPttd
         Ga73hY2Ri1xPB1sV989X64EVawy0ov0OOKOAWX0cmCt0LSDZQNJ23ECo3UuDUS8jdmOg
         oG+3jakRMYmTCy71jR58EPMFvGNT2Sf5Wo4oW/+q0evXzfce2aix3MLHhRk3DJWKes6s
         nJPdasUW0aQzGi9E6TyziX+Ija2NQxZXNBq1AMVwsHiJTUKLw+304X98omm9uZvR8nYp
         2UbA==
X-Forwarded-Encrypted: i=1; AHgh+RqZIvlLH303hnqaYcQp9GD71kaGPhpn57lt8f+s2+6t8ENq5RhRyfdbdmfPcKF3RzfNs7WhkiB/120=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTfFLdjLI6LcqGsOSJmatfXa2WyHJFkWILz5akZI4u8hXTEpl1
	awQKhofNJBeImwiDTCFYhSjAJ1lUB90qwZG73wsMC2HydLiZuAPFGkfhahyFxq7q68PQnbROwru
	Bqlpx0cJeR7+TY9hrIiZAyyb7eooVGSPAWVcL2nSJx0pk9mFoQ6C0EZsww7oERcArxp8qK7weRY
	DG
X-Gm-Gg: AR+sD10cIBCBB8qRiPs55Y1PbCt+jAKzHfXUfHPHE2h9mAEaFxB7S91B47CUhsy4z8e
	fSB9i3OGZ5k1JxZJbI10vApD9wXwtVGB6NYDq6c6gKMWbn9wEdCubQjJVBJDF02bbMcJsOoO2At
	igQ/Tb7SWierGfIOOhU0vg21agio9+eZPHpp+1hn6GTj79VOCp1Vj4O5MlZdWCCxgEuDvQB6Xyq
	5Lx8fPTNfmyADL/PxGwgE1G9Fh7WJr7rdiIikjD/0Tt1ZMIX7guNfgar6Aj11IpPmkJBeO4wwg6
	xrPwmiDi/DmWhJyEh4zbvXydmzSyxQYBp9tTd9cKNEHh2DK9dz/Bp0oOFrziWFYXb2sjGuIqrNJ
	/abO6DsdVXyx9rym8AbWpMnXCa+C41A==
X-Received: by 2002:a05:622a:4d0b:b0:51c:2190:3b47 with SMTP id d75a77b69052e-529d7055631mr56219861cf.2.1785332717965;
        Wed, 29 Jul 2026 06:45:17 -0700 (PDT)
X-Received: by 2002:a05:622a:4d0b:b0:51c:2190:3b47 with SMTP id d75a77b69052e-529d7055631mr56219441cf.2.1785332717485;
        Wed, 29 Jul 2026 06:45:17 -0700 (PDT)
Received: from [10.206.103.106] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-529e2b649b9sm19150541cf.11.2026.07.29.06.45.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 06:45:17 -0700 (PDT)
Message-ID: <8210513c-288b-4d02-9688-1de10e40d9f9@oss.qualcomm.com>
Date: Wed, 29 Jul 2026 19:15:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 3/5] media: qcom: camss: Add support for PHY API
 devices
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-3-ae811e2f0799@linaro.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-3-ae811e2f0799@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDExMyBTYWx0ZWRfXyf5KfQ2uT9GB
 8D0ZyfKzgy+9Pn+FhFO0TAHgTdohvZy0W8sZxOAWSnBvAACCJH20Ab8BirzS9zhZm5Pz0authC9
 wODofJGDpcLcISa+sKFdpB/RGBCrpOj5Eqtkub7L4MQJaG1hlo6oFJfhVMuAyCpUEx2CjwZNfNX
 rUAJtR/nNrEv7jlrXsBdkYs02IJAvIbb3E4HM/iZYz4lNyKvqo6Gu6QL6POxpHuRaLM+b0aVBVh
 52sFe3sWKKMU0NO5oLxfTZPH7bZHjKTxpnk8JNrHNpHoUoFJD3XL/et938R+JghLmbFxoaGR3Bl
 tFsOu0IRbNzZo9MGrsAoRWgEMmRqB+8lq0oxu41nCJNMTQ0B1CDyBi0EiHPjJaTE788zAnuW01C
 b3kbC7jtLM3rzSM0BDJduQbLkaVP4JLoSM4RE8IxyFJEUZvE9RcxPV825wu/VDCMU4XXaTyBwY8
 QnhTaF63NIiGIO7tAiQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDExMyBTYWx0ZWRfX8xj7uP2n+XzA
 ToZ05lLEsNqGUtFpq4bDKSwvp5j8M+zwADjKRkX8J2n9u52/bnxngGtUrVFRgod3pZrI9wrtCxf
 fzvNd8kt/y5n1jw+P3fNXy5Jqn53V/M=
X-Proofpoint-ORIG-GUID: mCiOTX-91F2JJojOaDNh3IhneNFQXJug
X-Proofpoint-GUID: mCiOTX-91F2JJojOaDNh3IhneNFQXJug
X-Authority-Analysis: v=2.4 cv=EsriaycA c=1 sm=1 tr=0 ts=6a6a03ef cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=tXry0uEw4R1vPupgq-sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_05,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_064519_841209_9355B3B6 
X-CRM114-Status: GOOD (  25.88  )
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

CgpPbiAyOC0wNy0yMDI2IDE1OjA1LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+ICsJCQkJcmV0
ID0gUFRSX0VSUihjc2QpOwo+ICsJCQkJZ290byBlcnJfY2xlYW51cDsKPiArCQkJfQo+ICsJCX0K
PiArCj4gIAkJaWYgKElTX0VSUihjc2QpKSB7Cj4gIAkJCXJldCA9IFBUUl9FUlIoY3NkKTsKPiAg
CQkJZ290byBlcnJfY2xlYW51cDsKPiBAQCAtNDgxOSw2ICs0ODU0LDI5IEBAIHN0YXRpYyBpbnQg
Y2Ftc3NfcGFyc2VfcG9ydHMoc3RydWN0IGNhbXNzICpjYW1zcykKPiAgCXJldHVybiByZXQ7Cj4g
IH0KSGkgQnJ5YW4sCgpXaGlsZSByZWJhc2luZyBHbHltdXIgb24gdGhlIGZvbGxvd2luZyBzZXJp
ZXMgSSBmb3VuZCBhbiBpc3N1ZSDigJQKQ291bGQgeW91IHBsZWFzZSByZXZpZXcgdGhlIGNoYW5n
ZXMgYmVsb3cuCgpUZXN0ZWQgb24gCjEuIEdseW11ciBDUkQgd2l0aCBPVjA4WDQwLCB3b3JraW5n
IGFzIGV4cGVjdGVkLgoyLiBNb25hY28gRVZLIHdpdGggSU1YNTc3KGxlZ2FjeSBwYXRoKSDigJQg
d29ya2luZyBhcyBleHBlY3RlZC4KClBpY2tlZCB1cCBmb2xsb3dpbmcgZm9yIHRlc3Rpbmc6Ci0g
UEhZIGRyaXZlcjogICAgIEFkZCBhIENTSTIgTUlQSSBEUEhZIGRyaXZlciBbdjE0XQotIENBTVNT
IFBIWSBBUEk6ICBBZGQgZHQtYmluZGluZ3MgYW5kIFBIWSB1cGRhdGVzIGZvciBDQU1TUyBvbiB4
MWU4MDEwMCBzaWxpY29uIFt2MTNdCi0gQmVsb3cgcGF0Y2hzZXQKLSBHbHltdXIgRFQgYmluZGlu
Zy9EVFM6IGxvY2FsbHkKCkhvbGRpbmcgb2ZmIGZvcm1hbCBzdWJtaXNzaW9uIHVudGlsIHRoZSBh
Ym92ZSBzdGFiaWxpc2UuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkZyb20gYjg2YWY2ODEyYmI2NTVlODg1ZGJj
ZDIzZmZkMjhjOTIxNzcwMTdjZCBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogTmloYWwg
S3VtYXIgR3VwdGEgPG5paGFsLmd1cHRhQG9zcy5xdWFsY29tbS5jb20+CkRhdGU6IFdlZCwgMjkg
SnVsIDIwMjYgMTg6MTg6NTQgKzA1MzAKU3ViamVjdDogW1BBVENIXSBtZWRpYTogcWNvbTogY2Ft
c3M6IFJlYWQgbGFuZSBjb25maWcgZnJvbSBQSFkgZW5kcG9pbnQgZm9yCiBQSFkgQVBJIHBhdGgK
CkluIHRoZSBuZXcgUEhZIEFQSSB0b3BvbG9neSB0aGUgQ0FNU1MgZW5kcG9pbnQgY2FycmllcyBv
bmx5IHBvcnQvSUQKaW5mb3JtYXRpb24uIFRoZSBidXMtdHlwZSBhbmQgZGF0YS1sYW5lIGNvbmZp
Z3VyYXRpb24gYXJlIGRlc2NyaWJlZCBvbgp0aGUgUEhZIG5vZGUncyBzZW5zb3Itc2lkZSBlbmRw
b2ludCAocG9ydEAwKSwgbm90IG9uIHRoZSBDQU1TUyBlbmRwb2ludC4KCkFkZCBhIHBoeV9pbiBw
YXJhbWV0ZXIgdG8gY2Ftc3NfcGFyc2VfZW5kcG9pbnRfbm9kZSgpLiBFeHRyYWN0IGNzaXBoeV9p
ZApmcm9tIHRoZSBDQU1TUyBlbmRwb2ludCBwb3J0IG51bWJlciBhbmQgcmVhZCBidXMtdHlwZSBh
bmQgbGFuZSBwcm9wZXJ0aWVzCmZyb20gcGh5X2luLiBDaGVjayBmd25vZGVfZGV2aWNlX2lzX2F2
YWlsYWJsZSgpIG9uIHRoZSBQSFkgbm9kZSBhbmQgc2tpcApkaXNhYmxlZCBQSFlzLiBGaXggbWlz
c2luZyBmd25vZGVfaGFuZGxlX3B1dCgpIG9uIHRoZSBkaXNhYmxlZC1QSFkgZWFybHkKZXhpdCBw
YXRoLiBGb3IgbGVnYWN5IERUUyBwaHlfaW4gaXMgdGhlIENBTVNTIGVuZHBvaW50IGl0c2VsZiBz
byBleGlzdGluZwpiZWhhdmlvdXIgaXMgcHJlc2VydmVkLgoKU2lnbmVkLW9mZi1ieTogTmloYWwg
S3VtYXIgR3VwdGEgPG5paGFsLmd1cHRhQG9zcy5xdWFsY29tbS5jb20+Ci0tLQogZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMgfCA0OSArKysrKysrKysrKysrKysrKy0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKaW5kZXggODQwOTdkODJk
OTljLi43MjU0ZjJiMjhlYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy5jCkBAIC00NzQyLDExICs0NzQyLDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGFyZW50
X2Rldl9vcHMgdmZlX3BhcmVudF9kZXZfb3BzID0gewogICovCiBzdGF0aWMgaW50IGNhbXNzX3Bh
cnNlX2VuZHBvaW50X25vZGUoc3RydWN0IGRldmljZSAqZGV2LAogCQkJCSAgICAgc3RydWN0IGZ3
bm9kZV9oYW5kbGUgKmVwLAorCQkJCSAgICAgc3RydWN0IGZ3bm9kZV9oYW5kbGUgKnBoeV9pbiwK
IAkJCQkgICAgIHN0cnVjdCBjYW1zc19hc3luY19zdWJkZXYgKmNzZCkKIHsKIAlzdHJ1Y3QgY3Np
cGh5X2xhbmVzX2NmZyAqbG5jZmcgPSAmY3NkLT5pbnRlcmZhY2UuY3NpMi5sYW5lX2NmZzsKIAlz
dHJ1Y3QgdjRsMl9tYnVzX2NvbmZpZ19taXBpX2NzaTIgKm1pcGlfY3NpMjsKIAlzdHJ1Y3QgdjRs
Ml9md25vZGVfZW5kcG9pbnQgdmVwID0geyB7IDAgfSB9OworCXN0cnVjdCB2NGwyX2Z3bm9kZV9l
bmRwb2ludCBwaHlfdmVwID0geyB7IDAgfSB9OwogCXVuc2lnbmVkIGludCBpOwogCWludCByZXQ7
CiAKQEAgLTQ3NTQsMTggKzQ3NTYsMjYgQEAgc3RhdGljIGludCBjYW1zc19wYXJzZV9lbmRwb2lu
dF9ub2RlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJ
Y3NkLT5pbnRlcmZhY2UuY3NpcGh5X2lkID0gdmVwLmJhc2UucG9ydDsKKworCS8qIGJ1cy10eXBl
IGFuZCBsYW5lIGNvbmZpZyBmcm9tIGNzaXBoeSBlbmRwb2ludCAocGh5X2luKSAqLworCXJldCA9
IHY0bDJfZndub2RlX2VuZHBvaW50X3BhcnNlKHBoeV9pbiwgJnBoeV92ZXApOworCWlmIChyZXQp
IHsKKwkJZGV2X2VycihkZXYsICJwYXJzZV9lbmRwb2ludDogZmFpbGVkIHRvIHBhcnNlIHBoeV9p
biBlcCAoJXBmdyk6ICVkXG4iLAorCQkJcGh5X2luLCByZXQpOworCQlyZXR1cm4gcmV0OworCX0K
KwogCS8qCiAJICogTW9zdCBTb0NzIHN1cHBvcnQgYm90aCBELVBIWSBhbmQgQy1QSFkgc3RhbmRh
cmRzLCBidXQgY3VycmVudGx5IG9ubHkKIAkgKiBELVBIWSBpcyBzdXBwb3J0ZWQgaW4gdGhlIGRy
aXZlci4KIAkgKi8KLQlpZiAodmVwLmJ1c190eXBlICE9IFY0TDJfTUJVU19DU0kyX0RQSFkpIHsK
LQkJZGV2X2VycihkZXYsICJVbnN1cHBvcnRlZCBidXMgdHlwZSAlZFxuIiwgdmVwLmJ1c190eXBl
KTsKKwlpZiAocGh5X3ZlcC5idXNfdHlwZSAhPSBWNEwyX01CVVNfQ1NJMl9EUEhZKSB7CisJCWRl
dl9lcnIoZGV2LCAiVW5zdXBwb3J0ZWQgYnVzIHR5cGUgJWRcbiIsIHBoeV92ZXAuYnVzX3R5cGUp
OwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLQljc2QtPmludGVyZmFjZS5jc2lwaHlfaWQgPSB2
ZXAuYmFzZS5wb3J0OwotCi0JbWlwaV9jc2kyID0gJnZlcC5idXMubWlwaV9jc2kyOworCW1pcGlf
Y3NpMiA9ICZwaHlfdmVwLmJ1cy5taXBpX2NzaTI7CiAJbG5jZmctPmNsay5wb3MgPSBtaXBpX2Nz
aTItPmNsb2NrX2xhbmU7CiAJbG5jZmctPmNsay5wb2wgPSBtaXBpX2NzaTItPmxhbmVfcG9sYXJp
dGllc1swXTsKIAlsbmNmZy0+bnVtX2RhdGEgPSBtaXBpX2NzaTItPm51bV9kYXRhX2xhbmVzOwpA
QCAtNDc5OCwxNSArNDgwOCwxNSBAQCBzdGF0aWMgaW50IGNhbXNzX3BhcnNlX3BvcnRzKHN0cnVj
dCBjYW1zcyAqY2Ftc3MpCiAKIAlmd25vZGVfZ3JhcGhfZm9yX2VhY2hfZW5kcG9pbnQoZndub2Rl
LCBlcCkgewogCQlzdHJ1Y3QgY2Ftc3NfYXN5bmNfc3ViZGV2ICpjc2Q7Ci0KLQkJaWYgKCFmd25v
ZGVfZGV2aWNlX2lzX2F2YWlsYWJsZShlcCkpCi0JCQljb250aW51ZTsKKwkJc3RydWN0IGZ3bm9k
ZV9oYW5kbGUgKnBoeV9pbjsKIAogCQlpZiAoY2Ftc3MtPmxlZ2FjeV9waHkpIHsKIAkJCWNzZCA9
IHY0bDJfYXN5bmNfbmZfYWRkX2Z3bm9kZV9yZW1vdGUoJmNhbXNzLT5ub3RpZmllciwgZXAsCiAJ
CQkJCQkJICAgICAgdHlwZW9mKCpjc2QpKTsKKwkJCS8qIGxlZ2FjeSBEVFMgaGFzIGJ1cy10eXBl
L2RhdGEtbGFuZXMgb24gdGhlIGNhbXNzIGVuZHBvaW50ICovCisJCQlwaHlfaW4gPSBmd25vZGVf
aGFuZGxlX2dldChlcCk7CiAJCX0gZWxzZSB7Ci0JCQlzdHJ1Y3QgZndub2RlX2hhbmRsZSAqcGh5
X291dCwgKnBoeV9ub2RlLCAqcGh5X2luLCAqc2Vuc29yX2VwOworCQkJc3RydWN0IGZ3bm9kZV9o
YW5kbGUgKnBoeV9vdXQsICpwaHlfbm9kZSwgKnNlbnNvcl9lcDsKIAogCQkJcGh5X291dCA9IGZ3
bm9kZV9ncmFwaF9nZXRfcmVtb3RlX2VuZHBvaW50KGVwKTsKIAkJCWlmICghcGh5X291dCkKQEAg
LTQ4MTcsMzEgKzQ4MjcsNDQgQEAgc3RhdGljIGludCBjYW1zc19wYXJzZV9wb3J0cyhzdHJ1Y3Qg
Y2Ftc3MgKmNhbXNzKQogCQkJaWYgKCFwaHlfbm9kZSkKIAkJCQljb250aW51ZTsKIAorCQkJaWYg
KCFmd25vZGVfZGV2aWNlX2lzX2F2YWlsYWJsZShwaHlfbm9kZSkpIHsKKwkJCQlkZXZfaW5mbyhk
ZXYsICJwYXJzZV9wb3J0czogcGh5X25vZGU9JXMgZGlzYWJsZWRcbiIsCisJCQkJIG9mX25vZGVf
ZnVsbF9uYW1lKHRvX29mX25vZGUocGh5X25vZGUpKSk7CisJCQkJY29udGludWU7CisJCQl9Owor
CisJCQkvKiBwb3J0QDAgb2YgdGhlIHBoeSBub2RlIGlzIHRoZSBzZW5zb3Itc2lkZSBpbnB1dCBw
b3J0ICovCiAJCQlwaHlfaW4gPSBmd25vZGVfZ3JhcGhfZ2V0X2VuZHBvaW50X2J5X2lkKHBoeV9u
b2RlLCAwLCAwLCAwKTsKIAkJCWZ3bm9kZV9oYW5kbGVfcHV0KHBoeV9ub2RlKTsKLQkJCWlmICgh
cGh5X2luKQorCQkJaWYgKCFwaHlfaW4pIHsKKwkJCQlkZXZfaW5mbyhkZXYsICJwYXJzZV9wb3J0
czogY3NpcGh5IHBvcnRAMCBoYXMgbm8gZW5kcG9pbnQsIHNraXBcbiIpOwogCQkJCWNvbnRpbnVl
OworCQkJfTsKIAogCQkJc2Vuc29yX2VwID0gZndub2RlX2dyYXBoX2dldF9yZW1vdGVfZW5kcG9p
bnQocGh5X2luKTsKLQkJCWZ3bm9kZV9oYW5kbGVfcHV0KHBoeV9pbik7Ci0JCQlpZiAoIXNlbnNv
cl9lcCkKKwkJCWlmICghc2Vuc29yX2VwKSB7CisJCQkJZndub2RlX2hhbmRsZV9wdXQocGh5X2lu
KTsKIAkJCQljb250aW51ZTsKKwkJCX07CiAKIAkJCWNzZCA9IHY0bDJfYXN5bmNfbmZfYWRkX2Z3
bm9kZSgmY2Ftc3MtPm5vdGlmaWVyLCBzZW5zb3JfZXAsCiAJCQkJCQlzdHJ1Y3QgY2Ftc3NfYXN5
bmNfc3ViZGV2KTsKIAkJCWZ3bm9kZV9oYW5kbGVfcHV0KHNlbnNvcl9lcCk7CiAJCQlpZiAoSVNf
RVJSKGNzZCkpIHsKKwkJCQlmd25vZGVfaGFuZGxlX3B1dChwaHlfaW4pOwogCQkJCXJldCA9IFBU
Ul9FUlIoY3NkKTsKIAkJCQlnb3RvIGVycl9jbGVhbnVwOwogCQkJfQogCQl9CiAKIAkJaWYgKElT
X0VSUihjc2QpKSB7CisJCQlmd25vZGVfaGFuZGxlX3B1dChwaHlfaW4pOwogCQkJcmV0ID0gUFRS
X0VSUihjc2QpOwogCQkJZ290byBlcnJfY2xlYW51cDsKIAkJfQogCi0JCXJldCA9IGNhbXNzX3Bh
cnNlX2VuZHBvaW50X25vZGUoZGV2LCBlcCwgY3NkKTsKKwkJcmV0ID0gY2Ftc3NfcGFyc2VfZW5k
cG9pbnRfbm9kZShkZXYsIGVwLCBwaHlfaW4sIGNzZCk7CisJCWZ3bm9kZV9oYW5kbGVfcHV0KHBo
eV9pbik7CiAJCWlmIChyZXQgPCAwKQogCQkJZ290byBlcnJfY2xlYW51cDsKIAl9Ci0tIAoyLjM0
LjEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
