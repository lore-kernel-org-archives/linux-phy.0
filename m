Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3286CA0EEB
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 00:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTXDdJUyr9yEV8iPbLoqgSJm1xDF9S66IymEgBnRvEo=; b=hQ5EINyqooc0sS
	PcI+RQWQAvUu0lnmqYyvdB+9XvKkoxbXwD5Fu/hMSLdnoQtQv3l6G1ZQZwmtGQ0xHN+yZ8PAL32Q7
	Z2yWRZHlwgXV+7OPWQ7ByYPEuIF+INC8UcAvcxbXVP1R7l4+CrJJ9tgjYH8tCSwSvTXYNr3lB9O1J
	PoJlBzqvD3YTC1myGIwDx9eF2jF5Q1Wd+nxfufFplazDDirfyjFIdWTRMsA2GFrBC9SIRgqnDLdM7
	7GIyK4uugUwMCkz+bdzCJaIVCGxgiUJ3yX+AiNiJA8vUcxiuzg6bkpkM8VjN4w7vKeZv/PT7+TNTI
	EN0cAsc1U2gHbdDb8CDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoX9h-0000000C0fc-1hb4;
	Wed, 20 Aug 2025 00:58:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoX0t-0000000Bzcj-1cjB
	for linux-phy@bombadil.infradead.org;
	Wed, 20 Aug 2025 00:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=zdGPX+sVazYZfntqn3tBRkI7w2+oZmtbp2Rt5/0C3fs=; b=Vgw3KlBayah5yQzFmgBOnLJ0qN
	MEQhTeX+RAc7s1Gn+6ggIn46mJ/aYHtO2ai0id68Rfuox5DDKTYJULkc08682zAYTWylsZM1zphDj
	zLHZKzylquilD1jmGLBJ45vbm6pHt5sAEWikutLQ9SEnNc7XR6qZJB3xhQ4UJEb/DNVULPMcMhVBo
	f7wPBkwRNa0cZ5eyD7V/B7siWprWUhT7OQV9+vICLvdELQx8uUx0kPEvwvxBALmoejiHuFjAMVuFP
	OH0aQXmqMFwVJ9ZzwikkusY7tbCknWvy0B4BTFEisp1Q4pBjiZIdMyotqMr2XnattOjxkAK96CsMh
	Iay6KV/g==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoX0o-000000008Ew-3l74
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 00:49:14 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JL1199027075
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 00:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zdGPX+sVazYZfntqn3tBRkI7w2+oZmtbp2Rt5/0C3fs=; b=LHsOTYVt5wHnufDe
	JotsIsKjFc2o1dFD1PJrJwelFm4/3qpSJEcH9kZNhO9aagvB7ka7xjPB68uTmTxk
	/LdeMTHAKCbzXDb4fgfrMAcYYilXteAzEVWSWrC41uV8FFkoGg271d009EKeaaJh
	1MlwJNMNDzwQelu3BgMHnn6oZL4zG4BTNsRFwE8UtRVJQN3nCnHKW9/YbMELWq3X
	ezZg480q9vU51xvbteNOAnR9NdKBXY1RzpuDVhmhnjyNVYjpY4290rZO3CuIBX7V
	9uvrrhXbSqjKi7XCIaxn/vuvQauYpPieg/6pdX2ojSkRzrikiWD/Dd62BjyaqNlx
	MXz7Bg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n0tfgdwa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 00:49:05 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a88daeb18so130645336d6.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 17:49:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755650944; x=1756255744;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zdGPX+sVazYZfntqn3tBRkI7w2+oZmtbp2Rt5/0C3fs=;
        b=AOhE2GHMvWe/gQZWsWLowcCqYkLlAQo/SZEjzRhP0xWaroHb/J5JaWg+cPCK7TCkAu
         EvW4y19C4pUKVEfbhIqo5kgvueh3KBsldfuMJKDvDXwf06oN2TiF8Tyuj30WVYkAqgn4
         436+E4RdM1dfAgP/1VFhWkqbjdix4oIzXYiXQ56+QAh33KAu11ax9BdqnTF22Tx7TSNy
         p0eHaqKlTmsQQ9VT5QZhFyKRwH1/yPgL1k3gRBNTwo93VYfxnnDE/RnyOEC1BPDhkiUD
         ZCt2DKE09CkgVKyiGxCATCFXtysrh2EUP1cx8zwmKED2cliGmVcw/xGwGBAEoNdh3kmI
         ScfA==
