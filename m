Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C055F36C39
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 07:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abeVkjFsDFMwJp8dqctyVlsl2iipsg7P7Qld116sogk=; b=2LPm9zlrRmJE7M
	/QyRwMZIUwts387L3KKOVN1fU3mNRASy+iZghnzoTRAqMIT8OU8zT9o9O1Liu/545cfSRlUYRm4fj
	mUVkwmCCFv7FR8UfngjS5l8ooGMPaFfo63XkW3M2o6HypRG04atTpcADx6RZBPeIJj4jotDnoZyDZ
	dkmvpU4YcKul7aajk+aRE99EJ92xcWSFzSfk7HccI9WQeMUaLZLKFDS42/NZc8YKSpsYD7ny4D/eG
	/bZs9y6C32egdPJ409metpbEIb0t9L5K/7UqVWPf4CVTt4F2NloDf8pWDi02kBoksLj/hN7+hty35
	aSIKafSOKmxTpDZwGOaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEiyc-00000006Y0m-03q0;
	Mon, 20 Apr 2026 07:23:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEiyZ-00000006Y03-2fQX
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 07:23:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63K50jsM1977967
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 07:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Yji7lTIBXwCeSFI+byPZJvWM
	ffhhwyr+nkMpWfwkLng=; b=H+wmpP8dDKJLdvF8GAHgo0f3u+vsX+5QeeMyuEXh
	UaC//Sf9ipf+0Bs67aK8v2RXlBGJBYcJPZZLz+/c6V/wsQK9TdtGun9RQNQsbzN9
	+zTfrtMsNemIzXTZt+GoMzOaiM5P2rRHMMILf1/OH47gkUA8GEHFc7aYYfFK8Tvy
	dDJhClk2NL+MreHGT9Rd7/1phAm26gXZ576GHXVXIXbbXw1DdDZ9FQ/VuhluAP66
	G6q8RBK5lG9T4hGhohKNQ1h6MLoqdEbVrZIOSDht/r/xiGQ5yo3vr4LPqPXFcaFv
	oQCgrrlsCDaIQ1erN3VkyHWz8PLkApA+xj/NMc0urwZUkw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dm388mgv9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 07:23:22 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bda35eab74so2663922eec.0
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 00:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776669802; x=1777274602; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Yji7lTIBXwCeSFI+byPZJvWMffhhwyr+nkMpWfwkLng=;
        b=JMH6pKqX8CYN2bkCConb9mw7mmpXbrT2ROrRaiop6zSgaP/7Du9oySEkf7G7xIOt4v
         sLHNS9+lDhD+LTzcz4qLD68QHB/nY9u8tDp3Xm+0y82lpl6fu/b6XF1rGfiezXjpu/iW
         Pk8IBcrjwWftHpSd8zvBQyRnyWWyG5eqFOsekTHNnQS1RsRwfOqRRiK+D1+p0y31i9DU
         ki3efAEeGh3O6++RFGmYV8IeX7Oez7tgAe1horGoChdlWaef/igo6gHT8N1xYurT41BV
         akRHUdtnGtyZfOugKVfuSEn5d3htVaJgSd4PV88FO9j6j9H6sWavOK4h8Mv2nsDCGdc0
         8UKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776669802; x=1777274602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yji7lTIBXwCeSFI+byPZJvWMffhhwyr+nkMpWfwkLng=;
        b=BlW8/UoTp+mOdLCVSr3sZhOS7F9jo7tAadE/zZhM2iuLr+WCkJUgKfgtBTsKO0tcxN
         uqximP/3WaPh7DIjBkq6GwYukUcQ5d4/vDru1tagArK2Zb2q3eLxF7oDQJW4SQQSjj2P
         s++NiR/3cWdWRSjOV7R5Hwk3ojnRvWf0b66yPk7kcdGSx0c5Q1yv/VcQON3temygOfnG
         evW/irIkVhgUsnRlpRLs+6JvshKNyFvLUKCCyAQB7TRhuR1MqqbwpQ0aT2LvTkAybSFn
         0YD0GFKFrbMzBA4twZZKZ6yC7RmMFkEJ7/AIKtKbBFH3B4+lPgwLaovxVSuVqpOZ58dq
         Mahg==
