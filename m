Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0168C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNNQdz7AD7BC/LtlejnK5yv0fc0sDlGPiBZ1dIf/VsM=; b=mgbHHpjj9gXdgG
	leOpFFcH/ESScGARk2p8b6kOJBtqaXMLKRFaaOB6G0NBniXWHA8QlcHNaJdVA/MVRLdHENlhsC5eS
	ItYfVms46o5ySQHZjfvRZREINaE88aIPV606cJtlGfp2ladWlV9qZKXDGW4UBT6czD/AoRPnRizCC
	EEyv6EqyjSO5Sbdiii6aQPQCV0OSIHTSBmmVzHbXpPeogFGdmSFUjUC5j7+AhADDp9qFpCKGrn+AH
	nj/74nJbqXuNylEG8AlmDPc+eO8C+L/5tZRMMYKJCzZWdYSdoGr5aAmvDrfQ1nsLPJy4mDni73wLu
	kaiF7NNNDjS8m1rg2kxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGZJ-00000007gPO-13V8;
	Tue, 18 Aug 2026 09:57:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGZG-00000007gOZ-0kLB
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:57:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BVOq3991407
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	StVit9BC+22sE9IEMOGQ8OH6qcU6UJJMBrq8fRn7njg=; b=fm30JKro9bJpSYu+
	sGJN1fKuNHUGn82cvjkrCwrQXLZZJV4BQ7Nu1eUWoFvpmZbWIAIbEgKWEVki2J1Q
	BHTaqzeCvqUjiXGX1nY1HKL1sDf4t0dAAdPrhfvtiX/Mtp8ILSrckoJ3QdS/7cEy
	jbUwIdHRPCjCDXJvXBYsS+oJk+/p285+QtE3fbXF1xpA6EAkseAbTEXvdHLOVVcv
	EXryEvbgLy41sJiw0VxMb4djKd7ZL/dXGMdsF0yIyY++/3CvlnEt7w/Z4KbqjL8U
	oATpYVeOUTlJUqzRRT191gtTsXBIva4VZBVX5zJMcgvHOwJ7GWMLQcXUojrcLgo1
	IIF6UQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4f5psm3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:57:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52d57d17d6cso6169091cf.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 02:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787047033; x=1787651833; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=StVit9BC+22sE9IEMOGQ8OH6qcU6UJJMBrq8fRn7njg=;
        b=XLDILI3fEwXXT9gxQq3/a+BEsnWfJ9AcOq76ZXe8r/hFJTKnXfdShNCT+E4t9dW31j
         sl8HFwFhlJCWMNsExJjlAoyZED0olXSOpjzSWavnB4ML9lORWkGVVrBobqcg10LwZ/sv
         23bcha7ddWo4MJvNRjpJWLcOX2k3vvlAynS9HZXtOPIkbWx1bUoVbxb/hqWMYQUSEWCz
         SgCL0dF1LWaAIAOhUXMO2CUr0opj/sJTN1F0xjKtHRG9eqqtAy5ay7hG31GdRY7caxKv
         msWgjTk8oULSyLAGwnNXXdwwtXXtToUsnHFYtDnWqSTd5Qpa8X22XtxUT5Xi0Qy3uOvW
         kvyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787047033; x=1787651833;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=StVit9BC+22sE9IEMOGQ8OH6qcU6UJJMBrq8fRn7njg=;
        b=rzJ+NRmjmo2dxYG1fN8MkF6oe9xiEZ2BV11E2ibH8XYWQDJ4oORrWo0i8om/1Qhf4+
         eeNkjpWc3geL4qw84ACMMO6hFhUiMowL+NYaJmX4WBT8Tw+dHGs83RZlpOCA9wJh7GgM
         T4WfcUHeAF+B/XrOTjZl4W0nf7Hk3DdUit3IqquAaznymU7gQ0LMrp5C6pwLPvD0iYuC
         5FlDjxzWJed8xe78cQXoVYTIEHIuz9iEzkxxmt9SgkW1QJskpI8yDxqhd1AxhU5srl1V
         1ociLmSWgpwIlXZmcGaeqlOMGz+sds7kUhgVBK6U5qiUok81EGVzO7GkqF43bZILg9F8
         1/4g==
X-Forwarded-Encrypted: i=1; AHgh+RqVgpe3fbt+rnQnp83Ow3chG2MhkbbRZXLQ1asrKzcZfpNm2J/1xZal2PXQ/til+rxmjVrK3KaRNqk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzx+Uheyb/UbKhijyee2wSulscHAfEmaS8Zto28E2ybJxIdqGBz
	QFgkAA6B/V5tXDrRPcHVFl52lN1q3qjaQ+7PRHYqJ+8VQDu+UBye034yCrCARyzB7UqPx8q3Xgm
	2XGsRk4iHyvpik8vKRGkdqObFIhjhRmFlLmzh8oO2v4969671XgpMurM71thhHOdqQc4T
