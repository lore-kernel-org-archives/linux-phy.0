Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5042DC61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 12:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEvcQEJ7ewULICm+EYNTj08fTd7WHafuQK4QJZDwMtw=; b=kZBXNzpaW/KsK9
	KtGKsD4t888tFM0Vunqtj0prwRuME4KhFK88fQyFH/Wju9WzIMaUd6wr3/y5U9pixHLVnv+QD/+aZ
	Huol5z/KTsXXTmwVjS/skxwjAqQtip/G0lemIKKJmCSpEkm7D1a2lyR7QfGW/sGWgCX9exzzwUbz0
	cQtlRTbL3xNa1pAJ96yU3FV+z4GNh9gQm7Cr8cyI6O1TLaWchwa2Nb487bYLTUUYoC2m0yCR8yqif
	i2gAtpJfq6MTcpwPgPw+I5fP56usL06gnENZI1ZXAIH0gbRrZfjw2wJNG6BerlHwEyAQZXQH1yTrf
	jvvt9nFwDFBttf1RamQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvSk-00000005iGi-3vMP;
	Fri, 28 Aug 2026 12:13:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvSi-00000005iFo-02Nr
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 12:13:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA88Vr2596125
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 12:13:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5LRg38io7U4Jw1Yasplk5QAWX4aC1cV4jh0oOs6XnaY=; b=cXFBwlSIayvExOJw
	UdQy3cW8O/5MVj01nytPH2LeafLa8oAmIwrBdNnLsr+4BminP+NQf0Ugas6V4VeT
	AHLN0JOw5r2yORGQBa9k0C08yW8VFf/FPDstyKSMpNcEs9NniQ0/zq1m05zhvmNp
	XtxgA0gWpo94bfxwI7Cu9uFyM5gkGaQz2clfcDgJabZVKRoCXyaIqOn59aBpEi4L
	p8VoPjtnE0hyUbTpho4ncVQ8qOgSF8frJd73sw7x6yA9vXR8rCuWh9s1yaHNd1Ol
	tfj9s+l+hTNDDnZgKlmK0/zTXgphi4aGLkBD95gJde/AID6kpSgAIV5OgBvELjQF
	rfU5wA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb1v3a5vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 12:13:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-52ec556b441so2883191cf.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 05:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787919214; x=1788524014; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5LRg38io7U4Jw1Yasplk5QAWX4aC1cV4jh0oOs6XnaY=;
        b=H2GdjqFCQJiWrpjoY1WR8JHAaBJK4SOqKvCtnay2x8m0qmNOhigPY75U3LnlrQzHbK
         dq4lw7xBEFq0eyR/Kq7CG4q0i+e8iozFO9dUKI1du5O+13FCg4q8+f12Qk5X5vRUXALd
         RmtkF+GC1i26mA6eqJmMGzsnuJYvMjp83KLa/WTqE/l+xdfTm7Xcxlue6eparyqlhFus
         dVIgYSYixvR4LUOuSXryVj1cHGFeL+gRaQBPpHimbCkzPJiLCXW1oRv9lsosKjPgroZv
         Dj66R503GcUQsqWguWdmEZys1m7R2+FCS/TUeY+y5zrcLNa4RHfWwsc3o5abvsmer0Lm
         Ww9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787919214; x=1788524014;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5LRg38io7U4Jw1Yasplk5QAWX4aC1cV4jh0oOs6XnaY=;
        b=Pw/D5E7/bCBSG9csDf1BZz1drOtJWhdfchnTcf9s6ZFngrZHSB++ZgvykZYhhWKaIp
         n1Zv/8jKvK7uL4Kp8OzbCb/BzSG1dRyLPhTpeQ7qh745sNYxJzXgb1bXjoFvOFNeuooN
         q2gfeTeQScz0Rf2mbv6noLL/4qooDX2Yc4+g62ZR80d4pvR8QHyAX6SxPy2F1PdTiNVQ
         wLjs+X0oJdOECji/CwQbed6c3y5wieI7siRwtsrG2A74kfjqaIIBlPSGuuOUVF1x+1Hz
         ywHwx8pQDPpWqWTRjJyZPwggib/hoVwSkOx3G/3r8kfHJh2JXFv7xyccXYW8eeLqBl2r
         HpaA==
X-Forwarded-Encrypted: i=1; AHgh+Rpo9BopbCc4onhy7PvmxyATUi5kpS+anT+oh/2FWw8rLxr5y//BM3DkhVtbWWW+IcjksfoGD6jFbkg=@lists.infradead.org
X-Gm-Message-State: AFuF++nnPyItXnV75/n/WG/rbeq//jz3nLHe6wHWLUjA9TIHW0QXrlvB
	kuuIeqs2L0eC7mOgqCdItxWgVoHBFsgzGubXQVkbUa1pb/qDTcyGWdDsUOJTsBzaiNAoq85Q/4R
	0gwu4A75SukLBAsqlPIhRBnxuI31nkKKYBT+y/RAZb4RDM2lUA1qJX9yfm/REEHo/cjL6
