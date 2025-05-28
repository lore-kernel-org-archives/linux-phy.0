Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0035C5AD49
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 09:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xY5SPJUY/C6ir4vuhzAyaUpeWLNd5zlrHRN88Zv8dUc=; b=R/LkwhCVBgFhRp
	daiHLI2Q53DX+DxikCAHzBWIyTo2n10yZIyFtnS2UGPtxjSED2nyFU2b8Q3H7uXE7Nipwd4zi551q
	Yac6mrC6kCSjYqCc3Hwr9v5kcp+SMDX3RtjG6cVCr7L1iZLOKyWzAeul1uBSHOOZzhaXncKeBTdgr
	SKZrNgrpGOYAQg8OZRSG5ExANh2pmC5J1VBNCOgkbnQseBiMfzadZsrQlTKiG1SDgghXRYuaw/W6x
	CLFUuLiycSebSOeCh3H1IeCDGB5fvaQYn/K1g5zQZalYS356jmRua5J2H9t0UbJN4mYbO+JwB4+IY
	8IScPxEf4HnEydots3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKDB6-0000000CjtG-1w0q;
	Wed, 28 May 2025 09:34:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKCcU-0000000CeXF-2LVa
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 08:58:43 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RMkjUm011295
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 08:58:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=z8bp2Hr4AknvzUgfDRIK+uMY
	DaEWT4Q8XdrOq5uZM0U=; b=fHBZYzpOPWiPDOLUyCYnL3/poHQ7tFNEA2KaFa6G
	Zt9RK5ytOip0ReoFQI9Gd8PhZNJd5fkOepB0pKVRI4RjbEZSd8YL1QYrBGlRmFvL
	pVBnBeB4L5dTgqjTaW2phWXKm46U4bvQ23ovMYkK3gehA2x24KeGTHcLpXpAkYq0
	T/ylk/jZ1SJeMEVQhEJJuSTErw1JeiVDKENgON3BwZJ+JTCaj8GjEdzrajb7tI9T
	hbK1pCiZ6r6O6owS/uV/Qn6l/jgIa/NcwEM9FX8fIDdteyQwHsOsv73c6HAuJ9VI
	izzgDc9oNiYVAyLaeLKkYL9kAnorzpYiBarc+LowIUB9hg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcx4hb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 08:58:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c791987cf6so806337985a.0
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 01:58:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748422720; x=1749027520;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8bp2Hr4AknvzUgfDRIK+uMYDaEWT4Q8XdrOq5uZM0U=;
        b=NDIuEIZn2oggkVk2RSFSBrPjxW0kFwxN+bx4ZgbJT0pAkz51UXc1USGIaO8RhujKlu
         0JhWPvdQ/x21X3n+OAaWHGjdS/h3GraigF2MeHVArQ87klwqeTIKsyeCrZaf752ao2DW
         5wbuGeY6NMg3Ot5FguSwvq6YWyMedmVkT5weTbYHZ32scY6SLQNwDRoKvvC9Eaj7MH+V
         ikpY8IplObE+Wcfn1afll6By5I75cvciYjOES2f1Imi6NgAMMY3v8XJGL73mCDbnN0A8
         nxXqQE/z3bDvEtjGS99QaRSDY4Ut46cpp3iuMWv1BhJX+XIzYigqPxmfJ+6NkWXJNC00
         ePxg==
X-Forwarded-Encrypted: i=1; AJvYcCWyd1HdhVf7AFb5aW6wCheKFtn8QFNgBfeGtGxmW4PLXTt5z4WYVEARzvtEMHPOMV/CQ3wdEdq9WZM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnKjqDvg703axzva0SUvV7fJzEy3qdaloAwamErIR/8doIw0B6
	v+6B8iJFvv/GjalGuPcwC3INLOnuR6CdBrkFUSvMmBgsa0ahfrfmfHvPTOvVQnTZmmsITkChKEj
	p4iVI3goEVyFn1OkILW9yXAi2f8C5+TJ26jSNCSo4q4z64yiaXl1c2bVflYiZzsOsBT8z
X-Gm-Gg: ASbGnctMmnHpDiOzEyG8FlukGqKp8qh+nP/KypiHe53yBgkArQlNETg6ks+HPC9a2YK
	0p8Ph3WO7X8QyPwmvJ4BPuxg/fm6T4EyRf3lNX1K+q/F8PMrKrWv6AYAvFVWudiUQ7aTqYhT9gi
	So8MvbjAMXiYI4Li0PmlPNQQV+gqxOZ4ly2SSJZOJFTKDU0HNOGgUFW1vzbr4f81RrM5ZVtqAp/
	Asi8QY+poeFwR+amZaDbHp7bQb9WJu8BiBKoR0PXP245uH0NmSvK0LmcjBCPwyWdYi62/Vrctnp
	bbR06IKMkT9qtBEoUe9CPMav7B5zM2YQ5ZAXYuaF1E+6tU5a562Q1NNxx/g+n8MrrwpvDwrFPbo
	=
