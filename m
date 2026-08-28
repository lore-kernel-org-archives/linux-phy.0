Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E541CC61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 10:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwtnzV7VuRy8Dhbur5bwHjGFAkOLLoZVFfEtTLCCbaU=; b=PIdyrpJwwVFasS
	wruEohojiJjl+jK0kxaCWeXIvZk/Zf7spGZcHATDBKH8fWzq1w3E8bnt5xumiFRjR+U5D+orJPlvY
	dwAUGqc15laaMRQLnKOpBKFq6rfChY2wZOnNTyUAFPrc9zHZQwVd05m0KgeejvuGxz0CNalvtBTIQ
	/DTXLg/xNPTDP68gYp75KemPvr9KCU3qaXOL3Z73RnqLE4klbnonuWahKl7iyH0LAyBTsZdyct56Q
	iR7N0Y0of8vfR4utyrOLD55XnWiIlmkIaEGJ0qk7KJEsjO6QuSBD9Gq8YPcikQltekycUAmSRbb4O
	TKBMDwT6ZbQVE40PnlBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztep-00000005Ykf-2b3r;
	Fri, 28 Aug 2026 10:17:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztem-00000005Yjt-3MZw
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 10:17:57 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA88EP2596125
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:17:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zXRfRBSvmOBEWYCw0NcTobyt
	JHxb0TUjVtAqtsGGYto=; b=JJRQnfrrSqn+7SxPsN+KkI26FGtHGKpjExCWkLUE
	Ny/NxOoX6GaXiOS7hQXDo219MS1h16VXQM+GR4rmCx2D1iTFWLjQsrzeOc3vka7a
	+fthdmHpXKCBBlV6xDeNhENihWW8WnFzg//8wMYnWViAUUCPRq6sJN1PeNH8ZDP2
	EVJRvRIgnlQOsb7l1DG+wOOy8A8ZdksGXkrV8VbEHUMcF/Mk4ov5a19XB2S/lSxr
	qrBReBZPm38Z8YGmjQ2Tu5KSwEBIquhzJqUmQ7zKN/bdeKAvquXNVxujbHFz1Wol
	HsSuwoJsoII5MGkzh2fzTD73xLgrR4Og6pQRWx8EyP4F2Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb1v39pg8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:17:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-52fb8f67542so9527441cf.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 03:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787912275; x=1788517075; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zXRfRBSvmOBEWYCw0NcTobytJHxb0TUjVtAqtsGGYto=;
        b=XDK8p5IC6g8cbCLO3Yb9EUVI+pydxRhV3NP5epX1VHnDfBEZjg/q8LWI4Etav5hTaN
         RV95bdO6P9y8wufYhkXyVcsGyjCVkvJwF61OPbiJDvOgQ5A1pYDSPq+09WypRn1g0+FD
         wPJx3q8Q+KfRNunasf7BE/0FvJFma2OVDHrDf9r3I/InHv+PC5zorbrIDNaG6yDd2m/d
         9vc4uffWa5M9WSNc6lQzQwwnxhBgrQRZCBXRQjhpEM0pRvB9NsKL6kjhsb8mnIk5TazC
         mFlKmBUR+zvWibRNLv8aKb/yn6470XslhVI3Mt/ark6IozLkwwFGkm+QP2D5o6LdP2AC
         pK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787912275; x=1788517075;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zXRfRBSvmOBEWYCw0NcTobytJHxb0TUjVtAqtsGGYto=;
        b=UQDx/pIeca9ET/WHOVaKwiVZPVdI/DfDI/CNzQNx0F6gTgoKKMkXPAK0JPF3U3iRI/
         hG9T19omoPuXuSOl6GJ6LWDXMqS2vId8gJm+QFJHtwxO4AAgEdp2ZT9YR7ImyJExBamM
         g7D+iGt7YcDgGZICt9SVx2+Fi8lJmGp0C/G3YLaAX7A7B24xWRFnaTrE+XttvEPlIn2i
         sJrdwkFi9JMZE8KWqLo0XRhNzioL3NM+L09/jRfQG5MygDl2B9k4rcs26/HCknELWitw
         fBSW72g3Zt1BHADRdZrBWu9PDa93FtLHL1OXnBZ3IGtIx7BDULPDvLrFOOwSwnlR+njM
         MgXg==
X-Forwarded-Encrypted: i=1; AHgh+RqHCdNcebVx0tLD7q7AOcshbfFK12qefsQP4pZ6t7/UxH1Nm7Sqrg21j/xwRtK+5PAlvC/Hl6noASc=@lists.infradead.org
X-Gm-Message-State: AFuF++lgK1eTzndwFEB5Jlkwgzfz81+b0CwCqN6nRvQUhveyopOx4IyD
	UWWbS0ZtxgO1JI9+C+qG0EB7apgNfzlTFOP79mgdIcUPJ1YKJOJmc4eraNx6iwHYSCpGhb547U4
	6O+TIrPpEm5iWjR33to/bNMRmkLVVIoVlh3eqbdPgpz9+td6VK8RSHIGEEZWEX30OjQLt
