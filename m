Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3761CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPtDb4a7koc6ZMbTeoIc1Q6M1TwhHtC5HTnd+QU0SLA=; b=KtqxFMpwWM63H9
	iMotCegrRuULjyaTU8JcDRfm1XptlwTs61j8oxIPuJyfzTejWAycs9tyBuRj/M70KyKEPd1kHZFII
	lPoCqIi3gqs4eIBMg0YQy6tfSY0PKW0SgyEvfPZ5RwkZeO4oo9p2KVOsN7CHUzDxI4+5B855iv5yy
	wjjhuZA+3xXKI9V8sFRyhth1k89fWZvrUkqoeGKZICnne4VMEOV2oLWQKzUTEWzievvc5QfTWb+1e
	0DqFykaKnxex6O+XQN4JIqhtxLTWOp8tjVhAgFlbJg3lbFy/nrxFLdpUjnKSg0WXSBag4y+KWMzRB
	RrSwLXpL6G6LMc1qy39Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUL-0000000DUfT-22vQ;
	Wed, 20 Aug 2025 12:00:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohGs-0000000DSee-0GdQ
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:46:27 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9nAbq009425
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:46:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=75L42tl0MI8KDN3dC/5xm80p
	bNugX+cDtHPbn4TsTaM=; b=f+ArhmI1e80n2E11S0VAGAHBmTj7HCLAeDvtlL56
	+k4LpOIw3P67j6da/lsVzoHX+IUnXFXe1GQ1pdLSdyzZNIWh2S5mDJMJXbxxAGx/
	3HtprMmldnr6sfITJY7LfmQwx838XN2D+yhlDylMSYdOh4mkP0NqzRllWF8rZinS
	Pd+IXCpQKKojyrZDd4waTrWOVWtOPAlVlIPrT1srooK9IcXftGSt+1mrG6RpfH06
	KiNEJgkUWbMeaaUG1VzwKUp5aasgESdXV2uURKnfRWWQLhZlEze7EDRAVXH+EqM8
	NNjCp9eOQY4JHk5n397t3haCiQQsmELZeY4aBmcrgFgfUg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a1m34-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:46:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2955f64b1so13727021cf.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690384; x=1756295184;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=75L42tl0MI8KDN3dC/5xm80pbNugX+cDtHPbn4TsTaM=;
        b=Vo3ZvXiWwn3Lld42M1gu3O8D67whqNCfFNsyL7Vf8pT2Z8Hpn/28Jrr0JC/aQBON22
         QpAHNRa1qnzF2359DyaWuvECj9pvEgqALUT7IiHRdTFeZQuFnlMnQLcSyj/dAnzPlzCI
         pgcV95LA5qUnrsPuRC9z4q3v2379Ree0IAG/neY8QzKIk2kgVkoS+7NlrHE7WgXg69oo
         qjoHkwTHfXLeZfLauUmkBzbfV4kurea5HrP5xhxTOAjMPpJMn9itFzi/G+ifSrrWetPP
         fYL2LrL92XKY1/MR+t518tY33irzYGfkuEplZkuGL0hDxPYUTHVitwlWWU+9GWTVo5+J
         2oeA==
X-Forwarded-Encrypted: i=1; AJvYcCX5wAjdU28FX4XUCzJUUMQ6f9Ees/D784p0EkPe+rhW01BDwZKEmNFMwhefiefLDlE7Bo67j7171QM=@lists.infradead.org
X-Gm-Message-State: AOJu0YykXvW5l0zHc1Jqg/qMQ7ssoZNthBask5G28AJ2DhwH6nutTfmq
	4wX1NM/InPMy9egmPCIUM+oK8A5YYTXvE75Sk78Z0o7f8CMLQOP81nVFAVlDAhacl5sG0nKVMbc
	cl+rKx+Q9MS0DsJVd1+JveBn1GWzTtAlZpKXbUsXpvA8XG4X6t1Rc02MWxp9NjgbO1Mqs
