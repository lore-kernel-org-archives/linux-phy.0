Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71744E9B357
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 10:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Av2ok8tVx8bANBBKdNPMDoqeCqefZZg9WKg0wyuoegg=; b=YfYuaPwP4HgUiR
	Yp5TG1Rrman9wqkD5lBwu9ymN5Ki9CVo09UvlmAAWuLCXcE5coebWGTC/InxfDgrI06d63AYf1w5F
	dxtnH9p5kEyKyghKGvYn+sw4bb7LmtOn7ccNf53+vYZpOvxv58XTwsYGceDKtRunMrgwXLeDdJb1e
	w6cEQEIdSnXbhUmvfY5LSRNbH4+to/0DajMqM+N4XV+nWvzYi8p4mIaaWhPCd71WqzDDP1rYdNMd/
	L6ayXvjhrT6fo9w4tnNUG421+nVNqwH8nziHajG4cJeasegTAwDTCAIyOnC8tOUisG+f9B1z0vjgA
	dJkSU+8YU0GoruR1IUZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx0P5-0000000CgjU-06qY;
	Mon, 02 Mar 2026 10:21:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx0P3-0000000Cgiw-2tvw
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 10:21:30 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62294nwn1291543
	for <linux-phy@lists.infradead.org>; Mon, 2 Mar 2026 10:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qc+PQLcGoUUce2r4NCoYXsIY
	gtlY85TRmH7qlp00OJA=; b=VRdC2N/mHMU+RzmszYje2TKYjxmdBvnTa9NpRZIs
	YYeQCxEx0hSIB0nu0vYpzKLRrSv1Q2JwypMlqzLYjQFb+xk/R785GokIuSTFRpT9
	JyeYY8ei53SUYZvd8epFTDerrVFtOJ6NWysUd0oZp0rZvNmnJ9OprKjYYc42HdwZ
	EZeJL4QJ7wFot5TOE8iEMVdp6xx8nFo0xv0PBB3zOZ7fK2bW+36wbmg/yPtCgI5X
	mLUpU/N1yWWisT3RtLUc4WFS8d5HNcV4HZqcUVjTeB75x7llLvR/jrhpYwup7xSn
	6cQBjiptV9eCJNOcUVnoZ+ezZwC2n3vlB1GQu2QbYAY4wQ==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7ku09hk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 10:21:27 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7d18cbba769so50876110a34.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 02:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772446887; x=1773051687; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qc+PQLcGoUUce2r4NCoYXsIYgtlY85TRmH7qlp00OJA=;
        b=UNe0rXNdofm/F20wgNdco+LwaReP0cNxBCRfaJtk7pbT8yAPOIjR/JoEAwYwrsHAig
         W4n6areTLWOyf5YzABcQmUlIy6CvFRRKRfw/if/LLZCTC4QcaS4bzm7d1UeoKDKHut/S
         65rpEXjhG/WgWzOQ3qWjKABTcSdIabZQWzcAHFZxi9+MPGLjM3sR3J7uJ5XrHBbwUE+c
         cRS1/YV1saGiNcGZnay29Wq+q0vQ0+v7l51iJDJJw17ubK6GOCBJaFKbDGGa9Nyc5mW3
         amb6xEy/iOoP2j6IawMDwXIkCwOd7pshtenB9qGHQEnywNaeshWpGYJ8ImhhjooAejIB
         uvUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772446887; x=1773051687;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qc+PQLcGoUUce2r4NCoYXsIYgtlY85TRmH7qlp00OJA=;
        b=h9YW9AwmBsxtSCh8s4mm0HSaL1HiTHqhGUIwUrW/kIg/RRMqtx/ZmGum5SnmMx8D9w
         jcrBacrUY0C+uvcuzR+fvtxYJWq2PXtJMq8wDEiwrS4uKDgqn/+fX6mKa9DwEBz33EjO
         dgf+g/A3L0LuddnYTvv0XxjXiIfoPmm8tVYbATZAaBEis6EbovAjJrsFLnhyZXb7VgvJ
         bYZX/BFVg2/L3C5KAdYmY/aZuzwsZlgIYotkzM88GDUpyup8AWEZwtfWqtR55+LPCrge
         ovS26aAEqTaSjzH6CURzNAHhSYCJdGqdYAESVrM3YNl/ImYDhBGzRrHvoBTLlRoPgP+c
         L35w==
X-Forwarded-Encrypted: i=1; AJvYcCUk569k1l8r5hyvL3WLeDAAImuwu5SlFO25NiA4WOeEQO5VRJdatllVXpJI/uO/Fmi9KLkIgOoRb8g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8KqXHKmQUpUe8YGkCmPxUb8YJy4kHJObKvLSSQF6aYVa6NP5V
	l2Zn3cMPEyZG+7mjc2CyrvlS3FHV2uh1W6gMrUUG2CJQNwzyNwL6eEwRMLqxLBJkAL+2Xk8OHpm
	0LnxS3DYcka8TrdRBZ65ABqx6Wp2BXTrzn5Jl6ZW0F/IpNiVVG65VhV1I1G3Zl52npDR7
