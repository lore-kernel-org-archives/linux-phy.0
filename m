Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69841C531D0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 05:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoKAZ1gt0TpWs6Dzs5AQXCOcuRVi0ytAsUkIn10Ozg0=; b=Ayerd2nQYcNcjv
	6GcGnbFyIAZvqwf/2nJl6Z+KktQIxfwHj6zTkfCXa59NRkmg7MHwTs09hXc8I9bxODrPkIcV/wXf1
	7Uqu1mYL2fRd50P3i/Yh3nfKc09UDtnD2VWptHcbNoyyWhGsLwAXCIZCuLi3+mDrILtzebND32S7C
	rudmlkdyEe0x080HkkGUnufrxY7fjaAGVlg9mLhrTklInrZALi3wTgptfUi7il4jExpeAC758NkHl
	DNN3/RdzpqV4o1NNgolwkAlH94ohBUZrGtaXwf2E3kQhNoSJvZ5fdBsPmVO7S/TKo2YXS99bNboIu
	SJu1HfqdpYawl9YRlWiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpJQ8-00000009YQK-1cza;
	Thu, 30 Jul 2026 05:35:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpJQ5-00000009YPj-3TYt
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 05:35:03 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66U5RXtW011974
	for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 05:35:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GdwTUq0WBR1EyoXM/rm8sZcwzV71AIDBSxmFVUpT0Tw=; b=hzizE/rh/XEp9dlS
	Azy0hiB6Zwl0iRJeAjCz8wPoNhni9YxFyn1n1baTZ9dydxl9easl9g3uEw4asx0/
	nYbG1ryH0NL4egFs64R7Y97IfFs4HkJTJsgAwi0Ol4zZGG8jhvSdIaauRM14ztbR
	knqqmX9I7pjFvZ6LWIl7B4bNzVwDmXXqs2F5Sq4MtV49/oFj5+qmCAr/EoU2jSRU
	WVVozHDopj4fes116hliJIXxsUUtIG43ISqsAq6kTGv7yr2fvOL/Xia0xDxihHYI
	SGBBw7biqX3FU5G6Xu6hx/O5z5PtYiWDjHs18yCoV2TxEAI/lgp/aV0CIY4t/vo/
	N8LdeQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr0g0g0th-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 05:35:00 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84877b362f6so3127180b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 22:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785389700; x=1785994500; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GdwTUq0WBR1EyoXM/rm8sZcwzV71AIDBSxmFVUpT0Tw=;
        b=EuLbC2k4ySlWniucQ9z7oBRpIw+C2RHxaP1+GPBxnJUlAcCPfXTheXdk/T/0DdftkM
         wEMRQLpfyKbAMNDqRMwHJfZffQ8vNEWVOlWso20jNNQByOVyRd1dP4A3uc+KU/56Kvb2
         2fR4RgtTRa4NmhsxhYH/o7JbvOjns1bMtMlmmZFHPiCLpHYyuq075Wi2oRoLY1/vByan
         2ZX37VkOFPsviPz9M8icL3gKNnYlTg7LNbL0Gm+dhcTmsUCFifIi+N9/oSBE4bQVzATH
         eOvVrFXPNCqvZq/6PJj9bigE4PYpMd3TW9+4DPsaQsNSEVlTL8Kyl+bvsr4Ubu14yBxF
         PSWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785389700; x=1785994500;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GdwTUq0WBR1EyoXM/rm8sZcwzV71AIDBSxmFVUpT0Tw=;
        b=ZlcBTdRkB7A+8J5W0Xt7opTRNbdB3kNV3kHZZNyuYbWP232+XJ+/l/tFEANZi6a+Rk
         Z/JdSZCai2uuxvM2EdB9gccZFU7fMyZXgLFnADBchXnjJickYPb7zfSgSgbFwjkektKo
         sCrSPc3jPYV93Ny7ylIUp7mjAiWellsCVh89f8vIWS3YxWveHH1UGae/96/XPJPjDlad
         EJPEYC26R7FogBHL+n+9PewE3H3ZdhwkH/DbrKFBHqTwUlHeO1bazr3ueHaHiKp5glgp
         W6pjktFUfiR1axourjrpphheOQby4PP3DaCm2Ml1ow+cQLiSdqyomQtT8+i+Fsa5AAwR
         qeCw==
