Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67073606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 14:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oXX7eeMe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=FCttlUdf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=JIcziHAh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=grzMMjsY38cZ2frVNoHAZ5Z4nKwhJGQzWS95cwHeuNw=; b=oXX7eeMelu7cE+hKe90I7Hg5q5
	vyfoujuY3EJXau+ubwKBhKNVssjBb4idMzzscX5wysFbdUwLlREFVvinRULybTV/ApiY6+jcMQ7mc
	NRVR48t8bgqXQQ145kkmKbfZ0pVUylBiHzP3gN4/pH+ALzrRnSDhOFC15oEeZZSYPywyAQ4vlWAP5
	ktHRTQ9GwcsOwbUMG+MW7amFi/I5bRLiCjRy2CHNSoMnnJ/2HwnFPv0oGHVLpQwzPeJPiDAj06FtJ
	wxv6nQOmEUWmbasHCpJ7Av+LAccWi4/EaWZLotwYhw5Q8ZajmS3zIrA1v8hA7ppUX6oyFff+oN/wh
	n6P5LvUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM517-00000007GNd-0fBY;
	Wed, 28 Oct 2026 14:52:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM514-00000007GNI-4Byp
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 14:52:40 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBe2FL691861
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:52:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MXocowpL+rI7Z95Ap+ST7tABMAuylPLkGjTudZ5eSL4=; b=FCttlUdfFxPMKEgN
	fso/1YYi+kpRfncMw0Ru51+XqAYw5WA+vmk7jWl0H4lWSiDEx9gPwhYyGkzo/VBR
	je5eBbD2efYYLgCkp+RUfuDE0zBjKuq14I6BSeWEmqRq3C/FBhgl8LCl6ekyfac/
	comCXGmbe5th7frZoNV1AuZ4RvuVN2RUX3/cWiRyta2qNlFZgGD4pcDSkcWebvNt
	tdT2sDoxeA81C+sysW0cWBpEXDJlxqvhsuHBUYR6v/VnEcHxuyQfdJU2P9SxDU1h
	Gx/fb9nDrqnQxb80U+U8Khxp5UqrWuaCfcC59d7t+LzzNQEZwLnmw7LY/EPvP93x
	oknTQw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk6be30k9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:52:37 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5c97957d83bso91226e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 07:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793199157; x=1793803957; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MXocowpL+rI7Z95Ap+ST7tABMAuylPLkGjTudZ5eSL4=;
        b=JIcziHAhXoOzbbR2fI2FTKoEFIrCefPvy+UWHJr3YiD86eQb4X9B05jqv3vogLjo2w
         f9vLOoyPkx1DzEx3l0CSzX0gDkRlDpkg6Hoq3wrBhnBoQaCCnF8qoKf+xnQM7f+KhIXR
         nbhesJM2EqcC2RjC0c7i/ErZBxif6gk3vV9LwvjUffBQdItTzVU1teQWkcuboe7naQEP
         4kg1GBuER297JtmtJ7sBpnrPCjqrMYHbReDzhxjaCuEsQx2HdJQUH0N1o1xnAD1RXXpo
         ngKwSk8PDtxeKZRak+NXWY2hxDpa0l0ehRUQiX8rk7zHaCbFJjKdqqyhHihEgO1v3Iud
         EtAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793199157; x=1793803957;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MXocowpL+rI7Z95Ap+ST7tABMAuylPLkGjTudZ5eSL4=;
        b=oXMn1PW9ZvFbb2j+nVLjkWy/jcK5s5JF58DQuxBI6Oe2Xm+dDMybtX3emCCmLMgZ30
         w7s3RnwXK+smyfJ+kMc86wO5cNJoXgrTvaoHYB6k2Tt1axziRv4EwJ2lv39VfZjiH7lY
         HlRgdiBBA55shDBEL430FpvoGDA3m8NqfIkVbgcCUb8nq2iGHdqny2oOJxzyk1XncYNF
         QQOYdJnQVNyx+RroelSTcPhJAP1In4cQP4+OroJdV89PcTiDbJpi2O4sZpd5wfAh1nE3
         E2ralU/Ka+qSR0pmGmt15i8qVGkR/5FP4eY7IDbQGmazgEbFP4hudDraJainoOxJfgr1
         XcRQ==
X-Forwarded-Encrypted: i=1; AKwUvBwJ3VzipfPYPzTwirYZqNMtJ8Zxp0oDiKqa8UUtQeKrnpU0j21cZe7bk5T/MVVTjDicjJttzuHs7nA=@lists.infradead.org
X-Gm-Message-State: AFq9FYI5lPFY8zZpK/SsYAslxFdu0LDTRF0XId43itm2ITb3qEIaTrTI
	skoWnhiNKVTXV+iv6gLivLHvAbgLPBQDF/4HUWtXwB7azglsUvkYbfjaMVfVb1r5fVmatMSRLao
	KKJbUcU+xGmXbkmRKnIMbUMiFUG78Mf/QHMQbdRxM8LhkCRJSqdiwv0i8FqxIh2gh+rjX
