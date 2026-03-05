Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D9AFEEF325
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHpaSt/JxzIKOVmdLKxL41pktcaOf6bVU1GkPlT1+c0=; b=x3wr3wwQ/htKpU
	8OwHlN8uPw3UvPOw6pPT2lF69S9mclbhdKSBqSV25cljibxPX6gsu05PNX7eOeBY0hCI2adFVyjWB
	rzIzMujoB5mjL2kI+IUTtp/3CPBunwMTOhyqVDB3Mjyrk7sobjswSIVCE7Bb3hAE5RMKXdM+mGSGs
	Vu3QDE/YYRbwH/zCwjIbUnyDx/iatLCIm7q+CnYjYRgTuhljmWkwjH1pNw8ZP2p1rs9+SDcC8yVVb
	mh/2ZY7CSjUomG5G3emd+uOFLcl6bsebACH0MQEY5VJgBhq/2bpgBMFi8PL6ZlIXvxpYBOqhab+tK
	e0ID5rziNiwKKlgTa4Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4FK-00000001DdG-35uR;
	Thu, 05 Mar 2026 08:39:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4FJ-00000001Dc6-2Fwq
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Mar 2026 08:39:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=; b=RPnzPvEgdIAKXF8oWLh3762hyG
	pH/JErA6rTJvIbNHbj/FbK5D2cBkjFXqFebO/jVQePFw9UmlqWW7uZ9ad3InnaugW8c49SeUGuP9X
	/UJjoUyOm2Jh4a8gXqQvk9AJKMtd0l9KolkzXnqaBFs4uCc6eRNTd9nCP3uo/ODRo97dUQUp+cg6K
	26HNNzy46BpVTOOJNF3TSmem7rtF4+xM36LCu44NzmCRd656vIkhBa+MRs4OA7iTQ5Jl3zb+FhNP0
	s0m2eN8yGJ9KRAWxy2jtB262hH+Yl7stVhMhYRLwIeJAPqndzlW3/q4k+tU9p/97bkLF/TEuJyfXP
	UFbcawYA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4FE-00000006E1h-3sj5
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 08:39:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251Bohg629141
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 08:39:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=; b=Zhs1szgRs6PvG6yC
	/K6l0Og7co3C6ED8icQT7ngtsI9G5Zp17IaIYa/MOFJSyTxAUHo39qtMLOBGQhpj
	JO9fE/F/E4F4LvhAKnAlFKn+fH9sEpkGqfNT9M43WTCJkjqaFeUzfOGpTrDAGNtC
	tA5poP4iW9oFEFa2er9A5XyBDJ8CedmbmCYM1jjJmOXgrD4UqsM96/EbUTiVA/x+
	+Hq4ib0d4uJFejDRNFTAYPM9OxAzG41cfjw0IJBJVDWkmbFbGS1eLwFkvUDxUI+x
	i9yGzbk3U3z2KxBfUGbK5GoyOmpZPSUHhrYGJ9ek999ywA1Q/YTR3XTo5MWWFrPw
	1lqwYw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m2ha8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 08:39:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50dfd542so577163385a.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772699980; x=1773304780; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=;
        b=Pug3WPBe+xMjZV2lhuqYSbHXUVCZet86PsQZiTY7sG1NRr1B6N2otEtR5RrPVnxYB0
         r5dTU66aV/1c54vYFHua9XV7RiJiHUBJj3ot4E9rS1GBoiJwCU/lhLFM9e3UPv0hzfCm
         E5Q9f7HIwiwFDFYbQ0oRSaSvqA86AwJ5/yIQpIfo0FxHRqValVdImCI6GaRWz53JMkZ+
         sf24Tn3Lq68hl/PAzBzL4C7d55TcpDC7gQtN7nBzvNL9T9q8GZ6j8xr0Is9GFTh1bmry
         7KDBj4DM+ubZ+pqTuohV5/jRHTQc1sgXa0zlAmG/s09CrSJJnAlGl96ry8HbZekBexJH
         Rp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699980; x=1773304780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=;
        b=siKqFjXxiy4Wqo8m5l4aj3AAGiivEGG52d9HipTHQbZOFmCJMvT3fYbWRZ+tLKxlB4
         WjZa+lOB/NnYAR8JJ5U0xIlimWVuILMO5IaB2I/fh/hRzyBaNQOuL2G1Kg9CVbjzKFfI
         t9ujN5TmNqmdRUc2NgLDUv9PDP/l4qZ5dpOVHkRwvg42pAowWgzhTCgHyZrKMr5Cmxj7
         8XLfLzHmWTTqibabugIHJuxye8XcWUAwrcB2+CzvwhbaZ3llAkevxpFClPsfgYCjzCLY
         c73RXJLFQkw7pep1qgOchcmt0KfGI72ETXkVg9dJfn54ZuOIgNKAVuM/ACv7Mv8Cfn0L
         CheQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVLhlejZD2V+WsPLyeqqxxWVecMp1UdiaTR9BUJwaSDcPpZMvUYBwAP9jolLK8Imiy6II/krKTwio=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPjV8FKpqu/CGPwWjT949Hf6Fy1WmsUOjoxZNCEO9NQs8lttoW
	npYEVYPyScHjZndNqdgD2vxs+joLXpjFXAMdwn78ZmtHsJ5UQdEVt/oHpNcjBW6yhqvJlUoLi78
	ndjvKFGUjv7Hgl9ZNq8h8lsCeKcgHgybfC1J3dsQwWcb4ljWs83qiM2f0mxw5bGUICPPi
