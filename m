Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D9AC83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 13:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7a35MSvbcdJmtsJzSFPg9wxOmIKf/sUXva0GRTvITg=; b=xOdh4EKDnKH8EI
	Pvlyzj5YcUTGVRNrlZ5glyes8K6OtSV61zg6oHm2+YIHSfT80z3ZX36TvgsqTV+6kGyJKaPA0hNoo
	qBHys6LAfnrSFEuUXxnTtYceZDjv083HCpfmoF1nuBA1lEG/i/9zN/YFplxF7xTsac1yyTbLYcYoR
	ZORCp/r1ywcXr6/ECz8jZ9E4E5XHuzsfXzLFZg+fPxgbqmUS2fhlPRj/9aiFvS2KlyACXTqrXNclx
	YXcfsLgUsDPIz03WZ17fQi1sIQkwVYEugEBqcl7MKVCCRycXqs5/qHhe96yYOS1B0PydKVwgZwYtX
	gm7tCio85mDclm939r7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZrPb-0000000BwVB-2rem;
	Thu, 10 Jul 2025 13:34:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZq74-0000000BjKT-0HoJ
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 12:10:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A8Nh7J016793
	for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 12:10:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qylshFqGhjqdpqss4EWahA3a0P0XpI5R9ccWJmm4pUM=; b=HC4i460zUPUFENA3
	MjRi8M3dzKhyuwssANgdh7k8mfip5nLU8X7F1JLj/sxneVaa7iaUdR15UzXVOO1F
	ImzFzHvTm3/blYiN9gmEt4eFM+SKwfcWqWcLM5UUWm+cNkd4TvGlDZQkev5fv2sT
	TcFrMkRA6al43ifj2jkubAJs3FrUfNvtZkkkcVcB4X5gGng2otxgKTuXqt6KlQyp
	dcUR+PaPy4JSoiLFp59cAR7s6aGWZ6mI3ejAN7yQdgXz2XAOshrFt26Xpk6Yu27Q
	bXAA1+6Ihl0EE1FsykzY+81TpsEqFSxeR8ojjOmPNiMs9ZCfJm++Ekb9bCaLzkT1
	Z5N+Cw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smbnvuwu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 12:10:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d097083cc3so23366385a.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 05:10:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752149452; x=1752754252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qylshFqGhjqdpqss4EWahA3a0P0XpI5R9ccWJmm4pUM=;
        b=DiEgxL7WbVEgEN5TYu1Ymv9/KvXl5pZBoR2CZj659j/vmDJpiq+n9cw1MzFPAbjIg2
         qOKtYfNNed2NWwy54Qyco0EFccESoIkrsgI6uUQBe9nycNV7CXNFWanh841mO+GiHQsd
         4+yKsUqxcc+rr2xx+/uG6y24a835OmrmxVM1b1dhQfflogf1jtxJRfKDOhtNZVsR9J4T
         5mBhDrphTKkyy+HIY7mTytWFP0Sl/WdLofLiDbqZ2qOvD4oe1d/bg2S5OnpJdlqgBxJY
         iKOmPuqod3/oElqzGhuFK30Yod+GdyF6OoyIlvtL4tl74Lu77AZGzgr2JPj6EspdJKoB
         ZisQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAxKaqgyDXqHhd0c6voYvXiCjeXk5wdU9lUTafsUhKzR6gcvq+fMOV92oHKzRaFGEkCE8FAONDy9k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqWS+962CuXEqNELTKBvkjHq/1D/y7xMFHobKdNDvvGQmL+wQk
	B6UZADtqR90L63jZJ6v5cpIhUZmOtM3SIsGdO2jMvrcTKAQGsVucImQNEwTLUauYcC99wXkozU/
	kpkxfoet4NEfUCTowBjBr3esro942CiVprk3sbju9CP7nz+BwNTKCb00lbZ4SPQ8xMuGP
