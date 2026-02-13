Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5149EEF99D3
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 21:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CErGmr0plWEiet50rteStfK2TzwBNueLbI/iHNdITwc=; b=yEEM8vjEvN09Am
	Ik6pj9x9Oy5FT5WollfM8XGUzNXtN+VEfxBRa5hoernT8cWzcY+2JabBzMnFVVK67RPhlvf9rwKUN
	48lBxPNVPKbJGQ8DUg3oj0Mw7C3p6PD02TqJcQQWhj1+V4sufj042MQJBwlhMZoaEmokpKqBzVLOQ
	2UsVzrKi+icBklY+9Sfea2tSyVv25qkK/tTAEGH+OE/O+E5T/epNkHo69B/3012jqK3SlgW1ezt5N
	Q8maW2BhYSHfJtdQj0VBbjX/6IB3At/EBMg2PXE0AOXGooVvXZk/lWpD2QSMHB0MX5eYO5IGKPXq9
	l20W0cD4XXZM5h3l1M1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr0NR-00000003wMh-3L2u;
	Fri, 13 Feb 2026 21:07:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr0NP-00000003wMI-3hqG
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 21:07:01 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DHr9fn1507171
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 21:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fxTjLbHnLmXQoT5fNrXa0GhY
	+U/uWzDJb1svuEha72Y=; b=MR1/BEEEP6HKSDcuLwr5vcavcwV1FEBEXY0E/xZ1
	oN5i5j5TWjpegJIiNkQZk1z1nYxUSHylnrr1in3vGw46B4/EHAEumuVP0iTpbM+F
	5Kankz5xHFY3nK0PFBNs1SttOXxmjgF9j7ogAVCjl2R4NbwaavEoW1WalREoJms6
	FM3y4ttkdRsejtWJYLYmQ7Wv2CEigQDn0B0XvkcHlOD7WdYTvMCfk+wyw3c1Mc4K
	GvC7+cP8QMRG4BgZgbRsy10cSM+huuD1QntvYk0f2EmORnAz0FfmOjU0MQVLfFJN
	t8cn5AqBoc7Z6JQDlmFSMMpapU6NWZllBHVRyiQEdGQfAg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ca8rdgmcd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 21:06:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71156fe09so448147685a.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 13:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771016818; x=1771621618; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fxTjLbHnLmXQoT5fNrXa0GhY+U/uWzDJb1svuEha72Y=;
        b=Iuymk+i6YFlAml3/PXsIvN4ja6HzlLNf0+vOeL42LTGnoNv+1kc1IwAsY4XnY7ASmG
         tqrBKB3RU16awubJxKWXYJBCriaGXBevUm/HWwkiWFPN7zPrckdGFqgdNnW0hjaQYTTO
         2VwdQBqEOrc0X2U0kO3z9NpflA7LDH/LwYsADNakJOsw+CRofzOgf404U0A8JiM/6gSE
         cRSZpm8o5zvxGLk9dl3wpYMpYtBXcprNXp5+Ps52OavGJCCxULhvAMehplbfkUmKGmUT
         Hoq5Jk78yVNUBkCbvXs3y4JXiQLMmpmuEi0OyLC2OtlJoiCwd1mtUDwkF8BFatPBV57A
         x/HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771016818; x=1771621618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxTjLbHnLmXQoT5fNrXa0GhY+U/uWzDJb1svuEha72Y=;
        b=hFGRGckSJ3fC+PO71gUXoYaEIJfyFroqNoBNuvAUusWelPPqANlz9p6GMXiXg0E9Nu
         uXPPCIpLkOD2rlYndje0fmFBysSrDz7o344HKb68+1n2EVPoFruEsu0zaX5uODWJ32l8
         T1WXlwWgmea5xvJIX0QFoOfSML9jwo1FaS13NLsxb5wv2TB21Ycm3bP9rWa5cnUCwLEe
         L5ddHY7lckxwlto0aZSr/JJxCzOE0KLEQy0Kagk9qZ80qc+XVacFclz8lYA59TKadCMg
         tJNtzG3tFIEXdFuU7LCkxk+HfIAj6Nx+xqyWQFQpMx2cqG+SYvOVW6J64rRCSfEFPEFR
         0lhg==
X-Forwarded-Encrypted: i=1; AJvYcCU5u7h+pJpVex95AKiIa3y4nuLn3A+Temfw4J/nno/1j0DbmK6ldAznEx4o3kRi9R93i0cpiOwDUY8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrE3Fp3048Gwe1O/S8RA31RZjYugGhYTX80w2GqebA2RLcXgoB
	LGVxrFmqJd8xnms18iWXtODqFXCir/hA4a60uURFm3ty+8DbBUOUvdUe/F/rUYHwoUWwCNNWyQi
	cD2tv5wir90/lyvHCA/e7DggHrPVPZvdg2V0F9zy2CnV+fQ4oMvwhAoueQtPjeAhdCJWQ
