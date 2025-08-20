Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05DD9CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycardtndlf2Kb6RpcNtempFl8OA6XMcjCQ2rqz4Gzlg=; b=FlBYFe47Nfmtm2
	Jp92qzZrxa5ZnwYVpJD3YSw2RvHu1YRB/wVewbDfLdB1AJ4g7lOrbcr1278OkNYL/OgeIIdZt+VzN
	FA9SGskSESsqgeICXyI/jhWY0y91OwBxoIR+JoohsAnOxpSKkC1Q5Y/JjHh0jwXunk/qH214RybgI
	7wXPyMf/7QuDLypt1p6ayKH8TM4O8Fj/lE3PJ7V/EepOWnLoVpaaftvRSbNvy9pRpN53Xebdtk0ad
	xZdSZyXGZdDsnDDzy06e28bnYsM5KMR/D0A9JQ4J1W5gcxCAzwK3xUrq4syXfRIvH1uu79P7+BDjP
	T2G3Jw0Pss4fzJ07LmSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmI-0000000DXDs-2s1C;
	Wed, 20 Aug 2025 12:18:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoftk-0000000D73D-1tO7
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 10:18:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KA0LMA001990
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:18:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RMmIf6OvZrK65C2lJ9Pmjnze
	nmAYNUQwMUXR7Q7PPco=; b=m04ZDh9m3eZZiWHDtRw+bhpEsiBl3XlWz+Yc9AOI
	gHgXA+fqa8B1WbSIincNp6cSJOpfOMfWNNeETEgTS9HKHuZRTzUmxmb/OzkyMP9k
	opd6Qz2SGN1A2t9iHN8DKTqa/T6mXIK/P6/mxC03PJ+R5fnmGQjP6fFgFenI1Gtj
	8IkAuR9N4dHdQX4tyyNg0SlWajKunB4eLhw609Cbvw50G0NqHdLEAmNQoluZ7aV7
	D6xVni2lWpctfrfXLiFV7woLvwdcFJRye/COQZjEuZhqtd7fFffcpMqxqLNt/0v1
	oZAzzT7VTEQLP7wPHJ9g5aWfB/0yyYq5TGfP3zqV9otVHQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528satc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:18:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109919a51so294468121cf.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 03:18:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755685106; x=1756289906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RMmIf6OvZrK65C2lJ9PmjnzenmAYNUQwMUXR7Q7PPco=;
        b=Qy1cDcLUJHlibdw4MpoidpQRumAqnpXgOuF7urmT/DGOylxxqTdPNDZ04ZVFg1HsEb
         GFr3Cd1KyElbb7uBqawgZp/dfpl3bXsW0aBz9I6AuZhbiOymx3nK9VvdKrGNkYFUe3Yr
         mHh06rd+FnM95GkrZzPuB/bq7sAaRMyzy1m+CZDDtfhHURTara84m3kxm+h25+DC2yEf
         u3K9pAd7yIzFWBTI6Q7Qqhl1jX0w3DoJpto1SI/iTNM08tbbA1SbcuBXz5pYPIJNRdPo
         mA79/Ms9QVLFLYGVL0oSHDa5jjZWIAxmAuxpXkjZN0dVbOab5WJgOnkWXiNwjD6V9st8
         J1eA==
X-Forwarded-Encrypted: i=1; AJvYcCXaMYPfLLlLy3+bL28J0vFEUb4qrAicKBd8RL03a56J6PQ3O3qEZ6zApeHlJM4OWcDhLvbuZ/xVV6g=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhw38uwmo3i/7Q8d9fqfZAf811+vXOcMoO3iv0gDVnkdbyEJJw
	QA5whaOZPNcsctptfcLhzcLaynKNzOYRyxlI9WgpcAmyVi5yYLSrA5QYM2Tk2D4Ved7WDv5DNFy
	Oq663d59kcwi2+Oe7r5UOUZsTNAOOIJxzWX1AYtypKKvRG/kPNm5oid/zMEIA+iXWbR2r
