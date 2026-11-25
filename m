Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF4B606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 15:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VUbAHxJH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=OpB6FU//;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WTQ7s1rm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Uyk3w/HSzBtVX5fSMbXKYiDBM4+JrKO1pCz2S7e8SAk=; b=VUbAHxJHr4pAxUyNDJE+Jt01lf
	BifBG+QIonMmfG8BxjrcT5I0uz6ZcbpEx+G4RiGwFmmPZZkU0Zj037CIfMB6B012hKEELWTT99I0s
	3jszHj5ZzPVmaF0c41GpVXMyC8+Tz5+qkB926SpG0X++18Tuc+vZTSOcT/SGHv2OMlddme43nYZl9
	QdBywLQitZilDlxH4GGfbKiCpVD8kATCREje/OcGaVcdEm+SVxE3pjT+sX9vrnYc8D+RZGYi+EY3M
	xgD4o4Xz7n/IIyJGBIK9/ZQGjTbd7I+2ocgBzxhv71qP1QdSrKvcV/dLrepkzsl3NcdT/IG09pJ0Y
	Mnpd6gMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWErn-0000000ALB3-33ho;
	Wed, 25 Nov 2026 15:25:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWErS-0000000AL2S-15lT
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 15:24:49 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6APELqn03725606
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 15:24:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BWI0oTPS6UWP+KHreqzTyFzt/bLKfNI1fMUEgGA2TjQ=; b=OpB6FU//8xOqb7OS
	5fVG54KpU7ZjNVKjctadQgIBzM1pOMtfT+p8RLJQKyYAAI7DZyJ5qt+UOaP/9pq4
	u8sBWRPln3bzRSPYJOuCVV7hYFjGloUQUfoatqf+FTAUdrFoUXI8IRA4nJgD5hO1
	itivGuWNLrBgEQ4KnYHzi73YpEIkNS2hpwNeAhy7ZKl8SxdU6IFb+LEhb4BFL6GZ
	DmcN5Y+58aqVqcFdGV9uBwFeAW+ByxC0qjFbCfgk8N4RUZhVJhAGLOUIiB4jt5Kz
	fAq9A5IwNKwk2eFTo41CSn49JtybruJZBKPkwkWdyxqWMvEUDUxgC06m1qXnG5Yg
	jtr1nw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j61af09gc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 15:24:41 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3b505a2bb1cso156194a91.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 07:24:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795620281; cv=none;
        d=google.com; s=arc-20260327;
        b=ZytAFMqdc9+0j8rYs6nPx9dlPr/pXygMwJdSvDgIlNZg8+B2fMNBva5VHw2Pg2FxqJ
         Mi+w5OJ2cZemy8aApkohrpfSUPiJ+wJXEk+MuZihSiqZ42rLAnVjXCOXC03Dz0+Koh2g
         vt2Husae5gXF2hneMDShs+Ep7lnN37WS6Fg0nXnI5sxM3z2c55wxYGhJ6B0SfkbO/BMm
         9GFgyMUZX2GNSLZ0kOYF+DtUmmDPD4LKzvIhQ1n98Olp+lRM69DzUaVCWINOVJpS3VUe
         svSthQBJxumJrw/fVPqG57Fn6bfejirZa11Wrd+MeyS3Yd2m1eIUK7nFLKJCS4ECy1N5
         WaUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BWI0oTPS6UWP+KHreqzTyFzt/bLKfNI1fMUEgGA2TjQ=;
        fh=qEAp2m9qg2KjHD7ckoy4A2xAJw8KERDsKbC6b/q/7Yg=;
        b=bLZJY2nGWOMSXcCSz4RXSHUY72G5FmsNGACtfGDIs8CBKgqQ6/0vQGWOJuOFShDpjA
         5+1JtDzUK4KDr1dFM9NYUIUAcyqh+4dFu0rILLkKTApqlZoYPkeNq3+HKplMmhAUv4ST
         m7VhH2QgTfRHg6fAkhvHMVuRCQfxjqj2b3d1l+jeB2nCFATZUXi1vohZ+9Yh3JveK9gf
         BTEpqlb+U5dROh5CFy3OFj5CwpTJS84SjfCmCxX/wHAWJcsFGEa8vIXvSZJhtPq1JvF3
         xf3jXoaRYRqMrDFNlErMpxrhg+lZVxhFvr+B/w0v76nPAVSADKz+1D7/rcrDai7UVcOX
         0LYg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795620281; x=1796225081; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=BWI0oTPS6UWP+KHreqzTyFzt/bLKfNI1fMUEgGA2TjQ=;
        b=WTQ7s1rmVmkUUFunChQxb2biZ6liDWHZJIEMHqUD2w9UP4ldWobF0STIotNCY9Sg8e
         5vIA4/kjGvBZJJwJv7G1GLkkNTB9hT+1qZt018+gq9M+1rVJkZe+AbOXkqHyOwTMQRPN
         xrxwu9xeXy8TNTD7AuUWKmpJWM5ihHVAqayOVIDyLMR8nPZ5QitcVfmToomAMrmEjmiy
         VpGxDQaF8Tio1jl/xUQCsfNgTnxxAfpxhv9zfJFUREiW3c9dFRlxokNXdwysQOEL3mLJ
         cRRj+aJ0I+h//SQslu0tukipYiPBcebQgTl+VKPc2rQrhFwr3wPbZNY6EicnolDAsZsB
         oMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795620281; x=1796225081;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BWI0oTPS6UWP+KHreqzTyFzt/bLKfNI1fMUEgGA2TjQ=;
        b=fc4c1MAdwM0qtcH+T2Dd9ucUPh6kjp8pORelQBw2EUu4ri1L9kJotgo61Fw9aQMYab
         8NKnr/e700qo056Jl3nrXFxW3ZyYPYM90Waf60sYYFekSg1o3Hn/YJ998/zdQ2xDrgpN
         aJbTI77fDoeN5KmwGNwsDbDbpNxFjEyp/EINXzDZ7UMhiCRHWqYn2N/JqFhCuFEpTVwb
         N8hSkSKVPbsuXCNSSAOK3vqtySNulRrxdunI9NCCTL4O3Tt0ax0/SM9sVhUCrwVoYuIA
         R1gC8nuPxG50Y2R1hF4WlRauxUG2a4B6u9RYBvWhpGB4GOcMcJlEbBeD+lqzBZSqcDrt
         oMbQ==
