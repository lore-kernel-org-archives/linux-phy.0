Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74055CD98D6
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 07:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CgS5o09O/bbhODhVq8JMU5prhc1v3PRks2kBvyoqIw=; b=oKhBvvIWah8Zyu
	M/NTlf5GelIDtEk6HQ4mHEMPbNI65pruW4y6WqLdlVtJLGtVeFnt4ELQ5J+YfvHQwhbolNgmdinRf
	DLQ0aWNdeH6u10uuvG068tsGpf0ubGWqIKJnZQ8OdlsuSVcGg8+viasDCNbgWwcOwAwvHWpVHbuWp
	/KpgzH8lUgiW0kb4ep0fD4My2cuoH9djAdKMAAEmr74inu+z4Q3SW196hte/LWeEHtCpogcp3cg6/
	yLJ8chbFqmhrV0JhwesZ8Cx4j/DpHcPIsWM/qFYRd9/cC8+Ksh/tQ9Cvrh36nE4waQI/fVzixK8IK
	GIWIf1L5YMIYtacrjrQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwFq-0000000AT7O-3gu3;
	Fri, 12 Jun 2026 07:24:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwFn-0000000AT6z-42T9
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 07:24:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C39f5v2497007
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:24:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GPAVTLBhhFJdNBz/7VfALgdW
	+TGwxvR3jClWBIVeqgk=; b=RtFjhjyS7kPnWvpVJ4lgZvmw6t8azgNoDuiYrEKq
	nvMqWiyFcvjqo7gJovygu05HjeQ2XSDar55Mf1pQ1OJDnXrXYnvH752BEA4dhe52
	7PuH+vWJkKIQnQ4rnOhy/Z/BoaC55BA6ohhebO+06U6023bNsYZ8UtzuSFEOqx2q
	vPaIRpjfMAtEet4N/38vEi9FjcQy/QjP0newjQSelRmskOGM+pfAg3gmWeP2+Szr
	FKKjJalCTFcU2nZ81y3tpSpQvcIuYrfW4Fve4XZNluLc2qkoEQxi5cDhWurJv9IW
	k5MLjg54yezbaJS0jIieFi8l0EPq2p2rCk9vbDv+2FlS2Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er0x7jk6w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:24:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5178fc89b1bso10262621cf.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781249074; x=1781853874; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GPAVTLBhhFJdNBz/7VfALgdW+TGwxvR3jClWBIVeqgk=;
        b=g5DinlmoRpdiNc6xD4UehbVLIVKkno+vcp7vBxkt+V++ZWr0gWXqyNgEP6KctGfG0r
         8h39wxPP/c8+U1pNR/pm/ETu5uROTRBvOnqX5vI0qiqv5VB1wpqxImHKya9orECSEoj2
         bspbX9muGh/kGyCWJeTQop1UzzLa7q12S2gbSFC4cxw9b9W/F+2LBOMbLpYBuNiQhXlt
         xh6tSzNEnVuBJCBgmxWON/RrhfTLy4n/hPhAwvuor7DkekXUHC0XJAyXxJUb3SveeI5q
         UnJyEb+Pujy/iLsiBQHF4Cbw4naAB66ZVhzeyUAKUrCMPNmjcf77H9L+jMtjc6TmowmS
         Q00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781249074; x=1781853874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GPAVTLBhhFJdNBz/7VfALgdW+TGwxvR3jClWBIVeqgk=;
        b=J+UAYuFJw5IjdRIDWJusMRKhIcJLDnNLmYukz7WDEcMIc+ErpRsAIWdTiN74X1OjH7
         nOfn36+1vRy7Ih3lenT0SpoEh8PSFxaIXO3wRYOLSH0WkTlNrjn+k9P8vZVF3FlTFT6N
         6DRrM2MPKU2RBkemRiu9/WfaXgTcXjlv7l4PuCjX4CsyKDEMTl3Xy4IqL7Lh9VEzi9vn
         DrDVecCdBdbAN9L565KF1PMGBNcRH31Hp9muUXXy9d/xrOt8g5+A83Oguc7POjkhB958
         LBTk0MoRSyBxop9HuAufwJYBoTBemW214HAnivh2vmuo2deHcqbVpb9SHL4RWh3i13ae
         oTAg==
