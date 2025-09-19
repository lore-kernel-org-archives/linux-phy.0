Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C7DCAC5A8
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 16:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzCfcWbdWukZvvGfJZzcS4CJynfpBG3idxloN5CHIHA=; b=KrQvU9dhhVYR/t
	TzTjZ3ILXVlFEhmvesvp8v9FRdRtIWhqMrMFpH58AtV+o40HDbwackRVWvn964RMrIchB+sKK/jqm
	Ell1DKPs2D13YBoqma9stfoZiIAgV5h1aex3JYAOGO698maWwKDcb9aa9CLS/6Rq0x5AN9D1+ljp9
	QdE6nvhfMH57Z+6XosgLyKZbJPnLFcy2/6XuHbPdphMjvKEeop5jVUHwMvJZ7LAGEp3XMeXmij0uk
	IrW2KoAa07u6CsbWU3D1k0/H9iCrPJq4sspSD0CS2Tc6rrT8bzbmTckL82ixzkQD6XwvwqoE9e8XX
	WA8vMfucj7q9IK9cUXJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzeEq-00000003Zy0-3qj5;
	Fri, 19 Sep 2025 16:45:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzeEo-00000003Zwj-1qye
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 16:45:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J9BPZu027215
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 16:45:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C20ghaTYz2z07OewDUW3U9kP
	PyChf5ZskPTDdANcg0M=; b=L+zIWkYX2CHEXD1IG7LIUWQjC0kQ25fACtMvwpbi
	OZboAtLm0n3MKd/wqPAgbMCllkaBCywR/c1UNbx1+bk1upwTi5krAOiY71qoc0b2
	mivrON5KmSG3KK97wOSVX03BecCOBLMcWCTd47sVdojrmDgixGdUsvzoIh5GLaDm
	aJVclV883owgqTbbHMTb+uPs707N0k+5UoKpuhQr5EqDLQKjYj5jGRrfrQJsVsTx
	ji7qbLbGiKr67yB3KEJIZgXwx0mG+6sRoNFTnbeB0NUw4vBVXA48aV6Hb2Gz35D+
	RY8MC/gjrF7wxU3T1isgVegs5peQSApRmS6bTSj9bGegVw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jh47w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 16:45:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5e178be7eso56180341cf.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 09:45:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758300332; x=1758905132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C20ghaTYz2z07OewDUW3U9kPPyChf5ZskPTDdANcg0M=;
        b=LcCEwlUh7OUIfYaS7PrELFn5A4wvhmYXpcUzfaMFwtybcOooto3CgrOMieYy/RgcXE
         yPzB55WNRexA2oD89MAw7hhyvlu5N2Xi4Lp+mdf1nnLBWN1PXt8pG+DLRL8Dhobt1qzA
         9tcOq5SddaJwa2jZhluS+3Y30YOeQwcx4Cgws7BIqSfgOVh/bC1F5oGl7ohbdIfPfyx7
         1rjROibG3acFxmoKEUMojs5sr2VEt3Dm+hHFp64xPXfpnQU5P1zBH1f0sXpdJJiV/IIE
         tmgz8Pt02BD6Zy8Pbj/k3WmbGoNRk5at8pZ+B5GXfhlDUXgSzdYmXtmSKXJDyVIYQXCE
         3GRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJDgx3aknQOPuJFz0RtMq5Bo50YTBFdjBwCIxQ30eAx/YUM5a38rgW8DuPsKN3GoP2CvrEhEp8kr0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY8lBnD9kyMseYfciOEBuh+514PhXFl8rNCqVv198gXYDU2327
	7FlDNuHrMG3Mh+2evsohW/bk+unb6RQy8NPEjgUZjXwsth0ylAMyMNcTRpRPHqRZf/D7dU2yOJa
	xwwllsEUyHMf7Dp1Wq4xfaiKwvqNWV7EsHiVDEuWiymbcBIXeYXOhZh8fahUDPjVOOmAq
X-Gm-Gg: ASbGncv7+11ToLYvMCTYEh0jryUDu+61kv8oTuYLUZv7wUvT9Ps6imUuYpxCVwIRoDN
	7FbLVXQdWfvSX3OhhkAxCqD4mkFsxgnlGKXiaK+7gyGaFNgcWi3VfuHt48PZe1SFRIp3kJXv31A
	/yGD4hECujcnaDz8YHkkBc6vPnNsZCiaYGVghSI7TKdzwgWKfNz7X6p43VKHCVsqPVFzTFZQZoY
	lZBYdp8sWa5U5ub5GtRW40z3bqPj7MEXEKFf+UciSBCEjtWwGYj2d6zoX2kej6UgqEvWCHvlGOG
	8ZxIBtGCxZHG4A7bVHd/9sx/Vg9R7gh89p41ig5GKTVMsWBXtS40RQWjrhJDgXVgCYTRmOAHqz3
	5pJxJ71wKSFX3u4KxZFfGAW4wHGx2VMM9TLt4US4c43ysrt9cK+Yy
X-Received: by 2002:ad4:5de6:0:b0:78d:72e5:4309 with SMTP id 6a1803df08f44-79913f8ccc3mr48541736d6.25.1758300331948;
        Fri, 19 Sep 2025 09:45:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENMkKKG2cQIkLe25WJp4a+nFBl5DjpFFzclGB37kCIW8D1f1msQ+H2z+bjyqDP10qr1zJDzA==
X-Received: by 2002:ad4:5de6:0:b0:78d:72e5:4309 with SMTP id 6a1803df08f44-79913f8ccc3mr48541056d6.25.1758300331184;
        Fri, 19 Sep 2025 09:45:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a26cbcffsm14030911fa.22.2025.09.19.09.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 09:45:29 -0700 (PDT)
Date: Fri, 19 Sep 2025 19:45:27 +0300
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
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: IKSLECS8D8x4b9qgf9gV1vENEU8dJRdK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfXzAQyLfLaHxCk
 kXx0BaLmzKOA9Go1y9mA97Rk8A3mb3NwGbcJtrxiwn7Uju+p8ubBYu/GQLXytiBygctwIspFO6P
 /sySeBicpw20SGMAw1JIAwEFy2GHGNqTypaMFnOgO969L1cUsxkl+bWmH0XDhisvLk/snGilbOT
 qkSYx+Sw1iZdUqaTnbxLMhwdWMtd2LF4NVgXSHCFWnJwW/uh/Or+wUSIPHtX1cvm6+ZW77/P4Xw
 S6hdksilA+f3a/vhlamryZjPnBxIddYjhXR7twZ65H+scqqMP5XD+LcimeEqfHftIspBTEDP1ZA
 vQmmNs5x7E5BpD1mbtS0ymrEbOkLy8fwZNXhGdxb5IHRBD7I1NtDEDxQBSmvSERWGlRAjfSlJFE
 wTGDKRur
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cd88ad cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_hUenYmi4SsfCOKiixMA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: IKSLECS8D8x4b9qgf9gV1vENEU8dJRdK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_094534_599699_F93F8A1F 
X-CRM114-Status: GOOD (  13.84  )
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

On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
> path on the old hardcoded list; non-legacy path uses cfg->reset_list.

Why? Start your commit messages with the description of the issue that
you are trying to solve.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
