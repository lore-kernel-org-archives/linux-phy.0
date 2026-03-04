Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A329EFCE53
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 23:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dwJOxqd/Ck5nKTHBPinfNkMGy86T/JtCxG0cNyxj80=; b=MfHrgd5sC5PCsV
	6Gdq8npgf6vA6R0z2JAn8+i6+3L7rQlyL8qCbhvB7nvdU1OO7IRA1cbJp3nGP8FZXGaTypR/2CLL+
	d8MMEpzCYTJ/Yi7IT8bwzLuPkMKY3eH/pcp6HTawV2W41wRrIwDsv0nqSq/02ILssFxNLAj8tHNmK
	VoSqtleZszsnMKnZJ3YQyKGt8cyObM/ZGaziP7T5dtK8HqmJX9UKS0djt+iIepKRVfWvNK1RJ9Los
	3to8dZbdBGysmbzbYPkhJhGwv5qyHTU4mhXI2fFH64MyFUinFHelAF7fMBWNeBlR0DRHcxMIBZm2M
	ONX0H8T5eofya4xMP6Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw6z-00000000fxG-3hRH;
	Wed, 04 Mar 2026 23:58:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw6x-00000000fvg-3UOU
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 23:58:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624MO5B41203248
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 23:58:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9eFNoKK53YStLQziS59y7gpu
	WFx4LBYo9LfBMrzSB+8=; b=Ex55ksIk/C6F380U+3HqWaC5SXE8FbYvjC93K8xK
	pyk0tl0II7MLqUyJHwgrsZOgJOL1po7fTH0r82KS7fDIkphRqvAYU7BZ5gIwDnSQ
	bgcRx6OdMhugEs6bZnKwlLZrVG7BBDXbz1ceWOCaLUymJFX81EL0qTd/167YwCgY
	4jVTjm/UwsXNfPfVDgo04FTdh62Scp6bQu4P94d3ILZF91XVMtm2aAsCbEhoEk+r
	XwK0X+60G4RPN5C1iDq0B30EERksSkXG9Hial0/KrdPEz8uJOu8tzM+XthLqhgC5
	L7XFnxPdyaiGzMuv3lD67GQ2UtRVWZ/Mof5NCHoxkz10lw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpf9c377f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:58:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c71304beb4so969611085a.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 15:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668718; x=1773273518; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9eFNoKK53YStLQziS59y7gpuWFx4LBYo9LfBMrzSB+8=;
        b=U8Q/6An2kuqZNNRSDIEcjN6K3ybZFmrQWtUcbQh0j9F1ugwlcCN6TaxCkGgsfRKs/Y
         G/0NdiASkfL/fGxhrGXfhXDQP6frWN7Zzd+IK794Yzps6ZRbW8FgFJqoE2IqAbaVn7NE
         vcDxMicPAofm8rTdOaRYkOSmEU9IHMV967dwXW9rKQjIkpW1/arYFjiGU3mqJusbSPus
         z/WHD86vQSfEegmlkLzhLDnZifx15w3LdOjf+UkH5eHnn4jRV2gK7IAa2C9SV9VNUX3b
         Yqcq3Oqt6vWSYTEZ+HyVnnoKzb+rQrmkc2SM0Q/qWbsDdSz53MgwLUyYhBFmeUd6cpeO
         v9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668718; x=1773273518;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9eFNoKK53YStLQziS59y7gpuWFx4LBYo9LfBMrzSB+8=;
        b=fqr+67NJUChlZVttqZTB7z3Abc6gg3aqVXgRMjsdwjAXCiSBT/LqangvBDqDoMtTOE
         S8W8z5JfnUAc4CXgAds0bucUI17d36we8D9EH8/5edhDhLtpxRmEgYEQafy6RdmHRMZn
         gJCLh5MQwacajEMCEKLXdh8Q/N85inbr6iS2WNYVYJVyBnPirm2gVVVxLyUp6IBekNDY
         QkSi4wnUQpy0wI3bmiF/alj8GJQ9rBFK6BTvCeznGErkBnYgbDzIY3xDYbiavkkXDDSx
         eV8fHIl63rnDHrLhSQnVkRbolGa51SIEAGTAs+QAXGIMaJKadUemt9QFp3NJ97hpJvh5
         Rahw==
X-Forwarded-Encrypted: i=1; AJvYcCWJ8/aEn3VPnm/Qjbjl1onr+o0WsV04i9SohkZ3AjHZKsBaWStIrc1rVnPh5Euht7JjdP+UzjZvg1o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxat7tKS6s1HEhGjqRZVdab5rGICQ5MPjVOrgbO/UO5UDBjjFGT
	iVHyjfQe95HqU9VBnVSDGnjYDLx7mIo4UQHJQ8PueRB92vUqaEbJZncrmYz8XBwDZ6z+xbQOtY1
	5ymv7m229VzlWK8euKcCmOdtchh2y2c4nPrdzd+uhano9pPeCS2jHYIecAvzTfhjl9TZa6MSOlH
	vE
