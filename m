Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EFACF433D6
	for <linux-phy@archiver.kernel.org>; Thu, 16 Apr 2026 03:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRklwr300dRsXg3EzNbxGJyfTlLC48cV3pApIaZqEJM=; b=USiEH3Y5wT6nwt
	b29H446UXVzlc/4khMp4CGcqRu2hryG0Rf3jvarnqILmMhoZnM2XgcucvXvhG10C1vxk3kjKzVZF7
	MQeY2KMxiiiBzcDDy5+5xcshKZQa5GT/AGVD8Ypsua7Q8Rsz7p63gbn2ihPx5pe24xhch1c5Jfwm4
	LOkE24P1dXYS4LRJGXT3AYcyHWMMkFSg3pu4399tGpF6S9uFJ7enRfBMUvjNT5ycPKp6DKcL8pk+s
	qJqLkM2y57JO/223Z1VU10H2ggdocp0iITXkG6P+nU4klEYxwSrACmSw+GlQBTSijw9eL+Wute94w
	UnSQv70XKiPX3z4weFEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDCzx-00000001tkb-3O19;
	Thu, 16 Apr 2026 03:02:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDCzu-00000001tkB-1VIc
	for linux-phy@lists.infradead.org;
	Thu, 16 Apr 2026 03:02:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63G0VJWo2973038
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 03:02:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b44JNzE53BT1lgq7H+43OXDM
	7qFNMprAAxSf+qAA9pU=; b=W8LD4ic5sFTbq8ktI7n9weBo7Ae8WFw7ggrALcDh
	SY0R6/WHd9VqBiAdojbFuW2JakBmmo/8ZRTmijiLutiXAdKe9E5aq9hOB7cT3hEf
	NVA+dMjeqozbRubOhCKbwjvdrq+6idLcpeyBLX6VhLfDAXl1CFKSJQ7Ua6vHAeyM
	XFMvj2Ctn4GkE3AX796adBkjraDkkjj4gUEYtkAh78D3TUchV0cFm5iMhAaE9TBs
	W7U7ZbazjrsCr1RanpoJTfmp8II/tkfIi6izEqsCQUM3qTZMrQhX2b6orwZsOqzD
	sBnLYgPPZWjj2tnMoC1FxUEcf+ssKSLRQcj4RKHQp3i5uw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dj74gbf2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 03:02:28 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2da19227bc1so14706330eec.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 20:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776308547; x=1776913347; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b44JNzE53BT1lgq7H+43OXDM7qFNMprAAxSf+qAA9pU=;
        b=HZ0zYUXlkg+IUHcKNUPJjXdSNAi8YkpN/fVzSfbvnKYFrq988D6QWrCj89xgrlL8KR
         Kim1/Y0Phpl7SG/Juqi4gQvYEt2IM3YSmbVp2CHMV7aFLyJ7WvfQFJ3NkQlRMWwfIf1U
         +W9a2Q18fzeyf5isVjJcCGXDb96KZKQKdRqM95F0Dr6tnlCh2nVTRL1ehPxKvlsKQd7g
         WnJB+mmQBIVifdDkepr6D2KdHAp4vZuj243PxDnpFX0bTWqb4q9IW7nJ4vQXv5hV9Ap4
         p53vwr/5obZonlpIdFngzDrZuOOKZkBSd/n6sy+PBL+im+uKTzo36SLOju44E+vchoZk
         ruQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776308547; x=1776913347;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b44JNzE53BT1lgq7H+43OXDM7qFNMprAAxSf+qAA9pU=;
        b=o3wa7HAJ3YXXeH5CL+5Yue13jaP1RvTZPtFnnu+9zwfdD+SFr66b0sdDz/YICZX7XX
         OF6O0Fp/o5T/NXkegMojFYj6S9KOA9PI0/lLUPBT2ggtQWWQOTu/TzncV/s07I12mIBr
         WoyS/WWCb2W7f1VAwWxPpwQk97PF9fFWPoc18qOiNpaDy0oAfsUzjoKtR6VNtP4PN0jx
         6N4wm7p5v9SM8jTzdzJMqrwLSN5KgBegNhZ5Z8CfEZIM9i6OwZj9+JbRmeDAixoq79Gb
         1rzyKur3xQIMnHSS9C4e3JoY/Ss0EchnGyxMYyyykQy81m5CGMAp9SxoNKnm6O++I9Wt
         wkOw==
