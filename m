Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FCDDCD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 06:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAeIMke+5RwSFsvBn9t0ssBhk4uAG1Y29L7ybdhlJ3U=; b=UQbM0tutRdcp79
	gzGb1VC+IGLHzlBMzQbdX8S5zr0va4O957jjuLCvsgKPmI/LmVzbL0+K+g1xxV3Zj9I6bFa68H4VV
	B271EDXL6gG8qEYQpTW2LObK2Hsy+r4xPUZaBbX+2+iELixs4nNP/C3XOb85x3dQtfatELwLwhXcY
	RwmFwfvF5H9RuR6ut2tIVkcKLy/BWBKiLYM9WGwzIot88JLT/YMbcnHK2rDi3MDHrKZ94m5o4kZ7M
	AMZNE2k42N0IhExJ4kSOuSCgUHET85Vws68qROGyMqbpyHWrxMAQez25b6SBDYhAHbl9dHCEbk28p
	m50EWP7/IFPBYu3P3ePw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTuY-00000002vBm-2Ldp;
	Mon, 08 Jun 2026 06:56:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTuV-00000002vBQ-2tAa
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 06:56:37 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6586Paqp2808386
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 06:56:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sDJvWTVEGOUQxwxd+IZUiqxC
	pZ3z+NvRZh6WslCfjos=; b=dOtKPITRwDunlS4VRA8U8VTbgTGox4HcIEsQj6Uf
	8RxhPThUY2Zvlsgyj/urSei/Y7oJckaBUhh1IgglpMYpo9jrFUVybKNVnKOqYQRR
	lf6FhOGTh8+VFzFMPF+WUX6Y/lzdO/6RBd7XlEtB9jKPGB0fvH9XuHDCkc/VCSeG
	z0zpSMUE5sqtqKg2aW4RrMP1ES26dF3GwBH/vuS4ZYQpC5PuXgImc7wpuWeC2sid
	NbDTabdMoysiTfoug2GXkfgshsYo4u0Rv71TZGPu5GOhYt5rOqnKOJuGgxvAuw+4
	NsTEv6Qq6oA1/m6BveuNV1iMy+eJ/P7KIF7QRSNFFOWFfQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emb4w6dtw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 06:56:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51758177935so32433491cf.1
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 23:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780901787; x=1781506587; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sDJvWTVEGOUQxwxd+IZUiqxCpZ3z+NvRZh6WslCfjos=;
        b=j+HhfNT/f1u251kZXq3SzE2wzLv3+hmfBp+C72+7FJGhXPH5PwTUj36cVM/uF9dzqk
         Lm/VY2sh9N7+kf1Q2Zl0wh/r02du2ukuAfzx4WXNtgwJJ6bu/exIs3YSwXO4iOD1Dwcs
         nEESkzD5bzb3JMUojWz0jPrp2SzpZSD2xRIFnMjptcqntgoNY6EoVNwk6OuCw7BQ/8+9
         Q+IojeXfJSODiECwePNmROJ+pUIAb4POOFEguj4tmVjaz3xG2+caS9JfGtODrsAFHU+w
         dm98cueD715PjSbRPkYyX46R2wF+VSGr8Y46kq7h36X5rjnW0le14hyoysmU7N5h435e
         X8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780901787; x=1781506587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sDJvWTVEGOUQxwxd+IZUiqxCpZ3z+NvRZh6WslCfjos=;
        b=boXelsz1elBiBPpGtmXLkyn4RS2TQsG2HBTgRZ1OjZVW8cReififgKIocZroOHkK5r
         mAsWy8+XQ+ej/oqiwR42B9x9iCidomXnaSbPeCDrrznpNxd11Rhz7UbXkUqPLCgYELhK
         aPuilQKTIvslg5MNh4uwl3CbexByUnHTalrwQpuaLoV3hOxiSMRODphk7Vub0dtWmlPi
         IpGmGgk28gJkWgFLqzy1hpyKhr6p9rHrY2FylXrywg/O9VrDSCAv1TSsNqoSixlbLzGg
         hKc329iOBAdsHAzyQxZbplnci9FHImbeTIfQja8QBl82Nyk/oOMG8nxHvDI56kwLVkZv
         w3Aw==
X-Forwarded-Encrypted: i=1; AFNElJ8RIF0NyUvNGBq4wpwXnHjUkw6MeyX1pMCTvaQXvrxzlBiD44JZUtWR8p1CfLJ5KRbyTnBSGNmyeS4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwON2N4+Sg2g4vISnaQKCCf4DJJGqxw5oORsc1XYZ/TNlcmqddF
	nt4g1BDO135FWGL3//igEfDv9qZaNvnwWhY6xCGyUpV4M7j5Xc4Q3EvuQVgeqU+2ze3JD9yf5+L
	TZTT1o4rbCE06JYTPwX4roCIWDks7OZsdT0dxPztPEdaa3uez6FZ3uPOpa/Izq+2QhlFW
