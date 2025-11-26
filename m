Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9AFED10379
	for <linux-phy@archiver.kernel.org>; Wed, 26 Nov 2025 04:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMWhYN3jeZA7LF6nJ20ZaEceN0O0pH0kuaJ9iPNkUr4=; b=JnGiNgw76p7Gds
	7B3ysZ4cG6JFTO1xFph7KBQ4cJITEadlSp6dWjogsLRZ+Nkd9kJhF7rMo45U9+L7xfkOmXSC9r4XG
	9OPZegcAuES7I5roOfmDCHnM2dp3iP7Y9tURKC8VpnE0vJHUUoUE/LQ4kB1Cbef0ehkoo1TvRj9Ga
	PH7deVrAaZXYla+2tmJExlXlFXKduXcppXHhEJ3h7Ej6QVEA6g6tBQ62cChqU9Xf5kthxjT2aRAIK
	mRjDB9P4QEIlx41ZGhjTMljfYDbdsFEuyPTTa0uc9uI0X4NV64UGse4UOcZczeE8+IdYXip4BiyD7
	5MZigSyutj1eIu8FIp+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO7Pm-0000000EM5c-1nCj;
	Wed, 26 Nov 2025 04:46:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO7Ph-0000000EM2j-3oi3
	for linux-phy@lists.infradead.org;
	Wed, 26 Nov 2025 04:46:01 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APHAcUI3890136
	for <linux-phy@lists.infradead.org>; Wed, 26 Nov 2025 04:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GqL06KXfLzDGypNHqQzyTKRnoJEhHxiqndXjTZfaMJw=; b=F0ZDSvcUNLM8J+U4
	Dq3EBRXiaxt3T9a/+z3R7ddORvUgPcl1xWFYDFvc3d1i6jfA2AAX3jvCjoE4c4Yb
	yEjzgzwe1aPKofzpwb+tWCUjCojC+bCDDW19pPnM6t8iqnmfQmY/R22fPuV6mjFs
	vsWTlYqMyaaa/K6LQdwPEjH+qHGg0ZY3BIJiAng149ufxO6Zmn0lJ1d9ba9oT+hn
	+LERVxckkBPn6Dm4eSFs7yzs4s3uAOirvAIs4AHohsFA+BDQH5Me7ww1xkwvaLgd
	bt0W0WQmvJcP7EINcio11AjKmOnfUON6gtRh+8E3ZET6x36Ri4OYvDevOcV2EZN/
	Da/ZBQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4angme9h0j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Nov 2025 04:45:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29846b05267so11598185ad.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Nov 2025 20:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764132353; x=1764737153; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqL06KXfLzDGypNHqQzyTKRnoJEhHxiqndXjTZfaMJw=;
        b=AtH3/hE9lcztbH+0RKrZOMNGTJ4TE0ZjSFlhq1T6MpI/qQYVo5a1qipgYShjLK3gfu
         NYig0aWS1UZZX2FaNIu/9J4Z+1idUyuuJmEGWIm60jqVHKrT1CMe+SF4wCDj8n0XueJa
         PXOJhCxQrNFxW3Ftqiqg9/cBd2Jf1KDdO8FC0MoX7E2IEdEAT3xtMp1wzy7MEauBIESi
         62V4ZJkcwr/Iz2WVVVbgYnLMnXVt4Rq8BCvThAGLoCkPBf1lVVHG6DnTCKKpcp6iFnPi
         Ac9XVuSMqCDFaE5huukwkx52LU5+nASa/w1x1kDyfvKBju9VLVzilaWR9dX7JcWLMWaz
         jwag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764132353; x=1764737153;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GqL06KXfLzDGypNHqQzyTKRnoJEhHxiqndXjTZfaMJw=;
        b=qcXn3H3HA0PUIbPaz2Pzo0DAX/Ph0Ws+AiW7vxAArZ5X1pTQL+EVUb8y5M/ILAYHLo
         h7Qv/5PhOEzHCQJ30F/AYo1eC5ky3IrPnmcPThraXEPMGgMtAJQWFC0zlJ/8Ek0j7c9O
         USqa0sjweEeT6EGRJlDnkCqwNtNMd9iRsrY8yoRujwsGyiq72iYFAlFI4Rg/CHwbbmZ+
         Lj8TYCbRuwpywmygG7vhXjuJMfaVWHUixYlsJxfF8Fx7t794p/tL6WnijrUd1m825sZV
         jKS4L2j4N7zeDJBPzoo5CQRjiKSe789p6VMX4fTHY0BPywFifJ8Pf/Mbov2BHxvk6GmL
         Blpg==