X-Gm-Gg: AR+sD11zz3ZVGVyEr+l4TJOEyomTlRLYv6HSP3QfqTIZpTF+RM+b2mN10eHaRcWYMWi
	ZScv660wHTQBSGp3Csm2Bi5fidSirgAnkULlvg8dMrmjtCrWvxp4hkG9zwd7fVzGDqWf5iKqpA/
	fK5PUvXoU7YrUdt1uMutTAvwqd36QjNngi/vAA8VttrQSOQirNzHOLrUUwmVDDw1LKlq3chWEoo
	96PNPJ74HwIWz/WRZx4PUDdNfeoshHXPsgIFwOHtIdHGH1q0st7bCVYkc2TG6z1Qilc+EipZ5Fv
	zqO6menCC3T5okNR2d/VnMTsre3J91PSP2LKt2Zrf6RDNVUj7I5xuaxGaoDUKE7KZ4+9qjxtGW4
	h8IB4Np1uUijC
X-Received: by 2002:ac8:5cd5:0:b0:517:906b:c043 with SMTP id d75a77b69052e-52fb965f4d1mr74562561cf.36.1787912275126;
        Fri, 28 Aug 2026 03:17:55 -0700 (PDT)
X-Received: by 2002:ac8:5cd5:0:b0:517:906b:c043 with SMTP id d75a77b69052e-52fb965f4d1mr74561971cf.36.1787912274497;
        Fri, 28 Aug 2026 03:17:54 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b4942298fsm118166165e9.1.2026.08.28.03.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 03:17:52 -0700 (PDT)
Date: Fri, 28 Aug 2026 13:17:51 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/4] phy: qualcomm: qmp-combo: Rework DP PHY runtime
 configuration
Message-ID: <5dlmduld25xbmfqm4as55pdxunts33wrpy2piybiuqpkw3t4ua@inu36526ekkw>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfX+6VLfwyrbcPA
 AcLoBczStnLIx+dgSmCBflJU6aJgJxgZFWJvR7YUDyQ0bR44l+Y/3yf694GfCDcpmN8GkgSH9gb
 oHLAUmOUc0CjrMq+OUvCtYt77zTUg1np2SvAcZotedPebnbMlVY84sg/q8k4umV5y9RvPnmGj8e
 YhbhgNM+rWnTp25OLHsw7avECNnq2CYWEhUKaEjd3W41sbHBXSMOQlM29GG2dywshigxXnqMFFn
 jY+5DG+DoCO1WSFwhD140VA1TaGmW+WllPrWRZTzHv5FdWg4P9PourN8vW1u2b7LyvPqqX/5a/0
 VJOAv9ry6DWQ17gY3BBNW6saFML7a9K9YK/A5FfoJ6KQsojaVgLfCzzPbJNQBnCl+N/TQUP5skk
 sfSe0BxKTTEVg2DakrOJycmPwOrAJJHCndWyWm2JFyA5vvP3LPMC2gRG4Qpbg/eNMKPl1IIpfkJ
 0bhGiyUK1Pn9UjD3urQ==
X-Proofpoint-ORIG-GUID: L27pKxqsZtL-Pl3P70as8KCZH6PaIHhC
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfX8nou+ixe0WQ7
 hwS9FzRtfxjFJH3Q41d9Xq8BByl4QvShDuOAwR2jvph7kLSxM2VbkeHonlegCOL3tsaNqdwN90h
 toqM3jxhnQKfJdLAjWW5o0/sKc1AxX4=
X-Authority-Analysis: v=2.4 cv=faedDUQF c=1 sm=1 tr=0 ts=6a916053 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=clBUptZa5v5FR042Ey+sjA==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=lS0QMqM3BESs-n2QcPcA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: L27pKxqsZtL-Pl3P70as8KCZH6PaIHhC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_031756_959719_7CE29BED 
X-CRM114-Status: GOOD (  11.20  )
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

On 26-08-28 15:13:16, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Rework the DP PHY runtime configuration by:
> - Extracting common DP PHY initialization sequence into
>   qmp_combo_configure_dp_phy_common() function that is shared
>   between qmp_v456_configure_dp_phy() and qmp_v8_configure_dp_phy()
> - Adding dp_aux_cfg2 field to qmp_phy_cfg structure to store the
>   hardware-specific AUX_CFG2 register value
> - Defining named constants (QSERDES_DP_PHY_AUX_CFG2_V456 and
>   QSERDES_DP_PHY_AUX_CFG2_V8) for better code readability
>   and maintainability
> - Adding validation check to ensure dp_aux_cfg2 is properly
>   configured for all hardware variants
> - Updating qmp_v8_dp_aux_init() with corrected power-down control and
>   bias enable settings
> - Modifying qmp_v8_configure_dp_clocks() to add VCO divider programming
>   and update auxless/LFPS timing parameters
> - Refining qmp_v8_configure_dp_phy() with updated driver enable values,
>   TSYNC override sequence, and additional status checks for proper
>   PHY lock verification
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
