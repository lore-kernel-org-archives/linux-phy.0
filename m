Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A706CCD193
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 05:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8S8bLYibs2ArH+KwnefKfP/8lVA92jkQgqLMhRWzdE=; b=0ZfX56ZUzFSrz0
	vg2XSl8vCTfoE+2YTBwsP+6jTZihWQX/XMn9YbsZPx31OnU/y4Ppp+08V8nDVMbINpW+B0pTMlS2X
	aG4PhEQ6cw+RruhV9gI0YgCBUs5ehPS54q5RUCF2YOlX3R7fvnXtWKZPIaIvHG46XlMtogxkcnadQ
	0H/nNRZYfrr8ykTT9Z2vGtKQ2dEVZ/4fnaUI8DKFFLuRH0rBgE5I9gF8OKRfJaLfFFeKawodt2LcR
	Xk3oTchgKM5v+aGj+y/FUIQOl8FM12rA2vPoJ/IhwkH4195GBaJDJxWqt1DuoRh1EOhBMFDbY2dW2
	m2VhPqRkUBF7J022LP7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9zBI-00000009Y80-0k1v;
	Sat, 18 Oct 2025 05:08:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9zBF-00000009Y7U-2c55
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 05:08:38 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59I3aONp030509
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 05:08:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YFRfKHwNm/v/YfwSW1zeQumv
	JtVkPxZgZB7VyLM7YLU=; b=BaZG2Fg0D1KFGuIgHwuLjMlJt5q3iuphyXPi8t5J
	ltXZa/KFT81qf9IiLvx/g08r7OW3KDxvkUJlTRlz7EO2YIgFAVBld2GmyjZg8FKQ
	hzWRYYdPXDVQBw6FKx2FM8lObSZHcyjgVJKiE6hdWntzN5+WPonajEsvqPY01ozx
	i7auYX9+qZcAnLHrLsVFSC80MW8fXL+mhHTZdGQ/25OPGSMLKLMCeCLl9f8RvaNk
	huAwgNL0cMa7zUMfcVdfFCBrak1o4JgksDARLODRU3XVsGt4qcWqSuxCKvS3QyB/
	40+zufNdZML9mMqfAtDQUztzg9vx0vjT7JZOYMMmF86MAw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v343r43t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 05:08:37 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33bc5d7c289so3662726a91.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 22:08:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760764116; x=1761368916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFRfKHwNm/v/YfwSW1zeQumvJtVkPxZgZB7VyLM7YLU=;
        b=HPhp53BxBr4crQWEYOzQ+6RAVdTPadCVeUvhILTOJUUmROHlDYD0RTKi+1NIsipWsq
         IgCvLNQH3PoD5aESTR7SCsFOxWTEWBrSG/mfIRS6uK9cfqh4uwhs7vCgP15rdOjRd3TK
         ppZo17QMuA6AuZd2WWyr9ue2zt1EQmy20tcSIyxqI+lkA7B7MXk7Oq81FnOAPOwe4d+O
         RvFY067yvSz6JP4AO0K/7qosqecXwW0kDus+ekANbDwraw/DoEZi8mUeBRci6NiJ6K5z
         b3pzP/CfpAE5bxY7XyGPgFnO3YlTIG0cY6s5D+HNJS4XVKBWTfNJUcdMEo/mqE0P+gEH
         akow==
X-Forwarded-Encrypted: i=1; AJvYcCUYeP6nwMkHkc9shi8+PvlXw8GTOZVZhfACTS+82jkRxu5g5yPbxm90mYdfdc/DkFq3vbj4nIdWNpw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1rxDpaeK6FbnnBiA35ufkfgTg+K1M7ubTwykNukUNileCh8fo
	iI8xMQSwok/bPFAwkTVhwwusnt+sDApUjULO5WKI3vQx5ic88PXJ2Lw2ykNtApdJXgEJHBxKher
	t9EbHjDdv31IpsBcZpCcMpQ2SFR8FiGHEd/T5ii13o2vmhuitnPur5weqYo+Uvsqj9rL/
