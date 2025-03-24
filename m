Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02512C36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 11:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WbZq5os9ykMQ5nVMVjVJtpcS7bT4ngDGjO/X0hDvrM=; b=zFyi1KQOY0Bos5
	xyqShYMu9NunDYOiIz2a9lUAlss7kHWHTul+qzOWlKjeJQbMyYgjT2nv1IQjflz0G399tE6wkF8fP
	sakeRn3MKUVAXKry3iFHlfJLSfywHlO6QTybfbR4F7yT22QnkcY/PO4M4WhUrrKKRoScGD4i9h+kH
	RQY2TuLT2CkqTbmInwcTDsdfrNkkuoT5Du8pT9gS6CNKpblWPHV0soVMSpoLIlXffBPfMZ72Z/cA+
	qEN4GaFrG1oOZpVGj6S9KGosnXpV6rxQTrhTfFhtFlOXmT3JnjypWXlWj42fJvJIBCEnaLlOD8pZx
	jF7y+vKWcAUfmxUAbNvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twg6d-00000002xSZ-2Jib;
	Mon, 24 Mar 2025 11:36:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twg6a-00000002xRv-3Hg5
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 11:36:34 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PL9d004144
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 11:36:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/28KcOMGat0kJ0A+I2PAVvPM
	UPGHSZSohwpSTh/nIWc=; b=OvVbeUHfaGN30I9z50iLXqFoxgxGpB1rppEadoDM
	w63AU3lzC84r3w0yoVYyxWCcRGA8DDkazzfqLGLefiXCJYwSmU9qZ8FdXkKS87XW
	pUtjNECBR2y+QdRsrFz8PekpkWkqmVx0ShzM6xDTY4YIGszTeV+k5sWKcEMgto7x
	af2FVIX26jMFcG94mrl2mPh/0pUw6Yg1D630OGx0WfBylNZNX7gZ6LnRh4OD+IXW
	uHbYtgmJ6DGEE+W0YJoR1JRGe7aAqwMSIoiOfEHKF2l0SwlDY3lvVfZoD6Q5eBdY
	/7nw3HOI93Z4aASjNbXzIEo9+Y9AJN2QsP44M0yjId/xsg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hnk8m6wd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 11:36:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5d608e6f5so90011785a.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 04:36:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742816190; x=1743420990;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/28KcOMGat0kJ0A+I2PAVvPMUPGHSZSohwpSTh/nIWc=;
        b=jE2RCbZJX/9Ln2h7xC+Oe1tb4EXPoe6ivMoBYilIjyk6R+BLpmYh/BuUZ1HDxFX2G1
         AyEv5dJhcZWnqkrdGerfEfE7VkvfHQpNBgk2tz9hBa9NhUB61vhmaVi/VSFJFPYG9Gza
         fvC8DhdrxCuzUvSplTmRowSqhMUXBpD3ut4oCYEj+cz8ZQQGO7X/VHkuAqSsh2JJf1It
         cRqVBBGSRCuxz032IwMEthxI25dLPWNnY1cDVD/ZPxYTwDXstzF9kbmMbRIRct04i+0h
         oZQ1FHBlKpbbjW8fP4guSlfrYeILsdw4eTwIt+5MtLQQvaW5pw1WfhJdn7sLHze9izns
         Qj/A==
X-Forwarded-Encrypted: i=1; AJvYcCXbTmP/fzL0FHDYS6YmF1dW4Kn9+2DSSQvmXyB3lFj+8fT/++6C1BCE1cB28B7KQ/hKGC3WC2AZ/xI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOX+egTQgwbn3e1rPme6PNK+UKWqpZOkH8OP9WpGuhzsiJDP0R
	7e7Ap9ItVK/ONfL6pQBjy9RpfKc/WU83YOOnYLa65pK2ETXoNkCoy9BpNwua6Usi8MDf+HlmGX3
	H3vHTttYUVGPnJjjCnHSplTIBal3mMKckacyveJ4yK2qq/CJgZxj2+B8x1gtPP0Kl
X-Gm-Gg: ASbGncsqEBYUYijFgK06v3MzHz+3Kmri2DdJN3D75PwxHuVV4EW9YgvLf3YwuOet8qY
	+372kWYD6txXM8Ew1NQmo1Gwf0SLVvnhNH7U7S5D7QF8mw0ZRaci28zYTAVUYxv9YLA5xD+zOCx
	FrOgsO5+iaiYfrjrxwIGXirnxpeCSDZ+Dt9UY2lN+EcxIBtrI1ekrSxmmgLWYQdKkZz+Ht+vGXp
	L7b5STg1EDJewT78HHBefwuzfi+KbkOlFAvD9nTU5/Pjyn1s8joobFcHwiO56AuzqH1zyYarVzr
	aXu1kh0ipAKoL8s5zj2uGPQ6JClMRxAqIxydCQE4sFcHMFiy3Ml0rX7AvoHdGWq7UYoHxKMi9Nb
	Ev0w=
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr1530172585a.40.1742816190103;
        Mon, 24 Mar 2025 04:36:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1k3d4Gu7ZnJzBcOT4jbISqnGdwUgHdCGngrW5u1gHZ0r9dvw/9o90y5OiLlqIrOTsIOi56w==
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr1530167985a.40.1742816189474;
        Mon, 24 Mar 2025 04:36:29 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6512127sm1144441e87.229.2025.03.24.04.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 04:36:27 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:36:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <ys56uezoe7uuhsvtejnptjuluvphpidg5tzx2d4x3bi6pan7aa@en3rx3llns5s>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
 <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
 <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
