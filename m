Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB6FFC43327
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 05:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxxKJYE6b7kL6FARXZG/gfX7E2qUljcCxmXkq+rRpIg=; b=O788Yz9zTa6iBx
	a6M3j1XBvg6cDH4iwp5o6/exudan1zOSFb8rGnGS/zcqzFMOuRocwR0D62MZ4VMzd9GQ9KGbw/1C5
	ytc2gHl3grKAtE/hEFVYlscMR7SsrIxF7JFsZWfd3rl+9xj54FkvboIydMBvRmVr0SeUaJGMFH39B
	++S0GxihxKmYae2eZUikUQgVf8lKrWyWnZTnZWeIif0NObhYlP6GGsXrnsCZ3AxgoQPqt5h9m0BPh
	QJ/bZmr7GIo3rY8syEKhWw+HnahjgCO1qRldWHzNkI6fHJCRKJ/8RUrs50wFD2Jmd9Bh0rHHT4wze
	0bXr6d15hg1/6vsLuefg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4Oa-0000000Dhfa-18WN;
	Mon, 29 Jun 2026 05:19:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4OX-0000000DhfE-39Su
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 05:18:58 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T4NJZf1780983
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:18:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aymJ2Te3Ti6zcqD0Sr/Ev4D+
	oYziEjIRd/G7pRUp6DU=; b=DvGKEi1VgLheChoQ3f76P6mzdqBkKh+uMuLUKBiS
	8UN/2VPWnSogd/e8Hq4DnUpb+049lrk6iUFeZLsOrcGji6tm5Ke19TwjFRuZ08Fl
	bxnLL7gHKlNOzspBPMaXavmJaVbTYHeLv7kwUG00oSZuKHBqSLARX8HAqi1/wuq7
	VJ+HI4atxmzpWSTHIAUeSECwTytWgQSrPDOlL3h6LFWU8ziLoJgNSllryPlJf8Sy
	QFvpQRBpvh0m7USoAKDOoOt7JfGh8lNq9227RPHmPic9/ZZnXVDPdOEzQxLFYA1p
	Ss3LOwP4jNeLrBiy4khqCvCxZmLgvzxjtbe7x9ANMPIIvQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f26u74n0w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:18:56 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30c011c7cb9so7308496eec.1
        for <linux-phy@lists.infradead.org>; Sun, 28 Jun 2026 22:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782710335; x=1783315135; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aymJ2Te3Ti6zcqD0Sr/Ev4D+oYziEjIRd/G7pRUp6DU=;
        b=OR0oTBPQMyE9mgodMLfhOvV0aGUGmu9kUl91WpotRcEOOVLwSemriMY8PYkbz3g8rN
         SSZkkg2XKIH+h20FvOA67sTHEFEfKibaiHJTlVI77Uw8kJdjwrE+eZMjRJUvPVynqlK0
         5yITupYDcVNP/Fpr7HHE5O2DR13rTnd5nmq8MAh39zh4TJb7Lq64N7s1bZcVpCVJv3GX
         DN78Szf5sal27JGZLYAx5eBpYqXoU2NB48efHH3RJX0xqgIJI8/lHe4XEmJ6qear6/6N
         BNuIK/sBfm5/PuEyYBPPn8qiTtj5HnG5MWGTvlN8zgJDHKR96xeULq0sOJt7VY0hK+F+
         AvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782710335; x=1783315135;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aymJ2Te3Ti6zcqD0Sr/Ev4D+oYziEjIRd/G7pRUp6DU=;
        b=PiEo/pxAIcsrzXc5sqaBhfbQQ2TAujCs3/M2R2WiJDC3Ff7ENwbsZacL+gvLn89X/+
         eE5qxLSgd1t6O+uFDAkjXgv9hf7ckjvRca3Fl8oIzqFbIl73oBtPQajpFP0zUXMILCs4
         IJUgcVyOVstBSU45npf498JmPBbP3DCvc0MBENN7WHNIbZR7Ff7M3Kn0/jRqILjiblQK
         Iev1/XXDc/VihdgYaaGSb9lXBz58pGDDYG6EtvYpo2Ym67jRIlmMj94n/V4KCDYpQf2D
         FkutRUrv9rKxVppz1FC1OCURll9XrqlAGTMLaC3IVLdY1IEgna+OduFh+ThXn5kqR+2u
         X27g==
X-Forwarded-Encrypted: i=1; AHgh+Rr6VoWwZm1Pm9Bw6QnWY+vSPxXYuN6piAN+GUaUEccXsWAV/GyM9dikG551tofGJ/p4iBTnXRGcydo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq9Kl3Zg8S5sQModG3dC0Qnut4NtWBPUEg0KmHGzai8Ax6Tfs6
	vilKYFoFAFNmXn71UVIfT3my3O8oasmybfOvdRAHNYQjAVqLz0ZQcl4q3RW71QAwst8AciZ4k2K
	3CglxMxhTiOfPFLd8vJ90EYA9iqiwumPkTD49+zXTl96B4kc8aD+PwuSoq9do9bM6wBM7