X-Forwarded-Encrypted: i=1; AFNElJ8j2Ge3agC70L9NYchEzJq6bZXE2IQqoe6tO/OJNG0k4AfRzxcVEc31YBizMSKhzOZ4e++OkS94VEo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLEk/vME70RTj8ErVd41g4z8ZM0jBKxMyPfwEbYbCwggzXdA+0
	DnQTAvkaAFewfxGx56sXScs9B1e4J22lPwqsSxNyXSVob55NYWY0Sj7wuBSouayQVVMqI3i2DQT
	cn3G4J3zGqZJWbmKlp9dpobpfbJvPJj7ppmfUocPS8teqwsrz4bniLOkwapI2WwxvTwVh
X-Gm-Gg: AeBDievMXLKBdoN3NRfQmFt6HJqYfl3NgjAzDW5RBvcuVvPBazIMT995EcFZmf0EiFG
	878f4T9aNoqQ+56fJIVmstzKPIj1XKCp5RJU3zlmnvv3s67fI5WSvxjzvBqnEZDAMyyINvRYHYz
	zSgNpcSKNrODXVyHKTLxchkAn4REslnJZ9mS+IwaguZX7Wb1/TQGwibRKtu/eVgvf3SsgWCCjEd
	Hbh7yQwNWvi51Oj8fK5vb7LUNld4S+4dx6v5Fj0I7mTIs019ewG2TR4CP5Zf12SPXL7XCu7FgLD
	jrTE5Ajc3Kz4HvsHM/6HZ4vmlqbOCXdC52/UbrPbxcixcrCSwAa7B2S/SWFPiuY/M+SVECRD5Qg
	VpErfI95WobGQ7T5Am8oXmvH5mBiUNiqwDeWWWDqJ7d/XnxrC7XoPoX6IjxRclqpMip/RaB759i
	nJ5Xk=
X-Received: by 2002:a05:7300:dc8e:b0:2d9:db50:c6ce with SMTP id 5a478bee46e88-2e42c348309mr4773546eec.3.1776669802073;
        Mon, 20 Apr 2026 00:23:22 -0700 (PDT)
X-Received: by 2002:a05:7300:dc8e:b0:2d9:db50:c6ce with SMTP id 5a478bee46e88-2e42c348309mr4773527eec.3.1776669801485;
        Mon, 20 Apr 2026 00:23:21 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e53ccd2564sm13637143eec.18.2026.04.20.00.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 00:23:21 -0700 (PDT)
Date: Mon, 20 Apr 2026 00:23:19 -0700
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
Message-ID: <aeXUZ1uSEJ9InUtw@hu-qianyu-lv.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
 <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
 <aeBQRStG3imY0cOe@hu-qianyu-lv.qualcomm.com>
 <20260417-awesome-tacky-coot-e59a30@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260417-awesome-tacky-coot-e59a30@quoll>
X-Authority-Analysis: v=2.4 cv=GthyPE1C c=1 sm=1 tr=0 ts=69e5d46a cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=AG9yAhbetzltrioosGgA:9 a=CjuIK1q_8ugA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: aPoMv26-A4RNts-X3uMvMVZlDKMehxGD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDA3MSBTYWx0ZWRfXxVCV2hkDzjQJ
 992wnddSIMoJGg1Z2wPX06+WgYadp0XqRztF1t4Pzx4BsKyYai76gYkUx4pQ6/B8tH/2aegXspR
 gvuE7Mqf8tofIACNQbg0XUzjZERYl6ECdFIsnjG2mc3ag7/A/WY53dZT2ISUMjHMxvjT/sW3Dzk
 h8lxAqADtKZFcoHvf++0crnIVQrrQP43+MnzlmTZQrvFLKg439G1J8S1JWyPIHVL59RpwkrTj1h
 UZ+1Se0l1xBAdLqknnSEC8jWTqPfeh1NE6TCNRt/gNJQcdln7kz0hyIfzKokcJmHZOkZ+yoxILx
 3LEgTHeoDzJu/URqa1/wBdTsX1lZaKzCFq7hMMWg4uBXIUTNx+TN0rIeJhcxfFlq5aIkVUKphej
 qaP85xXeAJBMgN88gQ/BSseIag0cA7gNrerFmHjHjl9DARFU8Ucb/r2nspACYFXXDDaXRyv6duC
 KqGeH3QrWeYALhgGjKw==
