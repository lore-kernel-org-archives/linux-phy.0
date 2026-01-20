Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D739D2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 14:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BXxdJ/GAF/H4HMU7tHMsFmOADYGzNrlzP5vQu4iVrE=; b=J9wvRAJGIvrhKU
	H1Dg7Hr655UbW6VFWsuqRfJrzFza+MLfoy4RN043zT0P68jAjffEUBXsxeacNfZK3hDHUQoDLb/Jg
	LQqEUsHdfoyCbo+eF+eoakdW1WAEP/VKklA7+0I4QheKffXUnuDzcdcOComZtNnFnPtqEZRGVjJHB
	+MzxPAWSeZmd/b22ded/JaaftNad2W7HE/QfMlB6miLpi7K4Ww7nidGMTTUJEe34Q1tTncd2sFbic
	kj/vXOtdARJZzOCqKwSR9tLKZgILb0tqtKTor/jPK7qLYcrVr927Krp5q+/Faoqe5q9LpkGxStO6r
	hz5mOhaSew4SiVT9QSpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD36-000000041JA-2pP7;
	Tue, 20 Jan 2026 14:49:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD34-000000041Iv-47mf
	for linux-phy@bombadil.infradead.org;
	Tue, 20 Jan 2026 14:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=LVjRE4VxYV0zLdBnpQoBaqo4k87tJBm7GQsAW6vpzJo=; b=qrQAQ228B3arLyzaDu6f4eul6N
	qZEvJQ+tz5cPCUG3SpumAZiE5Of3QAW5TEilkdbyXnvIZoqyFAj7dNOf5CkGu8Z5wVbjOuejP7hhP
	OExTNcu19NDO/xUP/MBGDVOtIK0uV+jKVIIxyrzwmOq7b/HTlhaOr+rDVqlwluDEv0QrlQQZdTOOg
	R1zTuTQdTDvfZGrXHIhqrTObDHgB4P2niUUng3pZBem3pyh/dpfG7C5cFagb+K2fkApP8UjQuePd+
	1TMlB2eHG7oYlmdvhSXm9nUSdcSemsNksNOA6oF6BUj2XX8PAKvYi3b4X0tKQREG7fBUJ1796yODa
	lgfjFUlQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD31-0000000EFRo-3Snt
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 14:49:37 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KD9FrK511395
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 14:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LVjRE4VxYV0zLdBnpQoBaqo4
	k87tJBm7GQsAW6vpzJo=; b=khOALW+bmfx8LK59WwyLADZYon7JsYdr2uxX9Mns
	jt9gJUfTD4WM1Xm+/YST1wZkuRNDD82fzK7xaFJLio/6A4tjrnrobr6vckTTqtCn
	MfwEAyWQDRRSBwsmQ+haNjLdXMWA1VJxF7twx6M7wdqgnfIYBk1IUPsa0a3hEFM/
	PyJWoLy7TirDtPszqrXKF0PBTB2nWM89Js5V10/xXdH5jCHeXw++ORSNU7FfTwV6
	T/eJDbqHiAXixM/vmIKrEdJZubJYx4Q89KxZyEZTSlS92BcGigeXZW66iENFRQus
	tN1ElgnqcN48ETp0LgGAkC6uCiqnKJgPWE2dn2hXjErk1Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btabe09rn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 14:49:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52c67f65cso136139085a.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 06:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768920570; x=1769525370; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LVjRE4VxYV0zLdBnpQoBaqo4k87tJBm7GQsAW6vpzJo=;
        b=gzklqIaDFVfe4RhyF9ZXnczZ/mBVY8D/sutc+geEcTtUyJHE1Lr/0d/ERAOtKGd+Hb
         ZFardcVF3UKoSWpVx8BARCRMbNqF19mb0aApIXgtoqC7vm5tKKuKuSUyz5Ky2JVQiv/G
         V9jTJDdkO/rUyrj24/aTEBBSzgSN44Nkm/JKZQzXVfPBCzQyjAkTqgbHojeFoz6pNn5J
         Z3uIqqKo204cqeJFwfc+kNAwBKu4fGuryIGLqDSsz0uabo4vt3OzR0OrkCo7MHwv0hKo
         JB4hHmbL7/j2jxYSrhmB62TBNehHWUTgpIW7aqK0TgbsQV+Za4gVPxQ76ssWNFEEL0v0
         XtFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768920570; x=1769525370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LVjRE4VxYV0zLdBnpQoBaqo4k87tJBm7GQsAW6vpzJo=;
        b=kVcz5r9573vWA7jlu1QPwLopFqhSBknKP2WH9jYFPlU+ALZpyzDJY/WEz7C1aTN1lu
         TFuT5BFyiUTdF8/RO2DtUQ70S31NglHyqAoDT+WTXwZBok02TN1iaeWd5wFz2vVKzgiF
         TTdWogqcdie6rOhufbJNJIidOkb2i4PVLLWt8j70iBVZWF2t+0fK9yP8fHwiiJ3mzrvn
         sYLE8gIhrGoiKL5IuG6ieFoLGJ4Q74P80h9qV02UFaVu+9VRIN8tqTMvl42sPjbI4BBb
         hs989jAjGs7OubLFR22y2kXvgIcTqldNqV/dCFDeS9De+5a5TzihEr36LFpqOE/UB2W6
         U4kA==
