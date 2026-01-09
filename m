Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A962D1A613
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 12:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKLGtmEr3XN/OXdUHPtEjfbcMbMLthdVTjYp+PnaiHU=; b=ZRCQLX6fD1kq4a
	JSPsyWeV5rwKH7D3h4nd/esPAOo1DpPNQzXy9JsqQ5l5t0bsgYdeIDiePGbOmd3TMNvnljpZAcvAx
	rXOzRGU2KTvzcQGn2N8mhUijiLaed1Z5hZIabgHaCRItLt12clyMPnDCvRA88wEF9Vkp1wxBqeARG
	viA9rLlPL+Jjf0/pUILYVaZEdAUiEUv9NlAE5iBRQd1GBSJDvkw4jWZPXdSK6cg0AtfIvpG9OffJs
	005CyWw1qKBocOEc2Njio4H1XlLdfFlo9dGpd4iY2OEPBnhXy2rc7q27AEfCD40YrJJpRSZlwKb8k
	FG9WHgPu5kyhc1cc4eBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veC1E-00000002K8s-1O8C;
	Fri, 09 Jan 2026 12:55:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veC1C-00000002K8V-1U6a
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 12:55:07 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099Io9j3324822
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 12:55:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HAMlf10dDH8UsuNOSmeeKYL7
	tO/vHKpfeZ6M0LpWbqM=; b=iOkMavDUZOwNeewFWdm8hM/EcRqkV0w5uK6QprZZ
	Q/jR5GF8W40Pdy4u2riu8XVhmVjRP3IuTDm1wv+04C65Mmoz7ITmNHKx/+jYvbkE
	jp23EBmbA9WnUZK228jAxQ1lb22lMbthJySxeIVbHtE0qjJvVSxXpgPBn33OAZyL
	T+FGd+1MCRlkptguckgaiuonqiLgJWvIX2QNI80YDsOqYwK7KVtYPfZHuxmPXsl7
	5Rq5eLgScCaKa99y1ACR9R6zirUCm+7ww5nGmAATrIAaQowHuWEF7e0jQN7QwRHp
	MeqBDCiaRp6x5e7NwIXb1HTfEsTnNkhbApaoOE4SOiRuyA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjrd6hu8f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 12:55:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2194e266aso1033453085a.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 04:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767963305; x=1768568105; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HAMlf10dDH8UsuNOSmeeKYL7tO/vHKpfeZ6M0LpWbqM=;
        b=AvhxuIGHERtpy6MSxVdPkyLni9WAjKsGikrPg9kGuGj54sKYdFszTjBP2a27qi8B2G
         DrAUPHkvN49C4s+9wq+B8HTGpCraIC75doXS2C8ErgMtF/35agcK8x2O0ZbSChsZ5Kil
         2Q357MpiMh4PRDCsht+h2Zf59XpV6aDm/3X8jU8ofY26DlHNlX70pE/AIJwqRQ13lSCF
         i33SzO43hXJtY8aVqlyXoXHKezHsx7O4gCGc+MbsB2YpB4pOj6RsTS4wKs5/lEmbI24w
         tw07D5s0wZplRDX1sDaxgc+4BA8BhY43DqCggOMOAiKsori+hIOvyyGOKvTqSRaPG0cd
         Vqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963305; x=1768568105;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAMlf10dDH8UsuNOSmeeKYL7tO/vHKpfeZ6M0LpWbqM=;
        b=o7H5ZbmXdGcphvsC7cuDjBo9djCHcdPYSoQ2t1zqYcEDbmYum2vSzRPV5HEe6VAoVS
         8GfYBhDkRzLGsmFaSxPumHvsqpsyDvzR66q2k30Of3IPBJZCt4YHrL5C6HGqHWAactJ0
         CZYchJncW98FHZPJmHGbqdf1Q5Dxu9A9hpwmjUNxgci8rAtcokTXvP3glpHV+eej7EhQ
         5inwoSl0LceEe3es+t1xPR9nwx2YzgFwXUFJc0Utuwnw+SgRv+rJWd3kXzcfx7GUp8o/
         y690h7paOsvUVGYF6RbRzzjsP8AuVoiyfSubYsA5JWZScQDbnoIFsBHUdl2eupKdSbCK
         zOBw==
X-Forwarded-Encrypted: i=1; AJvYcCW1f8kCXWnpaJ5mUfcpZPVkVJEAtnqVri3wgoRxAIzeqHvwUPptiFtq18FnT7eH1xZPx6+n9JBz7FI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOBk3VYWhNwgC1lKQGelyJs9h5PDtV7i6CCI8FABW+EumiO7Wi
	YsXeMkk1tLzjAe/pQ/OM+W1j0IHIYJWsOgBwPzKXhCdCl4H++4UzqZNJ3FRwEu1NpBEUSS6mDK5
	5VbMfaD+Gg73y/8zR0QQQxwD8G1REd4aDv728YBUvDm2aO4puhGd2GZwbrduUOW39iPDl