X-Gm-Gg: AZuq6aIrEUiDJ6bYFrGwpWqGP9r9HMGmW21a+vO7NJrl3kmPbrHmwyuCsggwkRGasZs
	ZB55OKtj7f2EwyT2iMTl0IRq7T0VeCiO64wm/ukDM7hlfYnQheoxQ6h8s5P9wsu+cZpFELHmmxe
	XMUG5h4A5V4n2Z9Von1F6tU2Ltj1Z7Vb5CY94E07pAgUNVhZtQ7afrSxehSMUM4iiFkaP/AZv4Y
	CWZUnvG3ghf1SvyWZW1CW30fsUYhjBqHA0PKIwA3uiyk2NnjoakRBMfTttAivE6kNkkFWMxwxYy
	xy9i9+cZfQyLYkadatg4NwwbMM8IxxCDUCP2W6ucK/a++KCD0vmso2pv+5QnqT6jLRBvvIZdgdR
	uYHA6DA9DAqa0HRr2VdVJp+CEJSvkR4WARjwlJth1kXbZ69jF8u133mDDW2GkSp5BPVRtMoPoip
	8b/NDSoev/BNRZQOiDJVbLXKpqrIX52PRwmzo=
X-Received: by 2002:a05:620a:3941:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8cb4bf7ea70mr126050585a.15.1771016817301;
        Fri, 13 Feb 2026 13:06:57 -0800 (PST)
X-Received: by 2002:a05:620a:3941:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8cb4bf7ea70mr126047085a.15.1771016816688;
        Fri, 13 Feb 2026 13:06:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5b90adsm1772204e87.88.2026.02.13.13.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 13:06:54 -0800 (PST)
Date: Fri, 13 Feb 2026 23:06:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
Message-ID: <lvaxthcmqvjit4hnofqikxog3vi557elctiqc3nj3ere7rs47v@xcnwzrzc6koy>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
 <zvagnaxqgrpm6bagw6zuov4oi6o4b7vmy673oh5st22tec2swl@abvblxgray2s>
 <7zdyb2wnojudnrnomnx4aiwvni3e6i52kfioflb3gslztsizkw@ofvvkvrv5f3s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7zdyb2wnojudnrnomnx4aiwvni3e6i52kfioflb3gslztsizkw@ofvvkvrv5f3s>
X-Authority-Analysis: v=2.4 cv=FJgWBuos c=1 sm=1 tr=0 ts=698f9272 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=6H0WHjuAAAAA:8 a=qLpTsGN6TSyvEDe6a9wA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDE2MiBTYWx0ZWRfX90tUCey85GRm
 ZEfx42zaejkb8HBT3mED0FCLJIm4vR1+KYqj6bBlzL9rGwAz5mvJKS1lGAltjIwo+rvMsrIwhx4
 7dvbsikRblLADo2u1jaFiWUNkjJQIW2Spc1G6Q9urONUIKuwMscDs+XfmxUbf5npIJOByztxGJZ
 fm0ruTLbJkbQTlYaSva2gndkX9ZjprLCY2gr3erFsjR0WKz5UQOrzqvn0HzQGndGo0+kOYOv0zr
 9T/lNyE8lk/bEG4VH0tXxQ7vcNWYeiaPxpRP1kUJ5CAEqHCJ5SeirfkQv//HodpPmpzMl0DU84Q
 VtzNQliX/bz6JaZjz3QupxaHmF+430CwxYeMfXnxsLLVYPhlfYQN6W3FJkGMYMfk7ElgtMJrczZ
 ++N3MSmIwi8Z+Xpk3rrctIagyFx7wkhQk4v2sJpq1Hw98vgVwNQpMJykDHTP5BTgItsNRQndau7
 DVlBn32jFbKjOzyMpJA==
X-Proofpoint-ORIG-GUID: vwr8BItnrsyKq-X61lIDgiVmxDsRGO0q
X-Proofpoint-GUID: vwr8BItnrsyKq-X61lIDgiVmxDsRGO0q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_04,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_130700_050446_A4B9BD7D 
X-CRM114-Status: GOOD (  25.38  )
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

On Tue, Jan 20, 2026 at 04:52:43PM +0200, Abel Vesa wrote:
> On 26-01-20 16:49:26, Abel Vesa wrote:
> > On 26-01-12 14:53:18, Luca Weiss wrote:
> > > Add the nodes for the UFS PHY and UFS host controller, along with the
> > > ICE used for UFS.
> > > 
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 126 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> > > index e1a51d43943f..7c8a84bfaee1 100644
> > > --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> > > @@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
> > >  			qcom,bcm-voters = <&apps_bcm_voter>;
> > >  		};
> > >  
> > > +		ufs_mem_phy: phy@1d80000 {
> > > +			compatible = "qcom,milos-qmp-ufs-phy";
> > > +			reg = <0x0 0x01d80000 0x0 0x2000>;
> > > +
> > > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> > > +				 <&tcsr TCSR_UFS_CLKREF_EN>;
> > > +			clock-names = "ref",
> > > +				      "ref_aux",
> > > +				      "qref";
> > > +
> > > +			resets = <&ufs_mem_hc 0>;
> > > +			reset-names = "ufsphy";
> > > +
> > > +			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
> > > +
> > > +			#clock-cells = <1>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ufs_mem_hc: ufshc@1d84000 {
> > > +			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> > > +			reg = <0x0 0x01d84000 0x0 0x3000>;
> > > +
> > > +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +
> > > +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> > > +				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
> > 
> > Maybe I'm looking at the wrong documentation, but it doesn't seem to exist
> > such clock on Milos. It does exist on SM8650 though. So maybe the TCSR CC
> > driver is not really that much compatible between these two platforms.
> > 
> > I take it that the UFS works. Maybe because the actual TCSR UFS clkref
> > is left enabled at boot?
> 
> Oh, nevemind. I think I was looking at the wrong SoC.

Is that an r-b then? ;-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
