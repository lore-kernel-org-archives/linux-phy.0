Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D3EC624D7
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w1iolf3MENmIKnglpry+3sne2Z2BYGCVmfvQhLQhQ4=; b=jxXHMuPraMaX1U
	ihx6a0VzRLcOdL4LtMNl7SgYF3O2h98PYiWgY4eHP1gdrO9cjG/SDsQ0ASS4cxiCsrlSnmmxrQmyt
	JOz7c75a2h9pLEXDQ9tDAfIOvKx8e7RHA/gWzsxl3LCS2QJ5U6LPTCLi3EJFC/x4Xx2/OjKrUHNyM
	LeLlJ7xhblW4BPYl8wwOVqv+QP+MmmXyqtK5MGr0X+LiIuSPza17CXjc1vCkYq803hoimkZlx0aat
	22D1wP7eTDKmXN1Hva04Ycn+pXI1bFDUpC6RHWVYOaohHKvKXG3TDB+MrzYWTwEEIzEDTT6ucWK5y
	pb4IfoWqso3Kq09jSbUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OSq-0000000CD9i-3ZHL;
	Tue, 01 Sep 2026 13:23:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OSo-0000000CD9O-2DE7
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:23:47 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJ9un1641291
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:23:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XQHYSREK4hwFbTXr21RMHwdL+GeLgmeBuXTfbYEFYps=; b=Pbr/RJJq46Fs4uv8
	6C+/IiYh4GJgR6NVvP2PYk0A7Uq/ZqBwAz44c3DPn7jF9qmrLmupNkOBX4yOQcA9
	cHsSrUFsL4q8s+x7vtqkn0RHoogJ+QtSIY2IEdR2D7+gk3YTGvqUMgJhMP17A/O/
	8nfytJFWC56TBiJCBdjdC4ky4tvKLUirPpVa2eAOzjwmvP3trHOTchO0mBGg4DFJ
	uviKfsICRGHSxHz0wmrSvg5j93ma8TKTAu/lpUbDW6U7bBnSgZp0oZ54qORny9Wx
	sCcJn0ryz/4NyNHxK3Bl5UzmSEotWp0EgYU4wkX8MrHgn0Grmu3Kx7nHnXcNpOwS
	eAnxhg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdnk8tt04-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:23:45 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5bf9ff71075so143757e0c.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788269025; x=1788873825; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XQHYSREK4hwFbTXr21RMHwdL+GeLgmeBuXTfbYEFYps=;
        b=TNdIrhzTO7jDcU7m5e0xM57TzQJ7zwVZmlA94qxUIBliRr9eHsdZT8kS2/RP/FEIaW
         cA9L9/7PvY3/57j46MaW7oZdiMdYPaLgOuTKYIfmSZACqw/61iBQSM1k8O7gMrOyFebH
         I9LyBJ809AkyvQNxJSI0kXBPqpz1Vi72BJdllx0/CzA5/g+MY8ZR92TGg4C9L0aKLNTw
         dkJ9fwlfKyxHEQB7MR1Df6epwCwVvMI7H0demiL6TKvZkHux4WDKl2XcnuNjsFuQ+Ptu
         PEXVs7amzbsjAjbpsIuA49jiuksdNmx11CGj9G9xu39bENofHr7XF2jfD3+fBiVt4K20
         Tjsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788269025; x=1788873825;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XQHYSREK4hwFbTXr21RMHwdL+GeLgmeBuXTfbYEFYps=;
        b=SMgM3n2JBiydlwXURiqeI3Jt1aBgtg9eqIE/3jeZuFvwQpwf1xWdecVxPaRObJhVu0
         Xhcp76YnmYvlf/0l+TkO7qiS1s2F1Dr7eaDYrH9fiiiBZ5zl+AhFgRlU6uegCql3CW77
         KNsQ0mmV655Bx+DMGpjlklrAxCR83U41euLTAIC+M0XrBJnz3266WBJB0refWXNkbpcJ
         mXAiGsfyvTGrYybDSYfEeayLyCiA936issec1mQdfCk9Dc5/1TL0vhWAxg1lI45dwl2k
         Ss4M5buORW4asorB3Z/Ylai+XZAq0MGT/xcWbOzfW7Hf7Ai0DqfmRgc+XWK+a0rsbaAw
         Lm7A==
