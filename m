Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2936D11183
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 10:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtCaktzRjcgT6Hto/DM/csmw7ZjjrC2UtGJsr9sJvA4=; b=iehRfIgCnsWAFa
	Lyj5oIQYDthKkPUuOZDPllXMRkzS9aRRE2AYQS9cGvA53QCl7y2Yt1Tl+7DtQEOvqFRUMuYtBhrl2
	lOtVA8QrtGIxnUDU2L17jVOhCJytZ+lOjOlKwrilH4O60oWbRKN4n8Q/s2H7PbaeuiU7xysb8Q37i
	NcsguKFFcAHPYCZjYkd4CD8dz03EFajDg/77/ezNcnG3avB7x4jV5PEAagZAym/x15b0SnBQVaabO
	p0sW02zvCipT8dyUk9TFU7hhW1Onc9fTq1JfliBhmclAuMsRejA3i+dG8Pr63QC/WLeheASrf/Q+U
	1Q0i3YZmnBDj5G+5m8kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYsF-0000000GLDU-1poJ;
	Thu, 27 Nov 2025 10:05:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYsC-0000000GLCt-1gcP
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 10:05:13 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR7j6uw2388412
	for <linux-phy@lists.infradead.org>; Thu, 27 Nov 2025 10:05:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zS3VWKxPQ7K4FUOwLSLQ/xdq
	9JxHNa/CvuMbT15j0M0=; b=Jdh/yTRuhXxiuLtouqXIldaimypKHTsuIgYAt39E
	qDnVKCmMO2vJWhCxGik+VR7qaMp3pAmEW1zv5ohnRh8WX4kvPom2axopZThaz+Fr
	Ypgk/aOtJfwvDbJ+YUe8czyMXy/pZeZWgpVnXjM4uDgmZzG9cVcnfYNHCKRDDhJT
	Ck9eXDSC3jEL0gWjH5HeL+XQ5HGznfQ66KM3QYtU1XsuUdJx583VJ7QmEARJbPcz
	FpmBxQl7pC7jYojxPTm7/2C3UeQ9x+T2KkZAyf1jFhlaSXnpnhBSDllOsE8hiqH/
	CxdI93uStO4/oyJ81zdtTVQjROMOMv+wcC6PvHfYH1+AFQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap7n8j1d0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 27 Nov 2025 10:05:10 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b471737e673so853675a12.1
        for <linux-phy@lists.infradead.org>; Thu, 27 Nov 2025 02:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764237909; x=1764842709; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zS3VWKxPQ7K4FUOwLSLQ/xdq9JxHNa/CvuMbT15j0M0=;
        b=fvBLQbfj1EIwjwBrECXbB23DVm+cZ+5Z7jIikh2vQUcVjxz7+FbRvfkZTc3D6nrp3M
         GgFOQXq91Q5whgEMis+zCVcjHp08wekWULQjcsK5qsPxdh2dETs4yYGlhJrQNQ4TiIoD
         PmJJszcqs2ZnnA5RsvzufNp4yTrHSpsxHCSlDVhrkYEgcb8YUAP8ckJ8kuaLG/PfjVR9
         S3u3OHlqPfrt3GXbuc+EEW9yiK8yDHL//ZfTDy37xIc5WzVnREpTIt5cwV+qsv94cs9W
         hQM9HV3AHID0+We6/UF3v0IhDg9PianLJWD4OGP2+bgD7zF6hzULQvlhCp+pPCei0taw
         fKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764237909; x=1764842709;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zS3VWKxPQ7K4FUOwLSLQ/xdq9JxHNa/CvuMbT15j0M0=;
        b=jj1NiEYBBGaFVnO1ILMKLu56TvgoWZW1cMp+1ZyrStM+AUjBw5GTJG8ex3i84kEvig
         7O8u5urnVTSAaThjUnXVoi/4kb+tsAajSiwZTC4HuMk7uZ9Ndel2hPkCyiY//N18zlEK
         ffVhQ0Hn13wxrO4d3xSRYLsQcvFPTrF5WoW2c93pbfivQsJQjfn4IsutAspPaEu7SYpr
         q0JNSGoI8uVWNIn+gQKKhVQa88tDTIUBsrIUq6O8AUBcFMlAIg21+5njOe3lRtCqqimP
         hzxXutTSi02vbx3xHyjnZWx/oJ76oHx5ixLfKvJ+RGzbnksOGvxqT/JwG1H4x52zNRlw
         u3lw==
X-Forwarded-Encrypted: i=1; AJvYcCUo2mHifirRzSf5DNPABE8rdIZHDIolDmra5K8NLieA2bHVFVQq5DDKcib92QVogR+9u30Iz4RAUyE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrmzXwjv4G1UDcODAlHZcV3fJI1aWuNTai/ir4Iynu4qV8e06i
	lITetptUq8OdyhlYk7eAw2A8oIs+Z5iH+zZPfz4MurHUmQ+P/+qNlwS14N/cvMifY9Z5b9n7gSK
	uY3p49ElI7u3z3gq95RUMIxF+la9gOW1PnvVzMnF/Yf184wTCc0i4VxkdEJ7rz92NoYJs
