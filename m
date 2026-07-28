Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B0CC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 06:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ns2cb7tBLn+gFkNdUjHA+38Qfzj4ETqIvW7lcU41jkY=; b=xHubeFaRR3Xj2t
	JFlLphV8KT6WAcdCUCGsYDpcbcQYxr86vGoRYGGxzgxH9oin/q3c0lfD6eB357i+0zoMvXhRxoJ1p
	o/hPEArOlIFM2zgOX2jlzKgvWddoKHM+sJ33deHsKLLTEaOWwzjyuHRVpE/bZIgjwQSqRMsNAD1eo
	4Xi7e3Y/Bwud+YYXq0jbOG5paLHmbLTcCPvgEfaIbsuCgi9BvlpyQkSoGuCYoNCRmiZ/trAslRxrA
	XtqyXSTYDyadx5j8xv261XWpJIsNYBZxB17NIF7Pbi3BEZViTp8oWVmjvAkaU9O/hDXVj86awHW0/
	mTVonkn9HDvayQuTdzlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wobK0-00000004XhQ-2ElA;
	Tue, 28 Jul 2026 06:29:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wobJx-00000004XgV-1Vrq
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 06:29:46 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66S3trQY1920004
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 06:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9ElPf8a6niFpR9VyWE5K88kAbHmmM11rpy3xejveZiY=; b=Lw6aNC6oJsGJ22zP
	wH0FGSxU/BAaA0jgrP9qG+uuz6T3VP3jrW9hpgxhaqjS45Wf5T/agkULeMe63V9P
	pVz7r6I+RWTigja4ZCxY0xKuzvYtBl9Lff2hCk4i3WxI9jLUSChxQtR91qNGuNd5
	rvbmfSd91E+s/db55LGKMHwjfu6qjDglMHNdgTdQTHeFKu/7g660raFRbu2EOqH9
	j95VAi4gt+HVR6vWejRnb/cO+8xt0AxAqBQFefewHnJ162iwevXRJ9WJrcagjcF3
	eOuxWdAZ3TMxKsWoclW1MNTvEmu6mMo5SNyqMo5FXVQSnWMaEQH72xNxo/kYmeNf
	dQE+TQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fpmy10g5b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 06:29:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cfe48ca1efso35432825ad.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 23:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785220183; x=1785824983; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9ElPf8a6niFpR9VyWE5K88kAbHmmM11rpy3xejveZiY=;
        b=Jy3KPRrHIaObNOzkYnTm1ewKi6SLjYJVX4xLOdeLvKSBzV2MN0JFcbkngdmGqiEtuG
         XpeqqRj2g4ThKNVPTjZP0wmsg8sr3HL+ovZIQRw++gMPD3f7inR74WdFIcqOmE1qPDme
         iH+aN+h2EqvGRcxHMWQrWkDbkOtJYghvFr8DkqlzhaeYrXH0HdBPZ532UFLL85hLLqAg
         wnzFT8Mg7lAIIsL6RVWg4TK8lVT6cV+8fgPTm/ptzR01AF6cxmE8nk2BCjfyyCmWHbJM
         m+ye8yoAXx88W6Fz/sy2CGDhk7UbqrJEHdCwi//0Psi1uClN4CyejH98T++IJyPPe4s3
         KJpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785220183; x=1785824983;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9ElPf8a6niFpR9VyWE5K88kAbHmmM11rpy3xejveZiY=;
        b=jX1WmXsk7EJ2Q0hS959z7PW1nAkHTYCwxQRkjslA+iyVeVq5LIAVQ7Yk9Xrfp/c3BS
         wKfLeQLzvL+ww9tmNDo3EKww950Qp0V6Dnxwgx2L2EefKXYEJupC/Eud7aOW+/WV1nZe
         QBCr8etLgC+oBjdNmfDRsScy76t7uWbHpXdCTg0y6Wjo89gSCVbr/hxzbJus/zEDzgPv
         KJE+VA0+mlUrLWNRJvJumKOLCHTECWE4REbMrcbE4hxjbZSpFnwdIoWnAms8E+FtJxl5
         IVCCqpJ8zeVomYIglnH32Y6PAouqp11w6NPG4Ccm55mpHCn+i4D3x8d48cQtZNfkQ2JO
         mO1g==