X-Forwarded-Encrypted: i=1; AHgh+RrOjQPABhjR1oVwT7Pxr/HeROj3FwUEJYDZlDSkH8JSm7rsd/FH050U3NigjZHNexpCpVm1ycz5+ZE=@lists.infradead.org
X-Gm-Message-State: AFuF++lm/QbYNgIRjA4ObC6CPCQMSRKmY30bFLx6O0fgyqxYLoHX0Lc6
	NKcoSuYR3CRr9D/EjrLV3F6TflZxlp3/4vqosa6EuPfml0UPV+QjriZmJQMlLRNCVypTjZRg9jL
	P3gk04EX+k9mXbejcBUp61YNGNPyyuSI1SMZqvEyrJslrFpGloFoo3m9XEtqrmOTsmNi2
X-Gm-Gg: AR+sD11rAOYg8AfC38Fe0CKefCh5PjbIud93qJDkewqoHagjEHw+X7KNtdkjZeqEsWk
	4jQD0R5BVPCj7jk7FbQDQ9cvu9mIbBkHpd810VcnSLPEqWT6a0p0t1AGObEL0G1ex+NGvBA8w98
	/11e48WvxUxfZUExQcWa7tMsQCXLEoBrDaOXuisdmtaCWWNrO2tl23hMJbLWQPlu/AWhEIWLRV4
	9B/uMzFcy5CY4wtz9mO8jN5v3jbYXV9FVQb5aDS2fMIxzVuD2zDIahmeh1XyfBoOKIEBZVbpmPu
	pmwhiGWanFfAEld4hO63Nu4XoV6/h4Ngz9J/pcYBsjh+5UxpGFKoKUwf1dtjQv1Mogj+2MX4bQ0
	9vvD8sAi4hlCoqyR1/H+Dqw==
X-Received: by 2002:a67:f091:0:b0:789:3f43:6458 with SMTP id ada2fe7eead31-7893f436636mr1692809137.0.1788269024974;
        Tue, 01 Sep 2026 06:23:44 -0700 (PDT)
X-Received: by 2002:a67:f091:0:b0:789:3f43:6458 with SMTP id ada2fe7eead31-7893f436636mr1692794137.0.1788269024570;
        Tue, 01 Sep 2026 06:23:44 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e89ce877sm2884326e87.20.2026.09.01.06.23.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:23:43 -0700 (PDT)
Message-ID: <e51660f7-5913-4a1c-b15b-0ab0fd600e61@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] arm64: dts: qcom: ipq5018: Add clocks required
 for USB3 support
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-10-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-10-39be0955a6aa@outlook.com>
X-Authority-Analysis: v=2.4 cv=f6p4wuyM c=1 sm=1 tr=0 ts=6a96d1e1 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=6stDa1oDzhWvrrRwHtwA:9 a=QEXdDO2ut3YA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX+6Llfpwzs1n9
 x8T7TvZtUSfrgikihma+D9VM6U8NPe3LKmmSQ7GaK7pFwcqo6D56YssRXOx/+DmpnCwcP9h8QZ3
 sFMeCuFiIg08cQtiR6p9xUMeRiZH2wLxKqGc8jvBzIMaRaNU9o1vLq5WCZKrYAJpAQMJv4X+Ccy
 RdZqkfuIcYxxs4DKuGA4JbLGGAM7HRUgf1cDJRIur9guyD7SHVxxpkLSNRJEMN6VEBBA0yZppEb
 j5k+2fmVkx8dzSGwuYyz+3ZF97HskaTGe+q5sj0QOwwDRRNDrCXVBnfnsZmwTClcNh8RdxMCVfd
 WDEcDy8oScNL+DJ29WEwrZxIl7j8yoAnWZy6HzG1VOjXhWY2gRk7S8kB/iOGnuvCWpowa/wmTho
 5L0iX9tVce5E5pJo3WanoHB2Grxcjov2OSXqXbrmSedkY6ylorfvVY/ETXwS2gAaU7U8gJHG9MQ
 okDIte+sLQePObYLiNQ==
X-Proofpoint-ORIG-GUID: tGEY9doJ7-T8yDr0X4nu_8AeU179JHXF
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX6sqhxxoTBtgk
 8aLgjY8hqKQkGjUzX3Szk9ay8Z17trjO82ovFUt+StSApz2JgiGHM7mfznjZTl9tFTPvWI1V3m0
 Lkto8MIxH1t36qENUdn/eZUTMAKdY0s=
X-Proofpoint-GUID: tGEY9doJ7-T8yDr0X4nu_8AeU179JHXF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_062346_600034_F77FF0E0 
X-CRM114-Status: GOOD (  13.12  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add aux and lfps clocks to USB controller node for Super-Speed support.
> These clocks are required for USB3 mode only and are not needed for USB2
> mode.
> 
> In addition, set UTMI clock frequency to ensure it's parented correctly
> and override the clock rate potentially set by the bootloader.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
