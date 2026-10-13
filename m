Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0476CC6B08
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7yX+6Gcj70fGAV/FsCt3MlHtV3vbUA67Eu8jobzggE=; b=XRg7IPQF0jVWTt
	aLl4vTK8KQew0nkyMmvbVTa/RupJ3+pM9F/37pPt/uoF65BMLwXO2xu2mcC5+PMQvQ6yLPuoflV5Y
	hIxmoatIeOEy0oudwNi6aHXxTB1aaG7h2z7SGUX6SJZtg/Ap5humU8ghW4hkes4ctrUiDtRTMHvJ3
	zrKRBC3Mp4NsbJLClr0Q8J4/pV5FGWqtf0Em7TtyX4BnuEIeBoAWwT7vRLabq2qZHO0m9EJxn3hP1
	NQEZvkn8HuVm8w8hj/7AZDatCy4TqdKVoxPIvIOTs4JkuNH9XDQfCjqRlEZvekc4z3ZX01ARzG2dE
	auXPryfPfG8UHjjylL3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZbK-0000000CXgJ-2Dik;
	Tue, 13 Oct 2026 10:19:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZbI-0000000CXfw-12L2
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:19:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8V00Y922844
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:19:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7Hhfq7fiw28ZkDfvmDF1BDlx
	jnaYKRw6TyjN4JrVX4g=; b=g+SsL8wG0HIRiVNkfIddsxB99Jn0oQla+0oDMREd
	rxMP5t6pwMbbuo83h6PuLoOT7kn7YDI0oK6C3XcnmZX0WGxNe305I3U+KJYc8xBj
	jBEM732rBJMa3TVw1wPuwaMus54MJa9KblXoI5u6WE1OrbwoxhTpYSCWruiu/s+n
	Z94zeoPiTilNEsFbF3f9bYFWFpyBh5heV8wzJNRFrGKJHmV6jjd2alQUPBnSXnFC
	CO7DCf2clXltf7sxLa1c5y0ur4ihe5OngyWKt/DV9TnLxaaXHLZcsHDuHTyJJo39
	9tXB9FyZoQOkAoG6dxU3GMARsIH+6Z1bAeE0/GHAxslnlA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h98h1tdjg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:19:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93e834ff4d0so792712685a.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791886755; x=1792491555; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=7Hhfq7fiw28ZkDfvmDF1BDlxjnaYKRw6TyjN4JrVX4g=;
        b=HYXdoVdvrjIkfuvihB/MfcAYwmjPzqAb3cHOCh+p2tt8P3mYun2bn15IdNdUjlWZWI
         dIQ6ieHrJ5bLXUd6v5brrCwhQkMXSaGwuGBIpld+haKrw7mMzp1Z3s4rYpRePVKycAUP
         oFoGFN+pQflbER56yMA68o++w/nj99jAbOFJuTX2I/i1M8esvFl7RroazwaRvnFKnQat
         lrGoHtwPeqqM3+G2sM58R8gLzBdiAT5rVbDE5rZD27KeK//fu/BDT8lncSlTqdkrVT/Z
         Nz0k3jT8aNO1yYLdpR4vqtq89ihoZ5ilii4lOvlL4niQNtV8l9QMQ4AMrCB+mIcWxK3w
         7rag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791886755; x=1792491555;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7Hhfq7fiw28ZkDfvmDF1BDlxjnaYKRw6TyjN4JrVX4g=;
        b=yzQqMMQ1RuROke78sIshbw4gse41bk3F+RTuMb2FeP19xTl6yB7ZTIJNOdD+j56hJY
         ellqc+daUEEGSROJHA4NUMwz1P4y/L/QLEjuvApw84vSuozBmiEwGTDUEk0r3NwQD5o+
         84L8IXtLYpHQJnG0yuHiR4f3+sRDMxbUqMcl6P1wMUiTUVxR95+79uDSuJdWuClDsS8i
         Gzjt/8p2GNy+X32IZo/3n2NciRBFn9KWQ8KCuzMO1q2pn4uDEQX3OrqW7b4Umak0BOzc
         2jq+OuhzlFlRynHPIjz4Q1ceQrYZlIwBChCt07gf3OwB5w7E6V/aM6HNkW3ZhaweUlPs
         43eg==
X-Forwarded-Encrypted: i=1; AKwUvBwkjiWCOkMJlYA9Ny7QMcyhYc87hsMUOcegVeF87cp0PYOF5xMvRThQDs6E24vicHsvJY2kJ/q2Xdw=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ51pJapLFeSDgKnJ0VDhchqFv05pmA4qrYoTGHKh0MKu2RcCtU
	pV7a01mY/Pn3hJy3cXN9NymVybd67+W41re98u97/Qu5WzLBdDEJElo432swnDzpgK6fk9Re6GX
	s+SD+Nmsvmj+9780UtOTAdtXflrLiZInFgkKGnyDQCp0XA3NDqWhh/IjdOslE1bcrdgsmN78gtM
	FW
X-Gm-Gg: AYBFou3Z5DuUlXBcHCCdDPAvA+9U+ttJTUu2pr/gMldFWLVt0HBbRGQjCMvP8cSTRJN
	AMAVnt9MMLkBLgMHlKoKtjz0sf4mcH4qyHqQA4fqp2qsb3v6MgzPELkhnVs7QBQj+QCZY10342S
	sF+RWQ9wpMUju9bqUv+npiOEj4veuDkbrh38+jujsJdPULG1XDYJlZ3AB9QYtl0nafqZyviS/jF
	MnjSNZ/jp8PRcq9ch70epfSQrkKM26vKIdbuUky+gsBJ3C5PrZOcvLGP0MDlrSx5IEt4HcjliDQ
	QAHQA3bc3NPkekI+G9oPcX09NXMS/QwZYN+VdAtFsAnuE0fm2i4tzsWbE7HvS0cSa0q/FO7AmRG
	Tl7Xy2Cnd8KGx0/DRBuSL9G23HWxQ/gpwfnjVB0zvyLMEhO3norcziST4qE4WI/bmvffWXasrdw
	tTU3LF28hZuIVn