X-Forwarded-Encrypted: i=1; AJvYcCUsLTw3asUwBG8VzV/f2mO2EcZpuTGbBUhENnGqUgkVRLDe6x/I7+I5yepdOTajmMCgYqD/QL7fB/o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5OAHsedhFjAOcKxVR8jgS7cpW8OkOGGrrvQc33nTnW9jlwFMN
	XWlFPmea10qi8hTslS7fBdlwmpBblRziMkyZlsX3XJu52JdFYmhyQyZ5d+r2jay/58I7Bux5x7T
	1T9vj+HU8mW6MdP0bz7jS4fYlWZOAxJjpdW8CEHWWDmI/ZwbDscnPNdoOZZJIm522QZzA
X-Gm-Gg: ASbGnctpHL6wwAKvFm5JvIV8Ml5I/8idz9cHxq8AHBdtuKfYyd0Zo+lgeDt/Eh5wF1Z
	HmtH648odGf07hllJUCz64HCEPb9lGV2DQ9Y1H2JyMyTFC71hBYNt7VwZP2c3xO7Hr/LuPsA2rH
	fQnZIgtdObAlAwNJL9s/FUd081DG1kOzaO/kKuorVu6yP2x3sH2kySsiZ8bwc8v9KE1sPlBHKby
	lJGCpHM7ziy5gn4nOYv2whl1LhUA9XVTAuHYmaq4ba2nY/HmvSdMhUAbNJc7VqqwuvAB4sqfMiQ
	7y6JDzsO2WDxDm1Zpb3kft3sOlHseCIeP9lLqVBwVoDe6ofTSgHgIqecCjx3QXf4QHYRZA/c15p
	q8O9JeIf9/h+6epDxh6vj7BhKkib/n8k38ZbD6kCH0e6Fz5YJoK3NgCYUy5+ZxFO2cyLm
X-Received: by 2002:a17:903:1b05:b0:295:70b1:edd6 with SMTP id d9443c01a7336-29b6beae519mr120353545ad.3.1764132352576;
        Tue, 25 Nov 2025 20:45:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFui52U3VCAjaLPTtk3SOMAR2H4EmZuFAhCvTFDgv/zFDxoa4lx+TcsfLyVX5O6oR5w/HgLhA==
X-Received: by 2002:a17:903:1b05:b0:295:70b1:edd6 with SMTP id d9443c01a7336-29b6beae519mr120353145ad.3.1764132351995;
        Tue, 25 Nov 2025 20:45:51 -0800 (PST)
Received: from [10.133.33.221] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b105e4csm179391405ad.2.2025.11.25.20.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 20:45:51 -0800 (PST)
Message-ID: <42c9e912-70bd-42c1-aee0-78893d1db3bb@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 12:45:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 00/14] Add DisplayPort support for QCS615 platform
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov
 <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, tingwei.zhang@oss.qualcomm.com
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=PJgCOPqC c=1 sm=1 tr=0 ts=69268601 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=Fkfh_6v1YXoygXURJj8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDAzNiBTYWx0ZWRfX/sfADH3oSIIz
 ZxyJewoYHFnu+OKwdLk88o8WrZItXK/JbFnq4xbhac4UW1KLD7JQgN+/CdXdKLh/3cwZ0I6wPFr
 8sNJGPh7H+Yq0t86sBrCkvQJzdLBJr/apeDX7hCFmG4FMZwNeGCdAMZwhOEeD8/0YWpd6HF/jEu
 zzqdkt1Yg5SUDlRwnBXPlXFbYzqkb51do8CeXxO6uDsF4tt+jsnu1AZVKeYffKZ814Ssp4i3s8i
 8ENq28lruvbtS5Fk/UDBUGoBYrBSyj7rth/4xpjq1lwXZzSmCqOOju2OOPGJfixbigJWUakis5V
 voQ4QLRb1YsMWW75s64VhN0fso+PHFuggsg7Trwt6K9i8UQd3PZto1FFudPrg9iq/UHsZfB1hlg
 eX7WJ5AEWx9rQHnRIgwUeMm7/8s9vg==
