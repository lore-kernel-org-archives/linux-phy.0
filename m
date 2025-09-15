Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64211CAC598
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 10:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzw7BbjBM+HNwAXz66fdooTDjrRcnEtmKNPdw3FbaXM=; b=HJ2UifUKi1xJ01
	HOnnf39oE8Xp/S1iZmRaEf5XKryrbl/rXBAl3nyOO8jyUM5OCaLg/vgRVqm7sDzj6GYfOKfQdJNGm
	/hVSrBY0/UP6HgPukfB3tqLXdQ4JljZ8jlisKg5hBaSXL3ppmsXJQVsQgqdaOTJ4bwvPE0YZTtP+1
	t15/CmiZFHlkSC54Cq4hsmvnJVSV3uEH3DyILJWb23faIAendw2VLdQfbxL1Q0PF7EDNr0YwdZSwx
	TH5Y9SaWLeiiVWtX8qqUOnaRk1Bxo44BTMa/odXZV+GLAwFUKQBBfwekeVPFmvWySk6lfxYTx43y4
	Cw+JNHgAXr8vbwA958/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy6Dz-00000003bDM-4BwH;
	Mon, 15 Sep 2025 10:14:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy6Dx-00000003bCI-32o7
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 10:14:18 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8G9XR009334
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:14:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3/tnKANI76V9eS3ptRNqiDQ2
	LTSSD/MVKHWal1FM7D0=; b=peFhYz53eralrtCuMSLmXk7u10S4Kdpd2NTyQJYw
	pLjpp1++cemZlt1FfDXZcFMqkqXTY2UYg/3h9owZmT5Z86R9PqmW1wZSfIQf5KM1
	FbHgXlt4MJDuf54BXLtTl4Bk4gIIwEQ7viEELUtGTa3kWTlKf3e2LX2u+JQTIThf
	xFP1a2KWjeoRA/8hzZMMW5S3nB9M9Ze/vmlxqaR2HgmCMo1rZHyrkSt+TodH3+qI
	kv4d8I+zmCwsE7oSLrXoflh4iSGMs63nFd7ESFGhh44LH9S3JnY0doO0Dh1aSWPI
	cqF16KjTEr4bgsOceldhEAkBWJkE+4rCEIB4tzlDY4bPNQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpucf6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:14:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5e303fe1cso87712111cf.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 03:14:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757931256; x=1758536056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/tnKANI76V9eS3ptRNqiDQ2LTSSD/MVKHWal1FM7D0=;
        b=hsJWqkZHQG8eAZfyuU7VDIMPvS96oPWvzhnY1NZbavpzOj+NYoyjRNJmeKwq1wMg/H
         mS7jLxBwQEfc39oKlgkReI3cGUIql0rhlN56UYnKZCm9tqSWtquCw8H9K3aO4H+CL8XG
         VAWJhcr1EjlXZYwlQqnVWgXCMG+dn+nDRmB1LY3s5xY6YB4fyCIp9bNZ6nXJVZA0xz66
         f302bovn9hHQfW3NqrYvy4SV+ZoSJxHKtq13oXRc1j7pjjKl+lNCv8weH8aF1sOe693K
         lQcofyn7XhIwNOtg6GLgjvHT/JXF5paX7zEMHlooTrlXdxLccdc9oJgHyAjNaR1flKVJ
         fHgA==
X-Forwarded-Encrypted: i=1; AJvYcCX3dZpiQ6EgVSAc5Si1yJ8n5PLZIZ5XaUQcmFy4APjYRJO2glP4RKU/u6Mx8hpmYmDmsctGtg/2CUs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4nKigaF7S4GIhYhIakxYEXylVyKVlGWPFF0GlzXYmxSeyj83Q
	BchpqXCRmm9T7gXrwROYAiTPtvORxGflAuxaLMoagT/a5ETjrIGWWHO8r58cs7wwB4V0V8bZYiS
	sstoC9Ripyn7rqDrmW5JcOtBJK/hz2DOsFR2nzF+0DdCKufJ+ym8iOc77uKcvyX5OtKOA
X-Gm-Gg: ASbGncvNHngGnt3hoMZ5B1vLK7/S/D3E7Hv+nPBbEe+loeYxtOBq62pp3krJ3KduSC8
	qoL5CT4+fK1ttxiOv2CkxeSKneCzDPWCHEa97e8r/EewcZogNo+AvO081Iz90PCs8mis334iPId
	BRNsTgamdI1LaqFu/fTwBSPbUJ5NYbqJ+H9EWNHJ7GPnVrwtuAbacc1z5OUF0iHCrIMtyfDE90m
	inWDVJoDIuUGlMCHvmP9ITlJQM38z3/BkR9RYD6CN9JljeO/dy4ZPEQDJNu940U+M1W0QcefJZc
	j5XehUlgWpZhz66M9Er1Fq3GsfFXReCuQ2E0Dkh6GKE8WkE7sK/3tQ7TnRNMVl0jh7uc84iPFcB
	Uh91jx3/AdDKo2PkwfQfae3Rp9i5hfnvtfiVOSvkzSuhVdmWc8Ale