X-Forwarded-Encrypted: i=1; AFNElJ+ERLHvMkxSAOt36RnCSQ5qIMoR8k38B4tja0dqpjPjmRmE4WfEIW3QfP5wIMqJVqmvGq62BFhynWU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCY4ih0zC0YxKh/g46NQi6lXs3C1RNwbFj9rybiLt/GlIN279D
	ijQMz1iXJQIvATPk9vGkda35iEEHL+uQLQHQVH8Bb/s+AwzltQca0lCZqBLyeuFE1IFWE8xWARR
	JZ9az4gQEMXV+Im9+UoU9Zar3W4xlxwkPLq2aC2msH9hbgcL6KfhOK6oDwFTJmkSQt+zq
X-Gm-Gg: AeBDiev9TmQc8UYNVXeJVtxEubkwnqpOlOAQUhvRxU33H1kjjMvJXcKsiofp0UoTrP8
	IKKUGUluaoXGTGTDwuVteG0pBUy054Cc/uOLV9TCeIxKr1OEgbDHLENxiDsp4PHXbFASoTo138+
	XPIbLJ0W+5jqypgWCmGDII5UEdyAh7OUnKk3TFnCoIn8+JSPMMKhm6vpHVbgQEQXdlpt1UYC+nI
	xhzvfMiWrKYvNUW1dkN/GJHjP0zXu1bS6xnpnPqEOAhwx77z+4tWNAUl0Mywv70/m2/GL5tzjGB
	cy7jaHlVoxzSv5Mk/hHdvh9wDdhJt9gdcdKGWEVbnZO09JvJnn1g72XvKeg5kFJ1w5lz395zctd
	nntWJKEg5m/v5R2u4Nv4bAbcKEJcyCLAY3pH0TdT1FEAGkmnulapRAMhSSbDvGb1CjFvftakPU/
	EOYGs=
X-Received: by 2002:a05:7301:fa04:b0:2c7:ea98:da0 with SMTP id 5a478bee46e88-2d5881acc5dmr13633621eec.19.1776308547132;
        Wed, 15 Apr 2026 20:02:27 -0700 (PDT)
X-Received: by 2002:a05:7301:fa04:b0:2c7:ea98:da0 with SMTP id 5a478bee46e88-2d5881acc5dmr13633600eec.19.1776308546480;
        Wed, 15 Apr 2026 20:02:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2de8eb84813sm5364174eec.18.2026.04.15.20.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 20:02:26 -0700 (PDT)
Date: Wed, 15 Apr 2026 20:02:24 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/5] phy: qcom: qmp-pcie: Support multiple nocsr resets
Message-ID: <aeBRQCmJ4PUBCU9J@hu-qianyu-lv.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-3-affcebc16b8b@oss.qualcomm.com>
 <2675a315153c83c14d1581e019fdddb611139da7.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2675a315153c83c14d1581e019fdddb611139da7.camel@pengutronix.de>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE2MDAyNiBTYWx0ZWRfX2srrO1Bm8JlF
 lpvHopqhuDmNq+yC20pQVZK/CHFVqWH5zMTNXUJtfToNmASCTUbdHvlFPBF5Fu6m5SL2p7bKFX2
 /PnJyOIBVCzjGYVfV+Uc6pECCpwhYIgAgQA+8YQNfA4KXB2B6EXzwurH6fv88wQ7l0eMZxLmbTc
 I6gbq3TER9lFneBgxkLki/JbiuLFCDnhn8ko5TKXsAgOX8DT03LJFAW7dlcQpiuGtTh7x1wEgoy
 eA3m+ScF7WBBglL9FxmOa8JpZCth96S/HlQA/YHYucgzlKgW+/epUKBABBtZkZedcAxqg53Lrpi
 Nefas48O4zdO2rien7YV4D0fVtd6PEZMCEeLxSWZCRzwH5Dukk5vLYJiTNB3CHFbO2OVmBS00ko
 nqQLGlUlXgpimAJgCnNoAVXk71AFrqfQjtt6mgIfcgJWYyHpHxO0jyxhXNIw5Do9QGgumRlK0HE
 mD/zIF5V0cg6zP8F1xw==
