Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D531CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 21:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brlqlP6xKHiiNZUTxW3gjeaeF0kGWqjOfw6SDfOkqEY=; b=DGrYGplXMpA0ZM
	tATmNxW5upZxFTOPKRSRDHOCM6qOG2JT0KW9a4r+JhhcrWYUQL35vH5KyxudN18mHyWIyTVtmRGxk
	KqaB84OM/RsWRftuGIrdNXwePjN7d+TkoH74jtQYuiOv4EGfX9ZfzH/wHklRhNxmrxUZgQEAILWwn
	sI1q3Ttn8hx3YltNGaTh+CrB+cgIyAaErGpPOXLm3TlG3Vs4ycn3EZ5XYUUiBAmPLf/YMn35O+dt0
	aN9fHmSJuArKJv5FBF4OzsZcDlVh88eb5Tx7C4CkuchGdApJfXwbkM0kPv0N0KK5H9z10vTWFjMtx
	XVQkCgpTA6J36dat/SHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1tut-0000000DLTm-0VAE;
	Thu, 25 Sep 2025 21:54:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1tuq-0000000DLQt-1OMY
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 21:54:17 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQYit005417
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:54:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V77Z5Ho34wRfniMvExHw0L93
	ufuCYBEpuq3QobQDp/w=; b=lbaTtvraUQayXHdkdf/MuJVtN5609Gsu2GmI7Hb5
	gcfmYkWM5XUxTaHzt5TGMeg62HIZfX/rsZsKHXsV+bvLp7/Lg1NzvLWH+A2qr5a3
	Te/HCFlvsOOpdA17HBEgzTCWJs8/NVckMd0WiTCBqWQmt1KAbOgqMFik0OrlorwN
	9JdyOiLjKtR6nuxbgY79eRKQcWfD4m1SPJSpAUT1xz+cRfWkhxo9Vds/RVO+cVkv
	0Hac2LP0/f7c8CiSClOfSAPsGWkfn9/u9UEExcTMjLHFu4ooSlo3VQXYwQL4AAgf
	kctlhSr8mP/DTa4Hhv14X6I99W9gLs451RIRgfumhDJ/7A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u0gu5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:54:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5ee6cd9a3so34699991cf.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 14:54:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837254; x=1759442054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V77Z5Ho34wRfniMvExHw0L93ufuCYBEpuq3QobQDp/w=;
        b=dRTclaP5R58NRP2f8IH3kg/HVTMHcMbqrJ85XDKVjMkXsBLDJ64jEMv+6IRTFTB0ir
         qCKa1R2YyC+ea+pysL7DnXM1DvxlBdvyRD1J1BPdzGtZmMLUwLLg/Ug/fUeuO365l9/e
         0PdgPKPCwzv9GbpBJAJTYINf8FS8fpfz78NcTtHxa8EvjQBcf3H40U3QRrx/EpHZp+hW
         Z8WNIuQe5501e8kvcL9ATQjYxwc94uh4QY704J78yNj7PYHs8+ykPZDHG0agATP7nq6P
         x88A7rkSz+2KaspLCN0JMwtEIgQw3dvcXuiz4yeJi64Qo3QeFn9pV7LfRuPCYcAytmfu
         XO+w==
X-Forwarded-Encrypted: i=1; AJvYcCWQ7rGt0CWGCA3ez2S6Z/QN3QzEDOFYxtUIbVvJv1KrnyDyBQWGR8q4BRQtS0xTeDVEE4YCxLfIgGk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXVVS1jpqWhVzbCSn+1diGRINc32jeATbqThs2hpQ8MWsp3T4z
	DnJ5MjQvs61ek2RiisJGz7ArbYfy/XPt+8Gv/U0G4rYIjoxD/6Y+sX+RTdxAOfQrxPPkBH+J+EP
	Oq2DtKd/ai4sp/GKF4nwZI0LrLtFOoLD4G8/XW466aAJvtU6fFepcLX+ngqJx7t39ec/Y
