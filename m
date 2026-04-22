Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8916CFA1FCB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 16:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h75QTxd9JeIIa2MuNVNt3zJlxsZf+CLwzz64m0BWoI=; b=Pqg7jmfdpdQcUd
	L3iPdSquLXHcqZ2b4Riv6GRKjwe/W+ovOQ2EwyYRMGBOZwO4x5k6heryuxrfD6JLcc0vCUh5oUVMl
	Ty+xy32eCkz54lV4yAID+Sd2Ou4w2qtcqPAiAmAa9B1Zhod8vstdqIidr6W6A9GRL5XOsiFh3OARv
	VESDVhDY58+xBovOjPUp0HGd2TlUz1oG9Jkcu5aQkOP/5A2QaCPlh7tbS/MVG02DN1hmn20FMWEHQ
	vZHyZxF2ttvnCDQs2xs63RTH+a+k+kitefm3s7I2TOVuKsUPRaV26oXczAU7R8ocnTjPJzoscQaxZ
	gyMvOr0CuKiopxhra/Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFa9U-0000000ATVd-0ekC;
	Wed, 22 Apr 2026 16:10:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFa9N-0000000ATUD-285o
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 16:10:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63MFfKV72956090
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:10:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uN/R6RRYtPTKnQXAfo7KnbOqKzy+JkBRYd6RhI8zV/8=; b=WJSzYsvntZfg9g8d
	8APE3nVEF+smcp6Nkp3+5rpg+DRzw7PHUUy7e+cJA3I8u1a0ztjmm1Scb72Vp1t0
	n8y81CSnQdCPtIHmEDkGgncbAscIiVG1eYGEbdzvB7oV2Syii20M3to2zG7Xmtlw
	grdA4F1MwI3FMQp0JaqU/TEYdMedJCKwjE9GUUaawL6+udqZqvuxp022yn90PUwh
	GpFKDfFWQ8fbHH1+s3JY1yIplxX1R9dewcTy+8lKrWlnp49Tncw4XmzTHmrTKxgW
	JiVeYkn0Q58wLy/3rezKCNbVo3F3SRjUDsKuqJcyDB9qHFBAoO//4r7/j8OAzVQC
	vLsD9w==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq16q03tr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:10:04 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-948476b92e8so2615113241.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776874204; x=1777479004; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uN/R6RRYtPTKnQXAfo7KnbOqKzy+JkBRYd6RhI8zV/8=;
        b=a1ma5vy12JeSYUXVw50n5LRaW1FFWnH9jOwJba7MsKLKY6DKQsyqna90mWJhkWrTuM
         5dBUw5zPy4Zhb4lw+mlBgElygLg1ta1x3ioKxXeX7vqAZHLpDgjfpEzVVSYqyj15OhHr
         B/DtvgVs4whLV+PE7w+SQ/EJJ/8k3ocFN9N4OHm7W6l2oT1VosJOyi30KQgYhvY1W+6z
         3rq6Rsp1WSrFvcoR+haFpkEezNCimPwNzC5bV79GoVr/A0xH0/JRmuwWC97GQefhzo1r
         bNcH6Noag+IhqhCi4adgn9pBBBeLtk8awc0TkyLB80Lp6Cwne8DrcNXn9G/g0UvyJFW+
         QKzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776874204; x=1777479004;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uN/R6RRYtPTKnQXAfo7KnbOqKzy+JkBRYd6RhI8zV/8=;
        b=gu1MKzZP4kw9/XTZFQMSe20aB9Oylt7ic5xEgTAZUZDL4DAIcufobW6lLLQHOxJ3Il
         izyTgRbyFGdz+J9UXqxNbt0yGUe5gBIh0dcQwjpI6t0HHqhEhIE8Cqo/I80Ld0zarOsD
         cN1UonjITC8x6rgv3hMlBoIO+LKjOKfZaa6kOTxaYB0CbD/Jv9JYCsQ03dwPPTkP+RDD
         6cSqm8a4VukqK7OglGz4dsodAAL6xKvzu/P27iBxkovasM2oH6YxIcavWe+m4jiNwWlF
         o/aEx0QDAm7ZkAfn2hKQk6TtAjvKQgj7Xahc3J++ZCQUCwQcsQIhNK8Slz+LrByTbyov
         KKfg==
X-Forwarded-Encrypted: i=1; AFNElJ8shSkIQzQe51GGo7dVnbu+yzabV33984b1BDBS+tjFGPQQ2JKlFPMNYU4Fdpt85o7ZOatV7XApXKQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGKPILddhSswsNjx2iOL8ERCuHEL1OQxz3dXOH77QwI9H8sXyO
	5Jb01R6BQZM9MkhXN4JI1FqOrgNM4my41xvm4X4aZuKGOnNcgGOCur0l0QXU8Iaqjqk/TKWj3Md
	OncAT5950YLDKYTMKSsH6KH3F087RRgtnMxuEnKVMBKxkJSD7/LH3YN+W46HfRTgZn8eq
