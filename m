Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF2AFA1FD6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 17:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSDDILVKixUCtOODNJ8oI4E1cihilw43KjtutYs8FY0=; b=iqiwiKldL7e5BH
	uPqzWjmMssGh7qGtY+MZJbJMTuJdqPrCU8+qJ099V0a3PTpgUQdCI0ZmdfuBMizavfxD3oqRWsgmB
	KAIcaCSXt6OwxxkBMbwzT0RdFeeQGZzGeMjKcMvgUvGqnGGd/1hYnkMTWe+9bJlrT3Uf5+vsOYF1O
	OKmXw1zhAJwvFfZ2F1M0FB0k6sdKqIvurwf+ddniIPCSMMKla8/7Gnd/+On410EorfwkFdkz0eu5l
	87TvlkkzC1z0cJeQPuMbo5sLT3Dgz94MrP0y04EG3a3za2Zaf34taChiRbPGRSTI1179oq8OUxLvd
	Fbs0JICx6l4jQNS0lyNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFbJK-0000000AZoh-1nMD;
	Wed, 22 Apr 2026 17:24:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFbJH-0000000AZoM-16Cr
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 17:24:25 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63MBXP133730717
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 17:24:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UfAxfiLJzxkm1m8t+L1t3IM8
	HEx6RLiSD0+sOVMBjl8=; b=Hp9NRYUZZDmBKjQEUhispssv88TvIgeuxgZ8adv9
	Jk+r5KALueCITQu6vIn5q1LIdb6QJRQ892M7XI85ajwxn+MnNE/eaPS2U9i0DrB8
	lF18qQE6Iz+wGu/HG876fxLJ7a7feSIQ9lVNDZtUU4BpIivlX/cGFXvkjdSBt6AI
	32FoeluAk0SH5uclVuqjNTvSJNph2MDQMwMdvNWytCX/165XZTI1kYMMd2lVwNCK
	QnPtiaXyvkh7VnrsqfMSpSdRUZBGFB+GdfjnBUSE2eaPSVGegbVD5SfvyXuGdj8w
	rhm+frOVXD3w0htIwKzgP/xhDQiBMs/KFRK6oRKrdPotgg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenfvct1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 17:24:21 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50e5a336b44so40688031cf.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 10:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776878661; x=1777483461; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UfAxfiLJzxkm1m8t+L1t3IM8HEx6RLiSD0+sOVMBjl8=;
        b=Rf31DTPgESboOf4WykFWHicr15Ct9QpgdC8EZJLsz3+BKkxQmSwdk4rbrM9Wa6LNIv
         I2+VwRmDyyRfGaceLsDeQIuxlyNoCfHrhUkt2ul5q1pzT5yhhBDEu8gAn48JdiX428dX
         cjuDj6PCqU8Kuo9MYe59wP5+Ad2QEAuPXd2VrpPcxgDJt3Le9SCKg2TIskc8txhMEedG
         qi9DidyjlvMx0R43UFxWqFOTKuvL27zu3D2h6I+lLHwmQyW6gXOphzWOkNfE4gNX4rJX
         5i56rffZlBOySVzTMRCmOh/vaNxct4lwxrWFL0+eT+VCzvd+rGy7SQ2HQavAfZPinbVF
         kTMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776878661; x=1777483461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UfAxfiLJzxkm1m8t+L1t3IM8HEx6RLiSD0+sOVMBjl8=;
        b=mALQRlWL7ks0+bReESIB3imQiuE8fYizF/IpzwUUNlgnJxH+rAQE39iYvB5dzNc4TL
         XPxO6zaQ8rP9N6aPCWENIpIafI+k/aJ+fPDl3cE1+D+Ziha50dPf+XQcPyTQIJ5RUFSu
         l71u7aqSXKggvSh8W3cy6CI9myo7MDRPf1poUgvMJ/A/6KGdoejlkBO//WNOreBD7Yxf
         rONUriEDaxZGmDDUyNU5K62AJWHwUmN9fy9a1CvJaanpGL7eu5wezGVb+YqkZvnf+Tk5
         CnJbh+e0JqpIPeQrQ9MlQ12gceBuUOHWpjnByPgOJS4Jhm9WnU+iG/Rwg6rkXW8i/Mb4
         GLSQ==
X-Forwarded-Encrypted: i=1; AFNElJ+8bmJqqwURT3xVtMq0XKtPCDjG9g2ynijKWGUxJj8OUnBWL3Lf8lu4GHhFVeOzNAiPa5U5GrqZ22U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxihbLWUoUB3jSJSjlYwTJUjC2oC8BlRGm3NmIKRfyGfIsq8YSN
	OhRNETt4NLo+L6VIujquTPs56poSRTJ6uOdUl4EgAwQ0M15iaOEsingRQALdVMnwfw+FdyXPu1v
	xYZKXfLVmrABgyfA60XO89iNWFe9GYzdsk7KwewVLlSBAQrDAE45qSvHJhRA6uQT0FNa4
X-Gm-Gg: AeBDiesGUWv4d3BDxlpETKuk3/7VJLx5If4TNfD2P4tdKHvruZHhkJ+s4b/Q42duhMu
	A8IKBg0om3LGXFy0aowM88yo9q6cf8lObAdVKtyQQ+PkcPhm8bkJill8E9FvOC0glj65ev5yEpn
	Hu4ES4y7/h67suj1ogNrwauYb9SsPHfPp+VXCA6GjeL9tZ5S0iFm5fDLRKZoeBnXN2YgbS531gG
	4M/AA3HAG7ODk32FqmyuilWf14S/0ANCbbDJ+UknHZzwrNP6BuEQ3nhCPgVO1OCZRb9XT0ol2xH
	ywQ+zMA50qYluEg7/3uF08r71MDIO0gAo19QiZFrNQotnV8oKCmc/Z5HNQde5+fL3qOQlycfHZM
	vqZKCYb4dB6POk6WRBR5BqZ7zqi0p1+vqvoO7rNDxa3gn6VXxTNLHVm8MxUHvUSeSG+0pHR60EM
	9ApLKCtPICw8JoE0d+RaKK0wrpmybY21d2TLiPcxfhFuzZVQ==
