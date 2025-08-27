Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7AA3CA0FFB
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 15:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xdDkzYei5gchcAqSeXATMYhIjdfgQBpdeqLz7rLcso=; b=zJZJE2yzRBB1K3
	CPWG2putWhl8rumbN+2BpCWERDKT2fNInMfMap2qeb04+J114E2/ch0kk7aj5EtNKdXMnlk+bwxzF
	f82P2E2MuPz06BEY3a3pf/34jndUbErvv2Ig/pNfBg0xKY9qgV+L3Qrwnp4/9mNzqUtPzzvLaL1fv
	mROP6m2kxlV7A8eRdl6X09oV1nr9qCWMnwyBN2F7HAyqcE0bvePI/DRXYqyIdsBjBiSW+J6eBaU27
	qcvR4QXaEwl6uSJZxzxm4xK4FOTSCuK0WS3TbSST55rDJ6+MBkmdPvE8iFWtZDtusyiFwvmgSaQSn
	BNKzIT4tpe2msnxcVc2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIQb-0000000G0sg-1unQ;
	Wed, 27 Aug 2025 15:51:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urF69-0000000FP8E-3PJg
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 12:17:55 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R6kAY4029193
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 12:17:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X8RSqvNCRDDgijasg0nbutFMmtBqyja8T4LtC7m2lA8=; b=lR8vuIvdVjrFz78j
	ZphFCEx85h7qmFpG4lXcHddG6+Uo/V6xt+7hh51h9rUmisheQ/iPYr0OHEDEYnsM
	Wt9dfgxex3zll6bUY1mXRrVSULlVA1pFczVpGvBsM9QtZ+j9WdlF1XvhxgvYMthp
	r2NY1ev16MXzsOTvfUjrWyfo+tnHs7TdEIINU4XQac0ygWRPBBci1JV7hjE7VGEM
	1W//Rw9/SIszUvctz6T6wpKOCoR6IpbB8wDNmFpxQEl/pQCeRogqEW2LXLimkmPS
	RLJvSgZPvb+6nYNgNhVO4HdLoUvX+u3wgGinYyuXSD+old4avxQkFK9T0vD0pIx1
	1OaPMA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2vqkq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 12:17:51 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2465a387372so14403205ad.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 05:17:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756297070; x=1756901870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X8RSqvNCRDDgijasg0nbutFMmtBqyja8T4LtC7m2lA8=;
        b=jStzeoOEm31mOlDJbpzMY1LgsmKm/Y9sTSw7fX0IJJT4QUyCntIzzrMorQPlYjpSTZ
         w7gUaQ/gDEr+pT4KMFfeW0qcbVJgrHxbgHZWzSC6J2f2XWoTQuYHNymGTNRyloAIRnCG
         AzihVAPybhpkOUFOfbAklrnCZe4LP/lW17efVfmOEMgPRlg8gCfMkveZJkEe8CPTF4sD
         bpu3+Lu/dQw8+eKK6bGvTA4Adqy0hCb3oWHwERriBF/w8uHIUJG0neUkQhJw2yE3Oi5H
         FgYDSTpNZHh/RQOrKPo5lqNPP5QVnbDzZILrEke4bMuMxwweH9gt2ArDV6PEiddTFZUZ
         0/hQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+UHZGB+47vcaDidXQiyPLRm3VsZvyB9WkPIggilPG58X2ENbG1YATCgeA2c6so2JWr+z8NIAvsT0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzz3jCd6mieKR8weyYqkwj5kcPTtLtTYNfw9suRX+tLz5l9kfxU
	w3YDyBnEWSBGG16BkD0+z9iu0I+SIPG2CPG9fwxra5pQljA2QNSgBGQV7Sn9xYKeLiM6U3fyJpo
	1pCEg61YnUxzYeA7/7XthkTOyZ3fERqQgeu1rnZXfSKqXQqh+0Ot9dItyujJPORH62Ks5