X-Gm-Gg: ATEYQzxxXEsBS55H2+9Ii8PjTRxo0Mjf4S74ax8g/p0AktVkkMPLyU6aglOJKvoljCL
	MqDP5fQP70v1k9UakOZ4MXWZnoHjypC9XvgFB7A6c6Froeppcpr5BJOlhVZsuoPwuKyIawLHe8u
	Zka+01OWcJQovYg8ink86u+cSfmQ29OQwFi4Nr2FFGCB9NACFoahQwKx/rLMOXbtVjE0R/F7rO3
	4SVhkgj6zxMbWdqgRq9ZN+TXFLSPjLgRzZnWoL4BEG3CY/seqPY5g5fDZXSxFaFTK3tt79tFYbi
	sBN3yJ5nFrHA75myzzywYc+KA3bvci1GGp24ynmyNolMhD/eYaWLLUEF7dgLkG/Nq1p08VDmssJ
	XYBtEtHcjhX/U9FMsoXrb2SgWlOrQ0fpfjmSDPRUJnucQ/VFa9fzv4FdUK+Enp5GmkC9rh3LASO
	wVIu4=
X-Received: by 2002:a05:620a:404c:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cd5afcdcfbmr452360285a.9.1772699980156;
        Thu, 05 Mar 2026 00:39:40 -0800 (PST)
X-Received: by 2002:a05:620a:404c:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cd5afcdcfbmr452356985a.9.1772699979710;
        Thu, 05 Mar 2026 00:39:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fac06e3fasm6657504a12.25.2026.03.05.00.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:39:38 -0800 (PST)
Message-ID: <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 09:39:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304175735.2660419-23-vladimir.oltean@nxp.com>
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a9414d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=8AirrxEcAAAA:8 a=GJStlgXwfe-SXQdWLvAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: t6SMTF-XKc2k-0CLKSz6Uc2ElKRTUNvt
X-Proofpoint-GUID: t6SMTF-XKc2k-0CLKSz6Uc2ElKRTUNvt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA2OCBTYWx0ZWRfX3olQZNFAesuM
 V+jrK/3MuueteE9yR0z9JVPGf3S2mPsE/TvxViXy9rzalZdUAxo7rYmKA9YN1CsQ8+cs4lzV+Tj
 DXPulny+iDqZgvYfg8Bxdg6MOkl4MyGq3+tXWe7kV00arXk43umJkOC5ih3busQg+l1Af4m5+3f
 kC3brk2DTLb2ONiDTkShWR6fNzjI/MiGO4w5Hr2Y7U1oZwWbEP5MzsU2z/7pXjg883DHuiAn2s+
 ri7fug9ZCzfuoEv1eA4ehI6TBdkz1eqhJ5mLMVWp/fmnn3o8E1+S8RBIB43F3UYMjaMrpkQGDqH
 z4QdMyqm4EDY/ZNZXNjPIgnf7dbNqPa+6NO6xRdFAW9tAZsXTDmKh+Y/ULOUDq58Qa0tkR/b/yh
 e+9xSefwncd1z6KykNOHd9kbIpTf9/ZDQw4vHlwHPmhpIN6XHoAo95LnamG4yfhr3AE3ZTB1tqT
 9ZS8+GCv3LYwt9BeMSw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_083945_335671_E17D248B 
X-CRM114-Status: GOOD (  18.96  )
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

On 3/4/26 6:57 PM, Vladimir Oltean wrote:
> Some pragmatic shortcuts are being taken by PHY consumer driver authors,
> which put a burden on the framework. A lot of these can be caught during
> review.
> 
> Make sure the linux-phy list is copied on as many keywords that a regex
> can reasonably catch.
> 
> For simplicity sake this is not perfect (devm_ and of_ are not valid
> prefixes for all function names), but I tried to pay attention on
> avoiding false matches on things like:
> - drivers/net/vendor/device/phy.h
> - include/linux/phy.h - network PHY, not generic PHY
> 
> So I used \b to try to match on actual word boundaries and be explicit
> about what is matched on.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 55af015174a5..bdfa47d9c774 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10713,6 +10713,7 @@ F:	Documentation/devicetree/bindings/phy/
>  F:	drivers/phy/
>  F:	include/dt-bindings/phy/
>  F:	include/linux/phy/
> +K:	\b(devm_)?(of_)?phy_(create|destroy|init|exit|reset|power_(on|off)|configure|validate|calibrate|(get|set)_(mode|media|speed|bus_width|drvdata)|get_max_link_rate|pm_runtime_(get|put)|notify_(connect|disconnect|state)|get|put|optional_get|provider_(un)?register|simple_xlate|(create|remove)_lookup)\b|(struct\s+)?phy(_ops|_attrs|_lookup|_provider)?\b|linux/phy/phy\.h|phy-props\.h|phy-provider\.h

Would looking for the devm/of_phy_ prefix followed by an open parentheses
not suffice for the 'has function call' case, instead of listing all
currently present exported functions?

My worry is that this approach is overbuilt and absolutely no one will
remember to update it

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