X-Gm-Gg: ASbGnctMqqp0HHrqDSdJ/hyy+Ys15ihS01GKL1TpkYcCM5uKDPc/9MrAef67qUj33XM
	UivJj6D5y2SAzsXEOklQdtpn+3ts/EalTzsRXCZLfrMmfBr614v/vHEadnv5a9QFIUoN+yidozO
	EZx6HTrV5U4GgRWAbIbF5PWEDm79PMEZaQhmiQWcSmvI754E5EDeKZ5lmXHfwGOfICJmdZL+vPn
	HG42pIQb68aRRFws3VmQUxlzbstyfWMHo7/fo7m/okD5sa4cfJY0bDI2Sz5SU1vqQWnk+BqEhJo
	j84inuLcbIfJDCdDBv3UUHg5Z6gdlAwVc0otLeUYpOabQWWsnwLhDtMpxB6iWvLJlKCrsnAMe+N
	dZ+o/z5T7eUixI9b1/d3977Y4ee2DO9W5CVKZ5ZcGRSRhxEfml8ul
X-Received: by 2002:ac8:7c52:0:b0:4b0:677f:db03 with SMTP id d75a77b69052e-4b291a450cbmr19243121cf.15.1755685106438;
        Wed, 20 Aug 2025 03:18:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2AOZHGENtzCbjXG8zdnjHcyu3nc3kzJVHOmLOa0gbBzdcDRDqks1SlZYpXJ4L372H7WS/sw==
X-Received: by 2002:ac8:7c52:0:b0:4b0:677f:db03 with SMTP id d75a77b69052e-4b291a450cbmr19242671cf.15.1755685105881;
        Wed, 20 Aug 2025 03:18:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e02c31498sm623244e87.12.2025.08.20.03.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 03:18:25 -0700 (PDT)
Date: Wed, 20 Aug 2025 13:18:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
Message-ID: <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a5a0f3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=6LesCdOPl9v1yPo426oA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: HDnMqWWBodY3TDQrvb-ehKrfLwEzEZc8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXxE0BFB54vFk/
 8lkSvZBsyxtkbkjklNLeCJyQYd/hGfcePQXd+cYSqEdYkxGwr6TPji9ByCpvB1zs6wT8mrAMY7k
 /8E9s8MIkoyU6EK7A+kU7zDxXOoHJtQ66Rts2aXiiW+ZWzMZcSQ4S6frblRrdKDgSHiJwMPr0eT
 RFJm09D6LNE28IckUARig+0JrajwzyjZ81yEvOFo/YUNMdvJO89gQqX2gEdaJRcMkWoHstFS2QY
 nJ584eFWVfs1nQ+47h4nfk8a54yWub6SqUpI2qKR9Bt+fBWj7bgRZdTpBVR488WvxB8wONxPtwm
 mqf2oy1RcYcKV10z/VJrOymagR17aACab3woGG4Z00IM/mVlin1OsV785LwqyZnsU+0rIWKcd2z
 JIu2Ue7tZE4qY9Jw0WnFbwStWfmZdA==
X-Proofpoint-ORIG-GUID: HDnMqWWBodY3TDQrvb-ehKrfLwEzEZc8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031828_612185_388109A1 
X-CRM114-Status: GOOD (  16.42  )
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

On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
> Add DisplayPort controller for Qualcomm SM6150 SoC.
> While SM6150 currently shares the same configuration as SC7180,
> its hardware capabilities differ. Explicitly listing it ensures clarity
> and avoids potential issues if SC7180 support evolves in the future.

I assume, it has no MST support. Am I right?

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -27,6 +27,7 @@ properties:
>            - qcom,sc8280xp-dp
>            - qcom,sc8280xp-edp
>            - qcom,sdm845-dp
> +          - qcom,sm6150-dp
>            - qcom,sm8350-dp
>            - qcom,sm8650-dp
>        - items:
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
