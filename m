Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA8EBC3ABBC
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 12:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDcryfj5ldDXY+4kBYRZnovsSRFTX88p/GKMOJiToq8=; b=T9rxTo61OIDHdq
	KCX8IV/rRsf1nhfjEFsTEfX4L6SfKqytFxw4BXVq4kNp/YJAZ0N0eqseqxMvofTS0ROKfvqzRV6Jx
	MKweojljtfUrcLZfRcQRry5cb61D8V9ImZv1JNgGIeYUc2P5/BDNBN5hjR9gUKeiH0ofZFyP3wg3S
	Cppi8ev2uH+paVkFpNpKuTdG/NxEQXE1c5FxAjeX3jheQ9G91fLyQIZfRNuBvreB6ndIBX90LBlNy
	L1cOeZJKbxwxuVV86/TU7ov8s2PpZi6Dieu9vAEvD57NLU5k2okcTSWxIgxj9uqyR14PxliDFZNVW
	8ZhAXpM21LgJNumUEzZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDN2l-00000003cTK-2zdO;
	Fri, 09 May 2025 12:41:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDM2R-00000003S3q-1TK8
	for linux-phy@lists.infradead.org;
	Fri, 09 May 2025 11:37:12 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5498Qjti024844
	for <linux-phy@lists.infradead.org>; Fri, 9 May 2025 11:37:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jQYvA039xQOq1EAfq66VEyDGldlR86EFFJPP/2sBrOU=; b=gpxGwwOdLcT4VVU6
	mlpdKrnZHRbfbF1FwcU+0c8Lxzudb93lf33vs/czLEBQrYLhS/492C6UjHCR6uXm
	itHS37wugjgvMTSXsRxvoF2ib7+sPhEHzXsiqSHsvU9ntny7AQJHZvwWQdtZevfB
	4djbuBxMpJ8+PL3R6QSwCo3TpqIM4CIBb5u+eI3nZ4ad9ENHMZXYfupTWo3j5Ndu
	BrPHxFPi9+0dagym6txfQVFh6zdwBdkxbChjMK0zPeSwhc8yHya972+K+CUSq8dl
	TdOpJIK7K3/qNw66g3oGhuQXJojEVyiP0rp9mkbbR7UucHE8DsBfwVHTys9tQIMA
	ErQq3g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp84j39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 11:37:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f54fbf3a6cso2823356d6.0
        for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 04:37:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746790629; x=1747395429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jQYvA039xQOq1EAfq66VEyDGldlR86EFFJPP/2sBrOU=;
        b=l6XrJ4TV0P8MRQ3cghTZS0+QtuBqk65VmD6Jsm0tXbuLDesPWffY4EtKO2zpVHJhEy
         rfyixvrAvX/eIXykPsx0gXvhDSwi3UkcQml4B096T7sp6OxhyakMvmBHb5bswy63UU7S
         QpGlV7Hh5CzU2XpGyi2dg/Xk42harE7fA5LahTH01bfcHWSlylBeSn9ST251KZcZvSjD
         h4xfwzbNy2ZDYWrOEvn6ZGcbIO9lIPkUsvlZp3xGrne7FQKkMgKFBc6EL08jyu99cRHJ
         uodmePbzt7ih9N5UKsO84NCiKOSzFNV+ktRQFYAnpBzHaz3feibRcPAMedeKLB86pE8y
         nm9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVe72+cQ860ZTXmueYnsV9qtgygam+ibHUex9m+VeEL7+JYNTAKmvOHtcaJ+dFQ2DKHo4nXDmIxDA4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeSuj8fiOX9XqVu3EAaDwAQdEmqaGx1dJjTiAfvf5d0ucXuWXq
	fTPENoi2hJIpIk4zZ2LSieSb2o+MKEFCNLDbEOksCvTgkQQeqowmByicUkamE+2C67lZoapJYFs
	yK82BO2lYCmI8o+XC5SFfETqYxxlG+01fL3N36iREHk06vmWeKEVfYdQd51frzKIz
