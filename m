Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A6AE77180
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 15:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2j80l0e7/fWGBo3h6KYR65tBv6Dz4lsyF+9Q6uV2oU=; b=ADu9Po+1pTW6J9
	naInojTb4tte6qzJxNKz26iIHbQhGSSIW/v7gzS/g6j9s8nhLced7DDTP8vTv0cGG0NG8ZVJIIELT
	w5kDlpOmcNuk0mpSTCQPiXHfZKLT+o9edCrYH3D+/id+/mKY/RmH4ACE+3hUT8JeuLm+Be6KXVBGS
	1eB0FxlInbNzViYiprT/lUHhk5tmc2F62r+WUjCAzH+gLafKuDGoxNRvEwyoH7nWbr6mIHx8BWUzi
	gDUO0XtxK/JPG28X7LGCMbROZTasCAFRmlsNYfky8whiUUMye4C5wwmafbBa+7KpEdEmhEQa1c+Nv
	au/wKWUV7RqsaEReomhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Iw-00000004E6o-2dbs;
	Fri, 13 Dec 2024 15:10:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7GW-00000004DUv-0QgY
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 15:07:41 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDBiHNZ019777
	for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 15:07:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8r2Z8bCSwIkqdnaknQhubkt9rni68kdTquLqBAwLVKs=; b=KWWpQsi3Ipfc0xaY
	9U3GoeVmEa7JXSY0slrLUJlnMQ7diyUWZqPr3vJSOpgylnpiLQKpfYeMOyJ6+cv+
	H43E5TBEPXKiVI3W5AG6+Jtb2c+WhFTnzW70W+Y7nNTXhmKE7f817NIZsRNu9ilk
	Bacjt8jMip7r25D+DzK8hOBSj4Z4hqg37Mby48573pS9n4KI2O3pP63k1kHfJmgz
	WsBfWGQDwHF1cV2mfvJFI0pGDujTk8iw0k7E5Ru6+MsNXudZ2jopFjC5J73FWJxM
	nkyEL5yBbUEn5EV2f3Po5b2j+HeHRIOQ8TTzzuTQDESziA4gdHnU29yZ/SG5Degf
	Bt404A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gmac0hh3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 15:07:39 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8f77bf546so4728596d6.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 07:07:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734102458; x=1734707258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8r2Z8bCSwIkqdnaknQhubkt9rni68kdTquLqBAwLVKs=;
        b=LLCgNdNJet5GzV7ExjWBamcaSTg0iom5MT396ylSsvHon3Eun/80/y6zpwCezlDPWa
         Cyf/i8HqJpyGVMJXsA5NxlDGqWiN8cDNaG/hk/r5gTlhjW8VeCBt7Jug2Y9EbtHkDsIA
         uE7ntbl+nN4Nyc+RsaQ0LFOzlfkSYPHrRQpx2Ig/3nIGAp/h/VMMvtwk5DCMr7YPgUKd
         1nO40qUpGjEwgGI1rVUAVrUsUwqmWtAOZ85ft7P379zey9UUs5wUyTHStdsWvxMi6wIW
         c+j2Pa+T4gkp+F2Kie+jujVu27vWT4zz0cDlykH9ZHbhFNJkKpBpBci+EIpeZaPhkgk+
         cYDA==
X-Forwarded-Encrypted: i=1; AJvYcCUVwQRfcst/J4PJFklw9IA8bYBOU1mSfQFoxaJKCQHngtvRo/zkKSKe1fz8PXgKKeg8sxVmQfZ4CZw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAGhD59TImLzgnxoELoobZzjAtWmhX7EWAqNjMGDumjfwBFoQw
	vI7IbAH0zKJHL6uZIB+Cxgaf0qF19dSZRlETRruXQi4Oh1H/DJfCWPp0z5cM8yB/jc0+SlbG9yT
	3lOtuv8OcZFiZ1XhgFZCnu2gh4BnrzChxXBvXiLIYKFFNG2wAM3NiWWw0I2PWC5oC
X-Gm-Gg: ASbGncv2UC0JYKFn47iRpIAvYs1gSQzfARfGakB+LwDVoA2Je+2n/DDc3d3GzbUncPI
	K/581O52bwoIRBh8kPrMLZkawuQ5K443PFSqNWwViE5492yUBFm8GSIao7hdiEnc36D5ix2SRiB
	5YTYc5ytZw5BtMT0f9XY8ZY+P5zxfoMod1uH52+u7LnDV5KxkCL7vBs2ms1hZa2nEeaJTjoPxOM
	AS2j2qb53Y4lUbQGih3KTr2api1iUni1bd/k+9VPlyvqxBjYe7ytIJJIpksQHJF0x9S1W9cOXxJ
	ExHYZplZyPVuIyVYxodlx1C82FTLvlF2Vv4Y
X-Received: by 2002:a05:620a:31a1:b0:7b6:d2ca:15b6 with SMTP id af79cd13be357-7b6fbcef0d5mr137556885a.0.1734102458348;
        Fri, 13 Dec 2024 07:07:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvxEOdiM6Kc3kANPOO51vjQHbv5LbxQEL0AKmrLpKK+6Rv6vcqM8Ix+BZy6+K/I6LvS6psrA==
X-Received: by 2002:a05:620a:31a1:b0:7b6:d2ca:15b6 with SMTP id af79cd13be357-7b6fbcef0d5mr137553585a.0.1734102457956;
        Fri, 13 Dec 2024 07:07:37 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260a3832sm1237814966b.166.2024.12.13.07.07.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 07:07:37 -0800 (PST)
Message-ID: <e28773ef-12a4-4089-9c7b-1be5e5cc7aa5@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 16:07:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: ipq5424: Enable PCIe PHYs and
 controllers
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-5-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213134950.234946-5-quic_mmanikan@quicinc.com>
X-Proofpoint-ORIG-GUID: OgtMxLTTbZuB0oJVX6RcG9CvLSg5omU3
X-Proofpoint-GUID: OgtMxLTTbZuB0oJVX6RcG9CvLSg5omU3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 mlxlogscore=970 lowpriorityscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_070740_261596_C0E446A9 
X-CRM114-Status: GOOD (  15.21  )
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

On 13.12.2024 2:49 PM, Manikanta Mylavarapu wrote:
> Enable the PCIe controller and PHY nodes corresponding to RDP466.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---


>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 43 +++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index d4d31026a026..8857b64df1be 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -45,6 +45,26 @@ data-pins {
>  			bias-pull-up;
>  		};
>  	};
> +
> +	pcie2_default_state: pcie2-default-state {
> +		perst-n-pins {
> +			pins = "gpio31";
> +			function = "gpio";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +			output-low;
> +		};
> +	};

Drop the inner wrapper, in both definitions /\ \/

Konrad

> +
> +	pcie3_default_state: pcie3-default-state {
> +		perst-n-pins {
> +			pins = "gpio34";
> +			function = "gpio";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +			output-low;
> +		};
> +	};
>  };
>  
>  &uart1 {
> @@ -57,3 +77,26 @@ &xo_board {
>  	clock-frequency = <24000000>;
>  };
>  
> +&pcie2_phy {
> +	status = "okay";
> +};
> +
> +&pcie2 {
> +	pinctrl-0 = <&pcie2_default_state>;
> +	pinctrl-names = "default";
> +
> +	perst-gpios = <&tlmm 31 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&pcie3_phy {
> +	status = "okay";
> +};
> +
> +&pcie3 {
> +	pinctrl-0 = <&pcie3_default_state>;
> +	pinctrl-names = "default";
> +
> +	perst-gpios = <&tlmm 34 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
