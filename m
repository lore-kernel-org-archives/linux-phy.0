Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75641C5AD49
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 14:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9uKg9oixYS/bFNe7zPno1PJ4wJYH/zc65B7TnBU3fM=; b=uJGYJeAEeiI6mD
	5Q1GEod+W9eTI5Ex2aMfFqWZBV2dlsWIuUBRf2YAPnSN5/CasKvR9bMQiYud9I0mD6rhS+gXzOw6p
	YketvF/MptDSYOGmB/dEfmQcuZcnxVd9l3IV3j6u0iyjDPkyVs48vKrU1Go5NUOurCb4mbvTya/K1
	h6e3GwVBGNtQilE0PZs5zQnUEsvIgbdlVr/2WQ8Zt7rZMoTtnW/tkRO9wxbbqQt+Z388aDEQaXUZ4
	JbwFCw2QYJbsRKQu+NSRt+fVfe+F8/uWH7WjaamXHiP5ciRqyF44lbZIJMrsIq9iQARseFF86rjIR
	fEhAd1B+yDBjtOkQpjvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHrM-0000000DPln-0uko;
	Wed, 28 May 2025 14:34:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFg6-0000000D4gi-1AQt
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 12:14:39 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S9Z1w3012389
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 12:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cjdekBqq9jQ1YXFhfk1E8WK4
	nJD05A+u1nrX/oJj5mo=; b=OBe5zTmCx9eNzb6Gr9pjOGgX4nz68VzF4PYfCXmb
	kpSlphATodbmzpK4/CcmXm9Ry/OB5hR90fIcgX6j1WoovJYM43uH1nX733aVpOQN
	Cq9cPEMS2NVqazTry1eX2iKI42IF5KOYjgz+IsesBw2FW7JekOVJ8BhuYYIEHT1p
	EiVFoQ4KHnUy6uI7KMqFJe+IjQCz+1plpvlL5/MLzg4wPFOsGIHzZaeDzVmD80EU
	jyHDUXcAXCKtCvZq2Jsy7jzeZc2De6XBjm3sTzq3JvHSBui/ACCfmv73YbCN712T
	SmCSMiVLwjIz+D4FPCgRGtqat5McrFV5FvRmWhpkaTgYJQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549j3q0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 12:14:36 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fab1b8d379so22030746d6.0
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 05:14:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434476; x=1749039276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cjdekBqq9jQ1YXFhfk1E8WK4nJD05A+u1nrX/oJj5mo=;
        b=GatB8M0bxl4e2Yosi2mcyS48Ohf7co+ohs0IolqXb1vfmwjwpXoAF1n1/gE/OraENW
         Ti5S4+xQ/8oasrOwPrCNDFKngE55TjwV88Z8vYKkVwk9nA5a56HxYaNAQEIPPz6LUWq7
         q7ffLp153W8lHjRahBF22EWTOvY7snc+/EtYKnoavMSKOzV9AtoTQRHcU2/GWkZKDgEe
         AdQxq8HonfYEI17czvxobgGNx9KSvreMHOZO+02ZlO+DGAPWWEHLR92zngzMdmzImPci
         98imetECAD4mJXsJGaIxwiGG8dTkyg6G39B+Yt+UDXVTD/UZUpIRScA3b8tgd03OxdB1
         ojlw==
X-Forwarded-Encrypted: i=1; AJvYcCVbxNTbuIifBcukaXkkFmnF/aIr4GZTseJ4PWCXMy7Bhl/+vY8gytGDpmvHGd0A6RxzuovZ+STVXcU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWobqXhA86KG6fXUOUYcqHv5G1DQY64EDQ01AdbBPIJgJl2fpG
	Y3gzvwNH+DF4JjuzOVxEtacPblKkbcQHqmD839rtKP4DFHA5lBtkG8/3lrFND5/toiPwa/7lgDu
	EKnkSfF6Ion3vsX0TOUb7S+EeAHYpeXyjc0Glxo2VoHGeVQYaPvae+UBhZAp2D4OiAsqI
