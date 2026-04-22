Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F293CFA1FC5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 16:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYDT13b2HC2jIKy7UNYCWyj41trvSdKSn4PuDdhEaq0=; b=kFl3UE2EQovbd9
	E4k12zakN22fjiORV9r/SMpGaIIrsjTJBvWeks+DGVWQrDf4oKIWcpncXMfXId1K5wxh+zFW5MWHa
	CyM8V9PeqkviM13x/03vmrWPryRIiFhXhTCn7psi987DC92jPJxd9ONpCRyGNA8PqPzyiT6lAvN4Z
	dOa21WDB6FbNQQvJQgdCjBmKZ64hZjshFMYNB7nkj/G8j4voJdIk/C6eJrvyFyDCUYG0zWONckNMt
	bHuKlHMKT4sM6XpFSu3OUK2Emio0sY5aG5T0jlxIOdMnb8ju1Nrj4tjnV8clazymkBsBs1UaMgPsa
	X45V360tc6Szkkl8Yc1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFaTk-0000000AWNK-23gP;
	Wed, 22 Apr 2026 16:31:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFaTh-0000000AWMV-44b3
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 16:31:07 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63MG4mtS1587862
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=apnzn6JgRyH50tEQtI3PxWOR
	7wNRn6iGgIKeVOIJqfs=; b=on1NTZ/fyF0VjnKFaULTCvn0c06Gm/jPSQrwAYc8
	pMRPAksnh+q2debmwFnmMVsWdmrlLWpsM4cBT+ag8AXZ2Y2gCj8Gr6LtdhkVTXvA
	Nnn3BtwO3DSHQqvBf3jETlRJMoohGyu0gxKLbppLks/mNuc2ehOlmKZoawXpq3YI
	yS29+py1wANskrsZ0vvD2oEvc4+oYLeSiBH4jjbkkwhTnKO4mPBySlMu7cyD5ZaD
	5DGO5Jg1ihp7eTnSrlfCY+L7arNlq7wscWVUwFbpoYYq4xbr1K5NvXXkhplcrxMo
	dXxoVllWeYVKALU7jJnWPmZWeKfIjo6SdwQk8wIFgKhQLQ==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1hq0328-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:31:03 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-46ebf50edc8so7268902b6e.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776875463; x=1777480263; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=apnzn6JgRyH50tEQtI3PxWOR7wNRn6iGgIKeVOIJqfs=;
        b=RGwCel6wHmuLTDCKfLSiqXyHHItV81812wmTZnjJtnZPTfnJ+mOi1jW3tvYLvRUaGK
         kdcyyXaIyZQyyRwt8Xt7GeRHt5Wn7KEv8jdF3y5aSSWcKbaxcGzvuoNVd1DvtqfTLv7O
         85E+3VZgS8R9t+BHsNt/trGA4TV+9UXKe6XnWUhLkQVh5Ma+dxOBCi7SqGG05ALntwYx
         2cooYQROEUPoRALZHvH6ELxJJ8BsOvs1vYa25z3fPFgNk3sZNdeu0q4I1xNHtPzv10DX
         hC4B+tpVMEi16HPv7XcMN/ssi6T9ZXy3BViGSiE002Etbfs+LLB1+Cok94gJnO+YJX75
         RO2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776875463; x=1777480263;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=apnzn6JgRyH50tEQtI3PxWOR7wNRn6iGgIKeVOIJqfs=;
        b=fBluoARB+8HlzM/Gcv+pgQczmPmShrDTzIiKz1cWMR9J0TAt8SyGFFD9orHOJq7TfC
         we9QuOrRvvdKBs4eMhETK5kvMKl9CtwiSst/d+tIUG0tWPSfCkiOeXldKi8yzScHn1df
         1bcMwbzXkK2TdbfHFalklJf1UWhUmEMKgl2agRvYcHHPn5lCZO3ynzPDfwXt0xiJunft
         +leEjBOieY5neNvR95V01thxDZPLGfzPPcSTzuPl4C/XIFBYFBeHpdHJeAzjkIs2PoWw
         Zjv5fmIg3ia1L4xW3aYQ8Aw5lga5wmVud5y//jQJRcSeJ/4O9UJpRMZcz9MaAhG5/dlR
         d2pA==
X-Forwarded-Encrypted: i=1; AFNElJ+sTrVED3DOc3B49I9kG8ElTf8LaJVhJQRbSqsGD/9GLcpTFjCsjckOP5X/YLUrfeBkEXrubmOS3h0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx90PpT5BYmr+XEjaBjTzh70TpS7jF1Ih4pyEBv5eJNpqi2geux
	nq3p/1Tw4k9yrYW8Hs0JEqEtiEZxeo3bJF7pfsmYJobzxM5DRhI5MYjnXiXINtVy216c/LQBDiW
	/nW66x7ubzrdmmJDpgueTebWQqhdvH7zVFHW7h8H55oVnc833DDhYSvejoO4UrvGOedB4
