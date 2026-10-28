Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADE3606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qnBRQF4U;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RACwGrfB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=eJS4yCIk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Z/TVfNZ8qz6h38D0+ssLE614z5/9yUhlgeEvDSNwkPo=; b=qnBRQF4Uwtb8bF1LLY/ypM56X7
	j9d/++isI5NGkMT1t/XG5gGsp+TIJ9mchisudiFYHkSJkdCHVIuebcTl0M1rLQMcApP8ZMJ+5YZU9
	k5TINDtpn9UpLRZk6PvKnk8fC2SazNeiydDkiOVJysAzF0pAgwQOSs4MDn/cXIWBmOoAt+xf3tHHF
	sqkUnmG4xyCAYJesUJfD3Pct8ZJx73IqmIVTpkQdHfjMD3p1gva/LsWFlZ4s7LeIE12QdwH+DSi+W
	Ic46WcleyVUF/MazdFNvWJ/eyWfLASlU44RID8rofTBWHvLqxX0LQFuHZbYp49ZRe0Z3tmnemgQTB
	7R+dFvsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5WO-00000007MqW-0gcv;
	Wed, 28 Oct 2026 15:25:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5WL-00000007Mph-2f8A
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:24:58 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAxIY424317
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:24:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QLQUXqUYirntPTS+AVIsP28Q
	uGK/Ns+GbMRyoGZXnHY=; b=RACwGrfBZ/gA2Kqv3l52ojRFGLZ2TwI7tyazYofl
	h0AEGY/8tMLQWFfCsQdx7LUG2NtcoabfuznOh2PV9jTzT316ZweXD20Nv0eR2iRB
	fpAQqrlExWEZomtKYKdwhwQ0x8klqpJMRBC01d6mGTjh/1YJl9fwU/2oaDXXqrfS
	7Uwk2KIq13BOcgr/gepJfJOKdJUyQ5toLtFe4DcT16z5FuTFkvMp74OqcLEI3hY2
	hHOGMDyC/Q+JFX1AoGuuAYWRr6tph1T/5CkUvbmt5Ks3HX4X1TQBshve12JuasDK
	f9uTE1YXv7lXiKzdm2Dw+2T3zI5VYSpafFpGzJmeJSdSDg==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdsp1hkg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:24:56 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5eabb3a1bb8so369266e0c.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201096; x=1793805896; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QLQUXqUYirntPTS+AVIsP28QuGK/Ns+GbMRyoGZXnHY=;
        b=eJS4yCIkPCbp++4BxlqPTRTrznCoYEI4mUAGPGZSSCUM+I8r9XhxQY1Lt2fPmmjPBl
         hgDya6m5v4Jf7LoAWX3TQ6rNnMofcelp8a50WJglzfUwU6cfXsfkZJOQL8bBn5Yabdck
         GHNy/EkmaL/SUik2aS40us5Pv5KP2sQTVk5rtr+8O2f0CGTFwmGd/r9io74O6C6ifWY9
         VxWqRH8kkA5auPCsUa2KEkMvePXD0meWRjYsGsoLfWSWonM890XgfsXQ7UQAJByaKBR3
         504AiNeSYllNliiJsT5Uhwp7WeOuioD0D1XpDbxBv8KSXHy4FkAJFf2w13lVPyNBiTgl
         vWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201096; x=1793805896;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QLQUXqUYirntPTS+AVIsP28QuGK/Ns+GbMRyoGZXnHY=;
        b=eC0jdnrpP9p7aei8Oy3ghmlmxpUstZ/CARxyc/pMxUyQnhYdfKMfBMddNVOPUaTR+/
         tRxPcyP+dGX63GFzr6id7Z9CKJvPRFejHgueBBqasVmS0dE0GvVzOtICkUPvsfh9awsU
         lRN3DXfoaB0VoX/WmvsqUJYyWUngsy4tCx2YwgSM6t8Mq56kTxja0Hhf8meN460T5thU
         ng5BuHIWUdq4/yfSW9I8dK9+qHwx9KgKGpwRlYEN/qTp+ZePVFuQJg0JVrHvZhYf1BqF
         qa2u4OFt/eCdnSYEesaWAIa+k/hmlZHFRRImX4oNBygAM/2Vzwt5vOAUuJKpkfrdMHSg
         AlKA==
X-Forwarded-Encrypted: i=1; AKwUvBx6GwyH2MZ2KYktU7r4xjYaK3gQSNAhUaEWtFRwT/KRmMcvLwdZRYnT4UDNoz4lVaUgSx9g/XiFTbE=@lists.infradead.org
X-Gm-Message-State: AFq9FYIgOXiZj7Udr7qhXv0YsVg6nRa+UuHu7dp3dW8I09hnTLhg/NEE
	BDdDsWELFEvFWuwvDbIiJZkgHbsGp5NznrGLGNrAvqorPcmDPubmYcS6D5AW/7SMLVsUAW140p/
	x1A2xR4qRfv85Y/uzr5Dh2xAkwY+nMqzfLMl4OlamRdCN0jbmc/bx8H+3MNK18b9jPnqC