X-Forwarded-Encrypted: i=1; AHgh+RqXDd6EYFsrPBaZIW4rffLTybPYS0EWkJm0ibvjEMFp+vJf34PKMiyZ1H+/yCG3BSEpfvda1ioQUiA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhDNGObU8NQmo8UYsi01dx1w869aIVhZSWBxWXWjnw1odGdn4g
	/GJ3O2PE+Alh9iKxDlghj5fcYwt4QbpUU8blxE7p60wS0/gbLMCheSghg6PBHYHS5QQhG33whHh
	gga/Ane9lqJoq8ryP1uCEM4Qjc8USXYh5ayAf91rBgOWAxt+PRsM1mRnQxg2bgfrTuEkq
X-Gm-Gg: AR+sD13o95/NybVrcaiHkyYiKG/5SrsKU5QI82tJLaqCTaBXgbvpy5w4+Mh6iv9OmWU
	GYYXz2ZqOQoj7sl/rtPSccGt/bsNYBxvN7YPLE5u1fx25XG5uisryfBDb1bfpkhio7UpkebgVx/
	WZmLq1WuL/Lbw3UBLsYvx3GhXHStnj99aRNnTI9BBEYPMPKtVJbWvYNcq3J/kPYKZyfGSV5zP9x
	RZ5rY5641FAMr4KS159tx4GkC/yd8PtIkrg3CNnNYcfCL4PvUjdS8RONzTXdYi5gFCe23ceYZE6
	NZCgKElf+fyWw7qLF0CqN04ZT6tc0oAzzediFd73BTO2jdcnZ2SdljxfW2pOsPJHKrIHoALyZkh
	KSlYu2g2ltjRUBdgDymttpCIYuXxwakUU/ow=
X-Received: by 2002:a17:903:fb0:b0:2ca:e565:7b15 with SMTP id d9443c01a7336-2d015c91d62mr12700075ad.10.1785220183506;
        Mon, 27 Jul 2026 23:29:43 -0700 (PDT)
X-Received: by 2002:a17:903:fb0:b0:2ca:e565:7b15 with SMTP id d9443c01a7336-2d015c91d62mr12699815ad.10.1785220183074;
        Mon, 27 Jul 2026 23:29:43 -0700 (PDT)
