Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80478CC6B0E
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 07:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vF2Q0WHK6X7jxz+ofspDvwQ9tvmDc0RebUb1HOnlQKY=; b=qHbo/Gu/rRKZ67
	25Gl9+pClT8cdglKYra9i9bb3bVmJONoOsZJww5erPnW/KDWymRJVYJkwdNI/GF9i8qGEg2l/aVuZ
	x7rPVImQGyT3jCGVtXZ3gMDBRLfc2jQ98Usvq3+6ww8F55KPwFPhYGXdbVELR4nI8N+Oe2LU7oS7f
	XP5oDf94N9gS528ZZhY5V/GFD9M25g5P3a8VHfy77g3uIg+oEvlE1+Rrg0+TAV9kcnPHP/m3TFz4G
	d33sZSYPjJuepb5Z5GPi/Akj88Uf33cd/ubUOCWx7xRHibxKZfp3M/tDq2waZV7mzsLs03qENoUdE
	8216aBtF17R9AfLXA9sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGWve-0000000CD7N-0GLm;
	Tue, 13 Oct 2026 07:28:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGWvZ-0000000CD6o-1DpE
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 07:28:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D212wB4071819
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 07:28:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sBp+f/Ur6Ycrj7MIgsCDYKBLKqGLNILm8MYQVnEiwoE=; b=iK/0uU02XeC1OWps
	LZBkoU4LxoC+9/ctBKKKD8EEQ4HRqofo7mF13YYnXgq54APwA7ruFB4H3M+cOSdX
	oUMw3LGCqGk+Y3WBksOxcgBe+Dyl+tEedzaFU1q1lyGB+dsgYJGKi/J3ZWVB/zgF
	xo3peLqWwwNq1DmeClvMfdK4Vt0G0NvGXCUI+ki5clXsuLhv/vylBmmmiG7/r1A0
	sKKiwvSK76nFPX+4fGTBNXdVolAiKOYUuUDUZXGQHuyOI38FvXoGGrOU793YAIwa
	tBh7vIGi4dLgjv7K8iZSWOlilETNwDPGSpNd6nvLt+UmeUM0OMt3QADY8I1Gz8Cy
	sTBnDQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h92jjua0k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 07:28:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3a47617a0b3so2317111a91.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 00:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791876479; x=1792481279; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sBp+f/Ur6Ycrj7MIgsCDYKBLKqGLNILm8MYQVnEiwoE=;
        b=GFO9dB2DxgTa8Q403kFgo18ffCxePT6kKUVTeVELM23+ZiNafCOKN9gs86lxQDiSNo
         kZFpVXGLEa+WpdeKoo3MfNC8nA/7RoMgJoTHmBLiHz6jO/49u7L9A5o084Gk1umMnS/e
         pNnKj41qYZU7IHU2OfnwcCWG1Wt/uV1lZvBoC/dIRqnkmTBqKLOCWVABvAbjZX8eR6Yg
         gQPjGB/1YCEZVSm9jub8od3BLFDorWew41oV7ihPrS2YjIjB7XFFnpM/NW+LMslRm5SV
         EYtSzsfGlI8wf7ES027n5tASbSm5WgPpLWhzFVZ/RCnD7ga+vY6Rb1FBHUdMZpAq6Jm7
         Snlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791876479; x=1792481279;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sBp+f/Ur6Ycrj7MIgsCDYKBLKqGLNILm8MYQVnEiwoE=;
        b=PIoxJ8heM73XMJfBzi4N62cWDZVLKKrNKXP9CUjADwRObonU1v6Zw4NPCAzD4JznMv
         WTYt1i1DouW+sPs4JzQ9tqtDM/oAlgpQvSI6zmuP8ZWBej8s8wNttKKv/rR6evTbKrlq
         KyDpLnJvgUUUMyAo0gy8dDzysCONaUPDizOwScPWTNeE5+e7enYK3TLFYDtSsudox4zG
         WIQJ5IAgZksKPHylk+QVCu1qgYxdPM0WrEP2b07VAWxflOc7dM1Htxni+DGwMgq4Zs8V
         sWbuJaCKHuaETTuGaKWumI4d3IK+sdxM1LsyVQrljdImcdsBfPBuPLBASx3WNKjaTRTl
         Q5sg==
X-Forwarded-Encrypted: i=1; AKwUvBwJa7JdXB2iYRIYvCD7qlcIqG9IQkVZdObdQvM991P5cyQvL81hw0HT6pjUbMG4EWUmmZdN4e028fo=@lists.infradead.org
X-Gm-Message-State: AFq9FYIZmj3jrds5nqz1mJkBCIbHMcBM+EBoZDJGbf5mtYuNYc6eXNQC
	D+Y7VO6qITC8UZuMRWfO7fR6tR779N4QM1cacr0MMW4h9ulEoS+n3fs1mAiSAKwB55ZMSMjyBca
	EmnYON6Wh6vpRWKPdmVxSiVoNHTFofN5XQIFmliIPKjnavg6rv/K8v30mikawULXmj5qR
X-Gm-Gg: AYBFou2GmGb6mJ7vTOmjqSxg7nVk7wonlHVqW/bFL7rHfQdRz2ye8h2bnJgYE+cbPUC
	mhu5uQwySWCikd4b18ouiaiUkhVTjlXFAtKyuoCohH2kNY9H6GjI3+X7IUJrTPDLOPsVgOspBxz
	06cG5ZtzHKK16Enxhl1SnOk7ACPKSt8PmFU6ABqVKzp+yDyDal5pMa/DnSjxjenJxVb4AQuZ8UT
	tOLLJFVI/ZmBodris0jK5pbIUUv6hfxgEGCi+IOpW3avXZk61KvTayFAGUmkqAmNLJi5hsUvmNq
	XYlW9PROJ9+qd06OEzNIutkq2NrH0CFWGZnU0VRWR1dc2r/Vfd8HXgGu7MTG2mM8yyiKyFM3NRz
	+lCpVrJCBIdULuhLOafATg/Wox/mHDG/rmQWVqpFZfd1CwTuO7DxoPQ/S4xZ6W9QelVWGAcg=