X-Proofpoint-ORIG-GUID: -RvBhk260NSNa-boDvAAXxvH7wV1bj73
X-Authority-Analysis: v=2.4 cv=KMlaDEFo c=1 sm=1 tr=0 ts=67e143bf cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=KKAkSRfTAAAA:8 a=7B58IFT2DTbkiS-wfnYA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: -RvBhk260NSNa-boDvAAXxvH7wV1bj73
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_04,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 bulkscore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_043632_945032_3C8602B2 
X-CRM114-Status: GOOD (  24.75  )
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

On Mon, Mar 24, 2025 at 04:48:34PM +0530, Praveenkumar I wrote:
> 
> 
> On 3/24/2025 1:26 PM, Manivannan Sadhasivam wrote:
> > On Fri, Mar 21, 2025 at 04:14:43PM +0400, George Moussalem via B4 Relay wrote:
> > > From: Nitheesh Sekar<quic_nsekar@quicinc.com>
> > > 
> > > Add phy and controller nodes for a 2-lane Gen2 and
> > Controller is Gen 3 capable but you are limiting it to Gen 2.
> > 
> > > a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> > > one global interrupt.
> > > 
> > > Signed-off-by: Nitheesh Sekar<quic_nsekar@quicinc.com>
> > > Signed-off-by: Sricharan R<quic_srichara@quicinc.com>
> > > Signed-off-by: George Moussalem<george.moussalem@outlook.com>
> > One comment below. With that addressed,
> > 
> > Reviewed-by: Manivannan Sadhasivam<manivannan.sadhasivam@linaro.org>
> > 
> > > ---
> > >   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 234 +++++++++++++++++++++++++++++++++-
> > >   1 file changed, 232 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > index 8914f2ef0bc4..d08034b57e80 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
> > >   			status = "disabled";
> > >   		};
> > > +		pcie1_phy: phy@7e000{
> > > +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> > > +			reg = <0x0007e000 0x800>;
> > > +
> > > +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> > > +
> > > +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> > > +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> > > +
> > > +			#clock-cells = <0>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			num-lanes = <1>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcie0_phy: phy@86000{
> > > +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> > > +			reg = <0x00086000 0x800>;
> > > +
> > > +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> > > +
> > > +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> > > +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> > > +
> > > +			#clock-cells = <0>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			num-lanes = <2>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > >   		tlmm: pinctrl@1000000 {
> > >   			compatible = "qcom,ipq5018-tlmm";
> > >   			reg = <0x01000000 0x300000>;
> > > @@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
> > >   			reg = <0x01800000 0x80000>;
> > >   			clocks = <&xo_board_clk>,
> > >   				 <&sleep_clk>,
> > > -				 <0>,
> > > -				 <0>,
> > > +				 <&pcie0_phy>,
> > > +				 <&pcie1_phy>,
> > >   				 <0>,
> > >   				 <0>,
> > >   				 <0>,
> > > @@ -387,6 +421,202 @@ frame@b128000 {
> > >   				status = "disabled";
> > >   			};
> > >   		};
> > > +
> > > +		pcie1: pcie@80000000 {
> > > +			compatible = "qcom,pcie-ipq5018";
> > > +			reg = <0x80000000 0xf1d>,
> > > +			      <0x80000f20 0xa8>,
> > > +			      <0x80001000 0x1000>,
> > > +			      <0x00078000 0x3000>,
> > > +			      <0x80100000 0x1000>,
> > > +			      <0x0007b000 0x1000>;
> > > +			reg-names = "dbi",
> > > +				    "elbi",
> > > +				    "atu",
> > > +				    "parf",
> > > +				    "config",
> > > +				    "mhi";
> > > +			device_type = "pci";
> > > +			linux,pci-domain = <0>;
> > > +			bus-range = <0x00 0xff>;
> > > +			num-lanes = <1>;
> > > +			max-link-speed = <2>;
> > This still needs some justification. If Qcom folks didn't reply, atleast move
> > this to board dts with a comment saying that the link is not coming up with
> > Gen3.
> > 
> > - Mani
> The IPQ5018 PCIe controller can support Gen3, but the PCIe phy is limited
> Gen2 and does not supported Gen3.
> Hence, it is restricted using the DTSI property.

Ideally this needs to be negotiated between the PCIe host and PHY
drivers.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
