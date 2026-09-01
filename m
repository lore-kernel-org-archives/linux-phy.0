Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 531DAC624D2
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBPDZXtfIY0xnAqHjrbF9z+4zvFUxKoXfxLfd2hiw78=; b=I3Mf8JK3vQYz0w
	U7f5CYgLM8gPfwbOKr+cycl4UJPfCDY8B5GSWfl7RMRQnpT2qOEouZKR77qOL6DnogeZ0Mg33eg9j
	LlTjvIR1WkS9IyKjqnxjWF4Uw2YcftFudLSmnW+jeSGWIjQh8lzweqX2ns4PVn+EZm0hSM57WL4UQ
	+R8bAZZ3y4+hGvppRJ7Ab4VyUCZF0A6MomhAH3hpMjst1gCrsqXIsX9a5LuEJy+jIQ9L6hYXeBp6F
	T+LlXO6/Atj1XCBPSet1OyHG1oggTi4+aZesJ7A9OV0HS6jN/u+UNUsQML4CntRunfrcvf15gJ32K
	R4NQSTV3RO/0AUJT5Z/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Ngc-0000000C7Ol-2srL;
	Tue, 01 Sep 2026 12:33:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Nga-0000000C7Ne-2LsE
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:33:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJdxm2994083
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 12:33:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/LKqjBcRNiuGtvZQhplHOiUwQdWdAXbYDnr76Hzm+RU=; b=UgyopRWBjVj+DPTX
	cAvb0wCnTHAOgC5V1wsNuga5eh6RC/LPvxokzQAOj0HeJoU4+2TvcnzLKuxg5xIf
	UwCRMRSWXsJ85N0yG1JVkuEq+dGnfjMnTAUCL8kA/+y53bbHV2Vy41ogesTnV94m
	d6/V5obm0f3H5tRMzTqZKJbaDSBA40Dx7XhqqykMBN5w77Un0dLraTWE2MxDmj9H
	9RXlbg5Rh2H6HNwKEUeHwHVkdOrYFKMwz3FvIv5gpcKdU/tdrKlEqme72OcP+9mZ
	b+lozg01MpOlWxlCJ4rK+YX31ekiSaVFWH3yfx6qVHJhhRcfNcJV7SZGN20WljVb
	nJjyng==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdeg3ccu5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 12:33:55 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc1b8088203so6501031a12.3
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788266034; x=1788870834; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/LKqjBcRNiuGtvZQhplHOiUwQdWdAXbYDnr76Hzm+RU=;
        b=aI+17huwjHCYp2R2Pm48OhJOi0uCZHTSrR4IPFeagH7tTJ9YmQtsTtI72H9bcssrtD
         6XQNCWFeK6fAQVh4nOzDiKoUsJkqf1GWMSO86Gt2f6WjnZgZUs4vFOIhTPQrlZVaQb6y
         isVQ7I4JqUTgc5dQzt5Z/0B3a1EMFuwcB4fhVXgw3VINaJ3nElZHl1r9z37mCXewwiGT
         +z4myXmV6hYLSgz5L6czgAODw0huH6n3StPaHxazfYoayWR1vx8UmqZRUexbyRTAMGX4
         Xl8T/eyLZhv5F0gED0hiBlvPony9RfAl4AV2zk56AFixpVkBhIGU3g0QHdvTYEDnuVrh
         966Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788266034; x=1788870834;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/LKqjBcRNiuGtvZQhplHOiUwQdWdAXbYDnr76Hzm+RU=;
        b=jFQPXTASBW70uHDJOhCy9aEU1SjzGH8nc4BTU3wP41ehKSe5dD3pKteun5B8n5IhLs
         kd5qvvtj7jRHIxg+5HzaOUPjY/+fBmRdYS6/qg7RfIca9kCtFstkRKX84Dz7N2wGUiol
         Lv3v/y2P4lWUwERxmxVwl7/sK76WDTJkCDcGidvdJ9PIKE9Styiel2ghYDaZXRm6G9Ii
         bCInbAMppS2kJjJzeHb/4PmwGAl0O5iHqPsbVwrP8+PgdORImm8bRlfODnnOey/xbKgG
         8SnFJFKie/MZxIY26jVVfUiT6iFZYHew9T7D4LSbG3uMZ6fGTPE9sEH4OpHHZwoyak+w
         WJKw==
