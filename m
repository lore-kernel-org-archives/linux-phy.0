Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ED68C61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 10:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itz9r5nWwOTWnN5VGOD4ODxcGnsM71w1uTsPQJeXgUg=; b=zie/oTImGBR+nY
	JmGbfxBibPGXY6EeBz3/uNEleHBN1gCwyRY+i0eWYTKiOgSZleHQ29RnHpAF4LbYwjTFOeq47XAMf
	mPP+kz3jMUrP+SMG+S4a1VYd9pdZilC0+fmBgq2ZBVvis6pnt9jtwXAy1Y0MmDLttojs8XIFQKffH
	mE2wkLwwOVulVcWSsG3Ad1NnmKROqWMUvc6F1TvEk5YREGrFwiYCN/8TgWvgCP1DJpyTIdV81mcW8
	GrcFXlF6kuVvmTzmQFwm5Of75AiwuV09FDsJCKGg2LYbd2jtprnU5TVZ7JcHXxJVfwaaeSWULNr5n
	rAtS5HbV40c0oJmZtXeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztfP-00000005Ypi-3AKc;
	Fri, 28 Aug 2026 10:18:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztfO-00000005Yp9-0U4w
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 10:18:35 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA7RhJ2061310
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UPIh3zF+aXwmgzGnekusWTc3
	pCEF4q8uSRn9W8BT0Ro=; b=XZjdc2ancIMEi76d0AHtz7wR4uRNAZRJ1bNw9bwc
	CnirKdWZSqqWEFCDMHVQ+SjtRwN8FUHmzYPdPObAPrHJK1bEEWb/Je+VjEMGtp88
	1DmlZ13PJt6PeMKb7rjOpe5jwPG8H7Cocv+Oop/A69Zuu/VnmmKQl+a1r/E4Cyja
	kckruj2IfWay5sHN4dbun7+jxKRgXKnJPP1Wt8gAV0Y1ykvmuPGa5XthFsPZcXHh
	rk9T1mKAwAd394G9zKTZESIDQGrwHGK3k4qTiHrAjOcmirGbWouEVRAUlpeLnnzK
	48KI7lJ5pHCOCO683IYSVur1cdnIoDNBTRzmDWjeT+dhIw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3mu97qs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:18:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51bf321d786so7588091cf.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 03:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787912312; x=1788517112; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UPIh3zF+aXwmgzGnekusWTc3pCEF4q8uSRn9W8BT0Ro=;
        b=ZRMh6rElXAb5Kb1UuemvSd+1kkMcwBma+sfJFIE4u6TNbm20tRugZxDmF77aqLnBUf
         EDFF+blM2SQo/hRzthA5AXF2ObSYCHJt+4evX9qgal7BdMUNB7L4DBpeRxDDNTrezwbx
         buid3dnRN0CDc4k/1u7QonsWUvyQ+1I8AGrsdm8ZCktFT11O6uXhD98GqDETc8uVT5L2
         4RCJLAKeV5g/RB1WGkB6c4buVX8NnlPLooCdGsgIjS1wI8kwijozrqfEkJNxiM5BGwyn
         igmVfMwCy7mtlbSBw/5JIvDZgIMjp8f1ss7IGAdkm/Cy0sXi4zynzpt2h0cE/9y3GWzX
         QKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787912312; x=1788517112;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UPIh3zF+aXwmgzGnekusWTc3pCEF4q8uSRn9W8BT0Ro=;
        b=SxPMhmyDtSJijJjZQA/2xNrpY6F8s+hnenRb51Rk1+d4CWKL5QikKk++Q7sL4J7ZWY
         c3yvFTIL8gTjCer//1qFRHvMcLw1mq8f3IkmmSCSzMDtrQOV4arzjzGBpvqJO1nue7rx
         6l1cfZVG39j/voy2G2NRaUUu2HqRiBXK4YvGaiW9MEM4rPKdWrLf7TNqwouQPLgRbehq
         iF6M0Z/zQ85JwXB1aFgts9d2SJ5PuPwLFHJNVquHO9rYFRRaO0Y4owQcKaE7+Z+o/PyG
         SS1QjySmxD44bQZuBnJrdtmFrkUMjsEHBEXAu5/zO892ArVvTOgY65oG1eLlxLy8bxVY
         x7/A==
