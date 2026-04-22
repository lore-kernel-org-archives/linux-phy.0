Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 089B8FA1FC5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 16:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMW33WhJD3gLasrFUp6zdyo3eavnugqDgfkUA6gDfyc=; b=b06/aSh15YGNBc
	LD/n6Pf38B+laHvR2QO26NfIpm7IWlrRgyD5ZY64+n8H6oPecZr6Ahh75bZIW8Nn+XrhVpa+ZbDb2
	o0EXZ9ObQaHxcXPFHV9WJbez6PqlXu/vddGI7K+gFco1mCtVwIT4CsX9quSEOCHB2g+/PHpV8+jX+
	bqIF/iO3hY1FXQ86gVaePFKKyjSbZWFwKzNYuHgh27zIZKvIJfNzRHsk+AWECrOX41Xw7Cc1/qol3
	5D3zB2Pw9P0f+AFhM7O2Y8Msc2ZCS53zF9QZkYOVE16nXFdF3HNZr0DqdreSqWtEeZDHD+GrIdROU
	/28AIG8SXNBQTns4V/8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFaDx-0000000ATw3-31AF;
	Wed, 22 Apr 2026 16:14:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFaDs-0000000ATvF-2VNg
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 16:14:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63MFfkh13528256
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:14:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Zr/OzAZHUEuVH/4CQJOqAS3f
	r+2nHg7o7uvxIJddDDM=; b=LV9AA43HCxX+LXH7HcMvG1vWdWjb/lPHuKSelBQ8
	t+BGNlbCCd+Ib1eqoLkxIrFBmUyY7qyqWbXUXCasNfBSJC4I5NPPqBPCShewKYUb
	nmGeWOaPXirzQP7jeY7ayhUm5YRR4HVLAAY4wpISSiBa2KXy3z2jW0C8Ce19kwte
	oPQsTb+4z+Uq4/9cqO74LB9RfxwPZ6Dpn4L/DsTg0SH36Gakdh/McPWE7h4sKuKN
	VoaMpwvGwMKjXxCsAVlF7Qrnv835FPYR5n22F8njzD9bDHVlP4Ev9SmoXdfo8Fp0
	wQkxd0jTMoN5OD3rDNJtO92OZx8C92U2AoZG6rVl8iW+gw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq16wr4em-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:14:43 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-6057a534ce8so10453090137.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776874483; x=1777479283; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zr/OzAZHUEuVH/4CQJOqAS3fr+2nHg7o7uvxIJddDDM=;
        b=KWBh7zLEr0zvfM7rfH4p1AEkJ5bOxGt/osu2BjdN64OxkTwHX8DdLlm30U97E7pbwf
         OpyHjNsJSxwFjNQlq2o1U9SNDI3LUhEuyMTs+Tb86Ag41VpY7JOmhhkOsBIvQfVdZFkF
         xTSVNm2M0KPiPsy1TJ4wsMU4bBXt3sWTCxhSARAQk9KKz6Z129KrWMCjANYM40QZqoiP
         h8jBJlK2lBkIiups4h/o6suqqPndqpsO8CnV+hvIMaZGt/TUefuXnqa8rhVgULTfkg3Q
         sQH1SKQVZEfERB9ZrtVDvkLH2v5X1KajW1iaQAXKGM7nCxZbtuz0KW64cPS0RVnNt4rc
         ODYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776874483; x=1777479283;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zr/OzAZHUEuVH/4CQJOqAS3fr+2nHg7o7uvxIJddDDM=;
        b=keXmFpEL4XBwMdghAeFvzwskWBwbRpHXg4X33p1XuXMmKdYS5FXGSbYpgcxZpi6tIR
         X4Z+5Nf1dEfCsQBZ+Du0B6aHAgg+t1QXpwSGAiAUcb9ajoI4xmcqiWj/XCJfh0pymLtD
         Z52foUvxL62gV/jHLx4u4JFdyEfTif9iajhrS2gWw31dL3qto7f+5Nnwvls3ClNIJM31
         JC13Ti5hSwitz/JHEIIUuLFn4/KzfmQR2S+e3+00Q2sfAvsp8yoO+6vwxb9dsLQKyd8P
         c0b1eRKNd78KTiDRv/9AQ0fyk75AiR75fIlVrqJ570hcmu5qo0gVAp+9R+r9IfAwcwc8
         RPFA==
X-Forwarded-Encrypted: i=1; AFNElJ/cZqzCzQd1eVmtoA42BMJny1/BpyxpPwIfOEIzhgG3KWT4Jeglt74b/go03bG4JumC0SjPu15DO64=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDXFYFJ1jPsk7nZ3iNYJQWMnswa7XQEqN/PdeLtDvNgCnAZprx
	Ur1Eqzz97vgI3ZrtLtJzbEVU/x+elaLFFuUw1hKelCb6cFxZ8QzUP9PHjD3rnu/brdv9toMU4Go
	CCWsR9nUMzWTnrbFEqDsoHaSW/WkgozqpQj/ccxydFWsoHmdWZRslLGG9dkPpGoxFRqDC