X-Gm-Gg: AeBDievPxn4HBbds0tl/Z3hyWQjU+DSOlLoo/LpxR+tWMNFAkXsR6X+wIRwBnMHVsZa
	0vwZZw9XQXZsJnB9ZxAvDUfKSa7vFKsclDhzCm8uLKwtqick4edoP9xNtgEJ8jfvswbi0ityBnl
	YA6ahOWbkKOhct+u/4YSW1ryOW7q/KsT74DSVMRcZKwljEsjo+dWTOaDBOEhqVPxCxCYrcJQVEZ
	5CpzKvw/JRwCzybPEOGHlyLs7qWByFvp4o5Vammv9afNtdtW/eqqoqANVtldx8MgvbCNUcipkkv
	bOoDpATMSbuKuE4dznzY6jpY8aeibDX6JOD4Y056M3NKU0aZ5mPeWE5x9eP286QVDQQ3C/FpKnU
	P8TTuUwgN0h/qBuoiaKBK9+dNWH76mgau5ZXNE8dcFY0pb1VbnYN4ZLBVRZ4diV7JHLoAqFYsNY
	iSxj8HOcwGTIXQ8Yp+zivjfSy9yjEZMF9f3I52TXJl79pLPA==
X-Received: by 2002:a05:6102:2908:b0:604:f29d:84b1 with SMTP id ada2fe7eead31-616f8592680mr10358130137.20.1776874203713;
        Wed, 22 Apr 2026 09:10:03 -0700 (PDT)
X-Received: by 2002:a05:6102:2908:b0:604:f29d:84b1 with SMTP id ada2fe7eead31-616f8592680mr10358063137.20.1776874203181;
        Wed, 22 Apr 2026 09:10:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38ecb5f669dsm37191801fa.14.2026.04.22.09.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 09:10:01 -0700 (PDT)
Date: Wed, 22 Apr 2026 19:10:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 1/5] phy: qcom: edp: Unify generic DP/eDP swing and
 pre-emphasis tables
Message-ID: <cveqmbcdlpx2wb4r5lzepwircwksevqhtaywuajjaz36eqdbby@an6av2dgt5iz>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-1-c38bef2d027b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260422-edp_phy-v4-1-c38bef2d027b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KPNqylFo c=1 sm=1 tr=0 ts=69e8f2dc cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=nGqt9DGlS6J5kdIhkV0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: hPPBGDMP8NVhOMChSSQiJhZCg-YszZIf
X-Proofpoint-ORIG-GUID: hPPBGDMP8NVhOMChSSQiJhZCg-YszZIf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDE1NiBTYWx0ZWRfXzLJgO0IYmSyT
 OEQr/3guOfRgi6SW1f97JKgxaiuA+KbBoK8ai7x74MPNl5EG92YMsLbHVYKRVAHkP61UzOVoDdF
 bjbIcrJfqV9vbhqN3lSu/NYODUsAbJwWxVs9XAjfwXutLaaWNodf+boPIj2oHmWVGZCcIuYMLaF
 6uzGoNZaddwZdh8ay3bMWSZDfsvWdEyF72pPrmFBZ7ZrhMSydzvE7z6AvOnnpSedaSLhvNyzro7
 vXG4Uxz4zhlwpO288CGvUho3+Kqgn9S4OLYsiv45vsMuCkRt3Wy/7U/jEIHAf7rIkz0+KLxI0TY
 AvJbwbkUUJiLebjA+QHsk10JriHl7ZLL7DBWmMQXkg0NxXhwKEKt/m73ibuymNbMLpwIyzvbpUp
 cvM+GZUZLUL/O+5cUpg9zZ0R+ASY9v5ZTJdBUDj0dikRJe3opKQe4y6xFJWm07XLSOifZS66TPA
 lCWpw272e8AqGp0UlLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604220156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_091006_287358_0F716D3E 
X-CRM114-Status: GOOD (  14.77  )
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

T24gV2VkLCBBcHIgMjIsIDIwMjYgYXQgMDI6MDE6NTFQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IFRoZSBjdXJyZW50IGVEUCBhbmQgRFAgc3dpbmcvcHJlLWVtcGhhc2lzIHRhYmxlcyBk
byBub3QgbWF0Y2ggdGhlIEhQRwo+IHJlcXVpcmVtZW50cyBmb3IgdGhlIHN1cHBvcnRlZCBwbGF0
Zm9ybXMsIGNvcnJlY3QgdGhlIHRhYmxlIGFjY29yZGluZ2x5Lgo+IAo+IFRoZSBnZW5lcmljIHRh
YmxlcyB3aGljaCBjYW4gYmUgc2hhcmVkIGFzIGZvbGxvd3M6Cj4gCj4gRFAgbW9kZe+8mgo+IAkt
c2E4Nzc1cC9zYzcyODAvc2M4MjgweHAveDFlODAxMDAKPiAJLWdseW11cgo+IAktc2M4MTgweAo+
IGVEUCBtb2RlKGxvdyB2ZGlmZik6Cj4gCS1nbHltdXIvc2E4Nzc1cC9zYzgyODB4cC94MWU4MDEw
MAo+IAktc2M3MjgwCj4gCS1zYzgxODB4Cj4gCj4gVGhlIHByb3BlciB0YWJsZXMgZm9yIFNDODE4
MFggYW5kIFNDNzI4MCB3aWxsIGJlIGFkZGVkIGluIGEgbGF0ZXIgcGF0Y2gsCj4gc2luY2UgdGhl
eSBuZWVkIHNlcGFyYXRlIHRhYmxlLgo+IAo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4g
Rml4ZXM6IGYxOTkyMjNjYjQ5MCAoInBoeTogcWNvbTogSW50cm9kdWNlIG5ldyBlRFAgUEhZIGRy
aXZlciIpCj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1
YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb25neGluZyBNb3UgPHlvbmd4aW5nLm1vdUBv
c3MucXVhbGNvbW0uY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1l
ZHAuYyB8IDQxICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+IAoKUmV2aWV3ZWQt
Ynk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4K
CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
