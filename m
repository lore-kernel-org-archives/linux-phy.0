Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED6B71073CBA
	for <linux-phy@archiver.kernel.org>; Wed,  8 Apr 2026 13:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpyPH+YQnhNoNXnl58c25p8HwRo0dBecEMZzbLQz4rA=; b=ZR/fYqFpEu1R1B
	nE2h04rpVccY8XsSxzp/TjP5rQGsqr/Tu2g9VUxpr9HlLhp+0DGK6EZFbVU/Fs9MvHOtwJ5q1THeq
	Kh2KhsqeCL86/v5HogEZp3dOraysnLHvRzKaP+lwS3RCWkpel1V71NUpk1Ifof+9W+B55fubEnGC5
	n69F1KHHe7x6Ndzrwb5CrUFuIyBPgwEfTApev9z8o6OwY0KmmbctXMayvAoNr03pNyT1aSp2L4zbA
	IOQjvOnq2qTvFSSWXNa5mpSgWzbR7zf6AM/UVI9f+/OGa1Of6b/idcLH/id3zeDMPB9qAlihACKqB
	9Y7+fs83ckUCHAO2DjVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wASt9-00000008uIE-2sx4;
	Wed, 08 Apr 2026 13:24:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wASt7-00000008uHV-1sRp
	for linux-phy@lists.infradead.org;
	Wed, 08 Apr 2026 13:24:10 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 638AiYw2262958
	for <linux-phy@lists.infradead.org>; Wed, 8 Apr 2026 13:24:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oGr79M7gQsrIfszEgdj7iKZUWTCSVw48bv+SAF4EKvM=; b=hV3H/GLpUcz5n7Ws
	VA+nLZoULyzv02XkfGa4XoDvamnIyZ/ecUC/rY9SHPYtaUhdmvE1L/LSflZ7ASwP
	oTEfRu3zSQPXlmpSYRVKwMfm/ipMS8puX3ECb5qu8u5pf+KOWvVXfVpUjIEhQz9/
	hur+Jtb3diustn5N5JOyeeUUnm1krb7KweXx8ZjxDemDEnnzgo2WhNrCroYIm7ct
	Kswuv1oYSVqP3SjLK5opUaB0je1JB5z/V0Y8IVDWJsp2VIr49+QMtpdjnkOLcOan
	ZuYaMabh7zs78R8lXMHahDivWwuBZEw28fKEIffNkfEevQz+Zbk3YzJ3dGonXKUh
	XqmL8g==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dd7t23gmn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Apr 2026 13:24:08 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-56db538f3a2so260534e0c.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Apr 2026 06:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775654648; x=1776259448; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oGr79M7gQsrIfszEgdj7iKZUWTCSVw48bv+SAF4EKvM=;
        b=bV0t4k4TwqUL7yNeLAlJqly1bbKFiGPWP39yAh6ZfMhJC7OUMxYeYoxUDhFPLXueFT
         e5EY8MJ/NHdsXC/XzHANrvsoEEIECEfLGtg+Ul4S+k99Ue86hV4v3NEjguUuRyLJ4mZb
         iz2zPJPt2vj6cvYP9NitmcznZt88CsCPlGo0PAXBhTM6xlpbU539U86eDx4LrsKzCl/t
         mFp/a7miiVdmtklwKZaMNMXKfdzHBJR7NZUpjrIC04B0alIRDDxC58qYuDf3qdKIZuwM
         sQxWaoNO/+ayPftaSXc4F/8eze5yOkcKJlS0fqD56YMj7Z1Dz1LfxrPJachoe+539EIl
         k9ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775654648; x=1776259448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oGr79M7gQsrIfszEgdj7iKZUWTCSVw48bv+SAF4EKvM=;
        b=AiLnEwgmmr032IDi1excNUEAVuRI8h/oue/w9KDunxA7LcjQ0+ZCNj2zaTu+jPLJGw
         zVYLrSRUsdXPO3kTffuPkp9Y/JnnHuscCPfoR9QP+Y7lW/iEuW8XCm4vLxE7DO929THu
         kq4iA59KU1eRSgrEfd3rh/PualKsibSf5LKSwotivwwuqu+cudFCn9nM1SNf3qoYkkq4
         tmDrGF1e9lQ9S9pytuR+tBz9NB7In22N2PiomUOiNKsP5LnyJTEDs0m/fXPfsxart/Y1
         Ta0DHlQb6WKZj702bXA3q80a26QqbwH4ybBonUWQMaiaAAjpa7MWcqdezrho8+BEZlqw
         tACA==
X-Forwarded-Encrypted: i=1; AJvYcCWjJ/zB+pix8+hU1k3jI0N22NJTbLKoIFvsMoS4qMAjNiDCniR99Bsnk5PqS/68rt2x0ZhZpnhlCRU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwH1gAM0iNO1+m8Ea6wr1xmTC/xvw9vI7Cce8CJi75igGHOYxYI
	LGFiWqgnByu+2evZrmcvPpd99O/0oLZ/wIfCALMPpR4KHZcrZD/0yiPj7ssvJatfG172yY9XulO
	mKTccV7cA+d4qtUxgdilZBbUDS2EJ/YdJWF5x+zlRGoByMU5uUiVWyCqwt4piSpTZwEJ2