X-Forwarded-Encrypted: i=1; AHgh+Rq/XIKwc8WRFM3IzuS9n85OP7lajO0HNhjuaHRZPtPfJ3x1IPQPe7tVyPEC1Fh0ShiNvm1v/yWX06I=@lists.infradead.org
X-Gm-Message-State: AFuF++leLWTTaCccxnTElFlm0RMLP9MF/CoRnYVwm+bmDzVaVakIu4ww
	7m75qddTBZn/dTcXvgxhbgMp3yoeOj5/hSMB1Rz5yYlwkrIh9b7tqsAKxtD1LMxINkEnylC34Z2
	HfXAeHM0xBPQP5CWuSkV4czyr3OqbpTYlXZiDdjP9I6NGG4ibXkSBxEBZKYWF2Be6hiPXixniPl
	+y
X-Gm-Gg: AR+sD12FwU9GtZhghEXAFDnrnAiuR2N0WOCMrDwbbjNHAMz9iPjXxwfR6veapbFZRX9
	CyfSLiDJkDqa5B+XxXJ2dPYvFClQ5kE1imUBkyuIDsf35MBgHDGwJziLYUoBtUQ63uo5jKLoeSu
	nIbE4ZluGida5G7Gdym4OJRWqTnsJYpo0MiQb0NpFCb355N40h7dLUfH34xLcsz6it4vyWjmkT6
	8TDCnSJy3qV5YZfAqjSLEGHZlcB16dF9TLcXcwaskiilbDPa64ZCJxps/SYE0tryJlSGHMYKHDA
	ledfjIaoOrXLREx30by+mHuCVFHpal5ON5sSiGVWwRAdT57jPmYT/6n7J/yKyjKssqPpSBdm1Jp
	CtPCSZF89wjZKug==
X-Received: by 2002:a05:622a:4815:b0:52e:22f3:80cf with SMTP id d75a77b69052e-52fb96924d5mr72845841cf.32.1787912312359;
        Fri, 28 Aug 2026 03:18:32 -0700 (PDT)
X-Received: by 2002:a05:622a:4815:b0:52e:22f3:80cf with SMTP id d75a77b69052e-52fb96924d5mr72844771cf.32.1787912311572;
        Fri, 28 Aug 2026 03:18:31 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb32ce2sm3219539f8f.33.2026.08.28.03.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 03:18:30 -0700 (PDT)
Date: Fri, 28 Aug 2026 13:18:28 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/4] phy: qualcomm: qmp-combo: Update link rate
 specific DP PHY tables
Message-ID: <ivvj3e6af3nxiou4clkgygrt6wijffj3hmaci4o3a3q2d6csso@xacna7tlxdu7>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-3-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-glymur-phy-v3-v3-3-8e73ce7c4636@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ZbMt8MVA c=1 sm=1 tr=0 ts=6a916079 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=clBUptZa5v5FR042Ey+sjA==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=ICfJUWih502foIDt9eMA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 226JAHPwJkGbfxcVSxQt9Yl7HCVPiVXd
X-Proofpoint-GUID: 226JAHPwJkGbfxcVSxQt9Yl7HCVPiVXd
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfXzmfVw1yc+qk2
 kCY9kPBnIyb7xN5GeOcYf7i/mmg0e/r2HI1FejujsUX0rhBr14PfbnKhjL7FS01AXqxc3cHlPct
 gtZze5GXJ4M60teMMVfh+N4QjQzwOTs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfX08wwWC6EkmUt
 jkffdmdFTKNxOOpWWT/0r4h6jnUnUcWUIJtWhQaijrNvQaM3gYMDuVh4uKW73hM8i3AYW0zzCIL
 lSMBcf4Ka47ZbjbNRQnxwFiDr02LzaBNG0u3C4GcOEyt9/svWbe4TbB5+Zs7epQZnHgqjjKUdmb
 ol/v+iep8wrsVAKQrsyCaOc3tJIVTJUOqQBtectokGp7Vylwp65p+YRFysf3o0l2WDasiZC+PRz
 Q7k1rLnuhu6CPQTqHZF1E35WfpjzyqmuoHB+aij+qGgjWrPnAvYw/w50l7GCuqmZLolGL3YIUYh
 fyl6Newut1k8iNGygdY5HCEV8C64uYqL/16gVHW212SuAtjQ5X0/9prRPhOSL8HvVqd44RKM8wg
 K4nJxMYms9f+cqifXuVm4Pf0H7FcINh5ZO7yxRwAGyZhpC5MwgB4wGwfJQAFWx/MeOtH7yXuxkG
 NsgfxyT26i47bvccIHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_031834_404663_392C872B 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
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

On 26-08-28 15:13:15, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Update DP PHY initialization tables for all link rates (RBR, HBR,
> HBR2, HBR3) with corrected VCO calibration codes, lock compare
> values, SSC step sizes, clock forward config, and bias enable
> settings for proper PLL programming across different data rates.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
