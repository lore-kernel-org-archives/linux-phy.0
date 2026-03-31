Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8551FF60FF
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 10:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OfiOImZTnfAT+CW0FXrhHg+47mD1he84j0CN6LUGeM=; b=oUuuvk0PYSJ619
	L+UN4L1I4upnwpPQ0X40htrCuO//KgPJNBD1G0iVnrwyqNYSbpqD8rrMnl8KMbQUUm7VuVNfotn3L
	+l598qw6PsuJ15VtdxMRRsx9aEF7KeLte2GoiC1ltxQaG+JSMeyfXD6axtuRsVES6UOB4P3XXqL8k
	JLhr4EpL6ymZm+2b/oS2c2b0PDcJKz7EdLGqHMxLZ8xI9E+B5t31VJ2ZrDccZ/MjIz3RU3HnZyYMR
	ICQfELahfxwzzlANmrvl6nyebqU9Deg32Hro49joHyv4PIsW7KCxOgL/7oo9gqhqukCTovMhlKHuy
	10vP513eAqhdY7a6C3lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7VtY-0000000CjE5-1LHb;
	Tue, 31 Mar 2026 10:00:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7VtV-0000000CjDg-2iPh
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 10:00:22 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62V5uZN02408178
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 10:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f0e3aQFphquzOjRFJVGvhf3/
	JD/EB8IFSfQet6yYplU=; b=dFXevurpX1rnqz4mI1zfqGDdx8jPkVGB8b6WloyC
	lg+vEPijaU+1EivGWCAy0YaKTaOR0+USeBjSj6sUofhxCYC6bpeCV1Vd/HMFkIos
	1bINBvlwDUxLO1KJ1bnpTFeg7V3UeSN/lC5e9JCPLwfznWgX4pZL7s6oKnk1fHNS
	EnX6CEqill7r6M1ngkjdJbkvUThpRznJVsAvE04ctB80QmRYFTrI7Jkc1p6rZ98C
	dFQxoe50OVT7siYK5A8CPaf/jB4dqhMrPipFAxtgC301QgkDE9UYVmMQiLZ53pXs
	3zOXncxD9b9t1M4c55gxALsTH1WwXMszLXOEelgY/pTKGQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d80hethrp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 10:00:20 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2c0f6593ef5so6832203eec.1
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 03:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774951220; x=1775556020; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f0e3aQFphquzOjRFJVGvhf3/JD/EB8IFSfQet6yYplU=;
        b=VubtkkL/znSsw+utQQAxzsBHHTwCcPCYEcdNIId4So/slooR+ANNL5Q3WalUQvZil8
         5nWCIixA5I2m/NMvuGuiwSz4FnJuVc7Y4B9I0C9hzue2GKSdrzE2lJdP8sq+IZkP73Zm
         GemqRIfOTl9qFN/VRpre9CFV7ErVWMMkknx/UwXxSiPr98x9SvK7QevVogd4S/YwfMDE
         UAtMP1ee7qbwxAKUg5zX8GUNQApxX+OxAd0hbgJ/vbgMZB9F5baf9/bv3QOTmiFMzvJI
         gqkj2NNn8OL3uvaEZmFe6RSwBxIxyUHK8/ewKJyw88Sfjzdp+nIXMn6C4ADmPfutTuft
         4kFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774951220; x=1775556020;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f0e3aQFphquzOjRFJVGvhf3/JD/EB8IFSfQet6yYplU=;
        b=f6b/WD2yLfitAXBwtp2RjDpBxC8/AguOnynifIt+1ajlY6OPS0BL6GsjNRyO5BWF2t
         n/VlZbAT+2pLTPBc9ueoH5WJLZKAxNz2Ke4NaIThi2sxMnDr85vkbdjp7qo4hpLoTuKt
         M1JqfNjDmbMD11q8V/BmV/FRPOVl+4VOfRDI26BjaV9BDjk8bekbqMFDYX/U8/7gI7V9
         ZkwlX62+U0xTRB2E+JaJpwbhCKstBkY6OV8hVziaIHMOIs87X2i9Ps4IPPMet0Kex7yR
         S6yKOJDx2Hb0EaCVLeI8cfocN5qK9peNCsUr836ikl7o/q2JfHlXRz0Ri48+gcKxBY0X
         km+A==
X-Forwarded-Encrypted: i=1; AJvYcCV6siwrkOZeQ7T21dZaitKwhdHmAkPDQH9WzADfGbB/eRFBDqF9eOw9dX0hixd6hN0bJX/Y6ra3y8w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUf2c0uQdGV5BniW0xd3Vqi05xmicTxNXQDOLtkWlDr7SvTf69
	0u0WHz+KU/Gb9WW8NKVy6MmxibGTEY7c2a2/mgGwRjhNh98MN+uUUSpQYIvpglsXElSIHV+jLyw
	2vklXGu9BbSPjlwaxdrituKlffL4OLS9BAMV9f1c1Sn4t880HFKXqCihv0ZDpkWpERpo6
X-Gm-Gg: ATEYQzwNQAj8EqGhzQNg+zs1cVfZKSu3TGWA3DKClmLLP10Ul/bq8R3TlUCYqYRw99p
	WgFe+x9cLewd1a2Xgu+ITw0rWcO7C2r5kUFBIPj/auXhZOc/w8K2KphPTbRLOLVStSxRecpKSpS
	w9WaPvUqHom6AxfEFJOHpUsnty8Y1b6vlu4G1sfGobgvz2ixnG0MBvdUgm3E5JVm2YyWQmwOZfg
	IfJYDjM9RmCr6yL9uIrPS1/TGT0jUys/YZcfGCJ7FZu7/PZ1w6tCHvdJA8ZKTBa4wnn4+CfdrK+
	h2eD7XCUGshsWrNXaTHXU+T6mniZ8LwtldfQZyh2Sl0CA25+Yx3QLLIRu6cGpHhUgCegUdTaUrv
	2sxDJ98qastQSGAXzZ4mBHfA3+k1pbe/r7HOuB9Dp9rgF+3tJkQ7omp8YQAqJhag3enDl