X-Gm-Gg: AeBDietdqT16V5wlM2SaBwoaElXbOBjkzp5lgJXgt6xnstWvLBGlwx3BSRb0rAJzqCo
	bXJBufs1J6slW9n8TAP5u+ZPMPJKyF7sy8vYQhV5We0wyx6xH62UouzTXJHoflIp88/75vUyzra
	mZo79OfFRHQBcRl5Apo71UG+ImUObmzE273X5WT/D/nN7VGNX45Nxso42V03tgLs/2UaPBCwvHY
	mvFI9GCbZKB1B5CYnWEFBhHgN1P1QDHk08wXhKiG+Fkjz4F+Fzmhm9Tgsd3Bnw50DRY37gojpip
	svcG86EyZnxk+rJb2HJ9ylmTeizOrK/T1qdeBVCrd1VOMPKMdTSHSbbTx3pG4L7zOEA68c633Wi
	VRWKKielpnPn2SFN+HK1KSgkhi9IfAOdfXDGdSL8/zNujKg8SPV/vEFd8XDdpPtn9JGOZjG+XSz
	jEtFALTJtLGeg1oyU0bSFhhrDG1bILBSy3BB56HXvGUSv7Gg==
X-Received: by 2002:a05:6808:e3d5:b0:479:f0a2:d213 with SMTP id 5614622812f47-479f0a2e58cmr3576554b6e.13.1776875463286;
        Wed, 22 Apr 2026 09:31:03 -0700 (PDT)
X-Received: by 2002:a05:6808:e3d5:b0:479:f0a2:d213 with SMTP id 5614622812f47-479f0a2e58cmr3576507b6e.13.1776875462760;
        Wed, 22 Apr 2026 09:31:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4185bc627sm4644664e87.29.2026.04.22.09.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 09:31:01 -0700 (PDT)
Date: Wed, 22 Apr 2026 19:31:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 4/5] phy: qcom: edp: Fix AUX_CFG8 programming for DP
 mode
Message-ID: <2735ilumweoraiil5o5mpafs26me4vwhdqdrbkemjjwceorcet@ayfi7a4z6tc3>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-4-c38bef2d027b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260422-edp_phy-v4-4-c38bef2d027b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDE2MCBTYWx0ZWRfX5K1RrwduQgoQ
 ANGWYdha5YmCAaQj6XkyuRAqlC/jujfWScu+bSKNVF0XKEjL5aSqkH/U2Jfxidvnvext7dOmO86
 0jPddKMgGsxHQPVQuYPjJtOP3w3euyZ/aYwRZYp2E5jPSl1qdur2ynKHyXlVZRagbEGETRmP4Tl
 79mEJt7E76WItzKwbJw5RmKNvsgAHpSiS7hToInv9VQhwuv1e7SLelC8diGy8j+6C7MTGP88ZyG
 MNtsSNOOVj6RLmkxg30IvuPBpfLDp+Z5IpslZsrtNPWfSG2qgeqO2MLwKmcKxyVPmUM8iki8mlm
 y9j/lJPQ/SBoigDTpOJ6qBiwsGK7nh9feqKHigmxcXSGIuREZ8JtVuEWHCu3UQQ/UMZOYq3z6ov
 cIbHfwKVyGd2oXNfE1tRRl8VauPZOCdV1g5iq5VSSbijzMNzsg8dGudmEUj0YiV44YBD7Fgwu+R
 vd/y2emHMCzFjiTjc4A==
X-Proofpoint-ORIG-GUID: iopMahJpJXQp8k7xLDk0BJ7p-OWhbWTa
X-Proofpoint-GUID: iopMahJpJXQp8k7xLDk0BJ7p-OWhbWTa
X-Authority-Analysis: v=2.4 cv=TJt1jVla c=1 sm=1 tr=0 ts=69e8f7c7 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=5Bka1ikJ0fms73B_C7oA:9 a=CjuIK1q_8ugA:10 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_093106_132885_7E98C4F7 
X-CRM114-Status: GOOD (  12.81  )
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

On Wed, Apr 22, 2026 at 02:01:54PM +0800, Yongxing Mou wrote:
> AUX_CFG8 depends on whether the PHY is operating in eDP or DP mode, not
> the selected swing/pre-emphasis table. All supported platforms already
> have the proper tables, so remove the unnecessary check.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

Fixes? 

With the tag in place,


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
