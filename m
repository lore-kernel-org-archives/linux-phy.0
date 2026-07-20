Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4123C4451B
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 03:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn6hYZreHwRuUjXhYshDnGR8o0PRXSYjYPcSH0rsbqI=; b=t6aXXD6opK7aZ6
	3gzEXqKeeNsiEB2C5SSoUesJ/un/cWDxGLkBUzfhLJzxHSRmvd2Tq0h540GZlvzHWFhKavXbNs3dA
	5ZigMC3Cz2kIe0do7tyrbr6pMoE4LciHi9dAZUgPhm/W0R/jvMr4p87pvfJBfj/0Dkp1fyUCLQhfH
	N5U93EhPsh8gRU9Vf8vEz5gqPYYcaWYmZ5bpOZKApWoCQiemc/coF1etNVppCB7i2FufpPY2QEOfz
	YAQeigWQTasMGGqKBuje9Lin9h9lH9WEmxSXxsEQyr+tDhwaDIsFffQbVHMWsAinQ67LcUWXJfW1q
	cnCYVVGAJ7qP1UMsO68w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlevN-00000005nDO-1pVG;
	Mon, 20 Jul 2026 03:44:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlevL-00000005nCe-3UHs
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 03:44:13 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66JNskGp645389
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:44:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=trT3juczJpImDbMhvopx4zts
	L1HEFUZShfNhFaITGZ4=; b=DzU8xxKMu0zPhmbZGbe0eS1ej1Hq7hQrinKlk2K9
	uzctM2Iund1xEK9pkIrr67OWy+PyuFW/KpD62SwwnZfeIjj9gsfCxSoCIYu7+aHQ
	ldN7QzqtUk4PRcxJTdK6nH4R/pcJloGdqN8Ou8wQijMNsYd+kXYiJ75flWS2W/Zn
	eqXj1A++Lkp3Ygym1ZgRC091g0leHfufKqAsqRBVUSiBs4K7Jg+2U7bhxPmjui06
	3S/+fHLZjAJWZZYet4Q6YMRpmS6nVmnZAg//S1PSQ+q9YQw1mrvw4VEs8iiBto2E
	bkpdRg/ytY22hvk8lcAqn0dqcIjsGW4Yn+x/WlTXUMxHqA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2bvv6n2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:44:11 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cee894b3d8so120625825ad.2
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 20:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784519051; x=1785123851; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=trT3juczJpImDbMhvopx4ztsL1HEFUZShfNhFaITGZ4=;
        b=exq7ZI/nGtsSq6BKEK4kh1d/I5UqMbIPA8GBWmxeHi0RIsX2LdOwEIDRliXIPOjDYj
         IYMN0iVc6PbQ4TFH4HoLBLNPJaMINiLFYXAo2tgd7Myc8zK0zUlSHxeyE1ts9L35Iy6e
         UyAvwzDSqrhgt/XM7U0x/biV2mDb3gDZgNj53LJzP+GA/5W9msTdt94X0C3jNwR2rcSG
         qDODTLPljx6pAvNGgk3eZXOMt1hUY5UiTc7LbzC6kYGIL8u7uDhZWjsMovYI3/k+Vif4
         ciRiCqAw+n+nmCw4itZuKvNNB+sQWQ1DTCbZd+qzd+zHxnjotIo/e6nJbG/knna7LOir
         pUAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784519051; x=1785123851;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=trT3juczJpImDbMhvopx4ztsL1HEFUZShfNhFaITGZ4=;
        b=Y8EH0/J0sukrCGaQY+cAIqFmcthjgtM6fZh0TeKQgUOAL8nN2pKfSwowHhRUul6FJ4
         PTcPV4sL1o4fH/GuFXZEMnv9ldundI72XKNxIQUi/lmy39ZP9EZEayX1iSGTBp9u1f+Y
         Jso1k+kXUFQh+gveEijsXjKdSzBF30Bc9vs/x5f76zq8JOzcbeeMzCNlVl5zlgTnwz0D
         nEo07YCzmSQxtl3QqhihMFkHy8xhID0h1xKHlOTq879MrwTEC7RmoZyQCa7swC1AHQPG
         ikSU7w/Yl+9qSctPW2W5DRTusR/0ZGIpSV1f3/c6+98z8JBOk6ue6oZtqqBekost7mP8
         Xw3g==
X-Forwarded-Encrypted: i=1; AHgh+Rr+Je1HmXq1I/F1gkbQT5DdZa1TTLnIj+E2+bBWxoeYPg8zN05umEfSOmvjmiAlU1YJXEGxpIIc6HA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwE6Jhyk/RcLOvzsAOUjmh1lbds1C55XxMc80MgiakalSzMFm4R
	wCURv2twKt6XgTe616SmRiK0iPtNrIiL6Xm3PZVDFVqEFBtheh8Bc2LuP9GgCTkR9Nb7753rX5p
	WJk5OY4vRuC74ElXtlOSUFa8Mx+v3xyFzaRpHXgXZLzmWF2SMzrTHCqazYY64geFHgYQD95SUVp
	od
