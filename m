Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70C23C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 07:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8PpefHGVSJMrh9I10U5+NWhiQFtPAoZhATWLECcAR4=; b=Hm+1JL+9J7sgFf
	Bk22RKAVCXjJN/u01bvDH0pwKECUnOJBAX5JAOYXkq2Zsx0vFE2Q4V4H/9GDD2f1D72Njx3mzU9AD
	4K4ELrfXqvMsU18acoF0IA9jbQccZu1xdCd36lHvfmOK2avc3RKAqefJRAxaXmVLsuvT8BUlq/pJg
	+bf2E/WIUu4bZwbTDYK1/cdvcrvuY2OpfB6puB1j+FbrgoZktIPdlqSLZn2k9Ja5tXC6mWm+nwJiq
	V09QfDt0ckF71Ajg/QMRog0Ryj3kVU1owO6QgjprKwX8T1P7p7Al8zRsFxqTScz6fnAM2jKgbo76U
	k+9akdn6ofdwSZVn25zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNAH-0000000GYhS-048n;
	Wed, 08 Jul 2026 07:57:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNAC-0000000GYeC-2pRx
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 07:57:50 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66842ksG1625499
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 07:57:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b7/2rDe+YZrShkh7k9aN4OtrvlntieYHsD2DsjmlTmQ=; b=PU8/vcfKX1fo/ZQN
	aSsgqS1xBjpwT50Ehq9MywKxYew7GuuVud2x+EJFdcWbhVt5gIgUK1FveHNMcJfA
	NZcgkHBdijXOthlq1zcWte0N1foQBZuYSZ2I70m+soHuyONBf43MpFPK+FhJea+f
	T5KhO3cwB0gbyyRiQ4wuG9uMO79Sb5KlhP7S3PCTwu5k8hPMwfiJN50+P4etLpJP
	RRReNGbtq38FlL//rHV90H4bgUka3wg5IJJufNGOpSVFGjUphOCbz6uMLPYSuwS/
	xonu3Z2oz+la24pdA+ftfVujCRexTKGd7P+AqdWHETwsA6vDZttUOPRwKGV52SCI
	ynk1pA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f95fd3cmc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 07:57:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92ec3146553so81644785a.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 00:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783497466; x=1784102266; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b7/2rDe+YZrShkh7k9aN4OtrvlntieYHsD2DsjmlTmQ=;
        b=Y8zITIzogPNTAYu4/b7x3SsyOOPGWlhLKjXXDCsOnTUyx20DohPfNoa6XwJ+rE7vu3
         XeDUMQxUk8hxOZVNd3ejjr8VVEkkI/W2j06HcN1pYd7VFFrZKgEDbvMBg6z+h1h3RDlz
         lAOPidCJdpRnZgScfrvMINlEM01j8Wh5zCMIS9h9Iq4Q6VdB6222sjPOydkE4mMylGML
         f+8ndjy/vr/WzDYDEHqik3uGVgLFSqhkJvOueek40R3EUzncoRFgG1Ym8Vcp66ZQk1Q/
         1Vz8VUiC4Q+BssQe86ouZI9/azvAE1VwfM7VE/xi4LYWVZC4EygZ9cRwd76w5WQwx01g
         gGTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783497466; x=1784102266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b7/2rDe+YZrShkh7k9aN4OtrvlntieYHsD2DsjmlTmQ=;
        b=LRaSWbZEuX3uj2PG7l3YKlCD2k9KOHEG1KbSFTrjhkz+WsKriK3wttr+xH4myy0uOy
         NiBjfmH+xH1NEeXat37+A+sfyxlAIxrslSVQZKOW2BKWWZZv9+rTjbBgJRV8PssjyhtI
         sQjcEKkFh/HVEMHZQPbnZXcTCgSl3kKEYOzA63j+VgkFZ8QDtmqxVghG9qDeHkP7eQa3
         TkKhsmp5njGXRQagx5LE768jzJPZd8dRA3ihuwVleElxBbDIsxtsMieRQDbN8uE7oly9
         v2Uj8kKv6s8mtIgvjo4CEsr/s7ND4VXLy/5ycpYwAe1GpRRj/vdkf+PTWJZpBx1n1+xn
         PUJg==
X-Forwarded-Encrypted: i=1; AHgh+Rq5vS4/eEeB+iZNEAb3lpef6j7b9SJCiSc9UHnPQhQP/oeSclMhxYZPpZebNVAiqQvf22MO3CtH7AU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxbB+ODB1rAtzeomfMZ+riCFt+3nHwCUqywG/Kn5igC9LMAwnlK
	HrSzxcb6etJ3jz3YSzOI6HbG3JlQn+2zw/pQ3cNEEU9iJ7kxTQB2wI+k+HmL1h/jJfZZcbtNo5L
	1c4bk3BWKR7IvdxYxbWO5Yaa2Icotvss9ynEXYUxYauVpVeDh38Wd9S2I20m8PtzkAVwaoCtOJK
	4VIB+O3w==
