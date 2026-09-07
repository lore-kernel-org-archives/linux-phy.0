Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E39C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 10:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iPGiJLG6xMqV4YK7jCr1T5blniWP6FqNtS0UncWFV8=; b=c79qG1P+frUPGS
	0a10vphA+0uC/TYBLDEq+fWGxISjmGv42+9gmItIkkGFi0CGRhiyxvx1mW9VgPTLmx4t7cFFNVGFo
	SlyUHb+2cruw8K7cY/+gFLCroWVYGSeYHnB61oXN3euCcT2iO3Pq+oiSgas1DwwOj/+rjIwEvMxuZ
	US3pKJxq5psmAHJ3gqppP67sMJXrO6P9Zz8olmUqYoClEJ7KTruF/JtoTQ+LGFa06pktM3Y9AHUbe
	fVWFyuc2ehLsTXIlm3jfXs2YUFr8AJEDtAtmvK6gwGOvP9k6CxDC2uJwHwwzE4dp3j07tldOb28PY
	GArAUv78l2qcdYGy4WeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X2A-00000006aQa-1XjQ;
	Mon, 07 Sep 2026 10:57:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X26-00000006aOu-441k
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 10:57:05 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 687AnRVx217665
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 10:56:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S/u2aOnm7jMdJvz7fdHpTftANtj5i2bKRGQOMp2ZeKc=; b=SMDs+HB5G3BJ4Haf
	jEPFDlTrUrnXF7BWyrIGYFivDdaud7fvIL7+z8AlFDabEKQyYfBu4fSNhq4yl1nZ
	EIOtEI/8q3+7EZjsLZEF3j2Z03Ahc03OhfzaQ51c1UU3czOPrtrOdnj8ekouxUeC
	jPLaA62Vlyo1Nbg98zcUOiGEKCDXdxY94gfO/FxubMzhIZKCUbNWJRdYe3RmJzzI
	2TTJEgShVm9J5zEjKcCcjtb6jSA7lGelod47u9n9QHQB6mHPHM0x6urthO99O8oy
	YhC4FGmDDfOf7c1BqNP+efAqqqluBIu65b0AeBM+P8Me5n/AiHI0Py2+XWNiFWKp
	SgCE+Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghtdqgf7n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 10:56:58 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc4216aee8fso4766916a12.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 03:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788778618; x=1789383418; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=S/u2aOnm7jMdJvz7fdHpTftANtj5i2bKRGQOMp2ZeKc=;
        b=b1nbeL9BD/4hsmvxARwF+jRQ9vN8ywk7WqEBqLBIfY7Pa0sgIPigy09pw/aGt+dMeG
         S3FyKV/F1TpF3JdGI8JA3h85DKk1UHTYGJ+fjnYEZkLEin2qTQ71e3U6348x7xynUQXv
         bMR3M2ldWpWjrA80BUjXf2dxnY47PqUd++I+qKPic+BRiJ+6anX1QWSehbFqDOM4qI89
         9rvYyp4hKywU5h0yTA6L3U3XXALpGV14cLlniC5Ai8vydCiRqMvdeMu6mrch4PnyGoex
         Rg4LnV94WhaYr7LsO5dF3ygJnzhaApWmARK+d+cCyscWdLBa3Dq7GkaLQXRYSi7zW4i/
         SQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788778618; x=1789383418;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S/u2aOnm7jMdJvz7fdHpTftANtj5i2bKRGQOMp2ZeKc=;
        b=PiejlgGqyhmQA9JVYLUjCtfSYxc5iH9mYtqRmoDqfjG0FCpx3Nc0EWogIgvOvg4BgM
         C4GxqsqU4/OVi6pRIWePkY0W+aOJiUqYZYahgt+Bofh/P3HklsX8EExryGnzzcG3cgUj
         Qk2P/dXU+Cm41XeC9JXKdrX+xWq80zhh5uy0eTzBR2AO7BpBtRhEZ0kQTbyQ4G2lzo7J
         NpoNDRkwMT5HqtHA43/8FCnSXD+8TpnexBd9yzkjVHllbkqmuUQJHFhdonnMrl6v1MbF
         GN1NWWp4su+eZplbe4N2UIMh6Xk/6dJzlhjxxeWHhIQgVfRPsVNyyfWBPIy1DusyJ8xB
         QZng==
X-Forwarded-Encrypted: i=1; AKwUvBzwkC0gHyTMKj0lW7SLjKef59mgpkW7KAfKtkerx7c6S/cW8CMtTQE3rOnsGSZwL0Al5bodWRqLark=@lists.infradead.org
X-Gm-Message-State: AFuF++mqKHsmvaRLBY7hMjKVdXmpD+7ad2/bQFq7CvFC+GbMx3yb+zNW
	JoUnBPvp1g05Qxs72GcWrgNvPqUmPGQpTq9+XFDMZfiOwEjlbRkCY++rDzXO42/FYVNXxF2EiyQ
	Z6NOQKD59BZgq6B2F1phdUVMKRu39JJzZXVEH0IB2V014yBN7Of8penMKdOquElcjifC5