X-Gm-Gg: ASbGncuyy3F2IsbTKTY5puNqLqVA23FSk2t5EzQBpiOsTgfQAVjESaCuirUoDrykzta
	toUcMnSLWE4IjyWQ3FC/jFkhNwvtLEfphonzL3CB/sLkI+Jl4UiheFseWF9HXQPr0gtTDvIJfNr
	rScvK9/aSvxcstpJkxJE/aw9se2bt9DgVvdxd/JeY66lQI6/G52U+R2jkMjDtGSSEsPrH753kSJ
	KXBckRfklvmCf+jtKhgqvHlLTQzgnXgVndouI2NtpD4V+LR53fjdui8OdqBeu4uXCP5Trcf3mai
	Lz2lMiD0y9i//rHErkb6t6xQbyJlU7VJ/OtyTLcVhmrtXXHy7rGgkWphKHSaGHuKdGh0Jh1bDRM
	=
X-Received: by 2002:a05:6214:21ce:b0:6fa:c2d5:b3a4 with SMTP id 6a1803df08f44-6fac2d5b470mr14195016d6.5.1748434476039;
        Wed, 28 May 2025 05:14:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2p2VwJWOXtJEGL/fYyqmZpdkmAOdMF5Qq25nUD3joqlGl9qIwB9aKQH/bANxFtWon8zcbtA==
X-Received: by 2002:a05:6214:21ce:b0:6fa:c2d5:b3a4 with SMTP id 6a1803df08f44-6fac2d5b470mr14194596d6.5.1748434475626;
        Wed, 28 May 2025 05:14:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a79eb688esm2323591fa.24.2025.05.28.05.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:14:34 -0700 (PDT)
Date: Wed, 28 May 2025 15:14:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 03/10] dt-bindings: usb: qcom,dwc3: Correct the SM8750
 compatible
Message-ID: <ari3245mwglxyelcpbct2dnclmp7xtgj6jwrkopb7t77rzdmio@zkpzkyzydig2>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
 <20250527-sm8750_usb_master-v6-3-d58de3b41d34@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527-sm8750_usb_master-v6-3-d58de3b41d34@oss.qualcomm.com>
X-Proofpoint-GUID: zTH6gh3B9PoVp_Rx0HLvvpUOcvBo9KtO
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=6836fe2c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=zrS0zEH8eRrj_hfGFQMA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDEwNiBTYWx0ZWRfX7rUAMJ4ssN1X
 1/V1v0QEJA8RkdmJpoLmTeLnMrTRMP/GZmSLhZ04t6PRt1yWSzvFyJ32Wct44lzJwPx+WI9/Mfv
 7qO5wOJ/bCPVPrc/H/De4UsqipzqXQ0rXEn3PDbcqOBV9M0lMQ82ms13+ZkUur/fdSU0lwwI9qh
 aFqRTp5FYO6dhJayQbgZbmO7lPt632Mb4QFd+Qst4N3hfFLBgWyBUgSo+aYGyVID2fo9tF9qwe6
 O/nRfcshXX5FLLygXeN54Uazv/xLnrafIyoitdP3sj15JxR85SqZmTQmzZBbDxr2FhsXtNWBVNk
 CvYCZ3K6j/g3ajMMyddBg/EWXv5T1gztn39vOWdwia3LmRqk4O92skzh825gERivCK/554JdkQq
 hEcl/VDNkFoaOvbpUj8N1LhiS6hlGU4emV+VsoX3IX9oN7LIZt+Atn9oKwJ8ZVzdNaOzM0h/
X-Proofpoint-ORIG-GUID: zTH6gh3B9PoVp_Rx0HLvvpUOcvBo9KtO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=592 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_051438_446527_D033EC30 
X-CRM114-Status: GOOD (  20.54  )
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

On Tue, May 27, 2025 at 02:04:39PM -0700, Melody Olvera wrote:
> SM8750 does not require an XO clock in the dt as it is the
> parent of the TCSR refclk_src, so move the compatible to a section
> where the XO clock is not required.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index a792434c59db2e6ba2b9b3b8498ca43f0f8d1ec4..298b1472ccbc4cfeb04927da29ea40b9883d03eb 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -227,6 +227,7 @@ allOf:
>                - qcom,sdx65-dwc3
>                - qcom,sdx75-dwc3
>                - qcom,sm6350-dwc3
> +              - qcom,sm8750-dwc3
>      then:
>        properties:
>          clocks:
> @@ -366,7 +367,6 @@ allOf:
>                - qcom,sm8450-dwc3
>                - qcom,sm8550-dwc3
>                - qcom,sm8650-dwc3

I can't stop but notice that SM8650 also uses TCSR clock as XO. Should
the clock also be dropped from DT?

> -              - qcom,sm8750-dwc3
>      then:
>        properties:
>          clocks:
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
