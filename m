Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0566AFAD40C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 04:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/YvWLy8ojOO0LMiP/hxOhct8T+jlf/4P64XrOJO3Bk=; b=x0L3ongVFnmAK0
	0XPN6Q4uxEByDsFeWCCNOToofeMWpKovH/LKA4K21gjYF4EERVCPrh0xqwhi/oFn1KFoKuRWPZcaI
	K5GH52faUfSjYxcWW+snbwKIbxG83SbaXppM6qe+NdQNKthXeDp/16Fl4o0u4j45QNtw0TO2xiNCc
	GPqHmJyAjhYo1gLTsYrp/pXjqiyvRmQkcqPuSfKStVgGGQpT6F3igjjjTd1zcpxcM+JTA5q3ZveVX
	G8FfoWHhV/FZRhu5KIfwB/NFzZzEdZ0sa6EjBfzuKHLXxSRN9QBUuZoxgPTNu5d/Mul176zDgynM5
	dxb7mLyX2L8+R5gPG5zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFlsw-0000000B2QT-1swF;
	Thu, 23 Apr 2026 04:41:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFlss-0000000B2Q5-0zEq
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 04:41:52 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N3esNt1230331
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 04:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RfVRTJ9i7/h8EQlsEloUzVTd
	gVAD55YdGm1HDnmdvWA=; b=Its/XoPByVoMH7z+Wj3tLvE4DYdgAsdR5bermwLj
	K5lFVZnaYvmLqf9vTklE+j/+2pvRArT2G/l/vpkZpI14U6tWMlQ3Zg4D6s2ACEGq
	6nBvKyejPFENBWOEJ/SwlLM3iuuyxIyWGbx70xsLcLjWtyxZMq6bjEjUGLM+Vrh0
	MhYEQ29kg40onbfn0AZWlwD0vjklMrXJn+ntIM9Ij7pH/KoiwZj7ecE84Op5pVxo
	q2hCRZ7c2aSWilC4wYHAHEQTjtoSAqaOSLafNVnAv2ysu9IGZ9o+fKgrVH3olgop
	wYPNjgSrLsvIuR3dObbvzg7gahB/WIgKQSQIQe7EE/P83g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1h6a5yd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 04:41:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50d8ed08aa4so210730221cf.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 21:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776919308; x=1777524108; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RfVRTJ9i7/h8EQlsEloUzVTdgVAD55YdGm1HDnmdvWA=;
        b=CwrH1F+f8T5sj95xd4Tx5GtBaiZ4v08ZRsmTCGR8kKsXEsI4+1JZBQpQCpBCMtee2E
         OIG+fF4aoxFxMrVT/cOf5hOAS8A6kty+Cpp6UqnNPqrYgrh3F0kMhdPdmc0bSIFD8euJ
         /n6P/RRCix3SSPXYnnPOKPoHRCD+Bx0RDDqeU31GudEg9BOx1DV3yAGoZ1AiUoRInvLI
         UEg6AyNm6/M9KKRp30F/jEHZbC0yk/8Ew7exmXK68KfsY3JkOmA3uRK0HjSmKid7pn8f
         tUJpicpAokeQP+5Y+Cf2BMLiIur5MnxmHilJ5Fs0TRmHI5HRto5aVTGy4ZedpxC9yx99
         amtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776919308; x=1777524108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RfVRTJ9i7/h8EQlsEloUzVTdgVAD55YdGm1HDnmdvWA=;
        b=EVEpskcREDxQOBV+ISlDVrueEuFIwkTSckEMv3RJnlxUr7BiyUJcwEW7jnK8rdJT85
         FLWJicC5ePCSoIbvAZGB7VRDNgfDiGhtS+D/G4YbH7A3SizI665i2isL8/lF7PYtGYMm
         BzD5zlyLxrklPovrH83egjtkd+r3EpJ/iAWQ3NAsQFfcn1WoMFiBalopSKAPiFIm9gr1
         pcQQGtPA4X6pTaDIKkta7asYN/k2XF1VZfk06pKUYYdiqL+ZVNnyhW8hpZY0ThFCfqZ9
         EAJL2DrJ9fciqFxGjS0yc1BGtZLyEo0QJooUKvCKvpP74CnVzwUa40fYu97lsQNAw4Vy
         XtIA==
X-Forwarded-Encrypted: i=1; AFNElJ8GqvStXb+TMM6d2nyUiLKKp4vBFs9j/lcIz1C3R1ow0DFzQLcLj5/6PW+eGzRMmpqSpPvg9B+/dcI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgaCQjbI5jwVZ3JcZt8XSiPtrgIN6UoNMnjGcVyS8Cyb6/JTwB
	bTN0nAvtJaJ5x1O8bLhBNHzevJcSAQsCb9/f8UsDrq2X7wSclxELpZOYodbj/vWub0JvAnaV4M6
	QpvW8AAg5dYEu3LuzVq72zRSVLydmym4qhyqqDGWPE5nU0Dm91wj1C0BxWH7/nSlki2Na
