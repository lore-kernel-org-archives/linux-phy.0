Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57172CD98C5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 07:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C25VSLquLWgqTpW+wAwjhAzY/4Tbsu/o3nikMAv3j/c=; b=ilH6VAS9e3lqBo
	KFAzBrIECKCbDvPtqLj3/mM2XKqOQaomZfDwdlBbKhFZtejPgsruyhDbb1IU42/CaoXzxdV/bsrQA
	5YxbUqGXS5Vyh4EbZW08Ku3X2vo1D4ayVgNq+dLb2K6Ucy5bIVWQTjb4pfMPgbdK3fdQMxeNmLdXG
	lJcb3uSmRIkMlTjqPoG3qxT7wKvGBQ3f/tM7IvUbvPRHCm33B0hZaJ8n6isjH93jp9w8yGVnffHwF
	lbXK9QsIk13g/GoQjcNOqyRECrNc2/jWIlGUiS8UjwFNAk8LjVcQb2u5sE/UtbocNCFy4QH86K3to
	DXitJ4LupE26N+4D5FXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1tF-0000000Dnl5-3e1C;
	Mon, 15 Jun 2026 07:37:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1tC-0000000Dnke-45cR
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 07:37:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65F7UCTw4091933
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 07:37:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KA/kjF8FvreUrlkAuGn/Suka
	SvADoi6dD6lgMWfNLEo=; b=cdLwKuBy/TwyFfmmzwAZb5TGI4uatcGyNKp0XxcZ
	Kk2OUqW/YUTGMGLX2w4T9gv2LI8FhvQUCKyYTaWLubMJlYPnwK746UDjPtGZil/Q
	nN1xao5iszS8q9BX98J4mRqOrGti6QJCuFucjAl4i5t3OWHgfZmTIytKFplAa1Hh
	k5cgr4RUVNoK6MV7nYqt8RmSVM7Z20VivKQfOy/Q4Y2h/sT6rRqXqP/XeHwuXYLx
	SglQgby5gW/GgymTBnT0SCN2wSM703tQSn0oC6rRrgMb68vTY8yPX2MgaaGsWqpx
	ILcc6SySpUcWNTmaWGflTdnYpGVpyD5bvBiDpP1zxXbOLw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etd2c80yg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 07:37:45 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c858e0cbc89so1554026a12.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 00:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781509064; x=1782113864; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KA/kjF8FvreUrlkAuGn/SukaSvADoi6dD6lgMWfNLEo=;
        b=LeMHW9JzzurfTOQCKyJCkBJpEyGVik3zsQS4U3IQDPhHX37rbIlXa3dNvG3J9LYGdL
         dBK8sFVum3EJ9EIK2BFhKGUNB8Ca8yqW+ipxwVwvazMHx9dwfTu6o/hKiNagar7w0Ui4
         7yo2D9Nty4UTO//THN3IPiN/tmzxwJI4vsbUDsgxQ6n0oi3nfDnwz+Yd+ZAdbXlsL/JP
         nlgd4Gf4xP6m4wrxsa1Zmj6LSaEYy8m+CcB1JREN8m2uUm6ftXHITLCAn/kN/7KX2fI9
         lEA2pJHJrZsDZk9v5FQgx3y3iYIo6Iq2IpPoeX/N6FKoOBlMRXKGhcDIB8Hb9VJceF13
         Nyww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781509064; x=1782113864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KA/kjF8FvreUrlkAuGn/SukaSvADoi6dD6lgMWfNLEo=;
        b=lnTAo7EX5XvoGJ3LjCggvLCcaAjkCJ2j9I+vhwIktBQyQFWUJuiqJx3hpRAfFgPyea
         k0O4rcAxuOp4ZEfOyH1909IFRMDnxSM+u/eOx97YvH3yEc+ADYQDX2EVizBvS5icC/FS
         TCwzDSLhinfPNmnmJtdmXfQOJ2Gm7qljsAJjiMwz2ft1O3E59aMrYzqSpJNQPoFEWBkr
         UvHHxQ/AOJfHFSC2apUHuQnG/KFv+aEolnDBM81MzmsJgIRhZfdU/e+r2zS4EkLyu/Ll
         iJSTbYavko4JNUSny9gZWBnNu5L6qIE6EagfqNOBrI9sZm8/EV7MqSpHxjYx7DepeQiV
         7dFw==
X-Forwarded-Encrypted: i=1; AFNElJ8glo+4bTaYnfYwwefTwPPytBZe25lV3H4N/tH+mZvRIIZv3cr+SrU0pBrUJx/W2SVSjYS+CTGJ+3w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMCDWPikCcX/4MX2HbHsmufpJWd1qblPlaa/bud+IjITowswn7
	ia8bGIAwyDiJyll9Hzmiir2ahEHjtRazzYqmLcwE3zXAZ5mrgrmNBQXbqJWUsLuHVOTBCktIltT
	8QXHzE5vvyKnMasaXexagZehJ9iYjKM6wd/bzu2T26Peu+KRgPxwaf/ZzCViVSOkH9//W
X-Gm-Gg: Acq92OE53QUPFasSRHNvrQwlEIQCaU0xHt9+zB6klNMO4CslOV3cIp9S95OAD/7u2GU
	qYBhd3a45owtgAi94ACvLf8NnOA0XcFCYPGtfzzK9K9d6MTwJwoX7jDrPTQIeLzntOeb7wxCMF7
	K2YrPumlIASGP/PqBbDJnP1+CY09vhJYWlf2K/C5riO9eN5EmFUbUoQj+MmUNhlU5Q5mTa8wT2+
	QmMKornvkZdwn7D5oq3WZV4JGtGbTbaqAkLtfBhsGA4XdSUH8MPYS4xUF666ecHX2p6/xHdaduH
	/G+8Gex7G5vDodstYvafKhHHhub13VtbYX+CQxdK9ZWsJEpJkkC4V18NHAjOtDvXp/f9wkJXR6O
	6lhuco981b52j0k3xcMqZOHRmt/m0z189SVoSCvI2ES3PLOWibLY9HYZu