X-Forwarded-Encrypted: i=1; AHgh+Rpv5P4Tg7lVWRSexTH1HHbH3Z6sxGKH5Cd61DzTMLfG872rYN3xLILHrfryxOf+skPlteXRbJ26h6M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/NrYq+566ek514VHpCJhXN1LLfpgLGH0kD64kV1yh/ZKz961R
	KqjnOlKjash3kIGq8vuRrdId+2jVBm6cDCssm0bREnpzZoO7fVcUZycYZ6nq369UW5QjhLrxMK9
	276Nw8zA/RBvBO0elqI1x9U/vvpa0tU5VxBp3cK7IiFfkB0puXENmCT+MIFLHAGWl1L/8
X-Gm-Gg: AR+sD13lBpM3Zaq5cGYG7f2ponHQlhUkII7OFM1bQSTToI+ZtQ5mDV4VvGsxhxFr9Hf
	YNiHexpOKK4sC+bkBbB3btQy6PG/kFXILcuNs5vDyG91XlMcmBZ4pa+13/o9buxKBs+td0X+tWY
	bO2AeLHhRL4r2WpcLjqazq5wR5GtAhB346sWcU3fv8jRSvB2qovPGGgenAgo0V+7l2pEiGVvUoq
	7rSXwZW8Mg3GmOXJmOP50wirk1M8aYCAUK75lagvijZsJX9RLnKourwS7659seCrtpxJftYlO8A
	E7Gvq1P+L51SPayRab4lIsddfj7aRrBU7whox9aCy+XO2rVcrk7rEGlimKYZr3feKxb+0NNF3RP
	04KBBBcRr7cpNH1Zr/B/5OPOuFbb6Xw==
X-Received: by 2002:a05:6a00:4c84:b0:847:e791:d5c5 with SMTP id d2e1a72fcca58-84ebc3cf6d6mr1338815b3a.35.1785389699877;
        Wed, 29 Jul 2026 22:34:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:4c84:b0:847:e791:d5c5 with SMTP id d2e1a72fcca58-84ebc3cf6d6mr1338773b3a.35.1785389699398;
        Wed, 29 Jul 2026 22:34:59 -0700 (PDT)
Received: from [10.206.103.106] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84ea02f8473sm2342241b3a.31.2026.07.29.22.34.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 22:34:58 -0700 (PDT)
Message-ID: <02b51d6d-0b65-4723-b1b5-307726c76fa7@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 11:04:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 3/5] media: qcom: camss: Add support for PHY API
 devices
To: Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
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
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-3-ae811e2f0799@linaro.org>
 <qTmyhh5ukxu4BQAZXvNyyUvZxucwjv6bNoe2v30cfjsdhuzg3ud5DZzGmSBlYICc_POjXS2sSvhbRop0i67mxg==@protonmail.internalid>
 <8210513c-288b-4d02-9688-1de10e40d9f9@oss.qualcomm.com>
 <25ef6b91-62b4-4e8e-bc8f-8400dc293273@kernel.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <25ef6b91-62b4-4e8e-bc8f-8400dc293273@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDAzNiBTYWx0ZWRfX2wZSnaqw9Ybe
 7m2784vZDBkbEtaN7RsPs5ELTU7DvLcmWzoCZQ20Jn3yX9kXobJo5q/aXS3pEtxvr0s3av+2KvQ
 yX7pxyqUN8m/7iI/zOGs7HUyes+W4dRbAfiqRSevGDE2GHBrXP0K0SkFRzPzUuiif9HcSt/vEbJ
 CtAhnTQ04tR64T1bV1p2Er5oXtsD5SP2pi4GTW8dzH7bySHaWy8gPWeyu+SxlmAK5CkiFFRUzmo
 BNAIL3+BuIKodeIqlLWfAiytV0ZjFAWNTVDjFf0kc710E6xoGkR2InfVsSqF30O1SB34w+J48N6
 6s5rlnJEm2upV9CQgMkBHcT2SLY6sjVr9ejoaGbbPxNftvSnck1US//zke4gk8V441wYWD6L7hJ
 wc/FQTXSD5rqCvcxDjP5mUfZxox8tqEUJ+aWLL2uDZSraxFdiYWzm/PGeMHTG6VBAgK2BwOh5H9
 PFYdQ83IlQeTT+SDnWQ==