X-Received: by 2002:ac8:5f4f:0:b0:4b5:d5ed:e972 with SMTP id d75a77b69052e-4b77cfc1cbbmr143392311cf.2.1757931255855;
        Mon, 15 Sep 2025 03:14:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAfuNCGve0i3eB424H9NLK+h/vY9qauhRsX9Z973SrspafnTcgWaopsqQyYHApzqc7SEdykQ==
X-Received: by 2002:ac8:5f4f:0:b0:4b5:d5ed:e972 with SMTP id d75a77b69052e-4b77cfc1cbbmr143392021cf.2.1757931255326;
        Mon, 15 Sep 2025 03:14:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e64bd15e6sm3415142e87.116.2025.09.15.03.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:14:14 -0700 (PDT)
Date: Mon, 15 Sep 2025 13:14:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 08/13] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
Message-ID: <ykxl2xjrabsvs6llaf6p3cpiler2nhyrsbnhrbvhtl2is27cig@fbtj45n4e2yd>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
 <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
 <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
 <7ozv3u7xuvtz2x5q3pp5kdeydtsu5jlrgwjnxpxxiuh7przr2z@35uo7t3b4ze2>
 <05e8069e-895c-48b2-8a25-a4a680728cfa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05e8069e-895c-48b2-8a25-a4a680728cfa@oss.qualcomm.com>
X-Proofpoint-GUID: iw5j-lhAQZMsDZNQ6KroNlkPRHd0YV9f
X-Proofpoint-ORIG-GUID: iw5j-lhAQZMsDZNQ6KroNlkPRHd0YV9f
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c7e6f9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Pk3c0UAvwP2i0KrjZkwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX7LjPG2+1eqCv
 NpnErb0ryo/jBocBeqyhbtJpRSkTeLIL+w1U60HMSnlNPg5z7wpL0ffBUjL9PBUGAFgdYM1JJhX
 nR1DcwGEsYkEmfoyN6kFhGWPGR9sFiQt9kNTx974no6QXiAcFbyrABMGNrv+BE+BAkGTe/dVkFe
 ai7XmWng1a8Wt7UEGIyZlFSYSgdmvFLtJeUPDwWoKFu6V//nBVIC8fm8Oop9A5ntsvMV49mB3zB
 xAJYyOGaTx9rDI5Ul6skP5BsfMBJD8sG9SGBY7EHQH3jBgoE5gABjD37byfD9+/Y4qR1DkXQLCy
 ei3yQsgdKu/GY1j+oVYvWedxuIu6YzJ85ynfi3nbq8aaRwIQ2OY0XnVfuaWofhMKVqdX1mA2mDU
 zXEAmLEa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_031417_774733_DF534C7D 
X-CRM114-Status: GOOD (  27.04  )
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

On Mon, Sep 15, 2025 at 06:02:19PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 8:08 PM, Dmitry Baryshkov wrote:
> > On Fri, Sep 12, 2025 at 08:00:14PM +0800, Xiangxu Yin wrote:
> >> On 9/12/2025 6:19 PM, Dmitry Baryshkov wrote:
> >>> On Thu, Sep 11, 2025 at 10:55:05PM +0800, Xiangxu Yin wrote:
> >>>> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> >>>> Extend qmp_usbc_register_clocks and clock provider logic to support both
> >>>> USB and DP instances.
> >>>>
> >>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >>>> ---
> >>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 208 +++++++++++++++++++++++++++++--
> >>>>  1 file changed, 195 insertions(+), 13 deletions(-)

> >>>> +	default:
> >>>> +		return 0;
> >>>> +	}
> >>>> +}
> >>>> +
> >>>> +static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
> >>>> +{
> >>>> +	int ret;
> >>>>  
> >>>> -	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
> >>>> +	ret = phy_pipe_clk_register(qmp, np);
> >>>>  	if (ret)
> >>>>  		return ret;
> >>>>  
> >>>> -	/*
> >>>> -	 * Roll a devm action because the clock provider is the child node, but
> >>>> -	 * the child node is not actually a device.
> >>>> -	 */
> >>>> -	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> >>>> +	if (qmp->dp_serdes != 0) {
> >>>> +		ret = phy_dp_clks_register(qmp, np);
> >>>> +		if (ret)
> >>>> +			return ret;
> >>>> +	}
> >>>> +
> >>>> +	return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);
> >>> Do you understand what did the comment (that you've removed) say? And
> >>> why?
> >
> > And this was ignored :-(
> 
> Sorry for missing this part.
> 
> For USB-C PHY, the legacy implementation only supports USB with a single
> device node. The new driver for USB and DP also uses a single device node.

There is no 'new driver'. It's about DT.

> The function devm_of_clk_add_hw_provider internally handles both
> of_clk_add_hw_provider and devres_add, and supports automatic resource
> release.
> 
> So I think using devm_of_clk_add_hw_provider allows us to remove
> of_clk_add_hw_provider and devm_add_action_or_reset.

Which node is passed to of_clk_add_hw_provider() in the legacy DT case?
Which node is passed to of_clk_add_hw_provider() by
devm_of_clk_add_hw_provider()?

> For combo PHY, the legacy implementation uses two device nodes: dp_np and
> usb_np. To maintain forward compatibility, we need to keep support for
> both nodes and retain the related logic.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
