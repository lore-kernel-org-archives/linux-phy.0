Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 767A3CA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 13:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kRk7Xm/AUAxazMvRaWvFuHeTIZzsG2wBEIabyXqtsw=; b=s/dJ8kh1FxXGqV
	fi70AEIgxA1oilGx83hX+rxXhcRMXkKfMzqqnQ82GHL4HZy1cWVTTaQjwgGBDpoJ2B+jdy6BqEeM+
	kDLhi8EKgtqfkg9D1iehbeHOn5TUBgy2Mz+ail8d6Hg5C27P3jP8N0pbxWdPU3Wrlo4nuUBsMAP19
	rTOnTmgWLPB9L0u47nXg3IcHP0XSOkxepiDE44CMJ3ZV2iEW896IIcL8aFvQDjStuwv4iG3002X7m
	awpM3XVxbHknVKQM0dAjkJPd8D7a4EhF+v3BsMZp1C1a0+m034ULcZo73wKuZnuW6lo8xERG1qqeq
	wOEIbo3p/8NZlbVT8N3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xERvp-00000002Y8q-0Qfa;
	Wed, 07 Oct 2026 13:43:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xERvl-00000002Y8K-3LA0
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 13:43:39 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 697BVCas3198245
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 13:43:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U/liQNsAQUWHpc9Ht9TcT3uf
	glSLG7X10a7oV7oShF8=; b=PuVW/ih/A+mwX/6USRRApZMn83CjIk1rYKuzvzbU
	krqpC98aa0i2aNqjMK3xdpQ4Br9qbwZiSyVbZL+oXVJqHdMNE11j95dT74R9qUJd
	umMnFL6E7g3hh1UNW7o/2/a1Wx+zbNR9rzVpZ1Ow+qkDaZK9oksLnEe82lTsKJeF
	bkubDgi+0XFHaj7sQK9rMuK4+ib91+3Xr7R+9HaM2tTfbMjZ6L1ioEoyet+N9kR7
	6LUSOxdgbJDR0ot9+DgA4CmN+Y0OZE+NCMWog+IoLtQKONWtQszFsmpsCTkpqC0C
	ila0Hd6XnmvvoBlqU9FqFAA9lhZlNvVPQXZ6A4fEdMpHIg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5c1s2dp5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 13:43:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93a1de6d5c3so868265785a.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791380616; x=1791985416; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=U/liQNsAQUWHpc9Ht9TcT3ufglSLG7X10a7oV7oShF8=;
        b=e34231x0bqsb4gT1/MhIIJxX1XmiOox1AAbiFHu0ep7dPJ+oa1uWps0tGpdLr5tJmJ
         vTXZav0Q4RF/5UWgyZdDYze+PsdGAsODHexNyKKjOzcRIycTZh8LbKPXdvqS3I8xbfup
         6Oe+C13LpS1rcpef4Jt2/qAXfNqj7FHbmczD0HKEoVeE5kEwaFdYoCsFutRWbzxPUSFN
         HeWQqnou9coztaBKW21R/3JSwB05G5S3rNt3aN7uKzCDOmgHm5XmqjMx2Uo1HHpyhTsg
         DeXaLC+MwuJZ/b0Z6k6pwjcSIIpP/JhFQu1iB/jcVTDI+1W9oktPXILC51105T5PyAoy
         J2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791380616; x=1791985416;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U/liQNsAQUWHpc9Ht9TcT3ufglSLG7X10a7oV7oShF8=;
        b=qYBxYlsVP1SQyQJ8Cxde8U13FbXMNg1VwWglx81zp/aN8qVM99Ldx0C1CaF2KwLqCd
         64lsycmDiIp9qRmkqo6LBUUN5ChQF2V94JZy9XkGNkhtXdknWdSD+a3AXxt58nLujjCt
         zlCYpVFT7dGDYQMjUDrob7bzfOeMTjqwaLUWWhCcBxzd3p2tO+KCNKHZ5b2eJkPYPjhP
         zrQWk6Po7RWDBk8hWytNTfhjpMaqeUThFnmHsbN7kat5/pXr6yPBcJfbe2oxdoE3J59q
         r6St61tIwcoi3zbVp17OG0SFSWQaNQeWytltsH1eu09+YAGhj2qxEbyU3Td+KUGYkKjB
         3ykQ==
X-Forwarded-Encrypted: i=1; AKwUvBxcJ/TWeLQ74bVYz71z7eJsv5sPfk1aK2gUHX26ITaobd8bwGg05MpuiYJWvslj4AM2LUKwUvXsyIg=@lists.infradead.org
X-Gm-Message-State: AFuF++mjcXUu5Kqiviz/Q5tRN3mDjM+1VANkXGzI+niiarrLdg9J2DGQ
	/5Vjf0s43Htc0RkfI+/XEf6JnwzBL7i48TlAHwO8HAknPtiJEIdU4uNw0lSDH0STiIFNoB+2D3v
	WA5E/K8NIDNXmYDgttISHt3HWAkiw/YOiH+bwJKoV5hNnJX6DDkq0SDuksV/2EhslygYh