X-Forwarded-Encrypted: i=1; AKwUvBx/zgOuySBj0FYqWihhQCDDnhJwE8W1zCIiKIaymdFU/cu4I5l6bvhicUQxXIWDUaTKSxkmd5msKL0=@lists.infradead.org
X-Gm-Message-State: AFuF++mQxQ9xwlKXdrruObQ+o86LasqltOOA8GgKaoZfMatuQNQ7e0wz
	uQryTrLFDabVc/t22ZXhdNHmTdAe8sab0TfapWzCduSkzxwKnYygKZeui6MJGiJEBNrbt5kwmpe
	hk6gr42eaefvV7a641CB7I/UOBCNjqXb3ypA4AFLIO7rD5/72+poyNZzFKjruoXTZeGZCRkxCc8
	re
X-Gm-Gg: AYBFou2RMwc178eI+RoU9qKG1d1951LopSf6MfvsVetalu0Asl11APHAN+b36dNGRnC
	TvtKOmxfacNNCM6A/u0zfbiKD7PNHU3H8W6FzuzatZkgt0iK9oA1foDDDKkvm32pm+eKFTlMl7t
	HTSWbvjb/zJsLSHAJ7aX1ZsRwDFTsS5+Zneny4t64rTaVVNb37Ial5LVjCMIlM5K3eDoqWuxNs5
	ZAi8UTSCz/wUct3UOinUd6ONCaMbjexaOdbBW49DWulMmiHZynwfZaUCCcwCXteSDJo6+GZrAUa
	8Gs3YgeO7TJ91gbHo6SnUag6wscaBfZPYQFdtPU6XQHD835GcquH7dPyWLClIdKjVnvBThOE2es
	057xQIMN/oCaTy1euw6PVaQp64O6JcW2+8jZ6aQYhEwVtSR+OIaTXYmcH1bQManX2sKdg
X-Received: by 2002:a17:90b:3c8f:b0:398:dc16:3c29 with SMTP id 98e67ed59e1d1-398dc16407dmr23761070a91.7.1788266034333;
        Tue, 01 Sep 2026 05:33:54 -0700 (PDT)
X-Received: by 2002:a17:90b:3c8f:b0:398:dc16:3c29 with SMTP id 98e67ed59e1d1-398dc16407dmr23760956a91.7.1788266033862;
        Tue, 01 Sep 2026 05:33:53 -0700 (PDT)
Received: from [192.168.1.5] ([122.177.240.248])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d499811sm6791102a91.10.2026.09.01.05.33.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 05:33:53 -0700 (PDT)
Message-ID: <36ebf737-e462-4c53-b6a9-51d26d4acc35@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 18:03:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qcom: qmp-combo: Add USB3+DP PHY support for
 Nord
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
 <20260901095055.42229-5-shengchao.guo@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20260901095055.42229-5-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExMSBTYWx0ZWRfX2eGZEw2ue1NS
 hSCY7wP+F8sh8Bi7VrVP61Zm8FJ3gm9eSsBs2sIalBqhkRy6SvJqJBUwwbLMk88w2KGi/TMVh0o
 qJYbppXvFXsI873T/tP/FAlocs3sUPsENm+nvmu3ZFa07l0xZmqxePfXJTEc5MpfNAUt6/M3hSx
 T43x8+aXgTQL5PvbrShP4Fwz64RatpRoEX901kWlolzoyQL+pwiMxqLxkdiMmDaFkEpEw5sowGS
 Ygiylx+L6Pn5YiY9eDLX9CgslQ6cPqPeZRnV4yV48X//5sq704CvxNHhZ9O9KH5qYYl3UnT/WAp
 THxyi6KKCjAlzChVUjRVuBxs5t66FvAENvE73YPDM3+oaTdRgHOgX13KMmiRZKLO+JwYJpSPfX9
 qSXhasrcjOD0tKjtQMzwc6yHJ/tLOfFsrtNx4Rv4ltcWJuu7n+BVQZIxdw1hAoC+CKjgRjfGPgX
 a+IgCuuvJzJC2IyIKXQ==
