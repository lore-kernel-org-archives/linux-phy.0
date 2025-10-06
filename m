Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 768F7CCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 10:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDw0m5cxuio4gxjCvtG4pGj35NhfJjiZyGI9+MbpBe0=; b=VtBsT4bOe/dK/2
	IOw0dLO0EN7oxu9Nk5LTlyQQXa6UaBfOBdkEGJ74jYap34W+/MXWCDqKNsXtkABkSJv7cwfxXC8xB
	lIFo3mIRajWPAkWQXzw92hHVHcdtuIdJmtJ9w1/hXpwd99z/sn7meHO8Sp/u02qLjBAlWFvPjtzHw
	wp1DPQSxmV8paNkrElv8DsYkqsyk6c8u1LX972WzgO+0JwtBlp5Arnd3HWET1AaKdPAfuhw34TR3I
	AO7yxnHZaBJs4jC9raxVRAlDyw9TUPE5C20wTEuv/wh19hBR8xf+yqi9XI9xmUXtVaYBIZEaGEktN
	V9GLTO0UgRJ9OdLLNLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5iPG-0000000HMZR-0mQF;
	Mon, 06 Oct 2025 10:25:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5iPD-0000000HMZ5-1GIJ
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 10:25:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NK1IN012815
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 10:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HBDnqR+G9iEwaHQ+SA6dOyDlxOy5jo2xatcpOEfaBqk=; b=FhcZ85ZCtkGl8qlM
	+BxR0U0WgNixSZ9oEEx+2uL9PgGDMIsVdRr9e5uJb+CCTSFGA8w/6KZyCE3l+xPC
	9kqtdR6Vw2nSYJT1epHyPozlbUiWVXmpRsfYcbOb0w6L7oZ9Cv4d2ypJYBijc1Gg
	xh/vR5o5o/FrtbTmOdvYRrIDuSD4mdf3j0L17E8LscjU0sceI5bxz/2ABFul1Z4y
	4VIYwNIyRdILSNmAjpIj2eB2874XZfJAiXkTThaHx4pZFwRvGWvNv3l+E2703r8E
	0pFPBeyfS8h519Fnuzk4oWTkDXNK9BpBxolZUhWOibmvjfacYB764zakstpQ5GHy
	ISAVXA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6una9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 10:25:22 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-81d098fee40so8311766d6.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 03:25:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759746310; x=1760351110;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HBDnqR+G9iEwaHQ+SA6dOyDlxOy5jo2xatcpOEfaBqk=;
        b=H8uViLsFnfHmuPK9zoNt+35aPpszd25IfSGBDzGwfmodEzK6dUmTHSdX+hyyx9YSEf
         F957hDWfqu+OrJeDLz6vRy5b218uTC4Kq+SgvqPWSkgi+sizXFznTCIvxQF1ZQ7m0VPh
         nw83jmE/cTpIqZKZPb2bBm7ltQ0q1n69JwvVTXOnMqk+yO1EFw74ErBTpaLvt36ohO3i
         FI+/kqMN01QjtKqKtn5pp+raJd79eVDRftr3C3x8az4w1Q46BNzru01O4lqXcHTq4t+j
         vOT2fJRh/W4n0l6m42RTbW/4+eMVhFZBOk6g1c8f/9/L4mDvhnOPvvkc//UsrkxlhWTS
         t8Iw==
X-Forwarded-Encrypted: i=1; AJvYcCWCaPUE3v9spdPjl3omJd2SL2Ih5+u1yXepLelSgHsYsjSIiNx9z5n9QcGTMoU/N//ET9+XKkvY4QA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6HtNIb6U1I+i8SrNVBLeKfDNSPLLTEbnJJAdDd2kxfePfWln3
	Jc5dGksRvWxD63d8zClJO79xCSk55LxjQGhOi7OmjekqoHn4a5ufPP+fLjHMdj8wiRzrYk6EfLf
	aISnkEz4o2InHXvjG5f9nyaUVzE+Tr5NHEj812537IdWHa/eIbQnJQkH4+XDOEWQrqLKa
