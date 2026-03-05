Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB580F30922
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 10:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9dyI6PP8UEmEM1b6ZQvr+7sQnbX02bh7J9irA4cBzE=; b=cI3qYUwImyHESL
	UPnznET8PJNprjNkTKmn+2fxVZl9+7FzGvdwbWTc5CA5eexqhGFTKKSfq0AKr1huQwVMXPDruX069
	YvfzkHgWpAIHG9RgzzIIbmFCtRibm0HmviVT4/XUmW+X4gdztwJyNoxOS6ji0cqvVVGW+gf8FMscK
	fv95loEWX7bkZb8WNNOtdRXyib/TDzuKFgdIx2snezt8QHuDbzqJmjoX99+QKeEqL2HUY1ZGcIZjw
	IaSqXRT2jKpESCYeQRaqZA3+mu5V4wL4dDzLfub2N8oMPknz+a2SDVcTsCXWJ2lVvGVgnxeDcXL+V
	p8HwInk7Lk2h2pGZlprg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5bL-00000001WPs-1Wb2;
	Thu, 05 Mar 2026 10:06:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5bJ-00000001WPP-26Af
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 10:06:38 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6259C2dX3604128
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 10:06:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aH+1VH/Xv9GKxmfwG+hdhM3wTHJXfgKYGbIbiNxfOq8=; b=Jbqng5yYpTNQh+St
	8VmZoS+s5K7E6DPwB7WPpSs3t857DR7g3RR2nlF+OP3G59WNF0CjYwEAFR2OelIv
	bT9oyImelULQ4TkFGVF0Lvlotkg14b4AYrocYDdzIZs+E558njcBBlHexXS294Uf
	3jXRAEp9bPmJq8jkd6k7ZdPvvOyhFSu2wX937Qgo/yPXvc22F1XylocKttf4iJu6
	B0ZCf1OZ6maJtGhJ++cp/gSP+fAPrCWZImH11H9M41wVj2Wgy1BohOc2Fj4CFt12
	i2W+TynPV+LNp761eUqFc904EvrY1iQ5p/no7z4i689Ts91hVC+Mp8t0DVz1iDaz
	jgDL7w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wat4n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 10:06:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70c91c8b0so616028485a.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 02:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772705196; x=1773309996; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aH+1VH/Xv9GKxmfwG+hdhM3wTHJXfgKYGbIbiNxfOq8=;
        b=WCLej4tb5fx8oVEMBPuDhZafoa9wUz8x4OKnM64XWGpSbVWwPgmLL86e4pOqGj2yCa
         uRbfS6HQsx83z03sqXhn9M2nIe5J5xt+habWh084A4K09Yte96B6+Kl80XfnnjSCtHoV
         +7EFJ/Ri7PYijX44ku4WqLoY8GFiSy/Fso+3RaeI6c3+tNmQGbXl8CoUnONLiWzZ/vei
         KKQuxAU7IKbLrQftfYxdGfGsGt/9zDbPZSV+mPR0WW4PKQhUkxV0WPgFC5by0Mj9sm/W
         kyoZuOIKa5uIdLmXy4ACurlPzInRmC5yKac8iNdXYgFz/beEhlla0w7V0NIvLGAH4wZt
         Zo8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772705196; x=1773309996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aH+1VH/Xv9GKxmfwG+hdhM3wTHJXfgKYGbIbiNxfOq8=;
        b=Q8frGVzPRUl+g0530hy2wkheMhqVKUrbvNDsfD2rZL1zkAkZLqZ0l91I8rtNZDpu1V
         QCFCiRFmxHc+AFzaqfdHp+HrFQ+KxNKojIlb+qzlez8Wzd4yzxEdXGMPb9yMS6EPgKQi
         VjpO2syNROgIVjn2736fTSp0tZNNOeCxGiYJhc4Ticl76RI++U/qlhvxZ7GijJ8ad/9g
         /I1c6mSyESvuKY/kRSR6rstH1h6hpepvhwCvf/6LF6DDqKLLeQKLEpmPDFfRcXNPQBZP
         pBfwxFkipGdCDkvqgmnJFCuYpnzubDzF01/3KkT5sa5rNIUphlBEg6DgNF4byZnwP0Hw
         p6Ng==
X-Forwarded-Encrypted: i=1; AJvYcCW9xoELHVru3wbpw6iHMAr7lyDoDBUnXhgDAx40iWy7+/mbqQ25Mk5FWeRWcN1BN0jxuN/HNxa1zIA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzijRB1BztrhL0vcdXa7PZLAfmcYlhcmqM63s/+OHumqjiD/vnt
	OwncApIT8OHERLLxcL12xzQSRt6LadqEAxrOv7Q7OIzQylMtzYBeIfLhJJJpyw+ePClhju4i59P
	SQVky5gn32H/oCZmj4R7rAh61cyrZ8P9YbnY7HfijzyDpXXfIE6PVQjHYkYTnPet+4wNq