X-Received: by 2002:a05:620a:6405:b0:93d:e031:5ad with SMTP id af79cd13be357-93ebd224911mr1904653585a.17.1791886754569;
        Tue, 13 Oct 2026 03:19:14 -0700 (PDT)
X-Received: by 2002:a05:620a:6405:b0:93d:e031:5ad with SMTP id af79cd13be357-93ebd224911mr1904649885a.17.1791886753984;
        Tue, 13 Oct 2026 03:19:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bcf282952dsm1594993e87.7.2026.10.13.03.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 03:19:12 -0700 (PDT)
Date: Tue, 13 Oct 2026 13:19:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 07/13] phy: qcom: edp: Add Nord-specific register
 offsets
Message-ID: <q7riz5qxge3gqjqz23xz5aecfhlg7bry5w3wzgblnyozm7ac7y@b5s3z7vk2k2w>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-7-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-7-a2ab9af954d2@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=VqC2kO2n c=1 sm=1 tr=0 ts=6ace05a3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=zGc1Ob07GAFFi9FfrWcA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: dVTxrTc5JW7z1JDiiGamr5yz6VPhjJ2Y
X-Proofpoint-ORIG-GUID: dVTxrTc5JW7z1JDiiGamr5yz6VPhjJ2Y
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfXz1XCzQgPG9I3
 QoH7KbRhQ+0jcMzWQReSQf+5y4pvh3gu1MGPtK6hi5WNO0aiu0p+V1IBnEF4y7wrk7pbOGeS+bP
 DJERWfunAcd5DoHnloS/ynokvitboB8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfX8Dl+SNC76/9q
 9RbaBwtkEnNGnhdMakwvPTpjH2NHRglbwjSIP/C5VoeDLutsAzqkn6xH4ZGHFxelVEPWdCNx8L2
 YUTYXOUJZ9nxvfQEoB5e4U4qZgebPt0LCk7pB+pu16H/1EbnG8ZxRy76h33jjt0owre14LjSCtJ
 oT7TIJrmE8CGMwXe5HJ9IaIOOt3nw/LyLwjYOBjrykCf5eH193hg8IdxVIEcNg/Jm2YPdLdyfkh
 hQCpxylx3hzLl+xtSn1hNR96cXqczH04GlHQNI134CVWZbcP/zeZlHYe5ClO5GA5P5bJh6WEKzp
 pg7l4/7t7oSR2mSBBrwD1x2tGS3SfirRZY+vofmZ0k1J04OEa2LODt1GSXe7kXNcoPiPLwo9cg6
 275grLl+/W4/CGOKw5eKxQ8yseBg1r7nFYxKqx24PkbGBN9SvWKDQHnWdFlzdSdmkQCdIqCGeyu
 s1583NAgzucGv5ej8Wg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 phishscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_031916_299629_DD3671EB 
X-CRM114-Status: GOOD (  18.97  )
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

On Mon, Oct 12, 2026 at 07:02:17PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord relocates several DP PHY and QSERDES v8 COM registers relative
> to existing SoCs.

Why?

> Add Nord-specific defines for the relocated and
> new-only registers in phy-qcom-qmp-qserdes-dp-com-v8.h and
> phy-qcom-edp.c so Nord sequences can reference them by name.

Typically we don't do it, If something differs, it should get its own
set of headers, describing all necessary offsets (especially for the
QSERDES). Otherwise it's not obvious if other regs (without the _NORD
counterpart) are valid or not.

> 
> Assisted-by: LLM
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c                   | 7 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h | 3 +++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index a3c893f72908..d5c6835b6c70 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -42,8 +42,15 @@
>  #define DP_PHY_VCO_DIV                          0x0074
>  #define DP_PHY_TX0_TX1_LANE_CTL                 0x007c
>  #define DP_PHY_TX2_TX3_LANE_CTL                 0x00a0
> +#define DP_PHY_TX2_TX3_LANE_CTL_NORD            0x00c0
>  
>  #define DP_PHY_STATUS                           0x00e0
> +#define DP_PHY_STATUS_NORD                      0x0110
> +#define DP_PHY_LDO_CFG_NORD                     0x00f0
> +
> +#define DP_PHY_TX_LN0_DRV_LVL_NORD             0x00e4
> +#define DP_PHY_TX_LN1_DRV_LVL_NORD             0x00e8
> +#define TXn_TX_BAND_NORD                        0x0024
>  
>  /* LANE_TXn registers */
>  #define TXn_CLKBUF_ENABLE                       0x0000

I'd suggest adding these together with the actual users.

> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
> index 93edabb830af..008b17222a8d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
> @@ -48,5 +48,8 @@
>  #define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
>  #define DP_QSERDES_V8_COM_CMN_STATUS			0x314
>  #define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
> +#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD		0x17c
> +#define DP_QSERDES_V8_COM_CMN_STATUS_NORD		0x1d0
> +#define DP_QSERDES_V8_COM_C_READY_STATUS_NORD		0x1f8
>  
>  #endif
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
