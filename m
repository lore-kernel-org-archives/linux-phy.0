Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C009A606A32D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 04:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Il7QR1YW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LtUf/+/j;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Y8Gxue6B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fTp4jMTIyvT7qLjDeEEFGexWnS7HPC+dO2gV9UmfUWE=; b=Il7QR1YWhqZvRD/6WgObTftv2O
	ot1f+Wkm69JcInc0iGuaC9aLQW+IyZeUncVBHuEHNT3P/Li3mARj9ZK/nf4p0AQ1r0lAN1Z4OAoUD
	3lT6iTCRE7QMOqx+O8p1GBiFfZp+e2U/fc3VHCRVKP2wH/G7vSEeAHZ47iiqpLt9vigBcqrsuJ5ys
	y0P9IANXqXm2GRYqFZYUKLC5P8Fpw4omfJo+lYYibIp8gJFWBuPiIE7SbUdkDqMMcAGVCHgcylbQq
	tdprZgpZ++mAtMQDdX35OpK0k1BpuVtbRyrLsJYGyUaJNjosnbYeS45IoYGQhGzLsaK9b7iMvuxIe
	DlpVKcCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOT0H-00000004K0n-0def;
	Wed, 04 Nov 2026 04:53:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOT0E-00000004K0H-3jGK
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 04:53:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A40RFPB1248584
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 04:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wxBgIl4fVGGsYbUGSadGuKeGA8YFeGPvnpmrQUI2WZc=; b=LtUf/+/jSxrUVpBM
	0QGauNHY8lMqgT4d3p1S1iK++TF1Dq28+WWlfD9aRf2IbyneUo81z4SlUu1Cdux/
	b/3SGzITBKoyFM0MwnB16i7Z3Uu8gvzvVlgT+G/hV4699SkptKNiq1lTHMpOaubd
	b33DE0fLlSToCvbB76etJJCcicgpC/nloN5IpI3XUs6xfhc2e63pD3RuVsKWVgRS
	N60H6HZGf7MhvWC8XZ/3450yDFnoGjGPxf9UGiA0LuN9ARK15J7lf/H2Dp0W4q3y
	R4WGM6Y/25CfT3dtii2aT8jlz+Ipbmbf6RW0YWiYoBpOHptH/e8y/1bseYqMk0AS
	vxwljw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqpuv9jpp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 04:53:38 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1b0d864826cso1221125c88.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 20:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793768017; x=1794372817; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wxBgIl4fVGGsYbUGSadGuKeGA8YFeGPvnpmrQUI2WZc=;
        b=Y8Gxue6BgBmh2HGhwEfX30yrS7wB4YB8PNs7rGftX9+PSGossPXFSAOu8ym+ocqLxr
         sB//ggai9dobMneCAaMxGEM0jt/MEZLAkHJXnJ9DmFoX7qe9waZgNHXwrwyXJUkjvwAe
         bcs3UIucUTfk/TXugYNg2BvbqgCD9UoDx36+0PRuZEfkmQoZY+YgjnXvfJie9/g+ue87
         hsT6GDcRKcSdjf417DJNR/OJ/X42XYasX7Ojl5iXR/UHF8D/+3LRD9EAyTUHIFgZm28q
         MMYW7HlkET1lABHagCVcoG746J7YCN9GaxPP8JRoFzQb25J6Kpgal+s7F8bOkw53XON2
         SGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793768017; x=1794372817;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wxBgIl4fVGGsYbUGSadGuKeGA8YFeGPvnpmrQUI2WZc=;
        b=uvfl4bjqQ57rDXfQTcdAyy1szQQTzCOZIkUV/2GvJs3oxsL5AbGEz6zsIGotdq71j7
         X1AhSDB//jXqpamRTvqeDnSzzEOvy1yfJhkyTeC8Lfn8kTM6MMGgVOpFjJFGyKUOT9s7
         MYKq0sTu+oOmYKuNfVwYVYdqs+LWMNx6Yx9m3h3MLsww1tlDRI8ksYR1k6RxbxwKpZZj
         ODYhbs4Afbe6rUscagqsgQy7fjXjuMjOqnUdPRx70Wger3MjlUb7T7RMT/x2vpa3Cu03
         r7AeKB7WFd+qZkFuUFoVmq5mOUkQUfn37oJHxNUyuXh4PBb5Zx135ZEWc9fZ0cE7j/u+
         GSvA==
X-Forwarded-Encrypted: i=1; AKwUvBzYvFWWz7eggQxVTp19PUESpnO+rwDCc1XlbXQ9ltOYmZ6kpHGwsJ2qamRHPQxKIF0UuRL961oNPbc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+dwuFn3SwRufP0JSi1WENO5pVieA4WTqtnyrDul6WMWjiPisuN
	DSHeMt0mVl1Zm/pqE2VeWVNL7dibAquyQbOzLcZEi6c3KrRlZ5va1ZyRlDl6pYZt5/8hjgKiUYc
	NvNriBda4X5T3RW8TEoiSskPn75lkIG/SNZXHZayIqwDz6hWAbm7XJAcUQIisZRmeIXfB