X-Forwarded-Encrypted: i=1; AFNElJ8Wn7PPBqg684EbOtpzvHRrxAWfc5+aebK8UfshpEgchWI7iAHE9XP7FQoeIJc1VAwNwqJc99M+sIc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/KjTtRkaHlPiPMfrDq20Ts1Mvc7LHCrdWYS77B+8as0coOQNX
	LWhxSmEbhPeE+eyQDpJBq2PzcI3yLvTJXbVrrooVXvd4R648TrqX5AwCchrR8Y0bQbQCV4Z0uEi
	eqfVNheU3OX/MfPKPQqYNs1Wl3oJX41YHW9QDTLmLB5MJBzS44Ebfs+4Qk2tD7GjvwmOZ
X-Gm-Gg: Acq92OFvBRw8PBjIRYqqNUo7u2GQYA2H3xwxZZEjXYdTbKKtkOLLlzq7s2ikV/YDNFI
	Nvi5LM/AmxEq2MnJOqvQkwv4BsuSC6EoBtb2CTfuGFXTdDCW86jnqyWsQRa+As8kHqQoFQ1bUmt
	nFIZYQQbZapB6IjfNgVm9jvdnPLN889P2VLZam8tekzZa7yg/Dj6Rp5OzsOR7vsLNu+UgRoQl/M
	W/4j0znIF4/siGf1TPrDW3vgGqX9a+5d90E8hXB1WCWcLccFlSK03OrxlI7VGmPy6lr2RXZOwjv
	KXgm7CSLC/G8r/afC86v9KQT7WjV+3vc9fu0K+lWPaf5VPYy3//sfYXa9DOBVZzeFf0N5Co5IFh
	xE67Rqu9P/W563CKCf2YxHZFi2JkRJ7tWb3Ity3qZzML8h54+IFeBoE2tiUiUPGqTLEEU+BV8cZ
	PC97OiFue8jE3jikdEOiuoJZIfzodAhPFbNaI=
X-Received: by 2002:ac8:57d6:0:b0:516:dda7:51e0 with SMTP id d75a77b69052e-517fe25ffd6mr19995091cf.17.1781249074259;
        Fri, 12 Jun 2026 00:24:34 -0700 (PDT)
X-Received: by 2002:ac8:57d6:0:b0:516:dda7:51e0 with SMTP id d75a77b69052e-517fe25ffd6mr19994701cf.17.1781249073798;
        Fri, 12 Jun 2026 00:24:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e1adae5sm297181e87.56.2026.06.12.00.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:24:32 -0700 (PDT)
Date: Fri, 12 Jun 2026 10:24:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
Message-ID: <epxrpj52vst4zjigsn6ghaiajyzkwdtji2dvgrf7euag4indvf@wzhhy7wtuhhi>
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <20260602-ipq9650_pcie_phy-v1-2-d8c32a36dbd9@oss.qualcomm.com>
 <56zkq7bwrt5smmmum6jckzrekkkqrych2gntx3obnrmamwumtv@espahwe6pc3v>
 <7def2ccd-0319-4f85-8275-73fd254d887d@oss.qualcomm.com>
 <fbtghwjrokuijatssy7xn2hwkp34p5fjyn3ndr5t2w67fkz2na@3izdh7uk4hst>
 <602e893c-d346-486d-86b3-50d0f01990bf@oss.qualcomm.com>
 <ohijjcszynmoocjarid7mo7nbtd2dqcdvqrbnzb7anjytw5m56@nguadudsz7qg>
 <a7952e7d-468e-4ad4-8d95-f6bfe9305170@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7952e7d-468e-4ad4-8d95-f6bfe9305170@oss.qualcomm.com>