X-Gm-Gg: AeBDiet7w6wQqG6DOU8mWskW/3JNRiq4bvNHVHcRdgZ3M+Ejq3HT7XEFVK/Z1WKSJHz
	o6qYQWI9WVz3caF6sAbvHGc+1qCey48CFrSgOtP1dlQcCEbfXtmURyXgE8Uu/Nwc/+fEjq5r6I9
	5xXa4KOh6N6pigVQVrCSCwQ2DCqywJoThant89OoEB4B84VDeinK7WEkFZW/VAuXHuUzwQ0IPyw
	j5LfNiFMR1pHQVRB2cM4YoFBMkwDJa+IT3kUzkG0y0YAhikj+Y7LpDqak0VZw/88Efxoxdi/mmw
	8ibnS3tw3AwlJVYZZO4D2Jv1rNthX6F/OwJE3Gs0TchpGatk7Hx235JHvPS6z7bmYy8CQ6xcZYP
	LPeOStEUni9bqbW7d3rpYvl3hrAhjDpjzXqIO71hffJ8YYrCqEf4mbANwssbY18kV7Ev553aEmO
	RAQ1E=
X-Received: by 2002:a05:6122:6584:b0:567:4293:8d38 with SMTP id 71dfb90a1353d-56f185095aemr784094e0c.0.1775654647910;
        Wed, 08 Apr 2026 06:24:07 -0700 (PDT)
X-Received: by 2002:a05:6122:6584:b0:567:4293:8d38 with SMTP id 71dfb90a1353d-56f185095aemr784065e0c.0.1775654647372;
        Wed, 08 Apr 2026 06:24:07 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9c3cff131csm650248866b.52.2026.04.08.06.24.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2026 06:24:06 -0700 (PDT)
Message-ID: <35c2fb30-659e-4a2a-ab06-498dbd288cd9@oss.qualcomm.com>
Date: Wed, 8 Apr 2026 15:24:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: m31-eusb2: Make USB repeater optional
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
References: <20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=De0nbPtW c=1 sm=1 tr=0 ts=69d656f9 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=TBTR2SLNknTDqd2QJGIA:9
 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA4MDEyMyBTYWx0ZWRfX/p1w4G+4Y51p
 A4RPC6xKXWcpd9zDfAtbnVoWpBSW7a0UdB9sFQffjHX+49O/p1Wq/cIjuFmflA7cLM8VX3kkqcX
 6mjqTQfeADqcgy79LPs515Lka8o7sDMOQaLum1mVjCIP79TcyK+RbPKxIiBTYCrtowNzwgJxPoQ
 bpvdhE+RQUKOAnRswAuFh/zZ9adE+Y0HLEVGB6IK623fHUF7aQPYxaA4oBVhdgjx9rM62QtmzWO
 bPiOctkTq6np/azUdG4yE3FSGhCIdfbg/0jv6WZqLuQUtRDt/pOtmxJbTICy1M0Z+f5Qh5WlB4G
 Q9rBKblXHwSXtZ5mt2e4oqj7CpjUvp/n1C0dZq5hMdPUBzJcCynsxe8W8p9CP30uUPbtUnkAMp/
 kXrRAxZeFWTs2eTuav6/oJl6hmwz4jtC7IuQFe3Z+8b4jlJ9a0ugOdTWmWEkPtktEyze0b2sy7L
 Lldkvgg6uNQ8YUrc2lA==
X-Proofpoint-ORIG-GUID: yK0XCLlum5TlQAyKvT3SnNuMvWI8Bi9-
X-Proofpoint-GUID: yK0XCLlum5TlQAyKvT3SnNuMvWI8Bi9-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-08_04,2026-04-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604080123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_062409_495309_219ED082 
X-CRM114-Status: GOOD (  24.59  )
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

On 3/2/26 9:34 AM, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> A repeater is not required for the PHY to function. On systems with
> multiple PHY instances connected to a multi-port controller, some PHYs
> may be unconnected. All PHYs must still probe successfully even without
> attached repeaters, otherwise the controller probe fails.
> 
> So make it optional.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [abel.vesa@oss.qualcomm.com: commit re-worded to reflect actual reason]
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

This is a trivial patch that fixes probe errors in some hw
configurations..

Can we sneak it in for -fixes, or is it too late, Vinod?

Konrad

> This has been sent initially by Wesley here:
> https://lore.kernel.org/all/20250920032108.242643-10-wesley.cheng@oss.qualcomm.com/
> 
> This is still needed, but for a different reason, so re-worded the
> commit message to reflect why.
> ---
> Changes in v2:
> - Picked up Bjorn's and Dmitry's R-b tags.
> - Fixed the subject line, as Bjorn suggested.
> - Link to v1: https://patch.msgid.link/20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 95cd3175926d..70a81ab2482f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(phy->phy, phy);
>  
> -	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> +	phy->repeater = devm_phy_optional_get(dev, NULL);
>  	if (IS_ERR(phy->repeater))
>  		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>  				     "failed to get repeater\n");
> 
> ---
> base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
> change-id: 20260227-phy-qcom-m31-eusb2-make-repeater-optional-621c8c1c0354
> 
> Best regards,
> --  
> Abel Vesa <abel.vesa@oss.qualcomm.com>
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
