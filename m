Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C54E5CA0EF8
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtTtX20gm8Hjv1WlYwlAF2cXDPvOZ7ZVDMTPk/+LWXk=; b=NtZnA4fGDY6bIf
	Z2N912f471IlSC+10P3qxeZC9Vv7y+Sbgl9ri1E77UG+L50aInZ1sFANLVd6/N4FBpHq5NEC7xsjK
	lJA/MJXr/F2Z0aBUpV96MLSAIhwVSKS4/5TzIjU5vsL9V8QG90msobft5LGwLLAOWWrbuMOmh2yHu
	O8+3/97hcMmdI7zmRvPnf0SMWqIXF7q9BUI6dQX8ETx0a+o0wLkKuvau75hBY44SsZe+L8AbOy8Qm
	RbagUMu3qzm7eGPj2PGNHW7wrXTq2uMt1mn3QsACgdi83JbNzQ4j9/VHEqn9aCxSKLNZk2i4+peLb
	oNLyacyrB2VQCbW/z/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C4-0000000H1lR-28wx;
	Thu, 21 Aug 2025 13:19:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up22k-0000000GWir-3swi
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 09:57:16 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bEmR027115
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SVb9XlaHh7NAzDiLQrW+htsh
	4PsmGg/oSLr5rbvMx1c=; b=EeUCq43kFHXicsz1AxT5uF7u5O7rqZHJ3xxwAfDn
	dAoz5zy3dbXp0J6cgkRG4hr/iIR0La6XgV8F9I6IXxukzNVZPoptQT1yxaSETHhj
	h3v+w/wVHnn4dd4Xi8SHUi9E1buREiZZWRHzrelcaYEXInWbYpVguQJauIslnf5J
	3j3t1ay1quy42AoFzDT3urFsMCq8kd1sm+iPhcyTFyaqdJoX9N/TnLazKop4tQsn
	xay7YO2vRCMPZLjTsmiztnMjV4KwSC677fYCNusqkFV527BBGMVto7NCs0jreSuH
	3HsxigaDt2xtUxgyDezqw157YdLDSH2WDBXBuE4Eol8U8Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528vyq5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:57:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70d7c7e9709so23004756d6.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 02:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755770232; x=1756375032;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SVb9XlaHh7NAzDiLQrW+htsh4PsmGg/oSLr5rbvMx1c=;
        b=RoOMUtV9dCh74BciSp9Ue0i27tIICIxDif60qD/MDFd2Drpeib8Isdjz0HmgSbb+9Q
         NrnNQpsgOeFw3DDrXeAbHXa7jzfCB1VGUP8N8T98LBJ4LINcQFfNG5N35gPgd5U+TT7Z
         aEsWflkyLSEKNnTVSwZ+9a98d/GYEsbYH8Rnq9P277Q5Dk0Hk1aCcD3BJ4fNeiHhNULj
         ITQ0egwvS+XzKOld1ddAy9/auwUDjbkUHamOa7vXN2AyFt3nK3NWxuwzuAmd7EfVqxyf
         QTmO6UJCiZW14pBUAF7vYGIO7Dw7lIHVNsPyVZAFJ9Y2kbxIRzJsnT7zxywXvpuGwKN1
         akNA==
X-Forwarded-Encrypted: i=1; AJvYcCUhYLsjLEy3WQJbqOqcHRSGEmTY3YRsCl1NrkAx0p4aXMU07OQp5XnemM4cTSC7ZOCHPKxexbJEYBo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfwGwUrOphqjyj390GdFQFxPRTz7EeQb9w01ErraASZMmX1F0W
	yw2bCIWkBOllGgYgFAvxYUJGa+1jAbtOc8Gzh7Pt3B6PyORBjc9UsLqaoyXkt2ohHYXYH/iciBu
	pAF0gUceI8IidPIavNcDokexSAks8SRt32U13+gz4jT+rsAM5NLqE53EKwFfKTcdhtuNP
X-Gm-Gg: ASbGncsp0gzk6kQbneVGnzDV3+ZeZscJH4xrG841SNUt4wJT0M8SRDLRZ+fwvcy120O
	vRPeBQAj0j+c6FsfUBLg3+wed7aM0x6nUyGM75OZdGvEYrinwY9EgZpRSSuEXgk/zfBos++Nozb
	DVauKWEQhb0g2nZ/4m4kGkD3NwRxixOXjZeyQmtT6cKyK8Z/hJo5M9AcP87Jm0liWXrXkurHg8L
	Acmaajx9nvzHMSHvo09gZCOuw1wVV4JMChwgBP2DNchjUuphdZbHXBQ1qTT+f3whGyfmboa/4AP
	FnsiS51EAN0+9mkf5jYS8ZlbqO3DvjmKb+nxnjInYoWJLb3RKzZ2EWkzuzlF5VXGZdkUoV4tqfk
	kHnirLutmF6NjSwhhKSE6O+a/T+uut9W70O4YaszPa7wEEmJ6xN3G
X-Received: by 2002:ad4:5c4c:0:b0:707:56a4:5b56 with SMTP id 6a1803df08f44-70d88fd7384mr13862716d6.40.1755770232108;
        Thu, 21 Aug 2025 02:57:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqWaMiKK7y86qlSXKsjy23FxD9WLBPQ8WQUmWHwy0IkQdYYOWie51bXUGTqyoqGxLizYaDnQ==
X-Received: by 2002:ad4:5c4c:0:b0:707:56a4:5b56 with SMTP id 6a1803df08f44-70d88fd7384mr13862556d6.40.1755770231656;
        Thu, 21 Aug 2025 02:57:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef367728sm2973854e87.56.2025.08.21.02.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:57:10 -0700 (PDT)
Date: Thu, 21 Aug 2025 12:57:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Message-ID: <bm3cp2vyw4rpllkwoxoxwrvsjxrtolcroqwx76bkpwmcdvx7ag@b6hvybyouq7m>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a6ed78 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=nE5-FXN1NE7ZT85CS-kA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: gC4xYw8jc48Wwck8hYHu8MR3L2z5HY-j
X-Proofpoint-ORIG-GUID: gC4xYw8jc48Wwck8hYHu8MR3L2z5HY-j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX3nkDjdH3MKpt
 4K/h5N/GY7mxh5vPO+2xDzkQ1JHMwgpUjwRhd0OlYLvwx1HZ9mF/C/PO+jnvvQuF3vGxjPQc8J/
 WuCrWrslKUjqf9LgzQOX8zULOoKzcaPFV1KMXYdpwSCAl3AmxNrLM5nXneK0DlXoNHmZ7pvQ+5H
 5FKUNU0krMyLDMmyLH0c3K28+hwNqr5nZAZ6adgTeyW9FjeXKROzBLWBhxrPeROsD604EgisH4e
 QFycDUE33BVHdpQNaCjDulri1QaptjAfyNejeuVIWzeVjw7AU3JTKIu/I4DuOBXhgNB4V10q59T
 OPWKP3pTutGIVIKueMJvJKZgHHinJjPqaigqrnwAE6AiV/HWA/cKE0k0Zf92GOQ6rYfmHktWHto
 jFOt4a3dlUt8ea6iUb7R6Qt4K0uJIw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_025715_078059_251CC99B 
X-CRM114-Status: GOOD (  16.11  )
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

On Thu, Aug 21, 2025 at 02:44:31AM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> @@ -5114,6 +5143,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>  		.data = &qmp_v6_gen4x4_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
> +		.data = &glymur_qmp_gen5x4_pciephy_cfg,

Please keep the array sorted. LGTM otherwise.

>  	},
>  	{ },
>  };
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