X-Gm-Gg: ASbGnctiu+Boloyy7e8p5ftL2FZXRrgrw9bLSnTOG8msWAs4UuSCpJxRYPGnZ39Qd92
	tEW53CYB5EZLYve3IbpZh8LBwTEFsKafunEnSxqxps5DdaeHUcU/RrYuPku9tZ13Wj6XA4iiHDu
	OOhDVncteldNu202XlqppNBEM+JiaaEV9/rzkv9qDc0LRxXfojUVOslQ6ee3UetVaCgEjLmxskr
	0Zn5ljwGNVpGSKBk8I6bGsWBGhtnPYZNHcWhvBQlABFcbUYhfCwZAihbA6FqXwCuObsCYLOO03J
	kKb3ssFa02djPyt6jCEqzacLF9tvNU66642EyN/bYGLVxd+0LS2xkVbI8GT+p6TK931YfZZNVdw
	IykU867DkBLZHAOc/8ev5g0nQW6xVew==
X-Received: by 2002:a17:902:fb8b:b0:248:bf0a:a127 with SMTP id d9443c01a7336-248bf0aa1bfmr1663195ad.1.1756297070516;
        Wed, 27 Aug 2025 05:17:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWwdfvw8f7MeJn13rr7IAskUSFh8jN+On8IyJ79l4iyWHwbCU7vdfd6HxX6olsZxDiEsjN2A==
X-Received: by 2002:a17:902:fb8b:b0:248:bf0a:a127 with SMTP id d9443c01a7336-248bf0aa1bfmr1663025ad.1.1756297069957;
        Wed, 27 Aug 2025 05:17:49 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3276fcd3285sm1910956a91.14.2025.08.27.05.17.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 05:17:49 -0700 (PDT)
Message-ID: <9bf7f51b-dcfb-4ff8-848e-dcf144936f2e@oss.qualcomm.com>
Date: Wed, 27 Aug 2025 20:17:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-9-a43bd25ec39c@oss.qualcomm.com>
 <3pr7ninjxr4pgsz56dr6ojjmx27fzzszmtt6mx4r6qaqt25tnc@nrgx5qiqc7z4>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <3pr7ninjxr4pgsz56dr6ojjmx27fzzszmtt6mx4r6qaqt25tnc@nrgx5qiqc7z4>
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68aef76f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=eEvFyuGTnR1_S7nXHuIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX/bCxw10tE1cf
 DMu1Sqz1m1JhF4W1DoLfPFxo1z050tXq+iaIZcsBEvKMqlXGMFWYa7M2gi8HvtnZoBxl9l0txSi
 1ewOLJdxjGYA4K6ujiFfuOJzzeVxRTTSm8vVD1omB9znKunVZ0QGYZRIJGC7ryfuXlAjZ7bXkjt
 9jgTLrLAtQbUHO06AH34GUs1f1OkV/NVtOk8tszW8yC/u4PH6o2GdL6qQAfx7f5z9bTVyyRjgEo
 5isok3X6qi4dtvt1RgjCUGJrUFSxDiwd9JOM9llU3BP41ok7Hts2fft+nzfPEGR3a3BIVwgm+Hc
 RwxCNeIhNvkcpkuTT1jVm7cjqrCyO+wZnNF83spUO//0SDX12UsuepHe4ylI+akB4K7PRl6xLdR
 HFVyUr96
X-Proofpoint-GUID: Feo8_m9ND35TUzw_mcm7G1CPykTqyKgV
X-Proofpoint-ORIG-GUID: Feo8_m9ND35TUzw_mcm7G1CPykTqyKgV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_051753_859108_47CD7D13 
X-CRM114-Status: GOOD (  20.37  )
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

