Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61342F94CC3
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 06:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AV+bNzRIw1gkC+6l9KFeEixzWTsLutw19/exx3TeDeg=; b=kNjP1gxJwM9XWy
	jjMz7eyaKR0EGLXNesgu+VTC8JK8hRB+DTtVEjVK0dx7cGGfSwAme8NksbZZ6Tr7ExWUFJh79kcTD
	G1jc8R+gJzCvT+L3VPRQvXKCKvyxjg7S0yqHL3PlxDvhgkoajmkS1uBSq6KcBopKDTbCPQpjGnzuu
	l3/6pzAgr4ia40waWRLarvTTVGpROC7Hal1a5BIWFhDAGZcZ7oYQbiNwvN73rIjqHxx4V6yKde1RP
	0T4fQQrq/Xyf6C4wExb8SxxIL9i8vfCRmAp4jlXV5kXXDNdssV//3eY3mNvW602V/wb3owIpSrrGo
	odqgWC/nyen48un9EhFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQvt-00000009ef4-4642;
	Wed, 22 Apr 2026 06:19:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQvq-00000009eeU-3eD4
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 06:19:32 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M5DRZR163911
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:19:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IZDqBmsRSxFLnbIPiI9lg3ef
	yggUSYIXImGxQoi+iYI=; b=jnA4b+hWcSUhbaXH28EHm7gEnsNNpTKwBUVj+XQw
	F+MMsinf8sJaWxhnCo0/lY5f6PnJPjNXkI51UHyY+nS56GxBtncGmtfoxHmi2UWb
	1+GVCnSkM964UcuXJ8j0z7K0xaVw2lIWT17BVOI5R4Cobj5YIMF7uSAdi4zDirvg
	m9bEveEHKBP1F9zvQbS8Uoilyjh2I4cnbcZC/LyaVGYG4oXTKiQXs0cPvrtzQsKe
	mfCvZhDsPTjdmwkZjTcbjbnCyxiZ03RgNKWKAq8T0s3L/lrndtWKqOplP4Idykin
	WzPS4bQx8ZoEzO9rPA4ua81K26HVsnVX4xkqZLdBLVa9Sg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenhhws5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:19:28 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2bdf75bc88fso6143843eec.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 23:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776838768; x=1777443568; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IZDqBmsRSxFLnbIPiI9lg3efyggUSYIXImGxQoi+iYI=;
        b=TtHKYajv2WOAPyLMGBC4/x00uq++UtdqXwKWuH7AxCLXLYeCPixpp9IsBTydnl4Nau
         pZzItbdazOZ07UCf+Z5bLFf2/NSHAhQhi0BZMALyXRhfMkyo1akjEO5rmUeiQnbMR/DA
         JISo9Wg4C2LcnamgFGcODL1thyN10RMS/y7u9DcvHR2BJnu0F1KiAUUNl55PWiWSHPPl
         fFjf7b4yzxiaXc5zkwMzNNcWwnla3Y784F+6GN+Jj7KAR2QS9P9niVQXTKzIjLumwRjU
         II8nfmPRdQg5Xiti8YdzFfIzyoZhB6KFYVRkS+zqHbCRxNz5YS1+KV36MfOnFAhxUJVQ
         G3SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776838768; x=1777443568;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IZDqBmsRSxFLnbIPiI9lg3efyggUSYIXImGxQoi+iYI=;
        b=FCoIQb4h8/7u34bwpS4YYi6NA6Bv2zrN40dNAwahamjJ4WMc43y1UJMe2MiDpp7dxC
         CnReRc6VGYziqQGGE9xsfOLZPehc4Q4sFe71kRpe6yV44+LaXkpRnHwhZQ7j2020b6F8
         N6jnWiZzhLNOvjcR0n7na9c5U3GcYF33DAOGimxjwzlsLBXw4lfM2Mr0iM35XdqqaEf4
         ZOzfZhBiSt/Oe//YcIbA2V/rNaAYO49OUpzLGook3whxhZ8z2IeZiKgg3zJ2xXLLwpMo
         e2DTB/LxtJU9bxbC09g2uTHxqL+jaa4w2PwfbpPlqS6IH/+sDYTJ9RQU4urUiOnqGr8m
         DoIQ==
X-Forwarded-Encrypted: i=1; AFNElJ9fJD7Az75yCAT6azJjpqWdYh+3lbgrCmt3EEZRKq2J0x3vPyA3x0ZIK1Gc+SkiutwyWkgdiWXQNkc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTuEtJ6D+AhlR4KGZbBEKI3x9IGpoT1EpkTubBUxfztXN8LE4j
	ubdDhuQnsUNNq3McwO359PXpGVr6TZQl6bZYFsGIuyGvjdULJfGVAAHvnS4PWsiW/mxc+qge/3B
	wWakTDNRF0MTbawEX3acaaEgA1V5s8r9rsDcgsvZs0PcVNAquAT4dS7cqUT4m+jn7ArLa1dK5vO
	v/