X-Received: by 2002:a05:6a21:7807:b0:3b7:9c69:99d8 with SMTP id adf61e73a8af0-3b79c69b373mr7696091637.2.1781509064025;
        Mon, 15 Jun 2026 00:37:44 -0700 (PDT)
X-Received: by 2002:a05:6a21:7807:b0:3b7:9c69:99d8 with SMTP id adf61e73a8af0-3b79c69b373mr7696058637.2.1781509063593;
        Mon, 15 Jun 2026 00:37:43 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434accac96sm9860782b3a.14.2026.06.15.00.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 00:37:43 -0700 (PDT)
Date: Mon, 15 Jun 2026 13:07:34 +0530
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V1 0/2] arm64: dts: qcom: Shikra SD Card support
Message-ID: <ai+rvsUsZts5o0oL@hu-mchunara-hyd.qualcomm.com>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
 <hpvnpq2rx2axmtxmk2y6tddeo42ohvd4ae3z37lynzm5nug4vf@sg5ndaqfdlvh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <hpvnpq2rx2axmtxmk2y6tddeo42ohvd4ae3z37lynzm5nug4vf@sg5ndaqfdlvh>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDA3NiBTYWx0ZWRfX/9+n4QN46dnI
 Elr+zHx4gBOlbdoYcSgtayTeyEq6FtlXYUv058gymsOlNW5bGKGNCGKKin9/cWLMkhkUUdlB8hD
 9MNuM5XlqstcSSbGRAMzNckE50H9Cyj4gbA8jasxa3oAXTyyrQgSs3M95osiDt3EKiFcgB2mWm4
 kSwqLT/bKRxQvW0lXSuCqGTcig2cImigs5ZZbCBOm5GP8TyN8ybE0unHJL/oAJm8mPf5PkYTsVg
 gIRBpasNSyLJLjDBpGkgx3DVhaKY/hRqNG6KRFUp8nmA2YnQgjg/u5U9HEqFqpoLPZSm0BwZ8AU
 /8V1FDkKvH4eEfOOGR3NGJM/DvyqQl6V9v6s4f0l89XRlXm8bbvXjRXLeGM1p4JsE3e+bRsY1QM
 y8wZYXfQXriSxwiC43XdS3Ua6F/JkSOs7b+eKBfwFbRvNG1ZjdpmSzHmqHICy0b2hbK58Dp5ulE
 MZhpGT680bVtupi4Ghg==
X-Proofpoint-ORIG-GUID: 0_OB3qOOpjwuO0D6DeM8VP0ZdCU5GB8i
X-Proofpoint-GUID: 0_OB3qOOpjwuO0D6DeM8VP0ZdCU5GB8i
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDA3NiBTYWx0ZWRfX5ghyYXD4V04E
 yh6mVkCSPUi8oAeMabTAn1bGdaczak4SPrJA1j753sxIkl4F2hANbEkHIkfyETQZyJQpLWf+XNM
 4ZpJD69LTqDcB57A80smEnNWd9ejpaA=
X-Authority-Analysis: v=2.4 cv=MsRiLWae c=1 sm=1 tr=0 ts=6a2fabc9 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=2VYifEciZLNaiyXlYSoA:9 a=CjuIK1q_8ugA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_003747_134820_06314470 
X-CRM114-Status: GOOD (  20.58  )
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

On Thu, Jun 04, 2026 at 04:22:42PM +0300, Dmitry Baryshkov wrote:
> On Thu, Jun 04, 2026 at 05:50:43PM +0530, Monish Chunara wrote:
> > This series adds SD card support for the Shikra platform.
> > 
> > The first patch adds the SDHC2 controller node and the necessary pinctrl
> > configurations to the base Shikra SoC dtsi. The second patch enables 
> > this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
> > the regulator supplies and the card detection GPIO.
> > 
> > Testing:
> > - Validated on Shikra EVK variants.
> > 
> > This series depends on:
> > - https://lore.kernel.org/all/20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com/
> > - https://lore.kernel.org/all/20260521-shikra-rproc-v3-0-2fca0bbe1ad7@oss.qualcomm.com/
> > - https://lore.kernel.org/linux-devicetree/20260513-tsens_binding-v1-1-1780c6a6caf2@oss.qualcomm.com/
> 
> And how does SDCC depend on TSENS or remote proc?
> 

Added the dependencies as per M0/M1 series. Will update exact dependencies for
SD card in the cover letter of next series.

> > - https://lore.kernel.org/all/20260524-shikra_epss_l3-v1-0-b1528a436134@oss.qualcomm.com/
> > - https://lore.kernel.org/all/20260522-shikra-cpufreq-scaling-v4-0-f042a25896c5@oss.qualcomm.com/
> > - https://lore.kernel.org/all/20260530-shikra-dt-m1-v2-0-6bb581035d13@oss.qualcomm.com/
> > 
> > Monish Chunara (2):
> >   arm64: dts: qcom: Add SD Card support for Shikra SoC
> >   arm64: dts: qcom: Enable SD card for Shikra EVK
> > 
> >  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++
> >  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++
> >  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++
> >  arch/arm64/boot/dts/qcom/shikra.dtsi        | 93 +++++++++++++++++++++
> >  4 files changed, 147 insertions(+)
> > 
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
