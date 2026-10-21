Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643B9606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tjjBtxpe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UlTyuTus;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OFysi1dG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvIqJigzIFdlGH5LRt5Y86PThzywXKcgm+qUhiMFfK0=; b=tjjBtxpebAYEdf
	UFsd3/txBJAqyb1Ztx5uDIsPtK7K4/7aNE7agIPGIMBbaCAmv0CtuJsiRU0AZ6izhov6UHhnrQB/0
	wnpmFBbB3tgBEcVh0Jp+nEnNFSdd+rP6e0Sor27vIy2eV+Sr3px/AfeJ7JCau+6wJ/0R9zmVLADz4
	Um3I4jsQkGQNUUwN5E7hbrm6HIGQeSowbkF2E/7fV7HbQ5Oau1A4rswqAeNvV6kRHgmIU1K2KsBMu
	C4YGog5+PQNT43ZhK/BMgohkFMYZHPdkWb9PYV/26cm6RuK8uTXsTHxTMLvs8URmh1IHLsGBfgTCt
	GJDHBoqreA7Gmw4qBR+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUJ5-0000000BiDD-2wfo;
	Wed, 21 Oct 2026 11:16:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUJ3-0000000BiCg-3kOf
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 11:16:31 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LA6Eqw1358810
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 11:16:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fkPmOzv3OgvoRDjNIIWJpFQ5aARxfWx4gdCqfd4sloY=; b=UlTyuTuspJTbmMcH
	TbrdWoyGP9Fc4ksN8AP603nQ5JSMitl6SGjKkcJL6A1xjJ+RvA5CB4Buzq0FYP6P
	zO/EhRjitSuLTpqfPj/KiOqAZUouh1jnh2a29eP0ZMWFBaAfUiKryACuZmjToJdE
	2+FB8XRZmYUKQupgsJ4TenV8dLAldxr+Mj5TQc+aMatuvNZfCsWHVqAXWRAbxUrq
	1tyUC1rpg33NVSZeVbqngcKuycHB99rNqcs/FMRbujq5Lpmiwi7frL/ChtxIHlwz
	rZqPFNvYjnNBGfgNjsk2MeOWjCeJ55jUug1EkcHLLTRg1rh+JJLh+EjZb4kh2q7J
	fztWUA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4heda4umag-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 11:16:28 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3ac77c3ff6aso951756a91.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 04:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792581388; x=1793186188; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fkPmOzv3OgvoRDjNIIWJpFQ5aARxfWx4gdCqfd4sloY=;
        b=OFysi1dGBIWLzecb4UyTKGrK0jpYC2qjkAnwgB4VeNXrajW5mSVbC6qUg8pGqB1/2o
         vk/YXByAoc8P1DIhEkvSGClibhpFvGoMTIC3Jg7edunrBuzvZgVlhyjosUj3itE+I/m6
         B6frNCJaR3+es/cjy3T6svg0sSU+MkNunzvLh6GkWrr899Ch0tce5S2euPmZhRVF8ve3
         Z4MSZSQxPzsz0iKZB6rUg7w+iKSvccK/zT96D/2KiATEt9VmqDJyONOdEEX5Ok6Qft+6
         LVKMVC3MzBbRwq31XYyZINYAPeXPOZLKyHWvav+zVXM7yW9YPgq842Z2w5ip7lLEE9o3
         qq0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792581388; x=1793186188;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fkPmOzv3OgvoRDjNIIWJpFQ5aARxfWx4gdCqfd4sloY=;
        b=x3W0wXN1w59xDJlQJWi7KtYUJ40sVmNK7mGdYICuCS20Q6rYFZEEEvYHsWyU5avC/b
         8owe5vVcuQFfgjAjGEB7zs3exxLZ4KjcJNZehjwZ6w1FpXguAz71cXt4o/428U4rLA8D
         5squjE2k9tSCk5xddJJm7yKKNLL8t7xJRT/oMF6Z9AiN1/rseXRFEqV3GHChd5clI95+
         wU9h7XOCnZ+IGOWx/u+0f7buEpH1qTUVQpFiefNZGHCCyRmGJpXj2CzemY7Jws7m59y7
         N1FAmRtIbFeEUa8DE9MUAhRKysp3Aiyyjyzr+gmrnTA+DVfZcK18DGMCbHQuF7cQY0hm
         JKxg==