X-Gm-Gg: AYBFou3EskBxk+cR4Xs3alCXzLphw1Oe3Xq3r2C8wAFim1zGdttEIBC6KY/q89dR1a6
	uQfzVEY8ueHTe9cTolZGoSA/E9UXYv2GI18YSMVvh34BGUYDpge2Qz1vITwFmFcA7tfvTcPs8hP
	3PT/UJYNTYufMJItMmU+oYu93rNiEiZOCjvzYIydtcYcn5r6EbO42jiutoBy3wN5C8O55i8ygLI
	mB0H0xqhIyA91+2aySk5SLrz3P+jsEp6zwKZVplCvkybP1AnUql1ws4dHBHp0k+MqClumNiXe8L
	H3SAdUOecEnIOZ9QaJzGFifi9kjUOmnF9adVnzA6/kdypQcxI1Uq/iU+BOIgZ1gsZnPmzAllz4M
	QqqCRrARlWPNuvT6jOiYFfeLQSYi3GyGbVl0wEvTp1KLeRNp6uUihGo4wSUbXUYECjE98zGo=
X-Received: by 2002:a05:6122:650b:b0:5ea:e18b:16a8 with SMTP id 71dfb90a1353d-5ec4c8fef9bmr1270570e0c.0.1793199157072;
        Wed, 28 Oct 2026 07:52:37 -0700 (PDT)
X-Received: by 2002:a05:6122:650b:b0:5ea:e18b:16a8 with SMTP id 71dfb90a1353d-5ec4c8fef9bmr1270544e0c.0.1793199156609;
        Wed, 28 Oct 2026 07:52:36 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ac70993e89sm31881071fa.9.2026.10.28.07.52.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 07:52:35 -0700 (PDT)
Message-ID: <fe2c319b-223a-4178-8ac9-33a3a5fc099f@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:52:32 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: Add refgen supplies for PCIe PHY
 on Glymur and Mahua boards
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
 <20261013-phy_refgen_1012-v3-3-f28305289499@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261013-phy_refgen_1012-v3-3-f28305289499@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ybxH18sVJc2HHQekMBOiQJXaXkODQv9t
X-Authority-Analysis: v=2.4 cv=HeuB3SE8 c=1 sm=1 tr=0 ts=6ae20c35 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=1jgiRTNCPZbMTgtKrOUA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA1OSBTYWx0ZWRfXxQk8R9CoBWS8
 QNe39Z5dbdultYd9mwrSAruJrm0JBIaYBUHLpkyNpmubLWmwkZOSSHo05aZwBzWgHa+ufeR3Xip
 HQM1ThfUvA8ieVsIqj/yOCzl8vxPmS0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA1OSBTYWx0ZWRfX/UrzBIO5letO
 lE0j3rCrWcddSwE/b2aypVia7k/5ChoveAFz6SYgjSzkvx6n+OZuTnnLBogzG9dXFuDpYSab9dP
 L4UGWrubVf/+UPZ7sAROCZHy/sKf7bWg3QklWU4wJJNb2dxMsT+3dDrsvk5foBnIbC3PhbTGMck
 2Z8+Cu4Ec7E6k+r4LT/U7kp5ltYjFLt6cly9t7ixBTrIeHo0f2erD8aD3jPTCTpa2wS0BtHPc/D
 EvJxVcXFZ8/LCtyixrBhq5DQ3bxxxwlkS/k62ndpxfkthM1ULCAVMWBYMsTwA6SR54UBpDrmXyQ
 Zp94860t8HOk9Mxz4904yf36oSSXDtcIJMi4jAg3zAVdGAm4RiErKES10uQ9WeNbgAAimE/sljm
 g13kjaQyozA0wwo9S4Wt5Ks8cEKCKi0R+va1JYvVvXjm78T2plyEaMNnWh6sCl+V2eFtAxYaGLu
 qy2+LqcHuMcVw32PZjQ==
X-Proofpoint-GUID: ybxH18sVJc2HHQekMBOiQJXaXkODQv9t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_075239_174580_6757FB84 
X-CRM114-Status: GOOD (  10.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/13/26 12:16 PM, Qiang Yu wrote:
> The PCIe PHYs on Glymur and Mahua require a reference voltage provided by
> REFGEN, which in turn is powered by two LDOs.
> 
> Since there is no devicetree node for REFGEN, add the vdda-refgen0p9 and
> vdda-refgen1p2 supplies for each PCIe PHY node.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
