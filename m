Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53FB6CA6002
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 15:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tQ+indU6ld0SQ0v1P3M374yRHM0lpOI68A6nn5zZDc=; b=UEtG+efQ1lJzjE
	K/pOagA+oCXvp+q6FKSvjtjMrqkbU9neDGG0gkrOEVBQ638kT6jXgcFu8jJgg2i6KlssL3gJvesis
	NuVTryvM80DbLkLPogHslKZErR9PwN+kAiIpKBQt2xyfr3PDV1udRazXHDpiCmOqEvYLjLqD5DcuY
	QHmGRdRdkrCwFcWP53dBeeLmcCB+rA5nqYg6sA0QOEHnizKa88+hijUJ9i+Tgj3KJgWlIuPvZ7n38
	b0OaJIfexEqjWtMDbbmFb9h0V1b3krrRiXQE3z8WhtGvY8t5atUL52bvAXtKNQiJ/i+0jJepUeSaf
	ZkJyNEsLpFpzcOdkrQOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETrs-00000002jFw-3Zgr;
	Wed, 07 Oct 2026 15:47:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETrp-00000002jFV-1fdF
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 15:47:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 697EtTJK557536
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 15:47:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ON1POuxQT8oQUVPgZEgmjC1U
	LppcBaLaYzlRsmpMyxk=; b=YablL7o/pPESIa7r70OHWBAefLpbpsHZgghoj/sw
	bWPl0OF7H5HMj2f3weN47jO4AgwNJIv2oOurH70gAm31L+lyM9ULTguZNWHswIQX
	aUqbLqDlidSzQAs7hOq05qz1aGJ2TJzUkOrmcrCW/1MmYq1CkgeF45KOQ6ggE+4B
	VtaRG7BMRZkNUb2+8nuX0bx5aW0x5kKVd6AmcfI6PZ3IMe4uL7OB/V6rh6kQ6gGy
	jtkqdEHZ4Yblrxwb4Ru6RgHaKr+mWT4Jf2HuCoe9Vynwpy97y7qtNOaMZ3WNyQUg
	bKXLP6TQFZbirwSj4I4LX4h98th9ConX9nolubRBRftUmg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5gvrt00h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 15:47:39 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-934963b2bc0so774435985a.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 08:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791388059; x=1791992859; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ON1POuxQT8oQUVPgZEgmjC1ULppcBaLaYzlRsmpMyxk=;
        b=d7r1M0GIO9+8IKxh0fvc8QfpcTg8fQeOitwfQWyTaQVLgKtwaJMP/hg5hzZjFy3SRI
         Az4dQx5qaAQtjzibcNgvmraZOgaSNYBPFGavzCaNRQsXgwxl6S9x8wOnAcyzHycwD6IM
         hGYpSqcOiXFR65LXD3PBftzMUSo2TgLw9DxLEqzR2mL2uODkYevdvyq/1RDWKoDy41wU
         gT3FEpm/9OC67KDWY3FhrwwJK0+hES6e1bUyLe0Mi1ne/xqTbBI09ao0Q5583Ma0VBFu
         3CTZh551f6S5wBeiEOt5RqhhzHK2p/j6JYnbH4zwdGL5QmeWVqeRUr6AAwJWEuUysKOe
         0/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791388059; x=1791992859;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ON1POuxQT8oQUVPgZEgmjC1ULppcBaLaYzlRsmpMyxk=;
        b=gKRdpNTJLj/RX/2owmtF6d9VSqzakzlNIvW5MgYi+CtVsFcxinI6rtoZTjML97Uk0o
         pHOFvNZanyTnCI09fvzj8Peu1q/oatUh6GzJkP6CLHxliXaCvCacJGPy9anvKi2coe/o
         S58I4auQ2bUymgAg8F4dOYNsyUAR7/rztD0KguEvUDNrHzGCCfVKibAfYPHAdLKXYcDp
         bNaE/EmMdMCyXfCFQ2HjN/Dm8JuFp5foOsJYWVZHUpzYebBvunlfqvFvJQvqRY1+9oa0
         xZ6izWg5RXOuddzj46U9MAmDGTd6ccBL2rm3F1mxtH7/YVsD7nerfdFuhp9H9NEvvUvi
         y7Uw==
X-Forwarded-Encrypted: i=1; AKwUvByc5fprPJtUbwFXAFpfQPaBxhq8vwOrRtoc26vjkrayrDP6vlYGlzKJFqxZiiEFv+sefnN3Y36ILfk=@lists.infradead.org
X-Gm-Message-State: AFuF++n2HwfeiVkXH/br7qS6o/NPqtaLdg+JgVd++TYc+n3M/kwnsoxy
	JW+dmo+KVCAx0dROX7CDm+znfp6kyIyFzN5Q5wwWYMX8DRtZPMbFKpqTHdZ9QNBIKGr/i3Qzoyi
	27bvW1Ep8/T37AYCdqDJBh820ZhL7Fi15hC/B3W4gwUtEXDhzwIfk9HKE+hjMiDnUo+z/
X-Gm-Gg: AYBFou0xQZYDPmstab2q4vo+Hycd+RsGIryb8mj/VVtbJDYd0A2PC/um7Dn71lSsVRX
	0ZxXyQ23dX5xarUwbPjB+J31jDvfQZ8F8BRhwkgWbSkjP08Kg4s0fKpnhJabMOGyhdZYb7ssiVp
	NJ6/7CMMHlg9DSQpaElp2PvTSdwMXVNwv9ASVhaBKuwIGDelbS9ItrLC8oXkIjOxDFp4Le3zOaR
	MuF5wf+HXq8mKHHV0xPCACytaprlbjzD6E4+PCRroiZPFIwNKB7flsUS/l4u4eJAp7KNM0UwSnT
	bMcPmX7J67Z85H7j4UrTaDrAPjqP1IqeJD6vsLz0qhetzPRVrY2ZuALXjFq+d0gnYeucHj/RQHG
	lFDs0eQqKUIZaTLpN3f1kxPbPGHoFaMZJmXTI54F8HJlewYcA7ynE2v5U3CMZaTB3uma85uTNh0
	Uk0sLTEVIBsjtb