X-Forwarded-Encrypted: i=1; AL+hErG/Ub6CsA63VG97SLiNmz5ru5cvsxuau7cTlOA7QQzMboI4r8+LHS7991AkGxgu6cd0UfdceVri32g=@lists.infradead.org
X-Gm-Message-State: APuU4Z/coSP5usnUeWZZVDDYSNMQgvpmRRnpOJFlHrzzOt2QrPZAPW3a
	LkF0Xf/stSvbbTP/zcA1PGjiDnMAJH80d+3lFRvgEibxTfj3TjERr5j0bYW2AS/eQosuAq6ZaA2
	N5Yhyz0wvJUayQvFZMd36HU8HvzubK5hq/tU7K6KDS1OqTgwLXIeYSdVcpi7OwaQRDnJWgeSv8s
	mC7tmELlk7K69St3/VFm4DD5FI/V596vRx5UOdQXZNlrA=
X-Gm-Gg: AZFdTZfvsI+gy7jGq8dIVxYskwLQRAvdqEUU9gFiEnMZ1E+ls75bLgXSmGQDT8MnglO
	cFfFTc0sd5UXgKHH0CvBI8ah01/z37NbFhk964Ui2Zc7tIb/dByKwUW25HGcaM8e6x39TNaDbyW
	85fGnk8XAXVE2e5G6sKra97FXmmYlkrIsEq9re+iFLVV/sSxDHTzyae9D44w==
X-Received: by 2002:a17:90b:2ecb:b0:3ac:8446:c1a5 with SMTP id 98e67ed59e1d1-3b41c988620mr15762962a91.48.1795620281106;
        Wed, 25 Nov 2026 07:24:41 -0800 (PST)
X-Received: by 2002:a17:90b:2ecb:b0:3ac:8446:c1a5 with SMTP id
 98e67ed59e1d1-3b41c988620mr15762922a91.48.1795620280668; Wed, 25 Nov 2026
 07:24:40 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com> <20261125-halliday-dts-v3-2-5c8311c0b70b@gmail.com>
In-Reply-To: <20261125-halliday-dts-v3-2-5c8311c0b70b@gmail.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 16:24:29 +0100
X-Gm-Features: Aa3M54pQyww1I_PbdCBse1VupHYmzcQQ8jGP2HKCbG8YvURb7jcXXUW3MJhTLAI
Message-ID: <CAPx+jO9aHqEwVu3j5CdVTsfrhk8cMRawA5rj51EA7AdVtn-U+A@mail.gmail.com>
Subject: Re: [PATCH v3 02/14] dt-bindings: power: qcom,rpmpd: document the
 Halliday RPMh Power Domains
To: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Thomas Gleixner <tglx@kernel.org>, Radu Rendec <radu@rendec.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Bart Van Assche <bvanassche@acm.org>, Bean Huo <beanhuo@micron.com>,
        Stanley Jhu <stanleyjhu@google.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Ulf Hansson <ulfh@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA2MSBTYWx0ZWRfX2tqYHWs+zx66
 ieVFVr3bzDyqqOAT1s5sjoofjMWI9R5QuEvIjcVKXmuTIzlLL4hWJazE9Qw0ChqFkILIQmEsvzN
 gpymERTQS8fmfZwvF8es1pLC7KyxTHo=