X-Gm-Gg: AYBFou1ibHpAai0bnKZGe7dYrEBtPB5CMVPeuu+IciKmk5GhT9QMic65Wd5Uu/jGIMi
	OnuLHod2Ie+NwhiHoGGLyG0bhxoF0B2d2PKLh0JyGPQiHcekT3G24N1sZfASsQW7j+n54JZqIbD
	6fjwr5whLHuZLvEYezwIgtBddbTSXDu3LJoH49Mu53qS9SBOXA+dkTIoVq1SZF+86xnQA3yB00y
	oWqX8sb8xxj47lxXORfDRxLGcCRMm+fltXNBZ1tlMR1e/xKrjnH3lYJlALkNbq9FmbgyWwP53VQ
	C1iFYF2B2mDD9sH+6HdpT1TmtU3FukAlAlQyV5F5/SNWPIkOu+DbeEGAG+eCRwMex8mxj1eBsha
	ujCsNXsu7YATtsw0zpOVxs7tx0Oxu/B0OtbNSwvhq1bp4EIv3M2WtUE/oQKloJNpOfg==
X-Received: by 2002:a05:6122:4d09:b0:5ea:e324:7c19 with SMTP id 71dfb90a1353d-5ec4caaa352mr1308287e0c.3.1793201095503;
        Wed, 28 Oct 2026 08:24:55 -0700 (PDT)
X-Received: by 2002:a05:6122:4d09:b0:5ea:e324:7c19 with SMTP id 71dfb90a1353d-5ec4caaa352mr1308242e0c.3.1793201094884;
        Wed, 28 Oct 2026 08:24:54 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebc3dcbsm28208441f8f.14.2026.10.28.08.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:24:54 -0700 (PDT)
Date: Wed, 28 Oct 2026 17:24:50 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: Add refgen supplies for PCIe
 PHY on Glymur and Mahua boards
Message-ID: <keiqrug6itasipmizdqrpjtwhe6qibgtallk75kyorvpxsbjr6@uhpyachmpc6h>
References: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
 <20261013-phy_refgen_1012-v3-3-f28305289499@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261013-phy_refgen_1012-v3-3-f28305289499@oss.qualcomm.com>
X-Proofpoint-GUID: F5XyX-F5OwX_fmf56KFE0hG_4suK1KIu
X-Proofpoint-ORIG-GUID: F5XyX-F5OwX_fmf56KFE0hG_4suK1KIu
X-Authority-Analysis: v=2.4 cv=Cssq4X4D c=1 sm=1 tr=0 ts=6ae213c8 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=n262S7Ma3DPWuRD1FHQA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX9VosDnu787QY
 z3LKjE+kdczHYTnRcJafG2fju+Ev4NStLCe1+M6GOJxtubjgyWHu+SGf+qSCMNI18k4EkCrYa3k
 HvNOAIaANuCkfMH4go90B97nuFm4XCXOpUCAN0GUHJ0rlRaBpKavOpTJ6fmyhpakKVyei/356WI
 jf8jwll9fOm4yp0KPn6Z3vtLCv89rPx+GHaAIe07OcYywf9aG5Ta76BkZiUJ1WdVYxXY2u+mRMJ
 8853xzp9ABQvp5HR2+09Gzg68pVvG6t8YVO72omWK2MhC+PdCNwVzLFOm/vzyewU5LGP1AdymZh
 5aaRMNnjdOB9LSVfusCoQ6mEEOT0EaWOmnS5X9E/h3yT0uUTh6kybxNOS7VyLIHoQt4OLhshP33
 z/fWoo91UcRrLuUxVYYB07/vHxnw5Rgf0eC7iRNotMFsT8LoBryH8d6WF0k+DyDTjDrXXbQ4ST/
 Rn6VjMQ1lE/zr9rXHnQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXxVbxlj7g+8xH
 f04ZcDQ4s8FLtYoBgWWAkV60nyrspL3ed5MZw8Q6DQHMrkRdjDp3nvtRF4nUeLe1N0RknkP6MnR
 2Y8Por4VwYlb6trNMewrFsg5i6BGA/s=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082457_785749_9E157696 
X-CRM114-Status: GOOD (  10.72  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-13 03:16:47, Qiang Yu wrote:
> The PCIe PHYs on Glymur and Mahua require a reference voltage provided by
> REFGEN, which in turn is powered by two LDOs.
> 
> Since there is no devicetree node for REFGEN, add the vdda-refgen0p9 and
> vdda-refgen1p2 supplies for each PCIe PHY node.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
