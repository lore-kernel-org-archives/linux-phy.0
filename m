Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DF6C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qREt1/TvLDJj5TCEwe2k8gUBuLm2dOZ5s+fflEC0Ts=; b=AjqqIjI5affDJf
	jMDMCyH7W9X67pCgtuYp1iII7bOz+1DdRXnR2qpKCWl5+/Ol9OeohvXeLyCyV3zBCan+xUfAT3kLH
	H7Kb/kxrxGgsGvZv3wVRYKUaObn4fTUdcWe4Q1XQyh5NUh3uxkHaEucM3D+Thk/IY8kWGrzDfj9rA
	wwJ9igpK1YW50w8AsYfdkgqrpQbl78YUsDkyD8EInK8Ct+SjDFUs4yN8wNHy4nOKKmVZcO266sZPd
	aLVVrG8UUFK+DBwQJcPtyOCFgD5bLN6pHrNQfs7vIbttbVcOOItKcAqx8E2Zt3PWP2ghY0g2QuOst
	YlWf2DEptcZC1CeOkMYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OQq-0000000CD0E-2GXb;
	Tue, 01 Sep 2026 13:21:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OQo-0000000CCzs-0xfd
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:21:43 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681D6AMt3357528
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jSiZjk2rYPgMxkc/Mk6oF6H/vSiu5oWVsT6MYw51UtA=; b=HC5Iec2w8Q0r8o2A
	gfZcfMA9VCQ25Uo/i7Hq+YU/CARRMRIHDaWAE6sGzILPk0zqOr2cDoUK9dMVF1eB
	/YbwY02vuOH3zSeyfuarRA8HACvFGdQ9ZinhFNLZ/BnPkjA0jk3IHlmdOo5DYMnL
	DrljuhRUt8Dsd+0H9kIflADs+CrOjees55BopLaJLEJyMlJT6ok//edN4L3224L5
	VFXNeaEmRI29Oh3LsyJW99LNoep1dIr6NyOVrgx7rpOBhXXd5OcukWY5soXnbyr+
	Q3NPRYh3A22ah6fqKIYFDV6sDKImu0VZiXh2uetRTv9gYY3b0qM6ryopeTCXFMc0
	DMap9Q==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdy9ng202-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:21:41 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5bfc08e95ebso123140e0c.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788268901; x=1788873701; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jSiZjk2rYPgMxkc/Mk6oF6H/vSiu5oWVsT6MYw51UtA=;
        b=i60bT+AbD7iB3EoXmhBsPoOktYYZCoLtYqwkhsolK1LLHoBTw4tmRQEEyGNIlFMYpi
         Bhp+FYcff0Sbr2ghHU2yWh3NFEryX02gsRR150xKwcjxhdmKY0jiiQzYJvB7k7zOMO8A
         Hb+xVW8DhQ9GlvSEsTstcq7eTWIipH16/zpalMYNzByjsb6JwFLM7sI48uiW1NY+zSnw
         KIboN2MNtzWu2NtWOxu1abyYBcTqa68amQBl4/+fCdDdQ2TTrCSrPVVc80zPphd5zq07
         tJ3FMgRyKJdOg8K6OCPitd7dZacuWdEPqJkrv/CSpDLKAnzcAXnOCIPKvrxnfOF19JOX
         h+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788268901; x=1788873701;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jSiZjk2rYPgMxkc/Mk6oF6H/vSiu5oWVsT6MYw51UtA=;
        b=R1/gfAOZ2WpHNx9YRkfwCedrhiB0dBqbhxnZI2fJ6RiXrerYqmtK/JRi45EGAk/KrC
         E04lY0MDw2qdtedH4gfJr4biFjDkdci/EvH3yXtaSjrNROWxkKswJ6KVUZAXqX2wW3WR
         vbYJrII5hOtcvJ+TB+mrJlQZGO8VuF05JU7F/grEy4RtG8qQ28jltpyLAXMIbLiu37X0
         iv2dw7xTUoJu8tx6fOq/U0mskS3BlfFidOeasNqYduvRhUZM339HiZsTKb9YW3jwMOP0
         k/k8yzpG8lOnercMUc7UM2c+KpBFmgr/ZavsSiOKioE42QbzJ3loEssFt5po9LW4YI9I
         fTLA==
