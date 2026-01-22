Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0582D3EE66
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 15:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw/Plx0etziprF1S7CM6wZMo+ao6b6boJdI3FfNieGk=; b=fMFWCHlydKMoyj
	M662qBdcBukfYgewNqS2Y0J+voK8hwcaZrHRqgh9o2D3PlocLVEC4fZalB2plwH1vtlBPyLKi3O8G
	+FGjR94PxRUpQkAkDDJHqG/N1JSsHq2EWRXbdatcCSQIpnL7kyt5zvsjnar7vZONV1V5UmAC6gncL
	Xn4CDkj65jOZN82t7HrIEvLRhguTvyU3+fc2pea8SMpMODlt0Jo6jGqFB15D1HwRlCqBSAo7SH/N7
	o07/a8zmSusiwpX7EugmtxyFSmieRAdd27lBbEQjH0FRutE8Ycns7fwxWKBFiI8wZNAZZ3kJ2so3n
	abUCURAcxrxA+jFkzFVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viwAr-00000007HZZ-30De;
	Thu, 22 Jan 2026 15:00:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viwAo-00000007HYq-1yH3
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 15:00:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60METJ0T2282639
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 15:00:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jbMKhDfn3dd1xV5Jq9MD5SYWZD1vNh0Bo5b3+HgjZPU=; b=AhBg9wLPtGHVP2Po
	/knE2BMxVU8nWS+m+uMQwfv/FjG4l8xZxK3za36xYVHD6UAXOEtm2LmdYqJ5rlom
	uZzH7ScoCxERZHm7haLMegfAMH5dKfhcWYEMTAo6IGjKpYkcCUt6kRBQM97LM5zd
	hxV1f47mFMRINtxfbun+7QQ9OlFpkxkmt0AB8MFBj+TQ6+HopJ2cKb+vWLSKsdKI
	8l87XCboJXSkpeYpwatp8b1aWkJOwZx3czlogYSp1TGlywlQSbwlBrL1+1nVhjuO
	1vyng5ieyiwRVD9XwJ/4Hnw9zAFtpYNx37m6fVro1WIc6OjfHpzg/a4t+d7vp76n
	OD8QXg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu7fatqdj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 15:00:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c69fd0a87bso85689085a.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 07:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769094037; x=1769698837; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jbMKhDfn3dd1xV5Jq9MD5SYWZD1vNh0Bo5b3+HgjZPU=;
        b=Y08Me1/kDkzYmreL+pLw/AK9GpTzd0/2aidVeMf/nzBv76st2W9W9cVPVCMFrCO+48
         EEC9fH3jY9PasACOJ62bhQyPFitLniJZAs4IuXBP0EkwJiFvfri/Qa9pGrt7hdJAO4tA
         BXfVjKxNKOM/1Uh0XqpTzbL7XjwGkFn/Mr7YsJCRyCcHpWtIcRtKrftso+2DrHHWVSE8
         3z0dujxugGSWc7qPtpoCnQTLj1nhP/a4hFcUyN7XmHrX/V8C82XamfjfTjAcTDda51Md
         cu/whEXYz6D7leFQx+0Pl9b7rfhDmgN1g9pp5BXCL4W5jSvoBXo9QeMzfYnohkhS5sLw
         qWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769094037; x=1769698837;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jbMKhDfn3dd1xV5Jq9MD5SYWZD1vNh0Bo5b3+HgjZPU=;
        b=O4SM4OstFd571uac9nyxqwlqZ8+S/QNZT/KPjBV1p+Ihn7EktPogHVXJ8X30Vgh+Jm
         M1U/2PNivcDHyDzJETd2+2App4sZlSZI2nsUfe4k8WPaIvqX0qD3H4uC8Ce8k9M6ejxt
         Xx0TO0Qqn39SZjj00aNQRKs7lZtzB+vEyzBoHI1KF4jA+PhjeXJxmN/dWIbGk3tETIhq
         TaNkjsfQJcC2YLWLz9KlQf3pyuMOFHKTVexc5IWzFopBgRlYQDbWKSc+8UxYWpKAp+tW
         B8elxgQW6fLDBfsS0AL7YsIHHhbtgFqnIdt/X/SZLM9jYs+N2OqoODg1eCSHvW0JesT4
         1CyA==
X-Forwarded-Encrypted: i=1; AJvYcCXtTzGEmLKQbAyigKPzb4aDYf2+aLoIURhr3AbIKbS6GJBw/Q//OwUuUzKnqNcyTFN+bJXnFho5cc8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw35eLe58CeSsiT7UnKo98TmxQxv53NfTr7rn8SFsxiWdCDMiSQ
	4OPGkz4NixZZcO0Fqmfv4CN9xAfn+Tg0BECJ7Vk9wh+1exx6ziXIVFqobiyALnH7CldhkhZTIOK
	2t1phR93wM3G8S7QYyfSyHbiglXlT/LWznHLLdQdSZlzcB6Oa5jJONNrh6FZTHcR/qcAWwMfjr4
	xY
