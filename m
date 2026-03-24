Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F120BFEC118
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 21:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjV194G1jqGIGC44qnBMswaup97z/Hzr2kbpUFhFjLE=; b=xNx2d/pV94jrHu
	QPaMAzrOf1nrIZgnCiz+aso1xB1U+4JeNrjCj4Qgg1Hw5gdTIBtzGjlNjxHow0LkurIpe09tceT93
	9hP8uurQ3q6aRbT+9MZtsm1ZfmyXv9NO+CtAqPeTjwrsFy2VtjXDLIvzVjB4Pm95r8VCCYFPRY7by
	yNqRUACyeN/dCOSMdtyYqONtTasJDI90HPYT63hdrJs90gGPiglVskNmTpJqViA4GdCI3VDFBuqg9
	uKO+8zrI6tP6IdKL4RYXV+sRNjQ+dWQSFxPKXvT2RPifinOMReQWkUjIVKK6Kll5amVPIzqMsJiz4
	7amFy4xhXcWxOVs3MWfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w598q-00000002FVc-1pVQ;
	Tue, 24 Mar 2026 21:18:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w598n-00000002FUv-1cet
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 21:18:22 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62OJD9sD2146806
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 21:18:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YrCV1DuC+DUKUpaudcfeawnP
	IR42YDvtoWCg9bXP6oQ=; b=dGBmDx2xb1nKpC6XWlY6gN6UaOSRCVOcD4w9Evwv
	f77sy4TLvoSfUZDiHPqvHUITxBZXOhMUrMsc69a6cZS5NRoaC9KSgv5Mmbt7nCM3
	WC3+sSv7qZN6TSHxTtXkI5WfjmXwdAje5Mpay3NSKsl1bNDhw44hVHpCDhfybvV3
	UHxf2rUXGqIzzsBT1NW1DIsCxnyuDNfenf05yWZD/X3po0gFakVp2Zr1tcKHbGNf
	j9EJ0Xn+D5lMR0G4uJ19L0+1vgQMtIdka1a3COk1ex7wYDApMG9AzNdOgxMQsy53
	TQMjc64TBvLleX/0U86Hj/yZuhh75AwMzKkKtcYjAiwoEQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d3nexubpk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 21:18:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5091782ab06so270991541cf.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 14:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774387100; x=1774991900; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YrCV1DuC+DUKUpaudcfeawnPIR42YDvtoWCg9bXP6oQ=;
        b=SWqyTvcEj1RkXNmydTTdYVb6lxPYfmACdfFDvl8EBMmx0JnA/kOEKLmmZdy6UA+rjn
         B8ill5fnO6jBeIwEaCi12w26t49W2ZaorsPlhOhUImLYJ3e3Wmg2//twMN3zV3Y59DXP
         sCGmXDr5ZxBfbADEcxQyOs4nAlPRbwJIt/LOYWDEGAZhwjLhqRsC6MadUEBtjX2YJShS
         BTuz1ZX9S1XuOB77CF66f0cty+5ok0AIrUdag5tXoWKT/UIZHfmouJOju7RxbyUdEzGL
         tDju+v8El67IcEvAZ5qYz8kNVuObWfBWLNf8E7onoQh7QbQMHGmPNcP1/ejYpJ4heiw8
         bjQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774387100; x=1774991900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YrCV1DuC+DUKUpaudcfeawnPIR42YDvtoWCg9bXP6oQ=;
        b=oOZOHuY216CotVChoB6pOrR47fXT3zqdsEQGOYI/gTJsthu1sD2+/bjXrBJwzVMbU7
         PZWdar1ZsV217WzHFN30Sz9Fo12lUvOntDk+1sLq92YciP88LKLJrb7wEVI6zzJ0Kg5K
         dTu0l78y7uqaI3AwWpugr5FpeNZ9Ov+U7bL6J14djrTOmxiO5hgjqfhlS25YIuH0/n1p
         lof4EjtGwvI2X9BZ3x7LauZePBwFeiFokQXIAnJOEjw+Z4ya8Y5yjplqFVSqJXzP/sdw
         pHh2GvzXzubE0RzPpwP9QVNjLudgewtnye/uLnaJYiUJm44GlIae+DMPUCwO7hT/NSf6
         VEHg==
X-Forwarded-Encrypted: i=1; AJvYcCVun43dxC3YfWPFmzqxcXOabg2V36+4qAgQwTnHpPRWUYJzHO3bhj9++z+s1baFkJrHA2aa4tSSeWs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmAMg9mLIt9uJ28fo9WTUnNqc2H+OWSu42Q4cFVnTwkXEG/h9s
	0CjG2QlPK3sIYinWNsS87Td2l5FFS4XP0Sf7hNiq9z2oqmIcXfZBvunxfTCi+PXqp73QW1anjwp
	ujPDEpTbgVUCrTdeUmeiiguth1vgINwhLTQskqTfyzAHlTMyMxo4ppg1+7c/e6VPI7kr1
