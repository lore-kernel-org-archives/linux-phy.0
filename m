Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E143D374A1
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 20:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45707YwbiICwEanMM4q0rvj9IQqHsLanDFqI9+a69nk=; b=zOaXG5HU1x/7V4
	IP8NbpYc4rYUj1Czn2jElFdnQMgShK0BU2cX8jUB73NAjEn0GSD+l+Zg8pR4M2/Lo+SUGvS3T4OxW
	bwERlZcXJ9/pj9wR4hkYzEOz5n/p3oPNzSC4d6Lp3tJ6Zfbr1+wr0PMHGqoOfZe8Ay4C4UR+BlXD1
	wRaRBSrmaGHTGWPcjiTnI+B1eqy6QePtZ2TIvIQZcciyfxOWfYSOIdQaklNJxyuETJ9HSzym3O8Uu
	HKIAwD532mV80f2WREH/kGeWG8EV6ywa+xfcTDVWkIBIaenRs8rruLgz0ZhvBrjji1X4dsrLk+qA+
	81i96TAdgqs7zoJZU77A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcq8-0000000A2VE-2eLo;
	Fri, 05 Dec 2025 20:55:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcq6-0000000A2Uk-01m6
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 20:55:43 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBLrM648773
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 20:55:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yd8Fe4jZgBDKW3DiZ2oAWRaJ
	+4bjhE/PoC9gNQIeyJc=; b=ow8DLTOWKKeO64T1I13cSXKzliRRrcRNzlayDCUb
	T/zWDdKyx3srzuFp9Ys/2RuNuRjX8/fbUpnQ1V5eoBX0ePEiueODTUzPgHB/bN3n
	Nd5GODPNp5phDBQWU5p6mZZrhFD5EpmzeD9/vmYRyMLH/xfLzqBYSwsF5uFc8fmE
	YTDK1QjINqQDkaEVIF0h3rb/UIBmHSueqeY3zuXPe4GIhNbZWZZf/qTwlLDnQ8wa
	P1qyISAiDFpnNbRWjpr/h25p9w0DRNFs4S+0GqYG20Mldmw8jUixlnfCDQd8f3sP
	nRLMuU8xWLis6AcokGWJZnTz1KDMXvNQQc9ziKliR+D5GQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av0ka15e7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 20:55:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b245c49d0cso543835485a.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 12:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764968140; x=1765572940; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yd8Fe4jZgBDKW3DiZ2oAWRaJ+4bjhE/PoC9gNQIeyJc=;
        b=Ox9Qnp+ANXep2Q6OMLGPfSa63IEBfVUfXfIJOgZsFPSFL15X2WEIqbSANUel/WrGTS
         X36irfwRrt8gwtpzFMltNt681pj9K/lOAZc/yOrDxuzIIYoN/F9JQ6b6CXFXaxrw7j1i
         uBFT+f+bOK0xNwGhIDc/eGCmGV+n0BCfwUt8jSZLfnGnGgbdcbdKBC/7T6bfLvKtQWSq
         lywESAZqRSs4yRYe9r+m5/QFQDW+bXEmSVdvbmZWsUGPJ4qN0IP7lrJ+7hrljAHiPUps
         I09KmjFnSOz0uxxAOUI8P8CM6+xiZSQqN2NaYHyTRiNEWMfsUCqh7pbE/Yq767s5h+/C
         n3Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764968140; x=1765572940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yd8Fe4jZgBDKW3DiZ2oAWRaJ+4bjhE/PoC9gNQIeyJc=;
        b=BNsUACUJQmnDsR2pUgdjnrhbbxWflCF3hU9TPCt5dciHwPSk4jt3+8Oe5nDulmOaaN
         0Ztbxvs6WGTYVVHJRi3Od3fGSiBtSPKmG/WuULLbhJn0oZ0rNE87iGBjv4UAD6KwDUDs
         gVSFKAbKZwRhDms2y/Hsq5criGUTDy0DNwNRT/0gcPj9+Rh/4UiJ7r3GWkBkxTdzNVl4
         rKuD77GiH/s3g14MGrsSESYAOky8k6L9QlXaG79eqzmZ/HqJD/DuX6Iqhr9EYi0iweFL
         hxgZOyOx5z1kYdr+kB46qF4XRKqqPqKbKeFYIH4q4Q2DZCWnU31A8k9/NKEVQp/ZkGGW
         /37g==