X-Received: by 2002:a05:7022:eacf:b0:11b:e21e:5653 with SMTP id a92af1059eb24-12ab28cb63emr8441187c88.19.1774951214614;
        Tue, 31 Mar 2026 03:00:14 -0700 (PDT)
X-Received: by 2002:a05:7022:eacf:b0:11b:e21e:5653 with SMTP id a92af1059eb24-12ab28cb63emr8441168c88.19.1774951213980;
        Tue, 31 Mar 2026 03:00:13 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12ac09e3872sm12108788c88.13.2026.03.31.03.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 03:00:13 -0700 (PDT)
Date: Tue, 31 Mar 2026 03:00:11 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
Message-ID: <acubK1ITm9r2pixy@hu-qianyu-lv.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-5-ce0fc07f0e52@oss.qualcomm.com>
 <odmf4zxf4p3luqimkbhggg6cyvjnlfhjsqsvpwpu5ctkviogrj@bmazfab5hb5y>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <odmf4zxf4p3luqimkbhggg6cyvjnlfhjsqsvpwpu5ctkviogrj@bmazfab5hb5y>
X-Authority-Analysis: v=2.4 cv=Gb0aXAXL c=1 sm=1 tr=0 ts=69cb9b34 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=P3UjBcrBE1G5PUaxq5sA:9 a=CjuIK1q_8ugA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: SXyL9EopDm4GvimeK5q427YDHUcQsRLJ
X-Proofpoint-ORIG-GUID: SXyL9EopDm4GvimeK5q427YDHUcQsRLJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMxMDA5NSBTYWx0ZWRfX5o2sG0HE+HFM
 icKKftlG9mNgqh0H+6XBfJbeH6LNZoTbyzW0tQQP4ArCJzaEIaQ4ws52n/V/YuTAS+MgoaYnsn+
 TW9QoojGCnfYIDT260QF2dF0NE/Hg/GZYq/VpaxOj1HradAfPkKhIihBCmoaJ282aEOKJ8gx0jf
 F34POvhIKWiOwC4ydGF/ZtrwS+xsZE7uVZIc8pr7j41vi/3NKH7VO2GjpDnxW5eUNtYAfOP9ej0
 EuS2jI3FZAp7oRZb57CIC36ZFjIenS3ADSrnuHoyXPy4yvEdpXq6Jc1jGGTkG9SJD6NV6zr1Uei
 87YWF4zfZOa/0EEEBJIsa5MiORiqkERFkf+FApqd8P9qpiFlPz9kbcgMZMFb9v10s542b1iLems
 8uBj0qk4wmKXfMq6aVElu3kwo85OnFMWcFmAbqZaZJo+JEVpA09douSIeFbVWGUPjyhXVSB5MgU
 CgaZi4xb0p4I+n4YdMg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-31_02,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603310095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_030021_827032_90458438 
X-CRM114-Status: GOOD (  20.51  )
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

On Tue, Mar 24, 2026 at 11:21:19PM +0200, Dmitry Baryshkov wrote:
> On Mon, Mar 23, 2026 at 12:15:32AM -0700, Qiang Yu wrote:
> > Describe PCIe3a controller and PHY. Also add required system resources
> > like regulators, clocks, interrupts and registers configuration for PCIe3a.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 314 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 313 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > index bde287f645ee94116a489c55be3b7b80db3815e9..52104607a1713323fdfe2e7de710e38c1e22d06e 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > @@ -736,7 +736,7 @@ gcc: clock-controller@100000 {
> >  				 <0>,				/* USB 2 Phy PCIE PIPEGMUX */
> >  				 <0>,				/* USB 2 Phy PIPEGMUX */
> >  				 <0>,				/* USB 2 Phy SYS PCIE PIPEGMUX */
> > -				 <0>,				/* PCIe 3a */
> > +				 <&pcie3a_phy>,			/* PCIe 3a */
> >  				 <&pcie3b_phy>,			/* PCIe 3b */
> >  				 <&pcie4_phy>,			/* PCIe 4 */
> >  				 <&pcie5_phy>,			/* PCIe 5 */
> > @@ -2360,6 +2360,318 @@ pcie_west_slv_noc: interconnect@1920000 {
> >  			#interconnect-cells = <2>;
> >  		};
> >  
> > +		pcie3a: pci@1c10000 {
> 
> Incorrect placement. 1c10000 > 1bf0000.
> 
> > +			device_type = "pci";
> > +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> > +			reg = <0x0 0x01c10000 0x0 0x3000>,
> > +			      <0x0 0x70000000 0x0 0xf20>,
> > +			      <0x0 0x70000f40 0x0 0xa8>,
> > +			      <0x0 0x70001000 0x0 0x4000>,
> > +			      <0x0 0x70100000 0x0 0x100000>,
> > +			      <0x0 0x01c13000 0x0 0x1000>;
> 
> [...]
> 
> > +		};
> > +
> > +		pcie3a_phy: phy@f00000 {
> 
> This one too, it should be before PCIe3b PHY.

Okay, will change them.

- Qiang Yu
> 
> > +			compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
> > +			reg = <0 0x00f00000 0 0x10000>;
> > +
> 
> [...]
> 
> > +		};
> > +
> >  		pcie4: pci@1bf0000 {
> >  			device_type = "pci";
> >  			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
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
