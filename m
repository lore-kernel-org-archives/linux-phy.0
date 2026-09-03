Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DA26C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 15:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHaVJkvsIacuXO7cfSmJbURGnzhIuFokeA/OFCOXsik=; b=yglMfEPvvX+sfH
	YsE7YRUprr3Rgztn3tOBdZv+amyLhWlt6PQC+Oh4aNZt5rHJwiKR0SWgxA4cywhbBrh836lj+9aq/
	zf9BRllfYLRZDZZSzGrK/XTYXy9OUY4HCcVC1dqSbekxJJ7luIwcjXtwPE78MeD4fl3MTJu/IyU0P
	o2BW9NA52FgMqj2V9K7a7x3EFnWdu+KbUCN1HGS71YwZLXYn6a5ms7ujf3veYtWjNVKJeMR1IcFwF
	b+CoY7tbJMcftbWu1KlTdkXbC22UvZoeEOXyS4cCNPLfgkNHsf6bnbx6NED3liKBe+auG07TLQ414
	gncGrDy/xwcuGKrOrGSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28xV-0000000HZcS-2Qcq;
	Thu, 03 Sep 2026 15:02:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28xT-0000000HZc8-2AaT
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 15:02:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 683DB9h93580174
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 15:02:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OtNsvJ5bduzzTnr9siqKTCYg
	n2DujhWtW1+E2PvYXZg=; b=V60kDtssY7nUG6oGUFHPc07gc7wNiTtxIizC7ZZA
	toTkvrAs8Em/KabPWX9zHKv7HxZf8l1IrqG1eBFyBJVQAEihBt38QmP+WFRvZYEA
	dJbrj+LObAQW75o0vSKveICAw+qfVTn/Gzrr27PCtr2QEfJ4CR0RyQrn5w9zxTo1
	y0aCbjX8GuXpUsrZeWY0gb0cynmL5GDQo2gDvd3E4P5hwFuxL5/YYbmaF3MhTsUy
	f5ATe7yp63kpwkfw+U72eG7WcSLKDGEA5KQdTwJYHZjVUfnnzu79f8dsT0luuo0r
	c35sIeYkGa2JabR5hxdQujqIWJO49n2MCHJ6bGqv5nlUqg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gf5d11j42-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 15:02:30 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-78580a6b2fbso573009137.3
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 08:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788447750; x=1789052550; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OtNsvJ5bduzzTnr9siqKTCYgn2DujhWtW1+E2PvYXZg=;
        b=ZM5lUeS95ErXy3eJ1MF3WUAIa+CumLO1/Js2Hi7WdJzcQQ7BHUe/JzOUoE0HQ8GDmJ
         L4vaPKIGmPzu1TQIZFCvx9bLja5Yc+LVmdK8Cg+TedmvDJ+Ev09/DoqDWQL1PIYgDWiD
         /gE8owdso1vBGRuMrf2Bo/z2Pk8HKscwITLf8q7qoiqwdsqhD3fGh3eQ0jnr7Ka0RMfT
         CfshOUH0Qi89JiVjvKOiud7CYn7+glktSUPnsAg7iWLqxV7bzP7A9zjsjOz5hMp4fyMX
         gZEehyXl77Kj6C84pM2dJTtzGROS/Y9Hh3a0Ya6KIio3KoUlC4Wc0l6E58ZcV2GNriix
         Uu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788447750; x=1789052550;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OtNsvJ5bduzzTnr9siqKTCYgn2DujhWtW1+E2PvYXZg=;
        b=sMPB6iaCN1a//w2memh1ACOWNrPX+nQ/iN1IRWXHjh2VB5E1JUA2ql6b4a6hWV8I8T
         F8YEHdFSRQNAbxsxJpT3Mi4XeNpy7NE2rV1JEUnWHJVtIDN1qgIVw3KViDdR50457Lz6
         b/zsuNqkeJ6ACDjsYDq5q/iTyXmWYsL/M6D8uRZAO79bE9j1BLrHjVQfs5JbOhd3FBEe
         UTeiGkpz/DM6m9m4Lm7HR8O+OgD2Dt1n3hdEbP6kB6A8XXoTECmv6xGMcLvZstAK2T8Y
         lYENA1SFNh6H6gYNEKrjQT703RbGpAgAwAMnGh4naywz+4xjCdJ9MPEhmE+TGILGulJo
         xrCw==