X-Received: by 2002:a05:620a:3904:b0:939:ff85:8067 with SMTP id af79cd13be357-93e9b74d90cmr499756085a.30.1791388059198;
        Wed, 07 Oct 2026 08:47:39 -0700 (PDT)
X-Received: by 2002:a05:620a:3904:b0:939:ff85:8067 with SMTP id af79cd13be357-93e9b74d90cmr499748585a.30.1791388058556;
        Wed, 07 Oct 2026 08:47:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bcd30a8466sm170150e87.83.2026.10.07.08.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 08:47:35 -0700 (PDT)
Date: Wed, 7 Oct 2026 18:47:33 +0300
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
Message-ID: <unvey6hlz5ov4flgzza7f3i7nowxym5ik3dd7jkzx3yiqt5xqp@ci3z27we45e2>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-5-84cf4f861415@oss.qualcomm.com>
 <zovl7lrhlleflaewk32o4wofr4bzm2bmkdnakev47peijrnkfe@p3ixrxltdpcm>
 <f9c7bd4a-2e97-43e1-a9bf-295b841ef0a3@oss.qualcomm.com>
 <p76qp5bhijenec2ygj36dd47uxkeyk6kztccbuhblte5lqn22x@yikvkbipjbae>
 <7e8ea792-2336-4252-beed-7345815b0b90@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e8ea792-2336-4252-beed-7345815b0b90@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=W66txhWk c=1 sm=1 tr=0 ts=6ac6699c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=0f0GmaTcbrnyVoL-888A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 04tuIeR_U_C7nn4XISgEZnFvtc7DXIh4
X-Proofpoint-GUID: 04tuIeR_U_C7nn4XISgEZnFvtc7DXIh4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDA2MiBTYWx0ZWRfXxcQpfjENX5fn
 gOflv0DdUft41zNIKBE/FmteCL6onHRwK2aQMW6JIw6NklGPTYTkkUMUBaGqcwmEfAbmObOSK+n
 m9OeQz1XVpE29yorgCMv65k887iliHX0+59uHSz+bxGvueizRAa8yPt2+OZ7sBgivpMtDiVuBPf
 THlBJ+ngQ14u66T4rWbqkoMaf5MAtsig2YswCcO/7XAHkxj2OEfL8OiN3ABmwPowJwUsnQS+bVp
 nWwTTHB4MGjexPlzOI0iMTlY2XQKqK6/MDjmbxVk5z5Otl022x3p0X50fX9ts7gFEfdptojCjC6
 jxKnYZxNYRPLfwmj3y/mv+Ki3snT1pZD52AfTqcWiha5MAgbFlmVMzpK7ZNve734P/EFi1mqZkU
 uenCONTW7P8H4V0gTokJUe179xK9FfNJIWbrj2gKfPWr6agifvy5opC9qpmWeIYgCuRFr2gcQ7i
 mmjSro4iKz7xQJ2TdoQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDA2MiBTYWx0ZWRfX0aDXGxcGI5fv
 DnjBWZs+WOy0Psy1EN5pbpuyO9pUzgnjiihK8Ab9AP++XOeZajHZriiusbvSY66FJqzs2BrlAPi
 rK2Nz4WjnpZS/4a86bG/dOThMqBNQkQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_05,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_084741_574200_21A549B9 
X-CRM114-Status: GOOD (  19.57  )
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

On Wed, Oct 07, 2026 at 08:15:39PM +0530, Pradeep Pragallapati wrote:
> 
> 
> On 10/7/2026 7:13 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 07, 2026 at 05:03:02PM +0530, Pradeep Pragallapati wrote:
> >>
> >>
> >> On 10/7/2026 1:18 PM, Dmitry Baryshkov wrote:
> >>> On Wed, Oct 07, 2026 at 11:59:38AM +0530, Pradeep P V K wrote:
> >>>> Add the init sequence tables and config for the UFS QMP phy found in
> >>>> the Glymur SoC.
> >>>>
> >>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >>>> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> >>>> ---
> >>>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
> >>>>  1 file changed, 99 insertions(+)
> >>>>
> >>>> +	.offsets		= &qmp_ufs_offsets_v6,
> >>>
> >>> So, is it a PHY using v6 offsets, but v7 registers inside?
> >>>
> >> The QSERDES RX0 register offsets on Glymur SoC are aligned with the v7 register layout offsets.
> >> Therefore, the v7 QSERDES RX0 register offsets are used for Glymur (similar to SM8750).
> > 
> > Mention in the commit message, please.
> sure, i will mention it.> 
> >>
> >>>> +	.max_supported_gear	= UFS_HS_G5,
> >>>> +
> >>>> +	.vreg_list		= glymur_ufsphy_vreg_l,
> >>>> +	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
> >>>> +	.regs			= ufsphy_v6_regs_layout,
> >>>
> >>> v7
> > 
> > This still holds.
> >
> Do you mean changing ufsphy_v6_regs_layout to ufsphy_v7_regs_layout?
> If so, no. ufsphy_v6_regs_layout contains the PCS register offsets, and the 
> PCS register offsets on Glymur are aligned with ufsphy_v6_regs_layout, similar to SM8750.

=> commit message, please.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