Ck9uIDgvMjAvMjAyNSA3OjQ1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDA1OjM0OjUxUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBE
ZWZpbmUgcW1wX3VzYmNfZHBfcGh5X29wcyBzdHJ1Y3QgdG8gc3VwcG9ydCBEUCBtb2RlIG9uIFVT
Qi9EUAo+PiBzd2l0Y2hhYmxlIFBIWXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWlu
IDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAxNjMgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDE2MyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYwo+PiBpbmRleCAxNTA4YTRhNWY1N2Fm
Zjg1MzE4NDg1Yjc5NTI4MzI1ZjI4YTgyNWE0Li5hMTQ5NWEyMDI5Y2YwMzhiYjY1YzM2ZTQyZDBh
NGY2MzNlNTQ0NTU4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdXNiYy5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11
c2JjLmMKPj4gQEAgLTIyLDYgKzIyLDggQEAKPj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4+
ICAjaW5jbHVkZSA8bGludXgvdXNiL3R5cGVjLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvdXNiL3R5
cGVjX211eC5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHktcWNvbS1xbXAuaD4K
Pj4gKyNpbmNsdWRlIDxkcm0vYnJpZGdlL2F1eC1icmlkZ2UuaD4KPiBUaGlzIG9uZSBpcyBub3Qg
bmVjZXNzYXJ5IHlldAoKCk9rLCB3aWxsIHJlbW92ZSB1bm5lY2Vzc2FyeSBhdXgtYnJpZGdlIHJl
bGF0ZWQgcGFydC4KCgo+PiAgCj4+ICAjaW5jbHVkZSAicGh5LXFjb20tcW1wLWNvbW1vbi5oIgo+
PiAgCj4gWy4uLl0KPgo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIHFtcF91c2JjX3Vz
Yl9waHlfb3BzID0gewo+PiAgCS5pbml0CQk9IHFtcF91c2JjX3VzYl9lbmFibGUsCj4+ICAJLmV4
aXQJCT0gcW1wX3VzYmNfdXNiX2Rpc2FibGUsCj4+IEBAIC0xMDk1LDYgKzEyNDgsMTYgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIHFtcF91c2JjX3VzYl9waHlfb3BzID0gewo+PiAgCS5v
d25lcgkJPSBUSElTX01PRFVMRSwKPj4gIH07Cj4+ICAKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGh5X29wcyBxbXBfdXNiY19kcF9waHlfb3BzID0gewo+IFBsZWFzZSB0cnkgcmVzdHJ1Y3R1cmlu
ZyB5b3VyIHBhdGNoZXMgc28gdGhhdCB0aGVyZSBhcmUgbm8gdW51c2VkCj4gd2FybmluZ3MgaW4g
dGhlIG1pZGRsZSBvZiB0aGUgc2VyaWVzLiBZb3UgY2FuIHNwbGl0IHRoZSBuZXh0IHBhdGNoIGlu
dG8KPiAncGFyc2UnIGFuZCAnZW5hYmxlJyBwYXJ0cywgdGhlbiBzcXVhc2ggdGhpcyBwYXRjaCBp
bnRvIHRoZSAnZW5hYmxlJwo+IG9uZS4KCgpZb3UgbWVhbiBpdCdzIGJldHRlciB0byBkZWZpbmUg
YW5kIHJlZ2lzdGVyIG5ldyBmdW5jdGlvbnMgaW4gdGhlIHNhbWUgcGF0Y2jCoAoKd2hlcmUgdGhl
eSdyZSBmaXJzdCB1c2VkLCB0byBhdm9pZCB1bnVzZWQgd2FybmluZ3M/wqBBbmQgZm9yIHRoaW5n
cyBsaWtlIHBhcnNlX2R0IGFuZCBwaHlfb3BzLAoKaXQncyBmaW5lIHRvIHNwbGl0IHRoZW0gaW50
byBzZXBhcmF0ZSBwYXRjaGVzIGlmIGVhY2ggcGFydCBpcyB1c2VkIHJpZ2h0IGF3YXk/CgoKPgo+
PiArCS5pbml0CQk9IHFtcF91c2JjX2RwX2VuYWJsZSwKPj4gKwkuZXhpdAkJPSBxbXBfdXNiY19k
cF9kaXNhYmxlLAo+PiArCS5jb25maWd1cmUJPSBxbXBfdXNiY19kcF9jb25maWd1cmUsCj4+ICsJ
LmNhbGlicmF0ZQk9IHFtcF91c2JjX2RwX2NhbGlicmF0ZSwKPj4gKwkucG93ZXJfb24JPSBxbXBf
dXNiY19kcF9wb3dlcl9vbiwKPj4gKwkucG93ZXJfb2ZmCT0gcW1wX3VzYmNfZHBfcG93ZXJfb2Zm
LAo+PiArCS5vd25lcgkJPSBUSElTX01PRFVMRSwKPj4gK307Cj4+ICsKPj4gIHN0YXRpYyB2b2lk
IHFtcF91c2JjX2VuYWJsZV9hdXRvbm9tb3VzX21vZGUoc3RydWN0IHFtcF91c2JjICpxbXApCj4+
ICB7Cj4+ICAJY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPj4KPj4g
LS0gCj4+IDIuMzQuMQo+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