X-Forwarded-Encrypted: i=1; AHgh+RpwfWbrKjLrtYKNaG8kkyOX5TygWGqYJzRqFV1bXddB0HsSugyfXtMQhjG9E1gjeDLHyrfP+7RNGfk=@lists.infradead.org
X-Gm-Message-State: AFuF++mVRX91hSJRQ9rJgiGDrSgBzuX1UZkekxPVAA3HBVUXWTEWVBFJ
	8fHz+IZJDODZcCVivXwvHZItZ96JxEwnZ/cDZc9h4x24jqLHya3m51gHSHtgrNB5OrWaB2bVB9R
	F1zduFn7X5i4n8hD6cGYttij0nVfvT90Tu+OhHHUlkGf/WGITJKHRsPa88jgjfzYLtnen
X-Gm-Gg: AR+sD12rPr3w4pgme51D10WGG/vvLIn5KWVWezgLX6MoXmBSyZA2T8IADuLUNttJt63
	FUb1SN+A0PTskP4s0yy8Pa2ap4846spp0kAOX/FBLbTRCwepl/UvO2QRjchOFMZGj3CqoooQc1E
	HONczIK5jocBaUz2uEkgY1S3LEJm5Mo/GWaEVQtxW/s92ym3bGHeMm6IsqrbHMMmBXzNBsA0Jly
	8xjoZj9dOzs7RdNDnFh6hW7EhC+Dob/2uHWrX84oDG4j4Oq0aiKBrgfv5wypDHviczlM16V99uR
	gF0QyXJVgAjVADjg9AQwTBF9i+ztEpJNruGQTA9sYjbPxy9x8OYc5TCclQT9bQdVFcz8Xvc8GwP
	77+Tkngm4ShkhJDHjNR1BSQ==
X-Received: by 2002:a05:6102:6a84:b0:786:8d84:5aca with SMTP id ada2fe7eead31-7868d845f20mr2441019137.2.1788268900756;
        Tue, 01 Sep 2026 06:21:40 -0700 (PDT)
X-Received: by 2002:a05:6102:6a84:b0:786:8d84:5aca with SMTP id ada2fe7eead31-7868d845f20mr2440992137.2.1788268900215;
        Tue, 01 Sep 2026 06:21:40 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b605b17582sm57141e87.69.2026.09.01.06.21.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:21:39 -0700 (PDT)
Message-ID: <773d4d11-dedb-4630-bdaf-ed9bf5dedc5d@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:21:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Add
 support for USB3 PHY on IPQ5018
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-7-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-7-39be0955a6aa@outlook.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfXx91Ypx54Adqg
 xFtAZFQdmB1OFfoWuQQ24uGe6YXT5xTEFrLXBORnMXMRRcj/V9/XupGKJuR4Ym6U+m2FkUyfmvw
 qido9oY/yJUAGhRiSijsVNTHnC2feYo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfXzcBXN+O65+Jw
 hGTsJrvh6EuWLpd0xl+6FbyMw5KZ9iw3vRcdiwFcNarOj6x+nGQeyWlPKDwPnjmmBt++QSIUkSp
 ocYbzC0K02PgGKtgBq7GdRZyYRzTv2ZA3CA3UP75H1d9xKBqPAl4p1yVKYTkChw95w4DwzW9ae8
 S89aax+PFuD/bkUC5he9BTj5qCW2uQB422G3JIbfZSPpw1yXR7IYqngLSZOQMpiG1Fijoc/zh5c
 Ps69dA86nN6CvKf51aQ278YwvszAHvnftFIqsS0Gwl5hoox2ByFTJeoxtssWly0gfgQSt1MMUAJ
 UU8VFMPJgAqrfFLMemCLKHvuVViBTd6qZLP1pQI10jfcL41h70s7IjrAIGYBhCr/TqG9o4OyP7f
 MWSJeLVWzmdA3fDgD/uc283BMQHaeLvjG4HdMT/vitPizV9ITYTrLEYwWOwdUAe9n3jfuE4jcW7
 N75Kw5yeR/KdWF9faYg==
X-Authority-Analysis: v=2.4 cv=e/02j6p/ c=1 sm=1 tr=0 ts=6a96d165 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=UqCG9HQmAAAA:8 a=xr6W56IWL_GKtPyFExwA:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: 1txT19cpdnM6PDnWGRGmM3H-ZLocLStI
X-Proofpoint-GUID: 1txT19cpdnM6PDnWGRGmM3H-ZLocLStI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 adultscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_062142_274640_A28810CE 
X-CRM114-Status: GOOD (  10.66  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add support for the USB3 PHY on IPQ5018 chipsets.

[...]

> +static int qcom_uniphy_usb_mux_select(struct qcom_uniphy *phy, bool enable)
> +{
> +	return regmap_update_bits(phy->tcsr, phy->mux_offset,
> +				  TCSR_USB_MUX_SEL,
> +				  enable ? TCSR_USB_MUX_SEL : 0);

regmap_assign_bits()

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
