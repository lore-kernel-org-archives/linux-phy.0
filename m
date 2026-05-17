Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80767CD4F4A
	for <linux-phy@archiver.kernel.org>; Sun, 17 May 2026 18:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hn4zIcktYRr2ygCxq1cF1SOLtMqUffrk/gcyh+WBiX0=; b=Rpx7HyXZSVcpg3
	yStlaPaHI5kD+ymOOfhg9f0vN9p760tZqEy+m5TsXqHPuqSdEwnQGHj8v2dwxR8wh6eW5TFICQAtb
	hKCN/B+lQpQQQTPsOh4FLVIbl12Aat30Eub8m4cB93wSp0Rl1XlpKMUivhIIanQa9YYM8lOUqYaWe
	9se0IWjPSq0bukvoF90/mF5XrZ1pbnBVm320UVRZghygwQckRiciCqJ5HokDRwdrICtj+FH2GgMoR
	i0e9Pqluw0nSEzjrW4jcwgfU7ZpufSFEaCGQ/o5dktQjKSsNiZNEhs28ALVmKdNi1bnSK/kX+hy/W
	421e4UmLAH7iSLdbMDYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgBL-0000000DDpB-0DzH;
	Sun, 17 May 2026 18:25:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgBI-0000000DDoH-1ikT
	for linux-phy@lists.infradead.org;
	Sun, 17 May 2026 18:25:41 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64H3wIth2749800
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 18:25:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0hIgd5emPImxsCYoDNvc3nRtQaDZundm1lfilHY8CfE=; b=mAmwSLz8eHCshU3L
	eVkVOLIP4k8QCd64PSX3UV2BqIP/+5RGoRu4VpWbR4zqiZFT4utbPSj31iqzKLDG
	rQOYJkV9fv3zZSOz6DLJcG67gLeulTtC4TegOYSv06GcGxTAmyxkqSYnySHzNbO0
	np5Dcu5glYGjMQCeiWoWdQt1JSp44ZPmqnEMQq7a2IEDlMv55M8UH2t+IMKVSUkF
	58M+j9wtnu/8fpsHUvOauNw68pNLVGZwgcjl5OMkM0LU1c+HETUZwGZ99nNo2wD4
	0hyT6fFxAn5gBagZ1npAsWXPeGzg5k0tije10qv21chQXHYn6MszILHrIrHV5Q1d
	FPobaA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6h01kcf7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 18:25:39 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-367cb6de61aso102641a91.1
        for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 11:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779042338; x=1779647138; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0hIgd5emPImxsCYoDNvc3nRtQaDZundm1lfilHY8CfE=;
        b=Ftl3EUB6XZw1D/95y5TP30Y5h9+zKLC7+dJr8cJABg2y/xEhdcSpNBzsKjxEmhCtz2
         9cenpfcara51qc5lbI47k3Hn+8d6yrbIE7AO0DrRGptgy2tYJp/oi46/un1CNfz5G6Mx
         mJsjpt+HSzF+k3YP4trnLgw5YXErI7XJNsXZ0lXZWk8BlsHTI5Y88dA+JyClZ8vxo6vg
         6y5zYS8Rds4+MChFgV893q0CNfpW5QxbykRVe/d2Nv36SKpeCohI5+WuCwNEjQLTCX9I
         9rqmaOEpEqLUNAmv5uWKTPLObB9GVeqhkN8XojD9CNB/U0Q55hLoSyCIulUpqK2ti01u
         tApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779042338; x=1779647138;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0hIgd5emPImxsCYoDNvc3nRtQaDZundm1lfilHY8CfE=;
        b=bvNl14hMQervj67bdl4NTU6afNh1hTl1PCSnmvANbQljWo8ZhSCpfsB1mmWoFPKNvX
         T28CwypCQSuM5+V7utZrALhhg8CpJP0y0CylVUd/g1usKQKB4lORzGi/l0jkdn55ElIY
         AzCl6Chjjlb4tYo2HPx2CXloUq/k5ivVR2+3r/a79Ss3myUkaj+a2Fp/TlTkk0gWY9yw
         RvOOLVP/90igIzg9DV9IfCiLrWIAl9USoxD53IHb/YTu17BtecARU3D6uQcLBZnh+Igg
         b/eG0mx8lONgl5WwVqH06RbE3WINSPXj2j60UGUs6wOjoROyCoVF0cHnMrzEzaPDTrAa
         zNnw==