X-Gm-Gg: AeBDievIS91Yt6hZUQthXlZVmkuPuK/I6/FdFi8tyWkrt/jfYkMXd5dQBz8CZDkdSnL
	ckXND1U8bfzoul5FPK8mC12X5VkB/70VncoIeXdQkSgSYYe2XXMF7y6I8EXbAtojJ2aM0PLS/AU
	fXgPBupmbQyLV1c4eM+My+miwbSjLSPlipJMLlKs+WKrdH8oiFD5sZVhepiX6VS3LavNGsLhOLV
	O2TnRkcwZCtE2olrZCh1OhXmxL0gDxW4BuaBP7Jou/R4u8RGqdgDHT6AeT+fDZV43nw5VbzdXje
	YpaSFIyg3bO63Q0bQSd60Qbpcc0xKdOLmpq9mGJRLeoVkzRklS3HUFuP5vXTiTViKJgSeVVVaDr
	R7mKGC/TZewGSy0K/1f7N9VoiWn2TfGtsKwfJkw/DXV7N56Des0PhcA4LHuluqF4lQADjMVhuIy
	cyNqPU/GxlOB2qu+EGrpXMXLnP7t0pZykdS1dM+F7zMfAIEQ==
X-Received: by 2002:a05:622a:8c0b:b0:50e:62ba:3fe1 with SMTP id d75a77b69052e-50e62ba417cmr191124491cf.27.1776919308627;
        Wed, 22 Apr 2026 21:41:48 -0700 (PDT)
X-Received: by 2002:a05:622a:8c0b:b0:50e:62ba:3fe1 with SMTP id d75a77b69052e-50e62ba417cmr191124251cf.27.1776919308187;
        Wed, 22 Apr 2026 21:41:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4187e7ad0sm4824736e87.58.2026.04.22.21.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 21:41:47 -0700 (PDT)
Date: Thu, 23 Apr 2026 07:41:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
Message-ID: <ocydv6bbja7z46yjidtemwxtvwyxc4jpmnsc5uz7eorshgr36r@v4e7oo4sgeol>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
 <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
 <cbfa3db8-e500-42ce-8302-16af7b19afe1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbfa3db8-e500-42ce-8302-16af7b19afe1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=f4Z4wuyM c=1 sm=1 tr=0 ts=69e9a30d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=O8PEnLJ9UUEzgAO3M0kA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDA0MSBTYWx0ZWRfXz11hrWaohK3M
 8/hcvQKB40L23qJd8r2ibntshQksxhc/1MqJ5bPRV+Li7y/30Wlphvf5wnQBKWDMvZBGsN8pM1S
 YeBSBq9MMi8Y6cF8IE4nUI/4w1JUjwNFhypdDajmkPkED2eCum00CyB14mRjqqz1aoJ76w247Lz
 zRhPVGi2zowi880xgz5JUnT+YkL6oCVJy2L9cKzDWGEWN/yDKP/ocAFvtSiLM0taT2y4A0ccvZQ
 abIUnUet/iBAEGfFbD/YUp136RM6ip+UTsNHDJAGbAxyAAmV3hJ5lHgkFCzB1VVuCrK6EIZdHcC
 Q4GlPmNdEflIOtNk/CjtGKtsh8FJciUVE5t2bMGsT7bBA7gMMUIZNfpHGS/s0vgAHRXwchkIT9F
 NwvYnL6Vv94c6zd9DmgQb6jSMGCwNhl4yRLo/th2eWlk6Jw3m5JGEfCSBAeEYWvxheazAHLFljw
 WUg4+5XXuKbI18RA4Ug==
X-Proofpoint-GUID: O7qJhhTdlfOJAsIo4buWkwuJbEorHU6u
X-Proofpoint-ORIG-GUID: O7qJhhTdlfOJAsIo4buWkwuJbEorHU6u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 spamscore=0 suspectscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_214150_284383_A6E5A1D1 
X-CRM114-Status: GOOD (  18.10  )
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

On Thu, Apr 23, 2026 at 11:28:44AM +0800, Yongxing Mou wrote:
> 
> 
> On 4/22/2026 6:42 PM, Konrad Dybcio wrote:
> > The swing and preem settings for HBR3 look OK
> > 
> > For DP / low-Vdiff:
> > 
> > .swing_hbr3_hbr2 OK
> > .swing_hbr_rbr - I don't know. The docs are unclear whether the same
> > settings should be used for RBR and HBR3, but maybe? There's a
> > separate table for mini-DP but I doubt there's any poipu boards with
> > such a connector (maybe some obscure ones)
> > 
> > .pre_emphasis_hbr3_hbr2 OK
> > .pre_emphasis_hbr_rbr same as above
> > 
> Thanks for point this, so pre_emphasis_hbr_rbr same with
> pre_emphasis_hbr3_hbr2?  I also don't get it's RBR or HBR3 from phy HPG. But
> now i think only eDP will be used in upstreamed poipu boards. i check the
> dts and not find any poipu boards will use DP mode(or mini DP)..

After checking the HPG, could you please actually talk to the colleagues
who brough up the PHY on those platforms (with the downstreaam kernels)?
They might know the details not captured in the HPG.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
