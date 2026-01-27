Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E9BD2F002
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 12:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xj7LFAY25z7gElun4pG5Jvpmeuz+ePPQiakhccqdkmg=; b=QyiFux8khNCEcc
	RDDugknJNt6p0Uk3B5tha3K0jdz8ZLvcvgEP5jiVLYgG/JEUyuSTJiPQPSS9GqMkd+A6Y3xNeCW5D
	qSG6dAxLIiCrhOicI5mQnkY58M11fA+TVWqwx53Hgsmp1vLJ6lbzB+EoFT3j4WmW20PEND8yM6wd6
	xkFUPVbMBELuNzy5EHMhX5t98elm4cvdZZ4Dc0MvZaGHzBqHxVCc/pRkloWPysI7wlRBT/W09AFGn
	N+tIYx78XbTM2R6k9ZR4XT1bpkqWwPwh2F8DyBOdiki8AnZN1ygZed0TbPfsGGyohU8aqvkgzP49G
	5xcubELk1+n9BnfRe9FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhq4-0000000EC3Z-0EVP;
	Tue, 27 Jan 2026 12:06:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhpt-0000000EC17-1Dmv
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 12:06:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R87Lf82379294
	for <linux-phy@lists.infradead.org>; Tue, 27 Jan 2026 12:06:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oJmDDECkW3iXsL3g4I3qEOxh
	a59jVBDs+hiTdIwu23k=; b=SFCOd1M44pt3IzqJIWZy8H8I/QoiF7NXN0rgT0ia
	B19mlTG+dl4OUrVUz+NXmZkqvKzSH2Fy3/oQD+kZqHrZnwT/VkWrDinTkbzmE9N4
	YN/6CH3qZXc7sLY6wDnxZMMpwUbpoQOXpE0OJJ0mQIgoYkVavb9Ro6QrJhqTa8/f
	BtArQZVv9m3PyvBX9f7eu7HNoyjTIkDkjvxpexz8b61aHAmo2eufC1MIrq9/1mDB
	+fR1BvhXvb/Q2Q6Sa1IKodpPpKIjNik88CcAuBXTSBkKa+zINxdheG7EgkxMWIGo
	Yvlttka2K2gQdZXxgdXi/wn6Lf75pJ+xV3BjyoVHuJNj4Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr8sqj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Jan 2026 12:06:19 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-352c7924ebcso5061552a91.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Jan 2026 04:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769515579; x=1770120379; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oJmDDECkW3iXsL3g4I3qEOxha59jVBDs+hiTdIwu23k=;
        b=D0qmsqh9D8thkI370q6L4LW3spK0NqpBYl0B1O5VJreiWCtaz59aJ8fC5CEGZAaqno
         +42tFtszWoA8MFhfNloJxl17TB2TCmqNZApQu1+dIHozYrrHYYTnRADYSsf1lrREC4Jh
         lV3Tg4HWRvs6UzsX2U4uHbLm+zp1VNLNWrnKP8gLTVhXjtuZMbdZ1As4EoiTyhqf400T
         Zd1zDodUDq3YVhnGUC6WhioYOC0JxTXZSlYMTOJyX+fL8/NXRor8wNIADNJNmzxLmmcq
         27S5RHiB1NVXAO3ZA8aMp8ix3/cki07VfqKoPjxqqr6DZI19S3C1jUQ8bMOGV5GlGE3X
         /FgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769515579; x=1770120379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oJmDDECkW3iXsL3g4I3qEOxha59jVBDs+hiTdIwu23k=;
        b=sTc1U+6YH8ZgX9dll4lxdtx5HoeTzyoIjb2zZMXTbgPbkV4JcuHQv0yl/UhobyFMmV
         hLJ9QS6vKeY8AFauS/sJi4tyaICaZrGUg9OSJIzrQcLWz8ENIZnyUzh0CD9HGIoHlQFy
         g7C0OtdGsHOQH1Ps8N/tth7IxYPi8sFndTWtf0EuJ+qzVRZCDRLuWDgX0AR6nS4YInOV
         CGCeIdmW9uTvicL3N30eH2IFGfZbV9EDuNUoLPCfrRVXA7RDim9MoHX1FxuO72t0geil
         nYvSpx5mJAx9hP868ESGzGtotenTwzK0t1T7nWZZqnfpt2LY6T9DQdlOB+oY3ot7t8Iy
         4OKA==
X-Forwarded-Encrypted: i=1; AJvYcCUSgLv/qC2yJH3VeuoiyU0/56HQN7xyS5OiKlG+HJih/5y6dmUhfI1Ph5SCLdRTEJyCXUfazswDTrA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOp5VdQhFAONTM6DXJIGKa06+dmgAWYAxTi6bfknWOZ4h34V2P
	jwiYpzi0D1BNn8bHO6RMdfaFIX/tL0OQhLPW1uLFZ9gJZJy3yFBsAXiUUtnat0PHSNVHDFuwBtV
	WaaXXAQZ/Ji13k3/Wub9t4nNqsQALIGb2MQdQKt/2jUnNTL/ZtNdkcbY6VKu8d9+VsWhb