X-Gm-Gg: AR+sD13Byp4rwoN3HjL4HNkgEhxKxHq6PFpm75Sj+ozaH9RIhpry1rBKy0W1X+syBm6
	nJETiAhG27St+kJka5xK/fcDhnzR+xEg7b5QhRTRwCEEYlXUJAQwucPATyWQfKKnyWc2IFTzaku
	rU4ztftScKr50gmQqgTuSLYCbyU3wlTcsKFFS/vLXGIvSDTV+aqAkVHiIF/s/ZDnNhRSD9MMlCN
	LpQFxHKE4Z2PQz8N8/H+jbbuaW3IWlTMU4XghXgECUaKPiqEQ0wx0fl+MmZP2hHHLwdzO/MYDwf
	dAIyZ8opw8dN70i9K+5E63loHjI4FSz/bDxRfVaKWPQYEOTdi5qK0niMIdHCxC0GnVEWsmz6LAx
	Vk95wjg4mQctWkklYH8xvYxY=
X-Received: by 2002:a05:622a:1348:b0:51c:845b:ac4 with SMTP id d75a77b69052e-52fb961b8a4mr47069241cf.3.1787919214414;
        Fri, 28 Aug 2026 05:13:34 -0700 (PDT)
X-Received: by 2002:a05:622a:1348:b0:51c:845b:ac4 with SMTP id d75a77b69052e-52fb961b8a4mr47068881cf.3.1787919214003;
        Fri, 28 Aug 2026 05:13:34 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611c52211sm501354a12.22.2026.08.28.05.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2026 05:13:33 -0700 (PDT)
Message-ID: <c35dccce-999b-4a17-a761-57357e8978e7@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:13:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] phy: qualcomm: qmp-combo: Rework DP PHY runtime
 configuration
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEwNSBTYWx0ZWRfX7xPlO8hBaRkH
 cQwznfyXGoVI8mH/MjTZyIx2ZZjoFV3bMEaLvLH16/oQCn7ukcsmPiphLNziBkPNvEyY6hOA3EC
 qyYrUODA1gCUsSp7XL7WLR1rFB3G2K1nRRE6hUIG316SMWT3Tdhdy44zAPZL/bvuHhKdX4gkVXM
 2H92w9uUGBRPSGRY85Qn7QZsT14rGrG0qN8Sfh0WN4MAbxmUcMHkRYicyBaU92MebH3LilHTWlq
 8fkNSQw1Cve4Du9+4/qTSC1nYTddLm03e832lT7hECaaIHAAyC8KNuH6kkKRxHbjeqqPF9ubAzX
 tBdeHNUwdb5yWgV6jH8C8R8GifAAl/0knDw2F6Z7XLAPNkIKQMdeunZjppdg5EPZJoMYrmLb+i5
 QHbqiIvo/hHkcIgFVjsuJja6GspF7V3S1mAAfaRqT1fdgZ9iCbUSUwvre8hQmSaGWOcSX6wFHD+
 Q0e0zVFqlKjjeKPxTNw==
X-Proofpoint-ORIG-GUID: uQjJDTRS7c_bEUVhaxeo3A7gn7Fly1rW
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEwNSBTYWx0ZWRfXwbd6RkrmOYee
 ykFftbYIcaGEDtrewnk088sch5x8VyiTHzGaY/yO0Kjo9Sde2JGvDsAlCY4cqZR2N2BebOPXfSu
 izH+D4Uk/4iFzpiZhXZJd5wanggOCuU=
X-Authority-Analysis: v=2.4 cv=faedDUQF c=1 sm=1 tr=0 ts=6a917b6f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=ZTvNLpm-z4kpgeIlWLoA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: uQjJDTRS7c_bEUVhaxeo3A7gn7Fly1rW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_051336_192167_B6199C7C 
X-CRM114-Status: UNSURE (   9.78  )
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

On 8/28/26 11:43 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

[...]

> +static int qmp_combo_configure_dp_phy_common(struct qmp_combo *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	u32 status;
> +	int ret;
> +
> +	if (!cfg->dp_aux_cfg2) {
> +		dev_err(qmp->dev, "DP AUX CFG2 value not configured\n");
> +		return -EINVAL;
> +	}
> +
> +	writel(0x0f, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);

This should be 0x2f on Glymur

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