X-Gm-Gg: AfdE7cnNsCKDMKe+emsOhF7d6wzHYiUfKnBmRsQ01BR46SOfzRG+gIO2l24NvG1KbE/
	ccOVYZGSD8safhLkftyaZivv1Oi6e/gZQgi3QK4yZ8d1C8Djx+RNpxV90il/WM/40hjlScWzwKX
	YHeULzUgWOU23izrCWIisiueN55IG+dI+acF/o+/LKoIH5hHd3w/oKnFZR3QTJpiZg25PInvaHE
	ovnLpq8o3L8xbeEMtBF5XlRnZh1oE5hLNFmsdxtPWPBlDSVT5hjPWL9SVeYnyzGtwkV3/NPU9qB
	P1ebRAwgnvHSFg/lxbpcAOJxKbvK/oNmOvz/lYGUMC3UexPcinu1cKNrWUUFrOysKwvPi1XyGJA
	DUyvlQvIysjSGkU7zWUtTXz/fnyChL/lScmNeSjhj4yX5sTbiGA+rYjFOTSnNe1AJFwaLSTNe+w
	==
X-Received: by 2002:a05:620a:19a1:b0:92b:6805:9188 with SMTP id af79cd13be357-92ecf8cbc90mr111817785a.64.1783497466432;
        Wed, 08 Jul 2026 00:57:46 -0700 (PDT)
X-Received: by 2002:a05:620a:19a1:b0:92b:6805:9188 with SMTP id af79cd13be357-92ecf8cbc90mr111816385a.64.1783497466038;
        Wed, 08 Jul 2026 00:57:46 -0700 (PDT)
Received: from [10.111.167.36] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-92e90b80785sm1347514585a.3.2026.07.08.00.57.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 00:57:45 -0700 (PDT)
Message-ID: <402821f9-f566-4f8f-a839-95e419fb92f6@oss.qualcomm.com>
Date: Wed, 8 Jul 2026 15:57:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
 <20260708-x1e-csi2-phy-v9-2-0210b90c04cf@linaro.org>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <20260708-x1e-csi2-phy-v9-2-0210b90c04cf@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDA3NSBTYWx0ZWRfX0SuaDXllG614
 xcKRTj33dz8sRtEnw0wgTJVc+fHeI2dCfa/ucd5F4OXILNlMURmQwORsJdEWRSQqobUNRD4pThq
 1qVxVYlsR/Sc8OYBWMCDd5TnbEjWKzagODsuAfdlc26mVCgSFR0R1GYIywuz/WaZI72ohpMaXLu
 R55BmUw093kg+9eAxlyREj99faJOVhQmy6w1ZbAoBJ49m3SAkv6U64mpRau+MgXWwGTNHbSQS98
 dsNKTkP+snHWf7wwQi49wb438Lt274CjyOUqikcighEWUmFg3CmCMh4jFxQ0qqlpkpSpc4Id3D0
 jDMF7/d+nDY9ztT5LZxMiYgoqter8SYLO8EgRJ+1baBLfaYLQV0F9U0Nu+HSdq9lQqtWy83H7JW
 CnbbIh7okUsJ85ymqVZpKOKizW5zeETlR2g+4wzdP8dCwlNQfhkAGDFjRIJBXnOc8jRuwVmIEUZ
 SaICS/meKpjsyV8qvYA==
X-Authority-Analysis: v=2.4 cv=VZLH+lp9 c=1 sm=1 tr=0 ts=6a4e02fb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=QhmKzT3_Izh8C-SyOaEA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: mdRC9P0FBflM860UgLFcMGPTwz8hfMSS
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDA3NSBTYWx0ZWRfX4cZ5ca5dRZqM
 VWeqTq3DHHIe1DJQwl8vHtAXkyIg+MouHyJgrlVJcu9kKJW+Y3I9NgxCovhoVkz4MKzPW8SDtiY
 EobY+0EeViJjSl/+S1QMei/z3D7VBHY=
X-Proofpoint-GUID: mdRC9P0FBflM860UgLFcMGPTwz8hfMSS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_06,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0 clxscore=1011
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607080075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_005748_931419_B3380DF7 
X-CRM114-Status: GOOD (  12.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Bryan,

On 7/8/2026 7:39 AM, Bryan O'Donoghue wrote:
> +
> +static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2phy)
> +{
> +	struct dev_pm_domain_attach_data pd_data;
> +	const char **pd_names;
> +	int i;
> +
> +	pd_names = devm_kzalloc(csi2phy->dev,
> +				sizeof(char *) * csi2phy->soc_cfg->num_genpds,
> +				GFP_KERNEL);
> +	if (!pd_names)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < csi2phy->soc_cfg->num_genpds; i++)
> +		pd_names[i] = csi2phy->soc_cfg->genpds[i].name;
> +
> +	pd_data.pd_names = pd_names;
> +	pd_data.num_pd_names = csi2phy->soc_cfg->num_genpds;

Please also initialize pd_data.pd_flags.

pd_data is not fully initialized before use. Since pd_flags is never 
assigned, it may contain stale stack data and affect 
devm_pm_domain_attach_list() behavior.

> +
> +	return devm_pm_domain_attach_list(csi2phy->dev, &pd_data,
> +					  &csi2phy->pd_list);
> +}
> +


Thanks,
Wenmeng

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
