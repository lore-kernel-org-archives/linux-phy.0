Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 166C3C5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 09:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svHnm0xuTuWyu214pLSwt7OHSN4WAUy5SUs8Y/zOxkw=; b=NDzkzSiBxEQ0rE
	l9FEQ6h9SIQw95G1e6j7IgCtrZyy6wrmx5GqxAFTbS2XmF6Sz6rqHB9uigCxTrgEm6oj6YjcFMx3f
	4zXO91qleImGQZfRPRgQC7p3Q/RHPSQyu03M0Hv2Um6kLw2TShdftho4UbkY6CH3FRCOfyIXtlgXp
	rSCW4bt7aT7FZeTujFsV7q9K6/hoYJq6Zsip4WxJkup7rPL6zqo++v17bLrOuRb0FRZ7cFhi6VUzY
	lLOmrpkVi6+nc3XkGzUtEAN9KMuQbWeENVgUII1y8d7VilCYWRkiFrRj5Pvpg8wXmcDF6d+2Z/f1Y
	b/2+olli0N7LYQjrg/Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQbC-0000000GFmp-2n5s;
	Mon, 24 Aug 2026 09:04:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQb2-0000000GFfy-0klE
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 09:04:01 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O7j59n1184973
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 09:03:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O1tg+9GkDewkaIGXkzfNnMwEh50htryN5gYb6ZgOR8w=; b=IUdhx2wMC4jBzqQA
	RYhN2tPt6/sXODOh+KV0x0ucDTfua/yQSnTS5B5imfiQevVkBizpHMrzdLkrf2jx
	yTA7jXFnHmYcKxy9dExIM1oJZAYxjNpOHj9PBGRSzLk+MWQFp8Ll82VJA9ve25fE
	GujNJmf/hoXtgHbm/NFQBiUcBMStm0nr6nakgXK4udBFuWwxgGxADG2mnY9qWLsd
	3ty/al48kJrzKqcixd++RIQ3Hpx58W4YfjzjDgn4HAy26MocgHtBGCn8Agecyu4E
	uiAPCHaGwAJ18inyePO55eUHYhSYtKdVMMjgbbajyEtQmZRQRL6Dk6+ZxmhHfg36
	+yMvmA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8huf0b14-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 09:03:57 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51bfd1772d8so7320811cf.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 02:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787562237; x=1788167037; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O1tg+9GkDewkaIGXkzfNnMwEh50htryN5gYb6ZgOR8w=;
        b=AljVFu51ddKNn3fCfSt/c8t+ga6SOD4WoDs1HJdnVhN0TMGLztQb5qDSIJKBfQMh2c
         sPZYiA+EtF3tnfXFFODoh09Yp6NCbAGCEND14E4nJhq4d+95VJrKBkpWisVYe864qKTT
         fpltF6AUypUlliCxDIhYZeRRRWK6DwK0ItkdZsQVoHtI27VeiHP0yqWdyXRvTuGF43Vr
         VQJD1bOaKmbLsxx7+dbUrQmFbqJ7EgyBjdnDprROi5k4wHCO018sw/6FpYCxG1vuzd6S
         8wqUSEKDIfYFTRYM/2esaa6PPvBXt8IGhOdtpQubK1+bm0MMwZ+MUYNHlBHGW6AgTeBj
         W5uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787562237; x=1788167037;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O1tg+9GkDewkaIGXkzfNnMwEh50htryN5gYb6ZgOR8w=;
        b=C36SNobdATvjdwGEoIsln4QiohQeflAvRSPWGr7sKI4nwbwnBZK3B3nNXb3oe/7ryQ
         EuSAy+hUFxaW16//nJf369TBnSDeySyNdKtIE1+rfE5Js6LI6ezq79vSoCyp1hGKuWPt
         CLep4RpQNSJ27hK2grwoSlNSE6WiN4xKEkHljiXVr4ncmfGPxALrN9rpo0Kx3xEnqzYO
         chDe+hX9j2gDv49khTEh8DD+ZuyEs6KOXTu54UNTcPUYFfB8aE1pz5PAWoVED9aeTM9f
         Rf5ct5iZPazhEAwC/2iUJmBHWepJP/aIDVYMX8KY4Z2oZZJIvJC5wSe3TXhvB5m+aC3q
         Q6tw==
X-Forwarded-Encrypted: i=1; AHgh+RrSo9yqlvYSgtQeYk5rbPefmKB/6cGEd4fjAv2R6Cq8f6ypQldJ4jnzUiAudPo4lTj6Ib0iWjnDV2Y=@lists.infradead.org
X-Gm-Message-State: AFuF++lBFHKc9b0HXbAR3AwuDzrPOTmwPPYL9gctpz6IsNbMJ28boO9w
	Ql+u8XPZ7zai4Ra94sERk/csCO38jpGwFkbeC5oCcem79WpqG7hwsoC91k8cXkZClIZFgZsplQS
	qmE/eYkWguBftqWwqTyCiwgOH86EzznrxfeNVa+1y0vxdStVjtQ7Hf6UXiITP1384qre4
