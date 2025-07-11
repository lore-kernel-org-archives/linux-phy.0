Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81FC3C83F1A
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 12:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFeZqfFbepRSeBOEiof6BZfuCt2bp87JfLskyB1LWhw=; b=ScEnZJ2D+yw6nk
	+SWDpk+YzDpw2mqBLT3thDn2G6nvakI+yTh5R+FDoQU7UquPvxk1DewmkL8b5PytWGddTepucliP6
	2btPQMtyme5UbJuY8xkEJewy03whBDB+8CThILZq+iROI2zOy/WToGApORedfqfmZswLXaIGVaX3y
	UUcY2TEzdRw8ldQ3sge2rvvzPdJp9ssrc5Op1uCr+aqKkfSn9fyfZZ5iMYYsx82BfZ1eRrRaoOHB9
	ie3tUKtfDt8CZjMmAgFX3tqJw9rU2pNwpGwfH9i6R3KI5TBess0GrJI74J73+FGirX98vCfz13jlU
	2VJkwtgfPPENjmln67ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCte-0000000EkHD-0jYl;
	Fri, 11 Jul 2025 12:30:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCqU-0000000Ejk9-1jB9
	for linux-phy@lists.infradead.org;
	Fri, 11 Jul 2025 12:27:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAcJFt030881
	for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 12:27:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vtZNijnRp1w5BVwcDMHaMUT6uupwS+ihEdb3Rm1l184=; b=BM13EVbjL2HXLpd0
	xEF8zYMCiAcdsd4xLg6veMfZ51PcSCe9qy602k9N1r2P1ww9GwxL2la649S+VCXj
	9pvFQrGO2Rj2WgPCTxknywHA/fseKnehgezNubHY+nhJh6v2Ouc17sUBjAaY/65a
	qVh9egMeXNkbnIA4hCgd5dDvx5yo455N7E8tTShZmUWb9eYScR0W+8JjGV0jfoMV
	gvn9pBHd9ZLIxJc1iyPxVsCPiANud+b7PAVZA9gmJ+uxGlLJJToxOA+qJTqv24By
	o4q3ZN/DaLrAT07swEit1+O6e8Xb1cBxge3e3JdRZ6OhPH9SfJZ4wY6HTg14qtQK
	XuS66w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smberkhk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 12:27:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7dbce38d456so37518385a.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 05:27:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752236835; x=1752841635;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vtZNijnRp1w5BVwcDMHaMUT6uupwS+ihEdb3Rm1l184=;
        b=J7ov7VNxSaLMDJc+mGlq94+JiBb58c7kGotwInz2B1/4FmjJNv15dPHSfh6CpL4gVP
         JM2ReTtpeMWKim5QGRonjvW+2mnT38BuGL1j9f8DniU1CKSqYSiYJP6IpV/EUixCVZIP
         LN+h7ci3HZUaft8vKtc30vRZpbWIlkaWcr3LhtwiMIkP9Lh+lGxBt7eyJA+BwOmsMzuc
         mC9UGiUbcTbWUTY8jEaz0TJYktIJIwJzJHj2AUDNI6e+MihMcIuEt9scA+8AUOznlgZl
         ETbVGUaXyB3WK3VkINtDUZQt3SwSVXvZEa6fNNlS8AQbDz3+oszXSlPx0H05sCvcfetC
         r+Bg==
X-Forwarded-Encrypted: i=1; AJvYcCV5F56CVBcYKo7L3u3SYAHtjvyJ4o1gzj6zAVk2t6EpDfpRiMyeR5JhE+U50Oo3vULvIM0WPBbXInE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4W+QU+b61IuKEAgAFnv/SSa0ofTkarKyz4RYvXuRUxJLUILZd
	oS/x0LIdOYH/JrBDvO2Q75BQnK27a8virgTpvPiiOX1MHD6oRGNVOYrt20R6gx+EauwhxUZqNAP
	uc5sBpyp1cFWAWLYz3LZB7vQkzvakrK5MDfKxc0JVa2HWT/mucSZnLdMEqf3wBS6/wxtC