X-Gm-Gg: AYBFou0+1fhEqxAwB0Q10xbJR6gcVN6A8GJrfWu93sMgOjGsWW93D32XONs65d0z3Fn
	0WGsMVIcEkKE+/CjY9JuCfW77MJS3Qk5lBfOJunvyo2byYH6UANxoMY/360QxbaBiXVOivox61f
	c/P9dx7rjBZKc0POwR7VsJDB5sTI/tT/9wxFJp0/IAq/mzD2E+yOcj5ztveVjo7iKLkgZoSxfTc
	sKXu5Etn/5N2MoZiajPCYXRMIt0tzEO5qkVVNydaWffK2yPM8+XYXLIA6fum8lNDeJrfu2XBX8O
	pQRoTFzD8Q1g5ddePHt71LCExTiHqOOlSJkmjjm+LKx7aJz5grfftVCKTF1jGWJvCE2oEOieqQX
	5A+JWDJmH7xhQ0JCggQ7s4yuM0QtZhCBo5pCdKli0DpiTxg7h+JnP0Zlyb24AB0g3icmckGTN3q
	6M7uaSeltyfkcH
X-Received: by 2002:a05:620a:2711:b0:93e:74b4:3115 with SMTP id af79cd13be357-93e9b795c5cmr398241585a.38.1791380616072;
        Wed, 07 Oct 2026 06:43:36 -0700 (PDT)
X-Received: by 2002:a05:620a:2711:b0:93e:74b4:3115 with SMTP id af79cd13be357-93e9b795c5cmr398234185a.38.1791380615473;
        Wed, 07 Oct 2026 06:43:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bcd309c713sm54780e87.68.2026.10.07.06.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 06:43:33 -0700 (PDT)
Date: Wed, 7 Oct 2026 16:43:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom-qmp-ufs: Add Glymur support
Message-ID: <p76qp5bhijenec2ygj36dd47uxkeyk6kztccbuhblte5lqn22x@yikvkbipjbae>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-5-84cf4f861415@oss.qualcomm.com>
 <zovl7lrhlleflaewk32o4wofr4bzm2bmkdnakev47peijrnkfe@p3ixrxltdpcm>
 <f9c7bd4a-2e97-43e1-a9bf-295b841ef0a3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9c7bd4a-2e97-43e1-a9bf-295b841ef0a3@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: rRd9P5tJKeN6WFsLJVu-0HmxWBbpVYqU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDA1NCBTYWx0ZWRfX7TofikxOfaxV
 VX3CBJgjeT4D5Fe9vXLh8F83gNDdNGxYY1Prg0GtqL+cLssUZ9SkNb/1z3niQQ5ke3oQTBm5Nrw
 Bj+G3gmkr1bAerW1+P8Qg89kNOmdk+RhcaOZgwJI0OEjP4qmbIRO01SlO8bmVAk12kT1VXQqVKE
 BqQk6Fh0cFB35Ye1BbyQOpGU48U0zSw0tym6RLe3uwRS9AgV8mkGTLW6x6sP8k4k7gR1Ie7q93Y
 Gg4TbVxvj1/FdFbCRy72pjrD2FjjNSX/snwBfRDD2UCVj+fLqGoTnWSOKrgtGqGOuHMz12ia3tW
 Aw5SlRnPyK/zRJ/WvyJKNUW2J55NO5sRcxcsGPsenufY+cOitCFO4CpK1xI5kPfVxFvQMpfmBIf
 tJswQDG2qmakX9q6WrN48UD6KwyKg66njZYDR5Od91b8jUFOz8wCTE7PgPkXqoV8eKMOIXs0XwG
 jJgt1uKgqA4dvrU6woQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDA1NCBTYWx0ZWRfX5y9HwdW9fTwa
 hPbiKYadi4KmSHguOqpGsD1GhWpiuNSQAUWHDdo0cYst/TF6VPO1CFG+Vj7Fp6Ka6ceN7TjC1PP
 gI52xPocF6oWeT0xzB1VnSyLKL1lvjU=
X-Proofpoint-GUID: rRd9P5tJKeN6WFsLJVu-0HmxWBbpVYqU
X-Authority-Analysis: v=2.4 cv=NatzRGD4 c=1 sm=1 tr=0 ts=6ac64c89 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=g3YXqlWUHmiHVpce9XYA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_04,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_064338_139866_70FF3AC9 
X-CRM114-Status: GOOD (  20.47  )
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

On Wed, Oct 07, 2026 at 05:03:02PM +0530, Pradeep Pragallapati wrote:
> 
> 
> On 10/7/2026 1:18 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 07, 2026 at 11:59:38AM +0530, Pradeep P V K wrote:
> >> Add the init sequence tables and config for the UFS QMP phy found in
> >> the Glymur SoC.
> >>
> >> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
> >>  1 file changed, 99 insertions(+)
> >>
> >> +	.offsets		= &qmp_ufs_offsets_v6,
> > 
> > So, is it a PHY using v6 offsets, but v7 registers inside?
> > 
> The QSERDES RX0 register offsets on Glymur SoC are aligned with the v7 register layout offsets.
> Therefore, the v7 QSERDES RX0 register offsets are used for Glymur (similar to SM8750).

Mention in the commit message, please.

> 
> >> +	.max_supported_gear	= UFS_HS_G5,
> >> +
> >> +	.vreg_list		= glymur_ufsphy_vreg_l,
> >> +	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
> >> +	.regs			= ufsphy_v6_regs_layout,
> > 
> > v7

This still holds.

> > 
> >> +};
> >> +
> >>  static const struct qmp_phy_cfg milos_ufsphy_cfg = {
> >>  	.lanes			= 2,
> >>  
> > 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