X-Gm-Gg: ASbGnctivpPWFJWAcAGZ2AWU8W89DpZszIX1FAgaZp65ZLzUGk+eu9EfP9gxTKbPhek
	aY2u9h4MPGSsSHbZ4vFwiUXqQ9yH0/sNKq7upERwHve4I3ZNX1FyLxqrpHsTQlE/iaVxPKvcnIx
	C0hGjpFNQKHLnhEyFQXmZHLyCFmdCe9VQgp0wgdqCSKMgb6O7DLIoTzVkwKpOdtFzT2yF3QnoNK
	UXwGMUiRh41UVrZwtLSf49x6I4+i+unQjOgCfRAURkmQZ6HmN8ZaTOwV+b7oVrz4w1tlYD2Gpb4
	T8Ie1jTtn+1e+xbkQMB3v15daEUfN8q3s3i0BatTR28vZJ+mIdooH/iSZm5Y0tdFVSXT26NBqCU
	t/go=
X-Received: by 2002:a05:620a:470d:b0:7c5:687f:d79d with SMTP id af79cd13be357-7db8ec65af8mr344977885a.8.1752149451771;
        Thu, 10 Jul 2025 05:10:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNdXIlzeTaHsQw8JV+VNgiKFo/GTeGYtHM7NPf/e+vpsxjpM2ZxW4+HG2cXIrSvCR3dYQdRw==
X-Received: by 2002:a05:620a:470d:b0:7c5:687f:d79d with SMTP id af79cd13be357-7db8ec65af8mr344975285a.8.1752149451347;
        Thu, 10 Jul 2025 05:10:51 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294bd9sm121061566b.132.2025.07.10.05.10.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 05:10:50 -0700 (PDT)
Message-ID: <7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:10:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra register
 write for Milos
To: Luca Weiss <luca.weiss@fairphone.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
 <20250709-sm7635-eusb-phy-v2-4-4790eeee7ae0@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250709-sm7635-eusb-phy-v2-4-4790eeee7ae0@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDEwNCBTYWx0ZWRfX/KilH3Y6iuVv
 7Fnk5sXKK1FiPzQHYOFfaPonUzA9PCwK1zJt1CNsJjSAV/0cX2Qr6vgoodzxHCT5iLmB1OEodSj
 zSkBWD1uj8Tzlbi1ahmgN2kEo8Y1K3310m5TKx6Wy/c9K8yX5AMqMb/1YoVaDD3Nxz1D8EK9Min
 ooZdhe+CLm+uE7xczDa9aTb/EB4dYvepA5SnbycRxPGPZsGf/mr0SypVbonZqqN7uLImJaHG8dG
 BbD9SBkA2JjSh4ya2oEh8fM0XPAOvx410KuL7X+dwkZiAO+mEqOvkWYWaaHcjD7tm0Hg/v20Eh/
 t1DHMyJZc2Rl+Y6SKatZDkc0KepkNYkv/cCvahJAUXwd3Q7IfvgdNHQCecrdjB4YJjMgKlC2g3m
 w13vOr62rXtTZhEeQZTkKM2Ebf5kfiUu4qG+PZEgQDa0NKCozhkCoktDW72XgPn8T8v8o+A4
X-Authority-Analysis: v=2.4 cv=QM1oRhLL c=1 sm=1 tr=0 ts=686fadcd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=6H0WHjuAAAAA:8
 a=JvZHP73eehLcbYbFTREA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 7Avi8Y_V7gKtB-wd1S_k7XbelkDmesQC
X-Proofpoint-GUID: 7Avi8Y_V7gKtB-wd1S_k7XbelkDmesQC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_02,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_051054_123919_F1968BDD 
X-CRM114-Status: GOOD (  17.88  )
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

On 7/9/25 11:18 AM, Luca Weiss wrote:
> As per the downstream devicetree for Milos, add a register write for
> QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> The downstream driver supports an arbitrary extra init sequence via
> qcom,param-override-seq.
> 
> volcano-usb.dtsi has the following which is implemented in this patch:
> 
>     /* eUSB2 HPG version 1.0.2 update */
>     qcom,param-override-seq =
>             <0x00 0x58>;
> ---
>  drivers/phy/phy-snps-eusb2.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index e232b8b4d29100b8fee9e913e2124788af09f2aa..87fc086424ba4d9fb3ce870aa7f7971a51d4a567 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>  	/* set default parameters */
>  	qcom_eusb2_default_parameters(phy);
>  
> +	if (of_device_is_compatible(p->dev.of_node, "qcom,milos-snps-eusb2-phy")) {
> +		/* eUSB2 HPG version 1.0.2 update */
> +		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
> +		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);

Said HPG asks to clear bits [7:1] on all targets

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