X-Forwarded-Encrypted: i=1; AJvYcCVtomg2R3iTPavvsJrRff45mjCB2IKi59MB6pDmBf6XXiShFEoRTlAsTEMjruaHLNGHBCGElCsxXHQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYmIX+u6cEq2Ut7f4aPGYrRmIN8zGaKWv0GylJRfmbbXr0XlH7
	MaGi1ucrdSdNshCDJ17BkDFU2Ss/VXMnAxP+xdZ40Gd/i1Bd7r3XBde+pMZ7V9+kOKvmCcSgoSv
	jAFDgDusvsZxmykmQHvg/aiAqu0QjPZIsRYOnmXLd5gQRRaqcGoCho3nBZA6V9swGi68pAxeioV
	5N
X-Gm-Gg: ASbGnctnK3+CwUwlw1xB9MvHZFArZ4uvwN6XZpWZwu9qTVHxbzN+cDe5uPGCD4L5Uec
	sny8iurZxi0L0LNG7RMmv3PB02DpAVkTe7Ld+nORylxrtWMvHEYW1SUMwMP6L3Ah2vG/mGWq3il
	1U2E2QjwMwzbOuCzOJHlU2ixygudjXi5tSs4Gh7Rsiv9lu1Ki6RTlp0Dxrb04bTbIB4bS3NZjZf
	UhBpgN9SmXMBTjmyqIxdH+HLfxRtkmACoNJdjpPlZkm6HhXH4O9kIQCS75B1BBOT0H7LpKt6Y9k
	317u+a9OAzvBmdZEw4j3zpGjNSjb5ppNppPF6WYnS6aKuxlzGMVf2/rFaq8XtHNyNs0ieiq7MB0
	C1PaCW5WKBgLa1HrjQpETiurCYQDxJtmXqD0sj1JkWmm2+JceWQbe
X-Received: by 2002:a05:6214:e69:b0:70a:3792:71b3 with SMTP id 6a1803df08f44-70d76f870a8mr12484596d6.8.1755650943713;
        Tue, 19 Aug 2025 17:49:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0VWxTGtLD5PU9po310OhKUtTjJ+Hk9q5X6gOfFD31dOrRi5WEbsKp8p0ifOTHNuzOWmOY6w==
X-Received: by 2002:a05:6214:e69:b0:70a:3792:71b3 with SMTP id 6a1803df08f44-70d76f870a8mr12484456d6.8.1755650943315;
        Tue, 19 Aug 2025 17:49:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a62638asm24966551fa.58.2025.08.19.17.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 17:49:01 -0700 (PDT)
Date: Wed, 20 Aug 2025 03:48:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 1/2] phy: qcom-qmp-ufs: Add regulator load voting for
 UFS QMP PHY
