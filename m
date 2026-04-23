Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C2EFAD41B
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 06:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akkWfK+7yl+UdX/mX8ZtdzpM+Qtv5486fudi3eukrwI=; b=a575lLapb0YVJw
	7gSM24ZcKNKr9r5KEUATmhQqhA1lKmU003Ru+JkzNLAggrCY4WZMoVidsYZCHzOEFXQdxUWAOZKcT
	uonAB5xNyT/MnfHQ+0eKTsxs1OyMuboRm2PrPb8d9r4ag0RlTbUFNN+ney6rP33NddudzlsVtnnc4
	uvP1kFQuaLuZoyhLM52I6FExPDr6gFzqJqcngICklX7+iN81uppMr6Ktc3m4n9pMNyiixKGuN9UqX
	cftPRmlXIUU8MygNGm77fzbqLRkEWbLdeKAupOHoAeQWiFtapi4yqIlt7dniSJCU+f9S1EmBvCtMI
	fMdpavpS/PkJa52IBEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFnZT-0000000B6qX-48fj;
	Thu, 23 Apr 2026 06:29:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFnZR-0000000B6pr-2gAx
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 06:29:54 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N3cwCa1587779
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 06:29:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UyC7CCp74qUg3I7ppKeAkn+Q
	uNwtibiTJOLMOe0x83c=; b=UTdwJ5uHi7EFiJct6qZhLrJTPF0QIOPWLsIcVYZe
	0aKVJJZIfcYM8QFm7xrbf23iQS963VZ7vLiJ30E72yEdRMMFyJPSwapB+Ax/9qJx
	LJXgFCfEf+0204HAApwp+G0nP1fbs8/ok766QeHjqDYLoWfQrVIdBTc7h3nIsJw8
	rArQD22m1iTazGCcUe4DSRTDWhCyzSvqEvZHg2O7f4EjS60ifLSLOlvpU9EPMzMc
	cNHkWrAIQYH5wX7VYPUkDLCJiUqW/2irnqUNXJKigiZT8pSuNx1iiKVvliALeomg
	76/hy+lOYXL6E2YnrE62Gl0iHHC7qOaPZysuHp12sHufTQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1hq2fcd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 06:29:51 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba9a744f7dso8233724eec.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 23:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776925790; x=1777530590; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UyC7CCp74qUg3I7ppKeAkn+QuNwtibiTJOLMOe0x83c=;
        b=R218KobzA+7nidb+NaCSgYvs7OqKJSYlaYq4Yvudw4uiuMQzctOVEgU8E/t0R8MK1u
         jAE7WyXspDnbT/tLvoP7tzkLH7in/X8Won/cEVJWowjUJc3aXxaWwvZoUH5QHnA4Sr0A
         c5cVy858PscWvJkb86Ig1X9O2+qwVPUZFAyX8SVVHtUYhIpGgcU8ytUkpknAPMHfBUvk
         NyuruiUHsqtW5g3PNajPgMKm3U2ND3osfYUmM+W3sXhHL2CNuVmqcPyhPkdy/FQtnh1J
         IS4UgeKN5egdqOliLtVYwwvPqIRz7Eei74ZoMWCNOx8f6WY5MnWUY4pLJ0pM2omWgwkS
         w5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776925790; x=1777530590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UyC7CCp74qUg3I7ppKeAkn+QuNwtibiTJOLMOe0x83c=;
        b=pq2fh/YP0uciw52i8XokQqgkIhuEJrByoGkHZQqrPZiDmwdRMgKQ0oiQe/C4S6tsC2
         tn11tE+8PaeZVs1eZiFkyDwLpiNqYaUrFGTXNfSkmLmmuu06CtyD+nJgVCjYKkPyO/U+
         hCc3PiVIiHLK0Y+A9HEG6IAOK5e1rJfx5pXHvfo7cgWzakj94nIo9Ar+RcB2K920UCLx
         zJ0/PIrQI6TRXNSwx1yRt01A9bGemZkjJR33wBBwPS+sQg2Zry/FgecHfxJwwhS09Sm3
         GgvUsbemMkKJQkVR99miO3Fkh7YnjjO3f76eLNV4sCcgGSvO628Rn5e89gX4r8ZCEfi1
         u1lA==
X-Forwarded-Encrypted: i=1; AFNElJ+fsALCoyyYX7KtKoPiwK83GvRUFOR7McGwfRqmcR7Fk0QRg1mwOmbqzfFKmIEEb//lis584mTtlik=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpffWJ4F6aN4CR6y0s1rWGlVQm7VKBWzvHGTrQwLM+H9KjwgrI
	FcDoIC1HmxIz6ZZ3bQwPqBiT3WXlH+c7UOFK+jKQ/LOC7CqmABPm+Qzsq+ypVS6PQFpPjoERhR8
	XCGYEpdvv72HK0MJZhPAk0Vs611qJT0aUe8AHQzPLAyWaijbZVnWUvOUb6n2OGmnRXpT9lSdM39
	0j