X-Received: by 2002:a05:620a:bcc:b0:7cd:27e7:48c1 with SMTP id af79cd13be357-7ceecc316e4mr2763166385a.48.1748422720595;
        Wed, 28 May 2025 01:58:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXBDkfWJBkTWuCCeU7+zsGcKIenmBvr3C7DrbG4zhB6psU9lPSb+ekdddwRTP9fA45T50jQg==
X-Received: by 2002:a05:620a:bcc:b0:7cd:27e7:48c1 with SMTP id af79cd13be357-7ceecc316e4mr2763164285a.48.1748422720239;
        Wed, 28 May 2025 01:58:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f61c6c3sm190707e87.35.2025.05.28.01.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 01:58:39 -0700 (PDT)
Date: Wed, 28 May 2025 11:58:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0a663O7DQZv_k_wlZ6rzoycdfqWrtafh
X-Proofpoint-GUID: 0a663O7DQZv_k_wlZ6rzoycdfqWrtafh
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=6836d041 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=VZyleXZfCtbGlGZB2B0A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA3NyBTYWx0ZWRfXyDxIqr2/GyO9
 aIowqOodngyqtITH8noiLHbJgj+x78M/y65CQ1K9TqDpofl7viIGkNz/8iVkA30oNnwoD1wrJyN
 TYBYZ8NvklONtg2ATEt6a0P3S/WGQeQeawVNolF79L+Fw8WU6tfhVE+kn0bzIry8FacP9tFsonG
 prNcljN2DNtnbMqfKxPHw+FnIsjSx9L5O9EXd1UQqLLQPsvxBN1JIOTGQPJHVjNp6O8JNLKux9M
 M+JBNeoY5amJRdYkP1TqQY2zThBicxMaBJRtvlnEXcVdNNBVGoA9lf3Mh0s148t7+cnQ8sfelrm
 0FAiNYhHF9J55lcoe8GDjGVvfhBFg4mK2DApL+7rkOMmsAEeTpRFzYcgL9Zg1zxBI1chqyrxQXH
 Mq0n/W/86Yk1sV1BLTo31mkmKDWyLJhR7BUqjc/5Ef7QBy81H6v5lDF/PxZ1wLmnU/UJj/0L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_04,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505280077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_015842_718164_F134A49B 
X-CRM114-Status: GOOD (  36.04  )
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

On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
> On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
> > On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
> >> From: Neil Armstrong <neil.armstrong@linaro.org>
> >>
> >> Register a typec mux in order to change the PHY mode on the Type-C
> >> mux events depending on the mode and the svid when in Altmode setup.
> >>
> >> The DisplayPort phy should be left enabled if is still powered on
> >> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >> PHY is not powered off.
> >>
> >> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >> will be set in between of USB-Only, Combo and DisplayPort Only so
> >> this will leave enough time to the DRM DisplayPort controller to
> >> turn of the DisplayPort PHY.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> [konrad: renaming, rewording, bug fixes]
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> 
> [...]
> 
> >> +	} else {
> >> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
> > 
> > Why? if the SID is not DP, then there can't be a DP stream.
> > 
> >> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
> >> +			new_mode = QMPPHY_MODE_USB3_ONLY;
> >> +		else
> >> +			new_mode = QMPPHY_MODE_USB3DP;
> 
> To be honest I don't really know.. Neil chose to do that, but I don't
> think there's a strict requirement.. Should we default to 4ln-USB3?

Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
mode). We handle 2ln-USB3 only.

> 
> [...]
> 
> > Consider the following scenario: connect DP dongle, use modetest to
> > setup DP stream, disconnect dongle, connect USB3 device. What would be
> > the actual state of the PHY? Modetest is still running, so DP stream is
> > not going to be shut down from the driver.
> > 
> > I think we might need a generic notifier from the PHY to the user,
> > telling that the PHY is going away (or just that the PHY is changing the
> > state). Then it would be usable by both the DP and USB drivers to let
> > them know that they should toggle the state.
> 
> 
> If modetest won't stop running even though there was a DP unplug
> (and therefore presumably a destruction of the display), I don't
> think things are designed very well

They are, but differently. Display settings are always controlled by
DRM clients (typically, a userspace compositor). They can decide to
send data to unconnected display, they can decide to ignore HPD events,
etc. Even if userspace responds to the event, there always will be some
delay. I choose modetest, because it's a particularly good example of a
delay going to the infinity.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