X-Gm-Gg: Acq92OHmDYQDpxUQlKDNIg7gkIOTzdFKIJKBlL8mb0AfRw55vwZqwvI8BK+RX/K0ize
	biG21GhQiRdsya2kFoFebWfmzDG4kjJTUZfFTiKQIYez2FmBDLpgjUPKr/kQ9n7di4uJQKeliog
	sw8jWOMiSWlyG84dBt7oB+hMajIxwFBctlnrhFcqf/dWXtO/OeqT3EbYJTOqr2LsPWS4lIN3JWx
	Dmk1E2LL4clZI/fMoeJU9GMv82VZhcvSdf3XnMqQW0dg4fWDVfzF5bm9rbxRB0fH98id9FBIqjz
	LElwZAj6+OkuW1N5mQrWeWjULnbhakTHLTpPnPSGwkK9IILOrMf09FVKGZrEn5ijxiP1TnAChyA
	iKOX/NOKf3m5B6WxpUoq0cOvt9XK2HW1vmq1mKNCnLGYeG1mW7OMup7BHSQInUV128oUpDl85zs
	HLLUKSfvUIL5cgpMQk5wc/X8BB6zGo48CjmrPooROAH7Yseg==
X-Received: by 2002:a05:622a:250e:b0:517:7701:c085 with SMTP id d75a77b69052e-51795b9e6efmr221641851cf.21.1780901787522;
        Sun, 07 Jun 2026 23:56:27 -0700 (PDT)
X-Received: by 2002:a05:622a:250e:b0:517:7701:c085 with SMTP id d75a77b69052e-51795b9e6efmr221641561cf.21.1780901787165;
        Sun, 07 Jun 2026 23:56:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2be00dsm42953011fa.24.2026.06.07.23.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 23:56:26 -0700 (PDT)
Date: Mon, 8 Jun 2026 09:56:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
Message-ID: <56zkq7bwrt5smmmum6jckzrekkkqrych2gntx3obnrmamwumtv@espahwe6pc3v>
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <20260602-ipq9650_pcie_phy-v1-2-d8c32a36dbd9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260602-ipq9650_pcie_phy-v1-2-d8c32a36dbd9@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: AnRSG1-U_2uzS0UkEETmFomJt08px3u6
X-Proofpoint-GUID: AnRSG1-U_2uzS0UkEETmFomJt08px3u6
X-Authority-Analysis: v=2.4 cv=YIWvDxGx c=1 sm=1 tr=0 ts=6a26679c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=wA38C85zNOdD-9IkiXoA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA2MiBTYWx0ZWRfX4v6WBWkNcovj
 imaaoCz0XHFAcSoeiERlVfyV3YoVCcVvi2GKIKFdghC+eXe50Bsn7vubiDwpxSXyillo0V5xorz
 IUHWkUdHzCuGVrhUu5O5JdrN+FclKpEIFpcSNUx/lwoVqdRBXGAeIgDkii92fOVn7SIM/6e5EB1
 Ts44eLdpVZwFlhwD1et4dkvPHNtyJSiroyLAvvl9P1cKHBs37EMQTYU3o0ireJ2V0R+kE3ZjlDP
 BGgtIlcDZBmNp00F3kDkmGFqxjsPc379ch3ndSPA1i4kKCNFoGTf1dH10LSuSYEjy/8qD3VNWQx
 CqLpBDFlAX/+0Ol7Un23a1wHuJaVlT86l0vQtIWvriIODMLAJBqZG88PFXSH4tBGN+JiHGhImuF
 Am1XJSXgQ0mOfs6TlxmDPQF36O7famV4s7JmD/BwO+lO5W8oZQLi9kAKud8yCjDZI2YUWt9dpo/
 owjHUz6F8VnEQTbT4HQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_235635_876100_FB6B269D 
X-CRM114-Status: GOOD (  14.05  )
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

On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
> The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
> 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
> supply.
> 
> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
> refgen regulator supply.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
>  1 file changed, 220 insertions(+)
> 
> @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
>  	"vdda-phy", "vdda-pll",
>  };
>  
> +static const char * const ipq9650_qmp_phy_vreg_l[] = {
> +	"refgen",
> +};

Now vdda-phy / vdda-pll supplies?

> +
>  static const char * const sm8550_qmp_phy_vreg_l[] = {
>  	"vdda-phy", "vdda-pll", "vdda-qref",
>  };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