X-Forwarded-Encrypted: i=1; AKwUvBxeiInzmbcFAL9rn+FF4LJXfh3v64x69cxs3UbK+zJvbxyXibSzLK1U4BqQ2ltU7cyfbmYWFLT6hBo=@lists.infradead.org
X-Gm-Message-State: AFuF++kY168zKx++wslJ6fVx442OPz9O23N1ALITsFKM7wByA91gEbmT
	s+ipDUYxPomOFiSxDnp9ZOYV8/ZyFPfcR4fbX6st3rRos18sseMG2SAIES4olllQPJ8K8dZgRBE
	bvMdtD+oDkcx/4wn+Nexn4bphe/ujKq8ughox/A4XhudfwhozGlZGNonjCgCk5ovH7NEU
X-Gm-Gg: AYBFou1f5/DrhsQy3VszT0HRJSP1uahU+gzvoaHq9DrJDoeAp/208XseYNbqUa83PYB
	KcKul0Y1JkBEy1weOgcA7bEaZkyfk888Qmom1FQAvL7+MFvFCHrjuq05g0hk7PyETEXYWWEBBzZ
	eXPHAimvogg4rwlyT/1T0UVitFsF9T5jpIk3Q6BtiVMjqzRGjA7oTdcZxbPJMK3Jhvd5WisJEUc
	lTnehTPDL6YYZsX/zxNpGUctH50neeAMzhSXxFJBNk/J1lyPOo6el0ZGy1gn+xulo1yKxE8Web/
	7KAbOOapzCYBrwPdvdrqxCSxKbRqeNGHub8/DZaef33MOzh0WY59NPiXsswVDwjXNuBewS+rajU
	FnO6HL1dkMWWzvQ==
X-Received: by 2002:a05:6102:3fa1:b0:77a:2268:9fdb with SMTP id ada2fe7eead31-78a1f23df59mr3873522137.7.1788447749819;
        Thu, 03 Sep 2026 08:02:29 -0700 (PDT)
X-Received: by 2002:a05:6102:3fa1:b0:77a:2268:9fdb with SMTP id ada2fe7eead31-78a1f23df59mr3873476137.7.1788447749277;
        Thu, 03 Sep 2026 08:02:29 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce831af89sm74128345e9.1.2026.09.03.08.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 08:02:28 -0700 (PDT)
Date: Thu, 3 Sep 2026 18:02:26 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2
 PHYs
Message-ID: <hnvngqgtesfyojftxfuqcsc6ajf7prrlxmdk34j2pgtjmhse5w@vo57k4jmlgtx>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
 <20260903-topic-8996_61x5_qusb2phy-v2-4-4c3f980a4560@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-4-4c3f980a4560@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDEzMCBTYWx0ZWRfXzkyKWDbxqo0P
 LdylxN+P/VPsM2FrEWbh1GUN7QL2TizjntKmhUqHrLZ9zXzowTgBa7tPOmBdMguYq76qInA4VvG
 uNACwAEGI8vcrZ7ClyaqW3bmUHt5KgeDR8bMxrcHikXamo/jzqIl4LrbjHthExW05hRp/C6aX5U
 svW8GwHc6GcMvgXYDWcHmqk8fUmIRZbxzvjKoWRtnKpMqjB+RFDdwdUFLAmTT24VAwxdOj7bEr6
 jMT7I7ueS7eTz3d99UXTizZfaplRhwrg+3U3gt36QzXAhdqkzVKkYfQYiKaGgSlR8fTpSf66ACL
 4apPlBcg7zcTzdBhssqbSsxMPIZTWQPJKfCBT9dagbSfhrx5ejvNknICdCwFwxvo+5iEm9ycYmG
 oKeIk4WeRdLtMbEA+6hVDQs569mpZ60rX+/7HlOZEL9MJ0R0zN2SdiGzm/CA30cDXDYAn/hdZp5
 LYlhJ4wZNix+j0fr7jg==
X-Proofpoint-ORIG-GUID: PumZ5go8RsemlhBWTb8flLGQCW-MC5Rg
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDEzMCBTYWx0ZWRfXx+78wYa0QMo/
 V8eF/tyrAvD5UQsOgSX4TIXVFspAPvHd0TF5nFZA8o0Qovr8mEDne7+LPsA0476qYzjeLZacLy0
 4M0txJoe2xsrGkIshXoAbMwRZMJoAJk=
X-Proofpoint-GUID: PumZ5go8RsemlhBWTb8flLGQCW-MC5Rg
X-Authority-Analysis: v=2.4 cv=J4GaKgnS c=1 sm=1 tr=0 ts=6a998c06 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=q7XEBjOi5DRkXzmV0jSBjQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=DCX93tUFo-QliEHFFTUA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_04,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609030130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_080231_581647_621D1C3E 
X-CRM114-Status: GOOD (  11.45  )
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

On 26-09-03 16:25:31, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The QUSB2 PHYs are powered by (among others) the VDD_MX power rail.
> Describe that in the DT.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