X-Gm-Gg: ATEYQzwnm7I4dj6KWOley8TYNwl858UHKgjje3n9tf/+I6xARX5DMvZMb0G4qI+JYyj
	3ZCZbeET6SEA7ZiiPZlVMlZtuhZkuZaBZTlqTLT9bYl+PfKcDr201kUemoh/ZPZuDpnPCPEVFPr
	HOjmJ/9UG47BtJhF66ErCyNDEtZinWhqOeotHSsHPBoHaPOTBJaxwi8244XfJLXCLKeUHsEo2Ol
	i53Xglf1KsMkCC95KLDb3OCDaLGB3wOq45WE+j63NGprKy+aic3CVdi6Am16w87Tzn/AvoTd35G
	VbBVK4vdTs1l8t5poHW7nMgwwwE5ANifGyaar/NQ69I/u2rsV8kFV3BUahWNZnxkONp07UC6i54
	oZL9gFC2uPf536ozIwXh8PBSRa53ly5GVQA1v0GzFMIczd+zF/Y4G9ZhRAyUXXRp4nL5Ujc5i75
	W6uIliRqavhKOsxIJeeT4j+W99RDfxFvE7jfA=
X-Received: by 2002:a05:620a:280c:b0:8c6:6e2b:ac1a with SMTP id af79cd13be357-8cd5af0b8d7mr460988485a.28.1772668717851;
        Wed, 04 Mar 2026 15:58:37 -0800 (PST)
X-Received: by 2002:a05:620a:280c:b0:8c6:6e2b:ac1a with SMTP id af79cd13be357-8cd5af0b8d7mr460986785a.28.1772668717384;
        Wed, 04 Mar 2026 15:58:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12f4a5b03sm339308e87.87.2026.03.04.15.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:58:36 -0800 (PST)
Date: Thu, 5 Mar 2026 01:58:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
Message-ID: <duny3mu3vx75m5ik7xkqotdajomkpj5udg7x2gcyj6pho2ybv7@w3q3pru35p45>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfX+CJ9lz2VKxoF
 fiDcmNlbIWQXrc+J9c+u5UhyCtkl3S1EKj4zYE8SDXs1z3im4OXObeGF796yhXQ3xs/+d1GLaev
 z447F4waQuYOWmZGaJWbbheRb5tqSgZRzU+xJ3QkHHWxJT8hC3ezNipsWJdwJnd6VWADtIRVo/O
 1gPJ8YWRyIiCqgIOIUIiiwgDfHy2s2bkkwAw2mCOge7lJTdWHhRIa4K3ZRUDRLXa+EOEefLQOFr
 dH3cfxTzqnYuIqlfU2ZJMTzLtHk1phyvHqVUfltjOSx97h09JbPThT5vblPVJJanywuz9wW46OQ
 9Z7uXOrjCI32k2Poqx9wSD6SRhPpTkTjbQZJqcLAkx2rHCcPkF5GxEE3zJIXN1s3eTOD7Idvly0
 hhuh5bqXvxZtEZy4FFcRZtz5PRkQnwYCug8SE2uPupL6shbtLlpkVjcDn2LW4/Gx+C5hx0pLnXU
 ZS3v2VwZhvG1BzjOIqA==
X-Proofpoint-GUID: F85eYCegCS4Y4BKyqO_hZWpaclFa2KOO
X-Authority-Analysis: v=2.4 cv=S4LUAYsP c=1 sm=1 tr=0 ts=69a8c72f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=hdDXuQ6OdnqjrmqFUSsA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: F85eYCegCS4Y4BKyqO_hZWpaclFa2KOO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155839_880006_40C9EFE3 
X-CRM114-Status: GOOD (  25.13  )
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

On Wed, Mar 04, 2026 at 12:21:56AM -0800, Qiang Yu wrote:
> The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs in
> a bifurcated configuration. Each PHY has its own power domain (phy_gdsc)
> that must be powered on before initialization per hardware requirements.
> 
> Current PHY power management assumes a single power domain per PHY,
> preventing proper setup for this dual-PHY scenario. Add support for
> multiple power domains by using devm_pm_domain_attach_list() to attach
> power domains manually, while maintaining compatibility with single
> power domain PHYs.
> 
> Enable runtime PM to allow power domain control when the PCIe driver
> calls phy_power_on/phy_power_off:
> 
> - Single power domain: QMP PHY platform device directly attaches to
>   power domain and controls it during runtime resume/suspend
> - Multiple power domains: devm_pm_domain_attach_list() creates virtual
>   devices as power domain suppliers, linked to the QMP PHY platform
>   device as consumer
> 
> This ensures power domains are properly attached and turned on/off
> for both single and multiple power domain configurations.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index fed2fc9bb31108d51f88d34f3379c7744681f485..7369c291be51aa1ad7a330459dcb857f5a1988f6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -17,6 +17,7 @@
>  #include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> @@ -3334,6 +3335,8 @@ struct qmp_pcie {
>  
>  	struct clk_fixed_rate pipe_clk_fixed;
>  	struct clk_fixed_rate aux_clk_fixed;
> +
> +	struct dev_pm_domain_list *pd_list;
>  };
>  
>  static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
> @@ -5348,6 +5351,16 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>  	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
>  	WARN_ON_ONCE(!qmp->cfg->phy_status);
>  
> +	ret = devm_pm_domain_attach_list(dev, NULL, &qmp->pd_list);
> +	if (ret < 0 && ret != -EEXIST) {
> +		dev_err(dev, "Failed to attach power domain\n");
> +		return ret;
> +	}
> +
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;

These two should be separate commits.

> +
>  	ret = qmp_pcie_clk_init(qmp);
>  	if (ret)
>  		return ret;
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