X-Proofpoint-ORIG-GUID: t0ZgNebMxG95XOMl9COAWD00oS4yZOLv
X-Authority-Analysis: v=2.4 cv=ZIfnX37b c=1 sm=1 tr=0 ts=69e05144 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=cI-NCYQDPU_w6fRkyaMA:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: t0ZgNebMxG95XOMl9COAWD00oS4yZOLv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-16_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604160026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_200230_538124_804F10F7 
X-CRM114-Status: GOOD (  27.63  )
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

On Mon, Apr 13, 2026 at 10:10:31AM +0200, Philipp Zabel wrote:
> On So, 2026-04-12 at 23:25 -0700, Qiang Yu wrote:
> > Refactor nocsr reset handling to support multiple nocsr resets required
> > for PHY configurations with bifurcated operation modes.
> > 
> > The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs
> > in bifurcation, where each PHY requires its own nocsr reset to be
> > controlled simultaneously. The current implementation only supports a
> > single nocsr reset per PHY configuration.
> > 
> > Add num_nocsr and nocsr_list fields to struct qmp_phy_cfg to represent the
> > number and names of a group of nocsr reset names. Initialize these fields
> > for all PHYs that have nocsr resets, allowing the driver to correctly
> > acquire multiple nocsr resets during probe and control them as an array
> > by using reset_control_bulk APIs.
> > 
> > The refactoring maintains backward compatibility for existing single
> > nocsr reset configurations while enabling support for multi-PHY
> > scenarios like Glymur's 8-lane bifurcation mode.
> > 
> > Additionally, introduces x1e80100_qmp_gen3x2_pciephy_cfg as a separate
> > configuration from sm8550_qmp_gen3x2_pciephy_cfg since the x1e80100 Gen3x2
> > PHY requires nocsr reset support while the sm8550 Gen3x2 PHY does not.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 87 ++++++++++++++++++++++++++++----
> >  1 file changed, 77 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 424c935e27a8766e1e26762bd3d7df527c1520e3..51db9eea41255bad0034bbcfbfdc36894c2bc95f 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> [...]
> > @@ -4998,14 +5054,25 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
> >  	for (i = 0; i < cfg->num_resets; i++)
> >  		qmp->resets[i].id = cfg->reset_list[i];
> >  
> > -	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
> > +	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets,
> > +						    qmp->resets);
> 
> Unrelated and unnecessary change.

Ohk, I changed it by mistake.

> 
> >  	if (ret)
> >  		return dev_err_probe(dev, ret, "failed to get resets\n");
> >  
> > -	qmp->nocsr_reset = devm_reset_control_get_optional_exclusive(dev, "phy_nocsr");
> > -	if (IS_ERR(qmp->nocsr_reset))
> > -		return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
> > -							"failed to get no-csr reset\n");
> > +	if (!cfg->num_nocsr_resets)
> > +		return 0;
> > +	qmp->nocsr_reset = devm_kcalloc(dev, cfg->num_nocsr_resets,
> > +				   sizeof(*qmp->nocsr_reset), GFP_KERNEL);
> > +	if (!qmp->nocsr_reset)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < cfg->num_nocsr_resets; i++)
> > +		qmp->nocsr_reset[i].id = cfg->nocsr_reset_list[i];
> > +
> > +	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_nocsr_resets,
> > +						    qmp->nocsr_reset);
> 
> Should this be devm_reset_control_bulk_get_optional_exclusive()?
> 

I have get the num_nocsr_resets previously, so don't need to use
devm_reset_control_bulk_get_optional_exclusive.

- Qiang Yu
> regards
> Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