X-Gm-Gg: AfdE7cl2JNI+xec9qA8APjxNsCDGxyNKLNhG9HGOsQa80AhWZUZtNQJs9EXKkmaAIXy
	iVeGbj8CUlApZyJl57iisMxz9yj2gWkh/RkmPxy29g5sEOk6cPlqv3V4lZBvaKc9vsiO2DQ4y7d
	I2vhSeq8hsF5I4H+qnUCxE07tWCr19dttGz912nvL/8SYJZoirutF89iKS74sFxUi5N5ZpLabJh
	SmV7QmcxQxa+XFfEh/GALB2a+wYdXFPbrsf7ltXM//ehTKDFhy4VmWQDVGqvrW6nO5ds5kH17J4
	CbDablEbWsJF5UfkpKfDFR2lJGI5w4Osp+5xk0j2B2Kztv3Iab4p5UF9sKHf+HjQSV12/+FgaB1
	VqEg4qnediEN7KQoRUEOG7Tu4a1HakgJy5Bks62EkSval1io=
X-Received: by 2002:a05:6a21:48f:b0:3b3:bf95:f7e3 with SMTP id adf61e73a8af0-3c3ad9d1bacmr12837965637.43.1784519050695;
        Sun, 19 Jul 2026 20:44:10 -0700 (PDT)
X-Received: by 2002:a05:6a21:48f:b0:3b3:bf95:f7e3 with SMTP id adf61e73a8af0-3c3ad9d1bacmr12837940637.43.1784519050173;
        Sun, 19 Jul 2026 20:44:10 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31429fdbd45sm31009945eec.12.2026.07.19.20.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 20:44:09 -0700 (PDT)
Date: Sun, 19 Jul 2026 20:44:08 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
Message-ID: <al2ZiMcTFC6s7hby@hu-qianyu-lv.qualcomm.com>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
 <20260717-glymur_linkmode_0717-v5-3-4f9e87a61463@oss.qualcomm.com>
 <5f20426c-d34e-4d68-ad80-d01e2fc4e33d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f20426c-d34e-4d68-ad80-d01e2fc4e33d@oss.qualcomm.com>
X-Proofpoint-GUID: _iW2waJpGT440z0hUryWc-PTAkvLeyaB
X-Authority-Analysis: v=2.4 cv=EcH4hvmC c=1 sm=1 tr=0 ts=6a5d998b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Az1h_F6XyeYmpGR1YZEA:9 a=CjuIK1q_8ugA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDAzNyBTYWx0ZWRfX0Ca2C6Fd/1x0
 If3uZYuYl4HLFRYIWmsILXIUTfWDiFF4miaJQtK7lGPlzt8GkqMmm0GWac/WK6w76PgGWLPIRON
 KbydzZTzPMe4aCaBa1dKJgpfBNiZ91ESqOIwgXhhMwh5tNXG0WKIdkcX1HZxd8NuZ9rfm9+gc1u
 omTwkvrox1Liv/zq5NThl/y58XPJF/aAfWGqcxr1dsycilQj0XkhDpzhkHN7Zl5HRlM6/9yZiTI
 LgRseg5K7wzPrbTVri7yqFBhCK51xs7+B7ZFqDY30bTTbsOmXiWQsBhVEPa3d+BWTt8w/umF19R
 FyWiCI9je5LnqeX1M8T0LGI0nQ4qyBjTqobuobqY82itCMv7M6a2qF844b13fcf+KbmsTdQakPQ
 H2N+V2KgG0WEGDzqOG9b/xKAi1WDTUA3FACab/WuRFH8hK0aNsFbZWQLb81/BTeYN5qJrE/xPBC
 QfMN9F0VS/rtdtWMDqg==
X-Proofpoint-ORIG-GUID: _iW2waJpGT440z0hUryWc-PTAkvLeyaB
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDAzNyBTYWx0ZWRfX8AYibTWDfUGP
 MTHvfdnQOCPjs0Hm/uPxeiLV8eIAU6zKmwjz+BHpfIvwAmCL4BnXMRfPn/v+0Xw61pkwPyBQTK/
 WLab18O/kyHftTlkf0VWNnFz3LcFvAo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-19_08,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_204411_877557_F3DC26D9 
X-CRM114-Status: GOOD (  21.04  )
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

On Fri, Jul 17, 2026 at 06:50:23PM +0200, Konrad Dybcio wrote:
> On 7/17/26 11:58 AM, Qiang Yu wrote:
> > Glymur's PCIe3a and PCIe3b controllers share a single Gen5x8 QMP PHY block
> > that can be bifurcated into two independent x4 links, rather than each
> > controller owning its own dedicated PHY.
> > 
> > Add a pcie3_phy node describing the shared PHY block, add the missing
> > PCIe3a controller node, and point both PCIe3a's and PCIe3b's port phys
> > at &pcie3_phy (index 0 and 1 respectively) so each controller picks up
> > its half of the bifurcated PHY. Update the GCC pipe clock parent array
> > to reference the new PHY's clock outputs instead of the placeholders.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dtsi |   8 +
> >  arch/arm64/boot/dts/qcom/glymur.dtsi     | 336 ++++++++++++++++++++++++++++++-
> 
> These changes really shouldn't be in the same commit

Ack, will split this into two patches: one for the glymur.dtsi PHY node
and GCC pipe clock changes, and a separate one for the glymur-crd.dtsi
board-specific supply wiring.

> 
> >  2 files changed, 342 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> > index c12808abbfe1..e8e81bf9a6a1 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> > @@ -750,6 +750,14 @@ &pcie3b {
> >  	pinctrl-names = "default";
> >  };
> >  
> > +&pcie3_phy {
> > +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
> > +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
> > +
> > +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
> > +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
> > +};
> 
> This node is disabled

Yes, it is disabled because pcie3b is not enabled by default.
See the fake pcie3b_phy be dropped

https://lore.kernel.org/all/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com/

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