X-Gm-Gg: ATEYQzwPGdTC+hF2Hq7sRTZM+IaPlFK1VxLEPEpGEGhW3It5w6oJ1nrZCQdJxD3y/0R
	qAfpBm3cA5PTeoWR4jwE5rK82eJ8ogNiC8K3HS/Wh45fpGcFdGSozO4WugjYqKVGA7scgvxmJQb
	J9SCzNxemQAjhiDCOUNtkid+lpbGz50vx6YBgnoqemG3v5KdBIzZIRWQWky9G0iXt7FB912fn+S
	fGF46Uer3nQBJ29X2zOkFWS66tiNhLN2pbaAYUa+fYzdtdX5yM9s5+pkOYuCo99nQM0cn4m7hwb
	PlV31/ZizVyyFwcl+rRzxa3TZ2XBCwOZM/2buf/K25VmM3EHYALJFI66xYOjERnW1A8aAM6T6Ui
	tark2rb+LGrWw95MxZK+AAbjr9RlEaJsixXVBisNQk84sjvkpBv1RAKZRo2F73nGn+vA6
X-Received: by 2002:a05:6871:3309:b0:3fa:ef4:3e3f with SMTP id 586e51a60fabf-41626f9aa80mr7482829fac.33.1772446886960;
        Mon, 02 Mar 2026 02:21:26 -0800 (PST)
X-Received: by 2002:a05:6871:3309:b0:3fa:ef4:3e3f with SMTP id 586e51a60fabf-41626f9aa80mr7482812fac.33.1772446886550;
        Mon, 02 Mar 2026 02:21:26 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d21196csm11368443fac.12.2026.03.02.02.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:21:26 -0800 (PST)
Date: Mon, 2 Mar 2026 02:21:24 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
 <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
X-Authority-Analysis: v=2.4 cv=V4NwEOni c=1 sm=1 tr=0 ts=69a564a7 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=Mqtz4aph0Rek3LVAYukA:9 a=CjuIK1q_8ugA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-GUID: fnA4aBv20A2s9xF8Ldho4xyTPW0sEBCp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA4NSBTYWx0ZWRfX1A/J3jETO+Vg
 BAYjmooh6qndytv1mkY5T7az774mShIMcE1E8OTTHGRW2iAAOY0p0bIExPlEDNRZ/8jCirQqZ6O
 LQcLiB2L7vs3C6LBIouArhbDIWFb/4IPWyFyG2BplV14kAoUY1LcaMzWRYOEyiERKQMfQlfe48W
 Js+vVry2XpTRMF5zbig0Z4BDNGE29JbbbWJAmvi2hrSLEbO7wJ+jGvqcvcDc54dRt2xVsUC18Ji
 1vz0GjGFKo5yhhwKTxR31EBrAaQHa893nIBFYGpnID2f4m7pL6R7j5PRQLVe8PEbAstc8gTmufL
 05PMgLAv1ulLz16T9hiTgffJq0RgI0xoTFtIpMvMBG8OUpRWVmRvUxv41a7RuwHgEc9L4g+393S
 s7NR2FN3C7G6SQ4IZ8r9BiDcqxfad+PQF0B9tC4t1MLuhvxV5vX+jUUYOHfbSgMrtClH6Wz26Uw
 iG99eWxeP1STh59vQLg==
X-Proofpoint-ORIG-GUID: fnA4aBv20A2s9xF8Ldho4xyTPW0sEBCp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_022129_851977_A39C2ABB 
X-CRM114-Status: GOOD (  40.53  )
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

On Fri, Feb 13, 2026 at 07:47:36PM +0200, Dmitry Baryshkov wrote:
> On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
> > On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> > > On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> > > > The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> > > > refgen. The refgen itself requires two separate power supplies:
> > > > vdda-refgen0p9 and vdda-refgen1p2.
> > > > 
> > > > Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> > > 
> > > How does the driver matter for the bindings? If I add dedicated driver
> > > for refgen, then I change the bindings?
> > 
> > Yeah, I know that dt-bindings should describe hardware, not software. But
> > what I meant to say is that the refgen is different from qref which is
> > controlled via TCSR registers and its LDOs are requested to vote in
> > tcsrcc driver. The refgen doesn't required register setting and it doesn't
> > have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> > this statement in next version.
> 
> I must admit, I could not find references to the refgen in any of Glymur
> PCIe-related HPGs.
> 
> > 
> > > 
> > > There is qcom,sc8280xp-refgen-regulator so why there cannot be
> > > qcom,x1e-refgen-regulator?
> > 
> > I think we can and it seems better because the refgen for pcie phy also
> > supplies reference voltage to other modules like usb. But I checked the
> > qcom-refgen-regulator.c, it contains some register settings and there is
> > no LDOs voting. I'm not sure what does those register do, maybe Konrad
> > can provide some backgroud.
> 
> Those regs provide voting for refgen, because on those platforms DSI
> block doesn't have a hardware vote for refgen.

Hi Konrad, Dmitry

I tried to model the reference voltage as a fixed regulator but the fixed
regulator driver only supports a single vin-supply. However, the refgen
block requires two separate power supplies (1.2V and 0.9V LDOs).

Would it be appropriate to modify the qcom-refgen-regulator.c driver to
handle LDO voting for both the 1.2V and 0.9V supplies? In the regulator's
enable/disable callbacks, we could vote for and unvote these two LDOs
instead of performing register operations.

- Qiang Yu
> 
> > But on Glymur, we only need to vote LDOs. So
> > what if we use a fixed regulator in the device tree to represent refgen?
> > We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> > PHY would just need one refgen supply reference.
> > 
> > - Qiang Yu
> > > 
> > > 
> > > > and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> > > > conditional schema to restrict these properties to only Glymur PCIe QMP
> > > > PHYs.
> > > 
> > > Best regards,
> > > Krzysztof
> > > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