X-Gm-Gg: AYBFou2oA5xuu6NgiXv2smD+QJ/klb3Fdwdh4GGFk4Ihcg1alPtXTuiatvB/b+DVN6N
	UZG+6UX1UTlEVnD2+hu+QErqL2v1Py51Lno2R4hIIel9MPWIdC8FM6dlm/Ibqqm1veRUQHua5cy
	Ow1v43XNyRRjle1PNf1n8Nmelq7jiEgKkJh+PuHFNCYZffvzH6WygzsICaqxCl/PJ0hom/1XgX6
	ZKBI2uhCsiwSnWJcVB68dks96wfZNu6P0YfpdhJE1qytP4V7rETNEN8424NrWk5kEgnym0n7FlJ
	FcHXCm6j2hncq8H35sbM9WS1T3aTds0a8H103EKK0X7Ubeu9kc1bDJrmOo3H/wRntDipjmlu3wT
	ZnmmScb2G/6Rt8HE+M1V0VpWMzpoZbhOX51vKt4RmJMZ322dcGQvgXAAqwhgGnkQ0GPPIvCq5CG
	6MCq0jrCAVfhnOVM7IAg==
X-Received: by 2002:a17:90a:1189:b0:39b:61f1:8032 with SMTP id 98e67ed59e1d1-39b61f18060mr6977291a91.16.1788778617633;
        Mon, 07 Sep 2026 03:56:57 -0700 (PDT)
X-Received: by 2002:a17:90a:1189:b0:39b:61f1:8032 with SMTP id 98e67ed59e1d1-39b61f18060mr6977214a91.16.1788778617136;
        Mon, 07 Sep 2026 03:56:57 -0700 (PDT)
Received: from [10.79.116.160] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339885d29esm30014762eec.2.2026.09.07.03.56.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 03:56:56 -0700 (PDT)
Message-ID: <97360c1c-f573-48c5-9917-4bbc34ad394d@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 16:26:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
 <20260907-glymur_camss-v2-1-75f7982dc983@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <20260907-glymur_camss-v2-1-75f7982dc983@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDEyMCBTYWx0ZWRfXw2U1j+HAehxx
 fdJq2ghNfi+k4nTHdPkn+w5UEogxGvyBxY3bzQuUHPeKicGnP/uz06ycYdaSM8z89eJVpBAJVPu
 cY3broklgzNoWsHz7RCp89NO6Qs6Gfu8ot9h6C07/iO9gGN4t4NKclFNxmReRJBwoH0R1ncXhTF
 3r/xNsNvJWO66Kupp5114J/aUXgff97MMCuiZUIA7EnWj3Ui+zH9pS/qEP3489mYEB5xSCcIdi/
 AtqJw5Yi/ctxTZwNeQ4TSy3FbH62FDdDbd48l2u+zlcbAQjUi5N0+0pvqrYjWuRVcBu5abonS8I
 +1x5vyJUGnPxvfM7lh6ohkNRMGAQi3fRyjp1Jir8IIRAJio+exV8TNz83adLss7oEihONltdfuS
 1L/ecE2HQBj1cPo161MyY+Ye/HX0ecx6M6ZdqodNQAPRc3Ob7TsAwgot1jnsq1Uep/YPQ5jdvco
 0efghCI4U1JQ9iHdt+A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDEyMCBTYWx0ZWRfX/2Nxs2heIYk0
 HVHgwXGBihLZ1ezIxX54CFe2Ofk/sJpYN0LycWLyIHVOPMUdF6RzDkCmqTYVPD8FHmNWOtfkf9b
 6eVb5zwKxecfTegKBZgjBrxbNwuQNt4=
X-Proofpoint-ORIG-GUID: lpLkjmW00LfTKUVGRjKPK8_bRzRpHK7u
X-Authority-Analysis: v=2.4 cv=U6aiy+ru c=1 sm=1 tr=0 ts=6a9e987a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=FCQm1kSmxEXMnWVgeMgA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: lpLkjmW00LfTKUVGRjKPK8_bRzRpHK7u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_03,2026-09-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0 clxscore=1011
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609070120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_035703_945586_8E97BF3B 
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

On 9/7/2026 1:43 PM, Nihal Kumar Gupta wrote:
> Glymur integrates the same CSI2 PHY IP as X1E80100. Add
> qcom,glymur-csi2-phy falling back to qcom,x1e80100-csi2-phy.
> 
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index 993271c42fa063a82cb0f6edd41e87b30bc8e109..7ac944974849b99abd982b1544ef39fc32e1f21b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml

There is no such file as qcom,x1e80100-csi2-phy.yaml,
Same was pointed out earlier on another patch,
https://lore.kernel.org/all/20260722-literate-nondescript-seagull-cbdfaa@quoll/

> @@ -16,7 +16,11 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,x1e80100-csi2-phy
> +    oneOf:
> +      - const: qcom,x1e80100-csi2-phy
> +      - items:
> +          - const: qcom,glymur-csi2-phy
> +          - const: qcom,x1e80100-csi2-phy
>  
>    reg:
>      maxItems: 1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