X-Proofpoint-ORIG-GUID: aPoMv26-A4RNts-X3uMvMVZlDKMehxGD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_01,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_002323_683762_D63E6321 
X-CRM114-Status: GOOD (  35.19  )
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

On Fri, Apr 17, 2026 at 11:18:08AM +0200, Krzysztof Kozlowski wrote:
> On Wed, Apr 15, 2026 at 07:58:13PM -0700, Qiang Yu wrote:
> > On Wed, Apr 15, 2026 at 09:50:28AM +0200, Krzysztof Kozlowski wrote:
> > > On Sun, Apr 12, 2026 at 11:25:56PM -0700, Qiang Yu wrote:
> > > > The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> > > > 
> > > > 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
> > > >    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> > > > 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
> > > >    follower to form a single 8-lane PCIe Gen5 interface
> > > > 
> > > > In bifurcation mode, the hardware design requires controlling additional
> > > > resources beyond the standard pcie3a PHY configuration:
> > > > 
> > > > - pcie3b's aux_clk (phy_b_aux)
> > > > - pcie3b's phy_gdsc power domain
> > > > - pcie3b's bcr/nocsr reset
> > > > 
> > > > Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> > > > 8-lane bifurcation configuration.
> > > 
> > > Do you describe PCI3A or PCI3B or something combined PCI3?
> > 
> > I describe a single x8 PHY with resources from both the pcie3a and pcie3b
> > PHY blocks for x8 operation.
> > 
> > > 
> > > > 
> > > > The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> > > > requiring the clock-names enum to be extended to support both
> > > > [phy_b_aux, pipediv2] options at index 5. This follows the existing
> > > > pattern used for [rchng, refgen] clocks at index 3.
> > > > 
> > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > ---
> > > >  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 53 ++++++++++++++++++----
> > > >  1 file changed, 45 insertions(+), 8 deletions(-)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..14eba5d705b1956c1bb00cc8c95171ed6488299b 100644
> > > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > @@ -18,6 +18,7 @@ properties:
> > > >      enum:
> > > >        - qcom,glymur-qmp-gen4x2-pcie-phy
> > > >        - qcom,glymur-qmp-gen5x4-pcie-phy
> > > > +      - qcom,glymur-qmp-gen5x8-pcie-phy
> > > 
> > > That's the same device as 5x4, no? One device, one compatible and this
> > > suggests you will have three PCI phys in the DT - two 5x4 and one 5x8?
> > > 
> > 
> > It is not the same as the 5x4 PHY. In DT, we model three PHY nodes:
> > phy_3a (1x4), phy_3b (1x4), and a separate phy_1x8 node for x8 mode.
> 
> OK, that's what I wanted to hear. And that's what should not be done,
> 
> You should not have a separate node for the same hardware. First, DTC
> will give you a W=1 warning, although warning itself should be moved to
> W=2.
> 
> Second, the warning tells important story - same hardware is described
> twice.
> 
> You only need phy_3a and phy_3b, so only two in total.

We can keep only phy_3a and phy_3b, but still add new compatible
qcom,glymur-qmp-gen5x8-pcie-phy in binding, right?

For boards that support pcie3a(1x4) + pcie3b(1x4), DTS would be:

pcie3a_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };
pcie3b_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };

For boards that support 1x8, we would override pcie3a_phy with:

pcie3a_phy { compatible = "qcom,glymur-qmp-gen5x8-pcie-phy"; /* additional resources */ };
pcie3b_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };

This still uses only two PHY nodes and DTC will not report warning.

- Qiang Yu
> 
> phy_3a could have resources of phy_3b OR could have a phandle to
> companion (follower) phy to fetch resources from it. I don't know yet
> which choice is better, though.
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