X-Proofpoint-GUID: LY4Sycc8YsT6mO_y-A0WTrJI3Cn5iWou
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExMSBTYWx0ZWRfX5s1UtPGx+d8n
 9J23r55eBZlioF2qc1Dnfs2mpsutrVUqwHTyReUw06iA4NgTxnH81DFhk6ckFtDASmtc348ydxK
 CoXHjm4ENA51a49w8jr+65y7JnmvCFQ=
X-Authority-Analysis: v=2.4 cv=NZnWEWD4 c=1 sm=1 tr=0 ts=6a96c633 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=2sMs7eQfJahgYk7ien9XMw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=drxAI8maUB5UtpXgck8A:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: LY4Sycc8YsT6mO_y-A0WTrJI3Cn5iWou
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_053356_605343_C8228AC9 
X-CRM114-Status: GOOD (  22.29  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 9/1/2026 3:20 PM, Shawn Guo wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> 
> Nord SoC provides two USB3+DP combo PHYs. Their initialisation sequences
> are identical to sm8550, but the sub-blocks are not laid out the same way:
> Nord adds a dedicated USB3_PCS_AON region at offset 0x1e00 and leaves
> everything else where sm8550 has it. None of the existing offsets tables
> describe that, so add a v6 table which is the v3 layout plus usb3_pcs_aon.
> 
> Populating usb3_pcs_aon changes where the driver drives the I/O clamp when
> entering and leaving autonomous mode: it now uses the real AON region
> rather than falling back to PCS_MISC, which is what platforms with no AON
> region do.
> 
> The offsets were confirmed against the Nord register map for both PHY
> instances, USB3_DP_PHY_0 at 0x088e1000 and USB3_DP_PHY_1 at 0x088e4000.
> USB3_PCS_AON_CLAMP_ENABLE sits at offset 0x00 of the AON region with a
> single CLAMP_EN_B bit, matching QPHY_V6_PCS_AON_CLAMP_ENABLE and CLAMP_EN.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Assisted-by: LLM
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 66 +++++++++++++++++++++++
>   1 file changed, 66 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index c39ced168d03..de82c7107c92 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2690,6 +2690,23 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>   	.dp_dp_phy	= 0x2200,
>   };
>   
> +static const struct qmp_combo_offsets qmp_combo_offsets_v6 = {
> +	.com		= 0x0000,
> +	.txa		= 0x1200,
> +	.rxa		= 0x1400,
> +	.txb		= 0x1600,
> +	.rxb		= 0x1800,
> +	.usb3_serdes	= 0x1000,
> +	.usb3_pcs_misc	= 0x1a00,
> +	.usb3_pcs	= 0x1c00,
> +	.usb3_pcs_aon	= 0x1e00,
> +	.usb3_pcs_usb	= 0x1f00,
> +	.dp_serdes	= 0x2000,
> +	.dp_txa		= 0x2200,
> +	.dp_txb		= 0x2600,
> +	.dp_dp_phy	= 0x2a00,
> +};
> +
>   static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
>   	.com		= 0x0000,
>   	.txa		= 0x1400,
> @@ -3394,6 +3411,51 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
>   };
>   
> +static const struct qmp_phy_cfg nord_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v6,
> +
> +	.serdes_tbl		= sm8550_usb3_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),
> +	.tx_tbl			= sm8550_usb3_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sm8550_usb3_tx_tbl),

The values are different for the following registers:

       USB3_QSERDES_TXA_RCV_DETECT_LVL_2: SM8550=0x12, Nord=0x14
       USB3_QSERDES_TXB_RCV_DETECT_LVL_2: SM8550=0x12, Nord=0x14

We need to add new tx_tbl for Nord.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
