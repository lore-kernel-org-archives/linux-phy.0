Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECD13CCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e92/ohTyOOkda5W0qadAKN5E4OFKgphdEqnmD3pAScM=; b=TlCMA2xj7W8f+3
	qJ9t926FcI+ybic5uu9ztKDUlDZHsKwU50KN6sxjHAH411He86i+GkhoZyw/vR+ghVqJ2C9h8vm/0
	n4+WeZ6ctmL2N33H7DN+33/O5P7iDyPjBxBrD/O9ovMU8DYHt87ZGXGTgfGlxStYCAOdDJNNgbWUv
	InLr53vwoSj3gzPPChaF4/pCIHZY8SanZwOjnjC0mqeECQAua0WT7QmX6DbFFtHNpTBJa7v+RDm0a
	qme3V3NcJA/v4lISM0YtZsfr9pla+xbS+B2wqrMAROIm8C6/zT04r3R/1CDiI2lDMBk559cIjsPV5
	fSEMPAtB+xG0ry4aGv2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Xmp-0000000FEDZ-335d;
	Tue, 14 Oct 2025 05:41:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Xmn-0000000FEDF-0uUK
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 05:41:26 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDTUh016735
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 05:41:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8tpCshbHou1c6qrp73mVlzYVHbi5GBzcn7cKeJnjAmM=; b=bdXczFNkLSqG4Zod
	thh3348UEYPRXOb1uOaS0yPn4kDIYFYZbT2DwWNpxSc59iXmXDNBdf1XN2mGceVO
	CX5VGgC+HZ0jenNW1zSnHbLqjBFpXqnsFiPSGazbJFey8biSgk4J14FopRY6z416
	D81mEQNHILoKguRYe0VYxy1bKQC8IHtHKoKpBjNqgBNexy+fV015iXFt/t+1lO2K
	XxVrLdTctzKSKDs3qeG0mLeiyIjf7mu9Dc+FaFdVfqzW18gY/e2iN9Ij8nxf8gCV
	X3OaPB9p8Q7F4k68vu7B7psX2/imwOd+UkmK7UNWgLu1zJphZ1sDu/Kd6wBDhk6v
	vWUhXA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1abkfd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 05:41:24 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso7364889b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 22:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760420484; x=1761025284;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8tpCshbHou1c6qrp73mVlzYVHbi5GBzcn7cKeJnjAmM=;
        b=wH1sVyLKaJecBoBokyNG+OeFn1kCvVKUjeiH38RNphVsBMt+2aVsKiwWalBMrtSDqg
         eoRBpKr2CEjGNyx8XvDIG62t4QLxb9ImkdNCwstiKP77ISi9JFslBCYyl/FpTkBTfyp5
         PwuWwG0SSylbSss9fmy3c6i7WmTitSgLhbrAhyHTNp4KypMO9amg51rq4Yz/yqcQ9EqS
         D10ssyvheQOpRzS9ouxfJ7fR1QfA05fKFUthmgA3DOhkVeuzvCFeDo/sI6vsbRfyVDis
         CabxesnCZJrpjKPmnL9Wj2i1/YBaAs59N84RJ1uDrNYGJBt5sdBk1auj0nzQl+v56Vxq
         cuRw==
X-Forwarded-Encrypted: i=1; AJvYcCV4E0R36BczFcAua/hp22IPFSgAVp9CRDhVQmuqby8WAPFkGQNN6WF7kXcUQ8OT5eo+wTS5qfbBvPg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHhqBEybzfFR9XGieDSZp/uShiVPf7L40RoXLc1XIwofUW68EG
	q4E7NxeScUMVMico8M8ZgFtbPpvk0dnzBJj46anjU8sH1doj77/hdypAw2Io8ed3sQH+goVIS8E
	0LrU/BEGARa3ZkINIB4MVg1JTzOP6/G5gyaPAzykVNYhYe8bWP0IKVh0VhoWw65C+3Ea9