X-Gm-Gg: AY/fxX7Z2CCdR3JVEXJdUi4Gan5aI/pmW3XeCiWIrrM9fDrt1vIOl22zonJkVDZHXIN
	UoP+QNXidsv89IeVuPt+xhrQOSgysTHUsRrfjJAyFn76GOipjMm+lLGJrqW+4eLDbhpxou40ct3
	MIG+8XGw3JYaHWXT34NMqz8CM3kzlpiEljXAGDAYF9dwhYtj/1bJReuTr8Lrj5dGlt7QkggiA4E
	Nfhdz/jDBLlyoS9M5B2yhNXqtqVg+SEjoso3OfB0kLXqjSeDPa80lIVHeGCteoN+TugHtL/zd4m
	f87PhrqcBxDSYrwF1uvclYbv7r2rKaS9Ml11X2XV/aQGQbn+VEJT4edXbGd1L2v7w8TG5tABkJX
	r+rbY/GpO9Rif/NuxG8KDVYx6UmqnNAsB0xn1n2zikNeLiZa9VYXDxiBQfwq/PS0kcA2d7iOXf6
	i6/zLnZ5d2F1N9+tdnEFAt4MY=
X-Received: by 2002:a05:620a:2a01:b0:89e:f83c:ee0c with SMTP id af79cd13be357-8c389417b88mr1355652585a.74.1767963304737;
        Fri, 09 Jan 2026 04:55:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJ1F5xnTtmEN9GO7NV7cQWCi5ltEqUSpktZ61b5iogKZ/Ck2+d8SQT5C9QQzhLxVrsEx0O4A==
X-Received: by 2002:a05:620a:2a01:b0:89e:f83c:ee0c with SMTP id af79cd13be357-8c389417b88mr1355649685a.74.1767963304219;
        Fri, 09 Jan 2026 04:55:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea522sm2772194e87.3.2026.01.09.04.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:55:03 -0800 (PST)
Date: Fri, 9 Jan 2026 14:55:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org
Subject: Re: [PATCH 3/4] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref
 on early runtime suspend
Message-ID: <wggkdgz2zhnifc4ceirgi2qkeqfcip2rexklji3jmucmre7zd2@srnl2zqx4ju2>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
 <20260108154944.211886-4-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108154944.211886-4-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NSBTYWx0ZWRfX3LgQdj5QBoLD
 QiRT4s64Hoiodpp0Ra8YBduww7v7A4gQgJIfaIpfRYBvxlfpoysWu57VOLqv/mGVvCXH/colFLA
 /1ppLMZ7McVnRoMHYUE+E9RCbHL4BzfHAxqn/BORxwwA6Gk8hN/cCVJvijdevLZSM4uaZMrFXNM
 WbnjWd6063k8SCaWemR9uNPp2za+bmv14S6gk4upC1YWhJgwA7MvzjDnjVRJu4oVroPT+H+Rrv/
 9dTuRgqoUUPZqitYJm7IiNXndTVvj2BFYxjxfoMO8eJYd45Y59e8lDtgTWppOgwBUxuIpdPR3sA
 l5tGf9Ijve/MR2Md9IvcclG7Qe9pxbKVK6pwIBCZHQNr7BSHTdlz5lZhXbHHcaf0MXd6TSYQcRD
 t1zN9XLkbvD5s/peqh8OO9AmOorgQQhybPVJU9E2QG83GZ9AJ+WPrVoCxsFkPGWc2kx6Qh43gNY
 j1Y/J2r18Qz/KpAoGLQ==
X-Proofpoint-GUID: LdDyS9jtk-dsxCpbwmvz03shHwCtgqlT
X-Proofpoint-ORIG-GUID: LdDyS9jtk-dsxCpbwmvz03shHwCtgqlT
X-Authority-Analysis: v=2.4 cv=Xtf3+FF9 c=1 sm=1 tr=0 ts=6960faa9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=CI25CYPn75et82rp3EYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_045506_421816_B3396F6E 
X-CRM114-Status: GOOD (  16.72  )
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

On Thu, Jan 08, 2026 at 04:49:43PM +0100, Loic Poulain wrote:
> There is a small window where the runtime suspend callback may run
> after pm_runtime_enable() and before pm_runtime_forbid(). In this
> case, a crash occurs because runtime suspend/resume dereferences
> qmp->phy pointer, which is not yet initialized:
>         `if (!qmp->phy->init_count) {`
> 
> Similarly to other qcom phy drivers, introduce a qmp->phy_initialized
> variable that can be used to avoid relying on the possibly uninitialized
> phy pointer.

I think these two sets of changes should be split into two different
commits.

> 
> Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent the window
> where an unnecessary runtime suspend can occur.
> 
> Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 21 ++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