X-Gm-Gg: AfdE7clKh9XwPUKlyP8//8vPK0uLtdI3DzDxLMAEYiOgR0OW0IS8tXkkwQRm7/UD96w
	x7U/GGXTL2twT38G3uWdP2QerJgc3rNwUvbNVeoh7rwV+QfvfEEhS9KoSnI5kXq05+dXpRnvm55
	v/2mZ/IfGP+Z/TXx6gbtNl9zEHZIt2tjENr9gyTFPBk6/J8s0qixcySNTTYnt14T768bpEps2Fa
	SiZjvhBfN2JBYgswbO3Co6XcQ3wCs0hHSzPXTirh8/q/DEYoTui/ulzHKMLDzPYDnM83XY8jnLL
	BHt6Q+5gLBxfsxZHgN7ALq8rmKNP/myPltHdKJMZ9gT9o6KsNfumHawCOHKeTFIYyBcWLL8QDp0
	imcA59hMDLP5U1fr6q8/cyWTZEpnthmWGF2otLTcNTgrhl2FiD8ChP/DOSQ==
X-Received: by 2002:a05:7300:4316:b0:30c:550d:3c7b with SMTP id 5a478bee46e88-30c84d9efa8mr17428905eec.1.1782710335587;
        Sun, 28 Jun 2026 22:18:55 -0700 (PDT)
X-Received: by 2002:a05:7300:4316:b0:30c:550d:3c7b with SMTP id 5a478bee46e88-30c84d9efa8mr17428878eec.1.1782710335089;
        Sun, 28 Jun 2026 22:18:55 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c7c52d669sm42698612eec.11.2026.06.28.22.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 22:18:54 -0700 (PDT)
Date: Sun, 28 Jun 2026 22:18:52 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 2/9] dt-bindings: phy: qcom-qmp: Add PHY selector
 and Glymur link-mode macros
Message-ID: <akIAPK7daXxPH5JO@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-2-269cd73cc5d1@oss.qualcomm.com>
 <bb3dd1d0-af41-4ecf-b23a-3800aa5414ce@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb3dd1d0-af41-4ecf-b23a-3800aa5414ce@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA0MyBTYWx0ZWRfX+zKLiLTu/dlB
 Gzk3Ej5qnZW9328SrUQUmDmjfSojt7K50gQW7CK41QgA92lGbB8dI1+4aLHcbE5UyZ9NWpH3r1c
 IvGjr+EJ7USa/nTIzHmWXZEgX+jlJnk=
X-Authority-Analysis: v=2.4 cv=ftnsol4f c=1 sm=1 tr=0 ts=6a420040 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=vrcMDjKIvnehLc830DYA:9 a=CjuIK1q_8ugA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: wOJyWSEj-QpaMqopy-cQEaLjFIMO6aYt
X-Proofpoint-ORIG-GUID: wOJyWSEj-QpaMqopy-cQEaLjFIMO6aYt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA0MyBTYWx0ZWRfX/WrJ9oVgt+zh
 bW/4EWDPEXOIYLwv/KlpEvl9SCkfgC3h2P94QBIdHj7EXS28MGjMmDDZULTat5YYTgjXedqMTBd
 P/Z4Rd04HOdtIdSHJI5KxNpSVYh6V2JNVUaNvqd6pkMr4dvFzEBx26cMS0gr3iHWYO+7G55Eaby
 CI6eiT69YTUAuYXlhPj2nFs0IHc1lZx9l2SsqgsipoH2KfyzVT6IzzUBoCgQVyQVAlxQBOxNhu7
 KJpNMEtuVMx+rQdw9ullLYmoFnweyveoi3M7CmlLvPUmTefMLYF1T5MQUZCwloII8b4mpkWuigu
 bsK1NYeBjYW+Xi9fcYieWQxDzYvrhRVO9yBZV3Wem7mhLlUfEafNlspnzrXWhQOHKRxx3F1/h+/
 U54Mv2fOTWRvQg2mIh0lMg/JTEXqXNZZO7Ncqj2gx9wp+dVhHMPta9x71yU2Y+ElhYG2Vxdqe1S
 BIR2vA0N4/FyN5Q1Owg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_221857_936498_CD4F659B 
X-CRM114-Status: GOOD (  19.09  )
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

On Tue, Jun 16, 2026 at 04:07:27PM +0200, Konrad Dybcio wrote:
> On 5/19/26 7:47 AM, Qiang Yu wrote:
> > Add two sets of constants to phy-qcom-qmp.h to support upcoming multiple
> > link mode QMP PHY:
> > 
> > - QMP_PHY_SELECTOR_0 / QMP_PHY_SELECTOR_1: generic logical PHY index
> >   values for QMP providers that expose multiple PHY instances under a
> >   single DT node (i.e. #phy-cells = <1>).
> > 
> > - QMP_PCIE_GLYMUR_MODE_X8 / QMP_PCIE_GLYMUR_MODE_X4X4: link-mode
> >   values for the Glymur Gen5x8 PCIe PHY "qcom,link-mode" syscon property,
> >   selecting between the x8 single-PHY and x4+x4 dual-PHY topologies.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  include/dt-bindings/phy/phy-qcom-qmp.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
> > index 6b43ea9e0051..befa76f8392f 100644
> > --- a/include/dt-bindings/phy/phy-qcom-qmp.h
> > +++ b/include/dt-bindings/phy/phy-qcom-qmp.h
> > @@ -21,4 +21,12 @@
> >  #define QMP_PCIE_PIPE_CLK		0
> >  #define QMP_PCIE_PHY_AUX_CLK		1
> >  
> > +/* Generic QMP logical PHY selectors */
> > +#define QMP_PHY_SELECTOR_0		0
> > +#define QMP_PHY_SELECTOR_1		1
> 
> Is this for the second phy cell? FWIW I think it's fine to use raw
> numbers as they're just indices (i.e. "nth bifurcated phy") anyway

I can't use lane numbers. In x4+x4 case, I need to tell phy the first 4
lanes or second 4 lanes are required.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