X-Gm-Gg: AZuq6aK64VSaEzYIZ8qp8sFSd4WMTwir/VfY0zwjCLP5giprdbuqWrda2vj0zfS0z6j
	10Yvit7eenrGuUpDxbtT06ctBF+NNadd01RkMoW0K3qa/mFmvY7iGE2z4vme9SS0DYj34riflqf
	hEV5NB9vJgXU5yvQLeyOik58nwHIlO/W+Ka9hl744fmqU08LQCqHTz8GTdhrRfs82HDn7rRaTA2
	taLWhXN38UOgegGy13hoI1NS4vuQLpRVsZHjHdSbDxo6Go+aJHZF1pV06pJwt8wfKdoO7Jxnaby
	t+4ikrkfDF4nvQ2QM6udv7n6gXrX/gqrhCd4ptbTlrvOFD3XgdyN/t+5GjVYeHQVwJihROa4Yyu
	jiYXfBSFaOB/nYsE43xXktjY=
X-Received: by 2002:a17:90b:2dc9:b0:341:6164:c27d with SMTP id 98e67ed59e1d1-353fecc66admr1463646a91.3.1769515578702;
        Tue, 27 Jan 2026 04:06:18 -0800 (PST)
X-Received: by 2002:a17:90b:2dc9:b0:341:6164:c27d with SMTP id 98e67ed59e1d1-353fecc66admr1463627a91.3.1769515578192;
        Tue, 27 Jan 2026 04:06:18 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f61292bdsm2411832a91.6.2026.01.27.04.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:06:17 -0800 (PST)
Date: Tue, 27 Jan 2026 17:36:11 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next v2 01/14] net: stmmac: qcom-ethqos: remove
 mac_base
Message-ID: <aXiqM+rYK/QCy6DW@oss.qualcomm.com>
References: <aXNEwBW3OA1xLEUj@shell.armlinux.org.uk>
 <E1vjDr1-00000005fQ3-2rcn@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vjDr1-00000005fQ3-2rcn@rmk-PC.armlinux.org.uk>
X-Proofpoint-GUID: vUPbUpmkc71GRCaoTI67z0m9qI6Z57X9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5OCBTYWx0ZWRfX9daUZk7JqKFa
 W1ozYTVhKJ+kjFndYlOYCgbipwELBLUq8yLngS53tvzJMgYttRwKJ2oKBymG9HU+Cd4qDjA8pGz
 5GU7UVT/6ZEyLLhnIuX50RUTlo1y/rpdFDFdNUY7r/guPJS+fY3FKg37GBsqgBSpuKp6mW94CW3
 2dyByoTG4980+85/ECj+9CEYL/wpnjwMGbI+PnnAOp5wVqgZrOAIFVDx7aJA6RxMdsh9O2IljF6
 SYAD1UEnY/Xoj59eS1xohC5SwlL9qXueyFQT968N9zXzPrJdK3TNhpvjMJ/gD0PAM1upE1YytTe
 9HzPZ6AqKvsteR/PtVtI0j0yGU6OxSKMXQJzSxoCa251MIBjlymcWTEUKfWX4xSc443irbQ/QxH
 xoS6Q2gftFjbdg4KqwTzF8cP+Ch1SXLSoadPYfOXw0zsP7R1Q0zbqHFb8wmOjr03+iXh7MzGMzR
 lL6iC1xKOViZYBEZP2g==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=6978aa3b cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=PHq6YzTAAAAA:8 a=EUspDBNiAAAA:8
 a=2f8CEio2oMm2juszzV8A:9 a=CjuIK1q_8ugA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-ORIG-GUID: vUPbUpmkc71GRCaoTI67z0m9qI6Z57X9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_040623_459928_1532CCE4 
X-CRM114-Status: GOOD (  18.67  )
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

On Fri, Jan 23, 2026 at 09:53:23AM +0000, Russell King (Oracle) wrote:
> In commit 9b443e58a896 ("net: stmmac: qcom-ethqos: remove MAC_CTRL_REG
> modification"), ethqos->mac_base is only written, never read. Let's
> remove it.
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 0826a7bd32ff..869f924f3cde 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -100,7 +100,6 @@ struct ethqos_emac_driver_data {
>  struct qcom_ethqos {
>  	struct platform_device *pdev;
>  	void __iomem *rgmii_base;
> -	void __iomem *mac_base;
>  	int (*configure_func)(struct qcom_ethqos *ethqos, int speed);
>  
>  	unsigned int link_clk_rate;
> @@ -772,8 +771,6 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
>  				     "Failed to map rgmii resource\n");
>  
> -	ethqos->mac_base = stmmac_res.addr;
> -
>  	data = of_device_get_match_data(dev);
>  	ethqos->por = data->por;
>  	ethqos->num_por = data->num_por;
> -- 
> 2.47.3
> 

Validated this patch on the QCS9100 Ride R3 board, so:

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