X-Gm-Gg: AR+sD13Dx6CgXemBpG0GenusRD8/iPbzwsftPzuUf1QOrKcJ/3Vq2HKHeRu9yMpXhF0
	puC+Hm4e5YUWwioO4yJDS6limnancM7o3hHruu2w3Y2e0V+DgQksapJvpJvedThpojepchgzgPf
	rkJyVFLb0+dOXYU7OhjwNb7y1Xtylcbnc2Ic4Y12UKgTun53vj1brBYrJ8bNR6Esx4u6lcJ5T64
	4Z+kqt2UkdAvoh9ugAnJ6yVk7s3ju2uKDJ4a2aX6snTnCkR8KdvNcPS0KJ4wPT/CvbMDl/lyzqx
	gnejyEXnfdxaV738XIGaPhJQ0Uu2gr1zZovIXIY5lM6Poo4yeP5+7/UdlbrjFpIEWVj5lU39c/1
	hHU9sbP9ka99Ytkhwg4xCgCQA
X-Received: by 2002:ac8:5fd1:0:b0:51b:f40b:2fa2 with SMTP id d75a77b69052e-52d852d4f3dmr228656371cf.1.1787047032629;
        Tue, 18 Aug 2026 02:57:12 -0700 (PDT)
X-Received: by 2002:ac8:5fd1:0:b0:51b:f40b:2fa2 with SMTP id d75a77b69052e-52d852d4f3dmr228655901cf.1.1787047032035;
        Tue, 18 Aug 2026 02:57:12 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185bab858sm129104866b.53.2026.08.18.02.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 02:57:11 -0700 (PDT)
Message-ID: <398f2270-9d7f-4e23-bf4f-ef02186a2be7@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 11:57:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] phy: qcom-usb-hsic: engage HSIC mode from
 phy_calibrate()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang
 <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-4-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-4-e5f93ea76ffa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=S+/pBosP c=1 sm=1 tr=0 ts=6a842c79 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=pCBiGHpxg2lVr5E8ZqwA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 874SjA8znHq5YsRIrfqKoQdvMpEcn9zt
X-Proofpoint-ORIG-GUID: 874SjA8znHq5YsRIrfqKoQdvMpEcn9zt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfX5S2zCEBEPP6k
 +mOSZtcoR32v2SrXrVyncCweKDU7Nrr1jqRaIjsrT23il7uY8cy7nlWyVzmorti/UgXL2bfZwV5
 5fhLiys35zIWwAfTuMmmugZNsuq263IadiFLCflEfZS4L/gUE9G/l2nCG+GGXARLYsiqZiRT0MN
 H046UqP2atVfI+dArWg6v2EIxv6zQ0VoG+67if6n5tJY4q5zkmxdGQA6rkLJXyL3mttyB9FRYwh
 c4Rri9bH/7fc+aluSIGspgNJfgjvx5Fy+5WrqHjJM0xdZgHz12bMzpa8ybgojMG/y0HRGNUg1XX
 bmsJzaTVr+lWJV3TOKgu9uVzNGieHba1rFULXvBhuzkfVHSEK8lQIxlevqNe/xqnhmjPVil2yYH
 zUA8qoCVGqkDrZ0MjrPQ+5p38nnU+3UVLMfRGjEthdXLNmMDS3szT2GNswW4+V/eKqGxJfI0SuW
 MA6JVjnIWz/5YAE97ZQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfX94B2k6okcKqo
 +p3TY5tHFXTO1jxDN3cfAobOuC5RFl6av+oMUVo+k0KsIoLBdcDaVRcKrqmcgTZ1Ubhww8So84F
 /ms1cHdfWHdKSRtbQajMv+gtfKLvxTE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_025714_226677_9F2C2684 
X-CRM114-Status: GOOD (  14.01  )
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

On 8/10/26 5:42 PM, Dmitry Baryshkov wrote:
> The PHY power-on sequence ends by engaging HSIC mode. With chipidea,
> power-on runs before the host is started, and the HSIC connect of an
> already-present device is latched at the moment HSIC mode is engaged:
> performed before the host runs (and before an onboard hub is taken out
> of reset), the connect is lost and the device is never seen. This is
> why the APQ8074 dragonboard USB4604 hub never enumerated on mainline
> while the vendor kernel - which performs the whole PHY sequence after
> usb_add_hcd() - sees it on every boot.
> 
> Keep the calibration setup and the pad mux in power-on, and move the
> HSIC mode enable (and the auto-resume disable) into the calibrate op,
> which the chipidea host now invokes after the host is up and the
> onboard device reset has been released.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
