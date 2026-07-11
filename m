Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E6FC43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 18:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ct53cd6+Xopex9eCVa4kVTdd3xzdXB+lDAKQ9+771os=; b=UQAylBhI4/W4jU
	W2rUwl5ZN8S2CSMbIyro3FRehOtFnev71bWBwyYTYzotX/7zz+BDB1PP1XlBrVSLNH3eDxANS6+tT
	+GFw93yvwHO4J0KvC9HNoTljwLfBQdzFen7Z+NxUblb2Wt4qBAQZtAyWkyeWi3XWhTPuLGHV9XI1T
	s2bdZWJ2GJgoaNNp+LvBjNDChxsvIjFHlshR2bI2U5VCkhOEr10SZF4V+jxkfoDw4MX8x4knW93cD
	slnoGyqmNB7dDSZVLxpCyBNP0pfHONCR7Pwq5oz14sap8A4cIrG9V/uWV3y/uNhJ3jdAu0xw8dZRO
	qvGIG4bRnYQX4dWx1fGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wic3i-00000006k72-2MEp;
	Sat, 11 Jul 2026 18:04:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wic3e-00000006k6B-3s1O
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 18:04:13 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66BHnmJ5325199
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 18:04:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gi7mAsPzRKDSQ0PcWw7D/RRQ
	waT6XIdXYVfkOrbW+f8=; b=nlhG9iGsUHzeL/pnhekXb0cQ7HhewmN3YpC/275Q
	H7XLy/KMwJ1+b2ZI6OhPtuAo6Z8h0M3Sk93fuuw6etBHnbb8uhshs9nhBrbH7cXK
	kLDDcoqjYUC/3uGM5+45SVW8p+6sZSFJfJv0b3z3xXUPkUl11kDeKHHj+2yU1iqn
	MfZ4lmy07AiA54I8IgdSVpsGf3QdoK2PhqnNf55ddEZm42f6cBpi2GhxyMIqsFRI
	K2/6eB0NZjIc0yVfUEniZZQd0WjQ01GTIzxTbQbZZsqw2JnKlWlBiJz0tCyvOI1n
	LdoYGMsVVVbE0IVeC74yZovJiDk1dx993brLSt+EelMtHQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbebr1aaj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 18:04:10 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51a8c689b5fso21863941cf.0
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 11:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783793049; x=1784397849; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gi7mAsPzRKDSQ0PcWw7D/RRQwaT6XIdXYVfkOrbW+f8=;
        b=dVQteqfxZI9EUq4/XbfCfHvFlfQ7Ks3iNJXNnq1laLfk31fS2KexRYYcDV0km2C020
         Jk28J+/b3nXK2ynxPQbaz74MIY+HaB1z9roJNu//YGaLxJfiyiuuL2Mf4ensAzPVb8FQ
         QS6pd6I5iwYKaptRifWn11XMdO9OKKrQGBeQ4lsgGjEFSskDeBM7lbDfBdffHLo+eGI4
         sUWcEAgUhuAx7ziBtcr8pp+BQfBv1a4TZdmHDZRSY/S2DhSZAA0ih+DhWNgFSOAXdw5L
         m0J/q2ypWU9pGRSx9zR9aV2EUte0IuOssa1WCDDZ3BmHwVXteEwh26N6QiL5TeZqnnHp
         xgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783793049; x=1784397849;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gi7mAsPzRKDSQ0PcWw7D/RRQwaT6XIdXYVfkOrbW+f8=;
        b=pIM8r+wm7rpJObQUtzvxQt+NGLe751dGJFFO3Z/AZrgK6Nfpk2puB9lQfxOKxOzf5S
         +cdhAjqt+ejOj0fQyPFCAQKDeFba+kx358uO4/z8N5aawGvAR/RHw7Yj4c7KKystTzuN
         JFSsoKHCtuc4o57wXrHp4TAOj1H27qmlSp/WYhxjDDzCYXNb5E/ag5bBe5hNu/naIHH/
         MxmfDxO3uy169YcypIou3D2dgg3xpTMjdmDcnpBGSeWemIgH83XnNQmmuD1ZwSwoE4So
         TlbDxqRzYM+MjQXwVuLTUAIuJ1cr4PnGYy8LCdlWesKWx0V4IqvL+L5UQ2/Hvn7A1nWd
         /rLw==
X-Forwarded-Encrypted: i=1; AHgh+RogZuyd7taYTizQ/i7AlTvH9nZFoZwgEiYFLQoX+mj3RVfLQ8HVbUVUH8RmA1r6XNmc68s1mYGNIgE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSo8qq80ufpX9rmyrVSuNSGNK3SSVTLbeKGEZPNxAcET+zwcIz
	J0vbME8YwT/CJjMgOPzdJOhqmvNtYSU9xfyTCQUORgMFrUC/o8WR+6IOTrn2D4Bj2KFP/VyEc1Z
	Pr12WNA3gN6AFZf5Kp1s4OlxwqbJEYIHrNbtsi3eJQiyWkQgEmxCaYC+BuwcNC8XQnjmw