X-Gm-Gg: ASbGncvkZyPezWNRkqRMOtEQPlmYKUf1zmhuEHZAsrvL+ef7uvrPPxvWZxZyVx/5Lpx
	eYWk+s3CpzejFaWH8xH1CDSBJfFHhNr/EhvWqN6nP6K3fusOjVocyWCuKMp6XI8OR1u4oaVxPgz
	I324i9wMNKRbmGjVpcL7wLh5W9U9BO8dZos4Dm/2HGv9qaiRDi+m8HK7T0kDC42GMIczKx+F+Wc
	Au8wYeKhUn2vo6wPNHnrL5HplM7NmfjbcLAsNYysyam8IKuGZN88pm/vD3IKItqE4+C5Crvs4d/
	WJ3BbWnsMQesM1zR8rixJLGXZdUfg9fKB//i6IlD32/5Ckgnt43LPrv5e8xuIweAZNmRvB27ZRs
	lhBcvjsxcQK+fNDSe+QbJz7FFMIqlB04MDmGiUEiIQTLMXdXJsaXpcNbu
X-Received: by 2002:a05:7022:2528:b0:119:e569:f629 with SMTP id a92af1059eb24-11c9d85fefemr18875633c88.34.1764237909265;
        Thu, 27 Nov 2025 02:05:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHC1sofe7oy0gDUCDczL88n811ZI3qfWuxmaq7+67gSKa6WnRahxRJjGfKMuG9dK98z6UDMlg==
X-Received: by 2002:a05:7022:2528:b0:119:e569:f629 with SMTP id a92af1059eb24-11c9d85fefemr18875606c88.34.1764237908686;
        Thu, 27 Nov 2025 02:05:08 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcaed5f6bsm5683210c88.1.2025.11.27.02.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 02:05:08 -0800 (PST)
Date: Thu, 27 Nov 2025 02:05:06 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v4 0/5] Add PCIe support for Kaanapali
Message-ID: <aSgiUju4XPrYwuY3@hu-qianyu-lv.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
X-Proofpoint-GUID: eCOFjtX6MXDPtNPBY3X0JsyUeiiL_q5t
X-Authority-Analysis: v=2.4 cv=AufjHe9P c=1 sm=1 tr=0 ts=69282256 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=UtkNu69STNc0K4BKN_0A:9 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: eCOFjtX6MXDPtNPBY3X0JsyUeiiL_q5t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3MyBTYWx0ZWRfX0Ch1OzwR881F
 fxwsG0Bz3ads2qWAHQuCqrTi54q0oud3BMCkSXFNrrT+NXJNBRdaav8a3suXIam/zwvlBDHqxal
 1sqs6E14szMNYA3soBfNeDrWWKn42kRZz42dz2K6mBadstL+QOnlkdZ1Ef3EZKS7PEH7/S2BmD/
 0uyfeiitdNdrH4RCViyjpDpjyKqlPzMzSAWNZMopulFRKApvIkqtbTObiUf0qyOWeh2V60CCxLx
 zPqve7i/MgarUMxBgBRufx6RwiAoG+K7j7v35rNAvY+64Wvnyg7rRPuRykbJcuznzosnG+hBfn8
 Skb+AIKrvRZMy0NMqzlXgahQBODrubeFIS65gTFp/4ACks3o8pYZVKCd+mbfVF0fi2bzey2O7UI
 RvroVAJUzrG0NVFJ8UcLtjHP8dJ+aw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0
 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_020512_448403_40838582 
X-CRM114-Status: GOOD (  17.43  )
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

On Mon, Nov 24, 2025 at 02:24:33AM -0800, Qiang Yu wrote:
> Describe PCIe PHY. Also add required system resources like regulators,
> clocks and registers configuration for PCIe PHY.
>

Hi Vinod,

Could you please have a look at this patch series. I have rebased it to
latest linux-phy next branch.

- Qiang Yu
> Changes in v4:
> - Rebase on latest linux-phy next branch
> - Add reviewed-by tag
> - Link to v3: https://lore.kernel.org/all/20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com/
> 
> Changes in v3:
> - Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
> - Add reviewed-by tag
> - Remove [PATCH v2 1/6] since it was applied
> - Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/
> 
> Changes in v2:
> - Rewrite commit msg for PATCH[3/6]
> - Keep keep pcs-pcie reigster definitions sorted.
> - Add Reviewed-by tag.
> - Keep qmp_pcie_of_match_table sorted.
> - Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
> Qiang Yu (5):
>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
>       phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
>       phy: qcom-qmp: pcs-pcie: Add v8 register offsets
>       phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
>       phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
>  5 files changed, 313 insertions(+)
> ---
> base-commit: 3b64ea4768e7e64b2d9ae5833dbcac19f6212145
> change-id: 20251124-kaanapali-pcie-phy-31968b2b2916
> 
> Best regards,
> -- 
> Qiang Yu <qiang.yu@oss.qualcomm.com>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
