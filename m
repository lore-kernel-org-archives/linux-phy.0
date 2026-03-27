Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B6610F287A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 23:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZASQCfkCJjXyVsvWgW+B6QlK0hBEtMO9Ts2cExxDd0=; b=asU6wBDk0ewz3v
	gIPFcNLyzimVVbxlF5Uh7Ep2e3PD2t6Q8DS5XHuQL3Dv0k1Incvy72JcI8/jUgvxE9VZvTkCWQayH
	3beqOWqqUHgB6jltLHeyORBjt3sltAsesJMNyFIy4gddoAH/rx69QF9pCbOhxZRX4KXmH92xSL2st
	JiDtgkUkr6t16zkBdUBhP/YH1PqCwp5nkJ1gIlb9M5CeAL9oEk5wzTLXD88uEcDbC1shKamzFUoco
	ey6+x8wDUhtBhgdEopnnoupzTvf/CaCzCu4ao3ORB2EoBbuaWk2UrzDw2gY0YGR+g4YNT7gT2mcKA
	OEHpcbOIgQPGvxyl8JEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6GWG-00000008Jlz-1LQg;
	Fri, 27 Mar 2026 23:23:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6GWE-00000008Jle-1pfx
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 23:23:11 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62RN3qvE3990995
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 23:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VdliwqcRhp5SljuMOcgQ5BLR
	pJRliwtVYafIt3tKDSc=; b=fR5AAmKkwLOClErr9exH1TTRqZ7F8HZ2FK5PpqF4
	bez41oQIRzjiTx4h0pyu+2eS3whyBoqGe0ZfTYFOFTQMaS8b+rXul6RhwHhqkZ5D
	9NVOX+IlW9lQfj+VTDX8CLVsi6EksEZYuhQrnSjkA6t7QJEV14r8dS3iTRvw7lTr
	XOEKkvK55MjlrTYg0TfOpLhJTSO0wX7RGB45/Qlitqr92PJJdukKS4x5lBvODN0H
	5B+UKxHhS7V0TU5tdDwVHWGwZ4rDQ9/4XyqeMMXTEst371q+MNmvOG1IVtgyU/96
	Bf/2NQM1VZETFMywdFNdfvPQLa03HXnzz7mfQXxH7L4pig==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d61m708j3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 23:23:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-509219f94b0so29132021cf.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 16:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774653789; x=1775258589; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VdliwqcRhp5SljuMOcgQ5BLRpJRliwtVYafIt3tKDSc=;
        b=S6NYp1YxlJd75AIs1DIa7lU+LDR0AeTlRK1akV9jbx2h6x58CB4BjivHKeSV/jGcGf
         o0QXEzOIrR3zVVEKCeHnrtNm6TGPUz7QGVv+fQdqZs9X0ZkRbEh6v0xbklVKFGP55msz
         vqJ2HIvvky9h5Hz49TVMVGCBLz6YiZZ9FBkCmCgzeecW9kmhFt40p9F8934fMYJDB2vk
         mae8+oDw/uRfWO/6K2MKZsrRjNcDOuu7JcDRB9ctrlH3im2Cbs+FI34xo7mLVbK9z8m2
         TCrR5015Vez9LqIUA58Qn7FoNkWlfXI442e7GfQD/oaXzxbSDD8xIs48ILxqFtXeHSSf
         +h/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774653789; x=1775258589;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VdliwqcRhp5SljuMOcgQ5BLRpJRliwtVYafIt3tKDSc=;
        b=qEJnq9b9cD1MYDtvCSG5edB7ur1Z4oUlkR60XEoGb7Da8lMGe40X0Gq7T0XJnNPAXP
         XmlYpvcNK9/1JxvKYXH9EIU1N+pljuqGOpG0s9Rebcz0ED3VPli9LGLKBD/zfn6cRCxh
         37MBC/fIpW0qGtkTdbUYkdo7KKJphCGeK0Yn9zzIVo+1MVEfH7dCfWugv9rUCmQsunsm
         rBZRrMNrZs1fuD56L2UxEmyg/pkQhTV6CucEo/eMZrFTAhZD4mkTkO1kQ2X8bTmvfo84
         sAh7C5jNF0+JdwMeQBOBg2L3hPkVZEefXywIBwvxlWH4ksSFKbcf64dKo9eTMfzyZsGu
         lLdw==
X-Forwarded-Encrypted: i=1; AJvYcCUkAITUFSEvSz9apVq5Z1hjnYv6xiYku+TFmLSpEDksgdkf/7OrWnXuTaoD5PFiCYeehQGsqBXBP3M=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywm7UOiad+kl6i0aTR9Tm5oFf5DEu2sZIuWgLZ3Kj7Ci6OOywkM
	pQomBDa8KZo3NUvAI2qd6ZON0uICLBsFuykR0+CYEdNx/9064Nm4IK9dOAocG3YIfIVzYHq+hAz
	JW2TWuiqTrhU8za36HLxlBhVc2+vZFg75d1uBLea520I8qbLXZLnOYcbXMUJhFXXREU05