X-Forwarded-Encrypted: i=1; AFNElJ9MRqbQ5X+1TRjj0nzjNo4D5SrY/VOLqZrFBxrTVPnSvi8tAIlRHO5VFww3i8gLDKus8npw9MlKMFk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJg/38jf72a/tZQEh7NxTeNaUMMZKzhwTGkR6G/HEXAbNHVqQI
	YE/I5SKdBYEXuQ3AcGmJyNQc6NJ7dPsWxRKYNeOL2jViuj1bNckkpOKXaeXEa/NKzuAqjdGAddV
	LtcH0W8xL3T6yx1VuCbK6rRXfkN1jDd1bWHm7XO1pCBh4UQd3L8uBMDgL+j941iLpjdBn
X-Gm-Gg: Acq92OENgspoPFhD2xVeniCT8nSD0hGHIURHe+B7jyM2MZdw6OgI9UA/50ukcEoFWeu
	h3m0dB+QotvgODdIQxMG+iD2WDj03BENJWXbGQXrK6VFRcIKMi9t7b3jXfGbLz3HX7NF4Sh4Otc
	qJmnVV89y3BrX6Ixl/NHuoNxJ+OiNfyu4PBHlNhxRTKLdLdnvot+59hqIcP8AR8Tx0gzxvWyMS+
	fy0jndZ4px0ysPpOpealLRd0Z7ERBPo96jw5fZ02frmSneUCS6rcf4tAWX0tJg6mzZvl8mQzh0x
	llxqLWQBo59twpjzi0aBk772B61AkWXvgogAaog6hqefeYlEvnzV+wVXIyxDjRDWLIPwzJ0yAYK
	eQcOqNEiLwVlY4+A3DuLjbAaqHhaMIBxfGxpGqnDQmvDhp7g+NaM=
X-Received: by 2002:a17:90b:57c7:b0:365:7e4d:bcb8 with SMTP id 98e67ed59e1d1-369519cdb59mr11841966a91.1.1779042338041;
        Sun, 17 May 2026 11:25:38 -0700 (PDT)
X-Received: by 2002:a17:90b:57c7:b0:365:7e4d:bcb8 with SMTP id 98e67ed59e1d1-369519cdb59mr11841940a91.1.1779042337545;
        Sun, 17 May 2026 11:25:37 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.235.85])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36951278e7fsm8478759a91.8.2026.05.17.11.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2026 11:25:36 -0700 (PDT)
Message-ID: <68dc84ac-794d-49e5-a834-e7a582753b07@oss.qualcomm.com>
Date: Sun, 17 May 2026 23:55:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: Introduce Shikra SoC base dtsi
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
 <20260512-shikra-dt-v1-2-716438330dd0@oss.qualcomm.com>
 <ced00124-9ba2-49ca-9200-62abd6ac3340@oss.qualcomm.com>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <ced00124-9ba2-49ca-9200-62abd6ac3340@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 20yJkH0_OJvoZDYKMmxKBxpDu_tbhblS
