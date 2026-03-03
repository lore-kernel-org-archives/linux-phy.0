Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE34BEDEBF7
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 23:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ggF11TBTlP3t/ayh2S5Xm/F1x5QntojnEvbEm3FB/w=; b=SSsm7OXGbbwxqX
	UUt/I1ZrkRxJjOf9mb8Nkvnwof9Cu3WZJdU+6d3YQJf4I9c2w15A5PNhraD7XU0Ov8ohKVI0zNBuG
	a3jZk0LEpKiQsMmNwOzdXKg1ks3VvW75DDbbTvmWlKuOOBDZkjPbNGOf3j2124Q4rX2u2J6UaJ5R4
	HeZ2+ilaqz91F3zVHVCihwGBN+okbBmvR8YB+h/oCBkGD9pfby25gyw5M7H4of/BcmgyPPGf2YwI2
	qhOcvDqVInLnfta7jTKuUk6sWEOdNeUdrv1Sb/+ywyz5skD6exNbX4cGWu//S7Bf2jixL/h8FGR9e
	iNj87uhDPL/TaAlz8pzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZUK-0000000G6tJ-0Ogs;
	Tue, 03 Mar 2026 23:49:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZUI-0000000G6so-0gPF
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 23:49:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H1GqH728325
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 23:49:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2Ez97QM29kETV19x07hW3SnL
	BqdjTgWdQl7zCr9qeDs=; b=iXkpV3qV8MM4fWHwKy9JmyNB6QmIyqIZLU/cHgMT
	EmGrIv+5u+be0z34JU1T+hYQ4Ago7ddS+6KIAy1CMFD6FP5Dbol8jK4bcOWyvsIx
	hnBEY8kRNv4cSofZdGeJIcOimIn/xjUB26E2JfKpzjYbyTq5KovGk9SScj1pvEpJ
	mVwx6foXwWCVhMUmgZIA8TRwFuTaTq1Im//Svs3JYqrk2oVO7AdsvPjN64rVPbxT
	5ZBqQGNfE7zg0BaLYhTK9KCiO1g84kdfAFmqU+4WVQPT73X58XtP5yziVQBZ03sH
	BqjbUVh5Y6sm8c76GkxMGXpgD5ClSN34nJIiCzU6sEDEVw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cns5fume1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 23:49:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb4b8e9112so532381385a.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 15:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772581752; x=1773186552; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Ez97QM29kETV19x07hW3SnLBqdjTgWdQl7zCr9qeDs=;
        b=UB0iwWHBcxARdvmTHYCP48V90gGumI0kaBsZ9KbudDRYEcq13v1N9p9X4DYXHSurbZ
         5Y9RXXEyPHcQtr9rVscUF9aFEuqxs39gIRJ34Fyx8wnWlLka/Eue33VB5/8LS2/ZeYnc
         BeDNo/BiQkJaaXeEElp3tPilFFl6Zdlghx9sJra/Eydaxv+onq3w9p8JhTFVKRJlhjbJ
         Ds3/KJn1T+A9ab1XkMqgsiz2t0WsdPN6Q/ni8K0Coxyjuo22TREzG6dSWDyxiNWoIVna
         l/vJSV9a3ZTzCAoGZVDpzwh0G/enxiFtOXWPcNKZBKEP6ItW9YHDzp9YctweXJm1huzh
         O9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772581752; x=1773186552;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Ez97QM29kETV19x07hW3SnLBqdjTgWdQl7zCr9qeDs=;
        b=djEuDZO7bJrsfotbIMuPjf2QeaKn/pOLY3RoKsj9iLPqXgwv7siXqxioDLljAx3JUw
         o3F4eHn7ORNNQld3S2or7bPXGgdfj9Lmb6tBAaGOTNnwEjY2T6boU3tcdgyyYYqQnGj1
         zX1Ufy8fIO6je4pt6zR8Opo+aLxG6EQb+vBneiwOx0VvbaQh9vfpRpvxQvcvlFsqxEOG
         +fzylIDtqd9e6vgAcGSEuFwAyDU7dUzYatOrYe3/ap11l1pw6c1UFp3uvFhhwRB7xjhf
         72HrQXuUeouuyp2wcQtIVhaYtSO9RhyMmT93H8ELT18XQ2baJtvANTD17cKJJEp6zM2H
         jUzg==
X-Forwarded-Encrypted: i=1; AJvYcCW0YbiTUBfsIkJH7XPb3O5EcvZfOV7d7ZyHDCs1SNtI75DdbxAx5Q2QymBuqPgeDic5MP1JO2ZRvX0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxbadNTiDf8aUExHA4FJ4qhX3T5HfqwDLxSIf6g8yQw6idDz7+t
	5N1Luxd9PxYoTkfGy3X/mvQAvdLF1IP9PQHMAtb3v61kghBk/oeD1rZYByTuLBhtSzyfjACZSKk
	ZFmZQS2x8o4KnOjelSmroPM0+VX8xkfq0WN2nEEV7r9BX1KFeB5O2tgnLW3HMOonFoVIp