X-Proofpoint-GUID: ehJ3GhMNyS0KgY6QlAsdadLb0sfMY5bH
X-Authority-Analysis: v=2.4 cv=c4abhx9l c=1 sm=1 tr=0 ts=6a2bb433 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=cx6O33gTLCPIekaZO1cA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA2NSBTYWx0ZWRfXyuKr0MP8hf7c
 xTGDGkFAMYZzcpFDOnvq2ktoYEfd1QBcVURVLLAzRAdHe+tyeYow89unlpcbc/Z7zO135LdMCFN
 OXKxw+1seaKne0rh8jUkex9OCXpf07qMhtbZ8u9SY1NSRWXs/CAlRXZYbxGlbr9mR2W9KyjMJ7r
 ALHIkI14HVM7u5CxPsDLquDAQnhXFjqSoD75hu3w5yoW42k7zqXCD8tVPB5Zbri95WUJzX5ooQ+
 ifD3m4HQUAlVBrDYRo1owORm2/G4jmuPJ13LThQdIf6NlFM0I/tO6+aX1IKEJa5+dsOthoGikHI
 XOGfQd0lNGVRm5/hW5MATeaOXp6HZV/URp+fLD/+7bj8l8InxXBkRlE996Mp6DDPjpNdrjWWPLR
 07Q5y5dRkdhcSYCpaQDG7sTEAxCPSDvVIVY2WJ5ej//JW/rVIHGmab8g1P/7bLEMBzsIQM3d2qy
 2EM8JPTe6Gk8DZPL14Q==
X-Proofpoint-ORIG-GUID: ehJ3GhMNyS0KgY6QlAsdadLb0sfMY5bH
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA2NSBTYWx0ZWRfXwdaMkFxMYy+h
 DvODAoUuN7Zb+te5NwgXNv8maNdpcMZEIN8KAk/VQUbZt7dIsgOO+NoJDTO363g5F8Al53DUSIi
 KUQ23lZDgiJeRIQ9a6Q8yZOXAQLAL94=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_002436_005562_AFDDD11C 
X-CRM114-Status: GOOD (  26.32  )
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

On Fri, Jun 12, 2026 at 12:13:04PM +0530, Kathiravan Thirumoorthy wrote:
> 
> On 6/12/2026 11:44 AM, Dmitry Baryshkov wrote:
> > On Fri, Jun 12, 2026 at 08:22:02AM +0530, Kathiravan Thirumoorthy wrote:
> > > On 6/12/2026 1:52 AM, Dmitry Baryshkov wrote:
> > > > On Tue, Jun 09, 2026 at 03:46:56PM +0530, Kathiravan Thirumoorthy wrote:
> > > > > On 6/8/2026 12:26 PM, Dmitry Baryshkov wrote:
> > > > > > On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
> > > > > > > The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
> > > > > > > 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
> > > > > > > supply.
> > > > > > > 
> > > > > > > Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
> > > > > > > refgen regulator supply.
> > > > > > > 
> > > > > > > Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> > > > > > > ---
> > > > > > >     drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
> > > > > > >     1 file changed, 220 insertions(+)
> > > > > > > 
> > > > > > > @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
> > > > > > >     	"vdda-phy", "vdda-pll",
> > > > > > >     };
> > > > > > > +static const char * const ipq9650_qmp_phy_vreg_l[] = {
> > > > > > > +	"refgen",
> > > > > > > +};
> > > > > > Now vdda-phy / vdda-pll supplies?
> > > > > Cross checked with HW team again. Along with refgen, there is a on-chip LDO
> > > > > which supplies fixed voltage to the PHYs. It is enabled upon system power on
> > > > > and no SW intervention is required.
> > > > What is it being powered by? MX? CX?
> > > It is driven by CX.
> > I assume that there is no CX collapse on IPQ9650? Is CX not scaling on
> > this chip. Please provide some details on the commit message.
> 
> That's right. No CX collapse on IPQ9650. Let me rewrite the commit message
> as below. Hope its okay.
> 
> --
> 
> Add support for the IPQ9650 platform, which includes three Gen3 x2 PCIe
> controllers and two Gen3 x1 PCIe controllers. The PHY instances require the
> on-chip refgen supply.
> 
> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations along with the
> refgen regulator supply. Note that an on-chip LDO, driven by the SoC CX,
> supplies the PHY voltages without requiring software control. Note that CX
> power collapse is not supported on IPQ9650.

...neither CX power collapse nor rail scaling...

LGTM.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