X-Gm-Gg: ASbGnctKy3Dgt85ZOTxcjAlm2i79daRWth635XnPAv159t9MiwB0dKgOOv14lJvK/bg
	vlFa1KSI018h1TrQWFzxyTCXNzLqeiGszS37fuBCY1VPoKs/YtCPYhmvUaIUWhfxmq/TvW3sc6T
	gm6U/gq7PJRY6KuewoVCm22vtj1QmC5X7QHysIXdgEBM6XPYGMo4GnKIoAeFuY93wkwNgHDDYml
	6WI21bLPZrjDH552WjekXK9XtCHcfYpWhQzd7+sqhDAanqNhAE833iXF25bBa+Zze453T9mztPZ
	3Lx/iujgbdE9ED3Tu6iXkUX82220qRPJq3fB/U/DnUiTtqvgeyqMTJtRzWWsL3hv7yiH94ghhQG
	dxm4z9YQcuPMmZ6PSZRfvqByUHU5Wgea1rFDOHjTbwOHKafiKggyM
X-Received: by 2002:a05:6214:5194:b0:709:deb2:3dcd with SMTP id 6a1803df08f44-70d76fd4c15mr24701826d6.25.1755690384304;
        Wed, 20 Aug 2025 04:46:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH83ZZdKQ60Ug1Lmf0IPGuUmaz4M2F4mxHsaVgPhdq8EvO/IDjNwV6zVABnr6KJ/OabGfXT+Q==
X-Received: by 2002:a05:6214:5194:b0:709:deb2:3dcd with SMTP id 6a1803df08f44-70d76fd4c15mr24701406d6.25.1755690383793;
        Wed, 20 Aug 2025 04:46:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f3525sm2531156e87.108.2025.08.20.04.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:46:22 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:46:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 03/14] phy: qcom: qmp-usbc: Rename USB-specific ops to
 prepare for DP support
Message-ID: <ay4ss7cwpiz6zwiwiav4ts5hwhxjpc6ogc2uirwzfcyhi2crln@3azxsu5hvyhy>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-3-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-3-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a5b591 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=H4SNA-w7Ihemelo7scQA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: X-e_h8iTMtHnCT9Kfqq5ifVJof7U8kZ6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX92sSaHDN1Jen
 eOjMb2oP6rpaOySn91lbp8vtlpI95eKvCxuxWgfoo3RQsmOOWZ1C22qkdJzT1619WiaUTO7Sc8B
 F31BpYx6YoRkBZnMgD47XQimUE5Qff5yv95BUYtZJZmdC6Z3Bew09JEYuXrwFYTy7YfOrVcMfGg
 nNFDvL2iRa/ov6chd6uRWZpgPxj1c68iSciGpCFhuh9AE51CFfgzMljemRL6VD27AYAr+HH3Ptc
 eJtvQmlQNWZjv1GZP+mwGpmhvmo1PCfHQhM01skJdrMuXZP3I+Wkni1obcUmeskodJdXP9XvCls
 w2ZCqLxsUb9njgID4BC3azUQz1FgNeLQjJn1SQcSFmpDh7y37/SEZh4Fh890C05yiUfwuMimO7/
 m+1HyKt2GjJqqk0a9SQzj3LfjiYbbg==
X-Proofpoint-GUID: X-e_h8iTMtHnCT9Kfqq5ifVJof7U8kZ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_044626_102480_B98A609D 
X-CRM114-Status: GOOD (  14.05  )
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

On Wed, Aug 20, 2025 at 05:34:45PM +0800, Xiangxu Yin wrote:
> To support following DisplayPort (DP) mode over the Type-C PHY, rename
> USB-specific functions and ops to clearly separate them from common or
> DP-related logic.
> 
> This is a preparatory cleanup to enable USB + DP dual mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 50 ++++++++++++++++----------------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