X-Gm-Gg: AeBDievvsgxY6hY6WIGzPhkf/bCc4hTtfknrcLSXh4FdmBy7e5JnX8VQKTXw4w/FPM3
	MFK5P+cINiltNFX56fObaxDK77gvODH4HD/K8Wa01VwnTP+oWhGZE3W1bUstvpWooCahxYNSwBZ
	Mrnwdjspze+H61tPgNHGpSyE8AXqsdN+Q0soQuvB/QsEGFsgmS+66LTB36MLm5qt4m38qO47/5d
	YLN08sJ5FAfoiuaKm7Xfyfs9q2EhjLfr92kSTq+M/DX2t++k7yC5nQQ1ur2g0wRajIkOOOe8vRR
	QNwX92PJzoXj89kLr9suUrwvMWCtoH8/rfNOnNdtb6IabAqDhkOmVLA0rC7+LU4W0L0WEmVqvq/
	ykYGzixDj3vsXXb5wFEVgPjSSuzSVr4YklbV7TGUP9PHYrHULmWqGM/g7UmZQsjtkL+YzczTukZ
	qR7Mz4s5CoCHvSzQfhIwbrg0bBi+ZCMJflrlftfW8mEuxpsg==
X-Received: by 2002:a05:6102:4422:b0:5f5:3739:100d with SMTP id ada2fe7eead31-616f87a1362mr8339107137.0.1776874482863;
        Wed, 22 Apr 2026 09:14:42 -0700 (PDT)
X-Received: by 2002:a05:6102:4422:b0:5f5:3739:100d with SMTP id ada2fe7eead31-616f87a1362mr8339094137.0.1776874482451;
        Wed, 22 Apr 2026 09:14:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38ecb6f0b88sm37661441fa.27.2026.04.22.09.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 09:14:41 -0700 (PDT)
Date: Wed, 22 Apr 2026 19:14:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/5] phy: qcom: edp: Add eDP/DP mode switch support
Message-ID: <2cyvdtnnmrfz4zffhikfxl2goyby73gybgm3ih52rfpyvbhnzk@37x3g26o2t33>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-2-c38bef2d027b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260422-edp_phy-v4-2-c38bef2d027b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDE1NyBTYWx0ZWRfX2qQypgNC1PnU
 ghhvPQDvIHPfgjA+9DKfF1UrufwRpVLdUn8Jv5mWF5oVVUcu0zJZeLcDhoDEkq+Uu0vlh4vMmp5
 0vP0sxFalbt3ywRFIA2Uw4cYKY0EukQ/ijA8mYm9HtkLE99Wim3gdWypF8738+mjCINfVdI8DnG
 cK1nIFSRy7QgWJG3kwVRpl7HGjAUbMsiMojSQZGD1EllSEyNQ59MNdacWLUw0CbpdE3OEgJrHwb
 ouFr+0fb81bWsMgXVhZ/az1ChEPkAjaOjerUu0iS8/7kdHgLhVJiQmiIE0yRFkGhNlHU3AGuXkK
 j/8Dso2OWEwKRN4Ucpj6/I0XIc5ubER58tVjoaUVX0Nw5EaTryoWYBHHu5JPMt71fLAg3B5Kg1p
 2RrENrH7N+BmMyekAJvj/jbGb5Sl/80+V4u8m8nXGwyXZPQa0s1UYDPBp5Hc0MSlMUnwZrLZ3yY
 qFe+P+q1i4RQ7cTXyeQ==
X-Authority-Analysis: v=2.4 cv=dL+WXuZb c=1 sm=1 tr=0 ts=69e8f3f3 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=cJcfiVH-KbuR3wWgFHsA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: 6LFMte_MUbB7Q9Re51-PomuOK4N99TcM
X-Proofpoint-ORIG-GUID: 6LFMte_MUbB7Q9Re51-PomuOK4N99TcM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_091444_751869_84338D0C 
X-CRM114-Status: GOOD (  17.16  )
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

On Wed, Apr 22, 2026 at 02:01:52PM +0800, Yongxing Mou wrote:
> The eDP PHY supports both eDP/DP modes, each requires a different table.
> The current driver doesn't support both modes and use either the eDP or
> DP table when enable the platform.

This is not quite true. The driver supports both modes, but it uses a
fixed static table for eDP programming.

Other than the commit message, LGTM.


> Add a separate set of tables for eDP
> and DP modes, and select the appropriate table based on the current mode.
> 
> Glymur's DP mode table differs from the other platforms, add a dedicated
> table for it.
> 
> Since both modes are supported, so also fixes the table mismatch for
> X1E80100(eDP) and SA8775P(DP).
> 
> Cc: stable@vger.kernel.org
> Fixes: 3f12bf16213c ("phy: qcom: edp: Add support for eDP PHY on SA8775P")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 46 +++++++++++++++++++++++++++----------
>  1 file changed, 34 insertions(+), 12 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