X-Gm-Gg: AeBDievDALxSIIWV2qfXjYP5HWciIgjYqPkPWptorHAnU7W8IWS0rUVEhdSQ6MzKwPI
	26RveC2/umu2O1YyCb89amvqwoGZLMM2UBIr+Ow11cBOXvqlCBAo6RpeQ3qDpeyHfCtK6JD6dnz
	+aegOjVMOPvnUc48wic2FrYRbAYS7JyOKJOtTfN7RBUyqxXYv9z7JPgfVvYUi4x1trg88MNWy6A
	Tx2YFywQz06sReNDRMXLJRuo3c4WIIHqKyA2lN8U/DQlgNcpFCMR6I+0ec9xHp5LA2d9zWgSdnk
	BZLS7lkYU7Dpv1JczNj6mkPTx1IIp814tQf+uY8lhxtIuHHEt5BKi8vp2FkSS5vezHxce74KYPE
	2wfrNQ6Qp7N47c/+fl1iQeE/WMjpR8kKIGfDArAnVwsixWMfKSghAU2RhK2rHHbiMC/VpW+moYB
	re5vE=
X-Received: by 2002:a05:7300:1352:b0:2dd:6937:79c3 with SMTP id 5a478bee46e88-2e479210772mr12236260eec.25.1776838767634;
        Tue, 21 Apr 2026 23:19:27 -0700 (PDT)
X-Received: by 2002:a05:7300:1352:b0:2dd:6937:79c3 with SMTP id 5a478bee46e88-2e479210772mr12236241eec.25.1776838766937;
        Tue, 21 Apr 2026 23:19:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e53a4a80c7sm27395199eec.10.2026.04.21.23.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 23:19:26 -0700 (PDT)
Date: Tue, 21 Apr 2026 23:19:24 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <aehobKDsh3XGOmsw@hu-qianyu-lv.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
 <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
 <aeBQRStG3imY0cOe@hu-qianyu-lv.qualcomm.com>
 <20260417-awesome-tacky-coot-e59a30@quoll>
 <aeXUZ1uSEJ9InUtw@hu-qianyu-lv.qualcomm.com>
 <20260420-optimistic-unnatural-stingray-80da35@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420-optimistic-unnatural-stingray-80da35@quoll>
X-Proofpoint-ORIG-GUID: 2Xcec0COqHNe3G67afkFM26Jhs19c09x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA1NyBTYWx0ZWRfX5fheDv2powda
 ka3ARbMN5Kqiema0Lli/PzIlVbvoBuTG4jmoERATcfMxAvFQFl53+Xm6VzO/I7KMvvjgQQr1+kN
 vJa6shjAo6JrPZ9EAa07b9y+rJpkm3UbyRZzFX0i04YusvFGCKK+YhyuQ621P74b5ZAtHExTfmJ
 Rbcplls+ZBChy5l0Fj6Z5qt+Dli93KY/yImg8t7M49YUWachclTYadur3wWm0HVReAb25BgbNf2
 1s1i9S9gDq162e5pqJa1F0xQ9tso6br7Zpg6aw1N3HuFWjkH6QWY2zHbM/XRB9vrKpuGv92yBHl
 622syPk46c3KnHkLh+EwFIIKKGPi2nYI+oiBobxRRo9DqWYmkACcFHCig4W1MzC8B1UA8HC0yI5
 cC7PkesZpfFGUu7VwqJHr46MagFcmBOMfJzlNdFSAEd2QT7JdU3/RW8D2JLKM0cckETaZ2E3jtc
 87mPsW9SJobJ1FWoopQ==
X-Authority-Analysis: v=2.4 cv=WKJPmHsR c=1 sm=1 tr=0 ts=69e86870 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=TH_F0qHjsvcmixwPkT0A:9 a=CjuIK1q_8ugA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: 2Xcec0COqHNe3G67afkFM26Jhs19c09x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_231931_056301_15EE2D5B 
X-CRM114-Status: GOOD (  44.43  )
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