X-Gm-Gg: ATEYQzwyCDsP7lkEePIQrEoQ45FrHy15KMQB4MorBfUCGphJ3Q0CnfGVH59f7s7S/yW
	3WavvoegK81J2/JyvQoOeTlnaAGEsDjisVWTRuRbzNcDPzi4gj1A9GGubro1lb6S7WUZMz0uJdh
	ysh+hUvAxesgr3ATayGXO/v83SqWrMweJkMpAWcoI2p6+dZmp2GdzmmZYNAUipMzXC3bl66Vepr
	IdZKvNW9yBxA7lUqideCJsyJfLFAMJ8qfonKm/l6ymqvwzMy2C2/5dJ4LQpEXxmnbdyE25P45Rc
	SzFsk43DQbxckngoHsXVvr53hkWQhTA7lEdTc5xR9C6NqEKYDdZOkXFAQ+KB1ZpPV+/vIiYdIqi
	9q1dCu+ALoza4SlLpJdlKbR0ezk2f+Hx60jnHmdaQFXj0ualy3EEf+dTbokIlNEn5zsn/yIV8yS
	ejJsEDulSMIKu8mcZGmtmd+Pz8F1s5jvy3kyU=
X-Received: by 2002:ac8:5f12:0:b0:50b:6a48:78bc with SMTP id d75a77b69052e-50ba38bbf67mr62332781cf.43.1774653788732;
        Fri, 27 Mar 2026 16:23:08 -0700 (PDT)
X-Received: by 2002:ac8:5f12:0:b0:50b:6a48:78bc with SMTP id d75a77b69052e-50ba38bbf67mr62332421cf.43.1774653788222;
        Fri, 27 Mar 2026 16:23:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b13f429fsm83853e87.2.2026.03.27.16.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 16:23:07 -0700 (PDT)
Date: Sat, 28 Mar 2026 01:23:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <qr6ubhjlzxenx7rswwkfu2nkc7ci5hw5tynpipa76bqsibbd3d@rw5d55vjnkbe>
References: <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
 <f1c8c412-1d27-4c83-8c5e-76b9369ea6e9@linaro.org>
 <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <CiKTMNVmEm3LXForJ4o-DjuXFxbKkiaLtqbFPYyA0rC-Ij0hJPmCw_LUixA-dZe2douOwy2Jxizna8qBRvUjPw==@protonmail.internalid>
 <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
 <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
 <a44a0f58-11cd-4aa4-962f-a5b153e24d82@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a44a0f58-11cd-4aa4-962f-a5b153e24d82@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDE2NCBTYWx0ZWRfX9j8TS72dFBu7
 eoBlxLw/6N2p4NtMkZGj1SMcz3y9bjb0wrDA1BByoTw4PYBPCoDuB2dn85Y3sbJ+Wg5S4pQKXWs
 U1LBsxNqDjO3xqCbhOAq1yDreCj0DQFYMhGVw4zCVGLt0HoJw7G/xhSNeGhSgTn03CiLb1I2B9y
 Krif/khb2bHkPL9qyqXpWRmZ7HdNX7KX01KL15SeCk4xVjAJxxCqJvxqZ7OgdbDk7WYGoqxXWhc
 r1LFjwnTWrhEV2Kna83+so0Bj3utHUsxgVgWFeKAYUZnF0bjCz/P23zo2VzdIMGQdhbCy4VjJ+b
 Jjj3eS8z9FnZBeRYp9EBQnfbtXFimGLzVNR68vF5zRPwNyRUdk7zbMn8iYQJ1PIa1gnwr2ZJQrc
 QUTiuwrjoLSaHCtRx396dUAFB9eBXfycL97uJR4yEMgh/1CL2Dg4SWn2JMG/Q6YVMRqtc6Ijh8m
 T51bq+kLXO+MGjvi8Qg==
X-Proofpoint-ORIG-GUID: BIGfOhyaCGXrRn1ayDQbRoG5xdeK1PX5
X-Authority-Analysis: v=2.4 cv=aoC/yCZV c=1 sm=1 tr=0 ts=69c7115d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=NHJkdllwlKbNI_IFlBcA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: BIGfOhyaCGXrRn1ayDQbRoG5xdeK1PX5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-27_01,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603270164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_162310_483940_D7194D63 
X-CRM114-Status: GOOD (  27.52  )
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

On Sat, Mar 28, 2026 at 01:12:22AM +0200, Vladimir Zapolskiy wrote:
> On 3/28/26 00:29, Bryan O'Donoghue wrote:
> > On 27/03/2026 20:51, Dmitry Baryshkov wrote:
> > > > That's just not true. If you read the camx source code you can see
> > > > split/combo mode 2+1 1+1 data/clock mode requires special programming of the
> > > > PHY to support.
> > > This needs to be identified from the data-lanes / clock-lanes topology.
> > > And once you do that, there would be (probably) no difference in the
> > > hardware definition.
> > > 
> > > 
> > > In other words, I'd also ask to drop this mode from the DT. This
> > > infromation can and should be deduced from other, already-defined
> > > properties.
> > 
> > It still needs to be communicated to the PHY from the controller,
> > however that is not a problem I am trying to solve now.
> > 
> > If I can't get consensus for PHY_QCOM_CSI2_MODE_SPLIT_DPHY then so be it.
> > 
> > I'll aim for DPHY only and we can come back to this topic when someone
> > actually tries to enable it.
> > 
> 
> DPHY may be the only supported phy type in the driver, it does not matter
> at this point, however it's totally essential to cover the called by you
> 'split mode' right from the beginning in the renewed device tree binding
> descriptions of CAMSS IPs to progress further.

Okay. How would we describe that there are two sensors connected to the
single PHY anyway? How would it be described with the current bindings?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
