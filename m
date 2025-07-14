Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B74FC83F1B
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 03:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=My7Ogi+8C5ZpQAERaqr4T3bA0yta6EgR1OgPzjF6G7k=; b=ozyghwHVfeG9b0
	Uf2vbZoy2VDSjKR8RZ1C+y3PAhcqmXBqgbi6tvW7Ep/U68Ilmhcb9hqMVwYrBhCXGNoO1Hwf/xasa
	YQJsmXlM1A0byXD2quuUZMJuklidJrjRKxq9iA1ZGIpUKi6jZbPllT56jmINQUIGGXthnblRdYDhB
	OD1FUTjncALV4vz+Gy252J97P1GbP/U6w/FUeoLa5+0Jfyueyr7PaU9YmirT4CQbFePgm+GkevJhQ
	pt3elbOQuh7gDa6V/Y/pUgd9lG5XEuYQaWulagamhUxBIco2Ys0LNmm7gIZgrLVvJpInCs6zeYU6j
	3W8CTj4yXoO9YkN1lGlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubAB1-000000014SS-38YV;
	Mon, 14 Jul 2025 03:48:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubAAz-000000014RV-2TUn
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 03:48:27 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DMu309027809
	for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 03:48:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4tCgmSZzhThqfTTY2ybikWriOTvAUcyKXDdYsfC585M=; b=DtJAHR7qFgpBNJKj
	55Z4Ek6koZZYYUdfkouPDBjY7lnSYlpkOOcWfd7Q0R4LnV6FqAJGpcjsbgZV6/1A
	0TOB2PUkCigRWSpsG5Wgrvb/Taa0Oh30bT3SNM9QojXn9HOhAMdi1Xv45y4Mv816
	PSkyVnELZRjBrdpwF0FIOFcP/l2RG0JEsQkCZoagagIyED9eDYv6IEPmy28EZMS6
	aWxMNd7UujZ/YIBQWrvn+OIOSEcTt9TEJJH2PI2mB3mvvcCPiFQM3xOCqp+m0yDc
	2zJd9vDRUr5ZPgcYhmImh5KoCLWO+y2ia++onNPobwM9gpwgkMZGTaQGYfYvUbbl
	I6Y4jw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug37u3wt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 03:48:23 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3121cffd7e8so2921213a91.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Jul 2025 20:48:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752464902; x=1753069702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4tCgmSZzhThqfTTY2ybikWriOTvAUcyKXDdYsfC585M=;
        b=jRU4cmKYTftLrrZiMebo0LAXwHIbe9J5HG4jjbS/i8DsmTCZdje4bhJCxCy0ip2t4A
         BEPehTcASGzR1LsOA+PuwjbXcD5Yqm3ZHErrnGDyXKAp27I+ZKmmuGdQYfbOAP4BHo/B
         dWzQ/vh/nfb9lPINesI8WEYmUglLSByifjxHK9RQKj2SR8XYKkaonqixF5KYsNt4JVvI
         E0c09yez/ArtV9Ky6WwIgDvcff+YGRIh8eodtbWTe/tV1lVXVX0Lr4fG27kVztQw4iKP
         4KdPFbGoP00+t7EGVn0wTja/KLlGkz3NxrLA4kIBu9UE56EGtR/IZR171DICM7E88YYA
         LZEQ==
X-Forwarded-Encrypted: i=1; AJvYcCX73mWgDXshZcBWtyhUT9tSseZu2j67a3v+6Pfaw5BsPtU5zWwBbc+5KnHZg0KjgQST5H0tdpKSwys=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzxt6d4EGQM7kfm0boLnTAeeCPmic6J7SMy//CMrxW1QI0JwPfg
	qZ8SV/IRoeA5ofZ4q+/8BBitKMs98+UtnAOfNJAX7229FH+oBHBBzNulb9+UOKGc2CPZR/ff1qF
	BoSa8FIV8SdeyIs0iwWnw6l3Uo2O4QgF/Pp6S4iQ11S97jxFiaSoJDJNTOkv9UH9mbYfN
X-Gm-Gg: ASbGnctXgJ1i2kMxEv+O10mOd3VOEY9c63QjNkNsw3M5ggfnFm9gGd2bghKpxgQ4XGg
	kiw/eUqpbr9mitIuOqhmQYY0MxZWU+zRvfDHv38UGnaUYwVCMjYq1aOqu8JSiTLlYaqZHMftd/2
	HdpyRduueFvr4W/WUTAFxz0J1OFyZca9NA8OXk+C9rCOwOAn3Uf8v9wBrKHJwvWaDGawbOjzrJG
	4WFNjwvrK3BudwguFDJPgmdCILWfdp7s1eDutGcfa53Kx+SsRmTvyK/70RVa9QrgGJhSOYYHyML
	sdmn4nxb7O9ivi4I/vbBRAbPgR8+kZRFukmrSNVHb9qA81DOkHelFkOEGrnQxg==