On Mon, Apr 20, 2026 at 03:23:43PM +0200, Krzysztof Kozlowski wrote:
> On Mon, Apr 20, 2026 at 12:23:19AM -0700, Qiang Yu wrote:
> > On Fri, Apr 17, 2026 at 11:18:08AM +0200, Krzysztof Kozlowski wrote:
> > > On Wed, Apr 15, 2026 at 07:58:13PM -0700, Qiang Yu wrote:
> > > > On Wed, Apr 15, 2026 at 09:50:28AM +0200, Krzysztof Kozlowski wrote:
> > > > > On Sun, Apr 12, 2026 at 11:25:56PM -0700, Qiang Yu wrote:
> > > > > > The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> > > > > > 
> > > > > > 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
> > > > > >    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> > > > > > 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
> > > > > >    follower to form a single 8-lane PCIe Gen5 interface
> > > > > > 
> > > > > > In bifurcation mode, the hardware design requires controlling additional
> > > > > > resources beyond the standard pcie3a PHY configuration:
> > > > > > 
> > > > > > - pcie3b's aux_clk (phy_b_aux)
> > > > > > - pcie3b's phy_gdsc power domain
> > > > > > - pcie3b's bcr/nocsr reset
> > > > > > 
> > > > > > Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> > > > > > 8-lane bifurcation configuration.
> > > > > 
> > > > > Do you describe PCI3A or PCI3B or something combined PCI3?
> > > > 
> > > > I describe a single x8 PHY with resources from both the pcie3a and pcie3b
> > > > PHY blocks for x8 operation.
> > > > 
> > > > > 
> > > > > > 
> > > > > > The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> > > > > > requiring the clock-names enum to be extended to support both
> > > > > > [phy_b_aux, pipediv2] options at index 5. This follows the existing
> > > > > > pattern used for [rchng, refgen] clocks at index 3.
> > > > > > 
> > > > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > > > ---
> > > > > >  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 53 ++++++++++++++++++----
> > > > > >  1 file changed, 45 insertions(+), 8 deletions(-)
> > > > > > 
> > > > > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > > > index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..14eba5d705b1956c1bb00cc8c95171ed6488299b 100644
> > > > > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > > > @@ -18,6 +18,7 @@ properties:
> > > > > >      enum:
> > > > > >        - qcom,glymur-qmp-gen4x2-pcie-phy
> > > > > >        - qcom,glymur-qmp-gen5x4-pcie-phy
> > > > > > +      - qcom,glymur-qmp-gen5x8-pcie-phy
> > > > > 
> > > > > That's the same device as 5x4, no? One device, one compatible and this
> > > > > suggests you will have three PCI phys in the DT - two 5x4 and one 5x8?
> > > > > 
> > > > 
> > > > It is not the same as the 5x4 PHY. In DT, we model three PHY nodes:
> > > > phy_3a (1x4), phy_3b (1x4), and a separate phy_1x8 node for x8 mode.
> > > 
> > > OK, that's what I wanted to hear. And that's what should not be done,
> > > 
> > > You should not have a separate node for the same hardware. First, DTC
> > > will give you a W=1 warning, although warning itself should be moved to
> > > W=2.
> > > 
> > > Second, the warning tells important story - same hardware is described
> > > twice.
> > > 
> > > You only need phy_3a and phy_3b, so only two in total.
> > 
> > We can keep only phy_3a and phy_3b, but still add new compatible
> > qcom,glymur-qmp-gen5x8-pcie-phy in binding, right?
> > 
> > For boards that support pcie3a(1x4) + pcie3b(1x4), DTS would be:
> > 
> > pcie3a_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };
> > pcie3b_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };
> > 
> > For boards that support 1x8, we would override pcie3a_phy with:
> > 
> > pcie3a_phy { compatible = "qcom,glymur-qmp-gen5x8-pcie-phy"; /* additional resources */ };
> > pcie3b_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };
> > 
> > This still uses only two PHY nodes and DTC will not report warning.
> 
> IMO, you do not need another compatible. Device is exactly the same. If
> wiring on the board differs, e.g. you have 8x instead of 4x, you:
> 1. disable unused 3B phy.
> 2. Add to 3A missing resources or the phandle to companion node.
> 
> At least that is what I tought till now, when I opened the HPG/manual
> for Glymur phy.  Someone skipped important information when PCIe PHY was
> upstreamed first and glymur.dtsi already got PHY 3B described.
> 
> Reminder: writing bindings asks you explicitly to post COMPLETE
> bindings.
> 
> If you posted COMPLETE bindings we would question all this and you would
> have to check in user manual that this is actually ONE device.
> 
> There is no 5x4 phy 3A and 3B, at least HPG is pretty clear here.

PHY_A and PHY_B are two sub PHYs that can act independently. I thought we
can describe them. And for previous target eg Hamoa, we also descibed like
this.

> 
> And you should start with that.
> 
> But you posted first incomplete binding, hiding the rest and now you
> have 5x4 merged into DTSI.
> 
> So let's rephrase based on manual:
> You have only one PCIE phy3. Not 3A + 3B. That one phy3 can be
> configured by consumers (board) differently, e.g. by requesting 8-lane
> or twice 4-lane phys.
> 
> Let me send correction note for glymur.dtsi.
> 

So we can have only one compatible "qcom,glymur-qmp-gen5x8-pcie-phy" and
one phy dts node?

- Qiang Yu

> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
