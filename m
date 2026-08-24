Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91D24C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 09:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcJUA1Jhmxm0S5brRZpPMp0fdcjsR5DS3WrFJ+zW0qU=; b=nlho7iVPvH43B3
	B7aLwKB3ilYZ5k4B9l9i0A3d5LWVKcg8SqFahJ1pLMpNI28ucStsgZLWHUNpzfwy+wPCwQDyKB3ht
	afEYxdP0zLEH2AEwCLybW4dQ5FbWC/2KHyc0wsUrAvUzwPGsW10Zxm9/H3phNYxXZzsx4A6WAAW5+
	tR1rt0m2EkfgvjNmfq8n7pY9i5HFvNDF2b+PwWeXuygbSipU6+S894nTJpSnb/dT00TW4rhFQi+Nw
	zzkutvT5ZMLY7cw1kjSDE+LNgF3q9iVT57k7OJAFOHbMZ8pIfgo0UjkqLbAEwT8Ujjt2KCWNWFEsy
	/YEgu1rQ6SiB6O6qQKsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQYP-0000000GFJC-1DgI;
	Mon, 24 Aug 2026 09:01:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQYL-0000000GFIl-08U5
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 09:01:15 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O7Bhe31815888
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 09:01:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nq580rhORxpw9+EdKXXeZOx42xe2bsQS/OhlKVQqL8o=; b=Pz0t2KBSlVnjmoRr
	Mo+GW7tYI1V2/TIPqrGRpHEYseGTaMRVM95Jy63dASalkzZocbv3/XK2qxw0zirr
	l8mkUcNuvWg+dc3H2oq+D4YzhPlgg380mzt3MKVDjFWE2P3qIgUIT4EOmMZNhUSU
	almrcW/CUOWNBzlsTaEGUkeDZA5cnAn2t9m6jS7P9e6oDpv83eJpLY8HioKE/ZAM
	KOcDtMRb1yR2GMML8QokrX8MlEf1/MyivcfijafNHguKLZXQRbyQBkHJGpX+nnTf
	x3aypLqUvopI4nPuhxkIfhZmC2bxjcpCvyNNAZ6OA22FWgYn4c2hpceiM76LINvO
	Y5Yx5g==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8hbtgdpt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 09:01:12 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-977cee1909eso31718241.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 02:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787562071; x=1788166871; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nq580rhORxpw9+EdKXXeZOx42xe2bsQS/OhlKVQqL8o=;
        b=MwGNN+jQO9bC5vYl2mPXNjfygCo2KTVPzKRiN7T550H8jg1bX28xvatsUzPx7fiJ5f
         U7zCy81uFFoq/fg+YBKN0jVww4sFg81WyG4w/dz3hrcVWMtdiFMXI5TCGD3XPBJEHmDI
         y5Vk2tbRQcdkPO2HdM73CKe4SthHIwz4UCqQ0NTQbwhtMn4mkFupSCp+8Ead+4DFOLIV
         Z0ultLKiMX2Bj+DAhQbec1CTyt2L2ojktRPnYTnnR66Gc8OJaxLAvMzFJBYVCkLkYE0Y
         n9+0f3tbr8CFtQOq7CViZCkveCxWhbbNRV7v7XxLGoLy9JBpBcU+DhrlcsvcutPeFZAL
         oytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787562071; x=1788166871;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nq580rhORxpw9+EdKXXeZOx42xe2bsQS/OhlKVQqL8o=;
        b=UhbfDqZztWAbLNQtjj8gJ5dxa668I64JBbxu+zXWH7wjviu6AHytQpEtHQXotUHRcy
         +c4M4Y3EbnHhyAyVJOq4Xc6ufgV19UUVsWULu7/IdqDEuh+/6loetHPKJdpAhJVxnQYt
         weV1UDHT0rSH4r2A8rfpNx3ketYvaIGPwTX9pEWOrA2iVf3han/Y/cVxgyTFsPwrbraP
         pFe6REPRbcLBenIRyuj/2dlsLgytg5PcKt1rXcvgfFFDgYedxQWBXIlLrtEy1eByjHqh
         sM3NnovYn9qpd/IYyFrgFgyCd7lPASZdj/I3uWQa5thfiBpIr4JhMsJXIyKUbpkPhR8X
         1SwA==
X-Forwarded-Encrypted: i=1; AHgh+RoRL7JTm5D4BvqBMwpfbm5sDX8cZVaGcp8mNZJ/hw9dm4GUipkYLdQrokvPN2IR+z1Bp/EtsQePTgI=@lists.infradead.org
X-Gm-Message-State: AFuF++mUexvx1nfqEBPbWTidJKwUnCt170ClncM9kw91dfoWnVXLuQ2O
	YxPZv3J5XVgUq2hoJL1sRpKjVvvTspTUbxoiCSmmuILyh+2urmESHW51WZz/ne3lUlkjCvlDGef
	Oz2AGVPBC1q0+jwk0EppykmwBI1stvedI0BuB9tx7dQaWpLXWsNW8atGvO7f2/1r3CgOs