X-Gm-Gg: ATEYQzwYMgl0NBdJwnwNYvX4KA9a77NV/AIjjCpRIwoeBXGoIBJtvEaW4jCI2j51A6K
	VfgOtjrsbDJUazHlCe4gYbOIgufn/W1nnqEnCh0QdsaLM3gnnLMTCEbv6VdGbn8CxsPh+bm5xPp
	YSt22GbZwqeF3qa4bFgAZ3rx/Qat+pu+DzphquSsty0wthYNkkhjJcuTShi0hpe77tuMKCUI1g4
	R6Aa1Go/S+nr6ALdIU9+d+KwitieiO5dGd0bBXBodZjJrlOWLjQ6B3lCJB2oWCP6VgRTxoLb3IY
	CXw30EY23lxfdEwGL8zpCMVMhq92aEDsCaoQXyB2VB0GpGjRG8broHttmMF+oymFxrzHm1oXlfC
	jMDLShfK3Q0G25LmVWygwqkaPeKKXi/paMjg1WsTXoDn1OMSa3TZ+owpEbpKdaS3x8nK916/HuT
	YMHw4=
X-Received: by 2002:a05:620a:29ca:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cd5afb6a0cmr454827485a.7.1772705196037;
        Thu, 05 Mar 2026 02:06:36 -0800 (PST)
X-Received: by 2002:a05:620a:29ca:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cd5afb6a0cmr454825285a.7.1772705195580;
        Thu, 05 Mar 2026 02:06:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac66feesm878548566b.21.2026.03.05.02.06.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 02:06:35 -0800 (PST)
Message-ID: <8d7a25e8-3af6-4adf-bcec-394895519bea@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 11:06:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: usb-hs-28nm: use flex array
To: Rosen Penev <rosenp@gmail.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        "open list:ARM/QUALCOMM MAILING LIST" <linux-arm-msm@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        open "list:KERNEL" HARDENING "(not" covered by other
 "areas):Keyword:b__counted_by(_le|_be)?b" <linux-hardening@vger.kernel.org>
References: <20260304230636.27808-1-rosenp@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304230636.27808-1-rosenp@gmail.com>
X-Proofpoint-GUID: 9nhke2SRk8vHglkgxGAHboVJMzuyfdsV
X-Authority-Analysis: v=2.4 cv=BNK+bVQG c=1 sm=1 tr=0 ts=69a955ac cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=pGLkceISAAAA:8 a=fNKL0_Y_EPOiR77nuckA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA4MSBTYWx0ZWRfX9VOEsLTYdcZ3
 jIJ505Z8lcRBpFbw37fKZRmouhrXUKSXskgZnDPaLP1QikKn5IaBl4Cqr/c6jUqZjTiJ1yZdNG5
 Bi4iiBmH/j8Be1Y4Nz9ozFZgSwfspKPM4hXFmfzejOZflNdYp7meUvCrxC3hn2Z7qZ49MN6cwC+
 rsLRltoiiFH4Kw8TR0FCg0hhVcQphAv+A8dwQ2UlhVuj+u3kSXziatIOrLcV5u2rzAlsT57RI0h
 YtMKpaC4DWGyERZQr05SerGNGi/hZtFFC1N255fDKHVyzJZbpLFsFeaQQVuHmAtf4IgiYBu+2V4
 xN0K0oqfOsPvQhR5BV3E4MuRjE8w9cGp0cescKxYTe2SkxSwntGeJXBr+F9KztCFlRvMpbBnIcW
 f0YuQrvbyg30lB02hcfncpizGFO8NzNElcGBv0DQuLDHwI4b/TyGjZxjMZkPWtNlyfVLFbdvW0X
 pPKMPYVDz5kcRLEYVxA==
X-Proofpoint-ORIG-GUID: 9nhke2SRk8vHglkgxGAHboVJMzuyfdsV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_020637_550925_826E78CE 
X-CRM114-Status: GOOD (  11.06  )
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

On 3/5/26 12:06 AM, Rosen Penev wrote:
> Allows simplifying allocation to a single kzalloc call.
> 
> Also allows using __counted_by for extra runtime analysis.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---

I don't see how this is an improvement - __counted_by() is useful for
cases where we don't know how many entries there are, but in this
case it's fully deterministic (as priv->num_clks is a compile-time
constant)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