X-Received: by 2002:a17:90b:5830:b0:311:df4b:4b7a with SMTP id 98e67ed59e1d1-31c4f563387mr13686433a91.29.1752464902077;
        Sun, 13 Jul 2025 20:48:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+ICcsq4xx5+Xy33tp1bP5bxNybUTBCZjbAYqsf5uVLmJ9j0Lqv5Xd9R8LbMkUF7FyaqR16Q==
X-Received: by 2002:a17:90b:5830:b0:311:df4b:4b7a with SMTP id 98e67ed59e1d1-31c4f563387mr13686394a91.29.1752464901589;
        Sun, 13 Jul 2025 20:48:21 -0700 (PDT)
Received: from [10.64.69.180] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de435f262sm82597905ad.236.2025.07.13.20.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Jul 2025 20:48:21 -0700 (PDT)
Message-ID: <aca4c45d-7bc2-4803-98a1-ba4af22c3c0a@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 11:47:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/3] pci: qcom: Add QCS615 PCIe support
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAyMCBTYWx0ZWRfX6XcCRLfcGpjd
 2NUop4QvYIXacuzTO9gR8UFTnOzTVJy8227PNbJaVDBMH2oIt4z4K1rrUMQ3lNkElREv0k9TdyO
 DZaRtEIBwS7iCqsfRzozVV0DQqWtNFDmPXFi2zpsG45qLc5QxtNKwcvG6vySqvGD32Ke8bdT6RO
 4ELYqElnxDrKz0Se3PMQOIFKfNyzl00NGrYBdONqJqq+lGSClOiu9zbhy4UCCCcZBcMx/H1Bpd4
 KuG+Pr5Ng0VUF8kTJ6wXvpROg/0APAUz+63sRmgyGpeyn0yk+geasBVQP7LgVrWGlNUD5dxPEdj
 RD3tUfcP5H5UwSv75HuUfg0iaimu9tClJLyEWE+waTbgBzOBSiTI8PJAbUXnrbp8MukINoCyx2O
 /8CmhpsFa8ZjKEWdz1L2tKCtHxxwJ+4dH2iO+54aTO+JdWGnrAaj4SsQ5nnYb2VNhEsoKk7N
X-Proofpoint-GUID: xStfLdf39OXj_CgHk4nnWEaNQBbAPI4Z
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=68747e07 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=0rveLjV9VWli9pvRdbwA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: xStfLdf39OXj_CgHk4nnWEaNQBbAPI4Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=833 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_204825_769555_80DF26E5 
X-CRM114-Status: GOOD (  24.69  )
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


On 7/3/2025 5:56 PM, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS615.
>
> This series depend on the dt-bindings change
> https://lore.kernel.org/all/20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com/
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
> Have following changes:
> 	- Add a new Document the QCS615 PCIe Controller
> 	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.
>
> Changes in v8:
> - Fix scripts/checkpatch.pl error (Krzystof)
> - Link to v7: https://lore.kernel.org/all/20250702103549.712039-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v7:
> - Add Fixes tag to phy bindings patch (Johan)
> - QCS615 is Gen3 controller but Gen2 phy, so limited max link speed to Gen2.
> - Remove eq-presets-8gts and oppopp-8000000 for only support Gen2.
> - Link to v6: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/
>
> Changes in v6:
> - Change PCIe equalization setting to one lane
> - Add reviewed by tags
> - Link to v5: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/
>
> Changes in v5:
> - Drop qcs615-pcie.yaml and use sm8150, as qcs615 is the downgraded
>    version of sm8150, which can share the same yaml.
> - Drop compatible enrty in driver and use sm8150's enrty (Krzysztof)
> - Fix the DT format problem (Konrad)
> - Link to v4: https://lore.kernel.org/all/20250507031559.4085159-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Fixed compile error found by kernel test robot(Krzysztof)
> - Update DT format (Konrad & Krzysztof)
> - Remove QCS8550 compatible use QCS615 compatible only (Konrad)
> - Update phy dt bindings to fix the dtb check errors.
> - Link to v3: https://lore.kernel.org/all/20250310065613.151598-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v3:
> - Update qcs615 dt-bindings to fit the qcom-soc.yaml (Krzysztof & Dmitry)
> - Removed the driver patch and using fallback method (Mani)
> - Update DT format, keep it same with the x1e801000.dtsi (Konrad)
> - Update DT commit message (Bojor)
> - Link to v2: https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Update commit message for qcs615 phy
> - Update qcs615 phy, using lowercase hex
> - Removed redundant function
> - split the soc dtsi and the platform dts into two changes
> - Link to v1: https://lore.kernel.org/all/20241118082619.177201-1-quic_ziyuzhan@quicinc.com/
>
>
> Krishna chaitanya chundru (2):
>    arm64: dts: qcom: qcs615: enable pcie
>    arm64: dts: qcom: qcs615-ride: Enable PCIe interface
>
> Ziyue Zhang (1):
>    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>      for QCS615
>
>   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +-
>   arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  42 ++++++
>   arch/arm64/boot/dts/qcom/qcs615.dtsi          | 138 ++++++++++++++++++
>   3 files changed, 181 insertions(+), 1 deletion(-)
>
>
> base-commit: 3f804361f3b9af33e00b90ec9cb5afcc96831e60
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
