Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DCEA107BCE9
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 09:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29hJsddnm+HeY1+388OdbkY9HWczo9oQp0Xu1oEMRDI=; b=0l489jW7q0l/lm
	be0o9G4MNlBiKi1Du6nOdNEZIJCS04OBqsKRtZSl0iBt1e+kLoXfzIf2ov8fGT8uTYY59mC58ReUJ
	M5rBz63nvADBBQaLqeNuxI8+jCXL/ryHRHrAzE2ckBeCbRvz5hMVZpi2mcDlqwHdw3s54XUzDRyGf
	JXn7knig5Ta6UGd0jz/i4uEsEattvbapTaVCs35PAZnLJLEC1rqTLbKqQZLMg3yRn3nJY/s1NpER3
	N17ICE4BmwH7/hm/s6mRP18bLCEvSVmQIH6Rte+y5VZ+lLv5sAsxeiTws69HQadsP6s/J00T2ILXF
	z3r13Zma4ApFIOH/sxYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L6c-00000001f59-06mO;
	Sat, 14 Mar 2026 09:16:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L6Y-00000001f4p-47PP
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 09:16:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3ndFk2907467
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:16:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6QZSlYjY7FUoTlmFUn5G39wa
	7XITUwMGaj1FXZhuVSw=; b=phL61z5WPZLLhlI5udYKD0e4DH7fW46qdKao2ht7
	tHdfmq9A6NLfDr3bhzWcbZDsn2bOTCg3rQGocVKigpDQGkGtu395/pk1sohVMqlA
	uM9RkFBUXdIhhqXphWSzJ3mSS2Oryeb+exSEKEJSwqGFnliJGZQP1hoaTozjYjLe
	xtMf6rMtk9NQndaZJMEw1dovTwxLKHuivtn/ziiVAJj4Q22WRfbkjNr1Ty6VJs8E
	pVPJ9S/Vldqj854xFWpm3Z/6XKzJi3Bqrg7qPcuYS4lUBRbz3AXGO1mtxK2FFu7J
	UCngyyEkMTR0C8p3z1ZLptGIZH2Yxls5BUDxxjB6hQ5Bqg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw043gfj2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:16:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091a96f0bcso168829511cf.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 02:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773479777; x=1774084577; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6QZSlYjY7FUoTlmFUn5G39wa7XITUwMGaj1FXZhuVSw=;
        b=SGhbBBX1hSwW4kLy5br3fyga1kafc0Pfv5a2/V9G4a9SvTSdcT6EnnPvcNUW6tJhJT
         rL30NWbS2q/4HW8Tk1A/OTqQAR2rML0e5FavvLulV01VE0UXKgMuHL8izW5pK5LRXetH
         GZCUZrAH9PNqpi5/zU3v5SplY3IF4hyPpTPmOb0Jis3y/KvnPRUcxODTQLLKXpTneyU1
         9gdn48nrVOGnLnEqiPwOkq8ZCKP/VEbWGwi7Uko0IsG9DZQynqxK0ulta2pRdHNQH/DR
         MNb0I/xVuDA6ebJKQ345fIuDIdPh26F1O18E1tuJh50Gi6XidBG0mPPdGB0ealDWfQTD
         aXow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773479777; x=1774084577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6QZSlYjY7FUoTlmFUn5G39wa7XITUwMGaj1FXZhuVSw=;
        b=KFxK10VXZBUGhcwYyDFEbTDHWQAJ1QB+M8ZA2p5toXs6jmBFrdFGH9pCv63Sd6+Nir
         VKYs/J+LcRvxdf3Ic6geat0qn4dsyNOI0HsBPUu+qacmtbH4nhVvH2pTcCUYCnC+ld3M
         196O//tXhJ58FG0GtwN04ZuE2MRqsnR5N2wsxmvuJMsJu+7xlpoXZAAEcdU51Gk5jUeq
         1JHN7yDMJD3KnOvkXpfV74AL039jru6Gv9TOJGhB4N+76XpA5ZVKh+wYU/tSzjHtXypd
         Ke2dzpKp8xyLBGEpf4iJoL0i9xuwPIPyrIpeErrCLVwne0K2EKbylRuzwgjR0HVTJBHI
         luzA==
X-Forwarded-Encrypted: i=1; AJvYcCXVe93OLy/jwkd7uU5W30KGixA9dWOV2N+1oAUGHB/x9JttSUpOd54MJ9R5Iu7WKFv4eCpXxYgXAUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgighL0QbI7S0ZfMCZtQ6bmM7Y9VK97OwllWooz9Sm98ePrpG1
	IjovAeycmccI/kG8h+91NfNR6c3LpcjWR4i/w1qGcXcWc4saKkg7/tNzbgNOHz0TtEJtfiOX3Ly
	rLtzrBzRkltAK+LsxJ19dTRtjbW/L8tiu+KZOG+ZxqXTpmW8/myTPYi20P/l8Ac8hapGj
