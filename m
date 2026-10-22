Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F25606A322
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 10:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C2m0BPSm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=crAUTjbF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WJOjl6o1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=l7clB/nxqNBd9eTeqGhztWga/TNxzWgoW6fPVOC5IaU=; b=C2m0BPSmnjnQlNza0oHBRH5/HK
	u/jMObdBGsL8sTdVfcjLEi8WNpBnyzLC9EKstjSfhIaKsfRhdOR0IHx2B1WYMNlJuKE62J/IXlqcU
	Mx6YUbvkl8zHwtNf3Cy3D3XKzi9/G4p4AROy+u1Lt1q+wYzlZ8AXFLqAQrU6PvDL7Lr1sAX/shXlI
	RpkeQAAdm1DN1MO38V4OXdiSJH8XW1vyPU6AGi6e+/jlu6TTO3+DjLWBWpn5Jge5gw5iVH8aVFM6l
	+dgXv6aY6/leOcFRzpJBARg3Qg6rsP3jObB3ZPR8wtc+fz0V7aprmc6dep0XogX8h+jVqkbKrRzJZ
	YzA5ljrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqEC-0000000Dwwc-38M5;
	Thu, 22 Oct 2026 10:40:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqEA-0000000Dww6-1eGq
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 10:40:55 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MABUvO3453179
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:40:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7YNtUwxM65oNx1GcpLtqDm1RUw+0Y6E4RLo94KlMKPU=; b=crAUTjbFr6+0fev2
	prazN3ntxMaB87Pkd6triQrAkPeaOHnXvqCRj+sfWcV8wn0thp1piti7vumsX71p
	p6DawZJpen9AEqq4sGa1VSsiki2qvri9TLNL585TgWDhUedYE8Be6xoeYPoW3WR4
	KTQH0/vERv7N89xddeF35zIEAnrwxtx4hi0p4SQA0SNXPw5GltkNhG14BXSHfoO/
	dFrV37GjFYjp1WUk5yNp9baY8ENT7TI/7dnu6rgNe/qcdCY5rPtFRPEetOsaJxwl
	pFYHiK1RlN0cNtkC89Z/3SYNuBMci13KujMtymmorhAFEe4bzxcEB6+pu8sXqKvC
	kxHQNQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93at4w4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:40:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93ea6b66e53so41771485a.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 03:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792665653; x=1793270453; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7YNtUwxM65oNx1GcpLtqDm1RUw+0Y6E4RLo94KlMKPU=;
        b=WJOjl6o1opz7LjPbznVoQpzSGqz0YqStdK+1vylXvkNaymgrPMhIIBxl75/LoqNe7O
         2jAyu6QhD6iIBmqIt4rEwUUZgl843SSrK6Gsa+t67ddL+HYN3aSRIsNpSXG8uCczcWMK
         hExu6sG0v3cuCp5q4nyHUeLVhOblfAhVK6KBQsY1i00i9WfT9qOrfKehS+Uez2apQRsm
         8m2ly9bY2pGFX0wCIFxRsGBEpl9+Zkfwpdegj1Xztvr1U25EHMrfxqbScYo9PXYbtinM
         FB009/28VLEM/gVMn8aR/ip9VwZgnV3JMRs0bVLzm+HuN37k7mh5cEWlcrWBDhUbmPX8
         Ot4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792665653; x=1793270453;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7YNtUwxM65oNx1GcpLtqDm1RUw+0Y6E4RLo94KlMKPU=;
        b=tDxEduPZO7onzXNED8QMmKZ+CVhEO3hoFG4iTOuk74s17i4EomZE2upd6jmB4zonPa
         Gz2ZQfoIE65a9dSsiOjwft9VnVJa0/svssTX7jJpMBLw0PjqMly2gZdn/2mVgFz413ac
         MpnFuj1WGAAp25c66aP6IYnpVEpU6FWqEvOpAyOIx+qWWbzn6DuqRxpsgh5380WXh4on
         WFYRkk8mS0D3Gmcna9zz5QebnrzCedyOVfBm4vCAsk5+xABc0fMpMf0r6zBLQMg+IyeJ
         TNzX16yZB19fjC9sVWFt2TTDuuiJx1kcRMUpQKD1I126oRj9tCrwXgougTVTiFCrLjwx
         d7GQ==
X-Forwarded-Encrypted: i=1; AKwUvByw45b9vf13krM0h1JdJNfg28Tp0QrPqFhpRThm9L7GS44yIyJMwpf1+X/OjfntuPSRVw5koie9AMA=@lists.infradead.org
X-Gm-Message-State: AFq9FYKlkMb3RV8DbGJbeSnq+JOXMP/gG187H24MHFcFatnUzYcMnLPi
	f/fpYtER9UOscR9tN7Z+oGFQFL54CQT45SkdLb9U/kRgA4ycS68PYndWtkrnboW08tqyMumTjYm
	xLOiePqbrOvVuqddqIbIhuRMG6JIJjZmmHwMgJ5FMSRAV0P9Mf2yMBrIvo9or2VEL7sFJ