X-Gm-Gg: ASbGncvvVibPgJMkMAWWQrJze7mkVhu9E368NGCxUj2Gj2H/4+pf2e2UpxmtsLxBVL9
	9vQcVgZF/eG/kXZYZ6nDycFpepnxrbWzZIWgkH6F7UP8GbVJ1lzAJ/PQwDOLHwVyjMV2Zbgs/gd
	lC3xeyfm3EHlh+/Jj17z9m6jhZMsZmlRVrdLH+5xA4Fs/SBA/DnSsTO5ndtH6ac/wNADZYM20lF
	Jp5myYSULd19weFAl9OISGtgApzNchsDAWvbKrbQ6Ro0DlNcfyM1d1YTG0xsf+dTl3Z7kn2c1jX
	Co7fzkmcVfTR5F0R8nw2ogGnC0DGQzy2RAArzt4qly5e7crbPbNppGCK+144cLWCCrifQGS1+tR
	ofxovx3l4rn81rAwfExZDt1g5+9jrOtJyYNrWxy14Z5Y2qFqbFOPh
X-Received: by 2002:a05:622a:1a0f:b0:4b0:da90:d7d with SMTP id d75a77b69052e-4da47a1a220mr67870191cf.3.1758837254449;
        Thu, 25 Sep 2025 14:54:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyFRxoSrrZVyL5ZFN8zm6WyGWU2qPELuXqbOoO1z14tsOOdtn0pbtF7AxjejfvrN1FriBxtQ==
X-Received: by 2002:a05:622a:1a0f:b0:4b0:da90:d7d with SMTP id d75a77b69052e-4da47a1a220mr67869871cf.3.1758837253974;
        Thu, 25 Sep 2025 14:54:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4e38b04sm8222961fa.15.2025.09.25.14.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:54:11 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:54:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v6 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <d72npzj56ng2lxsmbmu2l43ebag4cfyhou5322kbpsutn3nwwf@oi5ibgajlfos>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-5-419fe5963819@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-5-419fe5963819@oss.qualcomm.com>
X-Proofpoint-GUID: OohdrqFhQORc6itxvQZ0tv0Sqhb_7_5j
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d5ba07 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VJ1vJixsNvIt-2Mg1ysA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX8O34UuuAKljp
 rKKgL9WwQHhlvjtblPUDt04Ffua1u7iP/zgw0vBxlXNdiTsG2zXPOpGN7grlTse12DCMHcmG3FW
 i38RqI4zoL/Jj5/NFwQMelRo3b9gFoXwC9IokrbRGZ4GjYXkjcKaoY4W4ZWsVhPlmvhTc5HNg7g
 xUChY5TBma5K2ytolnyzyTz09s1cM1RM6yL/IqbFmwxfzumoPcP+/EAmAgfvk2XPLi2QCDHGrPn
 Z/JFTbPdjPIjsduHBghXsBNK3a6u2vPW7O5Ul7hSGhS3hxCfkSZ3jpY2whUPRgBKxh/kZWFGHo9
 K3sf48nClzZYC/l0uaVuCQnX75UJyiqA5v4PZkxkJRVyP0/6pV1dORTOl501U0wXQE4AUqM6P8g
 ZmuT+SHZByIuOUfVBVUa9StPNjQQ2g==
X-Proofpoint-ORIG-GUID: OohdrqFhQORc6itxvQZ0tv0Sqhb_7_5j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_145416_487186_178E1429 
X-CRM114-Status: GOOD (  14.12  )
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

On Thu, Sep 25, 2025 at 03:04:51PM +0800, Xiangxu Yin wrote:
> The original reset list only works for USB-only PHYs. USB3DP PHYs require
> different reset names such as "dp_phy", so they need a separate list.
> 
> Moving reset configuration into qmp_phy_cfg allows per-PHY customization
> without adding special-case logic in DT parsing. The legacy DT path keeps
> using the old hardcoded list, while non-legacy paths use cfg->reset_list.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