X-Proofpoint-GUID: Zv0p1SiSPn2-zI77QNr4G0wXnVDBIdmi
X-Proofpoint-ORIG-GUID: Zv0p1SiSPn2-zI77QNr4G0wXnVDBIdmi
X-Authority-Analysis: v=2.4 cv=Z4Xc2nRA c=1 sm=1 tr=0 ts=6a6ae284 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=p0WdMEafAAAA:8 a=EUspDBNiAAAA:8 a=U0KInS6uA2ESEJLtUTIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDAzNiBTYWx0ZWRfXxUXsEho6f7mR
 +L+q+v+JiMGgialLT81vB5oP5RBAuCfJmryaUU522hOybry8xqhKnmrJtEwSxwG8yYr3VOJcz4A
 djs0MxeptvbYF4annJrpusTiVSYaHZ0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_01,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 malwarescore=0 phishscore=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607300036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_223502_000186_52612943 
X-CRM114-Status: GOOD (  12.10  )
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

CgpPbiAzMC0wNy0yMDI2IDAyOjAxLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IFNvIEkgZG9u
J3QgdGhpbmsgdGhpcyBtb2RlbCBpcyBpbi1rZWVwIHdpdGggZXN0YWJsaXNoZWQgRFQgcHJhY3Rp
Y2VzIC0gaWYgYSBkcml2ZXIgbmVlZHMgdG8gcGFyc2UgYSBwcm9wZXJ0eSBpdCBuZWVkcyB0byBo
YXZlIHRoYXQgcHJvcGVydHkgaW4gdGhlIGRldmljZSBub2RlIGl0IGhhbmRsZXMuCj4gCj4gU28g
d2l0aCBkYXRhLWxhbmVzIHBlciBleGlzdGluZyBjYW1zcyBiaW5kaW5ncyBpbiB0aGUgSUZFL0NT
SUQgbm9kZSBldmVyeXRoaW5nIHRob3VnaCBzaG91bGQgd29yayBhcy1pcyBmb3IgeW91Lgo+IAo+
IGh0dHBzOi8vZ2l0bGFiLmNvbS9MaW5hcm8vYXJtNjQtbGFwdG9wcy9saW51eC8tL3RyZWUvYXJt
NjQtbGFwdG9wcy12Ny4yLXJjMi1jYW1zcy12MTE/cmVmX3R5cGU9aGVhZHMKPiAKPiBodHRwczov
L2dpdGxhYi5jb20vTGluYXJvL2FybTY0LWxhcHRvcHMvbGludXgvLS9ibG9iL2FybTY0LWxhcHRv
cHMtdjcuMi1yYzItY2Ftc3MtdjExL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MS1jcmQuZHRz
aT9yZWZfdHlwZT1oZWFkcyNMOTQ3Cj4gCj4gJmNhbXNzIHsKPiDCoMKgwqDCoHN0YXR1cyA9ICJv
a2F5IjsKVGhhbmtzIGZvciB0aGUgcXVpY2sgcmVzcG9uc2UsIEJyeWFuLgoKQ29uZmlybWVkIHdv
cmtpbmcuClJvb3QgY2F1c2U6IEkgaGFkIGRhdGEtbGFuZXMgb25seSBpbiBjc2lwaHk0X2luX2Vw
LCBub3QgaW4gY2Ftc3NfY3NpcGh5NF9pbmVwLgpDQU1TUyBwYXJzZXMgaXRzIG93biBlbmRwb2lu
dCDigJQgd2l0aCBubyBkYXRhLWxhbmVzLCBsYW5lc191c2VkPTAsIHZlcC5idXNfdHlwZQpzdGF5
ZWQgVU5LTk9XTiwgYnVzX3R5cGUgY2hlY2sgaGFyZC1mYWlsZWQgd2l0aCAtRUlOVkFMLiBUaGF0
J3Mgd2hhdCBsZWQgdG8gbXkgcGF0Y2guCgpEcm9wcGluZyBpdDsgZndub2RlX2RldmljZV9pc19h
dmFpbGFibGUoKSBmaXggZ29pbmcgdmlhIHlvdXIgcGF0Y2ggYXMgQ28tZGV2ZWxvcGVkLWJ5LgoK
VGVzdGVkLWJ5OiBOaWhhbCBLdW1hciBHdXB0YSA8bmloYWwuZ3VwdGFAb3NzLnF1YWxjb21tLmNv
bT4gIyBHbHltdXItQ1JEIGFuZCBNb25hY28gRVZLCgotLS0KUmVnYXJkcywKTmloYWwgS3VtYXIg
R3VwdGEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