X-Gm-Gg: AZuq6aJbVpehDMSzj1DfFiYq1SVYRcF9Q29ZI2g+Bo88M2o3jJ/CwGDB80KORnFatml
	On9wHdlWAC4UUkDJh/Genzfv1EzjxYjDCjh1y9pglUoy7150U+r3ioi7H7mLRNF3Umb/H5n9tHH
	Wcb9gZ6ruHlcdiYRbrvy5YMXmuskJJz8OiAgcElvQgceJQMGou4zEEr3bcdBNewQFTtajhto15p
	9oBhs+Jdnj44ms0uGA8plrTLO13e2dYLwn2nvOetzL3Hnur2wbrCf7ejpe7Rco6pVrAqUnkO5re
	rLG0PpNAcJA7ggxawTkcHNIZKVSSgMcqWAY4yAQXoAofjtuO43fN93AgW4csfDV3gv7it96n8Sc
	JLcrgwMDxzt3Q0TSujqfE+Ubaaf34hAx0q1htSOno75r+eRWZGsVwLT9WaC9EUeRirL0=
X-Received: by 2002:a05:620a:6c0c:b0:8c6:afd9:e422 with SMTP id af79cd13be357-8c6afd9e501mr1894500885a.9.1769094036643;
        Thu, 22 Jan 2026 07:00:36 -0800 (PST)
X-Received: by 2002:a05:620a:6c0c:b0:8c6:afd9:e422 with SMTP id af79cd13be357-8c6afd9e501mr1894494485a.9.1769094036066;
        Thu, 22 Jan 2026 07:00:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885377e562sm7772066b.64.2026.01.22.07.00.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 07:00:35 -0800 (PST)
Message-ID: <3facbb23-80ad-4648-b81c-73f4608129f5@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 16:00:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] phy: qcom: qmp-usbc: Fix possible NULL-deref on
 early runtime suspend
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-3-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121142827.2583-3-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Hrx72kTS c=1 sm=1 tr=0 ts=69723b95 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JrZo24E52nylh-zEmEsA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDExNCBTYWx0ZWRfXxC8P1uCKxR1W
 kTLo09jXeypVAsFNjlWEKEILsyVYyiLQ0xESK+Nqa3Zq+kxURC2NgXxumWwGP0/zxqtS++f2QPS
 EvosVXHjfU7kLgfGVR/8AUt74EA2c2Ax3okGkFsyfoQMKF1up05Srt9GsjmS31PtPVLa+GXrMei
 QxNkvmbbKk98Cr8Xu43ycE0/rQZh5NWf/5ZBZ3wtccDMNY3pBEXBRld2jqDD5VnINCQApQJ9bFm
 zYq+pmxHARHFqN+81lwBGhMvWmAbFORifv7mHGvHwz8SIAQcrUARADKy/fYDFbus6Bqr+FtRwMo
 oIDU430P2HaiKm1IdvajtJ56b7LBiKge4yB9NILsepsNJhEyHdxWp/XLrcH9tDApTJLUEJFggA6
 R5XrcOK7Fl+TOvtgn45Q6atwrdeHrvRn+iNhaWV8FHa4Dv7uY4glcAr3HbsLwnYUrUylK52H6l6
 8eNzoOaW1Nx0dZ2PSdQ==
X-Proofpoint-ORIG-GUID: S7WzgxUjmNtPCQPh9_WaaM5p5WnlOLj_
X-Proofpoint-GUID: S7WzgxUjmNtPCQPh9_WaaM5p5WnlOLj_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 suspectscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_070038_514487_4195E806 
X-CRM114-Status: GOOD (  20.22  )
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

On 1/21/26 3:28 PM, Loic Poulain wrote:
> There is a small window where the runtime suspend callback may run
> after pm_runtime_enable() and before pm_runtime_forbid(). In this
> case, a crash occurs because runtime suspend/resume dereferences
> qmp->phy pointer, which is not yet initialized:
>     `if (!qmp->phy->init_count) {`
> 
> This can also occur if user re-enables runtime-pm via the sysfs
> attribute before qmp phy is initialized.
> 
> Use qmp->usb_init_count instead of qmp->phy->init_count to avoid
> depending on the possibly uninitialized phy pointer.
> 
> Fixes: 19281571a4d5 ("phy: qcom: qmp-usb: split USB-C PHY driver")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 5e7fcb26744a..edfaa14db967 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -690,7 +690,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
>  
>  	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
>  
> -	if (!qmp->phy->init_count) {
> +	if (!qmp->usb_init_count) {

This function changed a month ago, please rebase against next

Although I believe this patch becomes unnecessary with 3 in the picture.
I suppose the case that you mention in the commit message, however
improbable, could be fixed by moving the pm call to after devm_phy_create

Although we'd then rely on devlink to make sure a consumer doesn't snatch
the reference halfway through .probe...

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
