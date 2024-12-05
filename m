Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A9EAE7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 16:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usuh21U2TEGb9IU3/p2ZPxGepPi6PwFQc0Azn4NGitc=; b=PB5LA/BDsSl1rC
	0pH1pBLbK5l/oFzxXhe+GW5DYoKThJur1HHBuZ6GFjU8u6mO8nyc9Us9KiKlKXm5Z5Dc5xGfo5dNS
	/TWtdV5taijxiHfdwdd153Qvul4sW304ksIS9KV2tjtxvvJ5TMf8aakXdTuk8I3AHW3N4UgyLmGTM
	WyqzHGvZuN0L0s14SULTOv0ZO/DbCpIv3XhZQoPyvHPaDEFLfyGwbtlxtuSMX6NPpv3LiyzVWiktU
	e+8cymG2UfAZWo7u5UebFSug9Xi/o53TWBQ8K7HeuJKDWO8mozcCbOmz4QXWixPMeysld47CDszwq
	tpDZrCVqQKMX/rbYRW8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJEla-0000000GlBu-2AzC;
	Thu, 05 Dec 2024 16:31:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJElY-0000000GlB6-3b38
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 16:31:50 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5AFiWO031727
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 16:31:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OO3PETOsyEKUmVhcQ82jscTslmU61XklmW+TguqESPQ=; b=CjfHJBMFUQDYgcWu
	dbdvJhA6QcbkojJBpqdlxbcG+BycUGL7rRj43yoUCi6vDh00vJKL9XRAOee2eC10
	BPJR2HAqaKPhTs7frhroVh9U6rj1WjLex2T2JIEU/pHHb9xd10swNo5Ad2yb1dzN
	NPbEH23Ea8Im7ne+nGwkMTIQlLQwU1rZiB+veQPTFP8MLgGxtHZ1habswNJPInHm
	D7d6QPcey63fWlyzxpEsWEZFu7CoVzFxyUGF2VhEWW059Fsht55IlffnqDyTVrld
	n/C13IbvcNqzEFZjKDRzZ1jQvtReP8odynHXyYnt3zqtZTTsSiW+ahJ/DUrRLLEk
	bfIXmw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ayemamtd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:31:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4668a6d41a5so3061971cf.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 08:31:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733416306; x=1734021106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OO3PETOsyEKUmVhcQ82jscTslmU61XklmW+TguqESPQ=;
        b=BIX1CBhh3pyH/X3+HIl65Hj8eL4QE+OqCoE9lOPpSxjJy8ryMSeflWVvgc3gyhg2Ec
         c05xPxQD12JeIgbAtr7b4PXd+bCmtdbYnjg8PkudW2JmoxGTaMrAXlawwsvsXTkm1G+2
         9/TV03dq2rTSMtrSwYgnJonNjxqGXWEE3o+Ea4i8cnXN4tBBVC2FVs5fL84GkcNehANg
         yJvCF9m8jmUYwzTa9a+zl9OkaBO7FVTsALHbAIXFy/QX8jwxbV/9TbAVhoX82pwhjYdx
         TCfvUD39gG/ml3JKv7k2J5dpIjPVc5XmMK8iy9mM/PtEU9b26J/tQE2eydJgIUwSZhAW
         RchQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4jmURdwfdCcocxALO8YJc3AR85m4MOGshUU1NeFbbkkROHMUJghgYDR6WhHEsqvdaqzwDyNzqgO4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuChbp9jtwH3aLIWHDwl6YR+3mNYyaKhoT1XuHI2YFrSPG0cLE
	thJ8isMUGRG+sFfdUtssTx9zGrv8M7Zvk017o+xbp7edJkZLGp3g7uabem9+e8eeRWmy0z5antz
	IOWxF7ZvaZ35b7A19gqdeb78q0hf8r10yOLEI3O7q7WU8eXiK/ARnu7ylkFjrUdky
X-Gm-Gg: ASbGncusQWiqAFRcDLUKWPx0cbFhSTFR3Vq33mlPdIdrEsoK5LYLFOWFnPEw+QTWV2g
	E7CjMpoYwZFvKF41kvnsVBgNFUck+XhHhY2hBM3sW9rCHo8mBgrYTlkMm7R4EuTIbYN0bHFE0cQ
	EKCZ4qd3DqY+GKDm9/gsIquzjiWLwANfeY+qeaP8jOBNnAxWM6lEdczk6r8uXm/FpruNSIG1N2c
	LpnAbTlUFm/zPjdijZT7XhP13ozSeXgYbxdogUMr7lUk5Oz5AJ8kBEzu46V+2gJBI5iCg1CFkWT
	m2KRVzYPQhuVzOlHWAaQPTgjukPuk+M=
X-Received: by 2002:a05:620a:46aa:b0:7af:cd2f:fc16 with SMTP id af79cd13be357-7b6a6ac4315mr640243585a.0.1733416306265;
        Thu, 05 Dec 2024 08:31:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHn4mO82urP0n6y4ICtJcZOXowWIRkawjXqvzOlQIsjvcyJPdkawu57/eeRUH0GNZ13RwBadA==
X-Received: by 2002:a05:620a:46aa:b0:7af:cd2f:fc16 with SMTP id af79cd13be357-7b6a6ac4315mr640240785a.0.1733416305903;
        Thu, 05 Dec 2024 08:31:45 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4dc68sm115325466b.23.2024.12.05.08.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:31:45 -0800 (PST)
Message-ID: <783bda0f-5d51-43e2-8923-a01577a4296d@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:31:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: qmp-pcie: add current load vote/devote for
 PCIe PHY
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-3-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204105249.3544114-3-quic_ziyuzhan@quicinc.com>
X-Proofpoint-GUID: 5v5ytyFBq7PO_HBUq151uVFKVjzqaF1B
X-Proofpoint-ORIG-GUID: 5v5ytyFBq7PO_HBUq151uVFKVjzqaF1B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_083148_906566_3B9A0FF0 
X-CRM114-Status: GOOD (  22.22  )
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

On 4.12.2024 11:52 AM, Ziyue Zhang wrote:
> On some platform (eg.qcs615), the current that phy consumes will exceed
> the maximum current the regulator can provide in LPM mode, leading to
> over current protection and system boot up stuck. Fix this issue by
> setting regulator load to an expected value getting from phy device tree
> node during init so that the regulator can scale up to HPM to allow a
> larger current load.
> This change will also set load to zero during deinit to let regulator
> scale down to LPM mode to reduce itself's power consumptionif PCIe
> suspend.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 35 ++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index c8e39c147ba4..782d51ab5cf1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -39,6 +39,7 @@
>  #include "phy-qcom-qmp-pcie-qhp.h"
>  
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
> +#define MAX_PROP_SIZE		   32
>  
>  /* set of registers with offsets different per-PHY */
>  enum qphy_reg_layout {
> @@ -2905,6 +2906,7 @@ struct qmp_pcie {
>  	struct reset_control_bulk_data *resets;
>  	struct reset_control *nocsr_reset;
>  	struct regulator_bulk_data *vregs;
> +	u32 *max_current_load;
>  
>  	struct phy *phy;
>  	int mode;
> @@ -4087,6 +4089,17 @@ static int qmp_pcie_init(struct phy *phy)
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	int ret;
>  
> +	for (int i = 0; i < cfg->num_vregs; i++) {
> +		if (qmp->max_current_load[i]) {
> +			ret = regulator_set_load(qmp->vregs[i].consumer, qmp->max_current_load[i]);

I think it's better if we just put this info in the driver, like with
e.g. the DSI PHY

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