X-Gm-Gg: ASbGnctrz3vusr591RaDjuDdNkikKB11vzAanSVLTlo584fvNvVKs6F1WWo7HShz99Y
	faR01JUcGzob4gSW2FIibtEV5JTSF5++SashdN3+9x3msEMWGkfBgydo3YvxkSBB4XOruamQUVX
	SGdFp3C5JaP2oLfzZCmHVAz5yJjMYQcQafh1EwT7VucgCjvxkIgrZtsqSP3yGa+IYPuPeaqIc1P
	t4HFpgDOtoAcjWvC5bhnzBY/KEyKIRQtmoil2H3xkeXZLTA7AWu3B6McPRd3yIZlGE6d8i/EfOK
	p79Skma2eGzrpj21XvNlQfZ7nfwmEkdup69xzBbmK6CqG0qojsyE16NANaKJjVhma0vyBbVggUt
	epZ+cQqX7g38wQuYSlHhzuQvLNebmJ1uYpCXu83Y2fm/Pbg==
X-Received: by 2002:a17:90b:4f:b0:330:6c5a:4af4 with SMTP id 98e67ed59e1d1-33bcf93fbd3mr8844247a91.35.1760764116149;
        Fri, 17 Oct 2025 22:08:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnsOvzqMJgakJpAFi012zqe+RaSnCnO9z16vlR2YEX88fpBKQknf9LBuyAwqHvhkV7oX6kWA==
X-Received: by 2002:a17:90b:4f:b0:330:6c5a:4af4 with SMTP id 98e67ed59e1d1-33bcf93fbd3mr8844211a91.35.1760764115714;
        Fri, 17 Oct 2025 22:08:35 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5de2f933sm1263261a91.11.2025.10.17.22.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 22:08:35 -0700 (PDT)
Date: Fri, 17 Oct 2025 22:08:33 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Kaanapali compatible
Message-ID: <aPMg0f+PaT4xscGE@hu-qianyu-lv.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-2-84fa7ea638a1@oss.qualcomm.com>
 <32a14a2e-f61e-422a-ae77-f60ea44581eb@kernel.org>
 <61b7d2d6-6c53-4934-a2eb-8d92b50e0405@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61b7d2d6-6c53-4934-a2eb-8d92b50e0405@kernel.org>
X-Proofpoint-GUID: CTIFvw42TQLtcSZq_C7zTjs3f2YNg8uL
X-Proofpoint-ORIG-GUID: CTIFvw42TQLtcSZq_C7zTjs3f2YNg8uL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX3DZsb02N6iKc
 GOi8bypA/VoNcbCQAyQ0pCi/RMwHAbsFZPBgDqzpyyJyrAhMF+h20wRrQ/RFtToIK1jPGjMGTzI
 uizOqgXJpfjaplWz4y1CsRZcgEvRo/UkU7BMPmnPH74RjCaU0Y9sYC4vgDy1lskMmz81L8VOgN6
 0Tc3zyoEIj9VsyAkQQtrV9pNmROONhBoeI6hRxnr8X8hnojIDqZNyTeKSpHenswvwaVOJpg9sc1
 G/uEq4CAAvsOQWApiRWQVVvtWo/4BLtd+k1po7n0MhAIqofHxNbXX6tqy7TkBX8iJubMT3eS5RC
 0QMITxbHvY/NT0rggyg2UFGxYfurGWKnE9m/xHpTn7mR2Am8SNLCILGHq2bCVGZaBUCrj9aQWop
 d7VDhwLvZZNKFLVeuAUot3gWR1vEJA==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f320d5 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=BVIdy884nh2c1f4nCNkA:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_220837_734565_983A1AB6 
X-CRM114-Status: GOOD (  13.93  )
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

On Fri, Oct 17, 2025 at 07:00:32AM +0200, Krzysztof Kozlowski wrote:
> On 17/10/2025 06:47, Krzysztof Kozlowski wrote:
> > On 15/10/2025 12:27, Qiang Yu wrote:
> >> Document compatible for the QMP PCIe PHY on Kaanapali platform.
> >>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > 
> > Don't mix independent patches from different subsystems into one
> > patchset. You only make it difficult for the maintainers.
> > 
> > Really, really pay attention how your work should present itself to the
> > maintainers.

Ohk, I also mixed phy and controller patches for glymur, will note this.

- Qiang Yu
> > 
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> And please adjust and rebase on top of patch below:
> 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