X-Gm-Gg: ASbGncth+40mCs/1Co1ky4gYOkYMXdDqDih98IyLBG4l8k3zuQUT2G55VDRCrCDQnG1
	EEXqE2rbJGM4L8dw7U/r2K5m2V4VhuYHCX+QKULhsWb/5hv/ukN6Lv2XBtx2L0ZTTGmk7zW/rTV
	zo+wew8udfsjeEPOmEYBfewj63VjnMsRQy5kc2ZYC0GYfaoxLPTZ509Bze3jtkxIA1FY/aRHPXS
	eDuBl56Vppk9xcypMukNhWap8A4SvDzalndop2kSyyiC1AP2kCFD5OTV2FHMNKHLslMPkAPb/U4
	00cYAPZvfdcjH5ZAWZ8kfy7UrORlOLLYhZSEAd54wkVElgNiSrYSsZx95P8Y87kdL7Be+n42yg=
	=
X-Received: by 2002:a05:6a21:9993:b0:2bc:ac1b:60ab with SMTP id adf61e73a8af0-32da84edec6mr31369197637.52.1760420483794;
        Mon, 13 Oct 2025 22:41:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFB8ImMeYEgEs5ZbDiNPK3W/dR/P2N3ZitLAmFeESrgZrUX7g84QiBVnjc9HjpbQRugVmQUEg==
X-Received: by 2002:a05:6a21:9993:b0:2bc:ac1b:60ab with SMTP id adf61e73a8af0-32da84edec6mr31369144637.52.1760420483219;
        Mon, 13 Oct 2025 22:41:23 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b67acd88c77sm7861157a12.34.2025.10.13.22.41.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:41:22 -0700 (PDT)
Message-ID: <d4c2d00d-005b-4a1a-84d9-4d4221b3b85f@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:11:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] arm64: dts: qcom: Add PCIe 5 wwan regulator for
 HAMOA-IOT-EVK board
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
 <20250922075509.3288419-3-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250922075509.3288419-3-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68ede284 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KnwKH_b96my_iHhHw_EA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: ZRMJ0Xft-kuXWey_099Fgk6QdZHt4uJW
X-Proofpoint-ORIG-GUID: ZRMJ0Xft-kuXWey_099Fgk6QdZHt4uJW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfX4w5vgiLE5GSN
 URuNYPQ89deyCJ419z2rqpXJ1V4JiyCqWY9k3kEy5oSDgAiYEh6MECdSw+LR2pkHYH8LWXdrdmw
 QL153x8W7aMZVbliu0QKJQY0AEqGHEs1oy4dqQwJxl+PompCSIsSgqEVNDlA4aN0NvzIKrOMIF3
 53OeHMLWSCj5XuEcyUQzbIf5BFXq8CE0DcmMrEcYLcxh0TKecH2r/6/MvgkJw78iS95/wVznPzj
 ZqJIELPWA9bR7VmJk0kCC6PymxiV14CFx6tdvBtv6r/VRdm4XKky+xE11P11hMlz1dxUZ5Ixzyi
 5xs7SHDUiOKrRNvSWikDU62dUitDeRmVUYla/rQMKY6e2+m5TuGJGTZOyfc501qNGsJZ5SOupAh
 U3D4bl25FXR+M+H1SlZ5DH6AayMGsQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_224125_282027_AD39117F 
X-CRM114-Status: GOOD (  14.28  )
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



On 9/22/2025 1:25 PM, Ziyue Zhang wrote:
> Specify the vddpe-3v3-supply regulator for PCIe5 using &vreg_wwan to
> ensure proper power configuration.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

- Krishna Chaitanya.
> ---
>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index df8d6e5c1f45..f0e4abbcc1ac 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -832,6 +832,10 @@ &mdss_dp3_phy {
>   	status = "okay";
>   };
>   
> +&pcie5 {
> +	vddpe-3v3-supply = <&vreg_wwan>;
> +};
> +
>   &pcie6a {
>   	vddpe-3v3-supply = <&vreg_nvme>;
>   };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
