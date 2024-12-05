Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E095E77178
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 17:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JTMJfxZZEb37sd/ujKaqJTrgFCt3bGKaOVTxRi0OaA=; b=sHpKo3GqXA1YKC
	0lW3WIuCr2Uriv0cGFVqKIsP6QL3wKzYKDAA9dSu3cmvA1huBmJ2PkMNXh9Z4Sg/T0oxzhdaIbCtc
	iPqvxpNmjaKjFUe5OxdUqsDvHBdv//4YTW7MSxWmI1y0YJg3zyYlYh4yZ6moul2Ew74v4soV8dA+d
	QIrmRQNSieOsfyXFjF+lj3RVQVKhHPqmpbC1v7cpMNQ+I5jsD5xPXinaofOZjZezAKr2kJ4YdHcDy
	qer0PzJ2T22XMnppLh+XOybga6TEXqm6fponXJZsHTM/6IoHgM08O2wSs7MxT9tjqxTXUKBGcYh0i
	KA9JAQ41W51jnuUHM53Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFOl-0000000GtOi-0LD0;
	Thu, 05 Dec 2024 17:12:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFBJ-0000000GqrY-0yTj
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 16:58:26 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5EVxYC015071
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 16:58:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lvYEHuLrFacd4tRRJuuJxO6xcj+0DaH3kv4nnEJbJa4=; b=UsPhLu6riXg0XWs7
	hEZnl5ShhTpuyrx7sviAjFccQ2TLQQlMnIgY2nx8H9KwXM1s41o3cev2nUNmRO7/
	9jc5qctUPLAchs+IiQcl//6kYTmJmAi41PYUfd7YQyamoO1R1q4GiZ7nr/QwhHbH
	1+sWHdc2qllGXlg5aWRzTJ4u7tV0EmBivdlPxvfItWXWFWbMfohOCo8Vl5H0IUuA
	GAPcVEaaxFlwiQ3IOt4w2xSMXQ5rJHmdMFn5xkJz+cXCsEfMfkw+zcOGr02RqENu
	qOYfQMkAbN36dZLwdTbVeyvSlAxvJqQ/OmMY/O9vCK8TFigjj51VVfp1AlqKXa4l
	TK6Vtg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43be170dsq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:58:24 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8a0c8ecb3so2682256d6.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 08:58:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733417903; x=1734022703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lvYEHuLrFacd4tRRJuuJxO6xcj+0DaH3kv4nnEJbJa4=;
        b=ILvBo0NOuc00dGVePirqyKl+/gWq7IupLdpGB4fMzhRa3DJ2qwFqWJiqRbVv9rFNFV
         rkhSOrzvjCV/sA5i9ZvGSiaTh2JxcLuvDIOFwXBZHHrauXXbzWEXoxPGQXTe4TZeaX6v
         lKCIldv5Fal+sFaJESmpV+FlqsECmC9xALUj3HX4Ro85TZ/B8AcIztwulW1ZvxsS4Ja4
         a8lj0E8Lf995rMstRPrGa7HSCpYbZtNduJAUTFB9uAkW+sZ/VEWp4ncprVG9p3ep/Ajt
         y3WmpDvRi/Y0uggDFMppNq/HSzq3qIi/6HtV4gTrcf6HWOts4aTM1EWMS5pWLVQNarRe
         jhiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfK6AN5yFAjrGS7js34uiGItkq9p6UPvtM/jA4h6W6ONG5orkZYTKsCNhbVkZR5BcjZYfWUc8NtKs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyL3qUaWsOku0Ulx4Jg5zinr7vpiY7P9sr5LDjXDeBn0NPEMlMZ
	2oq4RqQlTxVuKXI7pC/aeG/RdORJKH0ooAWkKq2oYRvwP87g7O2va7PdHvF0ytPkFOIXQ/YoJUk
	yLdgoJa3ARSJk6pBKaPtev+qXFzPGqtMKrFq8vBHcxXACAmPzKjicqbaq0l4hnIYn
X-Gm-Gg: ASbGnctyi7FxETsktpaU7ZLrYNZumFfBiBUU6dz0t3YjHOZgmXFnY4YxzurPZYmAdL2
	OE7avYrLg4cKJ0jtTGlTuyvm8xNWO8Tq+l78Omz5eBrKYjnS2RR+FGtcxwyO0QyhkVbg8Rlzxjv
	T390bDV+kxuqU0VwfOs5DQPoBaObIIAANUK9PrfvUayTXaKhSW4C2nCuf3hD4tLmTZcvSso1Hv0
	skXb8QqJFDzE4M78dhENxbdn2moqSXuSyAb7XQGejfBfIR5KWJ718QddGajyDX6iFR4dYaZV7K/
	kG/oaTY8g2tDDt0L5ihtjZhFoa+d2Ak=
X-Received: by 2002:a05:6214:529c:b0:6d8:aa37:fe17 with SMTP id 6a1803df08f44-6d8b72b8ce1mr64771076d6.5.1733417903457;
        Thu, 05 Dec 2024 08:58:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3gkUNAmqO6vru/PCoJ4kSNmbvskxFZvs6Kgllqc/8lYi31ikybio9azXiwqqimK8yIfYovw==
X-Received: by 2002:a05:6214:529c:b0:6d8:aa37:fe17 with SMTP id 6a1803df08f44-6d8b72b8ce1mr64770836d6.5.1733417903026;
        Thu, 05 Dec 2024 08:58:23 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260ea41bsm114574166b.192.2024.12.05.08.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:58:21 -0800 (PST)
Message-ID: <8a8cdb54-93b9-4093-8e85-f3d698d66e22@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:58:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: ipq5332: Enable PCIe phys and
 controllers
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-7-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204113329.3195627-7-quic_varada@quicinc.com>
X-Proofpoint-GUID: 6y0Axq6M6y5asYVYmK_0kcKWMbuye16x
X-Proofpoint-ORIG-GUID: 6y0Axq6M6y5asYVYmK_0kcKWMbuye16x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 bulkscore=0 priorityscore=1501 mlxscore=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_085825_389316_3311B590 
X-CRM114-Status: GOOD (  15.64  )
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

On 4.12.2024 12:33 PM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 441.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts | 74 +++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> index 846413817e9a..83eca8435cff 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> @@ -62,4 +62,78 @@ data-pins {
>  			bias-pull-up;
>  		};
>  	};
> +
> +	pcie0_default: pcie0-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio37";
> +			function = "pcie0_clk";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio38";
> +			function = "gpio";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +			output-low;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio39";
> +			function = "pcie0_wake";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	pcie1_default: pcie1-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio46";
> +			function = "pcie1_clk";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio47";
> +			function = "gpio";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +			output-low;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio48";
> +			function = "pcie1_wake";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
> +&pcie0_phy {
> +	status = "okay";
> +};

'p' < 't', please put this before &tlmm

Also, would this be something to put into rdp-common?

Do we still use all of these variants?

$ ls arch/arm64/boot/dts/qcom/ipq5332-rdp*.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp442.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp474.dts

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
