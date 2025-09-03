Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 861D9CA1009
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 17:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbv6h9YW5miVi/aGAE6MgBszZ/vQD3B3Y4Fq5/OCwsw=; b=DzAW2bNLgsNEYt
	1y3pMZUFFRAeKTY/ppX8tFgWJcCMwzd14yoQy6SjKcHxHplKe8u7Y8vkDOv7pn6CMWyq5da6UQtY4
	UJQp+HhBkA3qd3r4THFpsstrgV/JvAPWh3u9dWjOHVZa54oWrxSwlWIRL9Z7Esh60nbq3CY9r+OLE
	GpAC10rgvRWb63sYaluL5Iwb0ITqZvWzK5WXH9IQzjNYc3BzOuWiHNW2qHVar/mT/oQDHi3S8VTrR
	LU/I6EBMtKf9akqQdFWmpV2NwFkwtb2IYeGjAC+4W1wNvcJt+AxwPCnD5z2xrzI8OqNBG/j+tNxGj
	rMO7c5DqegjP0jFPzuHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utrDR-00000007BOp-0HYG;
	Wed, 03 Sep 2025 17:24:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utngj-00000006cfJ-3Ud5
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 13:38:15 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BF4cv004699
	for <linux-phy@lists.infradead.org>; Wed, 3 Sep 2025 13:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+aXgx0C/TKBcTy6Wyua/O23sUvaZBDBg9e7hKnXJ9Os=; b=UpmHgTXV3+w3B4pt
	cREBVJYCxm0fGIOPXLriIEv6OMHG7Lal57rwNw+rbkwTCxBLFLJdPLdzXLiaUj35
	GcqpHQ92FITlQTgIY7urCVhiTjyJUOnmVILhH8Dgf1P7FdMZSbCIc4Nw4ancUIj/
	fDBk4mHUNyc/WTu87Kw1YwaFjssHcL1pVnnL0BYR/AK/tcJtfmfWS+sUpoc0DHsJ
	ZsVKGYTeG9J+x3KCFGj1so4SyqRvPZm/nL+IjU5Z0rJXw4BKysDU1ggGiuCGTdfR
	RjUxCgCcbI7OOwMYKFBkRQAJup95hfuAoAGVodfHlOBto5S+9tM1tB9ko0F4wBHb
	zHizJA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpc06f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 13:38:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b48f648249so3068341cf.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 06:38:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756906692; x=1757511492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+aXgx0C/TKBcTy6Wyua/O23sUvaZBDBg9e7hKnXJ9Os=;
        b=E99VKbnCUz3LExyYChv4IghDOAZKp2ke9ilEhp7g6L1bxM8yj0A+vvv79YXLYKC0DF
         PJoMHa0hvvr/gP3vE+WpXo4WGez/awkq6+GfmAPNsDsZRfFZCLtdl3qlTjKkElmegEvq
         AuOuozsHozmkyYG9oCgbcySgYTyIyOMOHkN6VhKZMYBOTBNl8xLHL8x9f+uR9zO63cQo
         MuvDfNRLscuIFpH9884+gvwI1mRMSOotnTi4USg5llJumQj6YrzYT7PK6HgZraGfHlb0
         14GYLB2cXAbG6DV97rBGvVxV/MQfJ22k7s/ykjXrLDl0gTjrjjRjCa9hPdAQLuBorGSG
         aCFg==
X-Forwarded-Encrypted: i=1; AJvYcCULuKtCxnbMOQk39+BKMVRleP1GuKvnExpTOKcRc1xFLEPoaCIyu/Q0qnfMsFyg+avZ0a71/1J7rJg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/KnPphBeZoIxHUiET1voxV/KWIt7tS9FO+28qvYpy1WKHSAbD
	hwJpmaHMO+Bq2yAXHrJ4K1PZubnV5QWNjgp3pIl5OU1Hzx0Z3rsa6WlXJze0JZ79qecZYWH5ijQ
	WXPjQ/nuYFx9Z2vHU41cR71y7JG6qKwNewuYX2TzktwsIMHc749TixqMcMcNCGxIs9u1f