X-Authority-Analysis: v=2.4 cv=PdhqFShd c=1 sm=1 tr=0 ts=6b06fdb9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=YMgV9FUhrdKAYTUUvYB2:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=yRSEYQ9GznzmN70rNvQA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: XFbqlBGLlzu5kfzAYHPpRb3Ki7qgwZ1E
X-Proofpoint-ORIG-GUID: XFbqlBGLlzu5kfzAYHPpRb3Ki7qgwZ1E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA2MSBTYWx0ZWRfX5ydA32qFvq1J
 mNvdr6UrNV+b0AK3e124fsM8pXEGGK1RZnIBEk4FHZmJzg3wMvbGj3xIur8xiDEgjHSrHuh4/Ql
 CwvNdRoYtfSOG3fQCjE1mZSsuFVgibiqL9LPv89340oTauQyTt1yOykDhZV8qyKb59HHx091m47
 guaTVRLWVA1fLEbCWUboNPhcThB38QV9TMXj8ojLRovq6h322tiC3J+4WL7rz1SPmlhbG6XOWnO
 I9mUcDsrhGgxU5fLsjd/ML8GaYzrpIq9Lg5c8mGrg325kXn3ghq0SR6EMS6oX8DQQLgxV+TwPkL
 JwAGhGM8Adz/+xTzDbwIMi0ToW2nyk2xtjfZMSjk3FApn9Kf7ipctz2D6P/I8muN7TnMGKKYfO1
 UMq+lbJa87yAriHxmCrsDJmPDlT8PR/JQot6Wd5ighAZL4Dwjxbxg7MVmw1AWsyzUVTFSkZsV2G
 +01O/M1e0PSOqpA2G8w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_04,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 clxscore=1011
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_072444_966700_290641B7 
X-CRM114-Status: GOOD (  16.63  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMjUsIDIwMjYgYXQgNDo0NOKAr0FNIFN0YW5pc2xhdiBBbGVrc2FuZHJvdgo8
bGlnaHRvZm15c291bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRG9jdW1lbnQgdGhlIFJQTWggUG93
ZXIgRG9tYWlucyBvbiB0aGUgUXVhbGNvbW0gSGFsbGlkYXkgU29DCj4gKFNYUjIyNTBQKS4gSXRz
IGNvbW1hbmQgREIgaGFzIHRoZSBzYW1lIHBvd2VyIGRvbWFpbnMgYXMgU004NDUwCj4gKENYLCBF
QkksIEdGWCwgTENYLCBMTVgsIE1NQ1gsIE1TUywgTVggYW5kIE1YQyksIHNvIHVzZQo+IHFjb20s
c204NDUwLXJwbWhwZCBhcyB0aGUgZmFsbGJhY2sgY29tcGF0aWJsZS4KPgo+IFJldmlld2VkLWJ5
OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IEFsZWtzYW5kcm92IDxsaWdodG9mbXlzb3Vs
QGdtYWlsLmNvbT4KCkFwcGxpZWQgZm9yIG5leHQgKGF2YWlsYWJsZSBhdCB0aGUgaW1tdXRhYmxl
IGR0IGJyYW5jaCBhcyB3ZWxsKSwgdGhhbmtzIQoKS2luZCByZWdhcmRzClVmZmUKCgo+IC0tLQo+
ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcWNvbSxycG1wZC55YW1s
IHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcWNvbSxycG1wZC55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Fjb20scnBtcGQu
eWFtbAo+IGluZGV4IDhlZTFjMjVhN2M5ZC4uNjYzYmFhZTljYzY0IDEwMDY0NAo+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9xY29tLHJwbXBkLnlhbWwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcWNvbSxycG1wZC55
YW1sCj4gQEAgLTgyLDYgKzgyLDEwIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIGVudW06
Cj4gICAgICAgICAgICAgICAgLSBxY29tLG1haWxpLXJwbWhwZAo+ICAgICAgICAgICAgLSBjb25z
dDogcWNvbSxoYXdpLXJwbWhwZAo+ICsgICAgICAtIGl0ZW1zOgo+ICsgICAgICAgICAgLSBlbnVt
Ogo+ICsgICAgICAgICAgICAgIC0gcWNvbSxoYWxsaWRheS1ycG1ocGQKPiArICAgICAgICAgIC0g
Y29uc3Q6IHFjb20sc204NDUwLXJwbWhwZAo+Cj4gICAgJyNwb3dlci1kb21haW4tY2VsbHMnOgo+
ICAgICAgY29uc3Q6IDEKPgo+IC0tCj4gMi41NS4wCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