Message-ID: <agsqq6fwrj5paejfaefgtcz57gnxwni3l3plxpslcxdhzshuda@lypqqueqcfkd>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819222832.8471-2-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=M84U6yws c=1 sm=1 tr=0 ts=68a51b81 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=oWWDGgvsAfvsrky3NdgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE5MDE5NiBTYWx0ZWRfXyIFUImSsdvDP
 dKPYfjXyLu+uwavoelWUFeUsrJb+vyQG+zu48fhdTKhwcfAcr6I7w5nrPpn6mLx5CH8QKk8eaOG
 iQc46Xzk8jejoO/GiSjhTBS+AYgT2g3C8O2g5KVU1l2d2dhZqXJbK46gM4F494R/kNQ2mp2gC9i
 iQyiFTpBzAYNV/kxkoKaRFFep5+8cDM7n1zKwpk9LanngZVY+8lOWbbipf4zcyjpAFkz8vDJJvS
 We+mmfROJLX/OB7xsgMWfE7k3Am/BESiIFbCT90UtvvUIicoLLQ0A7RHcX/CJO3hF4MwU0wI2PS
 /h7X+rr697NQkBGJBZFHBwreRWhFlLd/SwUu5EMFoEBy0mpLB6FxNFEF0eMjw0tbRpY3iARRMbp
 dR/486vpJ0cdL4Gu0YPJkhvqVCcR/g==
X-Proofpoint-ORIG-GUID: pxvuf6LvIY8ufeoxX_bniZn7TSl2_J6z
X-Proofpoint-GUID: pxvuf6LvIY8ufeoxX_bniZn7TSl2_J6z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508190196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_014911_564107_627685A9 
X-CRM114-Status: GOOD (  16.30  )
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

T24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDM6NTg6MjVBTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gT24gY2VydGFpbiBTb0NzLCBwb3dlciByZWd1bGF0b3JzIGFyZSBzaGFyZWQgYmV0d2Vl
biB0aGUgUU1QIFVGUyBQSFkKPiBhbmQgb3RoZXIgSVAgYmxvY2tzLiBUbyBlbnN1cmUgcHJvcGVy
IG9wZXJhdGlvbiwgdGhlIHJlZ3VsYXRvcgo+IGZyYW1ld29yayBtdXN0IGJlIGluZm9ybWVkIG9m
IHRoZSBVRlMgUEhZJ3MgbG9hZCByZXF1aXJlbWVudHMuCj4gVGhpcyBpcyBlc3NlbnRpYWwgYmVj
YXVzZSB0aGUgcmVndWxhdG9yJ3Mgb3BlcmF0aW5nIG1vZGXigJR3aGV0aGVyIExvdwo+IFBvd2Vy
IG9yIEhpZ2ggUG93ZXLigJRkZXBlbmRzIG9uIHRoZSBtYXhpbXVtIGV4cGVjdGVkIGxvYWQgYXQg
YW55IGdpdmVuCj4gdGltZSwgd2hpY2ggdGhlIHJlZ3VsYXRvciBkcml2ZXIgbmVlZHMgdG8gbWFu
YWdlIGFjY29yZGluZ2x5Lgo+IAo+IFRvIHN1cHBvcnQgdGhpcywgcmVwbGFjZSBkZXZtX3JlZ3Vs
YXRvcl9idWxrX2dldCgpIHdpdGgKPiBkZXZtX3JlZ3VsYXRvcl9idWxrX2dldF9jb25zdCgpIGFu
ZCBpbmxpbmUgdGhlIHFtcF91ZnNfdnJlZ19pbml0KCkKPiBmdW5jdGlvbi4gYWRkaXRpb25hbGx5
IHJlcGxhY2UgdGhlIGFycmF5IG9mIHJlZ3VsYXRvciBuYW1lcyB3aXRoIGEKPiBidWxrIHJlZ3Vs
YXRvciBkYXRhIHN0cnVjdHVyZSwgYW5kIHV0aWxpemUgdGhlIGluaXRfbG9hZF91QSBmaWVsZAo+
IHByb3ZpZGVkIGJ5IHRoZSByZWd1bGF0b3IgZnJhbWV3b3JrLiBUaGlzIGVuc3VyZXMgdGhhdAo+
IHJlZ3VsYXRvcl9zZXRfbG9hZCgpIGlzIGF1dG9tYXRpY2FsbHkgaW52b2tlZCBiZWZvcmUgdGhl
Cj4gZmlyc3QgZW5hYmxlIG9wZXJhdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdh
dCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXVmcy5jIHwgMjkgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKPiAKClJldmll
d2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5j
b20+CgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