X-Gm-Gg: AR+sD12mjy5w24Tu4//U1WUBsAezsD0w6nQYpKZS5znvfVtcOmCc0++XvMN9iCi1r7v
	/VmKVq0oWVX7nGSi/15Ogyp7SePRkj6kZ12EEYHdsEe7Dff0y0CUrN4QSqvjIMcPCrXjUpbYost
	KxOtXhY+as7OHhLYPmgn/ROiQGhdAntgdSi/ruCdwNMvIZvkuqMNqjFUxCMjFkWTVMSC3ZkvORI
	B33DaFe4BqWZ/my5VT1+HdvKnmDuFleLoFr1zANtOCQmDGTln/FpXGZO4tcVUpBbl09vIaKUBNY
	pJnIm3y5fDnmyq0q263R/3opf09/JIQG27zGjp75iEhwfuMg5lWC4Rn1IZeJCPtgu07f/UuiCJn
	XGXxlvVS283fmqfFRFOMx9vvI
X-Received: by 2002:a05:6102:d8e:b0:778:1bcd:ddc0 with SMTP id ada2fe7eead31-77a5f8ee1f7mr3587196137.0.1787562071237;
        Mon, 24 Aug 2026 02:01:11 -0700 (PDT)
X-Received: by 2002:a05:6102:d8e:b0:778:1bcd:ddc0 with SMTP id ada2fe7eead31-77a5f8ee1f7mr3587190137.0.1787562070637;
        Mon, 24 Aug 2026 02:01:10 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a59e00129fsm9009507a12.1.2026.08.24.02.01.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 02:01:09 -0700 (PDT)
Message-ID: <e2aa5f6c-fec6-4be1-b0f0-09bf67347e81@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 11:01:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/14] arm64: dts: qcom: ipq5018: Add clocks required
 for USB3 support
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
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-9-8f355d7ff0ef@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-9-8f355d7ff0ef@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA3OCBTYWx0ZWRfX2A8qp5MhkxD8
 tdNwVOSn04qWt2gVkBDeeyOiHF6o+zoX2yXqRNxqziL8O4quBmttxuKhp71xGjgTZ0xE0/7NtGp
 b07sVrGyNtcQhxJV7bON9yClNcescpmiFO2fJqFwJpVtWaIcgz4p0cvJZdqG5uiGHrUuNaGo6y0
 IwzafI7OOr19YYkhrPa3nRO4SKd5TZXEIfW+5j4k62owOOVaiHOpIe5yURl9nhmMw0hC4TEnhpm
 TAVYWTEJkdyxG4y2PO9RlaYYqfd9Le1E9E8cCs4MVNS/hvfKVbptF8qyYM/VPbNFAwEdRiEnmCA
 DccLQ+XMnHWHzPkQmo4EnwV/CZN1AETZzF8ooRorQgkzRxX0aSoyfG0rFvzVPmKwOhfBqZHJcRe
 S2ClAUh/WsiIh9sKsKyraTwK4rgz5xWqn8XAetWTRsL5HbeNkY8O7bZx2uUuItZMzbywJCEnIRG
 QDR5UVZgvUU0pE2Y+fw==
X-Authority-Analysis: v=2.4 cv=JL0LdcKb c=1 sm=1 tr=0 ts=6a8c0858 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=UqCG9HQmAAAA:8 a=b9ymU4C9UEAgf2vefAoA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA3OCBTYWx0ZWRfX2BXkWBEjIw4L
 XIySrusKHvsodFoCEYeYmJjm4J8UP5br6DK7ibuoBLLOjk4X7NkJZ1r/xFW28GsACtU9DrdqrST
 XwBwRCLD1e2QLyrrkcIORLjcuTSL+Wc=
X-Proofpoint-GUID: XtX4pEm77h4S-6Y5z1aK-yQAC1Ni_owx
X-Proofpoint-ORIG-GUID: XtX4pEm77h4S-6Y5z1aK-yQAC1Ni_owx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_020113_672889_AFE6883B 
X-CRM114-Status: GOOD (  15.50  )
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
> Add aux and lfps clocks to USB controller node for Super-Speed support.
> These clocks are required for USB3 mode only and are not needed for USB2
> mode.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 965649db36f3..c98889a7c26c 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -604,11 +604,21 @@ usb: usb@8a00000 {
>  			clocks = <&gcc GCC_USB0_MASTER_CLK>,
>  				 <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
>  				 <&gcc GCC_USB0_SLEEP_CLK>,
> -				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +				 <&gcc GCC_USB0_MOCK_UTMI_CLK>,
> +				 <&gcc GCC_USB0_AUX_CLK>,
> +				 <&gcc GCC_USB0_LFPS_CLK>;
>  			clock-names = "core",
>  				      "iface",
>  				      "sleep",
> -				      "mock_utmi";
> +				      "mock_utmi",
> +				      "aux",
> +				      "lfps";
> +			assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +					  <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,

This one should be an interconnect resource

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