X-Gm-Gg: ATEYQzyB73behvNlibq38pBqbefIUjVw99N+O8NAsRObgUW5AJ2ZIQSpYRMGlDtEzcC
	L5qBsfEqD46PFAKmSKEFT15/QBNAEb2+0mn+DrB/gdzPIO37aRDpqP+Op8BuQbVk0G1dJ4WfrXq
	M7IMaQYmHKu7SQnORT3R8l0MJVWnSmqfkIpXp9qurjQQ5ACSLm8L0Q9oIEcY+WhzWqx/yBMoS9M
	YUSI+ZjisLF7LObUTPbHqBMpglsA+bVlukVp8Tbdi17eOVcolNMygg0sgs2tTF1TQL/DSdoNUs4
	a811eHEj12u5qBCs8AegoXgeXmU5nUjk8xPDKsiP56w8Uer40LIrLQkpBuSyxgX2aM8mK+TrPON
	yfTMz3U5MVdERIhUPLS9aLWFb45fTBpIKwk2MEB9078xm3F7hnlkL417tw9dapNnHm0VatOCB5T
	eVUiBMMvKiIXwhfCb4AhVpyNLZ5AsY3kXpFK4=
X-Received: by 2002:ac8:6907:0:b0:509:58d1:71fc with SMTP id d75a77b69052e-50958d177d6mr77215981cf.69.1773479777563;
        Sat, 14 Mar 2026 02:16:17 -0700 (PDT)
X-Received: by 2002:ac8:6907:0:b0:509:58d1:71fc with SMTP id d75a77b69052e-50958d177d6mr77215771cf.69.1773479777132;
        Sat, 14 Mar 2026 02:16:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e60csm2096116e87.33.2026.03.14.02.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 02:16:14 -0700 (PDT)
Date: Sat, 14 Mar 2026 11:16:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 3/6] phy: qcom-qmp-usbc: Use register definitions in
 qserdes-txrx-v3
Message-ID: <nhsqgpaiqtipfqcbjtjfps7xmhas7wfwhqq2qaa2574dzw4w4n@gkjl7rcgdf7q>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-4-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260314051325.198137-4-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA3MSBTYWx0ZWRfX5PpDoPXVL+O+
 13dyRPk8skOO2sV3V0nGyYD29lpxRZf3mgulFOYYMhC6TbZmb0A+LbeTiUJUDBAMO2RwiqbCjAK
 NvJnBZ5PhbzuUhvcquaLl8fHTqvjy0tqHk1+yzW39J0jkRbhruyU8zrQSq5VEmjNr82yE8HMFff
 UALzV6UZLZKaUGJZ5DDrPl36eVtL1sEBYad32Iw20UIKkeb3tMbBrbEeyYBhRPkf7NMEY6jO8jj
 w/shyvOntVJzylg+1xz8TT9GaaQXXwKyj6XIo1+1tqDDJb6ZMBE3ZQZSfGdXIEh8FJXkUtRLUSQ
 Qq1dJVR3lXxc5FnhLQNQLvFbAAaBTYuI7fO4YTObvRAoJP+DlxwKJd5GE3WQ3gQStY03VNJ58Ch
 8QZzeX0KGkAsqEVUMSmrviGuNoH6dyhnsHB3VcdpTvTo0K4xVUEGLskOTtQIn+0h/B5LlMjKCAa
 glNhlsxikkza3C/y0Uw==
X-Proofpoint-GUID: vrVGhHmso7-59PiE7yhzWYzHNe2-dneY
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69b52762 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=OGSOfDE9ixvFzz5TOUQA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: vrVGhHmso7-59PiE7yhzWYzHNe2-dneY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603140071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_021619_020780_1480BD2B 
X-CRM114-Status: GOOD (  11.07  )
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

On Sat, Mar 14, 2026 at 01:13:22PM +0800, Shawn Guo wrote:
> The register definitions in header qserdes-txrx-v2 and qserdes-txrx-v3
> are actually identical.  Considering that QSERDES TX/RX v2 is already
> defined by header qserdes-txrx, qserdes-txrx-v2 is really just
> a duplication of qserdes-txrx-v3 for QSERDES TX/RX v3.  Switch
> qcom-qmp-usbc driver to use v3 registers.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 64 ++++++++++++------------
>  1 file changed, 32 insertions(+), 32 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