X-Gm-Gg: AR+sD118hzdYEv+oQkicuDhYhTx0EqNlN92/bDGkJy527Wn0spcTtQFeTxaXyNT9rI5
	v31RlpwE0xuQTNIE3UApHEiUktudlw1CZeeY5uWWDTBop3rXW3fo4Yv62lsyRZUeJ+p3WxyTNcC
	oO0ClVz4HEKA6smEdYppG7UHbqIEh3I2zZdYXBc08GVeTCf4hpXXIqmJSWvqRA3L54mYnERNOr2
	g693zNyxhZjMLq5zEImzYe/EuQOhLdL2/4OeJrmTllTPEZkmxqO2gtqC53VqozYHjCNGJh2YPjn
	Tvwyw6PSylnOKfQb8B+V6ZeCebbZdAjGR3dL8t5/I1JYyplfGUOaFJMCbM3TZy8HpSgzPA2yk4m
	pqgPSVpS5aMZGp0okM5eThPE1
X-Received: by 2002:ac8:59cf:0:b0:51b:f40b:2fa2 with SMTP id d75a77b69052e-52df560bc24mr185933041cf.1.1787562237358;
        Mon, 24 Aug 2026 02:03:57 -0700 (PDT)
X-Received: by 2002:ac8:59cf:0:b0:51b:f40b:2fa2 with SMTP id d75a77b69052e-52df560bc24mr185932601cf.1.1787562236910;
        Mon, 24 Aug 2026 02:03:56 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249672becesm1192392566b.42.2026.08.24.02.03.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 02:03:56 -0700 (PDT)
Message-ID: <f95e1af9-0808-44cd-8323-687b4de3f158@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 11:03:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/14] arm64: dts: qcom: ipq5018: Enable USB
 Super-Speed PHY
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-13-8f355d7ff0ef@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-13-8f355d7ff0ef@outlook.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA3OSBTYWx0ZWRfX/1nunYYAJOLm
 T5T23bfxFQgQoDkgbiZMPntdKxO05/tblV8Rjhm898p6UaVUu4tjORK0PW7ZTOBFfRL6s1mO8P8
 3Ag3ftFv6FwsdFFIz8qQeg3sY3iijDo=
X-Authority-Analysis: v=2.4 cv=Wac8rUhX c=1 sm=1 tr=0 ts=6a8c08fe cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=UqCG9HQmAAAA:8 a=13kpQq0dworOtm3SAaAA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: R-ODAm3YsxZo_u7wDzXZgsiJQgq1IWiS
X-Proofpoint-GUID: R-ODAm3YsxZo_u7wDzXZgsiJQgq1IWiS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA3OSBTYWx0ZWRfX80+n/JvBqNXl
 7Nk/q4Rbli2Cv+ZT1FrJUZE9zvMz4krEop6MiLs0LulMRLTdH5935dEdQ4ovubObfi1VmjO6QmI
 B4AEDjqC+uoyJZUld8U29J8EoN8IZoHGvdPE+21202E1lm7W6PPQ50VG1dNCMAxBb+T3aCNHzkf
 2QqGHm8pVIQKMKXzKyiYi1lmRC29VADIGgUaY8i+eEKQWLisGxaZBMqxXO+Gb3W04Q39VhohxNx
 wel57JYBGXUyiCUsNoLMzHtjc7HFEm6KYIX80oORP/Bbwb/8P0So7lpEq+Od12AbwzetUKRcMOu
 eb1+4Euf23ezmsKT5vnEWrxF5CTS6i2OH+CNF52+7EZ43gYRgSef43j8ZNNJ/ZvjIrcOgU6mtv6
 lyzzaoxgICn+7TzefA9Fp0PUFgqaU4VnjAavgHTpyY8nOfA75KKwQPI7+D6gLyrTtatkAtzmbR+
 rlOtYJvjRQMwbNjc4mA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_020400_343863_A6D6995E 
X-CRM114-Status: GOOD (  14.72  )
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

On 8/12/26 11:34 AM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add the 5V supply regulator and enable USB Super-Speed PHY support.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> index 8efb2b21ed9e..ca29f271e673 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> @@ -22,6 +22,14 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	regulator_fixed_5p0: regulator-s0500 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "fixed_5p0";
> +		gpios = <&tlmm 24 GPIO_ACTIVE_LOW>;
> +	};
>  };
>  
>  &blsp1_uart1 {
> @@ -119,6 +127,12 @@ &usbphy0 {
>  	status = "okay";
>  };
>  
> +&usbphy1 {
> +	vdd-supply = <&regulator_fixed_5p0>;

I think we'd see fireworks if this chip got a 5v input. I'd assume
this probably needs the usual-for-qcom 0.9 V and 1.2 V regulator pair,
but perhaps +Kathiravan can confirm whether this holds for the router
SoCs too..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