X-Gm-Gg: ASbGncvekn9igK/qS3tZzU+L88exQTS5yAyefM+Rtj5Qhg3GkOkL+gYD6a5mGYUDvte
	BcuImmmBnKAi19s9izjtkOX2hdurFIBTeiMSGWvYdaSmAQf7tN9PvIBkYqs3dzmmzjgTsqfQngt
	Tm7wrhze5PDlXqREyJvhjOnFtjcJa62RueIiOtGjqJi5RRieB9BoXo0ev/uOzRDs9ZNR+6TruNG
	8xwCyqaR7VOY2FuxBwFy/6FcLDXyrHDU+PwSOM3CPg+l77EJifTZ06r3k9CKURoQcXYbSoK34WJ
	rNP+YyYe0piEwKMTlbTEzTY8jYpVpyn2RmBOF3Z8Mm9sFbyIdYOYB0oD5N4hJlkLeOLwcvT7ffS
	Eq4JmKQ9WE83LfwH02fAgmoFSRDw=
X-Received: by 2002:a05:6214:20a3:b0:763:83c3:5977 with SMTP id 6a1803df08f44-879dc7875eemr104493356d6.2.1759746309760;
        Mon, 06 Oct 2025 03:25:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAsA2+8LmsPWiW3AgLrAN4zG8ewGH8WJ0c21RL7gCTD0Oc50rVsz4UkK95aBRsmX1q0+0njA==
X-Received: by 2002:a05:6214:20a3:b0:763:83c3:5977 with SMTP id 6a1803df08f44-879dc7875eemr104493176d6.2.1759746309238;
        Mon, 06 Oct 2025 03:25:09 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3ad614sm9765621a12.1.2025.10.06.03.25.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:25:08 -0700 (PDT)
Message-ID: <38416f73-9570-4f01-b179-cb653a874b69@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:25:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX8RVDdq9RoTmc
 VnFXvX/7U6rPeKcmt2wJr5/xr8CNXI4mJvXQ4aslbzvF8tzYNUgIqW4mXTAoHDFecW6eidyRoFU
 79NUkFKDF3cxozVioPu+NpapU3VjY32nbkfk9yqcPus5y6yb/5+Rht9tU3Paj5HuO9WdjCBFXU8
 a3OrG2JSXPgVocbxlL9ZAsZHxpA3gDuqttbfv+XH/+/mzNrjM5We+1qMRHz7UrOJjDOe901JMKm
 kkX6UKs+V28zoTuwfbRNaJvO/F8yrBS3CO4m/ooVyj/UqzZrIwQYVyCV9Yby7D0pr9h41ZNpz3D
 CbcbOK3AnbwSnKEy1gKDNaueFYzC3faCv9Fqq11O6d2B0zBEuLdb1sA9kyDzG3nJMupRZ/Y1LU4
 QsG9JY13i5tOl0PsqvCbhXsrW8nqrw==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e39912 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=b4hOb4oQgmsngjji8b4A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: eaSpk1rKhBVaa481Qxmvy_rQU9l0727q
X-Proofpoint-ORIG-GUID: eaSpk1rKhBVaa481Qxmvy_rQU9l0727q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_032523_485055_5BAAEC57 
X-CRM114-Status: GOOD (  12.27  )
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

On 9/30/25 9:39 AM, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> Add all the data routing, disable mode switching and specify the
> QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> the underlying DP phy.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +&usb_1_ss2_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p9>;
> +
> +	/delete-property/ mode-switch;
> +	/delete-property/ orientation-switch;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/delete-node/ endpoint;
> +
> +			usb_1_ss2_qmpphy_out_dp: endpoint@0 {
> +				reg = <0>;
> +
> +				data-lanes = <3 2 1 0>;
> +				remote-endpoint = <&hdmi_bridge_dp_in>;
> +			};
> +
> +			/* No USB3 lanes connected */
> +		};
> +	};
> +};
> +
>  &usb_1_ss1_hsphy {

You have to move your _ss*2*_ node below the _ss*1*_ nodes

otherwise:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