X-Gm-Gg: ATEYQzxvtPuC7SJb1Rnh0SjwG+Qas0uLntCzdmNbIqvAfOME4eQFt+x8xDOpFK6FTd8
	cdoCHE8WQYqBmr8NoL6Rg3abjjQqRqXP4RQXB/iWFXCfvFS7mK721ABWL1TO+33xGTIDUqUsOCI
	c+hR3KKdKdFp/D8jqZuMaq9Tf0yUHlHH3Zo7OEnnvGyr8SyGQl+CofHEvhJL2WeQINoRlx+6iMd
	WF/z5my/5G+dRkElfJchdPPapdIABthf5EdfkLSz9c+klg0j5c+w8ff4BYCRyJTSHKXgb7IfzBV
	npfXA1Hsjv5lcN+sL6NP0FZk6gH65pn8QaBNsPEDk94MjEeUdVouV+SzMT1QrFhsq/v3gqMT4Ww
	ZgwecCDcr2nZ2Za9cstZlMIYODMkgjkZDozZDFyki0y1/SEJrmFiHMxRRvoGRAJiimyvBjcJjs/
	6iWdB/gQoWdI9Gzr0k2VZO9DbXm4ZeP4inM7w=
X-Received: by 2002:a05:620a:4804:b0:8ca:123e:8194 with SMTP id af79cd13be357-8cd5af16432mr30066585a.33.1772581752121;
        Tue, 03 Mar 2026 15:49:12 -0800 (PST)
X-Received: by 2002:a05:620a:4804:b0:8ca:123e:8194 with SMTP id af79cd13be357-8cd5af16432mr30063485a.33.1772581751666;
        Tue, 03 Mar 2026 15:49:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12357a141sm901592e87.48.2026.03.03.15.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 15:49:09 -0800 (PST)
Date: Wed, 4 Mar 2026 01:49:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <qcrwodgyayhyd7rpfglsxkefrufgqxjcs6n7druwr46wmkojvo@263ooobucj2c>
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <yhatx2iuoofvsqpu5da7ohpyvzhc2y7uq3bhuhfuv6pkfpqrnz@75xei3bawzza>
 <f83f616d-9114-426d-bc9b-42ddc839686f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f83f616d-9114-426d-bc9b-42ddc839686f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Pv2ergM3 c=1 sm=1 tr=0 ts=69a77379 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=qA3JjpdOr7iP1nmkw04A:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: j5neUXWir0IZPp74r8nOY-lTs2LuwyN_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5NSBTYWx0ZWRfX3pwIUhYjhibD
 DKkt8yW0Cazd6PnhJ99bVivJxCTZWLRDr/mhBQTNCIYV18gcKwWNt6CTUfVydkAjxOjSf06FlMj
 vW0np493IcqFdDDHXGtB8LFvaLbbqG29bFDFVmfDajp2iMzugoDxaHNFJjMIf13lw30DxWq+4JB
 0ZwlZ9J18nUQgxfAALwKQ+8SZkmWY7qMmoLv268ecsfs1RhHwnc//684zU7dNjQTddIklLBbY+M
 FVQ2lDAA2Wblya503tvFFdsKbu74WjQtSSL5GBGAf3sVaW2TzfyUkXX6GvQ5CFtd1uX+ZRB9MuX
 GUjOmryjad68shvHbRQj898JKoO5yhodvXgttupbgotUk6dL2rhr02LHMsn5ncN4cIsfeeWzUbQ
 SASuRTvL4I3n6j87sSLr4aJYow7fv422KQJ+RxS/oVTfWPo+xOJ3a/VcT5K5nBsO/rU7SaZ12oG
 97zEEiXp3GiF79232Pg==
X-Proofpoint-GUID: j5neUXWir0IZPp74r8nOY-lTs2LuwyN_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_154914_213164_F7CFB63F 
X-CRM114-Status: GOOD (  24.20  )
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

On Tue, Mar 03, 2026 at 03:24:16PM -0800, Vijay Kumar Tumati wrote:
> 
> 
> On 3/3/2026 2:31 PM, Dmitry Baryshkov wrote:
> > On Mon, Mar 02, 2026 at 05:51:24PM -0800, Vijay Kumar Tumati wrote:
> > > Hi Bryan,
> > > 
> > > On 2/26/2026 4:34 AM, Bryan O'Donoghue wrote:
> > > > +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> > > As we are cleaning up the PHY device nodes, we should consider fixing the
> > > power domains as well. Although TOP GDSC is defined as a power domain, it is
> > > not the power source for the PHY devices. Rather, it is the MMCX, MXC and
> > > optionally MXA based on the architecture (Refer to 'Voltage rail' column for
> > > PHY clocks in IPCAT). There is no
> > > parent-child relationship between the TOP GDSC and these in the clock driver
> > > and it was just working as the required power rails are getting enabled
> > > by/for other MM devices.
> > 
> > Which domains are required to access CSI PHY registers?
> PHY register access requires the PHY core clock, cam_top_ahb clock. So in my
> understanding, we need to trace these clocks in the topology backwards up
> until at least the RCG, and all the voltage rails powering these clocks will
> be the required power domains. Having said that, just register access works
> even if the voltage rails are configured to the min level, which camcc does
> already.

Are they not gated by the GDSC?

> > 
> > > > +
> > > > +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> > > > +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> > > > +    };
> > > > +
> > 
> Thanks,
> Vijay.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