X-Authority-Analysis: v=2.4 cv=XbG5Co55 c=1 sm=1 tr=0 ts=6a0a0823 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=g4/7f0GlZvY0MGcqtTB0Sw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=91D59dQ6MEgKE8FQPpwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 20yJkH0_OJvoZDYKMmxKBxpDu_tbhblS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDE5OCBTYWx0ZWRfX9Uw9ROsP0UTm
 2BHipRrna8tJwBGtQE2UT0cGTciYMVrr1yO3c63qkdb5jIo4IvYEV7ZYCnFVXPz59VIBs8zX1uB
 IwT5r3RB0yTkur9hylTwnb5Z3GWA78hw0bxbAZ6/bNE3vhJIattW0kd7jwxIpRD/+IvVBz8ZAcX
 W5VfmBUcM8hh9qFy6PSgLr1eOsaCJ1Q7piF6yWJImLsiDAEEmQyCnHN/BFlCBGymPapArJSZ9TZ
 wIoBgUb1tj1Px6i/hezHhnlAP3A/Gt5sSPxSh6+2V8Jah1XalZ+od3+8Rypw/EpUF1fI15t2q+S
 LDkrHBFXjfWFNOg70lbMaqpdOLEyI8euf1drBb70uuBKjHz9ZvwOzDlEYBmeREGnBKnvoY5a4S8
 dO381pMfPbEiXJ+wPxtlrDvSZ+lcdBL6iTQ4Wc4w4S/8itFe5hdJ8HzS4sahbAuZ6BU+1w37r8m
 eEHI9snf6Qnv6pQBAkg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_04,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605170198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_112540_567556_B2E6E78E 
X-CRM114-Status: GOOD (  11.98  )
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

T24gNS8xNS8yMDI2IDQ6MDcgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gT24gNS8xMi8yNiA2
OjA4IEFNLCBLb21hbCBCYWphaiB3cm90ZToKPj4gQWRkIGluaXRpYWwgZGV2aWNlIHRyZWUgc3Vw
cG9ydCBmb3IgdGhlIFF1YWxjb21tIFNoaWtyYSBTb0MsCj4+IGFuIElvVC1mb2N1c2VkIHBsYXRm
b3JtIGJ1aWx0IGFyb3VuZCBhIGhldGVyb2dlbmVvdXMgQ1BVIGNsdXN0ZXIKPj4gKENvcnRleC1B
NTUgKyBDb3J0ZXgtQTc4Qykgd2l0aCBSUE0tYmFzZWQgcG93ZXIgYW5kIGNsb2NrIG1hbmFnZW1l
bnQuCj4gWy4uLl0KPgo+PiArCXBtdSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAiYXJtLGFybXY4LXBt
dXYzIjsKPj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDUgSVJRX1RZUEVfTEVWRUxfSElHSD47
Cj4gQ29uc2lkZXJpbmcgdGhlcmUncyAyIGNvcmUgdHlwZXMsIHlvdSBtYXkgbmVlZCBzb21ldGhp
bmcgbGlrZToKPgo+IDljZTUyZTkwOGJkNSAoImFybTY0OiBkdHM6IHFjb206IHNtODY1MDogc3dp
dGNoIHRvIGludGVycnVwdC1jZWxscyA0IHRvIGFkZCBQUEkgcGFydGl0aW9ucyIpCj4gMmMwNmUw
Nzk3YzMyICgiYXJtNjQ6IGR0czogcWNvbTogc204NjUwOiBhZGQgUFBJIGludGVycnVwdCBwYXJ0
aXRpb25zIGZvciB0aGUgQVJNIFBNVXMiKQoKVGhhbmtzIGZvciB0aGUgcG9pbnRlci4gSeKAmWxs
IHVwZGF0ZSB0aGlzIHRvIGFkZCB0aGUgcmVxdWlyZWQgUFBJIApwYXJ0aXRpb25zLCBmb2xsb3dp
bmcgdGhlIFNNODY1MCBhcHByb2FjaC4KCj4KPj4gKwl9Owo+PiArCj4+ICsJcHNjaTogcHNjaSB7
Cj4gVW51c2VkIGxhYmVsLCBwbGVhc2UgZHJvcAoKU3VyZSwgd2lsbCBkcm9wIGl0IGluIG5leHQg
aW5zdGFuY2UuCgpUaGFua3MKS29tYWwKCj4KPiBvdGhlcndpc2U6Cj4KPiBSZXZpZXdlZC1ieTog
S29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+Cj4gS29ucmFk
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
