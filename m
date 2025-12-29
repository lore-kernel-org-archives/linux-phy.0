Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABA29D3B7E5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 12:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm/jgKYiduEPYdICT0ZMkTGNywvUPE4Iemrck5SFkWo=; b=QAB/b4RZNbSPs+
	E5lll1hmXpBlmViIrGtB+Irfa6xvcs3HvJFDTM9nEeY3HNyUHx2hq/pLN2ULJmjYZi7tioUk2SYkV
	kszAdlENXjJPf3Qb6fGRIqYUxnaWdKG61lBx7tI33KOzj62fAtgcG3B4tdoUX2FWl9sCsWFccEdXc
	liwwhQ0TjPSzGurpqBxdAmKC/9wJrhVgRxCFYZ8PNhZzmTzC7DDMIWNrm+rYCXpTsI4IP+qc5Tg4m
	4ynUvSruvIymnrHcwahnGKzWgmuYl693Asmuf9DDnpQMNiRDjpn7tWBQ+HlCCW4/wt/USROOsuoRb
	tErrzs8O2KVVcWoEiC7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaCBY-00000003esD-0lwL;
	Mon, 29 Dec 2025 12:17:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaCBV-00000003ern-1rkx
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 12:17:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTBj3mC3949375
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 12:17:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EOUwAf42MijL3YJM/xZIFeL0xBoPqmYThITGffes7rw=; b=dK1uKpa66g7C7aa5
	V8sLIEBk5/Il/fRr5Wa8Pd/nPrd1I2GDld3IenNkG9JfmOS/pNVWCdKt3Eqg/z7Q
	QJu5lEu3+JP94QM2ZtQFDNjI0fpgyoqKGWOq9P3UKICBdSLTRR4rhYuTfachUH2n
	QRV4EzXW4JF9813uHFHok6g9OowxWYJUMgwZ1LTRp0Pmy9s69qlZsM2RrhaqxkT6
	s29c5lad/x//rUCL+Oh/PWMKK6BUC/Nc9vNUuUuTuNbbu0lNX+T4gvGQ8KcWCeEU
	t4lMPQbH5dJLhjhi9Ec4DbI9VQaF7vwGmnvZjK0kAfQFEMSsnwC/MmNdkifhAMxk
	ZqAmCA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr4d0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 12:17:12 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee409f1880so24638961cf.1
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 04:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767010632; x=1767615432; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EOUwAf42MijL3YJM/xZIFeL0xBoPqmYThITGffes7rw=;
        b=bB9XfVu1PKu8pFEIOlXgvU2qHJkE/uUDcbaip1I/fKzUOLAfxXpBELvNInhmp1B1K3
         CPSY5Jj7g1ayfvffAn7Ex0OoACRva1DweG7KSZT/jZvP6k/2haUb8vj64wnAWhQeOSk+
         7q7GDMWcyPPFl/h7Dm0mJZaevtDpfNQS8GaD6HV8UnKz8wfFxUnKXXtbXNWXaF8aQNuF
         24hhkdXdcohg704pHKcpreR4qkDWj7K7mU9bUiAkdz/gwrqrZWkluUK2aylN5sCryZfe
         U8HHYzKGuvrNzFDIrjBSWEFovwiMAcjrOKWoYk4xkyI3D2h+7Llh2InIJI7sFx+0lTKU
         9NAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767010632; x=1767615432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOUwAf42MijL3YJM/xZIFeL0xBoPqmYThITGffes7rw=;
        b=GlXcyQenWdfowNTgOO3BWbu3xkDB68Tm0LW2nnu60j/3HuHBrdTrId60MZzlCmSopA
         HwVr/vVx9NILwlGT8sgU1ynndjJQvQGyh5gJ2sn7stRxZSntEVtA8lqK4VfZbYk1ydRT
         TzFD5w/XEo0DPv6S+SaA2vUXD5fseIQ/QwLU7/uQdE8thIeKw2NsmJ8B7Amt7VD/xq8f
         Nx0Vz9otsHhMRKryH8j00XfDCGsHshsiEGbdbVTsn73Jk+nK5vLhcF4Bh9AdsTDkXklB
         YwpcfK9Eo4Zti8hOHXOq0ZNaylIUA8G5VJX5dvWnPFXQq/p23No0rZ3RNWkZ+8gJtVTO
         +4IA==