X-Gm-Gg: AYBFou1MZ2wtWdkuXUMEqyTrEu5tYGV0aho6TRAy4Jgn9y3IjPUz+Z4XKwG/2Yq4MeZ
	OVmiHLDWgnkuXQlQCjpfDqtE4jzfi1qpgektKxW1f2NIp66XC2746WlR0vM7AAXZLiX6I+HtNAp
	8XmZATRpNvexTKPO723o+p6AbwnCyn8s0FxhsnYs88kW5IAhYhED6KWCkBBdXnf9pMa8/q+lgin
	63XEQmey+29xKZD9keG6s06WuvQUJDhU97Xu4mX+RB7XRD4Oc57F9K8gyhxyYono3OWNNb3AnmI
	aYoF15yCVGHCY4TdTsV6BxX0MrvGVaR6JvOuvy3GLEXKGJFFROFFuWL6aC95kWjzcAIRDDIR7Ro
	lN1TZkH2lWfxwcKbq6n7/jyvv7hhs0oDdKnjWRV5XB8hLQeIYTs5cEoD+gCrgSUXMU3Oppm9fdi
	g=
X-Received: by 2002:a05:7022:1117:b0:195:49ee:94c7 with SMTP id a92af1059eb24-1ac5a0b579emr20178584c88.8.1793768017255;
        Tue, 03 Nov 2026 20:53:37 -0800 (PST)
X-Received: by 2002:a05:7022:1117:b0:195:49ee:94c7 with SMTP id a92af1059eb24-1ac5a0b579emr20178539c88.8.1793768016741;
        Tue, 03 Nov 2026 20:53:36 -0800 (PST)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c65194sm3737394c88.19.2026.11.03.20.53.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2026 20:53:36 -0800 (PST)
Message-ID: <72223121-cb42-422f-8ce5-4cf9f41c5aec@oss.qualcomm.com>
Date: Wed, 4 Nov 2026 10:23:30 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: lemans: add CSI2 D-PHY
 common-phy providers
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vikram Sharma
 <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>
References: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
 <20261103221026.3662383-2-anusha.nandi@oss.qualcomm.com>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20261103221026.3662383-2-anusha.nandi@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=O6SsLx9W c=1 sm=1 tr=0 ts=6aeaba52 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=LJKXChJILo_4taeNnY4A:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: g1RqK5qXZXDD20jioN5L003olp2mq5-i
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDAxOSBTYWx0ZWRfXz/WtLrPyO9I4
 HuZNWH5LVDYKl1Fe/EsvnZ7RFHEc9BA2JI4/adQEZG0apoHCb0n4gK7y9QG/TtkqwG7+MBTIp8L
 6kRI3DOw7w1X0xglmcueQuvX3RNQSzU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDAxOSBTYWx0ZWRfXxHoMesm4Pobg
 8hKStKFDN8onE+rNqEVSY7HeHvOTyNada5nsbBYGFUKGpN0DsmtWaphpcf8O6R9kJa0d+cujtR/
 eX+BiV/xR3nV58CqgUCcIJgTJSmH3WSc/GgsMvF3pJd87dx6HxeUbe2qHLfxCRagbVPlOfi5TJn
 KgrMgIsHbXT3IYBl8wLV0w3K/wPV9BBrdlseHdeygmswPK7x0AzGOjDp/Nj9dKwRS0Spq8tZil0
 KwqlLbGYRJRPzSjqLd+xTH1saeOXWcC0okfMa5BcDAv1BaGr69C++EwChfVbJz86arG+mYHaHVz
 IRZFf5qELZ17nyYMeFFYWWZTOLALCv8RXnqrKv4Tcj4m1fcItslHTRr874ckpR+aT5LF0OL7OYd
 qDkojNVuSq9kqhCK4DI6VlHeWAB4qQ+mb2fnUUJrz3xRTWRVIC89zsuNtJaoFEscgD5Fve5cQta
 bFdJALu7CFnVWknAu0A==
X-Proofpoint-GUID: g1RqK5qXZXDD20jioN5L003olp2mq5-i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_01,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611040019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_205338_933755_8BE1C73B 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 04-11-2026 03:40, Anusha Arun Nandi wrote:
> Expose the four SA8775p CSIPHYs as standalone qcom,sa8775p-csi2-phy
> generic-PHY provider nodes (csiphy0..3) at their existing register
> addresses, each with its own OF graph (port@0 sensor-facing, port@1
> CAMSS-facing) so camss_detect_legacy_phy() picks the non-legacy path
> once a board wires a sensor through one of them. The camss node's own
> reg-names/clocks/interrupts for the CSIPHYs are unchanged, so boards
> that don't use a provider still get the legacy binding.
> 
> The provider nodes are disabled by default; a board or camera overlay
> enables the one(s) it uses.
> 
> Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 140 +++++++++++++++++++++++++++
>  1 file changed, 140 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 1fdb72fa5518..2a30bf1c82af 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -5164,6 +5164,146 @@ cci3_i2c1: i2c-bus@1 {
>  			};
>  		};
>  
> +		csiphy0: phy@ac9c000 {
> +			compatible = "qcom,sa8775p-csi2-phy";
> +			reg = <0x0 0x0ac9c000 0x0 0x2000>;
...

> +		csiphy3: phy@aca2000 {
> +			compatible = "qcom,sa8775p-csi2-phy";

phy@ac9c000 through phy@aca2000 nodes precede the existing
isp@ac78000 node.
Sort CSIPHY nodes by unit-address numerically.

> +			reg = <0x0 0x0aca2000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
> +				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>;
> +			clock-names = "core",
> +				      "timer";
> +
> +			interrupts = <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			power-domain-names = "top";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
> +		csiphy_opp_table: opp-table-csiphy {
> +			compatible = "operating-points-v2";
> +
> +			opp-300000000 {
> +				opp-hz = /bits/ 64 <300000000>;
> +			};
> +
> +			opp-400000000 {
> +				opp-hz = /bits/ 64 <400000000>;
> +			};
> +		};
> +
>  		camss: isp@ac78000 {
>  			compatible = "qcom,sa8775p-camss";
>  

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