X-Gm-Gg: AfdE7cmbC7yfWDPD2nnU6+jzKSMTJFtAc+zw5m9vnxooqZ6KWHS9PTV1IIMJlBM3cav
	aCLwb9LGmVMlVIesV6NFpRp/ycSCfFreYyGmgvpwLbs9MjTVcmEndH86MfZ1bNGsB6eDlroeiRd
	fXQo6jzzmUojK/hzUm9G9cL2EDtQOIqvKUy2LlIiw5Gp5rSBkjTeiid9+xGM/XjpJBaOZ+b3i9W
	HgEE5W/X19oX/sK6vvUDf6ecJt7jJTIorqQaeDt2RSIhosLZ+TmIimJHieYbnLidIjU/R9+SS54
	iYtM0zmLVn2yb2O3YPHW4frZFsEC0rLqbr50dWcla+XnXOkjXugmeyURr3YPZlqC7orJTMgivjP
	QKq/iGUIVSjfZ57HHnV/vg69AzNwvVMFg5gG7kJCT8Jn1q8Xf65GdzyOfTC80C7pTP1J/NfzNbU
	9lXYL5DIKWyYbMa+UoQfljlEb5
X-Received: by 2002:a05:622a:58cd:b0:519:ef86:127d with SMTP id d75a77b69052e-51cbf07149dmr36273621cf.18.1783793049271;
        Sat, 11 Jul 2026 11:04:09 -0700 (PDT)
X-Received: by 2002:a05:622a:58cd:b0:519:ef86:127d with SMTP id d75a77b69052e-51cbf07149dmr36273101cf.18.1783793048432;
        Sat, 11 Jul 2026 11:04:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b01ca9ddfbsm1478518e87.54.2026.07.11.11.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 11:04:07 -0700 (PDT)
Date: Sat, 11 Jul 2026 21:04:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sm8450: Remove unneeded reserved
 memory nodes
Message-ID: <vbsdddrjoq73h2tal77rdm573ydomwsagr7fujjh7znw3dnbka@olj35zj5pyzn>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-2-37e2ee8df9da@proton.me>
 <e1e492ab-884e-442b-8410-cc100c54fd5f@oss.qualcomm.com>
 <6123a923-21dd-4f69-9ac5-02165963027c@oss.qualcomm.com>
 <b3541802-3035-40ee-8327-a65bd5d2dfee@proton.me>
 <4g6y4q2udludhwmoqc34afwj5svra4a4j5bmpqza7h3av2oov7@6k5r7a4meruk>
 <c11f9ddd-8533-426c-8a88-0ed461f6a30e@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c11f9ddd-8533-426c-8a88-0ed461f6a30e@proton.me>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzExMDE4MyBTYWx0ZWRfX87XEk2z1bWiJ
 VKafqCIgSYH7k4YnvVTc8JVfsZtOQj1xfDv9eHIl+Hx01jjxG2TiGtQpGiSyrIUGxrvfOof7meu
 Qxg25GCx9evCDa1oT8fjxq+BG5qMSXQ=
X-Authority-Analysis: v=2.4 cv=OK8XGyaB c=1 sm=1 tr=0 ts=6a52859a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=A3yFiG93vv4HRecOgxcA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: yY74xe5zB5nmntnHk14K9mOpMcxIuzK9
X-Proofpoint-ORIG-GUID: yY74xe5zB5nmntnHk14K9mOpMcxIuzK9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzExMDE4MyBTYWx0ZWRfX2JTRpva0cFPe
 YxPN7CtNl3X8wMAqbsH9yOcVYlioVo3r2t+Y5oGpgmdrMOMeyyczXtsas7WysUZL0nLCTF2TMX/
 +zu5Gjla8ZoGFa0MjGiNTe7YhF0ihL6jARu157snhtP7WQlDblvyJUOorSoGXxGLs99PPrbBqOc
 Dw6J87emheRTlgcli5HgXxZ10K4x0VHqn+3i1YIBI0rGVCEKMrbanQA0ASuPradtT737n04t7mV
 ibCgwZO8ZOhMi06MyvFp/y8Swt2XrTkZb2DrOG7CMDSOupwOnVUwsz1lgkq0N7rGBWZvMylUISC
 5i3vTa1P4cxFvN6Sf6SemT8a18mh1Dwm1ELfG/KJgQXuQYIS691ETrPf8w93t/PSrf/73uKiwq/
 VPAhXcEB1VRentT9qngF3c0OSdBWQBqCS1Sof+3kaqcgd9MlaLsOTGbfWgHxIoDl6YxXfxgRLkS
 1uQRb4RKH85RXgrSQwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-11_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607110183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_110410_960844_57D41FC5 
X-CRM114-Status: GOOD (  15.14  )
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

On Tue, Jul 07, 2026 at 03:19:22AM +0000, Esteban Urrutia wrote:
> On 7/6/26 2:24 PM, Dmitry Baryshkov wrote:
> > Please verify that you can actually access those areas (boot with
> > memtest=1)
> 
> Thanks for the suggestion!
> 
> I actually did boot an SM8475 based device I'm mainlining (motorola-bronco)
> with this parameter.
> Deleted regions in DT are as follows:
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