X-Gm-Gg: ASbGnctmftHpkVC1ENNaowNW29LPUTYbjlJA7epMZkszkIceJS0s4QaQjeOZKr+dpjF
	pVZmrADdeIInyoV8rYbWpZAbfsOpXyBjd3SkSEQUvVDBQXE1n3XfoKwvSH5zJ82hyYXqiohuqzg
	wvYnbHSPe8bqgGeamsR8ixjsQdOE+Gl+Uh+VpITTEFjr9d66M7tbKDg4CVswk2j5IXy4KrWzRsG
	FSGXoiXZTA/QzSaUfo2z6Royp1uv4OaBIg56kSyKp7qQh2f5w6ij9m9fZ4URJreQ9ZGnhQ7at/g
	6OlaJBU176ITRnmvpdqfOjS6+FIfOXx6eSRylGfP/rg0KWiUudFbN4hF6m+WgO9ykzPFAlv7f/G
	S7DRvEeJlIVp7xjJu6S8hGw==
X-Received: by 2002:ac8:5e06:0:b0:4b2:f5a8:21da with SMTP id d75a77b69052e-4b313e1a3c7mr154164541cf.5.1756906691910;
        Wed, 03 Sep 2025 06:38:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHctp8klVVlJwh/I9Cv1/2OINdIX9gzROyxCMvF3SPTjSmgb2xzFihn2uTLcDdSBJMQgIRRKA==
X-Received: by 2002:ac8:5e06:0:b0:4b2:f5a8:21da with SMTP id d75a77b69052e-4b313e1a3c7mr154164281cf.5.1756906691437;
        Wed, 03 Sep 2025 06:38:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046aa92242sm149794966b.59.2025.09.03.06.38.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 06:38:10 -0700 (PDT)
Message-ID: <e6761fbc-9f32-4fb6-afc8-7f76b591453f@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 15:38:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qcom: edp: Make the number of clocks flexible
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-2-d88c1b0cdc1b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-2-d88c1b0cdc1b@linaro.org>
X-Proofpoint-GUID: LHyCLzxO4-wxklPbdJtI7val5pfKUC9O
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b844c4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=JahnCVLux6B-E1IX8mMA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: LHyCLzxO4-wxklPbdJtI7val5pfKUC9O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX902NzxAKjCMP
 5x+flEhhwXmSTa3/KCLzxVbjrTpxGQoDw1Wmfw3zVj9TIJ5T/nEPWVCoJjHuDP1EocLi1kEVRte
 Dt3meiwzIW9z4RhTNXFsNPZi+NmDOTGZ7k6U6Xe8Tot4QDukATDOFMBxV/AF6gp5RJaRuuTCI6W
 X8BHilYwPrzOdpNDc+dqfcjtgeFe58i6mKFWyIKr9uDqZz6+k2d+MnMNhYD2qxrgUxZf9B+sWh+
 35OTn13sFnDkLCFPBYF766kp2WnG84H4aRwov2ZCkG5PYGwt8tSrJAYLDm2kU07yLrEofuF4l36
 sNUNwfwhlWjyeWLHy/LFWUitwTBVgsneyRDyPbYyG8+HLZTlWoiYu5QVcfYcnQvAT0p2fHaYimT
 sWxYc05p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_063813_991823_3A6BE56F 
X-CRM114-Status: GOOD (  15.20  )
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

On 9/3/25 2:37 PM, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called refclk,
> while all other platforms do not. So get all the clocks
> regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]


> @@ -1092,11 +1094,11 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(edp->pll))
>  		return PTR_ERR(edp->pll);
>  
> -	edp->clks[0].id = "aux";
> -	edp->clks[1].id = "cfg_ahb";
> -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> -	if (ret)
> -		return ret;
> +	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
> +	if (edp->num_clks < 0) {
> +		dev_err(dev, "Failed to get clocks\n");
> +		return edp->num_clks;

return dev_err_probe(), also please print the ret code

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