X-Forwarded-Encrypted: i=1; AJvYcCXt2TfrROJcT8yxRwAAgXiOeh1IBlg8ovilbCvhTl8yi6s0c9HRsQI714KohHksoezzlWIe1+VBFJ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsnB/u0iTfk9U7sau8rTTcJaKwJVa+PvuSs0VCm3g9iu1URmUt
	mpkQiprRngnMyDo5Mosrz5SkbulxA9RluN1Zez6U8ijgqgjZGNL87h+f29kk0M+sB8uMzsQMP1h
	ZMCk+1TH8i7LbTu6chqgazdRr70DbEV7/5JJfCJUFVIQxyXIwXdOyMrCVF5IEUfnx226q
X-Gm-Gg: AY/fxX45v/r2jg7eBTKxo/YEqTwPi4mRt7AaRpoWoxwyv+LxL2dm/W7gTkc74zfPCf6
	WgEP5Gf59Q/6x0cskiqZAZs/In3+YmIkGg1V6fuQ0VGtopttGL6kfZsYFDvqifFI1v1BUa3aC2o
	hj46vcD2AbnjN7oUl/Py/xwmHYNJwVjPduQZ/WM0g/h8Nbnf6zKekgZYHVfhpvdmpb4dhZVUhzH
	awzqb4ogOx4F4wN84rd372QFARGGv88wn1E3oS1tR+ZkBC+F8ALmQg9qrbDHVQcHFmmrxL7DoZG
	cDtxUD83SMbSwIU4CpeyeOKA2/UqHOtW4qLczGBdguLQxs3BxI7VNztzv37W4bWSNuG6J4W9v03
	4rWh4iHdv83eNq0F4+q08rpAOp+MjGXvWrjtEhVn5R8jVQFlJFmsBgVWItXgxhWchHQ==
X-Received: by 2002:ac8:5a46:0:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f4abcd86f6mr340173591cf.3.1767010631687;
        Mon, 29 Dec 2025 04:17:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvd4QH2ZZKAsfGoyIuTWAr/YsK3enb76pfOJPmIZdg0l6Pi41eVmcMWBYYNeGTL9K+dv4qSw==
X-Received: by 2002:ac8:5a46:0:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f4abcd86f6mr340173381cf.3.1767010631225;
        Mon, 29 Dec 2025 04:17:11 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f3ffbasm3349064866b.61.2025.12.29.04.17.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:17:10 -0800 (PST)
Message-ID: <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:17:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExMyBTYWx0ZWRfX9JjgmZwP0Le2
 mNH7Q3xFHsVD32SQWt5bckMVMWNRQuGRkD+QqvBfZSqJDqOuHV3vbLpA0ZxL8cL/E/pfoedhezp
 bJOleD8E1ly4l7An0PHhDm09mbEQXl9rj6hd7Fx+BQPmji/Fz9r15wkbZ8MoH/s0dQq6n9j8E5o
 HNSQ2yQYKgJFeT+cOhKx/5M4cnz9TsvPx+0FxwUgQYEhrqLilrHQtX8CyLGThgbZb9NMyHEGn78
 rinoQvskouT6DdXBMxR9wuvghGKbXZc5oiihnp5ZqdIzFpXPA4+MavMMRfmztHWfHUF879yRG3Y
 48m4eCcS4xbtsbI05KepF1IyXZ+ulh86EbgNgaAxPEE+WhfjX3+cZJC/jNCLtAMluGcT++c2v7H
 bx6cOSi7V1jCxBY7SpXBpamvYOkx8fSGsV8Ws6WJfSs+X1yI+T2lbXDMuSfTGe/7lU80sp2AHUr
 ku3BsaRUOXfGRcIMVDA==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=69527148 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=j7HMW06gTmZkR37ntNYA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: jGvUQXm5EOgHrjk56_XQM5EyfB_nfUJW
X-Proofpoint-ORIG-GUID: jGvUQXm5EOgHrjk56_XQM5EyfB_nfUJW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_041713_497484_1C75DC34 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

On 12/29/25 7:06 AM, Pradeep P V K wrote:
> Enable UFS for HAMOA-IOT-EVK board.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

[...]

> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l17b_2p5>;
> +	vcc-max-microamp = <1300000>;

I think they should both be 1.2 A peak

Konrad

> +	vccq-supply = <&vreg_l2i_1p2>;
> +	vccq-max-microamp = <1200000>;
> +
> +	status = "okay";
> +};
> +
>  &usb_1_ss0_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_ss0_hs_in>;
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