X-Gm-Gg: ASbGncvqL6MZRjqfko9mjHHWKlvLnjTe6BOHAe0DsFvIubVW+4I7hL9jVeJrM7FPwH2
	KZCf1QzQHyUg+yUc0vg/DPdgbjruDev9OXPxDTeKS6P8h8Tq0cwkS50BSPS14ZxkhUQ5/ZR7Da+
	dDTJvnCcqY8qn6xQTCYaUzMrjuiZt2nBAvQ3n6HdGDL122GlDDm4D/CMcrgem/aqjNyUVRtPdfK
	q9xvLUOEBT8FcT6IJEYRQyyoAqKmG8duo4kAsC594KqtRki8M0IwMJM7zVIiFOqV3s0Mus/W1KG
	xDRcu5ATZeFtJ4lfyxr7oFFF6UX5/5RNQv7ZBkie2Au4hXaFDbJmuZ5ThlG6xfj5xO0=
X-Received: by 2002:ad4:5f8c:0:b0:6f2:c10b:db04 with SMTP id 6a1803df08f44-6f6e479b1a0mr17500966d6.1.1746790629015;
        Fri, 09 May 2025 04:37:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEM61nHn0Kr2ns9tneLJwOSpfCca4k81zAOLbsRmIWWWiH1KtlKtWvlBuAwRRqu3Bq9s2A6g==
X-Received: by 2002:ad4:5f8c:0:b0:6f2:c10b:db04 with SMTP id 6a1803df08f44-6f6e479b1a0mr17500686d6.1.1746790628543;
        Fri, 09 May 2025 04:37:08 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fc9cbe516asm1260658a12.15.2025.05.09.04.37.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 04:37:08 -0700 (PDT)
Message-ID: <58d913b8-0715-41b0-883a-423f29cb5a8c@oss.qualcomm.com>
Date: Fri, 9 May 2025 13:37:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 10/11] scsi: ufs: qcom : Introduce phy_power_on/off
 wrapper function
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-11-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250503162440.2954-11-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=M7xNKzws c=1 sm=1 tr=0 ts=681de8e6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=Wi1UdT8OlrGSyUgSRKsA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 6q_BOM_3ibkKd1dQCKGS7hDdByEzJdDi
X-Proofpoint-GUID: 6q_BOM_3ibkKd1dQCKGS7hDdByEzJdDi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDExMyBTYWx0ZWRfX/DztmDxW43mG
 UZoVp/YOe8VM9TdcmjEqO4aEzshT0jInWzXDiZDFkuoqRBaV4R877qe2VM886TRtr8mFrZ649VT
 Gwqw8+iefcnmL/Gz/FJhtGkhbCvvKg3Ot9/ak/a+gY/rQB6Va/Qt06ZyeBnzE0RhMGWiv2Ylmt5
 LrBRiQL+gXU+YjfIecRruJ6QBQ1j6QXxVXStGL5i7hlH1qp+Mg+dxXaxai/WLuS10JVoZegQNUk
 G5bNRluqVRPIngfAqEW8REcupiR+b7Lv/gIwxhBADTSoTvuzMnYMhPhmaEODxeFy+jqhI4Q0VZO
 PX7Pl7fQpGivU7QGd6CAQ1ZFtT6xBq2OCfFtfyzDrn9sgOo/mAd69vC/4PuwVgfU9Xma9uH3Lgg
 UYVk/PvnS42LFbmLWCsqSWALKgJoF6g6ElaNCznMza7BL54bkIPnuStQZul1bms1tcQJBMeQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_04,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=731 bulkscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505090113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_043711_398041_73C65365 
X-CRM114-Status: UNSURE (   7.93  )
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

On 5/3/25 6:24 PM, Nitin Rawat wrote:
> Introduce ufs_qcom_phy_power_on and ufs_qcom_phy_power_off wrapper
> functions with mutex protection to ensure safe usage of is_phy_pwr_on
> and prevent possible race conditions.
> 
> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---

The PHY framework does the same thing internally already, this seems
unnecessary

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