X-Received: by 2002:a17:90b:2687:b0:3a7:e0ab:d923 with SMTP id 98e67ed59e1d1-3ab3acb9ce5mr9405637a91.39.1791876479244;
        Tue, 13 Oct 2026 00:27:59 -0700 (PDT)
X-Received: by 2002:a17:90b:2687:b0:3a7:e0ab:d923 with SMTP id 98e67ed59e1d1-3ab3acb9ce5mr9405610a91.39.1791876478542;
        Tue, 13 Oct 2026 00:27:58 -0700 (PDT)
Received: from [10.133.33.138] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab38b9638fsm19498578a91.3.2026.10.13.00.27.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2026 00:27:58 -0700 (PDT)
Message-ID: <f4d10126-e2a4-41ad-9960-ff129d92f39a@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 15:27:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add qref and refgen regulator support for QCS8300
 and SA8775p PCIe PHYs
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ziyue.zhang@oss.qualcomm.com
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: Gy3BHDl1iiU7eggAHxqIK5rbVp8PWCsD
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAyOSBTYWx0ZWRfX8z6XnhIEX6lC
 F2v0SncB1exiw0dp3sBTgi9WGcQX7d4mSjutrHTfXWzIihE28fliTe/UZWJ8wvicKmndBEMziTt
 dDHuaQFvNCyVMwEVLdhQRxVAiaLTUGw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAyOSBTYWx0ZWRfX6QWuq4hGCUA9
 V0uIfwY/3b8sGOUfu+Kdc6UCcNPZvEh/ycHtS6mIVe6ABU5cMTui1VyVI7SQFz7z0by2FBrOuY4
 iYc71ZuKYBT1Y1OxvPUUkQnxx8Iyym9q/fctwz2uwdejUuseS9ZG/zON8+1f+uO1pii84qbv1Bv
 RprLaVguImOekXdXx1L+tJRJ6+H1BK6O7rPu8nQBBrjLgh3lrSK3TUCVs3F68fnRZ8Kq41EVXOY
 KCqQOtEXflzQxVV+gvOCAgZamvlVN3ZI6AM1JQUAb1+6MeRwVIpbi5lQJJ/aA5WGY1cwERbkEHi
 7eK8cnRDU1Zuybb2nFge+28F13caOK+Ro65xnCd8iu1XMsFBgwmeaRWC1/x7h5MBY9fZhzqi5IL
 Ct6VzftB9uvG1MS2okdObw9ejL7Ih6oY7rJSYL0oWTpBToKcJqQprcmNkUmV2Z6hkFiflWg8bTB
 J1xNKWWP0IKtNwhusGQ==
X-Authority-Analysis: v=2.4 cv=GfKCDgXL c=1 sm=1 tr=0 ts=6acddd80 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ka6KI2ZnJyLrzUlNBNoA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: Gy3BHDl1iiU7eggAHxqIK5rbVp8PWCsD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 bulkscore=0 impostorscore=0
 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_002801_453170_5060180E 
X-CRM114-Status: GOOD (  18.23  )
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


On 9/16/2026 6:20 PM, Ziyue Zhang wrote:
> This series adds qref and refgen regulator support for the PCIe QMP PHYs
> on QCS8300 and SA8775p platforms.
>
> The PCIe PHYs on these SoCs require dedicated qref and refgen voltage
> supplies for stable operation. Without enabling these supplies, PCIe may
> be unstable and the system can occasionally crash under certain scenarios.
>
> The refgen supply in particular works around a hardware issue where both
> QREF and the PCIe PHY are expected to depend on refgen2, but QREF actually
> depends on refgen3. This series therefore votes for refgen3 manually via
> the refgen supply.
>
> Changes in v2:
> - Expand commit message to explain why these supplies were missing and
>    what issue was observed (Mani)
> - Remove redundant vdda-refgen-supply overrides from qcs9100-ride.dts
>    and qcs9100-ride-r3.dts; the supplies are already defined in
>    lemans-ride-common.dtsi which both files include
> Link to v1: https://lore.kernel.org/all/20260810112735.1326807-1-ziyue.zhang@oss.qualcomm.com/
>
> Ziyue Zhang (4):
>    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add vdda-refgen and
>      refgen supply properties
>    phy: qcom: qmp-pcie: Add qref and refgen regulator vote for QCS8300
>      and SA8775p PHY
>    arm64: dts: qcom: qcs8300: Add qref and refgen supply for PCIe PHYs
>    arm64: dts: qcom: sa8775p: Add qref and refgen supply for PCIe PHYs
>
>   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 27 +++++++++++++++++++
>   arch/arm64/boot/dts/qcom/lemans-evk.dts       |  4 +++
>   .../boot/dts/qcom/lemans-ride-common.dtsi     |  4 +++
>   arch/arm64/boot/dts/qcom/monaco-evk.dts       |  4 +++
>   .../arm64/boot/dts/qcom/monaco-monza-som.dtsi |  4 +++
>   arch/arm64/boot/dts/qcom/monaco.dtsi          |  4 +++
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  4 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 16 ++++++-----
>   8 files changed, 61 insertions(+), 6 deletions(-)
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?

Thanks very much.

BR

Ziyue


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