X-Proofpoint-GUID: KBxxq_IjjaTvBJqSDDajSQifVlJ00KYj
X-Proofpoint-ORIG-GUID: KBxxq_IjjaTvBJqSDDajSQifVlJ00KYj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_204558_076182_E853E32D 
X-CRM114-Status: GOOD (  23.00  )
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

Vmlub2QsCgpQbGVhc2UgbGV0IG1lIGtub3cgaWYgdGhlcmUncyBhbnl0aGluZyBwZW5kaW5nIG9u
IG15IHNpZGUgdG8gZ2V0IHRoaXMgcGF0Y2ggYXBwbGllZC4KCgpPbiA5LzI2LzIwMjUgMzoyNSBQ
TSwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gVGhpcyBzZXJpZXMgYWltcyB0byBleHRlbmQgdGhlIFVT
Qi1DIFBIWSB0byBzdXBwb3J0IERQIG1vZGUgYW5kIGVuYWJsZQo+IERpc3BsYXlQb3J0IG9uIHRo
ZSBRdWFsY29tbSBRQ1M2MTUgcGxhdGZvcm0uCj4KPiBUaGUgZGV2aWNldHJlZSBtb2RpZmljYXRp
b24gZm9yIERpc3BsYXlQb3J0IG9uIFFDUzYxNSB3aWxsIGJlIHByb3ZpZGVkCj4gaW4gYSBmdXR1
cmUgcGF0Y2guCj4KPiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3Nz
LnF1YWxjb21tLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHY3Ogo+IC0gRml4IFFTRVJERVNfVjJf
VFhfTEFORV9NT0RFXzEgY29uZmlndXJhdGlvbiBmcm9tIENPTSBpbml0IHRhYmxlIHRvIGNvbmZp
Z3VyZV9kcF90eCgpLgo+IC0gTGluayB0byB2NjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8y
MDI1MDkyNS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXY2LTAt
NDE5ZmU1OTYzODE5QG9zcy5xdWFsY29tbS5jb20KPgo+IENoYW5nZXMgaW4gdjY6Cj4gLSBNb3Zl
IHVzYjNkcHBoeV9yZXNldF9sIGRlZmluaXRpb24gdG8gdGhlIHBhdGNoIGFkZGluZyBjb21wYXRp
YmxlIGFuZCByZWxhdGVkIGNvbmZpZyBkYXRhLiBbRG1pdHJ5XQo+IC0gQWRkIE5PVEUgYWJvdXQg
U1dfUE9SVFNFTEVDVC9vcmllbnRhdGlvbiBoYW5kbGluZy4gW0RtaXRyeV0KPiAtIFVzZSBDOTkt
c3R5bGUgbG9vcCB2YXJpYWJsZSBkZWNsYXJhdGlvbiBpbiBtc21fZHBfbGlua19sYW5lX21hcC4g
W1JvYl0KPiAtIFVwZGF0ZSBjb21taXQgbXNnIHdpdGggaXNzdWUgZGVzY3JpcHRpb24gZm9yIFsw
NS8xNCwgMDYvMTQsIDA3LzE077yMMTIvMTRdLgo+IC0gTGluayB0byB2NTogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI1MDkxOS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1
LXBsYXRmb3JtLXY1LTAtZWFlNjY4MWY0MDAyQG9zcy5xdWFsY29tbS5jb20KPgo+IENoYW5nZXMg
aW4gdjU6Cj4gLSBBZGQgbmV3IHBhdGNoIHRvIGludHJvZHVjZSBRU0VSREVTIHYyIENPTS9UWFJY
IHJlZ2lzdGVyIGhlYWRlcnMuCj4gLSBSZXN0b3JlIGxlZ2FjeSByZXNldCAmIGNsb2NrIHJlZ2lz
dGVyIGxvZ2ljLiBbRG1pdHJ5XQo+IC0gVXBkYXRlIHBoeV94bGF0ZSgpIHRvIHJldHVybiBFUlJf
UFRSKC1FTk9ERVYpIHdoZW4gZHBfcGh5IGlzIE5VTEwuIFtEbWl0cnldCj4gLSBSZW5hbWUgaGVs
cGVyIGZyb20gcW1wX2NoZWNrX211dGV4X3BoeSgpIHRvIHFtcF91c2JjX2NoZWNrX3BoeV9zdGF0
dXMoKS4gW0RtaXRyeV0KPiAtIERyb3Agc3RvcmluZyBzdHJ1Y3QgZGV2aWNlICpkZXYgaW4gZHBf
bGluayBhcyBpdCBpcyBvbmx5IHVzZWQgb25jZS4gW0RtaXRyeV0KPiAtIEFkZCByb2J1c3QgbGFu
ZSBtYXBwaW5nOiBkZWZhdWx0IDE6MSwgY29tcGxldGUgcGFydGlhbCBjb25maWdzLiBbRG1pdHJ5
XQo+IC0gUmVvcmdhbml6ZSBzdWItcGF0Y2hlcyB2NVswNy8xNO+8jCAwOC8xNCwgMTEvMTTvvIwg
MTIvMTRdIGFzIHN1Z2dlc3RlZC4KPiAtIExpbmsgdG8gdjQ6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDI1MDkxMS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRm
b3JtLXY0LTAtMjcwMmJkZGExNGVkQG9zcy5xdWFsY29tbS5jb20vCj4KPiBDaGFuZ2VzIGluIHY0
Ogo+IC0gRHJvcCBwYXRjaCB2M1swMS8xNCAmIDEzLzE0XSwgd2lsbCBzdXRibWl0IG5ldyBwYXRj
aHNldHMgYmFzZWQgbXN0IGR0IGJpbmRpbmcgc2VyaWVzLgo+IC0gVXBkYXRlIG1haW50YWluZXIg
b2YgcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1waHkueWFtbCB0byBteXNlbGYuCj4gLSBBZGQgbWlz
c2luZyBhdXggYW5kIHBpcGUgY2xvY2tzLiBbRG1pdHJ5XQo+IC0gRHJvcCBzZWNvbmQgVENTUiBw
aGFuZGxlOyByZWdpc3RlciBvZmZzZXRzIGFyZSBkZXNjcmliZWQgZGlyZWN0bHkuIFtEbWl0cnld
Cj4gLSBBZGQgVVNCQyBQSFkgc2VyaWVzIHJlbGF0ZWQgaW5pdF9sb2FkX3VBIGNvbmZpZ3MuIFtE
bWl0cnldCj4gLSBEcm9wIHYzWzA0LzE0XSBxbXBfcGh5X3VzYmNfdHlwZSBkZWZpbmUgYW5kIHVz
ZSBkcF9zZXJkZXMgb2Zmc2V0cyB0byBjb25maXJtIERQIGNhcGFiaWxpdHkgW0RtaXRyeV0KPiAt
IFJlb3JnYW5pemUgc3ViLXBhdGNoZXMgYXMgc3VnZ2VzdGVkLgo+IC0gTGluayB0byB2MzogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwODIwLWFkZC1kaXNwbGF5cG9ydC1zdXBwb3J0
LWZvci1xY3M2MTUtcGxhdGZvcm0tdjMtMC1hNDNiZDI1ZWMzOWNAb3NzLnF1YWxjb21tLmNvbS8K
Pgo+IENoYW5nZXMgaW4gdjM6Cj4gLSBSZW5hbWVkIHFjb20scWNzNjE1LXFtcC1kcC1waHkueWFt
bCBpbiB2MiB0byBxY29tLHFjczYxNS1xbXAtZHAtcGh5LnlhbWwgaW4gdjMgZm9yIFFDUzYxNSBV
U0IzK0RQIFBIWS4KPiAtIFVwZGF0ZWQgcGF0Y2ggdjNbMDIvMTRdIHRvIHJldmlzZSBiaW5kaW5n
IHRpdGxlLCBkZXNjcmlwdGlvbiwgYW5kIHByb3BlcnR5IG9yZGVyLiBbS3J6eXN6dG9mXQo+IC0g
VXBkYXRlZCBjb21taXQgbWVzc2FnZXMgaW4gcGF0Y2ggdjNbMDEvMTRdIGFuZCBbMTMvMTRdIHRv
IHJlZmxlY3QgdGhlIERUU0kgcmVuYW1lIGFuZCBjbGFyaWZ5IGNvbXBhdGliaWxpdHkuIFtLcnp5
c3p0b2ZdCj4gLSBBZGRlZCBVU0IzK0RQIG1vZGUgaW1wbGVtZW50YXRpb24gaW4gcGF0Y2hlcyB2
MyBbMDAz4oCTMDEyXSwgb3JnYW5pemVkIGluIGxvZ2ljYWwgY2h1bmtzLiBbRG1pdHJ5XQo+IC0g
RHJvcHBlZCBwYXRjaCB2MlswMy8xM10gdG8gbWFpbnRhaW4gZnVsbCBiYWNrd2FyZCBjb21wYXRp
YmlsaXR5IHdpdGggVVNCQy4KPiAtIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDI1MDcyMi1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3Jt
LXYyLTAtNDJiNDAzNzE3MWY4QG9zcy5xdWFsY29tbS5jb20vCj4KPiBDaGFuZ2VzIGluIHYyOgo+
IC0gQWRkIG5ldyBiaW5kaW5nIHFjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBmb3IgUUNTNjE1
IHN0YW5kYWxvbmUgRFAKPiAtIFNwbGl0IERQIFBIWSBkcml2ZXIgaW50byBwYXRjaGVzIDQtMTEg
YnkgbG9naWNhbCBjaHVua3MgW0RtaXRyeV0KPiAtIFVwZGF0ZSBEUCBQSFkgY29uZmlndXJhdGlv
biBmbG93IHRvIGFsaWduIHdpdGggUU1QIENvbWJvIFBIWSBpbXBsZW1lbnRhdGlvbiBbRG1pdHJ5
XQo+IC0gVXBkYXRlIGFsbCBoZXggdmFsdWVzIHRvIGxvd2VyY2FzZSBbRG1pdHJ5XQo+IC0gUmVt
b3ZlIHJlZHVuZGFudCBjb21tZW50cyBpbiBEUCBQSFkgZHJpdmVyIFtLcnp5c3p0b2ZdCj4gLSBS
ZW1vdmUgaW52YWxpZCBVU0JDIHR5cGUgZGVmaW5lIFtEbWl0cnldCj4gLSBNb3ZlIGxhbmVfbWFw
77yMIG1heF9kcF9sYW5lc++8jCBtYXhfZHBfbGlua19yYXRlIHBhcnNpbmcgbG9naWMgdG8gZHBf
bGluayBbRG1pdHJ5XQo+IC0gQWRkIFRDU1ItYmFzZWQgbXV0ZXggbG9naWMgZm9yIERQIGFuZCBV
U0IgUEhZIGNvZXhpc3RlbmNlIFtEbWl0cnldCj4gLSBEcm9wIHBhdGNoZXMgNuKAkzggYW5kIHJl
bW92ZSByZWxhdGVkIGJpbmRpbmcgcHJvcGVydGllcyBhcyByZWplY3RlZCB1cHN0cmVhbQo+IC0g
TGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMTI5LWFkZC1kaXNw
bGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2MTUtcGxhdGZvcm0tdjEtMC0wOWE0MzM4ZDkzZWZAcXVp
Y2luYy5jb20vCj4KPiAtLS0KPiBYaWFuZ3h1IFlpbiAoMTQpOgo+ICAgICAgIGR0LWJpbmRpbmdz
OiBwaHk6IEFkZCBRTVAgVVNCMytEUCBQSFkgZm9yIFFDUzYxNQo+ICAgICAgIHBoeTogcWNvbTog
cW1wLXVzYmM6IFJlbmFtZSBVU0Itc3BlY2lmaWMgb3BzIHRvIHByZXBhcmUgZm9yIERQIHN1cHBv
cnQKPiAgICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgRFAtcmVsYXRlZCBmaWVsZHMgZm9y
IFVTQi9EUCBzd2l0Y2hhYmxlIFBIWQo+ICAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBy
ZWd1bGF0b3IgaW5pdF9sb2FkIHN1cHBvcnQKPiAgICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBN
b3ZlIHJlc2V0IGNvbmZpZyBpbnRvIFBIWSBjZmcKPiAgICAgICBwaHk6IHFjb206IHFtcC11c2Jj
OiBhZGQgRFAgbGluayBhbmQgdmNvX2RpdiBjbG9ja3MgZm9yIERQIFBIWQo+ICAgICAgIHBoeTog
cWNvbTogcW1wLXVzYmM6IE1vdmUgVVNCLW9ubHkgaW5pdCB0byB1c2JfcG93ZXJfb24KPiAgICAg
ICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgVENTUiBwYXJzaW5nIGFuZCBQSFkgbW9kZSBzZXR0
aW5nCj4gICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogQWRkIERQIFBIWSBvcHMgZm9yIFVTQi9E
UCBzd2l0Y2hhYmxlIFR5cGUtQyBQSFlzCj4gICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogQWRk
IFVTQi9EUCBleGNsdWRlIGhhbmRsaW5nCj4gICAgICAgcGh5OiBxY29tOiBxbXA6IEFkZCBEUCB2
MiBQSFkgcmVnaXN0ZXIgZGVmaW5pdGlvbnMKPiAgICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBB
ZGQgUUNTNjE1IFVTQi9EUCBQSFkgY29uZmlnIGFuZCBEUCBtb2RlIHN1cHBvcnQKPiAgICAgICBk
cm0vbXNtL2RwOiBtb3ZlIGxpbmstc3BlY2lmaWMgcGFyc2luZyBmcm9tIGRwX3BhbmVsIHRvIGRw
X2xpbmsKPiAgICAgICBkcm0vbXNtL2RwOiBBZGQgc3VwcG9ydCBmb3IgbGFuZSBtYXBwaW5nIGNv
bmZpZ3VyYXRpb24KPgo+ICAuLi4vYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC11c2IzZHAt
cGh5LnlhbWwgICB8ICAxMTEgKysKPiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jdHJsLmMg
ICAgICAgICAgICAgICAgICAgfCAgIDEwICstCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBf
bGluay5jICAgICAgICAgICAgICAgICAgIHwgIDExOCArKysKPiAgZHJpdmVycy9ncHUvZHJtL21z
bS9kcC9kcF9saW5rLmggICAgICAgICAgICAgICAgICAgfCAgICA1ICsKPiAgZHJpdmVycy9ncHUv
ZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgICAgICAgICAgICAgICAgfCAgIDc4ICstCj4gIGRyaXZl
cnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgICAgICAgICAgICAgICAgIHwgICAgMyAtCj4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1kcC1waHktdjIuaCAgICAgIHwgICAy
MSArCj4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLWNvbS12Mi5o
IHwgIDEwNiArKwo+ICAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLXR4cngt
djIuaCAgICB8ICAgNjggKysKPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVz
YmMuYyAgICAgICAgICAgfCAxMDcyICsrKysrKysrKysrKysrKysrKy0tCj4gIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC5oICAgICAgICAgICAgICAgIHwgICAgMyArCj4gIDExIGZp
bGVzIGNoYW5nZWQsIDE0MjcgaW5zZXJ0aW9ucygrKSwgMTY4IGRlbGV0aW9ucygtKQo+IC0tLQo+
IGJhc2UtY29tbWl0OiA4ZTI3NTVkNzc3OWE5NWRkNjFkODk5N2ViY2UzM2ZmOGIxZWZkM2ZiCj4g
Y2hhbmdlLWlkOiAyMDI1MDkxOS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBs
YXRmb3JtLWY4ODU1OTdiMzU3Mwo+Cj4gQmVzdCByZWdhcmRzLAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