X-Forwarded-Encrypted: i=1; AJvYcCXTP+6AAmaRHrWdeDq01nsn/GdUHd4dm5daD0wEKtzOZaYgjgdPFkXz5SCnvJdEe/4y80dXQIR+ArQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzfi6mG3eCKKbfJbg+FJ+u/YK/trG8wByJAribtV6oaHknqerYe
	hgbkAYhL9dGlGyT7H7BPzGqTkv5CXhK7Axz/2qsneU175IWE2OIOYohNB7k+ufP+tpnqeumBH25
	gLlv87X8QhFVWrIVGT7/MFfDL1Zi7C4zm0o5qQNdDeQn4jaeZShSo9lHAshFt9BA9wObW
X-Gm-Gg: AY/fxX7Dad6LCoQ18q4foYM3bJZH2/LO9Rgn2hCiYqruh1S7Up9wnkGuF8cQC7lIIgC
	qbDzE2lOxOXZPGFgyk/ksA5e7TfArk1gaVdIKDrvi/ngcOzJHLnwc9HqEpUS7Wp96m7Ssd9ft3x
	knPFUn6irsMH0vuqpNMbhblgoO5DuPHWGghQUtyxOO5Fa6b54c37HlxV+mP3CuJ9q4DLTzlcjyn
	XC6NLZEde34wxhKGlj1hoGQCW2gP5napBUWRLSIVdVueSpjkGUcrrv4+Yfolx3hEfpzb1ezX+oR
	9qoOxFgtIxb+YJ7ztkTaKtcMNE+G5IRyVus7C/gkFFpl6jk5Qsu1Fqi5CU2g+2wT4DIb4IOyvzy
	XQ72uDg7hlNzuP/yv+5ZNjq60
X-Received: by 2002:a05:620a:17a3:b0:8b2:f182:694e with SMTP id af79cd13be357-8c6a6945228mr1898005485a.54.1768920570017;
        Tue, 20 Jan 2026 06:49:30 -0800 (PST)
X-Received: by 2002:a05:620a:17a3:b0:8b2:f182:694e with SMTP id af79cd13be357-8c6a6945228mr1898000585a.54.1768920569328;
        Tue, 20 Jan 2026 06:49:29 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654534c8791sm13235856a12.24.2026.01.20.06.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 06:49:28 -0800 (PST)
Date: Tue, 20 Jan 2026 16:49:26 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
Message-ID: <zvagnaxqgrpm6bagw6zuov4oi6o4b7vmy673oh5st22tec2swl@abvblxgray2s>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
X-Proofpoint-GUID: PzbkHGFQmvBlqjgiwStsf-mR5n4x1k8B
X-Authority-Analysis: v=2.4 cv=Q43fIo2a c=1 sm=1 tr=0 ts=696f95fb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=0k69HSTtqGF5rPJBr-4A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: PzbkHGFQmvBlqjgiwStsf-mR5n4x1k8B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDEyMyBTYWx0ZWRfX+laQTo+cV5XE
 QzKNR6QxTHmuGIMQRwISmzrwAghJ6jj/9X9b3hMpHTvoouIDR0Ldo5xJ2VMYOEaivxfxWFLukKp
 szafwG0vObmGVChPKYdPG/QAugdQizw7qXQuqCUl3zstSMZHRI3ZZ/agj8G2C9Hb8kEOXPUMNZW
 lz2wh1x2Degpvwk3uD+WBomi2CYAesAU2OB0hKwljx483e0+rr76kRqMFm7EDcNJHoLWZTAqV86
 ONFGGDJDrC0YD0vns+eIViWhcWRJo2wsp/p980VtTiDMfmcpMxpoq0CsRLqkq5qGPULnglhI2P9
 de4K9unlgmsX1r7kSoV5lEKtcv+KnTBBm3DtjdJ/WS7T6A8PFCqI3E7rrDsfnnwlPHpC3hgvFsa
 8yOUXaHFzJnqXiAM5vsAOrQOsMwveXCA7ZEead4CT8HT+pD7CfAXw18cHjXjqjUSpPHPHMSTyqn
 3OH9vtAzfmnpRVdvRsA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_144936_200653_BB89DC49 
X-CRM114-Status: GOOD (  20.45  )
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

On 26-01-12 14:53:18, Luca Weiss wrote:
> Add the nodes for the UFS PHY and UFS host controller, along with the
> ICE used for UFS.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 126 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> index e1a51d43943f..7c8a84bfaee1 100644
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> @@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,milos-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&tcsr TCSR_UFS_CLKREF_EN>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,

Maybe I'm looking at the wrong documentation, but it doesn't seem to exist
such clock on Milos. It does exist on SM8650 though. So maybe the TCSR CC
driver is not really that much compatible between these two platforms.

I take it that the UFS works. Maybe because the actual TCSR UFS clkref
is left enabled at boot?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