X-Gm-Gg: ASbGncui5GnmTv5gnH9FJGw9PyHQ3TXqCJSXakK+KfRr64b2Jf3aEpGrkM6jhC6qYd7
	REuzbVxUGUsRVGhzzbbCn2AOEMc1OICzByG6p8Kych9ml7LZsb28VKxlqqb9vHzYPFv+FDc3Md5
	s86Gn0O8uYwCTXAf8mM5dhoehSPEBtZzDUjlOP1r9rCQ0lYnWbLaknEENEztEAGbHKckGe7vT1O
	+DL+hlX6ZeYq0oZXxeC1SbPSk3Fz1fTUBfe8hqVYut3Ig3ZWHrTaXCLXowOrzgZsadqo4Nwuzdz
	QV8HGkiJO8AT3g1uzzho0PZho0n32iPN1xEUgjX2+Ts+KDJ/WiNp9DoexyJdlEGLmB+dOZLFFQI
	e80oQtN9zB4yWFP3vXhbw
X-Received: by 2002:a05:620a:280f:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7de9784c3e7mr121622885a.4.1752236834651;
        Fri, 11 Jul 2025 05:27:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOEjFy6nozXjUM7q17Sb+shXEs+/L0eK/zLANGZuXGxAeetPAnbYDbefoGTuUvQLgTLGjhmw==
X-Received: by 2002:a05:620a:280f:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7de9784c3e7mr121620885a.4.1752236834194;
        Fri, 11 Jul 2025 05:27:14 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e826469asm285169666b.85.2025.07.11.05.27.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:27:13 -0700 (PDT)
Message-ID: <82482857-2bdd-4739-9c27-ec3143c68a09@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 14:27:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 support for PMIV0104
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
 <20250709-sm7635-eusb-repeater-v2-4-b6eff075c097@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-4-b6eff075c097@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4OCBTYWx0ZWRfXy4hG3m1A/aGD
 53p2U2XyPT1vFUnfd3+vzhiBPdP1+sxglQP6sA39BQEwoyiAet7/VsYCnGhZSdxcvCDbj2uwMku
 Lm6+m4rwbPudr2AEchqDWIchEMXWkrQVry+GPEA+WJccqs0YFeGtGiHM06k7zr1hYDWjs5SF/ad
 ElVvIjc6O1lSTAd/qT7qB7ve0HsupCdGSryl5wBaNZB9dKI/7WdUGqsCYxgqPggPxHprrP5cXST
 FHeBPbQyw0/Vyql/6fqfu4M3cgLa79IfxIHKxPdu8yXYFHPLrXGo+B6XBUYecskWYPXaMCitRhK
 PRpBdMHjNyRkpovRkQI8aP0GYoCC2Sd8YTfwKa6qKBFZyt3qGi1/gQ9oyNPZFmlTZJpLwWwJ2I4
 pOCrlyMWjIrg+NN+kT9hW4ESPwgMxEbPXKz5Qek3Rk9hEVejUDCDh7grcF1JkuYS7upW/C5l
X-Proofpoint-GUID: GFt_z9PiLXiT_3455Zc94MKezk98q6zG
X-Proofpoint-ORIG-GUID: GFt_z9PiLXiT_3455Zc94MKezk98q6zG
X-Authority-Analysis: v=2.4 cv=VpQjA/2n c=1 sm=1 tr=0 ts=68710325 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=6H0WHjuAAAAA:8
 a=9PpJxbGV6q8lFR2oJlIA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_052718_470987_0DD899EA 
X-CRM114-Status: GOOD (  17.01  )
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

On 7/9/25 4:55 PM, Luca Weiss wrote:
> Add support for the eUSB2 repeater found on the PMIV0104. There is no
> default init table for this PMIC, just the board-specific tuning
> parameters are used on top of the default tuning values.
> 
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 61594739e5b12706775622e1f76af6ad5d2d29bf..3d4cdc4c18becd8efd5015e698b836ad4d7cf18c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -82,6 +82,14 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>  	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
>  };
>  
> +static const struct eusb2_repeater_cfg pmiv0104_eusb2_cfg = {
> +	/* No PMIC-specific init sequence, only board level tuning via DT */
> +	.init_tbl	= (struct eusb2_repeater_init_tbl_reg[]) {},
> +	.init_tbl_num	= 0,

NULL / omitted fields would be fine too fwiw

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