Received: from [10.218.37.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cfde81cd32sm45706925ad.78.2026.07.27.23.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 23:29:42 -0700 (PDT)
Message-ID: <e5516c61-44ea-4224-9da2-1694eac10fec@oss.qualcomm.com>
Date: Tue, 28 Jul 2026 11:59:36 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Maili PCIe PHY compatibles
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
 <20260703-vdev_maili_dt_bindings-v1-2-c9df0916cd5e@oss.qualcomm.com>
Content-Language: en-US
From: vivek pernamitta <vivek.pernamitta@oss.qualcomm.com>
In-Reply-To: <20260703-vdev_maili_dt_bindings-v1-2-c9df0916cd5e@oss.qualcomm.com>
X-Proofpoint-GUID: nDVLXue0NZ2uQ5pD8xhEjw1TiNYSDJtz
X-Proofpoint-ORIG-GUID: nDVLXue0NZ2uQ5pD8xhEjw1TiNYSDJtz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI4MDA1NyBTYWx0ZWRfX3LdLKyVon/ec
 5IEFyNrcPqIbmRLmmp3OVD1ck34no4RejUdocyYqqiGvlKhieNiVRtgVJqNWlttnSWEoKRBFS1a
 jSb5GEMwhftCk33gyOIgpx9WVaFmcsxD6o29YFmQ7ou+ZOPkX9/wOg4nMCWKPX8hYopPGNyVuPO
 JbVwf7obTiHgwbw/UW8SGFGVPSKHAfdUSPGQ0DM7N4YrA2++vpTc49b4i/A2aij/RlapK9o6MPR
 mMuDasVAc4A5VgFtZ6lq+swtWq6/wFlg+uywjRzl68wzhv77lEIkVTUJ8dcon5CAai7oJTa21rd
 99JLIc92+9rgc1n+lZaHa9i9F0HTnqpPDQSySwR3aYXgUgb+l2FrRWrEgbc3W6TuP9+/CFBAmLg
 LfeYS/1GE0z48s6msE4tqzsMSEIVHyPTIozdHuc05Xvn289iVrhcuhpGnRp4C6yWd9i6JVZxizg
 i/JRpXta3SModPtqtGQ==
X-Authority-Analysis: v=2.4 cv=PJo/P/qC c=1 sm=1 tr=0 ts=6a684c58 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=4DM8Ldo2K2qSuXsH2HoA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI4MDA1NyBTYWx0ZWRfX/O/fep6bIVYm
 C566LW4wp0wvbuayUfwqyEdF5DMjSSoPzfVn9AGd0gtXQ1Dk0OKUcn+jEKQnbjUeFwcRGw+Zinm
 S1NFX1yV3ziD2GLMiZL8hgL0V1puCyY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-28_01,2026-07-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607280057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_232945_421605_27329E6A 
X-CRM114-Status: GOOD (  15.08  )
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

Gentle reminder

On 7/3/2026 5:38 PM, Vivek Pernamitta wrote:
> Add qcom,maili-qmp-gen3x2-pcie-phy and qcom,maili-qmp-gen4x1-pcie-phy
> compatible strings for the Maili SoC PCIe QMP PHY.
> 
> The Maili SoC is a derivative of Hawi and shares the same PCIe QMP PHY
> architecture, allowing reuse of the existing Hawi PCIe PHY DT bindings.
> 
> Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
> ---
> Dependencies:
> - phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
>    https://lore.kernel.org/all/20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com/
> ---
>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 259ed9678393f12c03535389b972fed0c7e36517..971474526cf97cf333a80a31e8fb13abcb995e97 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -23,6 +23,8 @@ properties:
>         - qcom,hawi-qmp-gen3x2-pcie-phy
>         - qcom,hawi-qmp-gen4x1-pcie-phy
>         - qcom,kaanapali-qmp-gen3x2-pcie-phy
> +      - qcom,maili-qmp-gen3x2-pcie-phy
> +      - qcom,maili-qmp-gen4x1-pcie-phy
>         - qcom,qcs615-qmp-gen3x1-pcie-phy
>         - qcom,qcs8300-qmp-gen4x2-pcie-phy
>         - qcom,sa8775p-qmp-gen4x2-pcie-phy
> @@ -200,6 +202,8 @@ allOf:
>                 - qcom,glymur-qmp-gen5x4-pcie-phy
>                 - qcom,hawi-qmp-gen3x2-pcie-phy
>                 - qcom,hawi-qmp-gen4x1-pcie-phy
> +              - qcom,maili-qmp-gen3x2-pcie-phy
> +              - qcom,maili-qmp-gen4x1-pcie-phy
>                 - qcom,qcs8300-qmp-gen4x2-pcie-phy
>                 - qcom,sa8775p-qmp-gen4x2-pcie-phy
>                 - qcom,sa8775p-qmp-gen4x4-pcie-phy
> @@ -230,6 +234,8 @@ allOf:
>                 - qcom,hawi-qmp-gen3x2-pcie-phy
>                 - qcom,hawi-qmp-gen4x1-pcie-phy
>                 - qcom,kaanapali-qmp-gen3x2-pcie-phy
> +              - qcom,maili-qmp-gen3x2-pcie-phy
> +              - qcom,maili-qmp-gen4x1-pcie-phy
>                 - qcom,sm8550-qmp-gen4x2-pcie-phy
>                 - qcom,sm8650-qmp-gen4x2-pcie-phy
>                 - qcom,x1e80100-qmp-gen3x2-pcie-phy
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