X-Forwarded-Encrypted: i=1; AJvYcCXQQ9WUeX0WYQxV4vTXIj6mpM0/PzK5R7PjJs/y2IQUsl0qmuk22LDZfDsMglcs6ccYCdSMJE7T7HM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyesH0OmVYzsHkGvPiaf6fFlFk4EEW7Yme49djvTlmAqAhS4hgI
	S4FktQ8XE8qiAWo/7xLM3MAMOx2C4iX60uYcqUaoUIC85xNbrmDTMTikT+m1gKTwagQehLzIiAC
	jpmd5R+48HqX8gwOwx8kCr9BZTbQhr/5ZL96jdtDGwDeJW8YsP8jTK0Q2csE/uCnan9/Kwg0lA2
	5M
X-Gm-Gg: ASbGncskYTON0/+Ir5AAAuCj39dTxdiPXxsn+HZS5WRisW49Rxs2oHT2nb8qDbU9k9W
	yBr1dyjnAQhsHG1z6dzlLz29Kc4oOlcfAk7ZLq0qGXWITxU3ghB8auH9qvgaxNClGupJbS3XnVd
	deF0/8HXWIHMhCST4FOMwV4HnQnqhJEPYtdTSactjfGTmaIB8BQDveP3NfchuRBsD9lSurs23xW
	QwOIJ4HAvLqLyjPwwyZaAH5N2I3ELdndfrDrCMFKT+8hXXaUd+3XRZ2LAJfzLK2mD7i4GTp0q2z
	UJ+uN0kuxunYVLe3jcXH1p33v2qwlx5kPfHsnUOXy8FhVDWEndFSBayELRZBIIyNEBWlP0Jlpcs
	O2pS0ZtiBJ3lIV5Ab5lFOy5Lu9NQUSbCJK2HcORycPib5HkMHkjoX8ufMCw7y5whBkqPmKxlzig
	vQfdMZt3DE59uFHzMW571RvnQ=
X-Received: by 2002:a05:620a:31a4:b0:89e:d562:7b93 with SMTP id af79cd13be357-8b6a24f62d6mr72629785a.83.1764968140026;
        Fri, 05 Dec 2025 12:55:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1UKoGW+OU3HoBP+57I8OZyoowEZ6rmtvKcXoHR/rznEQPXCdbsUBrzEYztZBhcWzbpRyq+A==
X-Received: by 2002:a05:620a:31a4:b0:89e:d562:7b93 with SMTP id af79cd13be357-8b6a24f62d6mr72627085a.83.1764968139576;
        Fri, 05 Dec 2025 12:55:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e7062413bsm17163141fa.42.2025.12.05.12.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:55:38 -0800 (PST)
Date: Fri, 5 Dec 2025 22:55:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
Message-ID: <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-GUID: 4KQowc2lWvYptsS6j2jM-Fc1Ohfb5OXs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1NiBTYWx0ZWRfX5RX3cPcFdP1d
 4dvklFKBBxIJ7KBVLhrDoSXsWmh50WvcIDaw+JYn7dS8b3lMUIfZqJyGvS2cMgw06xIZtNXaGHq
 Ymh0KWzqCd/+W21i1vT6kOtq4fhZR6FLm8dCxToV0u1+7Vi89NxB6IzSc6TaCo8UFFfqMqf8Qva
 gti1dYKyVP0LLIBh1GQ0eSB4Bk+8g3I7Ua7eCwLAp/cJ0Lv+UoRXDluHAoeImlRmRV48zIFMZVg
 kewbYlbbLzYUmui0m6rrr0duMhPdJ0QUQPBLkQAMFrXYWUNJIuR2JmXcSzoe3Ie+VRo6DGQSYUK
 P1XZWRHioVP5EXuCAQVf62qb6nd5OwXKGFLnN8Gjyu3wNGJUkq4ikMlrcrFt70zD1RQ/M6lsKqt
 kqI+ffiv0iA3dNa/dz4wipcS+7/VjA==
X-Authority-Analysis: v=2.4 cv=HOjO14tv c=1 sm=1 tr=0 ts=693346cd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0amjCnnjamoAI58UCHkA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 4KQowc2lWvYptsS6j2jM-Fc1Ohfb5OXs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_125542_072097_01B37AA7 
X-CRM114-Status: GOOD (  16.06  )
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

On Thu, Dec 04, 2025 at 10:16:42AM +0530, Krishna Kurapati wrote:
> Add squelch detect parameter update for synopsys eusb2 repeater.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 5bf0d6c9c025..f2afcf0e986a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -59,6 +59,14 @@ properties:
>      minimum: 0
>      maximum: 7
>  
> +  qcom,squelch-detector-bp:

-uV? -mV?

> +    description:
> +      This adjusts the voltage level for the threshold used to detect valid
> +      high-speed data.
> +    minimum: -6000
> +    maximum: 1000
> +    multipleOf: 1000
> +
>  required:
>    - compatible
>    - reg
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