X-Gm-Gg: ATEYQzzlFtJlR0QdfAAVeatAqIQ5DFtY7qxBpPvH++xBWeBl5T0olZPifwBeH33fEzv
	Zy2SxpKw9DVPq5ygYiGN04QwMP6UhUXiEZ62g5YxZcnKfqmlZPerBBlAygkBfwc+CdA0GM4GO7g
	5SMQ5hKq4xKJkWWOhvJlDOLp0FOgju5MY1/E1yDnntqMOQrpSGT8xsRj8BFZ+7uBZbJd9tJIIak
	NlQVnzVj2812nfQ2quUMLybV2TwU2KqP4qsplY0BdkjfhNgEELTZ1GxowICoYdt4gNoiD9o78HS
	YwWppAa08LVsZ3107CJwi0FrtqHCkwMoYfhDY7szdbZc542in5oZWcIwcOshDZKJ25xXUYgUt/M
	tOWvYaza1WShs2OyJ+fLUoUehgMARLHpYtgiXkxrwulaO+Eja5u+Dy9T7k+EcVqn4wwxkH+56xf
	t7Qr+b6RqLowgfOIS7y3qfmWnirWcoTfF40Qo=
X-Received: by 2002:a05:622a:1c0f:b0:50b:50e4:f31e with SMTP id d75a77b69052e-50b80eaa071mr19162271cf.69.1774387099769;
        Tue, 24 Mar 2026 14:18:19 -0700 (PDT)
X-Received: by 2002:a05:622a:1c0f:b0:50b:50e4:f31e with SMTP id d75a77b69052e-50b80eaa071mr19161861cf.69.1774387099301;
        Tue, 24 Mar 2026 14:18:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a28519f2afsm3387355e87.18.2026.03.24.14.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 14:18:17 -0700 (PDT)
Date: Tue, 24 Mar 2026 23:18:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
Message-ID: <cqdeth56egg4xbcrfjmtea2jhrvjvwsebtemsqvcr4fkokuxte@a3agz6bcxneq>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-2-ce0fc07f0e52@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-2-ce0fc07f0e52@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI0MDE2NCBTYWx0ZWRfX8xRjuur7ZLMG
 +om4SPzrZEOYhwPUTC0T7fwlv5o8IWMdPND+Bzm0zGaUIAg2tOB3Rkl2BOrPSVa9I+V8bFwVBMA
 qdLktvsWi2CR5RdfB6IW3agPQLfypz4Wztl+IZ/G6qzkEn5YspEN0Os1WFS8CRGR3Vo6G24h8Rb
 yVI2A/fiMxPtAbsy95pqLlUS1SefNPof3NdbcNy9jd7q4k8eWprayLG2auDAIPRriGuVbwC3OmB
 IWqfTOm8emWVFfogVRQ8iMmsSgY0mpkxTLGA95LAzALwTg8Cvk6C2xWV+Tw3sR1EcCxFYwSE+0A
 PNZP3zxP2n1C1U3Xc/XzVNjynY8A0iQe5it8cSYgHZ81iOOV+3eG+q53RO1IuyrbbiOICtsjfYs
 IHqmT06dlpnIKP1F76Va0jxkqjxxTmlzKsD3cQipWqiGT7dMO074GBvx0xs139KdvG+uh1lMVGP
 /T3Vw7ZQ3HgRPI0sk/w==
X-Proofpoint-GUID: DjTrbgsxY9pcwydB_qATFfHIM6nG8l_c
X-Proofpoint-ORIG-GUID: DjTrbgsxY9pcwydB_qATFfHIM6nG8l_c
X-Authority-Analysis: v=2.4 cv=Bd/VE7t2 c=1 sm=1 tr=0 ts=69c2ff9c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=wdSbvLVn6sL2kMGTBGMA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-24_03,2026-03-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603240164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_141821_438693_25647F98 
X-CRM114-Status: GOOD (  15.87  )
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

On Mon, Mar 23, 2026 at 12:15:29AM -0700, Qiang Yu wrote:
> The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs in
> a bifurcated configuration. Each PHY has its own power domain (phy_gdsc)
> that must be powered on before initialization per hardware requirements.
> 
> Current PHY power management assumes a single power domain per PHY,
> preventing proper setup for this dual-PHY scenario. Add support for
> multiple power domains by using devm_pm_domain_attach_list() to attach
> power domains manually, while maintaining compatibility with single
> power domain PHYs.
> 
> Enable runtime PM to allow power domain control when the PCIe driver
> calls phy_power_on/phy_power_off:
> 
> - Single power domain: QMP PHY platform device directly attaches to
>   power domain and controls it during runtime resume/suspend
> - Multiple power domains: devm_pm_domain_attach_list() creates virtual
>   devices as power domain suppliers, linked to the QMP PHY platform
>   device as consumer
> 
> This ensures power domains are properly attached and turned on/off
> for both single and multiple power domain configurations.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