X-Forwarded-Encrypted: i=1; AKwUvByhQmRM2ZsNc4ncXxDvkKzjRmZKWx2k5DhZQLrmwfsxou0PjzkABhYPV5m5jL5rx7keIF3fJXk40rA=@lists.infradead.org
X-Gm-Message-State: AFq9FYJs2nu8vT71bXvBorulmzTuav+2gxteJ3ss2q4JC+aitlJREoek
	uM3wxCmvOONWCvhEQytfnVwflILo33aM4baPZE3B4W9sd4D06RTXSk+Xhnkrx/ilrwrRU3hYWYp
	WOYnnieRirXNNt9JuPBOEM4saDgSTWFNC6Dg94jIpOybh61VmF5XIO6hNrQpEzXF/CbJ3
X-Gm-Gg: AYBFou1eYUxXLOmmjrflNi1MH5QsTUGkJxQMLAE5fkJij/4vk0dR++WTjSTW556ec1x
	W0oiAZ6Zwl/UNVPAlaN5pQN+Rkz3nofDiKKd47i5QiIJWcE+xs7s/+4mpHfSu2YmVOOUtkBNtCo
	rK0ZV7TUr4eX9QhVz41fvLGzboKifCqy+QQ2qdrxMrQyFA4IU/Vj1SuBH7aI+8AFhyRF+z39bWJ
	s+Qh7AuXueXNIpWFMnE+ELncRURvQ6injiDd0dMmQ9Kxw31yPBj2Nc/j6KqlxFpIB2u3ImAfUAy
	D9YtGoaxi/AOSoWY2xORqWrJud+eQZCZ7l7k0KJCLdaURKPvClCAohTKO+0UkulyrNYss294a/I
	QbW0p1A0IgoUnnHhJg0hmtDAXE4Uk
X-Received: by 2002:a17:90b:55cd:b0:3ac:929d:ba5c with SMTP id 98e67ed59e1d1-3ad86f49b66mr1399606a91.45.1792581387611;
        Wed, 21 Oct 2026 04:16:27 -0700 (PDT)
X-Received: by 2002:a17:90b:55cd:b0:3ac:929d:ba5c with SMTP id 98e67ed59e1d1-3ad86f49b66mr1399567a91.45.1792581387068;
        Wed, 21 Oct 2026 04:16:27 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ad80912f26sm3948228a91.1.2026.10.21.04.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 04:16:26 -0700 (PDT)
Message-ID: <425ddb41-cfd7-4032-8666-0193ab6b5819@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 16:46:17 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] dt-bindings: display: msm: Document the Nord
 DiplayPort controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-2-a2ab9af954d2@oss.qualcomm.com>
 <20261013-tangible-wakeful-swift-a38f8f@quoll>
 <20261013-honored-bear-of-cleaning-bd8108@quoll>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <20261013-honored-bear-of-cleaning-bd8108@quoll>
X-Proofpoint-ORIG-GUID: WeRFEK1lzcatRrrp5FQtl-d6Cmn5UBWS
X-Proofpoint-GUID: WeRFEK1lzcatRrrp5FQtl-d6Cmn5UBWS
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA0NCBTYWx0ZWRfX8rBjIai92kdS
 y7K/OABkxvWBn1etKj2A+DSoEiMZ2UjyXy+YrENdd+2piPcxNI11+yV43Do72gqDZ732eL6tFg4
 hDUqJ++jt94szdkDa5KsFp/pZT14eoE=
X-Authority-Analysis: v=2.4 cv=R7aWitRX c=1 sm=1 tr=0 ts=6ad89f0c cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=D6Kic2Gw2dsiznywmRUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA0NCBTYWx0ZWRfX72qnVjRjX4of
 HOthYO+zF3NOoHljodTf6w4O3zrj0E0IgzomMjDGvvC8VsWpgIhaS3/vQKWTr3mzRpJKjAM1CCL
 Zepu8UC6psxwqyM8wopG/uZC3iBR0PkC5ukfnPgfygqyzpwJ8shZCyrVTyRGk6umoMl+WxvO2UX
 j/5TdwiE0cASFo2/bI4A84/AqFUltU+DjriQZU1LHosrcWdksQAv9XacLCrcXE/G23CqX97uDI8
 ctVSQobEXW8QXnqA2fkOstUN1PaGm9UDMjYBv474ejIur8bsz0RJHh9/wuHLlBlN13gSawM8/8+
 vHd92KRMzs+hv6B3clfN4yqdr2TJenQ/s+Jidou7wZiVIntwRxrvjU/mIrLruZ8pgAAX9TWjP6X
 In9hFmyqw/ZFf/a1cCLLSiuOQ2PQFENnvex58u+v65kdIm9XoYCwVl6pTf3fUmEl+nqSXMs1Y41
 /SYunA2OfmHp96E1W6w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610210044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_041629_944355_1618570E 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIDEwLzEzLzIwMjYgMjoxOCBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBU
dWUsIE9jdCAxMywgMjAyNiBhdCAwOTo0NDoxNUFNICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tp
IHdyb3RlOgo+PiBPbiBNb24sIE9jdCAxMiwgMjAyNiBhdCAwNzowMjoxMlBNICswNTMwLCBOYWJp
Z2UgQWFsYSB3cm90ZToKPj4+IEZyb206IE1haGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVh
bGNvbW0uY29tPgo+Pj4KPj4+IE5vcmQgdXNlcyBNRFNTIDEyLjEgd2l0aCB0d28gaW5kZXBlbmRl
bnQgRFAgY29udHJvbGxlciBpbnN0YW5jZXMsCj4+PiBlYWNoIGV4cG9zaW5nIHR3byBEUCBjb3Jl
cyBhdCBuZXcgSU8gb2Zmc2V0cy4gTm9uZSBvZiB0aGUgZXhpc3RpbmcKPj4+IGNvbXBhdGlibGVz
IG1hdGNoIHRoaXMgbGF5b3V0LCBzbyBhZGQgcWNvbSxub3JkLWRwLgo+Pj4KPj4+IFNpZ25lZC1v
ZmYtYnk6IE1haGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgo+Pj4gU2ln
bmVkLW9mZi1ieTogTmFiaWdlIEFhbGEgPG5hYmlnZS5hYWxhQG9zcy5xdWFsY29tbS5jb20+Cj4+
IERvIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHk6Cj4+IERldmljZSBpcyBmdWxseSBjb21wYXRpYmxl
IHdpdGggcWNvbSxzYTg3NzVwLWRwLCBidXQgYSBzaW1wbGUgdG8gZml4Cj4+IGRyaXZlciBsaW1p
dGF0aW9uIGlzIHByZXZlbnRpbmcgY29tcGF0aWJpbGl0eT8KPj4KPj4gSWYgc28sIGxldCdzIGZp
eCB0aGUgZHJpdmVyIC0ganVzdCBhZGQgbW9yZSBhZGRyZXNzZXMgdG8gdGhlCj4+IG1zbV9kcF9k
ZXNjX3NhODc3NXAgYXJyYXk/Cj4gT3IgaXQgZG9lcyBub3QgbWF0dGVyLCBiZWNhdXNlIHRvcC1s
ZXZlbCBNRFNTIGFueXdheSBjYW5ub3QgdXNlCj4gY29tcGF0aWJpbGl0eT8KCkZvciBNRFNTMCwg
dGhlIERQIHJlZ2lzdGVyIG9mZnNldHMgYXJlIHNhbWUgdG8gdGhvc2UgdXNlZCBvbiBTQTg3NzVQ
LiAKSG93ZXZlciwgdGhlIE1EU1MxIERQIHJlZ2lzdGVyIG9mZnNldHMgZGlmZmVyIGZyb20gU0E4
Nzc1UCwgYW5kIE5vcmQgCmFsc28gdXRpbGl6ZXMgYSBkaWZmZXJlbnQgTURTUyBpbnN0YW5jZS4g
QmVjYXVzZSBvZiB0aGVzZSBkaWZmZXJlbmNlcywgCndlIGludHJvZHVjZWQgYSBzZXBhcmF0ZSBj
b21wYXRpYmxlIHN0cmluZyBmb3IgTm9yZC4KCkFyZSB5b3Ugc3VnZ2VzdGluZyB0aGF0IE5vcmQg
c2hvdWxkIHJldXNlIHRoZSAibXNtX2RwX2Rlc2Nfc2E4Nzc1cCI/wqAgClRoaXMgd291bGQgYWxz
byBwb2xsdXRlIHRoZSBzYTg3NzVwJ3MgZGVzYyB0YWJsZS4KCiBGcm9tIHlvdXIgcGVyc3BlY3Rp
dmUsIHdoYXQgd291bGQgYmUgdGhlIHByZWZlcnJlZCBhcHByb2FjaCBoZXJlPwoKPgo+IEJlc3Qg
cmVnYXJkcywKPiBLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