X-Gm-Gg: AYBFou11WUJirNjF2t3hgLC1QzgbwMiqJysqH5bTeT3my49TqKKIH/aKkdG+txZw4Ml
	nWOwGWWGcOnBZcYgoSQzi9+bZE6pP9IaVKtbsUvdxKsT8U+/jzIO3pm6JR0GmwnvxevtWRz/s+N
	F2Qg6/HfNnYrD50RShaKOXgay3qfRpqA+CbCK+notulvEoC/YDZPoaUNCKPk8UA6FmWe2Q+/bnN
	cSuGYPDz/64qQoWd3FnVRvxJdWAJprKxFCE9r1k7XyHzEygZ5RdpFLLJb8g8LZ5hHlxsaphPk7x
	38bI3SsSbj9Byj7lcRuXOOtlkyDVk8J1/BbjPkfT+AYGmQZDb8H+LACVGpG0962PyH2b84ZoTd5
	SG2v3r5Kzmo101atDBKypbA==
X-Received: by 2002:a05:620a:414b:b0:93c:61e0:81ff with SMTP id af79cd13be357-93f57ed211cmr1020949285a.1.1792665652840;
        Thu, 22 Oct 2026 03:40:52 -0700 (PDT)
X-Received: by 2002:a05:620a:414b:b0:93c:61e0:81ff with SMTP id af79cd13be357-93f57ed211cmr1020944685a.1.1792665652217;
        Thu, 22 Oct 2026 03:40:52 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b40316bcd6sm1606316a12.36.2026.10.22.03.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 03:40:50 -0700 (PDT)
Message-ID: <08503be4-d40f-45b2-9f78-27f49125909c@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 12:40:47 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/11] phy: qualcomm: qmp-combo: Add v8 PCS-level drive
 level tables for Glymur
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-6-3848c2615d5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-6-3848c2615d5a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX7oeXHGnnPhcp
 tucqmeHZPPnTIS5Tjs0+2JJ6sltb05S8M2JlWehmRD2ZgVVg/euy2z5aGU1qU1emn15+L0aaI71
 ruJEAUy0AOjkMP1AX4Pyp3uFJ9ubKCMA6vmkOoi6rliiYieAyUuEN4DeSOuXtDi3uxVXNFc9BkG
 tBWoz/dxxRPn2aM1D1RUTIpCLTLzOJTy82IB3gRb9/9cmN6/BM1ZqzTNoHhrK0psXlM1QzRq9c9
 AxAIkFPNKEQYAipNzYK/jZdsVsAH5+cszjBla0NNEzhjSp4uMMtglvq1ziL26Gd52dkEAi5KwE8
 xoM5FDmykSPyitTA+BUDCZY1byffl1boRlndayTMb+LXUQtmc6B5bywtRdgEVnxz/icONY8JYNr
 qPHCiWkpL6pPtKZicQUKTTdjS3S5oA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX6kohukr9TvhQ
 9rxT9gijlP4+CwdwY2N5GMHQsnXEgYcDXVTD6WUctZAM9BnHcfClJtUI/VMJA+E1JmwaGxIwVp0
 5JhRYhoWn/3zZ6iNmViy/cgg0fWgSFY=
X-Authority-Analysis: v=2.4 cv=QPn91QLL c=1 sm=1 tr=0 ts=6ad9e835 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=20IFmG_dcDsSQBPH43QA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: el0Sf5ArMwq4vnXbaHUx7fXSqR1yLdpp
X-Proofpoint-ORIG-GUID: el0Sf5ArMwq4vnXbaHUx7fXSqR1yLdpp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 phishscore=0 malwarescore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2610190000 definitions=main-2610220042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_034054_575255_E22AD5C8 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/1/26 11:34 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Add PCS-level drive level tables for the Glymur (V8) DP PHY:
> - qmp_dp_v8_ln_drv_lvl_hbr3_hbr2: LN0/LN1_DRV_LVL settings for HBR3/HBR2
> - qmp_dp_v8_ln_drv_lvl_hbr_rbr: LN0/LN1_DRV_LVL settings for HBR/RBR
> - qmp_dp_v8_pre_emphasis_hbr_rbr: updated TX_EMP_POST1_LVL values for
>  HBR/RBR

[...]

> +/* HBR3 & HBR2: DP2_LN0/LN1_DRV_LVL swing settings (PCS level) */

These comments are a bit superfluous

[...]

> +	/* PCS-level drive level tables (v8 / Glymur) */
> +	const u8 (*ln_drv_lvl_hbr_rbr)[4][4];
> +	const u8 (*ln_drv_lvl_hbr3_hbr2)[4][4];

Why can't we reuse the existing fields?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