X-Received: by 2002:ac8:5816:0:b0:50e:5f9b:eb55 with SMTP id d75a77b69052e-50e5f9bedc0mr175003001cf.15.1776878661219;
        Wed, 22 Apr 2026 10:24:21 -0700 (PDT)
X-Received: by 2002:ac8:5816:0:b0:50e:5f9b:eb55 with SMTP id d75a77b69052e-50e5f9bedc0mr175002511cf.15.1776878660705;
        Wed, 22 Apr 2026 10:24:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4185bc328sm4700740e87.25.2026.04.22.10.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 10:24:19 -0700 (PDT)
Date: Wed, 22 Apr 2026 20:24:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/5] phy: qcom: edp: Add DP/eDP switch for phys
Message-ID: <ifwckc6zx3ymlyjpqyt6iqglgz2c4thianaxxups7h5ts7ikyk@m67gguvtkvzb>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
X-Proofpoint-GUID: aRjAVzrE3DoWga0xPILLS_VAo6jai8oB
X-Authority-Analysis: v=2.4 cv=YJuvDxGx c=1 sm=1 tr=0 ts=69e90445 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=JfrnYn6hAAAA:8 a=eAMIGqEPAvrGGsoAY1IA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDE2NyBTYWx0ZWRfX0yNhIqNHWI1m
 5/1X3HHbWQJXz+KBQbdXDORVknH7vaY8RxyMMEl/2VhMPLe3INy9ImbkPh8R9iCSMga9p0v1Op+
 d9Q0njrReEu/+XsqPaMuYbIT7WyD70BQpt6G/L/5riFOjdJWlGPynredTm5WN6EL1WcgPupeSOg
 aOREx/Bnyh47t10dYIa2+f0HWMxxS9lNo9g4RwB1+sS9YrkpuVGHf78rQNdaTr0gz/IGmxkFdmK
 4v62Co3Klz8m/9Acb0uKND3tRZi806i44nyAWHGcuzQOKcDVyrloO1RoNGOFezOor1aQM8vPLOs
 OdRs6AgzVSx7fDJBjNeYY82AtWpF8bgWtQbTEVxMtiG4Jy+jRpWNdAmFTF2Eo6j9EcqyMS1w9PG
 RE6YanuGZ5AsYUZ0xb1ZnQLZnxDnouMCIfHiOp5GyYWe7+/13n9wwGWter7zA0i+kwSJtDMigVb
 BKhAetl7n3GzwPGYnFA==
X-Proofpoint-ORIG-GUID: aRjAVzrE3DoWga0xPILLS_VAo6jai8oB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 malwarescore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_102423_480318_EE1CB070 
X-CRM114-Status: GOOD (  22.32  )
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

On Wed, Apr 22, 2026 at 02:01:50PM +0800, Yongxing Mou wrote:
> Currently the PHY selects the DP/eDP configuration tables in a fixed way,
> choosing the table when enable. This driver has known issues:
> 1. The selected table does not match the actual platform mode.
> 2. It cannot support both modes at the same time.
> 
> As discussed here[1], this series:
> 1. Cleans up duplicated and incorrect tables based on the HPG.
> 2. Fixes the LDO programming error in eDP mode.
> 3. Adds DP/eDP mode switching support.
> 
> Note: x1e80100/sa8775p/sc7280/SC8280XP have been tested, while

Tested with eDP or with mini-DP too?

> glymur/sc8180x have not been tested.
> 
> [1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
> Changes in v4:
> - Splite changes.[Dmitry]
> - Add sc8180x tables in a single chagne.[Dmitry][Konrad]
> - Link to v3: https://lore.kernel.org/r/20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com
> 
> Changes in v3:
> - Rebase to next-20260224.[Dmitry]
> - Only enable TX1 LDO when lane counts > 2.[Konrad]
> - Link to v2: https://lore.kernel.org/all/20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com/
> 
> Changes in v2:
> - Combine the third patch with the first one.[Dmitry]
> - Fix code formatting issues.[Konrad][Dmitry]
> - Update the commit message description.[Dmitry][Konrad]
> - Fix kodiak swing/pre_emp table values.[Konrad]
> 
> ---
> Yongxing Mou (5):
>       phy: qcom: edp: Unify generic DP/eDP swing and pre-emphasis tables
>       phy: qcom: edp: Add eDP/DP mode switch support
>       phy: qcom: edp: Add SC7280/SC8180X swing/pre-emphasis tables
>       phy: qcom: edp: Fix AUX_CFG8 programming for DP mode
>       phy: qcom: edp: Add PHY-specific LDO config for eDP low vdiff
> 
>  drivers/phy/qualcomm/phy-qcom-edp.c | 221 ++++++++++++++++++++++++++++--------
>  1 file changed, 173 insertions(+), 48 deletions(-)
> ---
> base-commit: bee6ea30c48788e18348309f891ed8afbf7702ac
> change-id: 20260205-edp_phy-1eca3ed074c0
> 
> Best regards,
> -- 
> Yongxing Mou <yongxing.mou@oss.qualcomm.com>
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