X-Gm-Gg: AeBDievtS2mq2TcDudw15uS+5jlPpkNJ3PgnGTmzBMhj9mtFfz9+2M7XPo5iHfucdEv
	/9Zn8ABXedhpB5T7LHPiaCkJ+gWXrcQkXKPylAbXlTUVJwKB8tfx9CFzYtGM3+lovrwyVp8sIV1
	RXyBom5eZQ3b+XZCVyLixq04tQjI75QUO5yUBUy5Q5zDWCg0N9AsctMr1q8nJYFdpYsoZMO3VvG
	ZRmH8aVkGpm3d9Quw5F85KJGWi+KH97jeyJm0ICwy8KMcKKto/SGb+vGYk+aMkYHkq1IDEo/KWV
	KeLeB59zY1CV14G+XzJTDSz7rUpmB0MaMkLujqRnzXM5YLePVwSg12HRMy/XPHNNjwWGjs/2JEp
	E1p9emdv7JWjGZCTEYEsFAwpa+Wx6rrx1IYS63GebNySH/ReCyShNHxjfYFh5as6p2aL7SFIyLo
	VlanU=
X-Received: by 2002:a05:693c:310b:b0:2dd:649d:751d with SMTP id 5a478bee46e88-2e46538dc17mr12386997eec.8.1776925790173;
        Wed, 22 Apr 2026 23:29:50 -0700 (PDT)
X-Received: by 2002:a05:693c:310b:b0:2dd:649d:751d with SMTP id 5a478bee46e88-2e46538dc17mr12386981eec.8.1776925789616;
        Wed, 22 Apr 2026 23:29:49 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e53ac84c38sm26929968eec.13.2026.04.22.23.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 23:29:49 -0700 (PDT)
Date: Wed, 22 Apr 2026 23:29:47 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <aem8W+tV6POa9VRF@hu-qianyu-lv.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
 <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
 <aeBQRStG3imY0cOe@hu-qianyu-lv.qualcomm.com>
 <fb6e8d3c-4cb1-4c20-a570-e9f6ae9a651c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb6e8d3c-4cb1-4c20-a570-e9f6ae9a651c@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDA1OSBTYWx0ZWRfX1xG4W4MWtUnU
 1z/c0+Lwk9D82QTIERLDP1bDZdhkTmCCP9H0J530IXp//w/Fu4aHXVWZFkCs+7dQWvqnpd9GpvX
 hYkdl6yHRIFxbZ/HRFWeSOI64+oMQMAdm1YWjMkiCSm61hjJH3kIJWCpkOkLfQwIX4KAy3KArKs
 oyRgnyo8AfhPSbCUtgSiNxQ+Y9SFX+RKExMY29qMnMDt8d3gTdP3ssMtvIMTjvpaIiDFkYzQaBZ
 K9vPBrEFwfoyqAMsZ5RlezNymZU2ePTRzvaUKW3Anovrs6M6nvabt+SrJqSL4ns3tYL77deczQS
 9gIJC4ww4f2yWk6FyTdjFJi8IHSOgbVD2cip/EhwkZMdg4VWCBkcvWjhyuaA8Hj68Ouk6xGieG+
 NqkXR90pUwrafrcxeS0WPVVPjsEp7mHGLNikNrtR63MpCz+GscBXWs6XQoUmFWFFXDMohTRyEj3
 ais6vprwtvhbgIfAogA==
X-Proofpoint-ORIG-GUID: OJcBhiH5ArlCaE6-jw5AW851f-16nwj1
X-Proofpoint-GUID: OJcBhiH5ArlCaE6-jw5AW851f-16nwj1
X-Authority-Analysis: v=2.4 cv=TJt1jVla c=1 sm=1 tr=0 ts=69e9bc5f cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=sVFJkvLo0iv11KXttJkA:9 a=CjuIK1q_8ugA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_232953_791602_7663F6DA 
X-CRM114-Status: GOOD (  17.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Apr 22, 2026 at 08:27:02AM +0200, Krzysztof Kozlowski wrote:
> On 16/04/2026 04:58, Qiang Yu wrote:
> >>>    reset-names:
> >>>      minItems: 1
> >>>      items:
> >>>        - const: phy
> >>>        - const: phy_nocsr
> >>> +      - const: phy_b
> >>> +      - const: phy_b_nocsr
> >>
> >> And now I doubt that all the changes here are for duplicated node.
> >>
> > 
> > All the changes here are for 1x8 PHY node.
> > 
> >> Maybe just the commit msg is confusing and instead of describing some
> >> node which combines two other phys just say what device is here being
> >> described.
> >>
> > 
> > Okay, I will focus on describing the required resources. Is the
> > description below clearer?
> > 
> > Glymur has two physical Gen5x4 PCIe PHY blocks: pcie3a phy and pcie3b phy.
> 
> 
> I just proven you that it is not true.
>

Yeah, I see it. I have to say you are right. It is a 1x8 PHY. We can set
the phy-cell to 1 and controller driver use different args to determine it
requires 1x4_a, 1x4_b or 1x8.

- Qiang Yu

> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
